; ModuleID = 'samples/880.bc'
source_filename = "src/psa_exercise_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, ptr, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.psa_mac_operation_s = type { i32, i8, i8, %union.psa_driver_mac_context_t }
%union.psa_driver_mac_context_t = type { %struct.mbedtls_psa_mac_operation_t }
%struct.mbedtls_psa_mac_operation_t = type { i32, %union.anon }
%union.anon = type { %struct.mbedtls_psa_hmac_operation_t }
%struct.mbedtls_psa_hmac_operation_t = type { i32, %struct.psa_hash_operation_s, [128 x i8] }
%struct.psa_hash_operation_s = type { i32, %union.psa_driver_hash_context_t }
%union.psa_driver_hash_context_t = type { %struct.mbedtls_psa_hash_operation_t }
%struct.mbedtls_psa_hash_operation_t = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.mbedtls_sha512_context }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.psa_cipher_operation_s = type { i32, i8, i8, %union.psa_driver_cipher_context_t }
%union.psa_driver_cipher_context_t = type { %struct.mbedtls_psa_cipher_operation_t }
%struct.mbedtls_psa_cipher_operation_t = type { i32, i8, i8, %union.anon.1 }
%union.anon.1 = type { %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { ptr, i32, i32, ptr, ptr, [16 x i8], i64, [16 x i8], i64, ptr, ptr }
%struct.psa_key_derivation_s = type { i32, i8, i64, %union.anon.2 }
%union.anon.2 = type { %struct.psa_hkdf_key_derivation_t }
%struct.psa_hkdf_key_derivation_t = type { ptr, i64, i8, i8, i8, [64 x i8], [64 x i8], %struct.psa_mac_operation_s }

@.str = private unnamed_addr constant [62 x i8] c"( psa_key_derivation_setup( operation, alg ) ) == PSA_SUCCESS\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"src/psa_exercise_key.c\00", align 1
@.str.2 = private unnamed_addr constant [123 x i8] c"( psa_key_derivation_input_bytes( operation, ((psa_key_derivation_step_t)0x0202), input1, input1_length ) ) == PSA_SUCCESS\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"( psa_key_derivation_input_key( operation, ((psa_key_derivation_step_t)0x0101), key ) ) == PSA_SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [123 x i8] c"( psa_key_derivation_input_bytes( operation, ((psa_key_derivation_step_t)0x0203), input2, input2_length ) ) == PSA_SUCCESS\00", align 1
@.str.5 = private unnamed_addr constant [123 x i8] c"( psa_key_derivation_input_bytes( operation, ((psa_key_derivation_step_t)0x0204), input1, input1_length ) ) == PSA_SUCCESS\00", align 1
@.str.6 = private unnamed_addr constant [123 x i8] c"( psa_key_derivation_input_bytes( operation, ((psa_key_derivation_step_t)0x0201), input2, input2_length ) ) == PSA_SUCCESS\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"! \22Key derivation algorithm not supported\22\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"( psa_key_derivation_set_capacity( operation, capacity ) ) == PSA_SUCCESS\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"( psa_get_key_attributes( key, &attributes ) ) == PSA_SUCCESS\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"( public_key ) == NULL\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"( public_key ) != NULL\00", align 1
@.str.12 = private unnamed_addr constant [99 x i8] c"( psa_export_public_key( key, public_key, public_key_length, &public_key_length ) ) == PSA_SUCCESS\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"output_length <= PSA_RAW_KEY_AGREEMENT_OUTPUT_SIZE( private_key_type, key_bits )\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"output_length <= PSA_RAW_KEY_AGREEMENT_OUTPUT_MAX_SIZE\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"exported_length <= PSA_EXPORT_KEY_OUTPUT_SIZE( type, bits )\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"exported_length == PSA_BITS_TO_BYTES( bits )\00", align 1
@.str.17 = private unnamed_addr constant [93 x i8] c"mbedtls_asn1_get_tag( &p, end, &len, MBEDTLS_ASN1_SEQUENCE | MBEDTLS_ASN1_CONSTRUCTED ) == 0\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"len == end - p\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"p - end == 0\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"exported_length <= PSA_EXPORT_KEY_PAIR_MAX_SIZE\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"exported_length <= PSA_EXPORT_PUBLIC_KEY_OUTPUT_SIZE( type, bits )\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"exported_length <= PSA_EXPORT_PUBLIC_KEY_MAX_SIZE\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"PSA_BITS_TO_BYTES( bits ) == exported_length\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"1 + 2 * PSA_BITS_TO_BYTES( bits ) == exported_length\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"exported[0] == 4\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"! \22Sanity check not implemented for this key type\22\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"bit_count % 2 != 0\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"! \22No code to exercise this category of algorithm\22\00", align 1
@.str.29 = private unnamed_addr constant [137 x i8] c"( PSA_KEY_ID_VOLATILE_MIN <= MBEDTLS_SVC_KEY_ID_GET_KEY_ID( id ) ) && ( MBEDTLS_SVC_KEY_ID_GET_KEY_ID( id ) <= PSA_KEY_ID_VOLATILE_MAX )\00", align 1
@.str.30 = private unnamed_addr constant [129 x i8] c"( PSA_KEY_ID_USER_MIN <= MBEDTLS_SVC_KEY_ID_GET_KEY_ID( id ) ) && ( MBEDTLS_SVC_KEY_ID_GET_KEY_ID( id ) <= PSA_KEY_ID_USER_MAX )\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"type != 0\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"bits != 0\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"bits <= PSA_MAX_KEY_BITS\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"bits % 8 == 0\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"bits <= PSA_VENDOR_ECC_MAX_CURVE_BITS\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"bits <= PSA_VENDOR_RSA_MAX_KEY_BITS\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"PSA_BLOCK_CIPHER_BLOCK_LENGTH( type ) <= PSA_BLOCK_CIPHER_BLOCK_MAX_SIZE\00", align 1
@__const.exercise_mac_key.input = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"( psa_mac_sign_setup( &operation, key, alg ) ) == PSA_SUCCESS\00", align 1
@.str.39 = private unnamed_addr constant [72 x i8] c"( psa_mac_update( &operation, input, sizeof( input ) ) ) == PSA_SUCCESS\00", align 1
@.str.40 = private unnamed_addr constant [86 x i8] c"( psa_mac_sign_finish( &operation, mac, sizeof( mac ), &mac_length ) ) == PSA_SUCCESS\00", align 1
@.str.41 = private unnamed_addr constant [64 x i8] c"( psa_mac_verify_setup( &operation, key, alg ) ) == PSA_SUCCESS\00", align 1
@.str.42 = private unnamed_addr constant [70 x i8] c"psa_mac_verify_finish( &operation, mac, mac_length ) == verify_status\00", align 1
@__const.exercise_cipher_key.plaintext = private unnamed_addr constant [16 x i8] c"Hello, world...\00", align 16
@__const.exercise_cipher_key.ciphertext = private unnamed_addr constant [32 x i8] c"(wabblewebblewibblewobblewubble)", align 16
@.str.43 = private unnamed_addr constant [68 x i8] c"( psa_cipher_encrypt_setup( &operation, key, alg ) ) == PSA_SUCCESS\00", align 1
@.str.44 = private unnamed_addr constant [86 x i8] c"( psa_cipher_generate_iv( &operation, iv, sizeof( iv ), &iv_length ) ) == PSA_SUCCESS\00", align 1
@.str.45 = private unnamed_addr constant [137 x i8] c"( psa_cipher_update( &operation, plaintext, sizeof( plaintext ), ciphertext, sizeof( ciphertext ), &ciphertext_length ) ) == PSA_SUCCESS\00", align 1
@.str.46 = private unnamed_addr constant [139 x i8] c"( psa_cipher_finish( &operation, ciphertext + ciphertext_length, sizeof( ciphertext ) - ciphertext_length, &part_length ) ) == PSA_SUCCESS\00", align 1
@.str.47 = private unnamed_addr constant [68 x i8] c"( psa_cipher_decrypt_setup( &operation, key, alg ) ) == PSA_SUCCESS\00", align 1
@.str.48 = private unnamed_addr constant [66 x i8] c"( psa_cipher_set_iv( &operation, iv, iv_length ) ) == PSA_SUCCESS\00", align 1
@.str.49 = private unnamed_addr constant [128 x i8] c"( psa_cipher_update( &operation, ciphertext, ciphertext_length, decrypted, sizeof( decrypted ), &part_length ) ) == PSA_SUCCESS\00", align 1
@.str.50 = private unnamed_addr constant [61 x i8] c"status == PSA_SUCCESS || status == PSA_ERROR_INVALID_PADDING\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"( status ) == PSA_SUCCESS\00", align 1
@__const.exercise_aead_key.plaintext = private unnamed_addr constant [16 x i8] c"Hello, world...\00", align 16
@__const.exercise_aead_key.ciphertext = private unnamed_addr constant [48 x i8] c"(wabblewebblewibblewobblewubble)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.52 = private unnamed_addr constant [170 x i8] c"( psa_aead_encrypt( key, alg, nonce, nonce_length, ((void*)0), 0, plaintext, sizeof( plaintext ), ciphertext, sizeof( ciphertext ), &ciphertext_length ) ) == PSA_SUCCESS\00", align 1
@.str.53 = private unnamed_addr constant [158 x i8] c"psa_aead_decrypt( key, alg, nonce, nonce_length, NULL, 0, ciphertext, ciphertext_length, plaintext, sizeof( plaintext ), &plaintext_length ) == verify_status\00", align 1
@.str.54 = private unnamed_addr constant [121 x i8] c"( psa_sign_hash( key, alg, payload, payload_length, signature, sizeof( signature ), &signature_length ) ) == PSA_SUCCESS\00", align 1
@.str.55 = private unnamed_addr constant [99 x i8] c"psa_verify_hash( key, alg, payload, payload_length, signature, signature_length ) == verify_status\00", align 1
@__const.exercise_signature_key.message = private unnamed_addr constant [256 x i8] c"Hello, world...\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.56 = private unnamed_addr constant [124 x i8] c"( psa_sign_message( key, alg, message, message_length, signature, sizeof( signature ), &signature_length ) ) == PSA_SUCCESS\00", align 1
@.str.57 = private unnamed_addr constant [102 x i8] c"psa_verify_message( key, alg, message, message_length, signature, signature_length ) == verify_status\00", align 1
@__const.exercise_asymmetric_encryption_key.plaintext = private unnamed_addr constant [256 x i8] c"Hello, world...\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.exercise_asymmetric_encryption_key.ciphertext = private unnamed_addr constant [256 x i8] c"(wabblewebblewibblewobblewubble)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.58 = private unnamed_addr constant [152 x i8] c"( psa_asymmetric_encrypt( key, alg, plaintext, plaintext_length, ((void*)0), 0, ciphertext, sizeof( ciphertext ), &ciphertext_length ) ) == PSA_SUCCESS\00", align 1
@.str.59 = private unnamed_addr constant [151 x i8] c"status == PSA_SUCCESS || ( ( usage & PSA_KEY_USAGE_ENCRYPT ) == 0 && ( status == PSA_ERROR_INVALID_ARGUMENT || status == PSA_ERROR_INVALID_PADDING ) )\00", align 1
@__const.exercise_key_derivation_key.input1 = private unnamed_addr constant [8 x i8] c"Input 1\00", align 1
@__const.exercise_key_derivation_key.input2 = private unnamed_addr constant [8 x i8] c"Input 2\00", align 1
@.str.60 = private unnamed_addr constant [83 x i8] c"( psa_key_derivation_output_bytes( &operation, output, capacity ) ) == PSA_SUCCESS\00", align 1
@.str.61 = private unnamed_addr constant [58 x i8] c"( psa_key_derivation_abort( &operation ) ) == PSA_SUCCESS\00", align 1
@.str.62 = private unnamed_addr constant [76 x i8] c"( mbedtls_test_psa_raw_key_agreement_with_self( alg, key ) ) == PSA_SUCCESS\00", align 1
@.str.63 = private unnamed_addr constant [63 x i8] c"( psa_key_derivation_setup( &operation, alg ) ) == PSA_SUCCESS\00", align 1
@.str.64 = private unnamed_addr constant [125 x i8] c"( psa_key_derivation_input_bytes( &operation, ((psa_key_derivation_step_t)0x0204), input, sizeof( input ) ) ) == PSA_SUCCESS\00", align 1
@.str.65 = private unnamed_addr constant [125 x i8] c"( psa_key_derivation_input_bytes( &operation, ((psa_key_derivation_step_t)0x0202), input, sizeof( input ) ) ) == PSA_SUCCESS\00", align 1
@.str.66 = private unnamed_addr constant [93 x i8] c"mbedtls_test_psa_key_agreement_with_self( &operation, key ) == expected_key_agreement_status\00", align 1
@.str.67 = private unnamed_addr constant [125 x i8] c"( psa_key_derivation_input_bytes( &operation, ((psa_key_derivation_step_t)0x0201), input, sizeof( input ) ) ) == PSA_SUCCESS\00", align 1
@.str.68 = private unnamed_addr constant [125 x i8] c"( psa_key_derivation_input_bytes( &operation, ((psa_key_derivation_step_t)0x0203), input, sizeof( input ) ) ) == PSA_SUCCESS\00", align 1
@.str.69 = private unnamed_addr constant [91 x i8] c"( psa_key_derivation_output_bytes( &operation, output, sizeof( output ) ) ) == PSA_SUCCESS\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"( exported ) == NULL\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"( exported ) != NULL\00", align 1
@.str.72 = private unnamed_addr constant [92 x i8] c"psa_export_key( key, exported, exported_size, &exported_length ) == PSA_ERROR_NOT_PERMITTED\00", align 1
@.str.73 = private unnamed_addr constant [84 x i8] c"( psa_export_key( key, exported, exported_size, &exported_length ) ) == PSA_SUCCESS\00", align 1
@.str.74 = private unnamed_addr constant [102 x i8] c"psa_export_public_key( key, exported, exported_size, &exported_length ) == PSA_ERROR_INVALID_ARGUMENT\00", align 1
@.str.75 = private unnamed_addr constant [91 x i8] c"( psa_export_public_key( key, exported, exported_size, &exported_length ) ) == PSA_SUCCESS\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_test_psa_setup_key_derivation_wrap(ptr noundef %operation, i32 noundef %key, i32 noundef %alg, ptr noundef %input1, i64 noundef %input1_length, ptr noundef %input2, i64 noundef %input2_length, i64 noundef %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input1.addr = alloca ptr, align 8
  %input1_length.addr = alloca i64, align 8
  %input2.addr = alloca ptr, align 8
  %input2_length.addr = alloca i64, align 8
  %capacity.addr = alloca i64, align 8
  store ptr %operation, ptr %operation.addr, align 8, !tbaa !5
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  store ptr %input1, ptr %input1.addr, align 8, !tbaa !5
  store i64 %input1_length, ptr %input1_length.addr, align 8, !tbaa !11
  store ptr %input2, ptr %input2.addr, align 8, !tbaa !5
  store i64 %input2_length, ptr %input2_length.addr, align 8, !tbaa !11
  store i64 %capacity, ptr %capacity.addr, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call = call i32 @psa_key_derivation_setup(ptr noundef %0, i32 noundef %1)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str, i32 noundef 437, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and = and i32 %2, -256
  %cmp = icmp eq i32 %and, 134217984
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  %3 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %input1.addr, align 8, !tbaa !5
  %5 = load i64, ptr %input1_length.addr, align 8, !tbaa !11
  %call5 = call i32 @psa_key_derivation_input_bytes(ptr noundef %3, i16 noundef zeroext 514, ptr noundef %4, i64 noundef %5)
  %conv6 = sext i32 %call5 to i64
  %call7 = call i32 @mbedtls_test_equal(ptr noundef @.str.2, i32 noundef 442, ptr noundef @.str.1, i64 noundef %conv6, i64 noundef 0)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %do.body4
  br label %exit

if.end10:                                         ; preds = %do.body4
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %6 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %7 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call13 = call i32 @psa_key_derivation_input_key(ptr noundef %6, i16 noundef zeroext 257, i32 noundef %7)
  %conv14 = sext i32 %call13 to i64
  %call15 = call i32 @mbedtls_test_equal(ptr noundef @.str.3, i32 noundef 445, ptr noundef @.str.1, i64 noundef %conv14, i64 noundef 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %do.body12
  br label %exit

if.end18:                                         ; preds = %do.body12
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %8 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %input2.addr, align 8, !tbaa !5
  %10 = load i64, ptr %input2_length.addr, align 8, !tbaa !11
  %call21 = call i32 @psa_key_derivation_input_bytes(ptr noundef %8, i16 noundef zeroext 515, ptr noundef %9, i64 noundef %10)
  %conv22 = sext i32 %call21 to i64
  %call23 = call i32 @mbedtls_test_equal(ptr noundef @.str.4, i32 noundef 449, ptr noundef @.str.1, i64 noundef %conv22, i64 noundef 0)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %do.body20
  br label %exit

if.end26:                                         ; preds = %do.body20
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %if.end63

if.else:                                          ; preds = %do.end
  %11 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and28 = and i32 %11, -256
  %cmp29 = icmp eq i32 %and28, 134218240
  br i1 %cmp29, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %12 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and31 = and i32 %12, -256
  %cmp32 = icmp eq i32 %and31, 134218496
  br i1 %cmp32, label %if.then34, label %if.else59

if.then34:                                        ; preds = %lor.lhs.false, %if.else
  br label %do.body35

do.body35:                                        ; preds = %if.then34
  %13 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %input1.addr, align 8, !tbaa !5
  %15 = load i64, ptr %input1_length.addr, align 8, !tbaa !11
  %call36 = call i32 @psa_key_derivation_input_bytes(ptr noundef %13, i16 noundef zeroext 516, ptr noundef %14, i64 noundef %15)
  %conv37 = sext i32 %call36 to i64
  %call38 = call i32 @mbedtls_test_equal(ptr noundef @.str.5, i32 noundef 456, ptr noundef @.str.1, i64 noundef %conv37, i64 noundef 0)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %do.body35
  br label %exit

if.end41:                                         ; preds = %do.body35
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %16 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %17 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call44 = call i32 @psa_key_derivation_input_key(ptr noundef %16, i16 noundef zeroext 257, i32 noundef %17)
  %conv45 = sext i32 %call44 to i64
  %call46 = call i32 @mbedtls_test_equal(ptr noundef @.str.3, i32 noundef 459, ptr noundef @.str.1, i64 noundef %conv45, i64 noundef 0)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %do.body43
  br label %exit

if.end49:                                         ; preds = %do.body43
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %18 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %input2.addr, align 8, !tbaa !5
  %20 = load i64, ptr %input2_length.addr, align 8, !tbaa !11
  %call52 = call i32 @psa_key_derivation_input_bytes(ptr noundef %18, i16 noundef zeroext 513, ptr noundef %19, i64 noundef %20)
  %conv53 = sext i32 %call52 to i64
  %call54 = call i32 @mbedtls_test_equal(ptr noundef @.str.6, i32 noundef 462, ptr noundef @.str.1, i64 noundef %conv53, i64 noundef 0)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %do.body51
  br label %exit

if.end57:                                         ; preds = %do.body51
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  br label %if.end62

if.else59:                                        ; preds = %lor.lhs.false
  br label %do.body60

do.body60:                                        ; preds = %if.else59
  call void @mbedtls_test_fail(ptr noundef @.str.7, i32 noundef 466, ptr noundef @.str.1)
  br label %exit

do.end61:                                         ; No predecessors!
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %do.end58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %do.end27
  %21 = load i64, ptr %capacity.addr, align 8, !tbaa !11
  %cmp64 = icmp ne i64 %21, -1
  br i1 %cmp64, label %if.then66, label %if.end75

if.then66:                                        ; preds = %if.end63
  br label %do.body67

do.body67:                                        ; preds = %if.then66
  %22 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %23 = load i64, ptr %capacity.addr, align 8, !tbaa !11
  %call68 = call i32 @psa_key_derivation_set_capacity(ptr noundef %22, i64 noundef %23)
  %conv69 = sext i32 %call68 to i64
  %call70 = call i32 @mbedtls_test_equal(ptr noundef @.str.8, i32 noundef 470, ptr noundef @.str.1, i64 noundef %conv69, i64 noundef 0)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %do.body67
  br label %exit

if.end73:                                         ; preds = %do.body67
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %if.end63
  store i32 1, ptr %retval, align 4
  br label %return

exit:                                             ; preds = %if.then72, %do.body60, %if.then56, %if.then48, %if.then40, %if.then25, %if.then17, %if.then9, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.end75
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i32 @mbedtls_test_equal(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) #1

declare i32 @psa_key_derivation_setup(ptr noundef, i32 noundef) #1

declare i32 @psa_key_derivation_input_bytes(ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef) #1

declare i32 @psa_key_derivation_input_key(ptr noundef, i16 noundef zeroext, i32 noundef) #1

declare void @mbedtls_test_fail(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @psa_key_derivation_set_capacity(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_test_psa_key_agreement_with_self(ptr noundef %operation, i32 noundef %key) #0 {
entry:
  %operation.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %private_key_type = alloca i16, align 2
  %public_key_type = alloca i16, align 2
  %key_bits = alloca i64, align 8
  %public_key = alloca ptr, align 8
  %public_key_length = alloca i64, align 8
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store ptr %operation, ptr %operation.addr, align 8, !tbaa !5
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 2, ptr %private_key_type) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %public_key_type) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_bits) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %public_key) #8
  store ptr null, ptr %public_key, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %public_key_length) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -132, ptr %status, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @psa_get_key_attributes(i32 noundef %0, ptr noundef %attributes)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 528, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call2 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  store i16 %call2, ptr %private_key_type, align 2, !tbaa !13
  %call3 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  store i64 %call3, ptr %key_bits, align 8, !tbaa !11
  %1 = load i16, ptr %private_key_type, align 2, !tbaa !13
  %conv4 = zext i16 %1 to i32
  %and = and i32 %conv4, -12289
  %conv5 = trunc i32 %and to i16
  store i16 %conv5, ptr %public_key_type, align 2, !tbaa !13
  %2 = load i16, ptr %public_key_type, align 2, !tbaa !13
  %conv6 = zext i16 %2 to i32
  %and7 = and i32 %conv6, -12289
  %cmp = icmp eq i32 %and7, 16385
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %3 = load i64, ptr %key_bits, align 8, !tbaa !11
  %div = udiv i64 %3, 8
  %add = add i64 %div, 5
  %add9 = add i64 %add, 11
  br label %cond.end20

cond.false:                                       ; preds = %do.end
  %4 = load i16, ptr %public_key_type, align 2, !tbaa !13
  %conv10 = zext i16 %4 to i32
  %and11 = and i32 %conv10, -12289
  %and12 = and i32 %and11, -256
  %cmp13 = icmp eq i32 %and12, 16640
  br i1 %cmp13, label %cond.true15, label %cond.false19

cond.true15:                                      ; preds = %cond.false
  %5 = load i64, ptr %key_bits, align 8, !tbaa !11
  %add16 = add i64 %5, 7
  %div17 = udiv i64 %add16, 8
  %mul = mul i64 2, %div17
  %add18 = add i64 %mul, 1
  br label %cond.end

cond.false19:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false19, %cond.true15
  %cond = phi i64 [ %add18, %cond.true15 ], [ 0, %cond.false19 ]
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end, %cond.true
  %cond21 = phi i64 [ %add9, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond21, ptr %public_key_length, align 8, !tbaa !11
  br label %do.body22

do.body22:                                        ; preds = %cond.end20
  br label %do.body23

do.body23:                                        ; preds = %do.body22
  %6 = load ptr, ptr %public_key, align 8, !tbaa !5
  %cmp24 = icmp eq ptr %6, null
  br i1 %cmp24, label %if.end27, label %if.then26

if.then26:                                        ; preds = %do.body23
  call void @mbedtls_test_fail(ptr noundef @.str.10, i32 noundef 533, ptr noundef @.str.1)
  br label %exit

if.end27:                                         ; preds = %do.body23
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  %7 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %cmp30 = icmp ne i64 %7, 0
  br i1 %cmp30, label %if.then32, label %if.end41

if.then32:                                        ; preds = %do.end29
  %8 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %call33 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %8) #9
  store ptr %call33, ptr %public_key, align 8, !tbaa !5
  br label %do.body34

do.body34:                                        ; preds = %if.then32
  %9 = load ptr, ptr %public_key, align 8, !tbaa !5
  %cmp35 = icmp ne ptr %9, null
  br i1 %cmp35, label %if.end38, label %if.then37

if.then37:                                        ; preds = %do.body34
  call void @mbedtls_test_fail(ptr noundef @.str.11, i32 noundef 533, ptr noundef @.str.1)
  br label %exit

if.end38:                                         ; preds = %do.body34
  br label %do.cond39

do.cond39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.end29
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %do.body44

do.body44:                                        ; preds = %do.end43
  %10 = load i32, ptr %key.addr, align 4, !tbaa !9
  %11 = load ptr, ptr %public_key, align 8, !tbaa !5
  %12 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %call45 = call i32 @psa_export_public_key(i32 noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %public_key_length)
  %conv46 = sext i32 %call45 to i64
  %call47 = call i32 @mbedtls_test_equal(ptr noundef @.str.12, i32 noundef 535, ptr noundef @.str.1, i64 noundef %conv46, i64 noundef 0)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %do.body44
  br label %exit

if.end50:                                         ; preds = %do.body44
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %13 = load ptr, ptr %operation.addr, align 8, !tbaa !5
  %14 = load i32, ptr %key.addr, align 4, !tbaa !9
  %15 = load ptr, ptr %public_key, align 8, !tbaa !5
  %16 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %call53 = call i32 @psa_key_derivation_key_agreement(ptr noundef %13, i16 noundef zeroext 257, i32 noundef %14, ptr noundef %15, i64 noundef %16)
  store i32 %call53, ptr %status, align 4, !tbaa !9
  br label %exit

exit:                                             ; preds = %do.end52, %if.then49, %if.then37, %if.then26, %if.then
  call void @psa_reset_key_attributes(ptr noundef %attributes)
  %17 = load ptr, ptr %public_key, align 8, !tbaa !5
  call void @free(ptr noundef %17) #8
  %18 = load i32, ptr %status, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %public_key_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %public_key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_bits) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %public_key_type) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %private_key_type) #8
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @psa_get_key_attributes(i32 noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @psa_get_key_type(ptr noundef %attributes) #4 {
entry:
  %attributes.addr = alloca ptr, align 8
  store ptr %attributes, ptr %attributes.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %attributes.addr, align 8, !tbaa !5
  %core = getelementptr inbounds %struct.psa_key_attributes_s, ptr %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %core, i32 0, i32 0
  %1 = load i16, ptr %type, align 8, !tbaa !15
  ret i16 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @psa_get_key_bits(ptr noundef %attributes) #4 {
entry:
  %attributes.addr = alloca ptr, align 8
  store ptr %attributes, ptr %attributes.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %attributes.addr, align 8, !tbaa !5
  %core = getelementptr inbounds %struct.psa_key_attributes_s, ptr %0, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %core, i32 0, i32 1
  %1 = load i16, ptr %bits, align 2, !tbaa !19
  %conv = zext i16 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #5

declare i32 @psa_export_public_key(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_key_derivation_key_agreement(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i64 noundef) #1

declare void @psa_reset_key_attributes(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_test_psa_raw_key_agreement_with_self(i32 noundef %alg, i32 noundef %key) #0 {
entry:
  %alg.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %private_key_type = alloca i16, align 2
  %public_key_type = alloca i16, align 2
  %key_bits = alloca i64, align 8
  %public_key = alloca ptr, align 8
  %public_key_length = alloca i64, align 8
  %output = alloca [1024 x i8], align 16
  %output_length = alloca i64, align 8
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 2, ptr %private_key_type) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %public_key_type) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_bits) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %public_key) #8
  store ptr null, ptr %public_key, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %public_key_length) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr %output) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_length) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 -132, ptr %status, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @psa_get_key_attributes(i32 noundef %0, ptr noundef %attributes)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 570, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call2 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  store i16 %call2, ptr %private_key_type, align 2, !tbaa !13
  %call3 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  store i64 %call3, ptr %key_bits, align 8, !tbaa !11
  %1 = load i16, ptr %private_key_type, align 2, !tbaa !13
  %conv4 = zext i16 %1 to i32
  %and = and i32 %conv4, -12289
  %conv5 = trunc i32 %and to i16
  store i16 %conv5, ptr %public_key_type, align 2, !tbaa !13
  %2 = load i16, ptr %public_key_type, align 2, !tbaa !13
  %conv6 = zext i16 %2 to i32
  %and7 = and i32 %conv6, -12289
  %cmp = icmp eq i32 %and7, 16385
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %3 = load i64, ptr %key_bits, align 8, !tbaa !11
  %div = udiv i64 %3, 8
  %add = add i64 %div, 5
  %add9 = add i64 %add, 11
  br label %cond.end20

cond.false:                                       ; preds = %do.end
  %4 = load i16, ptr %public_key_type, align 2, !tbaa !13
  %conv10 = zext i16 %4 to i32
  %and11 = and i32 %conv10, -12289
  %and12 = and i32 %and11, -256
  %cmp13 = icmp eq i32 %and12, 16640
  br i1 %cmp13, label %cond.true15, label %cond.false19

cond.true15:                                      ; preds = %cond.false
  %5 = load i64, ptr %key_bits, align 8, !tbaa !11
  %add16 = add i64 %5, 7
  %div17 = udiv i64 %add16, 8
  %mul = mul i64 2, %div17
  %add18 = add i64 %mul, 1
  br label %cond.end

cond.false19:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false19, %cond.true15
  %cond = phi i64 [ %add18, %cond.true15 ], [ 0, %cond.false19 ]
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end, %cond.true
  %cond21 = phi i64 [ %add9, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond21, ptr %public_key_length, align 8, !tbaa !11
  br label %do.body22

do.body22:                                        ; preds = %cond.end20
  br label %do.body23

do.body23:                                        ; preds = %do.body22
  %6 = load ptr, ptr %public_key, align 8, !tbaa !5
  %cmp24 = icmp eq ptr %6, null
  br i1 %cmp24, label %if.end27, label %if.then26

if.then26:                                        ; preds = %do.body23
  call void @mbedtls_test_fail(ptr noundef @.str.10, i32 noundef 575, ptr noundef @.str.1)
  br label %exit

if.end27:                                         ; preds = %do.body23
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  %7 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %cmp30 = icmp ne i64 %7, 0
  br i1 %cmp30, label %if.then32, label %if.end41

if.then32:                                        ; preds = %do.end29
  %8 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %call33 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %8) #9
  store ptr %call33, ptr %public_key, align 8, !tbaa !5
  br label %do.body34

do.body34:                                        ; preds = %if.then32
  %9 = load ptr, ptr %public_key, align 8, !tbaa !5
  %cmp35 = icmp ne ptr %9, null
  br i1 %cmp35, label %if.end38, label %if.then37

if.then37:                                        ; preds = %do.body34
  call void @mbedtls_test_fail(ptr noundef @.str.11, i32 noundef 575, ptr noundef @.str.1)
  br label %exit

if.end38:                                         ; preds = %do.body34
  br label %do.cond39

do.cond39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.end29
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %do.body44

do.body44:                                        ; preds = %do.end43
  %10 = load i32, ptr %key.addr, align 4, !tbaa !9
  %11 = load ptr, ptr %public_key, align 8, !tbaa !5
  %12 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %call45 = call i32 @psa_export_public_key(i32 noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %public_key_length)
  %conv46 = sext i32 %call45 to i64
  %call47 = call i32 @mbedtls_test_equal(ptr noundef @.str.12, i32 noundef 578, ptr noundef @.str.1, i64 noundef %conv46, i64 noundef 0)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %do.body44
  br label %exit

if.end50:                                         ; preds = %do.body44
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %13 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %14 = load i32, ptr %key.addr, align 4, !tbaa !9
  %15 = load ptr, ptr %public_key, align 8, !tbaa !5
  %16 = load i64, ptr %public_key_length, align 8, !tbaa !11
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %output, i64 0, i64 0
  %call53 = call i32 @psa_raw_key_agreement(i32 noundef %13, i32 noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %arraydecay, i64 noundef 1024, ptr noundef %output_length)
  store i32 %call53, ptr %status, align 4, !tbaa !9
  %17 = load i32, ptr %status, align 4, !tbaa !9
  %cmp54 = icmp eq i32 %17, 0
  br i1 %cmp54, label %if.then56, label %if.end81

if.then56:                                        ; preds = %do.end52
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  %18 = load i64, ptr %output_length, align 8, !tbaa !11
  %19 = load i16, ptr %private_key_type, align 2, !tbaa !13
  %conv58 = zext i16 %19 to i32
  %and59 = and i32 %conv58, -256
  %cmp60 = icmp eq i32 %and59, 28928
  br i1 %cmp60, label %cond.true62, label %cond.false65

cond.true62:                                      ; preds = %do.body57
  %20 = load i64, ptr %key_bits, align 8, !tbaa !11
  %add63 = add i64 %20, 7
  %div64 = udiv i64 %add63, 8
  br label %cond.end66

cond.false65:                                     ; preds = %do.body57
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true62
  %cond67 = phi i64 [ %div64, %cond.true62 ], [ 0, %cond.false65 ]
  %cmp68 = icmp ule i64 %18, %cond67
  br i1 %cmp68, label %if.end71, label %if.then70

if.then70:                                        ; preds = %cond.end66
  call void @mbedtls_test_fail(ptr noundef @.str.13, i32 noundef 587, ptr noundef @.str.1)
  br label %exit

if.end71:                                         ; preds = %cond.end66
  br label %do.cond72

do.cond72:                                        ; preds = %if.end71
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %21 = load i64, ptr %output_length, align 8, !tbaa !11
  %cmp75 = icmp ule i64 %21, 66
  br i1 %cmp75, label %if.end78, label %if.then77

if.then77:                                        ; preds = %do.body74
  call void @mbedtls_test_fail(ptr noundef @.str.14, i32 noundef 589, ptr noundef @.str.1)
  br label %exit

if.end78:                                         ; preds = %do.body74
  br label %do.cond79

do.cond79:                                        ; preds = %if.end78
  br label %do.end80

do.end80:                                         ; preds = %do.cond79
  br label %if.end81

if.end81:                                         ; preds = %do.end80, %do.end52
  br label %exit

exit:                                             ; preds = %if.end81, %if.then77, %if.then70, %if.then49, %if.then37, %if.then26, %if.then
  call void @psa_reset_key_attributes(ptr noundef %attributes)
  %22 = load ptr, ptr %public_key, align 8, !tbaa !5
  call void @free(ptr noundef %22) #8
  %23 = load i32, ptr %status, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_length) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr %output) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %public_key_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %public_key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_bits) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %public_key_type) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %private_key_type) #8
  ret i32 %23
}

declare i32 @psa_raw_key_agreement(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_test_psa_exported_key_sanity_check(i16 noundef zeroext %type, i64 noundef %bits, ptr noundef %exported, i64 noundef %exported_length) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i16, align 2
  %bits.addr = alloca i64, align 8
  %exported.addr = alloca ptr, align 8
  %exported_length.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %end = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p204 = alloca ptr, align 8
  %end205 = alloca ptr, align 8
  %len207 = alloca i64, align 8
  %i = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %m = alloca i32, align 4
  store i16 %type, ptr %type.addr, align 2, !tbaa !13
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !11
  store ptr %exported, ptr %exported.addr, align 8, !tbaa !5
  store i64 %exported_length, ptr %exported_length.addr, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %1 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 28672
  %cmp = icmp eq i32 %and, 4096
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %2 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv2 = zext i16 %2 to i32
  %and3 = and i32 %conv2, 28672
  %cmp4 = icmp eq i32 %and3, 8192
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.body
  %3 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add = add i64 %3, 7
  %div = udiv i64 %add, 8
  br label %cond.end70

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv6 = zext i16 %4 to i32
  %cmp7 = icmp eq i32 %conv6, 28673
  br i1 %cmp7, label %cond.true9, label %cond.false15

cond.true9:                                       ; preds = %cond.false
  %5 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div10 = udiv i64 %5, 2
  %add11 = add i64 %div10, 1
  %div12 = udiv i64 %add11, 8
  %add13 = add i64 %div12, 5
  %mul = mul i64 9, %add13
  %add14 = add i64 %mul, 14
  br label %cond.end68

cond.false15:                                     ; preds = %cond.false
  %6 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv16 = zext i16 %6 to i32
  %cmp17 = icmp eq i32 %conv16, 16385
  br i1 %cmp17, label %cond.true19, label %cond.false23

cond.true19:                                      ; preds = %cond.false15
  %7 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div20 = udiv i64 %7, 8
  %add21 = add i64 %div20, 5
  %add22 = add i64 %add21, 11
  br label %cond.end66

cond.false23:                                     ; preds = %cond.false15
  %8 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv24 = zext i16 %8 to i32
  %cmp25 = icmp eq i32 %conv24, 28674
  br i1 %cmp25, label %cond.true27, label %cond.false32

cond.true27:                                      ; preds = %cond.false23
  %9 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div28 = udiv i64 %9, 8
  %add29 = add i64 %div28, 5
  %mul30 = mul i64 %add29, 3
  %add31 = add i64 %mul30, 75
  br label %cond.end64

cond.false32:                                     ; preds = %cond.false23
  %10 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv33 = zext i16 %10 to i32
  %cmp34 = icmp eq i32 %conv33, 16386
  br i1 %cmp34, label %cond.true36, label %cond.false41

cond.true36:                                      ; preds = %cond.false32
  %11 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div37 = udiv i64 %11, 8
  %add38 = add i64 %div37, 5
  %mul39 = mul i64 %add38, 3
  %add40 = add i64 %mul39, 59
  br label %cond.end62

cond.false41:                                     ; preds = %cond.false32
  %12 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv42 = zext i16 %12 to i32
  %and43 = and i32 %conv42, -256
  %cmp44 = icmp eq i32 %and43, 28928
  br i1 %cmp44, label %cond.true46, label %cond.false49

cond.true46:                                      ; preds = %cond.false41
  %13 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add47 = add i64 %13, 7
  %div48 = udiv i64 %add47, 8
  br label %cond.end60

cond.false49:                                     ; preds = %cond.false41
  %14 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv50 = zext i16 %14 to i32
  %and51 = and i32 %conv50, -256
  %cmp52 = icmp eq i32 %and51, 16640
  br i1 %cmp52, label %cond.true54, label %cond.false59

cond.true54:                                      ; preds = %cond.false49
  %15 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add55 = add i64 %15, 7
  %div56 = udiv i64 %add55, 8
  %mul57 = mul i64 2, %div56
  %add58 = add i64 %mul57, 1
  br label %cond.end

cond.false59:                                     ; preds = %cond.false49
  br label %cond.end

cond.end:                                         ; preds = %cond.false59, %cond.true54
  %cond = phi i64 [ %add58, %cond.true54 ], [ 0, %cond.false59 ]
  br label %cond.end60

cond.end60:                                       ; preds = %cond.end, %cond.true46
  %cond61 = phi i64 [ %div48, %cond.true46 ], [ %cond, %cond.end ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end60, %cond.true36
  %cond63 = phi i64 [ %add40, %cond.true36 ], [ %cond61, %cond.end60 ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true27
  %cond65 = phi i64 [ %add31, %cond.true27 ], [ %cond63, %cond.end62 ]
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end64, %cond.true19
  %cond67 = phi i64 [ %add22, %cond.true19 ], [ %cond65, %cond.end64 ]
  br label %cond.end68

cond.end68:                                       ; preds = %cond.end66, %cond.true9
  %cond69 = phi i64 [ %add14, %cond.true9 ], [ %cond67, %cond.end66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true
  %cond71 = phi i64 [ %div, %cond.true ], [ %cond69, %cond.end68 ]
  %cmp72 = icmp ule i64 %0, %cond71
  br i1 %cmp72, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end70
  call void @mbedtls_test_fail(ptr noundef @.str.15, i32 noundef 700, ptr noundef @.str.1)
  br label %exit

if.end:                                           ; preds = %cond.end70
  br label %do.end

do.end:                                           ; preds = %if.end
  %16 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv74 = zext i16 %16 to i32
  %and75 = and i32 %conv74, 28672
  %cmp76 = icmp eq i32 %and75, 4096
  br i1 %cmp76, label %if.then83, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %do.end
  %17 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv79 = zext i16 %17 to i32
  %and80 = and i32 %conv79, 28672
  %cmp81 = icmp eq i32 %and80, 8192
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %lor.lhs.false78, %do.end
  br label %do.body84

do.body84:                                        ; preds = %if.then83
  %18 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %19 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add85 = add i64 %19, 7
  %div86 = udiv i64 %add85, 8
  %call = call i32 @mbedtls_test_equal(ptr noundef @.str.16, i32 noundef 703, ptr noundef @.str.1, i64 noundef %18, i64 noundef %div86)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end88, label %if.then87

if.then87:                                        ; preds = %do.body84
  br label %exit

if.end88:                                         ; preds = %do.body84
  br label %do.end89

do.end89:                                         ; preds = %if.end88
  br label %if.end386

if.else:                                          ; preds = %lor.lhs.false78
  %20 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv90 = zext i16 %20 to i32
  %cmp91 = icmp eq i32 %conv90, 28673
  br i1 %cmp91, label %if.then93, label %if.else177

if.then93:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8
  %21 = load ptr, ptr %exported.addr, align 8, !tbaa !5
  store ptr %21, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #8
  %22 = load ptr, ptr %exported.addr, align 8, !tbaa !5
  %23 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %23
  store ptr %add.ptr, ptr %end, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8
  br label %do.body94

do.body94:                                        ; preds = %if.then93
  %24 = load ptr, ptr %end, align 8, !tbaa !5
  %call95 = call i32 @mbedtls_asn1_get_tag(ptr noundef %p, ptr noundef %24, ptr noundef %len, i32 noundef 48)
  %conv96 = sext i32 %call95 to i64
  %call97 = call i32 @mbedtls_test_equal(ptr noundef @.str.17, i32 noundef 726, ptr noundef @.str.1, i64 noundef %conv96, i64 noundef 0)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %do.body94
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end100:                                        ; preds = %do.body94
  br label %do.cond

do.cond:                                          ; preds = %if.end100
  br label %do.end101

do.end101:                                        ; preds = %do.cond
  br label %do.body102

do.body102:                                       ; preds = %do.end101
  %25 = load i64, ptr %len, align 8, !tbaa !11
  %26 = load ptr, ptr %end, align 8, !tbaa !5
  %27 = load ptr, ptr %p, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call103 = call i32 @mbedtls_test_equal(ptr noundef @.str.18, i32 noundef 727, ptr noundef @.str.1, i64 noundef %25, i64 noundef %sub.ptr.sub)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end106, label %if.then105

if.then105:                                       ; preds = %do.body102
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %do.body102
  br label %do.cond107

do.cond107:                                       ; preds = %if.end106
  br label %do.end108

do.end108:                                        ; preds = %do.cond107
  %28 = load ptr, ptr %end, align 8, !tbaa !5
  %call109 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %28, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %do.end108
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end112:                                        ; preds = %do.end108
  %29 = load ptr, ptr %end, align 8, !tbaa !5
  %30 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %31 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %call113 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %29, i64 noundef %30, i64 noundef %31, i32 noundef 1)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end112
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %if.end112
  %32 = load ptr, ptr %end, align 8, !tbaa !5
  %33 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %call117 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %32, i64 noundef 2, i64 noundef %33, i32 noundef 1)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %if.end116
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end120:                                        ; preds = %if.end116
  %34 = load ptr, ptr %end, align 8, !tbaa !5
  %35 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div121 = udiv i64 %35, 2
  %36 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %call122 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %34, i64 noundef %div121, i64 noundef %36, i32 noundef 1)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.end125, label %if.then124

if.then124:                                       ; preds = %if.end120
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end125:                                        ; preds = %if.end120
  %37 = load ptr, ptr %end, align 8, !tbaa !5
  %38 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div126 = udiv i64 %38, 2
  %39 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div127 = udiv i64 %39, 2
  %add128 = add i64 %div127, 1
  %call129 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %37, i64 noundef %div126, i64 noundef %add128, i32 noundef 1)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %if.end125
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end132:                                        ; preds = %if.end125
  %40 = load ptr, ptr %end, align 8, !tbaa !5
  %41 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div133 = udiv i64 %41, 2
  %42 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div134 = udiv i64 %42, 2
  %add135 = add i64 %div134, 1
  %call136 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %40, i64 noundef %div133, i64 noundef %add135, i32 noundef 1)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.end132
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end139:                                        ; preds = %if.end132
  %43 = load ptr, ptr %end, align 8, !tbaa !5
  %44 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div140 = udiv i64 %44, 2
  %add141 = add i64 %div140, 1
  %call142 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %43, i64 noundef 1, i64 noundef %add141, i32 noundef 0)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end139
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end145:                                        ; preds = %if.end139
  %45 = load ptr, ptr %end, align 8, !tbaa !5
  %46 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div146 = udiv i64 %46, 2
  %add147 = add i64 %div146, 1
  %call148 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %45, i64 noundef 1, i64 noundef %add147, i32 noundef 0)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.end151, label %if.then150

if.then150:                                       ; preds = %if.end145
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end151:                                        ; preds = %if.end145
  %47 = load ptr, ptr %end, align 8, !tbaa !5
  %48 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div152 = udiv i64 %48, 2
  %add153 = add i64 %div152, 1
  %call154 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p, ptr noundef %47, i64 noundef 1, i64 noundef %add153, i32 noundef 0)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end157, label %if.then156

if.then156:                                       ; preds = %if.end151
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end157:                                        ; preds = %if.end151
  br label %do.body158

do.body158:                                       ; preds = %if.end157
  %49 = load ptr, ptr %p, align 8, !tbaa !5
  %50 = load ptr, ptr %end, align 8, !tbaa !5
  %sub.ptr.lhs.cast159 = ptrtoint ptr %49 to i64
  %sub.ptr.rhs.cast160 = ptrtoint ptr %50 to i64
  %sub.ptr.sub161 = sub i64 %sub.ptr.lhs.cast159, %sub.ptr.rhs.cast160
  %call162 = call i32 @mbedtls_test_equal(ptr noundef @.str.19, i32 noundef 748, ptr noundef @.str.1, i64 noundef %sub.ptr.sub161, i64 noundef 0)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.end165, label %if.then164

if.then164:                                       ; preds = %do.body158
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end165:                                        ; preds = %do.body158
  br label %do.cond166

do.cond166:                                       ; preds = %if.end165
  br label %do.end167

do.end167:                                        ; preds = %do.cond166
  br label %do.body168

do.body168:                                       ; preds = %do.end167
  %51 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %cmp169 = icmp ule i64 %51, 2363
  br i1 %cmp169, label %if.end172, label %if.then171

if.then171:                                       ; preds = %do.body168
  call void @mbedtls_test_fail(ptr noundef @.str.20, i32 noundef 750, ptr noundef @.str.1)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end172:                                        ; preds = %do.body168
  br label %do.cond173

do.cond173:                                       ; preds = %if.end172
  br label %do.end174

do.end174:                                        ; preds = %do.cond173
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %if.then164, %if.then156, %if.then150, %if.then144, %if.then138, %if.then131, %if.then124, %if.then119, %if.then115, %if.then111, %if.then105, %if.then99, %do.end174
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end385

if.else177:                                       ; preds = %if.else
  %52 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv178 = zext i16 %52 to i32
  %and179 = and i32 %conv178, -256
  %cmp180 = icmp eq i32 %and179, 28928
  br i1 %cmp180, label %if.then182, label %if.else199

if.then182:                                       ; preds = %if.else177
  br label %do.body183

do.body183:                                       ; preds = %if.then182
  %53 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %54 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add184 = add i64 %54, 7
  %div185 = udiv i64 %add184, 8
  %call186 = call i32 @mbedtls_test_equal(ptr noundef @.str.16, i32 noundef 759, ptr noundef @.str.1, i64 noundef %53, i64 noundef %div185)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end189, label %if.then188

if.then188:                                       ; preds = %do.body183
  br label %exit

if.end189:                                        ; preds = %do.body183
  br label %do.end191

do.end191:                                        ; preds = %if.end189
  br label %do.body192

do.body192:                                       ; preds = %do.end191
  %55 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %cmp193 = icmp ule i64 %55, 2363
  br i1 %cmp193, label %if.end196, label %if.then195

if.then195:                                       ; preds = %do.body192
  call void @mbedtls_test_fail(ptr noundef @.str.20, i32 noundef 761, ptr noundef @.str.1)
  br label %exit

if.end196:                                        ; preds = %do.body192
  br label %do.end198

do.end198:                                        ; preds = %if.end196
  br label %if.end384

if.else199:                                       ; preds = %if.else177
  %56 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv200 = zext i16 %56 to i32
  %cmp201 = icmp eq i32 %conv200, 16385
  br i1 %cmp201, label %if.then203, label %if.else288

if.then203:                                       ; preds = %if.else199
  call void @llvm.lifetime.start.p0(i64 8, ptr %p204) #8
  %57 = load ptr, ptr %exported.addr, align 8, !tbaa !5
  store ptr %57, ptr %p204, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %end205) #8
  %58 = load ptr, ptr %exported.addr, align 8, !tbaa !5
  %59 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %add.ptr206 = getelementptr inbounds i8, ptr %58, i64 %59
  store ptr %add.ptr206, ptr %end205, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %len207) #8
  br label %do.body208

do.body208:                                       ; preds = %if.then203
  %60 = load ptr, ptr %end205, align 8, !tbaa !5
  %call209 = call i32 @mbedtls_asn1_get_tag(ptr noundef %p204, ptr noundef %60, ptr noundef %len207, i32 noundef 48)
  %conv210 = sext i32 %call209 to i64
  %call211 = call i32 @mbedtls_test_equal(ptr noundef @.str.17, i32 noundef 779, ptr noundef @.str.1, i64 noundef %conv210, i64 noundef 0)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.end214, label %if.then213

if.then213:                                       ; preds = %do.body208
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end214:                                        ; preds = %do.body208
  br label %do.cond215

do.cond215:                                       ; preds = %if.end214
  br label %do.end216

do.end216:                                        ; preds = %do.cond215
  br label %do.body217

do.body217:                                       ; preds = %do.end216
  %61 = load i64, ptr %len207, align 8, !tbaa !11
  %62 = load ptr, ptr %end205, align 8, !tbaa !5
  %63 = load ptr, ptr %p204, align 8, !tbaa !5
  %sub.ptr.lhs.cast218 = ptrtoint ptr %62 to i64
  %sub.ptr.rhs.cast219 = ptrtoint ptr %63 to i64
  %sub.ptr.sub220 = sub i64 %sub.ptr.lhs.cast218, %sub.ptr.rhs.cast219
  %call221 = call i32 @mbedtls_test_equal(ptr noundef @.str.18, i32 noundef 780, ptr noundef @.str.1, i64 noundef %61, i64 noundef %sub.ptr.sub220)
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.end224, label %if.then223

if.then223:                                       ; preds = %do.body217
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end224:                                        ; preds = %do.body217
  br label %do.cond225

do.cond225:                                       ; preds = %if.end224
  br label %do.end226

do.end226:                                        ; preds = %do.cond225
  %64 = load ptr, ptr %end205, align 8, !tbaa !5
  %65 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %66 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %call227 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p204, ptr noundef %64, i64 noundef %65, i64 noundef %66, i32 noundef 1)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.end230, label %if.then229

if.then229:                                       ; preds = %do.end226
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end230:                                        ; preds = %do.end226
  %67 = load ptr, ptr %end205, align 8, !tbaa !5
  %68 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %call231 = call i32 @mbedtls_test_asn1_skip_integer(ptr noundef %p204, ptr noundef %67, i64 noundef 2, i64 noundef %68, i32 noundef 1)
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.end234, label %if.then233

if.then233:                                       ; preds = %if.end230
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end234:                                        ; preds = %if.end230
  br label %do.body235

do.body235:                                       ; preds = %if.end234
  %69 = load ptr, ptr %p204, align 8, !tbaa !5
  %70 = load ptr, ptr %end205, align 8, !tbaa !5
  %sub.ptr.lhs.cast236 = ptrtoint ptr %69 to i64
  %sub.ptr.rhs.cast237 = ptrtoint ptr %70 to i64
  %sub.ptr.sub238 = sub i64 %sub.ptr.lhs.cast236, %sub.ptr.rhs.cast237
  %call239 = call i32 @mbedtls_test_equal(ptr noundef @.str.19, i32 noundef 785, ptr noundef @.str.1, i64 noundef %sub.ptr.sub238, i64 noundef 0)
  %tobool240 = icmp ne i32 %call239, 0
  br i1 %tobool240, label %if.end242, label %if.then241

if.then241:                                       ; preds = %do.body235
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end242:                                        ; preds = %do.body235
  br label %do.cond243

do.cond243:                                       ; preds = %if.end242
  br label %do.end244

do.end244:                                        ; preds = %do.cond243
  br label %do.body245

do.body245:                                       ; preds = %do.end244
  %71 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %72 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv246 = zext i16 %72 to i32
  %and247 = and i32 %conv246, -12289
  %cmp248 = icmp eq i32 %and247, 16385
  br i1 %cmp248, label %cond.true250, label %cond.false254

cond.true250:                                     ; preds = %do.body245
  %73 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div251 = udiv i64 %73, 8
  %add252 = add i64 %div251, 5
  %add253 = add i64 %add252, 11
  br label %cond.end268

cond.false254:                                    ; preds = %do.body245
  %74 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv255 = zext i16 %74 to i32
  %and256 = and i32 %conv255, -12289
  %and257 = and i32 %and256, -256
  %cmp258 = icmp eq i32 %and257, 16640
  br i1 %cmp258, label %cond.true260, label %cond.false265

cond.true260:                                     ; preds = %cond.false254
  %75 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add261 = add i64 %75, 7
  %div262 = udiv i64 %add261, 8
  %mul263 = mul i64 2, %div262
  %add264 = add i64 %mul263, 1
  br label %cond.end266

cond.false265:                                    ; preds = %cond.false254
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false265, %cond.true260
  %cond267 = phi i64 [ %add264, %cond.true260 ], [ 0, %cond.false265 ]
  br label %cond.end268

cond.end268:                                      ; preds = %cond.end266, %cond.true250
  %cond269 = phi i64 [ %add253, %cond.true250 ], [ %cond267, %cond.end266 ]
  %cmp270 = icmp ule i64 %71, %cond269
  br i1 %cmp270, label %if.end273, label %if.then272

if.then272:                                       ; preds = %cond.end268
  call void @mbedtls_test_fail(ptr noundef @.str.21, i32 noundef 789, ptr noundef @.str.1)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end273:                                        ; preds = %cond.end268
  br label %do.cond274

do.cond274:                                       ; preds = %if.end273
  br label %do.end275

do.end275:                                        ; preds = %do.cond274
  br label %do.body276

do.body276:                                       ; preds = %do.end275
  %76 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %cmp277 = icmp ule i64 %76, 528
  br i1 %cmp277, label %if.end280, label %if.then279

if.then279:                                       ; preds = %do.body276
  call void @mbedtls_test_fail(ptr noundef @.str.22, i32 noundef 791, ptr noundef @.str.1)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end280:                                        ; preds = %do.body276
  br label %do.cond281

do.cond281:                                       ; preds = %if.end280
  br label %do.end282

do.end282:                                        ; preds = %do.cond281
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

cleanup283:                                       ; preds = %if.then279, %if.then272, %if.then241, %if.then233, %if.then229, %if.then223, %if.then213, %do.end282
  call void @llvm.lifetime.end.p0(i64 8, ptr %len207) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %end205) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p204) #8
  %cleanup.dest286 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest286, label %unreachable [
    i32 0, label %cleanup.cont287
    i32 4, label %exit
  ]

cleanup.cont287:                                  ; preds = %cleanup283
  br label %if.end383

if.else288:                                       ; preds = %if.else199
  %77 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv289 = zext i16 %77 to i32
  %and290 = and i32 %conv289, -256
  %cmp291 = icmp eq i32 %and290, 16640
  br i1 %cmp291, label %if.then293, label %if.else378

if.then293:                                       ; preds = %if.else288
  br label %do.body294

do.body294:                                       ; preds = %if.then293
  %78 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %79 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv295 = zext i16 %79 to i32
  %and296 = and i32 %conv295, -12289
  %cmp297 = icmp eq i32 %and296, 16385
  br i1 %cmp297, label %cond.true299, label %cond.false303

cond.true299:                                     ; preds = %do.body294
  %80 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div300 = udiv i64 %80, 8
  %add301 = add i64 %div300, 5
  %add302 = add i64 %add301, 11
  br label %cond.end317

cond.false303:                                    ; preds = %do.body294
  %81 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv304 = zext i16 %81 to i32
  %and305 = and i32 %conv304, -12289
  %and306 = and i32 %and305, -256
  %cmp307 = icmp eq i32 %and306, 16640
  br i1 %cmp307, label %cond.true309, label %cond.false314

cond.true309:                                     ; preds = %cond.false303
  %82 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add310 = add i64 %82, 7
  %div311 = udiv i64 %add310, 8
  %mul312 = mul i64 2, %div311
  %add313 = add i64 %mul312, 1
  br label %cond.end315

cond.false314:                                    ; preds = %cond.false303
  br label %cond.end315

cond.end315:                                      ; preds = %cond.false314, %cond.true309
  %cond316 = phi i64 [ %add313, %cond.true309 ], [ 0, %cond.false314 ]
  br label %cond.end317

cond.end317:                                      ; preds = %cond.end315, %cond.true299
  %cond318 = phi i64 [ %add302, %cond.true299 ], [ %cond316, %cond.end315 ]
  %cmp319 = icmp ule i64 %78, %cond318
  br i1 %cmp319, label %if.end322, label %if.then321

if.then321:                                       ; preds = %cond.end317
  call void @mbedtls_test_fail(ptr noundef @.str.21, i32 noundef 801, ptr noundef @.str.1)
  br label %exit

if.end322:                                        ; preds = %cond.end317
  br label %do.end324

do.end324:                                        ; preds = %if.end322
  br label %do.body325

do.body325:                                       ; preds = %do.end324
  %83 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %cmp326 = icmp ule i64 %83, 528
  br i1 %cmp326, label %if.end329, label %if.then328

if.then328:                                       ; preds = %do.body325
  call void @mbedtls_test_fail(ptr noundef @.str.22, i32 noundef 803, ptr noundef @.str.1)
  br label %exit

if.end329:                                        ; preds = %do.body325
  br label %do.end331

do.end331:                                        ; preds = %if.end329
  %84 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv332 = zext i16 %84 to i32
  %and333 = and i32 %conv332, -12289
  %and334 = and i32 %and333, -256
  %cmp335 = icmp eq i32 %and334, 16640
  br i1 %cmp335, label %cond.true337, label %cond.false340

cond.true337:                                     ; preds = %do.end331
  %85 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv338 = zext i16 %85 to i32
  %and339 = and i32 %conv338, 255
  br label %cond.end341

cond.false340:                                    ; preds = %do.end331
  br label %cond.end341

cond.end341:                                      ; preds = %cond.false340, %cond.true337
  %cond342 = phi i32 [ %and339, %cond.true337 ], [ 0, %cond.false340 ]
  %conv343 = trunc i32 %cond342 to i8
  %conv344 = zext i8 %conv343 to i32
  %cmp345 = icmp eq i32 %conv344, 65
  br i1 %cmp345, label %if.then347, label %if.else357

if.then347:                                       ; preds = %cond.end341
  br label %do.body348

do.body348:                                       ; preds = %if.then347
  %86 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add349 = add i64 %86, 7
  %div350 = udiv i64 %add349, 8
  %87 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %call351 = call i32 @mbedtls_test_equal(ptr noundef @.str.23, i32 noundef 809, ptr noundef @.str.1, i64 noundef %div350, i64 noundef %87)
  %tobool352 = icmp ne i32 %call351, 0
  br i1 %tobool352, label %if.end354, label %if.then353

if.then353:                                       ; preds = %do.body348
  br label %exit

if.end354:                                        ; preds = %do.body348
  br label %do.end356

do.end356:                                        ; preds = %if.end354
  br label %if.end377

if.else357:                                       ; preds = %cond.end341
  br label %do.body358

do.body358:                                       ; preds = %if.else357
  %88 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %add359 = add i64 %88, 7
  %div360 = udiv i64 %add359, 8
  %mul361 = mul i64 2, %div360
  %add362 = add i64 1, %mul361
  %89 = load i64, ptr %exported_length.addr, align 8, !tbaa !11
  %call363 = call i32 @mbedtls_test_equal(ptr noundef @.str.24, i32 noundef 819, ptr noundef @.str.1, i64 noundef %add362, i64 noundef %89)
  %tobool364 = icmp ne i32 %call363, 0
  br i1 %tobool364, label %if.end366, label %if.then365

if.then365:                                       ; preds = %do.body358
  br label %exit

if.end366:                                        ; preds = %do.body358
  br label %do.end368

do.end368:                                        ; preds = %if.end366
  br label %do.body369

do.body369:                                       ; preds = %do.end368
  %90 = load ptr, ptr %exported.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %90, i64 0
  %91 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %conv370 = zext i8 %91 to i64
  %call371 = call i32 @mbedtls_test_equal(ptr noundef @.str.25, i32 noundef 820, ptr noundef @.str.1, i64 noundef %conv370, i64 noundef 4)
  %tobool372 = icmp ne i32 %call371, 0
  br i1 %tobool372, label %if.end374, label %if.then373

if.then373:                                       ; preds = %do.body369
  br label %exit

if.end374:                                        ; preds = %do.body369
  br label %do.end376

do.end376:                                        ; preds = %if.end374
  br label %if.end377

if.end377:                                        ; preds = %do.end376, %do.end356
  br label %if.end382

if.else378:                                       ; preds = %if.else288
  %92 = load ptr, ptr %exported.addr, align 8, !tbaa !5
  br label %do.body379

do.body379:                                       ; preds = %if.else378
  call void @mbedtls_test_fail(ptr noundef @.str.26, i32 noundef 828, ptr noundef @.str.1)
  br label %exit

do.end381:                                        ; No predecessors!
  br label %if.end382

if.end382:                                        ; preds = %do.end381, %if.end377
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %cleanup.cont287
  br label %if.end384

if.end384:                                        ; preds = %if.end383, %do.end198
  br label %if.end385

if.end385:                                        ; preds = %if.end384, %cleanup.cont
  br label %if.end386

if.end386:                                        ; preds = %if.end385, %do.end89
  %93 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv387 = zext i16 %93 to i32
  %cmp388 = icmp eq i32 %conv387, 8961
  br i1 %cmp388, label %if.then390, label %if.end422

if.then390:                                       ; preds = %if.end386
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc416, %if.then390
  %94 = load i32, ptr %i, align 4, !tbaa !9
  %conv391 = zext i32 %94 to i64
  %95 = load i64, ptr %bits.addr, align 8, !tbaa !11
  %div392 = udiv i64 %95, 8
  %cmp393 = icmp ult i64 %conv391, %div392
  br i1 %cmp393, label %for.body, label %for.end418

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_count) #8
  store i32 0, ptr %bit_count, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  store i32 1, ptr %m, align 4, !tbaa !9
  br label %for.cond395

for.cond395:                                      ; preds = %for.inc, %for.body
  %96 = load i32, ptr %m, align 4, !tbaa !9
  %cmp396 = icmp ule i32 %96, 256
  br i1 %cmp396, label %for.body398, label %for.end

for.body398:                                      ; preds = %for.cond395
  %97 = load ptr, ptr %exported.addr, align 8, !tbaa !5
  %98 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = zext i32 %98 to i64
  %arrayidx399 = getelementptr inbounds i8, ptr %97, i64 %idxprom
  %99 = load i8, ptr %arrayidx399, align 1, !tbaa !20
  %conv400 = zext i8 %99 to i32
  %100 = load i32, ptr %m, align 4, !tbaa !9
  %and401 = and i32 %conv400, %100
  %tobool402 = icmp ne i32 %and401, 0
  br i1 %tobool402, label %if.then403, label %if.end404

if.then403:                                       ; preds = %for.body398
  %101 = load i32, ptr %bit_count, align 4, !tbaa !9
  %inc = add i32 %101, 1
  store i32 %inc, ptr %bit_count, align 4, !tbaa !9
  br label %if.end404

if.end404:                                        ; preds = %if.then403, %for.body398
  br label %for.inc

for.inc:                                          ; preds = %if.end404
  %102 = load i32, ptr %m, align 4, !tbaa !9
  %shl = shl i32 %102, 1
  store i32 %shl, ptr %m, align 4, !tbaa !9
  br label %for.cond395, !llvm.loop !21

for.end:                                          ; preds = %for.cond395
  br label %do.body405

do.body405:                                       ; preds = %for.end
  %103 = load i32, ptr %bit_count, align 4, !tbaa !9
  %rem = urem i32 %103, 2
  %cmp406 = icmp ne i32 %rem, 0
  br i1 %cmp406, label %if.end409, label %if.then408

if.then408:                                       ; preds = %do.body405
  call void @mbedtls_test_fail(ptr noundef @.str.27, i32 noundef 845, ptr noundef @.str.1)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup412

if.end409:                                        ; preds = %do.body405
  br label %do.cond410

do.cond410:                                       ; preds = %if.end409
  br label %do.end411

do.end411:                                        ; preds = %do.cond410
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup412

cleanup412:                                       ; preds = %if.then408, %do.end411
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_count) #8
  %cleanup.dest414 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest414, label %cleanup419 [
    i32 0, label %cleanup.cont415
  ]

cleanup.cont415:                                  ; preds = %cleanup412
  br label %for.inc416

for.inc416:                                       ; preds = %cleanup.cont415
  %104 = load i32, ptr %i, align 4, !tbaa !9
  %inc417 = add i32 %104, 1
  store i32 %inc417, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !23

for.end418:                                       ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup419

cleanup419:                                       ; preds = %for.end418, %cleanup412
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %cleanup.dest420 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest420, label %unreachable [
    i32 0, label %cleanup.cont421
    i32 4, label %exit
  ]

cleanup.cont421:                                  ; preds = %cleanup419
  br label %if.end422

if.end422:                                        ; preds = %cleanup.cont421, %if.end386
  store i32 1, ptr %retval, align 4
  br label %return

exit:                                             ; preds = %cleanup419, %do.body379, %if.then373, %if.then365, %if.then353, %if.then328, %if.then321, %cleanup283, %if.then195, %if.then188, %cleanup, %if.then87, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.end422
  %105 = load i32, ptr %retval, align 4
  ret i32 %105

unreachable:                                      ; preds = %cleanup419, %cleanup283, %cleanup
  unreachable
}

declare i32 @mbedtls_asn1_get_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @mbedtls_test_asn1_skip_integer(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_test_psa_exercise_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #8
  store i32 0, ptr %ok, align 4, !tbaa !9
  %0 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @check_key_attributes_sanity(i32 noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %ok, align 4, !tbaa !9
  br label %if.end51

if.else:                                          ; preds = %if.end
  %2 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and = and i32 %2, 2130706432
  %cmp2 = icmp eq i32 %and, 50331648
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %3 = load i32, ptr %key.addr, align 4, !tbaa !9
  %4 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %5 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call4 = call i32 @exercise_mac_key(i32 noundef %3, i32 noundef %4, i32 noundef %5)
  store i32 %call4, ptr %ok, align 4, !tbaa !9
  br label %if.end50

if.else5:                                         ; preds = %if.else
  %6 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and6 = and i32 %6, 2130706432
  %cmp7 = icmp eq i32 %and6, 67108864
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %7 = load i32, ptr %key.addr, align 4, !tbaa !9
  %8 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %9 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call9 = call i32 @exercise_cipher_key(i32 noundef %7, i32 noundef %8, i32 noundef %9)
  store i32 %call9, ptr %ok, align 4, !tbaa !9
  br label %if.end49

if.else10:                                        ; preds = %if.else5
  %10 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and11 = and i32 %10, 2130706432
  %cmp12 = icmp eq i32 %and11, 83886080
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %11 = load i32, ptr %key.addr, align 4, !tbaa !9
  %12 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %13 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call14 = call i32 @exercise_aead_key(i32 noundef %11, i32 noundef %12, i32 noundef %13)
  store i32 %call14, ptr %ok, align 4, !tbaa !9
  br label %if.end48

if.else15:                                        ; preds = %if.else10
  %14 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and16 = and i32 %14, 2130706432
  %cmp17 = icmp eq i32 %and16, 100663296
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %15 = load i32, ptr %key.addr, align 4, !tbaa !9
  %16 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %17 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call19 = call i32 @exercise_signature_key(i32 noundef %15, i32 noundef %16, i32 noundef %17)
  store i32 %call19, ptr %ok, align 4, !tbaa !9
  br label %if.end47

if.else20:                                        ; preds = %if.else15
  %18 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and21 = and i32 %18, 2130706432
  %cmp22 = icmp eq i32 %and21, 117440512
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else20
  %19 = load i32, ptr %key.addr, align 4, !tbaa !9
  %20 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %21 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call24 = call i32 @exercise_asymmetric_encryption_key(i32 noundef %19, i32 noundef %20, i32 noundef %21)
  store i32 %call24, ptr %ok, align 4, !tbaa !9
  br label %if.end46

if.else25:                                        ; preds = %if.else20
  %22 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and26 = and i32 %22, 2130706432
  %cmp27 = icmp eq i32 %and26, 134217728
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else25
  %23 = load i32, ptr %key.addr, align 4, !tbaa !9
  %24 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %25 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call29 = call i32 @exercise_key_derivation_key(i32 noundef %23, i32 noundef %24, i32 noundef %25)
  store i32 %call29, ptr %ok, align 4, !tbaa !9
  br label %if.end45

if.else30:                                        ; preds = %if.else25
  %26 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and31 = and i32 %26, 2130706432
  %cmp32 = icmp eq i32 %and31, 150994944
  br i1 %cmp32, label %land.lhs.true, label %if.else37

land.lhs.true:                                    ; preds = %if.else30
  %27 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and33 = and i32 %27, -33488897
  %or = or i32 %and33, 134217728
  %cmp34 = icmp eq i32 %or, 134217728
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %land.lhs.true
  %28 = load i32, ptr %key.addr, align 4, !tbaa !9
  %29 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %30 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call36 = call i32 @exercise_raw_key_agreement_key(i32 noundef %28, i32 noundef %29, i32 noundef %30)
  store i32 %call36, ptr %ok, align 4, !tbaa !9
  br label %if.end44

if.else37:                                        ; preds = %land.lhs.true, %if.else30
  %31 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and38 = and i32 %31, 2130706432
  %cmp39 = icmp eq i32 %and38, 150994944
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else37
  %32 = load i32, ptr %key.addr, align 4, !tbaa !9
  %33 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %34 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call41 = call i32 @exercise_key_agreement_key(i32 noundef %32, i32 noundef %33, i32 noundef %34)
  store i32 %call41, ptr %ok, align 4, !tbaa !9
  br label %if.end43

if.else42:                                        ; preds = %if.else37
  br label %do.body

do.body:                                          ; preds = %if.else42
  call void @mbedtls_test_fail(ptr noundef @.str.28, i32 noundef 976, ptr noundef @.str.1)
  br label %exit

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end43

if.end43:                                         ; preds = %do.end, %if.then40
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then35
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then28
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then23
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then18
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then13
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then8
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then3
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then1
  %35 = load i32, ptr %ok, align 4, !tbaa !9
  %tobool52 = icmp ne i32 %35, 0
  br i1 %tobool52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end51
  %36 = load i32, ptr %key.addr, align 4, !tbaa !9
  %37 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %call53 = call i32 @exercise_export_key(i32 noundef %36, i32 noundef %37)
  %tobool54 = icmp ne i32 %call53, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end51
  %38 = phi i1 [ false, %if.end51 ], [ %tobool54, %land.rhs ]
  %land.ext = zext i1 %38 to i32
  store i32 %land.ext, ptr %ok, align 4, !tbaa !9
  %39 = load i32, ptr %ok, align 4, !tbaa !9
  %tobool55 = icmp ne i32 %39, 0
  br i1 %tobool55, label %land.rhs56, label %land.end59

land.rhs56:                                       ; preds = %land.end
  %40 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call57 = call i32 @exercise_export_public_key(i32 noundef %40)
  %tobool58 = icmp ne i32 %call57, 0
  br label %land.end59

land.end59:                                       ; preds = %land.rhs56, %land.end
  %41 = phi i1 [ false, %land.end ], [ %tobool58, %land.rhs56 ]
  %land.ext60 = zext i1 %41 to i32
  store i32 %land.ext60, ptr %ok, align 4, !tbaa !9
  br label %exit

exit:                                             ; preds = %land.end59, %do.body
  %42 = load i32, ptr %ok, align 4, !tbaa !9
  store i32 %42, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #8
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @check_key_attributes_sanity(i32 noundef %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  %ok = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %lifetime = alloca i32, align 4
  %id = alloca i32, align 4
  %type = alloca i16, align 2
  %bits = alloca i64, align 8
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #8
  store i32 0, ptr %ok, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %lifetime) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %type) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @psa_get_key_attributes(i32 noundef %0, ptr noundef %attributes)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 52, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call2 = call i32 @psa_get_key_lifetime(ptr noundef %attributes)
  store i32 %call2, ptr %lifetime, align 4, !tbaa !9
  %call3 = call i32 @psa_get_key_id(ptr noundef %attributes)
  store i32 %call3, ptr %id, align 4, !tbaa !9
  %call4 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  store i16 %call4, ptr %type, align 2, !tbaa !13
  %call5 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  store i64 %call5, ptr %bits, align 8, !tbaa !11
  %1 = load i32, ptr %lifetime, align 4, !tbaa !9
  %and = and i32 %1, 255
  %conv6 = trunc i32 %and to i8
  %conv7 = zext i8 %conv6 to i32
  %cmp = icmp eq i32 %conv7, 0
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %2 = load i32, ptr %id, align 4, !tbaa !9
  %cmp11 = icmp ule i32 2147483616, %2
  br i1 %cmp11, label %land.lhs.true, label %if.then15

land.lhs.true:                                    ; preds = %do.body10
  %3 = load i32, ptr %id, align 4, !tbaa !9
  %cmp13 = icmp ule i32 %3, 2147483647
  br i1 %cmp13, label %if.end16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true, %do.body10
  call void @mbedtls_test_fail(ptr noundef @.str.29, i32 noundef 65, ptr noundef @.str.1)
  br label %exit

if.end16:                                         ; preds = %land.lhs.true
  br label %do.cond17

do.cond17:                                        ; preds = %if.end16
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  br label %if.end29

if.else:                                          ; preds = %do.end
  br label %do.body19

do.body19:                                        ; preds = %if.else
  %4 = load i32, ptr %id, align 4, !tbaa !9
  %cmp20 = icmp ule i32 1, %4
  br i1 %cmp20, label %land.lhs.true22, label %if.then25

land.lhs.true22:                                  ; preds = %do.body19
  %5 = load i32, ptr %id, align 4, !tbaa !9
  %cmp23 = icmp ule i32 %5, 1073741823
  br i1 %cmp23, label %if.end26, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22, %do.body19
  call void @mbedtls_test_fail(ptr noundef @.str.30, i32 noundef 71, ptr noundef @.str.1)
  br label %exit

if.end26:                                         ; preds = %land.lhs.true22
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.end18
  br label %do.body30

do.body30:                                        ; preds = %if.end29
  %6 = load i16, ptr %type, align 2, !tbaa !13
  %conv31 = zext i16 %6 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %if.end35, label %if.then34

if.then34:                                        ; preds = %do.body30
  call void @mbedtls_test_fail(ptr noundef @.str.31, i32 noundef 92, ptr noundef @.str.1)
  br label %exit

if.end35:                                         ; preds = %do.body30
  br label %do.cond36

do.cond36:                                        ; preds = %if.end35
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  %7 = load i64, ptr %bits, align 8, !tbaa !11
  %cmp39 = icmp ne i64 %7, 0
  br i1 %cmp39, label %if.end42, label %if.then41

if.then41:                                        ; preds = %do.body38
  call void @mbedtls_test_fail(ptr noundef @.str.32, i32 noundef 93, ptr noundef @.str.1)
  br label %exit

if.end42:                                         ; preds = %do.body38
  br label %do.cond43

do.cond43:                                        ; preds = %if.end42
  br label %do.end44

do.end44:                                         ; preds = %do.cond43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %8 = load i64, ptr %bits, align 8, !tbaa !11
  %cmp46 = icmp ule i64 %8, 65528
  br i1 %cmp46, label %if.end49, label %if.then48

if.then48:                                        ; preds = %do.body45
  call void @mbedtls_test_fail(ptr noundef @.str.33, i32 noundef 94, ptr noundef @.str.1)
  br label %exit

if.end49:                                         ; preds = %do.body45
  br label %do.cond50

do.cond50:                                        ; preds = %if.end49
  br label %do.end51

do.end51:                                         ; preds = %do.cond50
  %9 = load i16, ptr %type, align 2, !tbaa !13
  %conv52 = zext i16 %9 to i32
  %and53 = and i32 %conv52, 28672
  %cmp54 = icmp eq i32 %and53, 4096
  br i1 %cmp54, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end51
  %10 = load i16, ptr %type, align 2, !tbaa !13
  %conv56 = zext i16 %10 to i32
  %and57 = and i32 %conv56, 28672
  %cmp58 = icmp eq i32 %and57, 8192
  br i1 %cmp58, label %if.then60, label %if.end68

if.then60:                                        ; preds = %lor.lhs.false, %do.end51
  br label %do.body61

do.body61:                                        ; preds = %if.then60
  %11 = load i64, ptr %bits, align 8, !tbaa !11
  %rem = urem i64 %11, 8
  %cmp62 = icmp eq i64 %rem, 0
  br i1 %cmp62, label %if.end65, label %if.then64

if.then64:                                        ; preds = %do.body61
  call void @mbedtls_test_fail(ptr noundef @.str.34, i32 noundef 96, ptr noundef @.str.1)
  br label %exit

if.end65:                                         ; preds = %do.body61
  br label %do.cond66

do.cond66:                                        ; preds = %if.end65
  br label %do.end67

do.end67:                                         ; preds = %do.cond66
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %lor.lhs.false
  %12 = load i16, ptr %type, align 2, !tbaa !13
  %conv69 = zext i16 %12 to i32
  %and70 = and i32 %conv69, -12289
  %and71 = and i32 %and70, -256
  %cmp72 = icmp eq i32 %and71, 16640
  br i1 %cmp72, label %if.then74, label %if.else82

if.then74:                                        ; preds = %if.end68
  br label %do.body75

do.body75:                                        ; preds = %if.then74
  %13 = load i64, ptr %bits, align 8, !tbaa !11
  %cmp76 = icmp ule i64 %13, 521
  br i1 %cmp76, label %if.end79, label %if.then78

if.then78:                                        ; preds = %do.body75
  call void @mbedtls_test_fail(ptr noundef @.str.35, i32 noundef 100, ptr noundef @.str.1)
  br label %exit

if.end79:                                         ; preds = %do.body75
  br label %do.cond80

do.cond80:                                        ; preds = %if.end79
  br label %do.end81

do.end81:                                         ; preds = %do.cond80
  br label %if.end96

if.else82:                                        ; preds = %if.end68
  %14 = load i16, ptr %type, align 2, !tbaa !13
  %conv83 = zext i16 %14 to i32
  %and84 = and i32 %conv83, -12289
  %cmp85 = icmp eq i32 %and84, 16385
  br i1 %cmp85, label %if.then87, label %if.end95

if.then87:                                        ; preds = %if.else82
  br label %do.body88

do.body88:                                        ; preds = %if.then87
  %15 = load i64, ptr %bits, align 8, !tbaa !11
  %cmp89 = icmp ule i64 %15, 4096
  br i1 %cmp89, label %if.end92, label %if.then91

if.then91:                                        ; preds = %do.body88
  call void @mbedtls_test_fail(ptr noundef @.str.36, i32 noundef 102, ptr noundef @.str.1)
  br label %exit

if.end92:                                         ; preds = %do.body88
  br label %do.cond93

do.cond93:                                        ; preds = %if.end92
  br label %do.end94

do.end94:                                         ; preds = %do.cond93
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %if.else82
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %do.end81
  br label %do.body97

do.body97:                                        ; preds = %if.end96
  %16 = load i16, ptr %type, align 2, !tbaa !13
  %conv98 = zext i16 %16 to i32
  %and99 = and i32 %conv98, 28672
  %cmp100 = icmp eq i32 %and99, 8192
  br i1 %cmp100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body97
  %17 = load i16, ptr %type, align 2, !tbaa !13
  %conv102 = zext i16 %17 to i32
  %shr = ashr i32 %conv102, 8
  %and103 = and i32 %shr, 7
  %shl = shl i32 1, %and103
  br label %cond.end

cond.false:                                       ; preds = %do.body97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp104 = icmp ule i32 %cond, 16
  br i1 %cmp104, label %if.end107, label %if.then106

if.then106:                                       ; preds = %cond.end
  call void @mbedtls_test_fail(ptr noundef @.str.37, i32 noundef 103, ptr noundef @.str.1)
  br label %exit

if.end107:                                        ; preds = %cond.end
  br label %do.cond108

do.cond108:                                       ; preds = %if.end107
  br label %do.end109

do.end109:                                        ; preds = %do.cond108
  store i32 1, ptr %ok, align 4, !tbaa !9
  br label %exit

exit:                                             ; preds = %do.end109, %if.then106, %if.then91, %if.then78, %if.then64, %if.then48, %if.then41, %if.then34, %if.then25, %if.then15, %if.then
  call void @psa_reset_key_attributes(ptr noundef %attributes)
  %18 = load i32, ptr %ok, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %lifetime) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #8
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_mac_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %operation = alloca %struct.psa_mac_operation_s, align 8
  %input = alloca [4 x i8], align 1
  %mac = alloca [64 x i8], align 16
  %mac_length = alloca i64, align 8
  %verify_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 384, ptr %operation) #8
  call void @llvm.memset.p0.i64(ptr align 8 %operation, i8 0, i64 384, i1 false)
  %0 = getelementptr inbounds { i32, i8, i8, { i32, [372 x i8] } }, ptr %operation, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr %input) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %input, ptr align 1 @__const.exercise_mac_key.input, i64 4, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr %mac) #8
  call void @llvm.memset.p0.i64(ptr align 16 %mac, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %mac_length) #8
  store i64 64, ptr %mac_length, align 8, !tbaa !11
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and = and i32 %1, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and1 = and i32 %2, -4161537
  %3 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and2 = and i32 %3, 4128768
  %shr = lshr i32 %and2, 16
  %shl = shl i32 %shr, 16
  %and3 = and i32 %shl, 4128768
  %or = or i32 %and1, %and3
  store i32 %or, ptr %alg.addr, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and4 = and i32 %4, 4096
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end30

if.then6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then6
  %5 = load i32, ptr %key.addr, align 4, !tbaa !9
  %6 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call = call i32 @psa_mac_sign_setup(ptr noundef %operation, i32 noundef %5, i32 noundef %6)
  %conv = sext i32 %call to i64
  %call7 = call i32 @mbedtls_test_equal(ptr noundef @.str.38, i32 noundef 134, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %do.body
  br label %exit

if.end10:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body11

do.body11:                                        ; preds = %do.end
  %arraydecay = getelementptr inbounds [4 x i8], ptr %input, i64 0, i64 0
  %call12 = call i32 @psa_mac_update(ptr noundef %operation, ptr noundef %arraydecay, i64 noundef 4)
  %conv13 = sext i32 %call12 to i64
  %call14 = call i32 @mbedtls_test_equal(ptr noundef @.str.39, i32 noundef 136, ptr noundef @.str.1, i64 noundef %conv13, i64 noundef 0)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %do.body11
  br label %exit

if.end17:                                         ; preds = %do.body11
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %arraydecay21 = getelementptr inbounds [64 x i8], ptr %mac, i64 0, i64 0
  %call22 = call i32 @psa_mac_sign_finish(ptr noundef %operation, ptr noundef %arraydecay21, i64 noundef 64, ptr noundef %mac_length)
  %conv23 = sext i32 %call22 to i64
  %call24 = call i32 @mbedtls_test_equal(ptr noundef @.str.40, i32 noundef 139, ptr noundef @.str.1, i64 noundef %conv23, i64 noundef 0)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %do.body20
  br label %exit

if.end27:                                         ; preds = %do.body20
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %if.end
  %7 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and31 = and i32 %7, 8192
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end66

if.then33:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr %verify_status) #8
  %8 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and34 = and i32 %8, 4096
  %tobool35 = icmp ne i32 %and34, 0
  %9 = zext i1 %tobool35 to i64
  %cond = select i1 %tobool35, i32 0, i32 -149
  store i32 %cond, ptr %verify_status, align 4, !tbaa !9
  br label %do.body36

do.body36:                                        ; preds = %if.then33
  %10 = load i32, ptr %key.addr, align 4, !tbaa !9
  %11 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call37 = call i32 @psa_mac_verify_setup(ptr noundef %operation, i32 noundef %10, i32 noundef %11)
  %conv38 = sext i32 %call37 to i64
  %call39 = call i32 @mbedtls_test_equal(ptr noundef @.str.41, i32 noundef 148, ptr noundef @.str.1, i64 noundef %conv38, i64 noundef 0)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %do.body36
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %do.body36
  br label %do.cond43

do.cond43:                                        ; preds = %if.end42
  br label %do.end44

do.end44:                                         ; preds = %do.cond43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %arraydecay46 = getelementptr inbounds [4 x i8], ptr %input, i64 0, i64 0
  %call47 = call i32 @psa_mac_update(ptr noundef %operation, ptr noundef %arraydecay46, i64 noundef 4)
  %conv48 = sext i32 %call47 to i64
  %call49 = call i32 @mbedtls_test_equal(ptr noundef @.str.39, i32 noundef 150, ptr noundef @.str.1, i64 noundef %conv48, i64 noundef 0)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %do.body45
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %do.body45
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  br label %do.body55

do.body55:                                        ; preds = %do.end54
  %arraydecay56 = getelementptr inbounds [64 x i8], ptr %mac, i64 0, i64 0
  %12 = load i64, ptr %mac_length, align 8, !tbaa !11
  %call57 = call i32 @psa_mac_verify_finish(ptr noundef %operation, ptr noundef %arraydecay56, i64 noundef %12)
  %conv58 = sext i32 %call57 to i64
  %13 = load i32, ptr %verify_status, align 4, !tbaa !9
  %conv59 = sext i32 %13 to i64
  %call60 = call i32 @mbedtls_test_equal(ptr noundef @.str.42, i32 noundef 152, ptr noundef @.str.1, i64 noundef %conv58, i64 noundef %conv59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %do.body55
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %do.body55
  br label %do.cond64

do.cond64:                                        ; preds = %if.end63
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.then51, %if.then41, %do.end65
  call void @llvm.lifetime.end.p0(i64 4, ptr %verify_status) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup68 [
    i32 0, label %cleanup.cont
    i32 4, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end66

if.end66:                                         ; preds = %cleanup.cont, %if.end30
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68

exit:                                             ; preds = %cleanup, %if.then26, %if.then16, %if.then9
  %call67 = call i32 @psa_mac_abort(ptr noundef %operation)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %exit, %if.end66, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %mac_length) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %mac) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %input) #8
  call void @llvm.lifetime.end.p0(i64 384, ptr %operation) #8
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_cipher_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %operation = alloca %struct.psa_cipher_operation_s, align 8
  %iv = alloca [16 x i8], align 16
  %iv_length = alloca i64, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key_type = alloca i16, align 2
  %plaintext = alloca [16 x i8], align 16
  %ciphertext = alloca [32 x i8], align 16
  %ciphertext_length = alloca i64, align 8
  %decrypted = alloca [32 x i8], align 16
  %part_length = alloca i64, align 8
  %status = alloca i32, align 4
  %maybe_invalid_padding = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 112, ptr %operation) #8
  call void @llvm.memset.p0.i64(ptr align 8 %operation, i8 0, i64 112, i1 false)
  %0 = getelementptr inbounds { i32, i8, i8, { i32, [100 x i8] } }, ptr %operation, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr %iv) #8
  call void @llvm.memset.p0.i64(ptr align 16 %iv, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv_length) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr %key_type) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %plaintext) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %plaintext, ptr align 16 @__const.exercise_cipher_key.plaintext, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr %ciphertext) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ciphertext, ptr align 16 @__const.exercise_cipher_key.ciphertext, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ciphertext_length) #8
  store i64 32, ptr %ciphertext_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %decrypted) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %part_length) #8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @psa_get_key_attributes(i32 noundef %1, ptr noundef %attributes)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 177, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call2 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  store i16 %call2, ptr %key_type, align 2, !tbaa !13
  %2 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv3 = zext i16 %2 to i32
  %and = and i32 %conv3, 28672
  %cmp = icmp eq i32 %and, 8192
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %3 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv5 = zext i16 %3 to i32
  %shr = ashr i32 %conv5, 8
  %and6 = and i32 %shr, 7
  %shl = shl i32 1, %and6
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp7 = icmp ugt i32 %cond, 1
  br i1 %cmp7, label %land.lhs.true, label %cond.false38

land.lhs.true:                                    ; preds = %cond.end
  %4 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp9 = icmp eq i32 %4, 79695872
  br i1 %cmp9, label %cond.true25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp11 = icmp eq i32 %5, 79696128
  br i1 %cmp11, label %cond.true25, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %6 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp14 = icmp eq i32 %6, 79696384
  br i1 %cmp14, label %cond.true25, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %7 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp17 = icmp eq i32 %7, 71368448
  br i1 %cmp17, label %cond.true25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %8 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %8, 71319552
  br i1 %cmp20, label %cond.true25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %9 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp23 = icmp eq i32 %9, 71319808
  br i1 %cmp23, label %cond.true25, label %cond.false38

cond.true25:                                      ; preds = %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false, %land.lhs.true
  %10 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv26 = zext i16 %10 to i32
  %and27 = and i32 %conv26, 28672
  %cmp28 = icmp eq i32 %and27, 8192
  br i1 %cmp28, label %cond.true30, label %cond.false35

cond.true30:                                      ; preds = %cond.true25
  %11 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv31 = zext i16 %11 to i32
  %shr32 = ashr i32 %conv31, 8
  %and33 = and i32 %shr32, 7
  %shl34 = shl i32 1, %and33
  br label %cond.end36

cond.false35:                                     ; preds = %cond.true25
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.true30
  %cond37 = phi i32 [ %shl34, %cond.true30 ], [ 0, %cond.false35 ]
  br label %cond.end52

cond.false38:                                     ; preds = %lor.lhs.false22, %cond.end
  %12 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv39 = zext i16 %12 to i32
  %cmp40 = icmp eq i32 %conv39, 8196
  br i1 %cmp40, label %land.lhs.true42, label %cond.false46

land.lhs.true42:                                  ; preds = %cond.false38
  %13 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp43 = icmp eq i32 %13, 75497728
  br i1 %cmp43, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %land.lhs.true42
  br label %cond.end50

cond.false46:                                     ; preds = %land.lhs.true42, %cond.false38
  %14 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp47 = icmp eq i32 %14, 79696640
  %15 = zext i1 %cmp47 to i64
  %cond49 = select i1 %cmp47, i32 13, i32 0
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false46, %cond.true45
  %cond51 = phi i32 [ 12, %cond.true45 ], [ %cond49, %cond.false46 ]
  br label %cond.end52

cond.end52:                                       ; preds = %cond.end50, %cond.end36
  %cond53 = phi i32 [ %cond37, %cond.end36 ], [ %cond51, %cond.end50 ]
  %conv54 = zext i32 %cond53 to i64
  store i64 %conv54, ptr %iv_length, align 8, !tbaa !11
  %16 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and55 = and i32 %16, 256
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.end101

if.then57:                                        ; preds = %cond.end52
  br label %do.body58

do.body58:                                        ; preds = %if.then57
  %17 = load i32, ptr %key.addr, align 4, !tbaa !9
  %18 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call59 = call i32 @psa_cipher_encrypt_setup(ptr noundef %operation, i32 noundef %17, i32 noundef %18)
  %conv60 = sext i32 %call59 to i64
  %call61 = call i32 @mbedtls_test_equal(ptr noundef @.str.43, i32 noundef 183, ptr noundef @.str.1, i64 noundef %conv60, i64 noundef 0)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %do.body58
  br label %exit

if.end64:                                         ; preds = %do.body58
  br label %do.cond65

do.cond65:                                        ; preds = %if.end64
  br label %do.end66

do.end66:                                         ; preds = %do.cond65
  %19 = load i64, ptr %iv_length, align 8, !tbaa !11
  %cmp67 = icmp ne i64 %19, 0
  br i1 %cmp67, label %if.then69, label %if.end79

if.then69:                                        ; preds = %do.end66
  br label %do.body70

do.body70:                                        ; preds = %if.then69
  %arraydecay = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  %call71 = call i32 @psa_cipher_generate_iv(ptr noundef %operation, ptr noundef %arraydecay, i64 noundef 16, ptr noundef %iv_length)
  %conv72 = sext i32 %call71 to i64
  %call73 = call i32 @mbedtls_test_equal(ptr noundef @.str.44, i32 noundef 188, ptr noundef @.str.1, i64 noundef %conv72, i64 noundef 0)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end76, label %if.then75

if.then75:                                        ; preds = %do.body70
  br label %exit

if.end76:                                         ; preds = %do.body70
  br label %do.cond77

do.cond77:                                        ; preds = %if.end76
  br label %do.end78

do.end78:                                         ; preds = %do.cond77
  br label %if.end79

if.end79:                                         ; preds = %do.end78, %do.end66
  br label %do.body80

do.body80:                                        ; preds = %if.end79
  %arraydecay81 = getelementptr inbounds [16 x i8], ptr %plaintext, i64 0, i64 0
  %arraydecay82 = getelementptr inbounds [32 x i8], ptr %ciphertext, i64 0, i64 0
  %call83 = call i32 @psa_cipher_update(ptr noundef %operation, ptr noundef %arraydecay81, i64 noundef 16, ptr noundef %arraydecay82, i64 noundef 32, ptr noundef %ciphertext_length)
  %conv84 = sext i32 %call83 to i64
  %call85 = call i32 @mbedtls_test_equal(ptr noundef @.str.45, i32 noundef 193, ptr noundef @.str.1, i64 noundef %conv84, i64 noundef 0)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %do.body80
  br label %exit

if.end88:                                         ; preds = %do.body80
  br label %do.cond89

do.cond89:                                        ; preds = %if.end88
  br label %do.end90

do.end90:                                         ; preds = %do.cond89
  br label %do.body91

do.body91:                                        ; preds = %do.end90
  %arraydecay92 = getelementptr inbounds [32 x i8], ptr %ciphertext, i64 0, i64 0
  %20 = load i64, ptr %ciphertext_length, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay92, i64 %20
  %21 = load i64, ptr %ciphertext_length, align 8, !tbaa !11
  %sub = sub i64 32, %21
  %call93 = call i32 @psa_cipher_finish(ptr noundef %operation, ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %part_length)
  %conv94 = sext i32 %call93 to i64
  %call95 = call i32 @mbedtls_test_equal(ptr noundef @.str.46, i32 noundef 197, ptr noundef @.str.1, i64 noundef %conv94, i64 noundef 0)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end98, label %if.then97

if.then97:                                        ; preds = %do.body91
  br label %exit

if.end98:                                         ; preds = %do.body91
  br label %do.cond99

do.cond99:                                        ; preds = %if.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  %22 = load i64, ptr %part_length, align 8, !tbaa !11
  %23 = load i64, ptr %ciphertext_length, align 8, !tbaa !11
  %add = add i64 %23, %22
  store i64 %add, ptr %ciphertext_length, align 8, !tbaa !11
  br label %if.end101

if.end101:                                        ; preds = %do.end100, %cond.end52
  %24 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and102 = and i32 %24, 512
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then104, label %if.end172

if.then104:                                       ; preds = %if.end101
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %maybe_invalid_padding) #8
  store i32 0, ptr %maybe_invalid_padding, align 4, !tbaa !9
  %25 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and105 = and i32 %25, 256
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.end111, label %if.then107

if.then107:                                       ; preds = %if.then104
  %26 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and108 = and i32 %26, 2139095040
  %cmp109 = icmp eq i32 %and108, 75497472
  %lnot = xor i1 %cmp109, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %maybe_invalid_padding, align 4, !tbaa !9
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.then104
  br label %do.body112

do.body112:                                       ; preds = %if.end111
  %27 = load i32, ptr %key.addr, align 4, !tbaa !9
  %28 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call113 = call i32 @psa_cipher_decrypt_setup(ptr noundef %operation, i32 noundef %27, i32 noundef %28)
  %conv114 = sext i32 %call113 to i64
  %call115 = call i32 @mbedtls_test_equal(ptr noundef @.str.47, i32 noundef 209, ptr noundef @.str.1, i64 noundef %conv114, i64 noundef 0)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %do.body112
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end118:                                        ; preds = %do.body112
  br label %do.cond119

do.cond119:                                       ; preds = %if.end118
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  %29 = load i64, ptr %iv_length, align 8, !tbaa !11
  %cmp121 = icmp ne i64 %29, 0
  br i1 %cmp121, label %if.then123, label %if.end134

if.then123:                                       ; preds = %do.end120
  br label %do.body124

do.body124:                                       ; preds = %if.then123
  %arraydecay125 = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  %30 = load i64, ptr %iv_length, align 8, !tbaa !11
  %call126 = call i32 @psa_cipher_set_iv(ptr noundef %operation, ptr noundef %arraydecay125, i64 noundef %30)
  %conv127 = sext i32 %call126 to i64
  %call128 = call i32 @mbedtls_test_equal(ptr noundef @.str.48, i32 noundef 213, ptr noundef @.str.1, i64 noundef %conv127, i64 noundef 0)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end131, label %if.then130

if.then130:                                       ; preds = %do.body124
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end131:                                        ; preds = %do.body124
  br label %do.cond132

do.cond132:                                       ; preds = %if.end131
  br label %do.end133

do.end133:                                        ; preds = %do.cond132
  br label %if.end134

if.end134:                                        ; preds = %do.end133, %do.end120
  br label %do.body135

do.body135:                                       ; preds = %if.end134
  %arraydecay136 = getelementptr inbounds [32 x i8], ptr %ciphertext, i64 0, i64 0
  %31 = load i64, ptr %ciphertext_length, align 8, !tbaa !11
  %arraydecay137 = getelementptr inbounds [32 x i8], ptr %decrypted, i64 0, i64 0
  %call138 = call i32 @psa_cipher_update(ptr noundef %operation, ptr noundef %arraydecay136, i64 noundef %31, ptr noundef %arraydecay137, i64 noundef 32, ptr noundef %part_length)
  %conv139 = sext i32 %call138 to i64
  %call140 = call i32 @mbedtls_test_equal(ptr noundef @.str.49, i32 noundef 218, ptr noundef @.str.1, i64 noundef %conv139, i64 noundef 0)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.end143, label %if.then142

if.then142:                                       ; preds = %do.body135
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end143:                                        ; preds = %do.body135
  br label %do.cond144

do.cond144:                                       ; preds = %if.end143
  br label %do.end145

do.end145:                                        ; preds = %do.cond144
  %arraydecay146 = getelementptr inbounds [32 x i8], ptr %decrypted, i64 0, i64 0
  %32 = load i64, ptr %part_length, align 8, !tbaa !11
  %add.ptr147 = getelementptr inbounds i8, ptr %arraydecay146, i64 %32
  %33 = load i64, ptr %part_length, align 8, !tbaa !11
  %sub148 = sub i64 32, %33
  %call149 = call i32 @psa_cipher_finish(ptr noundef %operation, ptr noundef %add.ptr147, i64 noundef %sub148, ptr noundef %part_length)
  store i32 %call149, ptr %status, align 4, !tbaa !9
  %34 = load i32, ptr %maybe_invalid_padding, align 4, !tbaa !9
  %tobool150 = icmp ne i32 %34, 0
  br i1 %tobool150, label %if.then151, label %if.else

if.then151:                                       ; preds = %do.end145
  br label %do.body152

do.body152:                                       ; preds = %if.then151
  %35 = load i32, ptr %status, align 4, !tbaa !9
  %cmp153 = icmp eq i32 %35, 0
  br i1 %cmp153, label %if.end159, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %do.body152
  %36 = load i32, ptr %status, align 4, !tbaa !9
  %cmp156 = icmp eq i32 %36, -150
  br i1 %cmp156, label %if.end159, label %if.then158

if.then158:                                       ; preds = %lor.lhs.false155
  call void @mbedtls_test_fail(ptr noundef @.str.50, i32 noundef 228, ptr noundef @.str.1)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end159:                                        ; preds = %lor.lhs.false155, %do.body152
  br label %do.cond160

do.cond160:                                       ; preds = %if.end159
  br label %do.end161

do.end161:                                        ; preds = %do.cond160
  br label %if.end170

if.else:                                          ; preds = %do.end145
  br label %do.body162

do.body162:                                       ; preds = %if.else
  %37 = load i32, ptr %status, align 4, !tbaa !9
  %conv163 = sext i32 %37 to i64
  %call164 = call i32 @mbedtls_test_equal(ptr noundef @.str.51, i32 noundef 230, ptr noundef @.str.1, i64 noundef %conv163, i64 noundef 0)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.end167, label %if.then166

if.then166:                                       ; preds = %do.body162
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end167:                                        ; preds = %do.body162
  br label %do.cond168

do.cond168:                                       ; preds = %if.end167
  br label %do.end169

do.end169:                                        ; preds = %do.cond168
  br label %if.end170

if.end170:                                        ; preds = %do.end169, %do.end161
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then166, %if.then158, %if.then142, %if.then130, %if.then117, %if.end170
  call void @llvm.lifetime.end.p0(i64 4, ptr %maybe_invalid_padding) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup174 [
    i32 0, label %cleanup.cont
    i32 4, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end172

if.end172:                                        ; preds = %cleanup.cont, %if.end101
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup174

exit:                                             ; preds = %cleanup, %if.then97, %if.then87, %if.then75, %if.then63, %if.then
  %call173 = call i32 @psa_cipher_abort(ptr noundef %operation)
  call void @psa_reset_key_attributes(ptr noundef %attributes)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup174

cleanup174:                                       ; preds = %exit, %if.end172, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %part_length) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %decrypted) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ciphertext_length) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ciphertext) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %plaintext) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %key_type) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv_length) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %iv) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr %operation) #8
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_aead_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %nonce = alloca [13 x i8], align 1
  %nonce_length = alloca i64, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key_type = alloca i16, align 2
  %plaintext = alloca [16 x i8], align 16
  %ciphertext = alloca [48 x i8], align 16
  %ciphertext_length = alloca i64, align 8
  %plaintext_length = alloca i64, align 8
  %verify_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 13, ptr %nonce) #8
  call void @llvm.memset.p0.i64(ptr align 1 %nonce, i8 0, i64 13, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonce_length) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr %key_type) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %plaintext) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %plaintext, ptr align 16 @__const.exercise_aead_key.plaintext, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %ciphertext) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ciphertext, ptr align 16 @__const.exercise_aead_key.ciphertext, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ciphertext_length) #8
  store i64 48, ptr %ciphertext_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %plaintext_length) #8
  store i64 48, ptr %plaintext_length, align 8, !tbaa !11
  %0 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and = and i32 %0, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and1 = and i32 %1, -4161537
  %2 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and2 = and i32 %2, 4128768
  %shr = lshr i32 %and2, 16
  %shl = shl i32 %shr, 16
  %and3 = and i32 %shl, 4128768
  %or = or i32 %and1, %and3
  store i32 %or, ptr %alg.addr, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @psa_get_key_attributes(i32 noundef %3, ptr noundef %attributes)
  %conv = sext i32 %call to i64
  %call4 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 260, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.body
  br label %exit

if.end7:                                          ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end7
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call8 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  store i16 %call8, ptr %key_type, align 2, !tbaa !13
  %4 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv9 = zext i16 %4 to i32
  %and10 = and i32 %conv9, 28672
  %cmp = icmp eq i32 %and10, 8192
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %5 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv12 = zext i16 %5 to i32
  %shr13 = ashr i32 %conv12, 8
  %and14 = and i32 %shr13, 7
  %shl15 = shl i32 1, %and14
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl15, %cond.true ], [ 0, %cond.false ]
  %cmp16 = icmp eq i32 %cond, 16
  br i1 %cmp16, label %cond.true18, label %cond.false29

cond.true18:                                      ; preds = %cond.end
  %6 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %xor = xor i32 %6, 89129216
  %and19 = and i32 %xor, -4161537
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.false22, label %cond.true21

cond.true21:                                      ; preds = %cond.true18
  br label %cond.end27

cond.false22:                                     ; preds = %cond.true18
  %7 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %xor23 = xor i32 %7, 89129472
  %and24 = and i32 %xor23, -4161537
  %tobool25 = icmp ne i32 %and24, 0
  %lnot = xor i1 %tobool25, true
  %8 = zext i1 %lnot to i64
  %cond26 = select i1 %lnot, i32 12, i32 0
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false22, %cond.true21
  %cond28 = phi i32 [ 13, %cond.true21 ], [ %cond26, %cond.false22 ]
  br label %cond.end38

cond.false29:                                     ; preds = %cond.end
  %9 = load i16, ptr %key_type, align 2, !tbaa !13
  %conv30 = zext i16 %9 to i32
  %cmp31 = icmp eq i32 %conv30, 8196
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false29
  %10 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %xor33 = xor i32 %10, 84935936
  %and34 = and i32 %xor33, -4161537
  %tobool35 = icmp ne i32 %and34, 0
  %lnot36 = xor i1 %tobool35, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false29
  %11 = phi i1 [ false, %cond.false29 ], [ %lnot36, %land.rhs ]
  %12 = zext i1 %11 to i64
  %cond37 = select i1 %11, i32 12, i32 0
  br label %cond.end38

cond.end38:                                       ; preds = %land.end, %cond.end27
  %cond39 = phi i32 [ %cond28, %cond.end27 ], [ %cond37, %land.end ]
  %conv40 = sext i32 %cond39 to i64
  store i64 %conv40, ptr %nonce_length, align 8, !tbaa !11
  %13 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and41 = and i32 %13, 256
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end55

if.then43:                                        ; preds = %cond.end38
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  %14 = load i32, ptr %key.addr, align 4, !tbaa !9
  %15 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [13 x i8], ptr %nonce, i64 0, i64 0
  %16 = load i64, ptr %nonce_length, align 8, !tbaa !11
  %arraydecay45 = getelementptr inbounds [16 x i8], ptr %plaintext, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [48 x i8], ptr %ciphertext, i64 0, i64 0
  %call47 = call i32 @psa_aead_encrypt(i32 noundef %14, i32 noundef %15, ptr noundef %arraydecay, i64 noundef %16, ptr noundef null, i64 noundef 0, ptr noundef %arraydecay45, i64 noundef 16, ptr noundef %arraydecay46, i64 noundef 48, ptr noundef %ciphertext_length)
  %conv48 = sext i32 %call47 to i64
  %call49 = call i32 @mbedtls_test_equal(ptr noundef @.str.52, i32 noundef 271, ptr noundef @.str.1, i64 noundef %conv48, i64 noundef 0)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %do.body44
  br label %exit

if.end52:                                         ; preds = %do.body44
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %cond.end38
  %17 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and56 = and i32 %17, 512
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end75

if.then58:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 4, ptr %verify_status) #8
  %18 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and59 = and i32 %18, 256
  %tobool60 = icmp ne i32 %and59, 0
  %19 = zext i1 %tobool60 to i64
  %cond61 = select i1 %tobool60, i32 0, i32 -149
  store i32 %cond61, ptr %verify_status, align 4, !tbaa !9
  br label %do.body62

do.body62:                                        ; preds = %if.then58
  %20 = load i32, ptr %key.addr, align 4, !tbaa !9
  %21 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay63 = getelementptr inbounds [13 x i8], ptr %nonce, i64 0, i64 0
  %22 = load i64, ptr %nonce_length, align 8, !tbaa !11
  %arraydecay64 = getelementptr inbounds [48 x i8], ptr %ciphertext, i64 0, i64 0
  %23 = load i64, ptr %ciphertext_length, align 8, !tbaa !11
  %arraydecay65 = getelementptr inbounds [16 x i8], ptr %plaintext, i64 0, i64 0
  %call66 = call i32 @psa_aead_decrypt(i32 noundef %20, i32 noundef %21, ptr noundef %arraydecay63, i64 noundef %22, ptr noundef null, i64 noundef 0, ptr noundef %arraydecay64, i64 noundef %23, ptr noundef %arraydecay65, i64 noundef 16, ptr noundef %plaintext_length)
  %conv67 = sext i32 %call66 to i64
  %24 = load i32, ptr %verify_status, align 4, !tbaa !9
  %conv68 = sext i32 %24 to i64
  %call69 = call i32 @mbedtls_test_equal(ptr noundef @.str.53, i32 noundef 286, ptr noundef @.str.1, i64 noundef %conv67, i64 noundef %conv68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %do.body62
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %do.body62
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.end74
  call void @llvm.lifetime.end.p0(i64 4, ptr %verify_status) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup76 [
    i32 0, label %cleanup.cont
    i32 4, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end75

if.end75:                                         ; preds = %cleanup.cont, %if.end55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76

exit:                                             ; preds = %cleanup, %if.then51, %if.then6
  call void @psa_reset_key_attributes(ptr noundef %attributes)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76

cleanup76:                                        ; preds = %exit, %if.end75, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %plaintext_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ciphertext_length) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %ciphertext) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %plaintext) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %key_type) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonce_length) #8
  call void @llvm.lifetime.end.p0(i64 13, ptr %nonce) #8
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_signature_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %payload = alloca [64 x i8], align 16
  %payload_length = alloca i64, align 8
  %signature = alloca [512 x i8], align 16
  %signature_length = alloca i64, align 8
  %hash_alg = alloca i32, align 4
  %verify_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %message = alloca [256 x i8], align 16
  %signature175 = alloca [512 x i8], align 16
  %message_length = alloca i64, align 8
  %signature_length176 = alloca i64, align 8
  %verify_status195 = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  %0 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and = and i32 %0, 12288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end171

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr %payload) #8
  call void @llvm.memset.p0.i64(ptr align 16 %payload, i8 0, i64 64, i1 false)
  %1 = getelementptr inbounds <{ i8, [63 x i8] }>, ptr %payload, i32 0, i32 0
  store i8 1, ptr %1, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %payload_length) #8
  store i64 16, ptr %payload_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 512, ptr %signature) #8
  call void @llvm.memset.p0.i64(ptr align 16 %signature, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %signature_length) #8
  store i64 512, ptr %signature_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash_alg) #8
  %2 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and1 = and i32 %2, -256
  %cmp = icmp eq i32 %and1, 100664064
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and2 = and i32 %3, -256
  %cmp3 = icmp eq i32 %and2, 100668160
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and5 = and i32 %4, -256
  %cmp6 = icmp eq i32 %and5, 100663808
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %5 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and8 = and i32 %5, -256
  %and9 = and i32 %and8, -257
  %cmp10 = icmp eq i32 %and9, 100664832
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %6 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and12 = and i32 %6, -256
  %cmp13 = icmp eq i32 %and12, 100665600
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %7 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and15 = and i32 %7, -256
  %and16 = and i32 %and15, -257
  %cmp17 = icmp eq i32 %and16, 100664320
  br i1 %cmp17, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.then
  %8 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and18 = and i32 %8, 255
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and20 = and i32 %9, 255
  %or = or i32 %and20, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %hash_alg, align 4, !tbaa !9
  %10 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and21 = and i32 %10, -256
  %cmp22 = icmp eq i32 %and21, 100664064
  br i1 %cmp22, label %land.lhs.true40, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %cond.end
  %11 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and24 = and i32 %11, -256
  %cmp25 = icmp eq i32 %and24, 100668160
  br i1 %cmp25, label %land.lhs.true40, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %12 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and27 = and i32 %12, -256
  %cmp28 = icmp eq i32 %and27, 100663808
  br i1 %cmp28, label %land.lhs.true40, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %13 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and30 = and i32 %13, -256
  %and31 = and i32 %and30, -257
  %cmp32 = icmp eq i32 %and31, 100664832
  br i1 %cmp32, label %land.lhs.true40, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %14 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and34 = and i32 %14, -256
  %cmp35 = icmp eq i32 %and34, 100665600
  br i1 %cmp35, label %land.lhs.true40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %15 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and37 = and i32 %15, -256
  %and38 = and i32 %and37, -257
  %cmp39 = icmp eq i32 %and38, 100664320
  br i1 %cmp39, label %land.lhs.true40, label %if.end

land.lhs.true40:                                  ; preds = %lor.lhs.false36, %lor.lhs.false33, %lor.lhs.false29, %lor.lhs.false26, %lor.lhs.false23, %cond.end
  %16 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %cmp41 = icmp eq i32 %16, 33554687
  br i1 %cmp41, label %if.then42, label %if.end

if.then42:                                        ; preds = %land.lhs.true40
  store i32 33554435, ptr %hash_alg, align 4, !tbaa !9
  %17 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %xor = xor i32 33554687, %17
  %18 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %xor43 = xor i32 %18, %xor
  store i32 %xor43, ptr %alg.addr, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then42, %land.lhs.true40, %lor.lhs.false36
  %19 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %cmp44 = icmp ne i32 %19, 0
  br i1 %cmp44, label %if.then45, label %if.end134

if.then45:                                        ; preds = %if.end
  %20 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and46 = and i32 %20, 255
  %or47 = or i32 33554432, %and46
  %cmp48 = icmp eq i32 %or47, 33554435
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %if.then45
  br label %cond.end132

cond.false50:                                     ; preds = %if.then45
  %21 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and51 = and i32 %21, 255
  %or52 = or i32 33554432, %and51
  %cmp53 = icmp eq i32 %or52, 33554436
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.false50
  br label %cond.end130

cond.false55:                                     ; preds = %cond.false50
  %22 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and56 = and i32 %22, 255
  %or57 = or i32 33554432, %and56
  %cmp58 = icmp eq i32 %or57, 33554437
  br i1 %cmp58, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %cond.false55
  br label %cond.end128

cond.false60:                                     ; preds = %cond.false55
  %23 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and61 = and i32 %23, 255
  %or62 = or i32 33554432, %and61
  %cmp63 = icmp eq i32 %or62, 33554440
  br i1 %cmp63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.false60
  br label %cond.end126

cond.false65:                                     ; preds = %cond.false60
  %24 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and66 = and i32 %24, 255
  %or67 = or i32 33554432, %and66
  %cmp68 = icmp eq i32 %or67, 33554441
  br i1 %cmp68, label %cond.true69, label %cond.false70

cond.true69:                                      ; preds = %cond.false65
  br label %cond.end124

cond.false70:                                     ; preds = %cond.false65
  %25 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and71 = and i32 %25, 255
  %or72 = or i32 33554432, %and71
  %cmp73 = icmp eq i32 %or72, 33554442
  br i1 %cmp73, label %cond.true74, label %cond.false75

cond.true74:                                      ; preds = %cond.false70
  br label %cond.end122

cond.false75:                                     ; preds = %cond.false70
  %26 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and76 = and i32 %26, 255
  %or77 = or i32 33554432, %and76
  %cmp78 = icmp eq i32 %or77, 33554443
  br i1 %cmp78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %cond.false75
  br label %cond.end120

cond.false80:                                     ; preds = %cond.false75
  %27 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and81 = and i32 %27, 255
  %or82 = or i32 33554432, %and81
  %cmp83 = icmp eq i32 %or82, 33554444
  br i1 %cmp83, label %cond.true84, label %cond.false85

cond.true84:                                      ; preds = %cond.false80
  br label %cond.end118

cond.false85:                                     ; preds = %cond.false80
  %28 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and86 = and i32 %28, 255
  %or87 = or i32 33554432, %and86
  %cmp88 = icmp eq i32 %or87, 33554445
  br i1 %cmp88, label %cond.true89, label %cond.false90

cond.true89:                                      ; preds = %cond.false85
  br label %cond.end116

cond.false90:                                     ; preds = %cond.false85
  %29 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and91 = and i32 %29, 255
  %or92 = or i32 33554432, %and91
  %cmp93 = icmp eq i32 %or92, 33554448
  br i1 %cmp93, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %cond.false90
  br label %cond.end114

cond.false95:                                     ; preds = %cond.false90
  %30 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and96 = and i32 %30, 255
  %or97 = or i32 33554432, %and96
  %cmp98 = icmp eq i32 %or97, 33554449
  br i1 %cmp98, label %cond.true99, label %cond.false100

cond.true99:                                      ; preds = %cond.false95
  br label %cond.end112

cond.false100:                                    ; preds = %cond.false95
  %31 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and101 = and i32 %31, 255
  %or102 = or i32 33554432, %and101
  %cmp103 = icmp eq i32 %or102, 33554450
  br i1 %cmp103, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %cond.false100
  br label %cond.end110

cond.false105:                                    ; preds = %cond.false100
  %32 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and106 = and i32 %32, 255
  %or107 = or i32 33554432, %and106
  %cmp108 = icmp eq i32 %or107, 33554451
  %33 = zext i1 %cmp108 to i64
  %cond109 = select i1 %cmp108, i32 64, i32 0
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false105, %cond.true104
  %cond111 = phi i32 [ 48, %cond.true104 ], [ %cond109, %cond.false105 ]
  br label %cond.end112

cond.end112:                                      ; preds = %cond.end110, %cond.true99
  %cond113 = phi i32 [ 32, %cond.true99 ], [ %cond111, %cond.end110 ]
  br label %cond.end114

cond.end114:                                      ; preds = %cond.end112, %cond.true94
  %cond115 = phi i32 [ 28, %cond.true94 ], [ %cond113, %cond.end112 ]
  br label %cond.end116

cond.end116:                                      ; preds = %cond.end114, %cond.true89
  %cond117 = phi i32 [ 32, %cond.true89 ], [ %cond115, %cond.end114 ]
  br label %cond.end118

cond.end118:                                      ; preds = %cond.end116, %cond.true84
  %cond119 = phi i32 [ 28, %cond.true84 ], [ %cond117, %cond.end116 ]
  br label %cond.end120

cond.end120:                                      ; preds = %cond.end118, %cond.true79
  %cond121 = phi i32 [ 64, %cond.true79 ], [ %cond119, %cond.end118 ]
  br label %cond.end122

cond.end122:                                      ; preds = %cond.end120, %cond.true74
  %cond123 = phi i32 [ 48, %cond.true74 ], [ %cond121, %cond.end120 ]
  br label %cond.end124

cond.end124:                                      ; preds = %cond.end122, %cond.true69
  %cond125 = phi i32 [ 32, %cond.true69 ], [ %cond123, %cond.end122 ]
  br label %cond.end126

cond.end126:                                      ; preds = %cond.end124, %cond.true64
  %cond127 = phi i32 [ 28, %cond.true64 ], [ %cond125, %cond.end124 ]
  br label %cond.end128

cond.end128:                                      ; preds = %cond.end126, %cond.true59
  %cond129 = phi i32 [ 20, %cond.true59 ], [ %cond127, %cond.end126 ]
  br label %cond.end130

cond.end130:                                      ; preds = %cond.end128, %cond.true54
  %cond131 = phi i32 [ 20, %cond.true54 ], [ %cond129, %cond.end128 ]
  br label %cond.end132

cond.end132:                                      ; preds = %cond.end130, %cond.true49
  %cond133 = phi i32 [ 16, %cond.true49 ], [ %cond131, %cond.end130 ]
  %conv = sext i32 %cond133 to i64
  store i64 %conv, ptr %payload_length, align 8, !tbaa !11
  br label %if.end134

if.end134:                                        ; preds = %cond.end132, %if.end
  %34 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and135 = and i32 %34, 4096
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then137, label %if.end144

if.then137:                                       ; preds = %if.end134
  br label %do.body

do.body:                                          ; preds = %if.then137
  %35 = load i32, ptr %key.addr, align 4, !tbaa !9
  %36 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [64 x i8], ptr %payload, i64 0, i64 0
  %37 = load i64, ptr %payload_length, align 8, !tbaa !11
  %arraydecay138 = getelementptr inbounds [512 x i8], ptr %signature, i64 0, i64 0
  %call = call i32 @psa_sign_hash(i32 noundef %35, i32 noundef %36, ptr noundef %arraydecay, i64 noundef %37, ptr noundef %arraydecay138, i64 noundef 512, ptr noundef %signature_length)
  %conv139 = sext i32 %call to i64
  %call140 = call i32 @mbedtls_test_equal(ptr noundef @.str.54, i32 noundef 341, ptr noundef @.str.1, i64 noundef %conv139, i64 noundef 0)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.end143, label %if.then142

if.then142:                                       ; preds = %do.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end143:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end143
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end144

if.end144:                                        ; preds = %do.end, %if.end134
  %38 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and145 = and i32 %38, 8192
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then147, label %if.end163

if.then147:                                       ; preds = %if.end144
  call void @llvm.lifetime.start.p0(i64 4, ptr %verify_status) #8
  %39 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and148 = and i32 %39, 4096
  %tobool149 = icmp ne i32 %and148, 0
  %40 = zext i1 %tobool149 to i64
  %cond150 = select i1 %tobool149, i32 0, i32 -149
  store i32 %cond150, ptr %verify_status, align 4, !tbaa !9
  br label %do.body151

do.body151:                                       ; preds = %if.then147
  %41 = load i32, ptr %key.addr, align 4, !tbaa !9
  %42 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay152 = getelementptr inbounds [64 x i8], ptr %payload, i64 0, i64 0
  %43 = load i64, ptr %payload_length, align 8, !tbaa !11
  %arraydecay153 = getelementptr inbounds [512 x i8], ptr %signature, i64 0, i64 0
  %44 = load i64, ptr %signature_length, align 8, !tbaa !11
  %call154 = call i32 @psa_verify_hash(i32 noundef %41, i32 noundef %42, ptr noundef %arraydecay152, i64 noundef %43, ptr noundef %arraydecay153, i64 noundef %44)
  %conv155 = sext i32 %call154 to i64
  %45 = load i32, ptr %verify_status, align 4, !tbaa !9
  %conv156 = sext i32 %45 to i64
  %call157 = call i32 @mbedtls_test_equal(ptr noundef @.str.55, i32 noundef 353, ptr noundef @.str.1, i64 noundef %conv155, i64 noundef %conv156)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.end160, label %if.then159

if.then159:                                       ; preds = %do.body151
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end160:                                        ; preds = %do.body151
  br label %do.cond161

do.cond161:                                       ; preds = %if.end160
  br label %do.end162

do.end162:                                        ; preds = %do.cond161
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then159, %do.end162
  call void @llvm.lifetime.end.p0(i64 4, ptr %verify_status) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup164 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end163

if.end163:                                        ; preds = %cleanup.cont, %if.end144
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

cleanup164:                                       ; preds = %if.then142, %if.end163, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash_alg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %signature_length) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %signature) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %payload_length) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %payload) #8
  %cleanup.dest169 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest169, label %unreachable [
    i32 0, label %cleanup.cont170
    i32 4, label %exit
  ]

cleanup.cont170:                                  ; preds = %cleanup164
  br label %if.end171

if.end171:                                        ; preds = %cleanup.cont170, %entry
  %46 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %47 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call172 = call i32 @can_sign_or_verify_message(i32 noundef %46, i32 noundef %47)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then174, label %if.end221

if.then174:                                       ; preds = %if.end171
  call void @llvm.lifetime.start.p0(i64 256, ptr %message) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %message, ptr align 16 @__const.exercise_signature_key.message, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 512, ptr %signature175) #8
  call void @llvm.memset.p0.i64(ptr align 16 %signature175, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %message_length) #8
  store i64 16, ptr %message_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %signature_length176) #8
  store i64 512, ptr %signature_length176, align 8, !tbaa !11
  %48 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and177 = and i32 %48, 1024
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.then179, label %if.end191

if.then179:                                       ; preds = %if.then174
  br label %do.body180

do.body180:                                       ; preds = %if.then179
  %49 = load i32, ptr %key.addr, align 4, !tbaa !9
  %50 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay181 = getelementptr inbounds [256 x i8], ptr %message, i64 0, i64 0
  %51 = load i64, ptr %message_length, align 8, !tbaa !11
  %arraydecay182 = getelementptr inbounds [512 x i8], ptr %signature175, i64 0, i64 0
  %call183 = call i32 @psa_sign_message(i32 noundef %49, i32 noundef %50, ptr noundef %arraydecay181, i64 noundef %51, ptr noundef %arraydecay182, i64 noundef 512, ptr noundef %signature_length176)
  %conv184 = sext i32 %call183 to i64
  %call185 = call i32 @mbedtls_test_equal(ptr noundef @.str.56, i32 noundef 369, ptr noundef @.str.1, i64 noundef %conv184, i64 noundef 0)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end188, label %if.then187

if.then187:                                       ; preds = %do.body180
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup215

if.end188:                                        ; preds = %do.body180
  br label %do.cond189

do.cond189:                                       ; preds = %if.end188
  br label %do.end190

do.end190:                                        ; preds = %do.cond189
  br label %if.end191

if.end191:                                        ; preds = %do.end190, %if.then174
  %52 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and192 = and i32 %52, 2048
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.then194, label %if.end214

if.then194:                                       ; preds = %if.end191
  call void @llvm.lifetime.start.p0(i64 4, ptr %verify_status195) #8
  %53 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and196 = and i32 %53, 1024
  %tobool197 = icmp ne i32 %and196, 0
  %54 = zext i1 %tobool197 to i64
  %cond198 = select i1 %tobool197, i32 0, i32 -149
  store i32 %cond198, ptr %verify_status195, align 4, !tbaa !9
  br label %do.body199

do.body199:                                       ; preds = %if.then194
  %55 = load i32, ptr %key.addr, align 4, !tbaa !9
  %56 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay200 = getelementptr inbounds [256 x i8], ptr %message, i64 0, i64 0
  %57 = load i64, ptr %message_length, align 8, !tbaa !11
  %arraydecay201 = getelementptr inbounds [512 x i8], ptr %signature175, i64 0, i64 0
  %58 = load i64, ptr %signature_length176, align 8, !tbaa !11
  %call202 = call i32 @psa_verify_message(i32 noundef %55, i32 noundef %56, ptr noundef %arraydecay200, i64 noundef %57, ptr noundef %arraydecay201, i64 noundef %58)
  %conv203 = sext i32 %call202 to i64
  %59 = load i32, ptr %verify_status195, align 4, !tbaa !9
  %conv204 = sext i32 %59 to i64
  %call205 = call i32 @mbedtls_test_equal(ptr noundef @.str.57, i32 noundef 381, ptr noundef @.str.1, i64 noundef %conv203, i64 noundef %conv204)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.end208, label %if.then207

if.then207:                                       ; preds = %do.body199
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup211

if.end208:                                        ; preds = %do.body199
  br label %do.cond209

do.cond209:                                       ; preds = %if.end208
  br label %do.end210

do.end210:                                        ; preds = %do.cond209
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup211

cleanup211:                                       ; preds = %if.then207, %do.end210
  call void @llvm.lifetime.end.p0(i64 4, ptr %verify_status195) #8
  %cleanup.dest212 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest212, label %cleanup215 [
    i32 0, label %cleanup.cont213
  ]

cleanup.cont213:                                  ; preds = %cleanup211
  br label %if.end214

if.end214:                                        ; preds = %cleanup.cont213, %if.end191
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup215

cleanup215:                                       ; preds = %if.then187, %if.end214, %cleanup211
  call void @llvm.lifetime.end.p0(i64 8, ptr %signature_length176) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %message_length) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %signature175) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %message) #8
  %cleanup.dest219 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest219, label %unreachable [
    i32 0, label %cleanup.cont220
    i32 4, label %exit
  ]

cleanup.cont220:                                  ; preds = %cleanup215
  br label %if.end221

if.end221:                                        ; preds = %cleanup.cont220, %if.end171
  store i32 1, ptr %retval, align 4
  br label %return

exit:                                             ; preds = %cleanup215, %cleanup164
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.end221
  %60 = load i32, ptr %retval, align 4
  ret i32 %60

unreachable:                                      ; preds = %cleanup215, %cleanup164
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_asymmetric_encryption_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %plaintext = alloca [256 x i8], align 16
  %ciphertext = alloca [256 x i8], align 16
  %ciphertext_length = alloca i64, align 8
  %plaintext_length = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 256, ptr %plaintext) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %plaintext, ptr align 16 @__const.exercise_asymmetric_encryption_key.plaintext, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr %ciphertext) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ciphertext, ptr align 16 @__const.exercise_asymmetric_encryption_key.ciphertext, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ciphertext_length) #8
  store i64 256, ptr %ciphertext_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %plaintext_length) #8
  store i64 16, ptr %plaintext_length, align 8, !tbaa !11
  %0 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and = and i32 %0, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load i32, ptr %key.addr, align 4, !tbaa !9
  %2 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [256 x i8], ptr %plaintext, i64 0, i64 0
  %3 = load i64, ptr %plaintext_length, align 8, !tbaa !11
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %ciphertext, i64 0, i64 0
  %call = call i32 @psa_asymmetric_encrypt(i32 noundef %1, i32 noundef %2, ptr noundef %arraydecay, i64 noundef %3, ptr noundef null, i64 noundef 0, ptr noundef %arraydecay1, i64 noundef 256, ptr noundef %ciphertext_length)
  %conv = sext i32 %call to i64
  %call2 = call i32 @mbedtls_test_equal(ptr noundef @.str.58, i32 noundef 406, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry
  %4 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and6 = and i32 %4, 512
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end26

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  %5 = load i32, ptr %key.addr, align 4, !tbaa !9
  %6 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay9 = getelementptr inbounds [256 x i8], ptr %ciphertext, i64 0, i64 0
  %7 = load i64, ptr %ciphertext_length, align 8, !tbaa !11
  %arraydecay10 = getelementptr inbounds [256 x i8], ptr %plaintext, i64 0, i64 0
  %call11 = call i32 @psa_asymmetric_decrypt(i32 noundef %5, i32 noundef %6, ptr noundef %arraydecay9, i64 noundef %7, ptr noundef null, i64 noundef 0, ptr noundef %arraydecay10, i64 noundef 256, ptr noundef %plaintext_length)
  store i32 %call11, ptr %status, align 4, !tbaa !9
  br label %do.body12

do.body12:                                        ; preds = %if.then8
  %8 = load i32, ptr %status, align 4, !tbaa !9
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body12
  %9 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and14 = and i32 %9, 256
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.then22

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load i32, ptr %status, align 4, !tbaa !9
  %cmp17 = icmp eq i32 %10, -135
  br i1 %cmp17, label %if.end23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true
  %11 = load i32, ptr %status, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %11, -150
  br i1 %cmp20, label %if.end23, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false19, %lor.lhs.false
  call void @mbedtls_test_fail(ptr noundef @.str.59, i32 noundef 420, ptr noundef @.str.1)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19, %land.lhs.true, %do.body12
  br label %do.cond24

do.cond24:                                        ; preds = %if.end23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.end25
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
    i32 4, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26

if.end26:                                         ; preds = %cleanup.cont, %if.end5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

exit:                                             ; preds = %cleanup, %if.then4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %exit, %if.end26, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %plaintext_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ciphertext_length) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %ciphertext) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %plaintext) #8
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_key_derivation_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %operation = alloca %struct.psa_key_derivation_s, align 8
  %input1 = alloca [8 x i8], align 1
  %input1_length = alloca i64, align 8
  %input2 = alloca [8 x i8], align 1
  %input2_length = alloca i64, align 8
  %output = alloca [1 x i8], align 1
  %capacity = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 552, ptr %operation) #8
  call void @llvm.memset.p0.i64(ptr align 8 %operation, i8 0, i64 552, i1 false)
  %0 = getelementptr inbounds { i32, i8, i64, { i8, [535 x i8] } }, ptr %operation, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr %input1) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %input1, ptr align 1 @__const.exercise_key_derivation_key.input1, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %input1_length) #8
  store i64 8, ptr %input1_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %input2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %input2, ptr align 1 @__const.exercise_key_derivation_key.input2, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %input2_length) #8
  store i64 8, ptr %input2_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1, ptr %output) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capacity) #8
  store i64 1, ptr %capacity, align 8, !tbaa !11
  %1 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and = and i32 %1, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %key.addr, align 4, !tbaa !9
  %3 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [8 x i8], ptr %input1, i64 0, i64 0
  %4 = load i64, ptr %input1_length, align 8, !tbaa !11
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %input2, i64 0, i64 0
  %5 = load i64, ptr %input2_length, align 8, !tbaa !11
  %6 = load i64, ptr %capacity, align 8, !tbaa !11
  %call = call i32 @mbedtls_test_psa_setup_key_derivation_wrap(ptr noundef %operation, i32 noundef %2, i32 noundef %3, ptr noundef %arraydecay, i64 noundef %4, ptr noundef %arraydecay1, i64 noundef %5, i64 noundef %6)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  br label %exit

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [1 x i8], ptr %output, i64 0, i64 0
  %7 = load i64, ptr %capacity, align 8, !tbaa !11
  %call5 = call i32 @psa_key_derivation_output_bytes(ptr noundef %operation, ptr noundef %arraydecay4, i64 noundef %7)
  %conv = sext i32 %call5 to i64
  %call6 = call i32 @mbedtls_test_equal(ptr noundef @.str.60, i32 noundef 501, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body
  br label %exit

if.end9:                                          ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body10

do.body10:                                        ; preds = %do.end
  %call11 = call i32 @psa_key_derivation_abort(ptr noundef %operation)
  %conv12 = sext i32 %call11 to i64
  %call13 = call i32 @mbedtls_test_equal(ptr noundef @.str.61, i32 noundef 502, ptr noundef @.str.1, i64 noundef %conv12, i64 noundef 0)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body10
  br label %exit

if.end16:                                         ; preds = %do.body10
  br label %do.cond17

do.cond17:                                        ; preds = %if.end16
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

exit:                                             ; preds = %if.then15, %if.then8, %if.then3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end19
  call void @llvm.lifetime.end.p0(i64 8, ptr %capacity) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %output) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %input2_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %input2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %input1_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %input1) #8
  call void @llvm.lifetime.end.p0(i64 552, ptr %operation) #8
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_raw_key_agreement_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %ok = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #8
  store i32 0, ptr %ok, align 4, !tbaa !9
  %0 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and = and i32 %0, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %2 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @mbedtls_test_psa_raw_key_agreement_with_self(i32 noundef %1, i32 noundef %2)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str.62, i32 noundef 613, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry
  store i32 1, ptr %ok, align 4, !tbaa !9
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3
  %3 = load i32, ptr %ok, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #8
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_key_agreement_key(i32 noundef %key, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %operation = alloca %struct.psa_key_derivation_s, align 8
  %input = alloca [1 x i8], align 1
  %output = alloca [1 x i8], align 1
  %ok = alloca i32, align 4
  %kdf_alg = alloca i32, align 4
  %expected_key_agreement_status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key_bits = alloca i64, align 8
  %hash_alg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 552, ptr %operation) #8
  call void @llvm.memset.p0.i64(ptr align 8 %operation, i8 0, i64 552, i1 false)
  %0 = getelementptr inbounds { i32, i8, i64, { i8, [535 x i8] } }, ptr %operation, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr %input) #8
  call void @llvm.memset.p0.i64(ptr align 1 %input, i8 0, i64 1, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr %output) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #8
  store i32 0, ptr %ok, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %kdf_alg) #8
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and = and i32 %1, -33488897
  %or = or i32 %and, 134217728
  store i32 %or, ptr %kdf_alg, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %expected_key_agreement_status) #8
  store i32 0, ptr %expected_key_agreement_status, align 4, !tbaa !9
  %2 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and1 = and i32 %2, 16384
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.end226

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %call = call i32 @psa_key_derivation_setup(ptr noundef %operation, i32 noundef %3)
  %conv = sext i32 %call to i64
  %call2 = call i32 @mbedtls_test_equal(ptr noundef @.str.63, i32 noundef 636, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and5 = and i32 %4, -256
  %cmp = icmp eq i32 %and5, 134218240
  br i1 %cmp, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %5 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and7 = and i32 %5, -256
  %cmp8 = icmp eq i32 %and7, 134218496
  br i1 %cmp8, label %if.then10, label %if.end20

if.then10:                                        ; preds = %lor.lhs.false, %do.end
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  %arraydecay = getelementptr inbounds [1 x i8], ptr %input, i64 0, i64 0
  %call12 = call i32 @psa_key_derivation_input_bytes(ptr noundef %operation, i16 noundef zeroext 516, ptr noundef %arraydecay, i64 noundef 1)
  %conv13 = sext i32 %call12 to i64
  %call14 = call i32 @mbedtls_test_equal(ptr noundef @.str.64, i32 noundef 642, ptr noundef @.str.1, i64 noundef %conv13, i64 noundef 0)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %do.body11
  br label %exit

if.end17:                                         ; preds = %do.body11
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %lor.lhs.false
  %6 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and21 = and i32 %6, -256
  %cmp22 = icmp eq i32 %and21, 134218752
  br i1 %cmp22, label %if.then24, label %if.end35

if.then24:                                        ; preds = %if.end20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %arraydecay26 = getelementptr inbounds [1 x i8], ptr %input, i64 0, i64 0
  %call27 = call i32 @psa_key_derivation_input_bytes(ptr noundef %operation, i16 noundef zeroext 514, ptr noundef %arraydecay26, i64 noundef 1)
  %conv28 = sext i32 %call27 to i64
  %call29 = call i32 @mbedtls_test_equal(ptr noundef @.str.65, i32 noundef 649, ptr noundef @.str.1, i64 noundef %conv28, i64 noundef 0)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %do.body25
  br label %exit

if.end32:                                         ; preds = %do.body25
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end20
  %7 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and36 = and i32 %7, -256
  %cmp37 = icmp eq i32 %and36, 134219008
  br i1 %cmp37, label %if.then39, label %if.end154

if.then39:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  %8 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call41 = call i32 @psa_get_key_attributes(i32 noundef %8, ptr noundef %attributes)
  %conv42 = sext i32 %call41 to i64
  %call43 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 658, ptr noundef @.str.1, i64 noundef %conv42, i64 noundef 0)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %do.body40
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %do.body40
  br label %do.cond47

do.cond47:                                        ; preds = %if.end46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_bits) #8
  %call49 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  store i64 %call49, ptr %key_bits, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash_alg) #8
  %9 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and50 = and i32 %9, 255
  %or51 = or i32 33554432, %and50
  store i32 %or51, ptr %hash_alg, align 4, !tbaa !9
  %10 = load i64, ptr %key_bits, align 8, !tbaa !11
  %add = add i64 %10, 7
  %div = udiv i64 %add, 8
  %11 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and52 = and i32 %11, 255
  %or53 = or i32 33554432, %and52
  %cmp54 = icmp eq i32 %or53, 33554435
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end48
  br label %cond.end147

cond.false:                                       ; preds = %do.end48
  %12 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and56 = and i32 %12, 255
  %or57 = or i32 33554432, %and56
  %cmp58 = icmp eq i32 %or57, 33554436
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %cond.false
  br label %cond.end145

cond.false61:                                     ; preds = %cond.false
  %13 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and62 = and i32 %13, 255
  %or63 = or i32 33554432, %and62
  %cmp64 = icmp eq i32 %or63, 33554437
  br i1 %cmp64, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.false61
  br label %cond.end143

cond.false67:                                     ; preds = %cond.false61
  %14 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and68 = and i32 %14, 255
  %or69 = or i32 33554432, %and68
  %cmp70 = icmp eq i32 %or69, 33554440
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %cond.false67
  br label %cond.end141

cond.false73:                                     ; preds = %cond.false67
  %15 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and74 = and i32 %15, 255
  %or75 = or i32 33554432, %and74
  %cmp76 = icmp eq i32 %or75, 33554441
  br i1 %cmp76, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %cond.false73
  br label %cond.end139

cond.false79:                                     ; preds = %cond.false73
  %16 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and80 = and i32 %16, 255
  %or81 = or i32 33554432, %and80
  %cmp82 = icmp eq i32 %or81, 33554442
  br i1 %cmp82, label %cond.true84, label %cond.false85

cond.true84:                                      ; preds = %cond.false79
  br label %cond.end137

cond.false85:                                     ; preds = %cond.false79
  %17 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and86 = and i32 %17, 255
  %or87 = or i32 33554432, %and86
  %cmp88 = icmp eq i32 %or87, 33554443
  br i1 %cmp88, label %cond.true90, label %cond.false91

cond.true90:                                      ; preds = %cond.false85
  br label %cond.end135

cond.false91:                                     ; preds = %cond.false85
  %18 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and92 = and i32 %18, 255
  %or93 = or i32 33554432, %and92
  %cmp94 = icmp eq i32 %or93, 33554444
  br i1 %cmp94, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.false91
  br label %cond.end133

cond.false97:                                     ; preds = %cond.false91
  %19 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and98 = and i32 %19, 255
  %or99 = or i32 33554432, %and98
  %cmp100 = icmp eq i32 %or99, 33554445
  br i1 %cmp100, label %cond.true102, label %cond.false103

cond.true102:                                     ; preds = %cond.false97
  br label %cond.end131

cond.false103:                                    ; preds = %cond.false97
  %20 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and104 = and i32 %20, 255
  %or105 = or i32 33554432, %and104
  %cmp106 = icmp eq i32 %or105, 33554448
  br i1 %cmp106, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %cond.false103
  br label %cond.end129

cond.false109:                                    ; preds = %cond.false103
  %21 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and110 = and i32 %21, 255
  %or111 = or i32 33554432, %and110
  %cmp112 = icmp eq i32 %or111, 33554449
  br i1 %cmp112, label %cond.true114, label %cond.false115

cond.true114:                                     ; preds = %cond.false109
  br label %cond.end127

cond.false115:                                    ; preds = %cond.false109
  %22 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and116 = and i32 %22, 255
  %or117 = or i32 33554432, %and116
  %cmp118 = icmp eq i32 %or117, 33554450
  br i1 %cmp118, label %cond.true120, label %cond.false121

cond.true120:                                     ; preds = %cond.false115
  br label %cond.end

cond.false121:                                    ; preds = %cond.false115
  %23 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %and122 = and i32 %23, 255
  %or123 = or i32 33554432, %and122
  %cmp124 = icmp eq i32 %or123, 33554451
  %24 = zext i1 %cmp124 to i64
  %cond = select i1 %cmp124, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false121, %cond.true120
  %cond126 = phi i32 [ 48, %cond.true120 ], [ %cond, %cond.false121 ]
  br label %cond.end127

cond.end127:                                      ; preds = %cond.end, %cond.true114
  %cond128 = phi i32 [ 32, %cond.true114 ], [ %cond126, %cond.end ]
  br label %cond.end129

cond.end129:                                      ; preds = %cond.end127, %cond.true108
  %cond130 = phi i32 [ 28, %cond.true108 ], [ %cond128, %cond.end127 ]
  br label %cond.end131

cond.end131:                                      ; preds = %cond.end129, %cond.true102
  %cond132 = phi i32 [ 32, %cond.true102 ], [ %cond130, %cond.end129 ]
  br label %cond.end133

cond.end133:                                      ; preds = %cond.end131, %cond.true96
  %cond134 = phi i32 [ 28, %cond.true96 ], [ %cond132, %cond.end131 ]
  br label %cond.end135

cond.end135:                                      ; preds = %cond.end133, %cond.true90
  %cond136 = phi i32 [ 64, %cond.true90 ], [ %cond134, %cond.end133 ]
  br label %cond.end137

cond.end137:                                      ; preds = %cond.end135, %cond.true84
  %cond138 = phi i32 [ 48, %cond.true84 ], [ %cond136, %cond.end135 ]
  br label %cond.end139

cond.end139:                                      ; preds = %cond.end137, %cond.true78
  %cond140 = phi i32 [ 32, %cond.true78 ], [ %cond138, %cond.end137 ]
  br label %cond.end141

cond.end141:                                      ; preds = %cond.end139, %cond.true72
  %cond142 = phi i32 [ 28, %cond.true72 ], [ %cond140, %cond.end139 ]
  br label %cond.end143

cond.end143:                                      ; preds = %cond.end141, %cond.true66
  %cond144 = phi i32 [ 20, %cond.true66 ], [ %cond142, %cond.end141 ]
  br label %cond.end145

cond.end145:                                      ; preds = %cond.end143, %cond.true60
  %cond146 = phi i32 [ 20, %cond.true60 ], [ %cond144, %cond.end143 ]
  br label %cond.end147

cond.end147:                                      ; preds = %cond.end145, %cond.true
  %cond148 = phi i32 [ 16, %cond.true ], [ %cond146, %cond.end145 ]
  %conv149 = sext i32 %cond148 to i64
  %cmp150 = icmp ne i64 %div, %conv149
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %cond.end147
  store i32 -135, ptr %expected_key_agreement_status, align 4, !tbaa !9
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %cond.end147
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash_alg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_bits) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end153
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup227 [
    i32 0, label %cleanup.cont
    i32 4, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end154

if.end154:                                        ; preds = %cleanup.cont, %if.end35
  br label %do.body155

do.body155:                                       ; preds = %if.end154
  %25 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call156 = call i32 @mbedtls_test_psa_key_agreement_with_self(ptr noundef %operation, i32 noundef %25)
  %conv157 = sext i32 %call156 to i64
  %26 = load i32, ptr %expected_key_agreement_status, align 4, !tbaa !9
  %conv158 = sext i32 %26 to i64
  %call159 = call i32 @mbedtls_test_equal(ptr noundef @.str.66, i32 noundef 667, ptr noundef @.str.1, i64 noundef %conv157, i64 noundef %conv158)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.end162, label %if.then161

if.then161:                                       ; preds = %do.body155
  br label %exit

if.end162:                                        ; preds = %do.body155
  br label %do.cond163

do.cond163:                                       ; preds = %if.end162
  br label %do.end164

do.end164:                                        ; preds = %do.cond163
  %27 = load i32, ptr %expected_key_agreement_status, align 4, !tbaa !9
  %cmp165 = icmp ne i32 %27, 0
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %do.end164
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227

if.end168:                                        ; preds = %do.end164
  %28 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and169 = and i32 %28, -256
  %cmp170 = icmp eq i32 %and169, 134218240
  br i1 %cmp170, label %if.then176, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %if.end168
  %29 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and173 = and i32 %29, -256
  %cmp174 = icmp eq i32 %and173, 134218496
  br i1 %cmp174, label %if.then176, label %if.else

if.then176:                                       ; preds = %lor.lhs.false172, %if.end168
  br label %do.body177

do.body177:                                       ; preds = %if.then176
  %arraydecay178 = getelementptr inbounds [1 x i8], ptr %input, i64 0, i64 0
  %call179 = call i32 @psa_key_derivation_input_bytes(ptr noundef %operation, i16 noundef zeroext 513, ptr noundef %arraydecay178, i64 noundef 1)
  %conv180 = sext i32 %call179 to i64
  %call181 = call i32 @mbedtls_test_equal(ptr noundef @.str.67, i32 noundef 677, ptr noundef @.str.1, i64 noundef %conv180, i64 noundef 0)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.end184, label %if.then183

if.then183:                                       ; preds = %do.body177
  br label %exit

if.end184:                                        ; preds = %do.body177
  br label %do.cond185

do.cond185:                                       ; preds = %if.end184
  br label %do.end186

do.end186:                                        ; preds = %do.cond185
  br label %if.end206

if.else:                                          ; preds = %lor.lhs.false172
  %30 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and187 = and i32 %30, -256
  %cmp188 = icmp eq i32 %and187, 134217984
  br i1 %cmp188, label %if.then194, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %if.else
  %31 = load i32, ptr %kdf_alg, align 4, !tbaa !9
  %and191 = and i32 %31, -256
  %cmp192 = icmp eq i32 %and191, 134219008
  br i1 %cmp192, label %if.then194, label %if.end205

if.then194:                                       ; preds = %lor.lhs.false190, %if.else
  br label %do.body195

do.body195:                                       ; preds = %if.then194
  %arraydecay196 = getelementptr inbounds [1 x i8], ptr %input, i64 0, i64 0
  %call197 = call i32 @psa_key_derivation_input_bytes(ptr noundef %operation, i16 noundef zeroext 515, ptr noundef %arraydecay196, i64 noundef 1)
  %conv198 = sext i32 %call197 to i64
  %call199 = call i32 @mbedtls_test_equal(ptr noundef @.str.68, i32 noundef 683, ptr noundef @.str.1, i64 noundef %conv198, i64 noundef 0)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.end202, label %if.then201

if.then201:                                       ; preds = %do.body195
  br label %exit

if.end202:                                        ; preds = %do.body195
  br label %do.cond203

do.cond203:                                       ; preds = %if.end202
  br label %do.end204

do.end204:                                        ; preds = %do.cond203
  br label %if.end205

if.end205:                                        ; preds = %do.end204, %lor.lhs.false190
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %do.end186
  br label %do.body207

do.body207:                                       ; preds = %if.end206
  %arraydecay208 = getelementptr inbounds [1 x i8], ptr %output, i64 0, i64 0
  %call209 = call i32 @psa_key_derivation_output_bytes(ptr noundef %operation, ptr noundef %arraydecay208, i64 noundef 1)
  %conv210 = sext i32 %call209 to i64
  %call211 = call i32 @mbedtls_test_equal(ptr noundef @.str.69, i32 noundef 687, ptr noundef @.str.1, i64 noundef %conv210, i64 noundef 0)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.end214, label %if.then213

if.then213:                                       ; preds = %do.body207
  br label %exit

if.end214:                                        ; preds = %do.body207
  br label %do.cond215

do.cond215:                                       ; preds = %if.end214
  br label %do.end216

do.end216:                                        ; preds = %do.cond215
  br label %do.body217

do.body217:                                       ; preds = %do.end216
  %call218 = call i32 @psa_key_derivation_abort(ptr noundef %operation)
  %conv219 = sext i32 %call218 to i64
  %call220 = call i32 @mbedtls_test_equal(ptr noundef @.str.61, i32 noundef 688, ptr noundef @.str.1, i64 noundef %conv219, i64 noundef 0)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.end223, label %if.then222

if.then222:                                       ; preds = %do.body217
  br label %exit

if.end223:                                        ; preds = %do.body217
  br label %do.cond224

do.cond224:                                       ; preds = %if.end223
  br label %do.end225

do.end225:                                        ; preds = %do.cond224
  br label %if.end226

if.end226:                                        ; preds = %do.end225, %entry
  store i32 1, ptr %ok, align 4, !tbaa !9
  br label %exit

exit:                                             ; preds = %if.end226, %cleanup, %if.then222, %if.then213, %if.then201, %if.then183, %if.then161, %if.then31, %if.then16, %if.then4
  %32 = load i32, ptr %ok, align 4, !tbaa !9
  store i32 %32, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227

cleanup227:                                       ; preds = %exit, %if.then167, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %expected_key_agreement_status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %kdf_alg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %output) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %input) #8
  call void @llvm.lifetime.end.p0(i64 552, ptr %operation) #8
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_export_key(i32 noundef %key, i32 noundef %usage) #0 {
entry:
  %key.addr = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %exported = alloca ptr, align 8
  %exported_size = alloca i64, align 8
  %exported_length = alloca i64, align 8
  %ok = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %exported) #8
  store ptr null, ptr %exported, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %exported_size) #8
  store i64 0, ptr %exported_size, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %exported_length) #8
  store i64 0, ptr %exported_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #8
  store i32 0, ptr %ok, align 4, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @psa_get_key_attributes(i32 noundef %0, ptr noundef %attributes)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 865, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call2 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv3 = zext i16 %call2 to i32
  %and = and i32 %conv3, 28672
  %cmp = icmp eq i32 %and, 4096
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %call5 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv6 = zext i16 %call5 to i32
  %and7 = and i32 %conv6, 28672
  %cmp8 = icmp eq i32 %and7, 8192
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end
  %call10 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %add = add i64 %call10, 7
  %div = udiv i64 %add, 8
  br label %cond.end87

cond.false:                                       ; preds = %lor.lhs.false
  %call11 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv12 = zext i16 %call11 to i32
  %cmp13 = icmp eq i32 %conv12, 28673
  br i1 %cmp13, label %cond.true15, label %cond.false22

cond.true15:                                      ; preds = %cond.false
  %call16 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div17 = udiv i64 %call16, 2
  %add18 = add i64 %div17, 1
  %div19 = udiv i64 %add18, 8
  %add20 = add i64 %div19, 5
  %mul = mul i64 9, %add20
  %add21 = add i64 %mul, 14
  br label %cond.end85

cond.false22:                                     ; preds = %cond.false
  %call23 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv24 = zext i16 %call23 to i32
  %cmp25 = icmp eq i32 %conv24, 16385
  br i1 %cmp25, label %cond.true27, label %cond.false32

cond.true27:                                      ; preds = %cond.false22
  %call28 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div29 = udiv i64 %call28, 8
  %add30 = add i64 %div29, 5
  %add31 = add i64 %add30, 11
  br label %cond.end83

cond.false32:                                     ; preds = %cond.false22
  %call33 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv34 = zext i16 %call33 to i32
  %cmp35 = icmp eq i32 %conv34, 28674
  br i1 %cmp35, label %cond.true37, label %cond.false43

cond.true37:                                      ; preds = %cond.false32
  %call38 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div39 = udiv i64 %call38, 8
  %add40 = add i64 %div39, 5
  %mul41 = mul i64 %add40, 3
  %add42 = add i64 %mul41, 75
  br label %cond.end81

cond.false43:                                     ; preds = %cond.false32
  %call44 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv45 = zext i16 %call44 to i32
  %cmp46 = icmp eq i32 %conv45, 16386
  br i1 %cmp46, label %cond.true48, label %cond.false54

cond.true48:                                      ; preds = %cond.false43
  %call49 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div50 = udiv i64 %call49, 8
  %add51 = add i64 %div50, 5
  %mul52 = mul i64 %add51, 3
  %add53 = add i64 %mul52, 59
  br label %cond.end79

cond.false54:                                     ; preds = %cond.false43
  %call55 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv56 = zext i16 %call55 to i32
  %and57 = and i32 %conv56, -256
  %cmp58 = icmp eq i32 %and57, 28928
  br i1 %cmp58, label %cond.true60, label %cond.false64

cond.true60:                                      ; preds = %cond.false54
  %call61 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %add62 = add i64 %call61, 7
  %div63 = udiv i64 %add62, 8
  br label %cond.end77

cond.false64:                                     ; preds = %cond.false54
  %call65 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv66 = zext i16 %call65 to i32
  %and67 = and i32 %conv66, -256
  %cmp68 = icmp eq i32 %and67, 16640
  br i1 %cmp68, label %cond.true70, label %cond.false76

cond.true70:                                      ; preds = %cond.false64
  %call71 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %add72 = add i64 %call71, 7
  %div73 = udiv i64 %add72, 8
  %mul74 = mul i64 2, %div73
  %add75 = add i64 %mul74, 1
  br label %cond.end

cond.false76:                                     ; preds = %cond.false64
  br label %cond.end

cond.end:                                         ; preds = %cond.false76, %cond.true70
  %cond = phi i64 [ %add75, %cond.true70 ], [ 0, %cond.false76 ]
  br label %cond.end77

cond.end77:                                       ; preds = %cond.end, %cond.true60
  %cond78 = phi i64 [ %div63, %cond.true60 ], [ %cond, %cond.end ]
  br label %cond.end79

cond.end79:                                       ; preds = %cond.end77, %cond.true48
  %cond80 = phi i64 [ %add53, %cond.true48 ], [ %cond78, %cond.end77 ]
  br label %cond.end81

cond.end81:                                       ; preds = %cond.end79, %cond.true37
  %cond82 = phi i64 [ %add42, %cond.true37 ], [ %cond80, %cond.end79 ]
  br label %cond.end83

cond.end83:                                       ; preds = %cond.end81, %cond.true27
  %cond84 = phi i64 [ %add31, %cond.true27 ], [ %cond82, %cond.end81 ]
  br label %cond.end85

cond.end85:                                       ; preds = %cond.end83, %cond.true15
  %cond86 = phi i64 [ %add21, %cond.true15 ], [ %cond84, %cond.end83 ]
  br label %cond.end87

cond.end87:                                       ; preds = %cond.end85, %cond.true
  %cond88 = phi i64 [ %div, %cond.true ], [ %cond86, %cond.end85 ]
  store i64 %cond88, ptr %exported_size, align 8, !tbaa !11
  br label %do.body89

do.body89:                                        ; preds = %cond.end87
  br label %do.body90

do.body90:                                        ; preds = %do.body89
  %1 = load ptr, ptr %exported, align 8, !tbaa !5
  %cmp91 = icmp eq ptr %1, null
  br i1 %cmp91, label %if.end94, label %if.then93

if.then93:                                        ; preds = %do.body90
  call void @mbedtls_test_fail(ptr noundef @.str.70, i32 noundef 870, ptr noundef @.str.1)
  br label %exit

if.end94:                                         ; preds = %do.body90
  br label %do.cond95

do.cond95:                                        ; preds = %if.end94
  br label %do.end96

do.end96:                                         ; preds = %do.cond95
  %2 = load i64, ptr %exported_size, align 8, !tbaa !11
  %cmp97 = icmp ne i64 %2, 0
  br i1 %cmp97, label %if.then99, label %if.end108

if.then99:                                        ; preds = %do.end96
  %3 = load i64, ptr %exported_size, align 8, !tbaa !11
  %call100 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #9
  store ptr %call100, ptr %exported, align 8, !tbaa !5
  br label %do.body101

do.body101:                                       ; preds = %if.then99
  %4 = load ptr, ptr %exported, align 8, !tbaa !5
  %cmp102 = icmp ne ptr %4, null
  br i1 %cmp102, label %if.end105, label %if.then104

if.then104:                                       ; preds = %do.body101
  call void @mbedtls_test_fail(ptr noundef @.str.71, i32 noundef 870, ptr noundef @.str.1)
  br label %exit

if.end105:                                        ; preds = %do.body101
  br label %do.cond106

do.cond106:                                       ; preds = %if.end105
  br label %do.end107

do.end107:                                        ; preds = %do.cond106
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %do.end96
  br label %do.cond109

do.cond109:                                       ; preds = %if.end108
  br label %do.end110

do.end110:                                        ; preds = %do.cond109
  %5 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and111 = and i32 %5, 1
  %cmp112 = icmp eq i32 %and111, 0
  br i1 %cmp112, label %land.lhs.true, label %if.end129

land.lhs.true:                                    ; preds = %do.end110
  %call114 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv115 = zext i16 %call114 to i32
  %and116 = and i32 %conv115, 28672
  %cmp117 = icmp eq i32 %and116, 16384
  br i1 %cmp117, label %if.end129, label %if.then119

if.then119:                                       ; preds = %land.lhs.true
  br label %do.body120

do.body120:                                       ; preds = %if.then119
  %6 = load i32, ptr %key.addr, align 4, !tbaa !9
  %7 = load ptr, ptr %exported, align 8, !tbaa !5
  %8 = load i64, ptr %exported_size, align 8, !tbaa !11
  %call121 = call i32 @psa_export_key(i32 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %exported_length)
  %conv122 = sext i32 %call121 to i64
  %call123 = call i32 @mbedtls_test_equal(ptr noundef @.str.72, i32 noundef 877, ptr noundef @.str.1, i64 noundef %conv122, i64 noundef -133)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end126, label %if.then125

if.then125:                                       ; preds = %do.body120
  br label %exit

if.end126:                                        ; preds = %do.body120
  br label %do.cond127

do.cond127:                                       ; preds = %if.end126
  br label %do.end128

do.end128:                                        ; preds = %do.cond127
  store i32 1, ptr %ok, align 4, !tbaa !9
  br label %exit

if.end129:                                        ; preds = %land.lhs.true, %do.end110
  br label %do.body130

do.body130:                                       ; preds = %if.end129
  %9 = load i32, ptr %key.addr, align 4, !tbaa !9
  %10 = load ptr, ptr %exported, align 8, !tbaa !5
  %11 = load i64, ptr %exported_size, align 8, !tbaa !11
  %call131 = call i32 @psa_export_key(i32 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %exported_length)
  %conv132 = sext i32 %call131 to i64
  %call133 = call i32 @mbedtls_test_equal(ptr noundef @.str.73, i32 noundef 884, ptr noundef @.str.1, i64 noundef %conv132, i64 noundef 0)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end136, label %if.then135

if.then135:                                       ; preds = %do.body130
  br label %exit

if.end136:                                        ; preds = %do.body130
  br label %do.cond137

do.cond137:                                       ; preds = %if.end136
  br label %do.end138

do.end138:                                        ; preds = %do.cond137
  %call139 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %call140 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %12 = load ptr, ptr %exported, align 8, !tbaa !5
  %13 = load i64, ptr %exported_length, align 8, !tbaa !11
  %call141 = call i32 @mbedtls_test_psa_exported_key_sanity_check(i16 noundef zeroext %call139, i64 noundef %call140, ptr noundef %12, i64 noundef %13)
  store i32 %call141, ptr %ok, align 4, !tbaa !9
  br label %exit

exit:                                             ; preds = %do.end138, %if.then135, %do.end128, %if.then125, %if.then104, %if.then93, %if.then
  call void @psa_reset_key_attributes(ptr noundef %attributes)
  %14 = load ptr, ptr %exported, align 8, !tbaa !5
  call void @free(ptr noundef %14) #8
  %15 = load i32, ptr %ok, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %exported_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %exported_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %exported) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @exercise_export_public_key(i32 noundef %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %public_type = alloca i16, align 2
  %exported = alloca ptr, align 8
  %exported_size = alloca i64, align 8
  %exported_length = alloca i64, align 8
  %ok = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %attributes) #8
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr %public_type) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %exported) #8
  store ptr null, ptr %exported, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %exported_size) #8
  store i64 0, ptr %exported_size, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %exported_length) #8
  store i64 0, ptr %exported_length, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #8
  store i32 0, ptr %ok, align 4, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %key.addr, align 4, !tbaa !9
  %call = call i32 @psa_get_key_attributes(i32 noundef %0, ptr noundef %attributes)
  %conv = sext i32 %call to i64
  %call1 = call i32 @mbedtls_test_equal(ptr noundef @.str.9, i32 noundef 909, ptr noundef @.str.1, i64 noundef %conv, i64 noundef 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call2 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv3 = zext i16 %call2 to i32
  %and = and i32 %conv3, 28672
  %and4 = and i32 %and, -12289
  %cmp = icmp eq i32 %and4, 16384
  br i1 %cmp, label %if.end127, label %if.then6

if.then6:                                         ; preds = %do.end
  %call7 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv8 = zext i16 %call7 to i32
  %and9 = and i32 %conv8, 28672
  %cmp10 = icmp eq i32 %and9, 4096
  br i1 %cmp10, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %call12 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv13 = zext i16 %call12 to i32
  %and14 = and i32 %conv13, 28672
  %cmp15 = icmp eq i32 %and14, 8192
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then6
  %call17 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %add = add i64 %call17, 7
  %div = udiv i64 %add, 8
  br label %cond.end94

cond.false:                                       ; preds = %lor.lhs.false
  %call18 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv19 = zext i16 %call18 to i32
  %cmp20 = icmp eq i32 %conv19, 28673
  br i1 %cmp20, label %cond.true22, label %cond.false29

cond.true22:                                      ; preds = %cond.false
  %call23 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div24 = udiv i64 %call23, 2
  %add25 = add i64 %div24, 1
  %div26 = udiv i64 %add25, 8
  %add27 = add i64 %div26, 5
  %mul = mul i64 9, %add27
  %add28 = add i64 %mul, 14
  br label %cond.end92

cond.false29:                                     ; preds = %cond.false
  %call30 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv31 = zext i16 %call30 to i32
  %cmp32 = icmp eq i32 %conv31, 16385
  br i1 %cmp32, label %cond.true34, label %cond.false39

cond.true34:                                      ; preds = %cond.false29
  %call35 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div36 = udiv i64 %call35, 8
  %add37 = add i64 %div36, 5
  %add38 = add i64 %add37, 11
  br label %cond.end90

cond.false39:                                     ; preds = %cond.false29
  %call40 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv41 = zext i16 %call40 to i32
  %cmp42 = icmp eq i32 %conv41, 28674
  br i1 %cmp42, label %cond.true44, label %cond.false50

cond.true44:                                      ; preds = %cond.false39
  %call45 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div46 = udiv i64 %call45, 8
  %add47 = add i64 %div46, 5
  %mul48 = mul i64 %add47, 3
  %add49 = add i64 %mul48, 75
  br label %cond.end88

cond.false50:                                     ; preds = %cond.false39
  %call51 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv52 = zext i16 %call51 to i32
  %cmp53 = icmp eq i32 %conv52, 16386
  br i1 %cmp53, label %cond.true55, label %cond.false61

cond.true55:                                      ; preds = %cond.false50
  %call56 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div57 = udiv i64 %call56, 8
  %add58 = add i64 %div57, 5
  %mul59 = mul i64 %add58, 3
  %add60 = add i64 %mul59, 59
  br label %cond.end86

cond.false61:                                     ; preds = %cond.false50
  %call62 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv63 = zext i16 %call62 to i32
  %and64 = and i32 %conv63, -256
  %cmp65 = icmp eq i32 %and64, 28928
  br i1 %cmp65, label %cond.true67, label %cond.false71

cond.true67:                                      ; preds = %cond.false61
  %call68 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %add69 = add i64 %call68, 7
  %div70 = udiv i64 %add69, 8
  br label %cond.end84

cond.false71:                                     ; preds = %cond.false61
  %call72 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv73 = zext i16 %call72 to i32
  %and74 = and i32 %conv73, -256
  %cmp75 = icmp eq i32 %and74, 16640
  br i1 %cmp75, label %cond.true77, label %cond.false83

cond.true77:                                      ; preds = %cond.false71
  %call78 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %add79 = add i64 %call78, 7
  %div80 = udiv i64 %add79, 8
  %mul81 = mul i64 2, %div80
  %add82 = add i64 %mul81, 1
  br label %cond.end

cond.false83:                                     ; preds = %cond.false71
  br label %cond.end

cond.end:                                         ; preds = %cond.false83, %cond.true77
  %cond = phi i64 [ %add82, %cond.true77 ], [ 0, %cond.false83 ]
  br label %cond.end84

cond.end84:                                       ; preds = %cond.end, %cond.true67
  %cond85 = phi i64 [ %div70, %cond.true67 ], [ %cond, %cond.end ]
  br label %cond.end86

cond.end86:                                       ; preds = %cond.end84, %cond.true55
  %cond87 = phi i64 [ %add60, %cond.true55 ], [ %cond85, %cond.end84 ]
  br label %cond.end88

cond.end88:                                       ; preds = %cond.end86, %cond.true44
  %cond89 = phi i64 [ %add49, %cond.true44 ], [ %cond87, %cond.end86 ]
  br label %cond.end90

cond.end90:                                       ; preds = %cond.end88, %cond.true34
  %cond91 = phi i64 [ %add38, %cond.true34 ], [ %cond89, %cond.end88 ]
  br label %cond.end92

cond.end92:                                       ; preds = %cond.end90, %cond.true22
  %cond93 = phi i64 [ %add28, %cond.true22 ], [ %cond91, %cond.end90 ]
  br label %cond.end94

cond.end94:                                       ; preds = %cond.end92, %cond.true
  %cond95 = phi i64 [ %div, %cond.true ], [ %cond93, %cond.end92 ]
  store i64 %cond95, ptr %exported_size, align 8, !tbaa !11
  br label %do.body96

do.body96:                                        ; preds = %cond.end94
  br label %do.body97

do.body97:                                        ; preds = %do.body96
  %1 = load ptr, ptr %exported, align 8, !tbaa !5
  %cmp98 = icmp eq ptr %1, null
  br i1 %cmp98, label %if.end101, label %if.then100

if.then100:                                       ; preds = %do.body97
  call void @mbedtls_test_fail(ptr noundef @.str.70, i32 noundef 915, ptr noundef @.str.1)
  br label %exit

if.end101:                                        ; preds = %do.body97
  br label %do.cond102

do.cond102:                                       ; preds = %if.end101
  br label %do.end103

do.end103:                                        ; preds = %do.cond102
  %2 = load i64, ptr %exported_size, align 8, !tbaa !11
  %cmp104 = icmp ne i64 %2, 0
  br i1 %cmp104, label %if.then106, label %if.end115

if.then106:                                       ; preds = %do.end103
  %3 = load i64, ptr %exported_size, align 8, !tbaa !11
  %call107 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %3) #9
  store ptr %call107, ptr %exported, align 8, !tbaa !5
  br label %do.body108

do.body108:                                       ; preds = %if.then106
  %4 = load ptr, ptr %exported, align 8, !tbaa !5
  %cmp109 = icmp ne ptr %4, null
  br i1 %cmp109, label %if.end112, label %if.then111

if.then111:                                       ; preds = %do.body108
  call void @mbedtls_test_fail(ptr noundef @.str.71, i32 noundef 915, ptr noundef @.str.1)
  br label %exit

if.end112:                                        ; preds = %do.body108
  br label %do.cond113

do.cond113:                                       ; preds = %if.end112
  br label %do.end114

do.end114:                                        ; preds = %do.cond113
  br label %if.end115

if.end115:                                        ; preds = %do.end114, %do.end103
  br label %do.cond116

do.cond116:                                       ; preds = %if.end115
  br label %do.end117

do.end117:                                        ; preds = %do.cond116
  br label %do.body118

do.body118:                                       ; preds = %do.end117
  %5 = load i32, ptr %key.addr, align 4, !tbaa !9
  %6 = load ptr, ptr %exported, align 8, !tbaa !5
  %7 = load i64, ptr %exported_size, align 8, !tbaa !11
  %call119 = call i32 @psa_export_public_key(i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %exported_length)
  %conv120 = sext i32 %call119 to i64
  %call121 = call i32 @mbedtls_test_equal(ptr noundef @.str.74, i32 noundef 919, ptr noundef @.str.1, i64 noundef %conv120, i64 noundef -135)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %do.body118
  br label %exit

if.end124:                                        ; preds = %do.body118
  br label %do.cond125

do.cond125:                                       ; preds = %if.end124
  br label %do.end126

do.end126:                                        ; preds = %do.cond125
  store i32 1, ptr %ok, align 4, !tbaa !9
  br label %exit

if.end127:                                        ; preds = %do.end
  %call128 = call zeroext i16 @psa_get_key_type(ptr noundef %attributes)
  %conv129 = zext i16 %call128 to i32
  %and130 = and i32 %conv129, -12289
  %conv131 = trunc i32 %and130 to i16
  store i16 %conv131, ptr %public_type, align 2, !tbaa !13
  %8 = load i16, ptr %public_type, align 2, !tbaa !13
  %conv132 = zext i16 %8 to i32
  %and133 = and i32 %conv132, -12289
  %cmp134 = icmp eq i32 %and133, 16385
  br i1 %cmp134, label %cond.true136, label %cond.false141

cond.true136:                                     ; preds = %if.end127
  %call137 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %div138 = udiv i64 %call137, 8
  %add139 = add i64 %div138, 5
  %add140 = add i64 %add139, 11
  br label %cond.end156

cond.false141:                                    ; preds = %if.end127
  %9 = load i16, ptr %public_type, align 2, !tbaa !13
  %conv142 = zext i16 %9 to i32
  %and143 = and i32 %conv142, -12289
  %and144 = and i32 %and143, -256
  %cmp145 = icmp eq i32 %and144, 16640
  br i1 %cmp145, label %cond.true147, label %cond.false153

cond.true147:                                     ; preds = %cond.false141
  %call148 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %add149 = add i64 %call148, 7
  %div150 = udiv i64 %add149, 8
  %mul151 = mul i64 2, %div150
  %add152 = add i64 %mul151, 1
  br label %cond.end154

cond.false153:                                    ; preds = %cond.false141
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false153, %cond.true147
  %cond155 = phi i64 [ %add152, %cond.true147 ], [ 0, %cond.false153 ]
  br label %cond.end156

cond.end156:                                      ; preds = %cond.end154, %cond.true136
  %cond157 = phi i64 [ %add140, %cond.true136 ], [ %cond155, %cond.end154 ]
  store i64 %cond157, ptr %exported_size, align 8, !tbaa !11
  br label %do.body158

do.body158:                                       ; preds = %cond.end156
  br label %do.body159

do.body159:                                       ; preds = %do.body158
  %10 = load ptr, ptr %exported, align 8, !tbaa !5
  %cmp160 = icmp eq ptr %10, null
  br i1 %cmp160, label %if.end163, label %if.then162

if.then162:                                       ; preds = %do.body159
  call void @mbedtls_test_fail(ptr noundef @.str.70, i32 noundef 928, ptr noundef @.str.1)
  br label %exit

if.end163:                                        ; preds = %do.body159
  br label %do.cond164

do.cond164:                                       ; preds = %if.end163
  br label %do.end165

do.end165:                                        ; preds = %do.cond164
  %11 = load i64, ptr %exported_size, align 8, !tbaa !11
  %cmp166 = icmp ne i64 %11, 0
  br i1 %cmp166, label %if.then168, label %if.end177

if.then168:                                       ; preds = %do.end165
  %12 = load i64, ptr %exported_size, align 8, !tbaa !11
  %call169 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %12) #9
  store ptr %call169, ptr %exported, align 8, !tbaa !5
  br label %do.body170

do.body170:                                       ; preds = %if.then168
  %13 = load ptr, ptr %exported, align 8, !tbaa !5
  %cmp171 = icmp ne ptr %13, null
  br i1 %cmp171, label %if.end174, label %if.then173

if.then173:                                       ; preds = %do.body170
  call void @mbedtls_test_fail(ptr noundef @.str.71, i32 noundef 928, ptr noundef @.str.1)
  br label %exit

if.end174:                                        ; preds = %do.body170
  br label %do.cond175

do.cond175:                                       ; preds = %if.end174
  br label %do.end176

do.end176:                                        ; preds = %do.cond175
  br label %if.end177

if.end177:                                        ; preds = %do.end176, %do.end165
  br label %do.cond178

do.cond178:                                       ; preds = %if.end177
  br label %do.end179

do.end179:                                        ; preds = %do.cond178
  br label %do.body180

do.body180:                                       ; preds = %do.end179
  %14 = load i32, ptr %key.addr, align 4, !tbaa !9
  %15 = load ptr, ptr %exported, align 8, !tbaa !5
  %16 = load i64, ptr %exported_size, align 8, !tbaa !11
  %call181 = call i32 @psa_export_public_key(i32 noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %exported_length)
  %conv182 = sext i32 %call181 to i64
  %call183 = call i32 @mbedtls_test_equal(ptr noundef @.str.75, i32 noundef 932, ptr noundef @.str.1, i64 noundef %conv182, i64 noundef 0)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.end186, label %if.then185

if.then185:                                       ; preds = %do.body180
  br label %exit

if.end186:                                        ; preds = %do.body180
  br label %do.cond187

do.cond187:                                       ; preds = %if.end186
  br label %do.end188

do.end188:                                        ; preds = %do.cond187
  %17 = load i16, ptr %public_type, align 2, !tbaa !13
  %call189 = call i64 @psa_get_key_bits(ptr noundef %attributes)
  %18 = load ptr, ptr %exported, align 8, !tbaa !5
  %19 = load i64, ptr %exported_length, align 8, !tbaa !11
  %call190 = call i32 @mbedtls_test_psa_exported_key_sanity_check(i16 noundef zeroext %17, i64 noundef %call189, ptr noundef %18, i64 noundef %19)
  store i32 %call190, ptr %ok, align 4, !tbaa !9
  br label %exit

exit:                                             ; preds = %do.end188, %if.then185, %if.then173, %if.then162, %do.end126, %if.then123, %if.then111, %if.then100, %if.then
  call void @psa_reset_key_attributes(ptr noundef %attributes)
  %20 = load ptr, ptr %exported, align 8, !tbaa !5
  call void @free(ptr noundef %20) #8
  %21 = load i32, ptr %ok, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %exported_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %exported_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %exported) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %public_type) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %attributes) #8
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_test_psa_usage_to_exercise(i16 noundef zeroext %type, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i16, align 2
  %alg.addr = alloca i32, align 4
  store i16 %type, ptr %type.addr, align 2, !tbaa !13
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  %0 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and = and i32 %0, 2130706432
  %cmp = icmp eq i32 %and, 50331648
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and1 = and i32 %1, 2130706432
  %cmp2 = icmp eq i32 %and1, 100663296
  br i1 %cmp2, label %if.then, label %if.else90

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and3 = and i32 %2, -256
  %cmp4 = icmp eq i32 %and3, 100664064
  br i1 %cmp4, label %if.then22, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.then
  %3 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and6 = and i32 %3, -256
  %cmp7 = icmp eq i32 %and6, 100668160
  br i1 %cmp7, label %if.then22, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %4 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and9 = and i32 %4, -256
  %cmp10 = icmp eq i32 %and9, 100663808
  br i1 %cmp10, label %if.then22, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %5 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and12 = and i32 %5, -256
  %and13 = and i32 %and12, -257
  %cmp14 = icmp eq i32 %and13, 100664832
  br i1 %cmp14, label %if.then22, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %6 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and16 = and i32 %6, -256
  %cmp17 = icmp eq i32 %and16, 100665600
  br i1 %cmp17, label %if.then22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %7 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and19 = and i32 %7, -256
  %and20 = and i32 %and19, -257
  %cmp21 = icmp eq i32 %and20, 100664320
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %if.then
  %8 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and23 = and i32 %8, -256
  %cmp24 = icmp eq i32 %and23, 100664064
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.then22
  %9 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and26 = and i32 %9, -256
  %cmp27 = icmp eq i32 %and26, 100668160
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %10 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and29 = and i32 %10, -256
  %cmp30 = icmp eq i32 %and29, 100663808
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %11 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and32 = and i32 %11, -256
  %and33 = and i32 %and32, -257
  %cmp34 = icmp eq i32 %and33, 100664832
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %12 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and36 = and i32 %12, -256
  %cmp37 = icmp eq i32 %and36, 100665600
  br i1 %cmp37, label %land.lhs.true, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %13 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and39 = and i32 %13, -256
  %and40 = and i32 %and39, -257
  %cmp41 = icmp eq i32 %and40, 100664320
  br i1 %cmp41, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false38, %lor.lhs.false35, %lor.lhs.false31, %lor.lhs.false28, %lor.lhs.false25, %if.then22
  %14 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and42 = and i32 %14, 255
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %15 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and44 = and i32 %15, 255
  %or = or i32 %and44, 33554432
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then45, label %if.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false38
  br i1 false, label %if.then45, label %if.end

if.then45:                                        ; preds = %cond.false, %cond.true
  %16 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv = zext i16 %16 to i32
  %and46 = and i32 %conv, 28672
  %cmp47 = icmp eq i32 %and46, 16384
  %17 = zext i1 %cmp47 to i64
  %cond = select i1 %cmp47, i32 10240, i32 15360
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  br label %if.end84

if.else:                                          ; preds = %lor.lhs.false18
  %18 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and49 = and i32 %18, -256
  %cmp50 = icmp eq i32 %and49, 100664064
  br i1 %cmp50, label %if.then77, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.else
  %19 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and53 = and i32 %19, -256
  %cmp54 = icmp eq i32 %and53, 100668160
  br i1 %cmp54, label %if.then77, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %20 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and57 = and i32 %20, -256
  %cmp58 = icmp eq i32 %and57, 100663808
  br i1 %cmp58, label %if.then77, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %21 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and61 = and i32 %21, -256
  %and62 = and i32 %and61, -257
  %cmp63 = icmp eq i32 %and62, 100664832
  br i1 %cmp63, label %if.then77, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false60
  %22 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and66 = and i32 %22, -256
  %cmp67 = icmp eq i32 %and66, 100665600
  br i1 %cmp67, label %if.then77, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %23 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and70 = and i32 %23, -256
  %and71 = and i32 %and70, -257
  %cmp72 = icmp eq i32 %and71, 100664320
  br i1 %cmp72, label %if.then77, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false69
  %24 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp75 = icmp eq i32 %24, 100665344
  br i1 %cmp75, label %if.then77, label %if.end83

if.then77:                                        ; preds = %lor.lhs.false74, %lor.lhs.false69, %lor.lhs.false65, %lor.lhs.false60, %lor.lhs.false56, %lor.lhs.false52, %if.else
  %25 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv78 = zext i16 %25 to i32
  %and79 = and i32 %conv78, 28672
  %cmp80 = icmp eq i32 %and79, 16384
  %26 = zext i1 %cmp80 to i64
  %cond82 = select i1 %cmp80, i32 2048, i32 3072
  store i32 %cond82, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %lor.lhs.false74
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end
  %27 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv85 = zext i16 %27 to i32
  %and86 = and i32 %conv85, 28672
  %cmp87 = icmp eq i32 %and86, 16384
  %28 = zext i1 %cmp87 to i64
  %cond89 = select i1 %cmp87, i32 8192, i32 12288
  store i32 %cond89, ptr %retval, align 4
  br label %return

if.else90:                                        ; preds = %lor.lhs.false
  %29 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and91 = and i32 %29, 2130706432
  %cmp92 = icmp eq i32 %and91, 67108864
  br i1 %cmp92, label %if.then102, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.else90
  %30 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and95 = and i32 %30, 2130706432
  %cmp96 = icmp eq i32 %and95, 83886080
  br i1 %cmp96, label %if.then102, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false94
  %31 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and99 = and i32 %31, 2130706432
  %cmp100 = icmp eq i32 %and99, 117440512
  br i1 %cmp100, label %if.then102, label %if.else108

if.then102:                                       ; preds = %lor.lhs.false98, %lor.lhs.false94, %if.else90
  %32 = load i16, ptr %type.addr, align 2, !tbaa !13
  %conv103 = zext i16 %32 to i32
  %and104 = and i32 %conv103, 28672
  %cmp105 = icmp eq i32 %and104, 16384
  %33 = zext i1 %cmp105 to i64
  %cond107 = select i1 %cmp105, i32 256, i32 768
  store i32 %cond107, ptr %retval, align 4
  br label %return

if.else108:                                       ; preds = %lor.lhs.false98
  %34 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and109 = and i32 %34, 2130706432
  %cmp110 = icmp eq i32 %and109, 134217728
  br i1 %cmp110, label %if.then116, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %if.else108
  %35 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %and113 = and i32 %35, 2130706432
  %cmp114 = icmp eq i32 %and113, 150994944
  br i1 %cmp114, label %if.then116, label %if.else117

if.then116:                                       ; preds = %lor.lhs.false112, %if.else108
  store i32 16384, ptr %retval, align 4
  br label %return

if.else117:                                       ; preds = %lor.lhs.false112
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else117, %if.then116, %if.then102, %if.end84, %if.then77, %if.then45
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_get_key_lifetime(ptr noundef %attributes) #4 {
entry:
  %attributes.addr = alloca ptr, align 8
  store ptr %attributes, ptr %attributes.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %attributes.addr, align 8, !tbaa !5
  %core = getelementptr inbounds %struct.psa_key_attributes_s, ptr %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %core, i32 0, i32 2
  %1 = load i32, ptr %lifetime, align 4, !tbaa !24
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_get_key_id(ptr noundef %attributes) #4 {
entry:
  %attributes.addr = alloca ptr, align 8
  store ptr %attributes, ptr %attributes.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %attributes.addr, align 8, !tbaa !5
  %core = getelementptr inbounds %struct.psa_key_attributes_s, ptr %0, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %core, i32 0, i32 3
  %1 = load i32, ptr %id, align 8, !tbaa !25
  ret i32 %1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare i32 @psa_mac_sign_setup(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @psa_mac_update(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @psa_mac_sign_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_mac_verify_setup(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @psa_mac_verify_finish(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @psa_mac_abort(ptr noundef) #1

declare i32 @psa_cipher_encrypt_setup(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @psa_cipher_generate_iv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_cipher_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_cipher_decrypt_setup(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @psa_cipher_set_iv(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @psa_cipher_abort(ptr noundef) #1

declare i32 @psa_aead_encrypt(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_aead_decrypt(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_sign_hash(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_verify_hash(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @can_sign_or_verify_message(i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store i32 %usage, ptr %usage.addr, align 4, !tbaa !9
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !9
  %0 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %0, 100664832
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %alg.addr, align 4, !tbaa !9
  %cmp1 = icmp eq i32 %1, 100663808
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %usage.addr, align 4, !tbaa !9
  %and = and i32 %2, 3072
  store i32 %and, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @psa_sign_message(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_verify_message(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare i32 @psa_asymmetric_encrypt(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_asymmetric_decrypt(i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @psa_key_derivation_output_bytes(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @psa_key_derivation_abort(ptr noundef) #1

declare i32 @psa_export_key(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"psa_key_attributes_s", !17, i64 0, !6, i64 32, !12, i64 40}
!17 = !{!"", !14, i64 0, !14, i64 2, !10, i64 4, !10, i64 8, !18, i64 12, !14, i64 24}
!18 = !{!"psa_key_policy_s", !10, i64 0, !10, i64 4, !10, i64 8}
!19 = !{!16, !14, i64 2}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!16, !10, i64 4}
!25 = !{!16, !10, i64 8}

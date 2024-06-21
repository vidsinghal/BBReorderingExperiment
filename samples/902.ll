; ModuleID = 'samples/902.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.s2n_ecc_named_curve = type { i16, i32, ptr, i8, ptr }
%struct.s2n_kem_group = type { ptr, i16, ptr, ptr }

@hello_retry_req_random = hidden global [32 x i8] c"\CF!\ADt\E5\9Aa\11\BE\1D\8C\02\1Ee\B8\91\C2\A2\11\16z\BB\8C^\07\9E\09\E2\C8\A83\9C", align 16
@.str = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:38\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:40\00", align 1
@.str.2 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:53\00", align 1
@.str.3 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:60\00", align 1
@.str.4 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:61\00", align 1
@.str.5 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:65\00", align 1
@.str.6 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:69\00", align 1
@.str.7 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:75\00", align 1
@.str.8 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:105\00", align 1
@.str.9 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:120\00", align 1
@.str.10 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:121\00", align 1
@.str.11 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_server_hello_retry.c:127\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_server_hello_retry_send(ptr noundef %conn) #0 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %__tmp_n = alloca i32, align 4
  %r = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__tmp_n66 = alloca i64, align 8
  %__tmp_d = alloca ptr, align 8
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
  store ptr @.str, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %__tmp_n) #8
  store i32 32, ptr %__tmp_n, align 4, !tbaa !8
  %3 = load i32, ptr %__tmp_n, align 4, !tbaa !8
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  %lnot8 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool9 = icmp ne i64 %expval, 0
  br i1 %tobool9, label %if.then10, label %if.end22

if.then10:                                        ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8
  %4 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %handshake_params = getelementptr inbounds %struct.s2n_connection, ptr %4, i32 0, i32 32
  %server_random = getelementptr inbounds %struct.s2n_handshake_parameters, ptr %handshake_params, i32 0, i32 14
  %arraydecay = getelementptr inbounds [32 x i8], ptr %server_random, i64 0, i64 0
  %5 = load i32, ptr %__tmp_n, align 4, !tbaa !8
  %conv11 = sext i32 %5 to i64
  %call12 = call ptr @s2n_ensure_memcpy_trace(ptr noundef %arraydecay, ptr noundef @hello_retry_req_random, i64 noundef %conv11, ptr noundef @.str.1)
  store ptr %call12, ptr %r, align 8, !tbaa !4
  br label %do.body13

do.body13:                                        ; preds = %if.then10
  %6 = load ptr, ptr %r, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %6, null
  br i1 %cmp14, label %if.end19, label %if.then16

if.then16:                                        ; preds = %do.body13
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end18

do.end18:                                         ; preds = %do.cond
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.body17
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end22

if.end22:                                         ; preds = %cleanup.cont, %do.body7
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %if.end22, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__tmp_n) #8
  %cleanup.dest24 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest24, label %unreachable [
    i32 0, label %cleanup.cont25
    i32 1, label %return
  ]

cleanup.cont25:                                   ; preds = %cleanup23
  br label %do.end27

do.end27:                                         ; preds = %cleanup.cont25
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call29 = call i32 @s2n_server_hello_write_message(ptr noundef %7)
  %cmp30 = icmp sgt i32 %call29, -1
  br i1 %cmp30, label %if.end36, label %if.then32

if.then32:                                        ; preds = %do.body28
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  store i32 -1, ptr %retval, align 4
  br label %return

do.end35:                                         ; No predecessors!
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %do.body28
  br label %do.end38

do.end38:                                         ; preds = %if.end36
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %8 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %handshake = getelementptr inbounds %struct.s2n_connection, ptr %9, i32 0, i32 51
  %io = getelementptr inbounds %struct.s2n_handshake, ptr %handshake, i32 0, i32 0
  %call40 = call i32 @s2n_server_extensions_send(ptr noundef %8, ptr noundef %io)
  %cmp41 = icmp sgt i32 %call40, -1
  br i1 %cmp41, label %if.end47, label %if.then43

if.then43:                                        ; preds = %do.body39
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  store i32 -1, ptr %retval, align 4
  br label %return

do.end46:                                         ; No predecessors!
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %do.body39
  br label %do.end49

do.end49:                                         ; preds = %if.end47
  br label %do.body50

do.body50:                                        ; preds = %do.end49
  %10 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call51 = call i32 @s2n_server_hello_retry_recreate_transcript(ptr noundef %10)
  %cmp52 = icmp sgt i32 %call51, -1
  br i1 %cmp52, label %if.end58, label %if.then54

if.then54:                                        ; preds = %do.body50
  br label %do.body55

do.body55:                                        ; preds = %if.then54
  store i32 -1, ptr %retval, align 4
  br label %return

do.end57:                                         ; No predecessors!
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.body50
  br label %do.end60

do.end60:                                         ; preds = %if.end58
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %handshake61 = getelementptr inbounds %struct.s2n_connection, ptr %11, i32 0, i32 51
  %client_hello_received = getelementptr inbounds %struct.s2n_handshake, ptr %handshake61, i32 0, i32 11
  %bf.load = load i8, ptr %client_hello_received, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %client_hello_received, align 8
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %client_hello = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 70
  %parsed = getelementptr inbounds %struct.s2n_client_hello, ptr %client_hello, i32 0, i32 4
  %bf.load62 = load i8, ptr %parsed, align 8
  %bf.clear63 = and i8 %bf.load62, -9
  %bf.set64 = or i8 %bf.clear63, 0
  store i8 %bf.set64, ptr %parsed, align 8
  br label %do.body65

do.body65:                                        ; preds = %do.end60
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp_n66) #8
  store i64 21, ptr %__tmp_n66, align 8, !tbaa !10
  %13 = load i64, ptr %__tmp_n66, align 8, !tbaa !10
  %tobool67 = icmp ne i64 %13, 0
  %lnot68 = xor i1 %tobool67, true
  %lnot70 = xor i1 %lnot68, true
  %lnot.ext71 = zext i1 %lnot70 to i32
  %conv72 = sext i32 %lnot.ext71 to i64
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 1)
  %tobool74 = icmp ne i64 %expval73, 0
  br i1 %tobool74, label %if.then75, label %if.end98

if.then75:                                        ; preds = %do.body65
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp_d) #8
  %14 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %extension_requests_received = getelementptr inbounds %struct.s2n_connection, ptr %14, i32 0, i32 11
  %arraydecay76 = getelementptr inbounds [21 x i8], ptr %extension_requests_received, i64 0, i64 0
  store ptr %arraydecay76, ptr %__tmp_d, align 8, !tbaa !4
  br label %do.body77

do.body77:                                        ; preds = %if.then75
  %15 = load ptr, ptr %__tmp_d, align 8, !tbaa !4
  %cmp78 = icmp ne ptr %15, null
  br i1 %cmp78, label %if.end91, label %if.then80

if.then80:                                        ; preds = %do.body77
  br label %do.body81

do.body81:                                        ; preds = %if.then80
  br label %do.body82

do.body82:                                        ; preds = %do.body81
  %16 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.2, ptr %16, align 8, !tbaa !4
  %17 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %17, align 4, !tbaa !8
  %call83 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond84

do.cond84:                                        ; preds = %do.body82
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

do.cond87:                                        ; No predecessors!
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  br label %do.cond89

do.cond89:                                        ; preds = %do.end88
  br label %do.end90

do.end90:                                         ; preds = %do.cond89
  br label %if.end91

if.end91:                                         ; preds = %do.end90, %do.body77
  br label %do.cond92

do.cond92:                                        ; preds = %if.end91
  br label %do.end93

do.end93:                                         ; preds = %do.cond92
  %18 = load ptr, ptr %__tmp_d, align 8, !tbaa !4
  %19 = load i64, ptr %__tmp_n66, align 8, !tbaa !10
  %call94 = call ptr @memset.inline(ptr noundef %18, i32 noundef 0, i64 noundef %19) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

cleanup95:                                        ; preds = %do.end93, %do.body86
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp_d) #8
  %cleanup.dest96 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest96, label %cleanup99 [
    i32 0, label %cleanup.cont97
  ]

cleanup.cont97:                                   ; preds = %cleanup95
  br label %if.end98

if.end98:                                         ; preds = %cleanup.cont97, %do.body65
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %if.end98, %cleanup95
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp_n66) #8
  %cleanup.dest100 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest100, label %unreachable [
    i32 0, label %cleanup.cont101
    i32 1, label %return
  ]

cleanup.cont101:                                  ; preds = %cleanup99
  br label %do.end103

do.end103:                                        ; preds = %cleanup.cont101
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end103, %cleanup99, %do.body55, %do.body44, %do.body33, %cleanup23, %do.body3
  %20 = load i32, ptr %retval, align 4
  ret i32 %20

unreachable:                                      ; preds = %cleanup99, %cleanup23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

declare i32 @s2n_calculate_stacktrace() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

declare ptr @s2n_ensure_memcpy_trace(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @s2n_server_hello_write_message(ptr noundef) #2

declare i32 @s2n_server_extensions_send(ptr noundef, ptr noundef) #2

declare i32 @s2n_server_hello_retry_recreate_transcript(ptr noundef) #2

; Function Attrs: alwaysinline nobuiltin nounwind uwtable
declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: alwaysinline nounwind
define internal ptr @memset.inline(ptr nonnull %__dest, i32 %__ch, i64 %__len) #6 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__ch.addr = alloca i32, align 4
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8, !tbaa !4
  store i32 %__ch, ptr %__ch.addr, align 4, !tbaa !8
  store i64 %__len, ptr %__len.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %__dest.addr, align 8, !tbaa !4
  %1 = load i32, ptr %__ch.addr, align 4, !tbaa !8
  %2 = load i64, ptr %__len.addr, align 8, !tbaa !10
  %3 = load ptr, ptr %__dest.addr, align 8, !tbaa !4
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %4) #8
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_server_hello_retry_recv(ptr noundef %conn) #0 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %ecc_pref = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %kem_pref = alloca ptr, align 8
  %named_curve = alloca ptr, align 8
  %kem_group = alloca ptr, align 8
  %selected_group_in_supported_groups = alloca i8, align 1
  %new_key_share_requested = alloca i8, align 1
  %__tmp_n = alloca i64, align 8
  %__tmp_d = alloca ptr, align 8
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
  store i32 402653193, ptr %2, align 4, !tbaa !8
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
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %actual_protocol_version = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 23
  %4 = load i8, ptr %actual_protocol_version, align 4, !tbaa !12
  %conv = zext i8 %4 to i32
  %cmp8 = icmp sge i32 %conv, 34
  br i1 %cmp8, label %if.end18, label %if.then10

if.then10:                                        ; preds = %do.body7
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.body12

do.body12:                                        ; preds = %do.body11
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.4, ptr %5, align 8, !tbaa !4
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544343, ptr %6, align 4, !tbaa !8
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

if.end18:                                         ; preds = %do.end17, %do.body7
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecc_pref) #8
  store ptr null, ptr %ecc_pref, align 8, !tbaa !4
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call21 = call i32 @s2n_connection_get_ecc_preferences(ptr noundef %7, ptr noundef %ecc_pref)
  %cmp22 = icmp sgt i32 %call21, -1
  br i1 %cmp22, label %if.end27, label %if.then24

if.then24:                                        ; preds = %do.body20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

do.cond:                                          ; No predecessors!
  br label %do.end26

do.end26:                                         ; preds = %do.cond
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %do.body20
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %8 = load ptr, ptr %ecc_pref, align 8, !tbaa !4
  %cmp31 = icmp ne ptr %8, null
  br i1 %cmp31, label %if.end44, label %if.then33

if.then33:                                        ; preds = %do.body30
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  br label %do.body35

do.body35:                                        ; preds = %do.body34
  %9 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.5, ptr %9, align 8, !tbaa !4
  %10 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %10, align 4, !tbaa !8
  %call36 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond37

do.cond37:                                        ; preds = %do.body35
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

do.cond40:                                        ; No predecessors!
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42

do.cond42:                                        ; preds = %do.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %do.body30
  br label %do.cond45

do.cond45:                                        ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  call void @llvm.lifetime.start.p0(i64 8, ptr %kem_pref) #8
  store ptr null, ptr %kem_pref, align 8, !tbaa !4
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call48 = call i32 @s2n_connection_get_kem_preferences(ptr noundef %11, ptr noundef %kem_pref)
  %cmp49 = icmp sgt i32 %call48, -1
  br i1 %cmp49, label %if.end55, label %if.then51

if.then51:                                        ; preds = %do.body47
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup221

do.cond53:                                        ; No predecessors!
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %do.body47
  br label %do.cond56

do.cond56:                                        ; preds = %if.end55
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  br label %do.body58

do.body58:                                        ; preds = %do.end57
  %12 = load ptr, ptr %kem_pref, align 8, !tbaa !4
  %cmp59 = icmp ne ptr %12, null
  br i1 %cmp59, label %if.end72, label %if.then61

if.then61:                                        ; preds = %do.body58
  br label %do.body62

do.body62:                                        ; preds = %if.then61
  br label %do.body63

do.body63:                                        ; preds = %do.body62
  %13 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.6, ptr %13, align 8, !tbaa !4
  %14 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %14, align 4, !tbaa !8
  %call64 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond65

do.cond65:                                        ; preds = %do.body63
  br label %do.end66

do.end66:                                         ; preds = %do.cond65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup221

do.cond68:                                        ; No predecessors!
  br label %do.end69

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70

do.cond70:                                        ; preds = %do.end69
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %do.body58
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  call void @llvm.lifetime.start.p0(i64 8, ptr %named_curve) #8
  %15 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %kex_params = getelementptr inbounds %struct.s2n_connection, ptr %15, i32 0, i32 31
  %server_ecc_evp_params = getelementptr inbounds %struct.s2n_kex_parameters, ptr %kex_params, i32 0, i32 1
  %negotiated_curve = getelementptr inbounds %struct.s2n_ecc_evp_params, ptr %server_ecc_evp_params, i32 0, i32 0
  %16 = load ptr, ptr %negotiated_curve, align 8, !tbaa !39
  store ptr %16, ptr %named_curve, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kem_group) #8
  %17 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %kex_params75 = getelementptr inbounds %struct.s2n_connection, ptr %17, i32 0, i32 31
  %server_kem_group_params = getelementptr inbounds %struct.s2n_kex_parameters, ptr %kex_params75, i32 0, i32 4
  %kem_group76 = getelementptr inbounds %struct.s2n_kem_group_params, ptr %server_kem_group_params, i32 0, i32 0
  %18 = load ptr, ptr %kem_group76, align 8, !tbaa !40
  store ptr %18, ptr %kem_group, align 8, !tbaa !4
  br label %do.body77

do.body77:                                        ; preds = %do.end74
  %19 = load ptr, ptr %named_curve, align 8, !tbaa !4
  %cmp78 = icmp ne ptr %19, null
  %conv79 = zext i1 %cmp78 to i32
  %20 = load ptr, ptr %kem_group, align 8, !tbaa !4
  %cmp80 = icmp ne ptr %20, null
  %conv81 = zext i1 %cmp80 to i32
  %cmp82 = icmp ne i32 %conv79, %conv81
  br i1 %cmp82, label %if.end95, label %if.then84

if.then84:                                        ; preds = %do.body77
  br label %do.body85

do.body85:                                        ; preds = %if.then84
  br label %do.body86

do.body86:                                        ; preds = %do.body85
  %21 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.7, ptr %21, align 8, !tbaa !4
  %22 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544343, ptr %22, align 4, !tbaa !8
  %call87 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond88

do.cond88:                                        ; preds = %do.body86
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup219

do.cond91:                                        ; No predecessors!
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  br label %do.cond93

do.cond93:                                        ; preds = %do.end92
  br label %do.end94

do.end94:                                         ; preds = %do.cond93
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %do.body77
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  call void @llvm.lifetime.start.p0(i64 1, ptr %selected_group_in_supported_groups) #8
  store i8 0, ptr %selected_group_in_supported_groups, align 1, !tbaa !41
  %23 = load ptr, ptr %named_curve, align 8, !tbaa !4
  %cmp98 = icmp ne ptr %23, null
  br i1 %cmp98, label %land.lhs.true, label %if.end103

land.lhs.true:                                    ; preds = %do.end97
  %24 = load ptr, ptr %ecc_pref, align 8, !tbaa !4
  %25 = load ptr, ptr %named_curve, align 8, !tbaa !4
  %iana_id = getelementptr inbounds %struct.s2n_ecc_named_curve, ptr %25, i32 0, i32 0
  %26 = load i16, ptr %iana_id, align 8, !tbaa !42
  %call100 = call zeroext i1 @s2n_ecc_preferences_includes_curve(ptr noundef %24, i16 noundef zeroext %26)
  br i1 %call100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %land.lhs.true
  store i8 1, ptr %selected_group_in_supported_groups, align 1, !tbaa !41
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %land.lhs.true, %do.end97
  %27 = load ptr, ptr %kem_group, align 8, !tbaa !4
  %cmp104 = icmp ne ptr %27, null
  br i1 %cmp104, label %land.lhs.true106, label %if.end111

land.lhs.true106:                                 ; preds = %if.end103
  %28 = load ptr, ptr %kem_pref, align 8, !tbaa !4
  %29 = load ptr, ptr %kem_group, align 8, !tbaa !4
  %iana_id107 = getelementptr inbounds %struct.s2n_kem_group, ptr %29, i32 0, i32 1
  %30 = load i16, ptr %iana_id107, align 8, !tbaa !44
  %call108 = call zeroext i1 @s2n_kem_preferences_includes_tls13_kem_group(ptr noundef %28, i16 noundef zeroext %30)
  br i1 %call108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %land.lhs.true106
  store i8 1, ptr %selected_group_in_supported_groups, align 1, !tbaa !41
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %land.lhs.true106, %if.end103
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_key_share_requested) #8
  store i8 0, ptr %new_key_share_requested, align 1, !tbaa !41
  %31 = load ptr, ptr %named_curve, align 8, !tbaa !4
  %cmp112 = icmp ne ptr %31, null
  br i1 %cmp112, label %if.then114, label %if.end119

if.then114:                                       ; preds = %if.end111
  %32 = load ptr, ptr %named_curve, align 8, !tbaa !4
  %33 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %kex_params115 = getelementptr inbounds %struct.s2n_connection, ptr %33, i32 0, i32 31
  %client_ecc_evp_params = getelementptr inbounds %struct.s2n_kex_parameters, ptr %kex_params115, i32 0, i32 3
  %negotiated_curve116 = getelementptr inbounds %struct.s2n_ecc_evp_params, ptr %client_ecc_evp_params, i32 0, i32 0
  %34 = load ptr, ptr %negotiated_curve116, align 8, !tbaa !46
  %cmp117 = icmp ne ptr %32, %34
  %frombool = zext i1 %cmp117 to i8
  store i8 %frombool, ptr %new_key_share_requested, align 1, !tbaa !41
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end111
  %35 = load ptr, ptr %kem_group, align 8, !tbaa !4
  %cmp120 = icmp ne ptr %35, null
  br i1 %cmp120, label %if.then122, label %if.end144

if.then122:                                       ; preds = %if.end119
  br label %do.body123

do.body123:                                       ; preds = %if.then122
  %call124 = call zeroext i1 @s2n_pq_is_enabled()
  br i1 %call124, label %if.end136, label %if.then125

if.then125:                                       ; preds = %do.body123
  br label %do.body126

do.body126:                                       ; preds = %if.then125
  br label %do.body127

do.body127:                                       ; preds = %do.body126
  %36 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.8, ptr %36, align 8, !tbaa !4
  %37 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653262, ptr %37, align 4, !tbaa !8
  %call128 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond129

do.cond129:                                       ; preds = %do.body127
  br label %do.end130

do.end130:                                        ; preds = %do.cond129
  br label %do.body131

do.body131:                                       ; preds = %do.end130
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217

do.cond132:                                       ; No predecessors!
  br label %do.end133

do.end133:                                        ; preds = %do.cond132
  br label %do.cond134

do.cond134:                                       ; preds = %do.end133
  br label %do.end135

do.end135:                                        ; preds = %do.cond134
  br label %if.end136

if.end136:                                        ; preds = %do.end135, %do.body123
  br label %do.cond137

do.cond137:                                       ; preds = %if.end136
  br label %do.end138

do.end138:                                        ; preds = %do.cond137
  %38 = load ptr, ptr %kem_group, align 8, !tbaa !4
  %39 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %kex_params139 = getelementptr inbounds %struct.s2n_connection, ptr %39, i32 0, i32 31
  %client_kem_group_params = getelementptr inbounds %struct.s2n_kex_parameters, ptr %kex_params139, i32 0, i32 5
  %kem_group140 = getelementptr inbounds %struct.s2n_kem_group_params, ptr %client_kem_group_params, i32 0, i32 0
  %40 = load ptr, ptr %kem_group140, align 8, !tbaa !47
  %cmp141 = icmp ne ptr %38, %40
  %frombool143 = zext i1 %cmp141 to i8
  store i8 %frombool143, ptr %new_key_share_requested, align 1, !tbaa !41
  br label %if.end144

if.end144:                                        ; preds = %do.end138, %if.end119
  br label %do.body145

do.body145:                                       ; preds = %if.end144
  %41 = load i8, ptr %new_key_share_requested, align 1, !tbaa !41, !range !48, !noundef !49
  %tobool = trunc i8 %41 to i1
  br i1 %tobool, label %if.end157, label %if.then146

if.then146:                                       ; preds = %do.body145
  br label %do.body147

do.body147:                                       ; preds = %if.then146
  br label %do.body148

do.body148:                                       ; preds = %do.body147
  %42 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.9, ptr %42, align 8, !tbaa !4
  %43 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544343, ptr %43, align 4, !tbaa !8
  %call149 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond150

do.cond150:                                       ; preds = %do.body148
  br label %do.end151

do.end151:                                        ; preds = %do.cond150
  br label %do.body152

do.body152:                                       ; preds = %do.end151
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217

do.cond153:                                       ; No predecessors!
  br label %do.end154

do.end154:                                        ; preds = %do.cond153
  br label %do.cond155

do.cond155:                                       ; preds = %do.end154
  br label %do.end156

do.end156:                                        ; preds = %do.cond155
  br label %if.end157

if.end157:                                        ; preds = %do.end156, %do.body145
  br label %do.cond158

do.cond158:                                       ; preds = %if.end157
  br label %do.end159

do.end159:                                        ; preds = %do.cond158
  br label %do.body160

do.body160:                                       ; preds = %do.end159
  %44 = load i8, ptr %selected_group_in_supported_groups, align 1, !tbaa !41, !range !48, !noundef !49
  %tobool161 = trunc i8 %44 to i1
  br i1 %tobool161, label %if.end173, label %if.then162

if.then162:                                       ; preds = %do.body160
  br label %do.body163

do.body163:                                       ; preds = %if.then162
  br label %do.body164

do.body164:                                       ; preds = %do.body163
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.10, ptr %45, align 8, !tbaa !4
  %46 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544343, ptr %46, align 4, !tbaa !8
  %call165 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond166

do.cond166:                                       ; preds = %do.body164
  br label %do.end167

do.end167:                                        ; preds = %do.cond166
  br label %do.body168

do.body168:                                       ; preds = %do.end167
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217

do.cond169:                                       ; No predecessors!
  br label %do.end170

do.end170:                                        ; preds = %do.cond169
  br label %do.cond171

do.cond171:                                       ; preds = %do.end170
  br label %do.end172

do.end172:                                        ; preds = %do.cond171
  br label %if.end173

if.end173:                                        ; preds = %do.end172, %do.body160
  br label %do.cond174

do.cond174:                                       ; preds = %if.end173
  br label %do.end175

do.end175:                                        ; preds = %do.cond174
  br label %do.body176

do.body176:                                       ; preds = %do.end175
  %47 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call177 = call i32 @s2n_server_hello_retry_recreate_transcript(ptr noundef %47)
  %cmp178 = icmp sgt i32 %call177, -1
  br i1 %cmp178, label %if.end184, label %if.then180

if.then180:                                       ; preds = %do.body176
  br label %do.body181

do.body181:                                       ; preds = %if.then180
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217

do.cond182:                                       ; No predecessors!
  br label %do.end183

do.end183:                                        ; preds = %do.cond182
  br label %if.end184

if.end184:                                        ; preds = %do.end183, %do.body176
  br label %do.cond185

do.cond185:                                       ; preds = %if.end184
  br label %do.end186

do.end186:                                        ; preds = %do.cond185
  br label %do.body187

do.body187:                                       ; preds = %do.end186
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp_n) #8
  store i64 21, ptr %__tmp_n, align 8, !tbaa !10
  %48 = load i64, ptr %__tmp_n, align 8, !tbaa !10
  %tobool188 = icmp ne i64 %48, 0
  %lnot = xor i1 %tobool188, true
  %lnot189 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot189 to i32
  %conv190 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv190, i64 1)
  %tobool191 = icmp ne i64 %expval, 0
  br i1 %tobool191, label %if.then192, label %if.end211

if.then192:                                       ; preds = %do.body187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp_d) #8
  %49 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %extension_requests_sent = getelementptr inbounds %struct.s2n_connection, ptr %49, i32 0, i32 10
  %arraydecay = getelementptr inbounds [21 x i8], ptr %extension_requests_sent, i64 0, i64 0
  store ptr %arraydecay, ptr %__tmp_d, align 8, !tbaa !4
  br label %do.body193

do.body193:                                       ; preds = %if.then192
  %50 = load ptr, ptr %__tmp_d, align 8, !tbaa !4
  %cmp194 = icmp ne ptr %50, null
  br i1 %cmp194, label %if.end207, label %if.then196

if.then196:                                       ; preds = %do.body193
  br label %do.body197

do.body197:                                       ; preds = %if.then196
  br label %do.body198

do.body198:                                       ; preds = %do.body197
  %51 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.11, ptr %51, align 8, !tbaa !4
  %52 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %52, align 4, !tbaa !8
  %call199 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond200

do.cond200:                                       ; preds = %do.body198
  br label %do.end201

do.end201:                                        ; preds = %do.cond200
  br label %do.body202

do.body202:                                       ; preds = %do.end201
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond203:                                       ; No predecessors!
  br label %do.end204

do.end204:                                        ; preds = %do.cond203
  br label %do.cond205

do.cond205:                                       ; preds = %do.end204
  br label %do.end206

do.end206:                                        ; preds = %do.cond205
  br label %if.end207

if.end207:                                        ; preds = %do.end206, %do.body193
  br label %do.cond208

do.cond208:                                       ; preds = %if.end207
  br label %do.end209

do.end209:                                        ; preds = %do.cond208
  %53 = load ptr, ptr %__tmp_d, align 8, !tbaa !4
  %54 = load i64, ptr %__tmp_n, align 8, !tbaa !10
  %call210 = call ptr @memset.inline(ptr noundef %53, i32 noundef 0, i64 noundef %54) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end209, %do.body202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp_d) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup212 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end211

if.end211:                                        ; preds = %cleanup.cont, %do.body187
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup212

cleanup212:                                       ; preds = %if.end211, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp_n) #8
  %cleanup.dest213 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest213, label %cleanup217 [
    i32 0, label %cleanup.cont214
  ]

cleanup.cont214:                                  ; preds = %cleanup212
  br label %do.cond215

do.cond215:                                       ; preds = %cleanup.cont214
  br label %do.end216

do.end216:                                        ; preds = %do.cond215
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup217

cleanup217:                                       ; preds = %do.end216, %cleanup212, %do.body181, %do.body168, %do.body152, %do.body131
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_key_share_requested) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %selected_group_in_supported_groups) #8
  br label %cleanup219

cleanup219:                                       ; preds = %cleanup217, %do.body90
  call void @llvm.lifetime.end.p0(i64 8, ptr %kem_group) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %named_curve) #8
  br label %cleanup221

cleanup221:                                       ; preds = %cleanup219, %do.body67, %do.body52
  call void @llvm.lifetime.end.p0(i64 8, ptr %kem_pref) #8
  br label %cleanup222

cleanup222:                                       ; preds = %cleanup221, %do.body39, %do.body25
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecc_pref) #8
  br label %return

return:                                           ; preds = %cleanup222, %do.body15, %do.body3
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

declare i32 @s2n_connection_get_ecc_preferences(ptr noundef, ptr noundef) #2

declare i32 @s2n_connection_get_kem_preferences(ptr noundef, ptr noundef) #2

declare zeroext i1 @s2n_ecc_preferences_includes_curve(ptr noundef, i16 noundef zeroext) #2

declare zeroext i1 @s2n_kem_preferences_includes_tls13_kem_group(ptr noundef, i16 noundef zeroext) #2

declare zeroext i1 @s2n_pq_is_enabled() #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline nobuiltin nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nounwind "min-legal-vector-width"="0" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !6, i64 212}
!13 = !{!"s2n_connection", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !6, i64 80, !6, i64 101, !6, i64 122, !6, i64 144, !6, i64 148, !14, i64 152, !11, i64 160, !11, i64 168, !6, i64 176, !6, i64 208, !6, i64 209, !6, i64 210, !6, i64 211, !6, i64 212, !6, i64 213, !6, i64 214, !5, i64 216, !5, i64 224, !15, i64 232, !5, i64 576, !5, i64 584, !16, i64 592, !23, i64 1040, !28, i64 1672, !5, i64 1736, !6, i64 1744, !6, i64 1748, !6, i64 1752, !30, i64 1760, !30, i64 1800, !30, i64 1840, !6, i64 1880, !11, i64 1888, !6, i64 1896, !30, i64 1904, !6, i64 1944, !6, i64 1945, !6, i64 1946, !22, i64 1947, !31, i64 1948, !31, i64 1952, !32, i64 1960, !27, i64 2152, !9, i64 2156, !27, i64 2160, !11, i64 2168, !6, i64 2176, !11, i64 2184, !11, i64 2192, !11, i64 2200, !31, i64 2208, !31, i64 2212, !6, i64 2216, !6, i64 2472, !6, i64 2728, !21, i64 2736, !6, i64 2760, !21, i64 2768, !21, i64 2792, !21, i64 2816, !34, i64 2840, !36, i64 3752, !5, i64 3800, !5, i64 3808, !6, i64 3816, !6, i64 3820, !21, i64 3824, !9, i64 3848, !37, i64 3856, !6, i64 3888, !30, i64 4000, !21, i64 4040, !21, i64 4064, !22, i64 4088, !22, i64 4089, !22, i64 4090, !27, i64 4092, !27, i64 4094, !6, i64 4096, !9, i64 4100, !21, i64 4104, !9, i64 4128, !38, i64 4136, !31, i64 4184}
!14 = !{!"s2n_timer", !11, i64 0}
!15 = !{!"s2n_secrets", !6, i64 0, !6, i64 340}
!16 = !{!"s2n_kex_parameters", !17, i64 0, !18, i64 8, !6, i64 24, !18, i64 56, !19, i64 72, !19, i64 184, !6, i64 296, !20, i64 312, !21, i64 400, !21, i64 424}
!17 = !{!"s2n_dh_params", !5, i64 0}
!18 = !{!"s2n_ecc_evp_params", !5, i64 0, !5, i64 8}
!19 = !{!"s2n_kem_group_params", !5, i64 0, !20, i64 8, !18, i64 96}
!20 = !{!"s2n_kem_params", !5, i64 0, !21, i64 8, !21, i64 32, !21, i64 56, !22, i64 80}
!21 = !{!"s2n_blob", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!22 = !{!"_Bool", !6, i64 0}
!23 = !{!"s2n_handshake_parameters", !24, i64 0, !24, i64 80, !21, i64 160, !6, i64 184, !25, i64 188, !26, i64 320, !25, i64 344, !26, i64 480, !5, i64 504, !6, i64 512, !6, i64 536, !6, i64 560, !6, i64 561, !6, i64 562, !6, i64 594}
!24 = !{!"s2n_pkey", !6, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!25 = !{!"s2n_sig_scheme_list", !6, i64 0, !6, i64 128}
!26 = !{!"s2n_signature_scheme", !27, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 13, !27, i64 14, !5, i64 16}
!27 = !{!"short", !6, i64 0}
!28 = !{!"s2n_psk_parameters", !6, i64 0, !29, i64 8, !27, i64 40, !27, i64 42, !5, i64 48, !6, i64 56}
!29 = !{!"s2n_array", !21, i64 0, !9, i64 24, !9, i64 28}
!30 = !{!"s2n_stuffer", !21, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 36, !9, i64 36}
!31 = !{!"", !9, i64 0}
!32 = !{!"s2n_handshake", !30, i64 0, !5, i64 40, !6, i64 48, !6, i64 56, !6, i64 104, !6, i64 152, !9, i64 156, !9, i64 160, !6, i64 164, !6, i64 168, !33, i64 176, !9, i64 184, !9, i64 184, !9, i64 184, !9, i64 184, !6, i64 188}
!33 = !{!"s2n_offered_early_data", !5, i64 0}
!34 = !{!"s2n_client_hello", !21, i64 0, !35, i64 24, !21, i64 856, !21, i64 880, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904}
!35 = !{!"", !6, i64 0, !21, i64 800, !27, i64 824}
!36 = !{!"s2n_x509_validator", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !27, i64 18, !5, i64 24, !9, i64 32, !5, i64 40}
!37 = !{!"s2n_ticket_fields", !21, i64 0, !9, i64 24}
!38 = !{!"s2n_post_handshake", !30, i64 0, !6, i64 40}
!39 = !{!13, !5, i64 600}
!40 = !{!13, !5, i64 664}
!41 = !{!22, !22, i64 0}
!42 = !{!43, !27, i64 0}
!43 = !{!"s2n_ecc_named_curve", !27, i64 0, !9, i64 4, !5, i64 8, !6, i64 16, !5, i64 24}
!44 = !{!45, !27, i64 8}
!45 = !{!"s2n_kem_group", !5, i64 0, !27, i64 8, !5, i64 16, !5, i64 24}
!46 = !{!13, !5, i64 648}
!47 = !{!13, !5, i64 776}
!48 = !{i8 0, i8 2}
!49 = !{}

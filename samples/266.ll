; ModuleID = 'samples/266.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_cert_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_extension_type = type { i16, i8, i16, ptr, ptr, ptr, ptr }
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
%struct.s2n_cert_chain_and_key = type { ptr, ptr, %struct.s2n_blob, %struct.s2n_blob, ptr, ptr, ptr }
%struct.s2n_result = type { i32 }

@s2n_cert_status_extension = hidden constant %struct.s2n_extension_type { i16 5, i8 1, i16 0, ptr @s2n_cert_status_send, ptr @s2n_cert_status_recv, ptr @s2n_cert_status_should_send, ptr @s2n_extension_noop_if_missing }, align 8
@.str = private unnamed_addr constant [228 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_cert_status.c:51\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [228 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_cert_status.c:53\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_cert_status.c:64\00", align 1
@.str.3 = private unnamed_addr constant [228 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_cert_status.c:97\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_cert_status_send(ptr noundef %conn, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %ocsp_status = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %ocsp_status) #4
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %handshake_params = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 32
  %our_chain_and_key = getelementptr inbounds %struct.s2n_handshake_parameters, ptr %handshake_params, i32 0, i32 8
  %4 = load ptr, ptr %our_chain_and_key, align 8, !tbaa !10
  %ocsp_status7 = getelementptr inbounds %struct.s2n_cert_chain_and_key, ptr %4, i32 0, i32 2
  store ptr %ocsp_status7, ptr %ocsp_status, align 8, !tbaa !4
  br label %do.body8

do.body8:                                         ; preds = %do.end6
  %5 = load ptr, ptr %ocsp_status, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %5, null
  br i1 %cmp9, label %if.end20, label %if.then10

if.then10:                                        ; preds = %do.body8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.body12

do.body12:                                        ; preds = %do.body11
  %6 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %6, align 8, !tbaa !4
  %7 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %7, align 4, !tbaa !8
  %call13 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body12
  br label %do.end14

do.end14:                                         ; preds = %do.cond
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond16:                                        ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18

do.cond18:                                        ; preds = %do.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %do.body8
  br label %do.cond21

do.cond21:                                        ; preds = %if.end20
  br label %do.end22

do.end22:                                         ; preds = %do.cond21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  %8 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call24 = call i32 @s2n_stuffer_write_uint8(ptr noundef %8, i8 noundef zeroext 1)
  %cmp25 = icmp sgt i32 %call24, -1
  br i1 %cmp25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %do.body23
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond28:                                        ; No predecessors!
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %do.body23
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  %9 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ocsp_status, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.s2n_blob, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %size, align 8, !tbaa !38
  %call34 = call i32 @s2n_stuffer_write_uint24(ptr noundef %9, i32 noundef %11)
  %cmp35 = icmp sgt i32 %call34, -1
  br i1 %cmp35, label %if.end40, label %if.then36

if.then36:                                        ; preds = %do.body33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond38:                                        ; No predecessors!
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %do.body33
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %12 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ocsp_status, align 8, !tbaa !4
  %call44 = call i32 @s2n_stuffer_write(ptr noundef %12, ptr noundef %13)
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.end50, label %if.then46

if.then46:                                        ; preds = %do.body43
  br label %do.body47

do.body47:                                        ; preds = %if.then46
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond48:                                        ; No predecessors!
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %do.body43
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.body47, %do.body37, %do.body27, %do.body15
  call void @llvm.lifetime.end.p0(i64 8, ptr %ocsp_status) #4
  br label %return

return:                                           ; preds = %cleanup, %do.body3
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_cert_status_recv(ptr noundef %conn, ptr noundef %in) #0 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %type = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %status_size = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #4
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %3 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %call8 = call i32 @s2n_stuffer_read_uint8(ptr noundef %3, ptr noundef %type)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %do.body7
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

do.cond:                                          ; No predecessors!
  br label %do.end12

do.end12:                                         ; preds = %do.cond
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body7
  br label %do.cond14

do.cond14:                                        ; preds = %if.end13
  br label %do.end15

do.end15:                                         ; preds = %do.cond14
  %4 = load i8, ptr %type, align 1, !tbaa !39
  %conv = zext i8 %4 to i32
  %cmp16 = icmp ne i32 %conv, 1
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

if.end19:                                         ; preds = %do.end15
  %5 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct.s2n_connection, ptr %5, i32 0, i32 13
  %6 = load i32, ptr %mode, align 8, !tbaa !40
  %cmp20 = icmp eq i32 %6, 1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %status_type = getelementptr inbounds %struct.s2n_connection, ptr %7, i32 0, i32 64
  store i32 1, ptr %status_type, align 8, !tbaa !41
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr %status_size) #4
  br label %do.body24

do.body24:                                        ; preds = %if.end23
  %8 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %call25 = call i32 @s2n_stuffer_read_uint24(ptr noundef %8, ptr noundef %status_size)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.end32, label %if.then28

if.then28:                                        ; preds = %do.body24
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond30:                                        ; No predecessors!
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body24
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %9 = load i32, ptr %status_size, align 4, !tbaa !8
  %10 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %write_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %write_cursor, align 4, !tbaa !42
  %12 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %read_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %read_cursor, align 8, !tbaa !43
  %sub = sub i32 %11, %13
  %cmp36 = icmp ule i32 %9, %sub
  br i1 %cmp36, label %if.end49, label %if.then38

if.then38:                                        ; preds = %do.body35
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  br label %do.body40

do.body40:                                        ; preds = %do.body39
  %14 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.3, ptr %14, align 8, !tbaa !4
  %15 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %15, align 4, !tbaa !8
  %call41 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond42

do.cond42:                                        ; preds = %do.body40
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %do.body44

do.body44:                                        ; preds = %do.end43
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond45:                                        ; No predecessors!
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47

do.cond47:                                        ; preds = %do.end46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %do.body35
  br label %do.cond50

do.cond50:                                        ; preds = %if.end49
  br label %do.end51

do.end51:                                         ; preds = %do.cond50
  br label %do.body52

do.body52:                                        ; preds = %do.end51
  %16 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %status_response = getelementptr inbounds %struct.s2n_connection, ptr %16, i32 0, i32 65
  %17 = load i32, ptr %status_size, align 4, !tbaa !8
  %call53 = call i32 @s2n_realloc(ptr noundef %status_response, i32 noundef %17)
  %cmp54 = icmp sgt i32 %call53, -1
  br i1 %cmp54, label %if.end60, label %if.then56

if.then56:                                        ; preds = %do.body52
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond58:                                        ; No predecessors!
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %do.body52
  br label %do.cond61

do.cond61:                                        ; preds = %if.end60
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %18 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %status_response64 = getelementptr inbounds %struct.s2n_connection, ptr %19, i32 0, i32 65
  %data = getelementptr inbounds %struct.s2n_blob, ptr %status_response64, i32 0, i32 0
  %20 = load ptr, ptr %data, align 8, !tbaa !44
  %21 = load i32, ptr %status_size, align 4, !tbaa !8
  %call65 = call i32 @s2n_stuffer_read_bytes(ptr noundef %18, ptr noundef %20, i32 noundef %21)
  %cmp66 = icmp sgt i32 %call65, -1
  br i1 %cmp66, label %if.end72, label %if.then68

if.then68:                                        ; preds = %do.body63
  br label %do.body69

do.body69:                                        ; preds = %if.then68
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond70:                                        ; No predecessors!
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %do.body63
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  br label %do.body75

do.body75:                                        ; preds = %do.end74
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #4
  %22 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %x509_validator = getelementptr inbounds %struct.s2n_connection, ptr %22, i32 0, i32 71
  %23 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %status_response76 = getelementptr inbounds %struct.s2n_connection, ptr %24, i32 0, i32 65
  %data77 = getelementptr inbounds %struct.s2n_blob, ptr %status_response76, i32 0, i32 0
  %25 = load ptr, ptr %data77, align 8, !tbaa !44
  %26 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %status_response78 = getelementptr inbounds %struct.s2n_connection, ptr %26, i32 0, i32 65
  %size = getelementptr inbounds %struct.s2n_blob, ptr %status_response78, i32 0, i32 1
  %27 = load i32, ptr %size, align 8, !tbaa !45
  %call79 = call i32 @s2n_x509_validator_validate_cert_stapled_ocsp_response(ptr noundef %x509_validator, ptr noundef %23, ptr noundef %25, i32 noundef %27)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call79, ptr %coerce.dive, align 4
  %coerce.dive80 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %28 = load i32, ptr %coerce.dive80, align 4
  %call81 = call zeroext i1 @s2n_result_is_ok(i32 %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #4
  br i1 %call81, label %if.end86, label %if.then82

if.then82:                                        ; preds = %do.body75
  br label %do.body83

do.body83:                                        ; preds = %if.then82
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond84:                                        ; No predecessors!
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %do.body75
  br label %do.cond87

do.cond87:                                        ; preds = %if.end86
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %do.body83, %do.body69, %do.body57, %do.body44, %do.body29
  call void @llvm.lifetime.end.p0(i64 4, ptr %status_size) #4
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup, %if.then18, %do.body11
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #4
  br label %return

return:                                           ; preds = %cleanup89, %do.body3
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s2n_cert_status_should_send(ptr noundef %conn) #0 {
entry:
  %conn.addr = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %handshake_params = getelementptr inbounds %struct.s2n_connection, ptr %0, i32 0, i32 32
  %our_chain_and_key = getelementptr inbounds %struct.s2n_handshake_parameters, ptr %handshake_params, i32 0, i32 8
  %1 = load ptr, ptr %our_chain_and_key, align 8, !tbaa !10
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %handshake_params1 = getelementptr inbounds %struct.s2n_connection, ptr %2, i32 0, i32 32
  %our_chain_and_key2 = getelementptr inbounds %struct.s2n_handshake_parameters, ptr %handshake_params1, i32 0, i32 8
  %3 = load ptr, ptr %our_chain_and_key2, align 8, !tbaa !10
  %ocsp_status = getelementptr inbounds %struct.s2n_cert_chain_and_key, ptr %3, i32 0, i32 2
  %size = getelementptr inbounds %struct.s2n_blob, ptr %ocsp_status, i32 0, i32 1
  %4 = load i32, ptr %size, align 8, !tbaa !46
  %cmp = icmp ugt i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %5
}

declare i32 @s2n_extension_noop_if_missing(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

declare i32 @s2n_calculate_stacktrace() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @s2n_stuffer_write_uint8(ptr noundef, i8 noundef zeroext) #1

declare i32 @s2n_stuffer_write_uint24(ptr noundef, i32 noundef) #1

declare i32 @s2n_stuffer_write(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @s2n_stuffer_read_uint8(ptr noundef, ptr noundef) #1

declare i32 @s2n_stuffer_read_uint24(ptr noundef, ptr noundef) #1

declare i32 @s2n_realloc(ptr noundef, i32 noundef) #1

declare i32 @s2n_stuffer_read_bytes(ptr noundef, ptr noundef, i32 noundef) #1

declare zeroext i1 @s2n_result_is_ok(i32) #1

declare i32 @s2n_x509_validator_validate_cert_stapled_ocsp_response(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!10 = !{!11, !5, i64 1544}
!11 = !{!"s2n_connection", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !6, i64 80, !6, i64 101, !6, i64 122, !6, i64 144, !6, i64 148, !12, i64 152, !13, i64 160, !13, i64 168, !6, i64 176, !6, i64 208, !6, i64 209, !6, i64 210, !6, i64 211, !6, i64 212, !6, i64 213, !6, i64 214, !5, i64 216, !5, i64 224, !14, i64 232, !5, i64 576, !5, i64 584, !15, i64 592, !22, i64 1040, !27, i64 1672, !5, i64 1736, !6, i64 1744, !6, i64 1748, !6, i64 1752, !29, i64 1760, !29, i64 1800, !29, i64 1840, !6, i64 1880, !13, i64 1888, !6, i64 1896, !29, i64 1904, !6, i64 1944, !6, i64 1945, !6, i64 1946, !21, i64 1947, !30, i64 1948, !30, i64 1952, !31, i64 1960, !26, i64 2152, !9, i64 2156, !26, i64 2160, !13, i64 2168, !6, i64 2176, !13, i64 2184, !13, i64 2192, !13, i64 2200, !30, i64 2208, !30, i64 2212, !6, i64 2216, !6, i64 2472, !6, i64 2728, !20, i64 2736, !6, i64 2760, !20, i64 2768, !20, i64 2792, !20, i64 2816, !33, i64 2840, !35, i64 3752, !5, i64 3800, !5, i64 3808, !6, i64 3816, !6, i64 3820, !20, i64 3824, !9, i64 3848, !36, i64 3856, !6, i64 3888, !29, i64 4000, !20, i64 4040, !20, i64 4064, !21, i64 4088, !21, i64 4089, !21, i64 4090, !26, i64 4092, !26, i64 4094, !6, i64 4096, !9, i64 4100, !20, i64 4104, !9, i64 4128, !37, i64 4136, !30, i64 4184}
!12 = !{!"s2n_timer", !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"s2n_secrets", !6, i64 0, !6, i64 340}
!15 = !{!"s2n_kex_parameters", !16, i64 0, !17, i64 8, !6, i64 24, !17, i64 56, !18, i64 72, !18, i64 184, !6, i64 296, !19, i64 312, !20, i64 400, !20, i64 424}
!16 = !{!"s2n_dh_params", !5, i64 0}
!17 = !{!"s2n_ecc_evp_params", !5, i64 0, !5, i64 8}
!18 = !{!"s2n_kem_group_params", !5, i64 0, !19, i64 8, !17, i64 96}
!19 = !{!"s2n_kem_params", !5, i64 0, !20, i64 8, !20, i64 32, !20, i64 56, !21, i64 80}
!20 = !{!"s2n_blob", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!21 = !{!"_Bool", !6, i64 0}
!22 = !{!"s2n_handshake_parameters", !23, i64 0, !23, i64 80, !20, i64 160, !6, i64 184, !24, i64 188, !25, i64 320, !24, i64 344, !25, i64 480, !5, i64 504, !6, i64 512, !6, i64 536, !6, i64 560, !6, i64 561, !6, i64 562, !6, i64 594}
!23 = !{!"s2n_pkey", !6, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!24 = !{!"s2n_sig_scheme_list", !6, i64 0, !6, i64 128}
!25 = !{!"s2n_signature_scheme", !26, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 13, !26, i64 14, !5, i64 16}
!26 = !{!"short", !6, i64 0}
!27 = !{!"s2n_psk_parameters", !6, i64 0, !28, i64 8, !26, i64 40, !26, i64 42, !5, i64 48, !6, i64 56}
!28 = !{!"s2n_array", !20, i64 0, !9, i64 24, !9, i64 28}
!29 = !{!"s2n_stuffer", !20, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 36, !9, i64 36}
!30 = !{!"", !9, i64 0}
!31 = !{!"s2n_handshake", !29, i64 0, !5, i64 40, !6, i64 48, !6, i64 56, !6, i64 104, !6, i64 152, !9, i64 156, !9, i64 160, !6, i64 164, !6, i64 168, !32, i64 176, !9, i64 184, !9, i64 184, !9, i64 184, !9, i64 184, !6, i64 188}
!32 = !{!"s2n_offered_early_data", !5, i64 0}
!33 = !{!"s2n_client_hello", !20, i64 0, !34, i64 24, !20, i64 856, !20, i64 880, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904}
!34 = !{!"", !6, i64 0, !20, i64 800, !26, i64 824}
!35 = !{!"s2n_x509_validator", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !26, i64 18, !5, i64 24, !9, i64 32, !5, i64 40}
!36 = !{!"s2n_ticket_fields", !20, i64 0, !9, i64 24}
!37 = !{!"s2n_post_handshake", !29, i64 0, !6, i64 40}
!38 = !{!20, !9, i64 8}
!39 = !{!6, !6, i64 0}
!40 = !{!11, !6, i64 144}
!41 = !{!11, !6, i64 2728}
!42 = !{!29, !9, i64 28}
!43 = !{!29, !9, i64 24}
!44 = !{!11, !5, i64 2736}
!45 = !{!11, !9, i64 2744}
!46 = !{!47, !9, i64 24}
!47 = !{!"s2n_cert_chain_and_key", !5, i64 0, !5, i64 8, !20, i64 16, !20, i64 40, !5, i64 64, !5, i64 72, !5, i64 80}

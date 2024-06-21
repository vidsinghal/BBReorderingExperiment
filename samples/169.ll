; ModuleID = 'samples/169.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_server_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_extension_type = type { i16, i8, i16, ptr, ptr, ptr, ptr }
%struct.s2n_stuffer = type { %struct.s2n_blob, i32, i32, i32, i8 }
%struct.s2n_blob = type { ptr, i32, i32, i8 }
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
%struct.s2n_post_handshake = type { %struct.s2n_stuffer, [4 x i8] }
%struct.s2n_atomic_flag = type { i32 }

@s2n_server_cookie_extension = hidden constant %struct.s2n_extension_type { i16 44, i8 0, i16 34, ptr @s2n_cookie_send, ptr @s2n_server_cookie_recv, ptr @s2n_server_cookie_should_send, ptr @s2n_extension_noop_if_missing }, align 8
@.str = private unnamed_addr constant [230 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_server_cookie.c:61\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [230 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_server_cookie.c:66\00", align 1
@.str.2 = private unnamed_addr constant [230 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_server_cookie.c:70\00", align 1

declare i32 @s2n_cookie_send(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @s2n_server_cookie_recv(ptr noundef %conn, ptr noundef %extension) #1 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %extension.addr = alloca ptr, align 8
  %size = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  store ptr %extension, ptr %extension.addr, align 8, !tbaa !4
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
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call8 = call zeroext i1 @s2n_is_hello_retry_handshake(ptr noundef %3)
  br i1 %call8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %4, align 8, !tbaa !4
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544386, ptr %5, align 4, !tbaa !8
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
  call void @llvm.lifetime.start.p0(i64 2, ptr %size) #4
  store i16 0, ptr %size, align 2, !tbaa !10
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %6 = load ptr, ptr %extension.addr, align 8, !tbaa !4
  %call20 = call i32 @s2n_stuffer_read_uint16(ptr noundef %6, ptr noundef %size)
  %cmp21 = icmp sgt i32 %call20, -1
  br i1 %cmp21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %do.body19
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end24

do.end24:                                         ; preds = %do.cond
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %do.body19
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %7 = load ptr, ptr %extension.addr, align 8, !tbaa !4
  %write_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %write_cursor, align 4, !tbaa !12
  %9 = load ptr, ptr %extension.addr, align 8, !tbaa !4
  %read_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %read_cursor, align 8, !tbaa !15
  %sub = sub i32 %8, %10
  %11 = load i16, ptr %size, align 2, !tbaa !10
  %conv = zext i16 %11 to i32
  %cmp29 = icmp uge i32 %sub, %conv
  br i1 %cmp29, label %if.end42, label %if.then31

if.then31:                                        ; preds = %do.body28
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  br label %do.body33

do.body33:                                        ; preds = %do.body32
  %12 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.2, ptr %12, align 8, !tbaa !4
  %13 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544322, ptr %13, align 4, !tbaa !8
  %call34 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond35

do.cond35:                                        ; preds = %do.body33
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  br label %do.body37

do.body37:                                        ; preds = %do.end36
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond38:                                        ; No predecessors!
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40

do.cond40:                                        ; preds = %do.end39
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %do.body28
  br label %do.cond43

do.cond43:                                        ; preds = %if.end42
  br label %do.end44

do.end44:                                         ; preds = %do.cond43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %14 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %cookie = getelementptr inbounds %struct.s2n_connection, ptr %14, i32 0, i32 82
  %15 = load i16, ptr %size, align 2, !tbaa !10
  %conv46 = zext i16 %15 to i32
  %call47 = call i32 @s2n_realloc(ptr noundef %cookie, i32 noundef %conv46)
  %cmp48 = icmp sgt i32 %call47, -1
  br i1 %cmp48, label %if.end54, label %if.then50

if.then50:                                        ; preds = %do.body45
  br label %do.body51

do.body51:                                        ; preds = %if.then50
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond52:                                        ; No predecessors!
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %do.body45
  br label %do.cond55

do.cond55:                                        ; preds = %if.end54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  %16 = load ptr, ptr %extension.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %cookie58 = getelementptr inbounds %struct.s2n_connection, ptr %17, i32 0, i32 82
  %call59 = call i32 @s2n_stuffer_read(ptr noundef %16, ptr noundef %cookie58)
  %cmp60 = icmp sgt i32 %call59, -1
  br i1 %cmp60, label %if.end66, label %if.then62

if.then62:                                        ; preds = %do.body57
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  store i32 -1, ptr %retval, align 4
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
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.body63, %do.body51, %do.body37, %do.body23
  call void @llvm.lifetime.end.p0(i64 2, ptr %size) #4
  br label %return

return:                                           ; preds = %cleanup, %do.body14, %do.body3
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s2n_server_cookie_should_send(ptr noundef %conn) #1 {
entry:
  %conn.addr = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %cookie = getelementptr inbounds %struct.s2n_connection, ptr %1, i32 0, i32 82
  %size = getelementptr inbounds %struct.s2n_blob, ptr %cookie, i32 0, i32 1
  %2 = load i32, ptr %size, align 8, !tbaa !16
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call zeroext i1 (...) @s2n_in_unit_test()
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %call, %land.rhs ]
  ret i1 %3
}

declare i32 @s2n_extension_noop_if_missing(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

declare i32 @s2n_calculate_stacktrace() #0

declare zeroext i1 @s2n_is_hello_retry_handshake(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @s2n_stuffer_read_uint16(ptr noundef, ptr noundef) #0

declare i32 @s2n_realloc(ptr noundef, i32 noundef) #0

declare i32 @s2n_stuffer_read(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare zeroext i1 @s2n_in_unit_test(...) #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !9, i64 28}
!13 = !{!"s2n_stuffer", !14, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 36, !9, i64 36}
!14 = !{!"s2n_blob", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!15 = !{!13, !9, i64 24}
!16 = !{!17, !9, i64 4072}
!17 = !{!"s2n_connection", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 1, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !9, i64 2, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !6, i64 80, !6, i64 101, !6, i64 122, !6, i64 144, !6, i64 148, !18, i64 152, !19, i64 160, !19, i64 168, !6, i64 176, !6, i64 208, !6, i64 209, !6, i64 210, !6, i64 211, !6, i64 212, !6, i64 213, !6, i64 214, !5, i64 216, !5, i64 224, !20, i64 232, !5, i64 576, !5, i64 584, !21, i64 592, !27, i64 1040, !31, i64 1672, !5, i64 1736, !6, i64 1744, !6, i64 1748, !6, i64 1752, !13, i64 1760, !13, i64 1800, !13, i64 1840, !6, i64 1880, !19, i64 1888, !6, i64 1896, !13, i64 1904, !6, i64 1944, !6, i64 1945, !6, i64 1946, !26, i64 1947, !33, i64 1948, !33, i64 1952, !34, i64 1960, !11, i64 2152, !9, i64 2156, !11, i64 2160, !19, i64 2168, !6, i64 2176, !19, i64 2184, !19, i64 2192, !19, i64 2200, !33, i64 2208, !33, i64 2212, !6, i64 2216, !6, i64 2472, !6, i64 2728, !14, i64 2736, !6, i64 2760, !14, i64 2768, !14, i64 2792, !14, i64 2816, !36, i64 2840, !38, i64 3752, !5, i64 3800, !5, i64 3808, !6, i64 3816, !6, i64 3820, !14, i64 3824, !9, i64 3848, !39, i64 3856, !6, i64 3888, !13, i64 4000, !14, i64 4040, !14, i64 4064, !26, i64 4088, !26, i64 4089, !26, i64 4090, !11, i64 4092, !11, i64 4094, !6, i64 4096, !9, i64 4100, !14, i64 4104, !9, i64 4128, !40, i64 4136, !33, i64 4184}
!18 = !{!"s2n_timer", !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"s2n_secrets", !6, i64 0, !6, i64 340}
!21 = !{!"s2n_kex_parameters", !22, i64 0, !23, i64 8, !6, i64 24, !23, i64 56, !24, i64 72, !24, i64 184, !6, i64 296, !25, i64 312, !14, i64 400, !14, i64 424}
!22 = !{!"s2n_dh_params", !5, i64 0}
!23 = !{!"s2n_ecc_evp_params", !5, i64 0, !5, i64 8}
!24 = !{!"s2n_kem_group_params", !5, i64 0, !25, i64 8, !23, i64 96}
!25 = !{!"s2n_kem_params", !5, i64 0, !14, i64 8, !14, i64 32, !14, i64 56, !26, i64 80}
!26 = !{!"_Bool", !6, i64 0}
!27 = !{!"s2n_handshake_parameters", !28, i64 0, !28, i64 80, !14, i64 160, !6, i64 184, !29, i64 188, !30, i64 320, !29, i64 344, !30, i64 480, !5, i64 504, !6, i64 512, !6, i64 536, !6, i64 560, !6, i64 561, !6, i64 562, !6, i64 594}
!28 = !{!"s2n_pkey", !6, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!29 = !{!"s2n_sig_scheme_list", !6, i64 0, !6, i64 128}
!30 = !{!"s2n_signature_scheme", !11, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 13, !11, i64 14, !5, i64 16}
!31 = !{!"s2n_psk_parameters", !6, i64 0, !32, i64 8, !11, i64 40, !11, i64 42, !5, i64 48, !6, i64 56}
!32 = !{!"s2n_array", !14, i64 0, !9, i64 24, !9, i64 28}
!33 = !{!"", !9, i64 0}
!34 = !{!"s2n_handshake", !13, i64 0, !5, i64 40, !6, i64 48, !6, i64 56, !6, i64 104, !6, i64 152, !9, i64 156, !9, i64 160, !6, i64 164, !6, i64 168, !35, i64 176, !9, i64 184, !9, i64 184, !9, i64 184, !9, i64 184, !6, i64 188}
!35 = !{!"s2n_offered_early_data", !5, i64 0}
!36 = !{!"s2n_client_hello", !14, i64 0, !37, i64 24, !14, i64 856, !14, i64 880, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904, !9, i64 904}
!37 = !{!"", !6, i64 0, !14, i64 800, !11, i64 824}
!38 = !{!"s2n_x509_validator", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !11, i64 18, !5, i64 24, !9, i64 32, !5, i64 40}
!39 = !{!"s2n_ticket_fields", !14, i64 0, !9, i64 24}
!40 = !{!"s2n_post_handshake", !13, i64 0, !6, i64 40}

; ModuleID = 'samples/356.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-http/source/proxy_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_http_proxy_strategy_vtable = type { ptr }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.anon = type { ptr, i64, [7 x i8] }
%struct.anon.0 = type { ptr, i64, [20 x i8] }
%struct.aws_http_proxy_negotiator_forwarding_vtable = type { ptr }
%struct.aws_http_proxy_negotiator_tunnelling_vtable = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.1 = type { ptr, i64, [11 x i8] }
%struct.anon.2 = type { ptr, i64, [6 x i8] }
%struct.anon.3 = type { ptr, i64, [19 x i8] }
%struct.aws_http_proxy_negotiator = type { %struct.aws_ref_count, ptr, %union.anon }
%struct.aws_ref_count = type { %struct.aws_atomic_var, ptr, ptr }
%struct.aws_atomic_var = type { ptr }
%union.anon = type { ptr }
%struct.aws_http_proxy_strategy = type { %struct.aws_ref_count, ptr, ptr, i32 }
%struct.aws_http_proxy_negotiator_basic_auth = type { ptr, ptr, i32, %struct.aws_http_proxy_negotiator }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.aws_http_header = type { %struct.aws_byte_cursor, %struct.aws_byte_cursor, i32 }
%struct.aws_http_proxy_strategy_basic_auth = type { ptr, ptr, ptr, %struct.aws_http_proxy_strategy }
%struct.aws_string = type { ptr, i64, [1 x i8] }
%struct.aws_http_proxy_strategy_basic_auth_options = type { i32, %struct.aws_byte_cursor, %struct.aws_byte_cursor }
%struct.aws_http_proxy_negotiator_one_time_identity = type { ptr, i32, %struct.aws_http_proxy_negotiator }
%struct.aws_http_proxy_strategy_one_time_identity = type { ptr, %struct.aws_http_proxy_strategy }
%struct.aws_http_proxy_strategy_forwarding_identity = type { ptr, %struct.aws_http_proxy_strategy }
%struct.aws_http_proxy_strategy_tunneling_kerberos_options = type { ptr, ptr }
%struct.aws_http_proxy_strategy_tunneling_kerberos = type { ptr, ptr, ptr, %struct.aws_http_proxy_strategy }
%struct.aws_http_proxy_strategy_tunneling_ntlm_options = type { ptr, ptr, ptr }
%struct.aws_http_proxy_strategy_tunneling_ntlm = type { ptr, ptr, ptr, ptr, %struct.aws_http_proxy_strategy }
%struct.aws_http_proxy_strategy_tunneling_sequence_options = type { ptr, i32 }
%struct.aws_http_proxy_strategy_tunneling_adaptive_options = type { ptr, ptr }
%struct.aws_http_proxy_strategy_tunneling_sequence = type { ptr, %struct.aws_array_list, %struct.aws_http_proxy_strategy }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_http_proxy_negotiator_forwarding_identity = type { ptr, %struct.aws_http_proxy_negotiator }
%struct.aws_http_proxy_negotiator_tunneling_kerberos = type { ptr, ptr, i32, %struct.aws_http_proxy_negotiator }
%struct.aws_http_proxy_negotiator_tunneling_ntlm = type { ptr, ptr, i32, ptr, %struct.aws_http_proxy_negotiator }
%struct.aws_http_proxy_negotiator_tunneling_sequence = type { ptr, %struct.aws_array_list, i64, ptr, ptr, ptr, %struct.aws_http_proxy_negotiator }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }

@s_basic_auth_proxy_strategy_vtable = internal global %struct.aws_http_proxy_strategy_vtable { ptr @s_create_basic_auth_negotiator }, align 8
@s_one_time_identity_proxy_strategy_vtable = internal global %struct.aws_http_proxy_strategy_vtable { ptr @s_create_one_time_identity_negotiator }, align 8
@s_forwarding_identity_strategy_vtable = internal global %struct.aws_http_proxy_strategy_vtable { ptr @s_create_forwarding_identity_negotiator }, align 8
@s_tunneling_kerberos_strategy_vtable = internal global %struct.aws_http_proxy_strategy_vtable { ptr @s_create_tunneling_kerberos_negotiator }, align 8
@s_tunneling_ntlm_strategy_vtable = internal global %struct.aws_http_proxy_strategy_vtable { ptr @s_create_tunneling_ntlm_negotiator }, align 8
@s_tunneling_ntlm_credential_strategy_vtable = internal global %struct.aws_http_proxy_strategy_vtable { ptr @s_create_tunneling_ntlm_credential_negotiator }, align 8
@.str = private unnamed_addr constant [57 x i8] c"strategy_count <= PROXY_STRATEGY_MAX_ADAPTIVE_STRATEGIES\00", align 1
@.str.1 = private unnamed_addr constant [202 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-http/source/proxy_strategy.c\00", align 1
@s_tunneling_sequence_strategy_vtable = internal global %struct.aws_http_proxy_strategy_vtable { ptr @s_create_tunneling_sequence_negotiator }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@__const.s_add_basic_proxy_authentication_header.colon_cursor = private unnamed_addr constant %struct.aws_byte_cursor { i64 1, ptr @.str.2 }, align 8
@s_proxy_authorization_header_basic_prefix = internal global ptr @s_proxy_authorization_header_basic_prefix_s, align 8
@s_proxy_authorization_header_name = internal global ptr @s_proxy_authorization_header_name_s, align 8
@s_proxy_authorization_header_basic_prefix_s = internal constant %struct.anon { ptr null, i64 6, [7 x i8] c"Basic \00" }, align 8
@s_proxy_authorization_header_name_s = internal constant %struct.anon.0 { ptr null, i64 19, [20 x i8] c"Proxy-Authorization\00" }, align 8
@s_basic_auth_proxy_negotiator_forwarding_vtable = internal global %struct.aws_http_proxy_negotiator_forwarding_vtable { ptr @s_basic_auth_forward_add_header }, align 8
@s_basic_auth_proxy_negotiator_tunneling_vtable = internal global %struct.aws_http_proxy_negotiator_tunnelling_vtable { ptr @s_basic_auth_tunnel_add_header, ptr null, ptr @s_basic_auth_on_connect_status, ptr null, ptr null }, align 8
@s_one_time_identity_proxy_negotiator_tunneling_vtable = internal global %struct.aws_http_proxy_negotiator_tunnelling_vtable { ptr @s_one_time_identity_connect_transform, ptr null, ptr @s_one_time_identity_on_connect_status, ptr null, ptr null }, align 8
@s_forwarding_identity_proxy_negotiator_tunneling_vtable = internal global %struct.aws_http_proxy_negotiator_forwarding_vtable { ptr @s_forwarding_identity_connect_transform }, align 8
@s_tunneling_kerberos_proxy_negotiator_tunneling_vtable = internal global %struct.aws_http_proxy_negotiator_tunnelling_vtable { ptr @s_kerberos_tunnel_transform_connect, ptr @s_kerberos_on_incoming_header_adaptive, ptr @s_kerberos_on_connect_status, ptr @s_kerberos_on_incoming_body, ptr null }, align 8
@s_proxy_authorization_header_kerberos_prefix = internal global ptr @s_proxy_authorization_header_kerberos_prefix_s, align 8
@s_proxy_authorization_header_kerberos_prefix_s = internal constant %struct.anon.1 { ptr null, i64 10, [11 x i8] c"Negotiate \00" }, align 8
@s_tunneling_ntlm_proxy_negotiator_tunneling_vtable = internal global %struct.aws_http_proxy_negotiator_tunnelling_vtable { ptr @s_ntlm_tunnel_transform_connect, ptr @s_ntlm_on_incoming_header_adaptive, ptr @s_ntlm_on_connect_status, ptr @s_ntlm_on_incoming_body, ptr @s_ntlm_tunnel_get_retry_directive }, align 8
@s_proxy_authorization_header_ntlm_prefix = internal global ptr @s_proxy_authorization_header_ntlm_prefix_s, align 8
@s_proxy_authorization_header_ntlm_prefix_s = internal constant %struct.anon.2 { ptr null, i64 5, [6 x i8] c"NTLM \00" }, align 8
@s_ntlm_challenge_token_header = internal global ptr @s_ntlm_challenge_token_header_s, align 8
@s_ntlm_challenge_token_header_s = internal constant %struct.anon.3 { ptr null, i64 18, [19 x i8] c"Proxy-Authenticate\00" }, align 8
@s_tunneling_ntlm_proxy_credential_negotiator_tunneling_vtable = internal global %struct.aws_http_proxy_negotiator_tunnelling_vtable { ptr @s_ntlm_credential_tunnel_transform_connect, ptr @s_ntlm_on_incoming_header_adaptive, ptr @s_ntlm_on_connect_status, ptr @s_ntlm_on_incoming_body, ptr null }, align 8
@s_tunneling_sequence_proxy_negotiator_tunneling_vtable = internal global %struct.aws_http_proxy_negotiator_tunnelling_vtable { ptr @s_sequence_tunnel_transform_connect, ptr @s_sequence_on_incoming_headers, ptr @s_sequence_on_connect_status, ptr @s_sequence_on_incoming_body, ptr @s_sequence_get_retry_directive }, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"(id=%p) Proxy negotiation step failed with error %d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.5 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"list != ((void*)0)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"alloc != ((void*)0)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"item_size > 0\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"list->current_size == 0 || list->data\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_negotiator_acquire(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %1, i32 0, i32 0
  %call = call ptr @aws_ref_count_acquire(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  ret ptr %2
}

declare ptr @aws_ref_count_acquire(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @aws_http_proxy_negotiator_release(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %1, i32 0, i32 0
  %call = call i64 @aws_ref_count_release(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @aws_ref_count_release(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_create_negotiator(ptr noundef %strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  store ptr %strategy, ptr %strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %strategy.addr, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %vtable, align 8, !tbaa !8
  %create_negotiator = getelementptr inbounds %struct.aws_http_proxy_strategy_vtable, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %create_negotiator, align 8, !tbaa !12
  %5 = load ptr, ptr %strategy.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr %4(ptr noundef %5, ptr noundef %6)
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #2 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !14
  %0 = load i32, ptr %err.addr, align 4, !tbaa !14
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @aws_http_proxy_negotiator_get_retry_directive(ptr noundef %proxy_negotiator) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy_negotiator.addr = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %strategy_vtable, align 8, !tbaa !16
  %get_retry_directive = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunnelling_vtable, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %get_retry_directive, align 8, !tbaa !17
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %strategy_vtable3 = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %strategy_vtable3, align 8, !tbaa !16
  %get_retry_directive4 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunnelling_vtable, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %get_retry_directive4, align 8, !tbaa !17
  %7 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %call = call i32 %6(ptr noundef %7)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_acquire(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %1, i32 0, i32 0
  %call = call ptr @aws_ref_count_acquire(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define void @aws_http_proxy_strategy_release(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %1, i32 0, i32 0
  %call = call i64 @aws_ref_count_release(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @s_basic_auth_forward_add_header(ptr noundef %proxy_negotiator, ptr noundef %message) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %basic_auth_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !21
  %4 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %call = call i32 @s_add_basic_proxy_authentication_header(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_negotiator) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @s_add_basic_proxy_authentication_header(ptr noundef %allocator, ptr noundef %request, ptr noundef %basic_auth_negotiator) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %request.addr = alloca ptr, align 8
  %basic_auth_negotiator.addr = alloca ptr, align 8
  %base64_input_value = alloca %struct.aws_byte_buf, align 8
  %header_value = alloca %struct.aws_byte_buf, align 8
  %result = alloca i32, align 4
  %basic_auth_strategy = alloca ptr, align 8
  %username_cursor = alloca %struct.aws_byte_cursor, align 8
  %colon_cursor = alloca %struct.aws_byte_cursor, align 8
  %password_cursor = alloca %struct.aws_byte_cursor, align 8
  %base64_source_cursor = alloca %struct.aws_byte_cursor, align 8
  %required_size = alloca i64, align 8
  %basic_prefix = alloca %struct.aws_byte_cursor, align 8
  %header = alloca %struct.aws_http_header, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %request, ptr %request.addr, align 8, !tbaa !4
  store ptr %basic_auth_negotiator, ptr %basic_auth_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %base64_input_value) #8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %base64_input_value, i8 0, i64 32, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %header_value) #8
  br label %do.body1

do.body1:                                         ; preds = %do.end
  call void @llvm.memset.p0.i64(ptr align 8 %header_value, i8 0, i64 32, i1 false)
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 -1, ptr %result, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_strategy) #8
  %0 = load ptr, ptr %basic_auth_negotiator.addr, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %strategy, align 8, !tbaa !23
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %2, ptr %basic_auth_strategy, align 8, !tbaa !4
  %3 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %user_name = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %user_name, align 8, !tbaa !25
  %len = getelementptr inbounds %struct.aws_string, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %len, align 8, !tbaa !27
  %7 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %password = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %password, align 8, !tbaa !30
  %len4 = getelementptr inbounds %struct.aws_string, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %len4, align 8, !tbaa !27
  %add = add i64 %6, %9
  %add5 = add i64 %add, 1
  %call = call i32 @aws_byte_buf_init(ptr noundef %base64_input_value, ptr noundef %3, i64 noundef %add5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end3
  br label %done

if.end:                                           ; preds = %do.end3
  %10 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %user_name6 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %user_name6, align 8, !tbaa !25
  %call7 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %username_cursor, i32 0, i32 0
  %13 = extractvalue { i64, ptr } %call7, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %username_cursor, i32 0, i32 1
  %15 = extractvalue { i64, ptr } %call7, 1
  store ptr %15, ptr %14, align 8
  %call8 = call i32 @aws_byte_buf_append(ptr noundef %base64_input_value, ptr noundef %username_cursor)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %done

if.end11:                                         ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %colon_cursor, ptr align 8 @__const.s_add_basic_proxy_authentication_header.colon_cursor, i64 16, i1 false)
  %call12 = call i32 @aws_byte_buf_append(ptr noundef %base64_input_value, ptr noundef %colon_cursor)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %done

if.end15:                                         ; preds = %if.end11
  %16 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %password16 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %password16, align 8, !tbaa !30
  %call17 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %17)
  %18 = getelementptr inbounds { i64, ptr }, ptr %password_cursor, i32 0, i32 0
  %19 = extractvalue { i64, ptr } %call17, 0
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds { i64, ptr }, ptr %password_cursor, i32 0, i32 1
  %21 = extractvalue { i64, ptr } %call17, 1
  store ptr %21, ptr %20, align 8
  %call18 = call i32 @aws_byte_buf_append(ptr noundef %base64_input_value, ptr noundef %password_cursor)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  br label %done

if.end21:                                         ; preds = %if.end15
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %base64_input_value, i32 0, i32 1
  %22 = load ptr, ptr %buffer, align 8, !tbaa !31
  %len22 = getelementptr inbounds %struct.aws_byte_buf, ptr %base64_input_value, i32 0, i32 0
  %23 = load i64, ptr %len22, align 8, !tbaa !33
  %call23 = call { i64, ptr } @aws_byte_cursor_from_array(ptr noundef %22, i64 noundef %23)
  %24 = getelementptr inbounds { i64, ptr }, ptr %base64_source_cursor, i32 0, i32 0
  %25 = extractvalue { i64, ptr } %call23, 0
  store i64 %25, ptr %24, align 8
  %26 = getelementptr inbounds { i64, ptr }, ptr %base64_source_cursor, i32 0, i32 1
  %27 = extractvalue { i64, ptr } %call23, 1
  store ptr %27, ptr %26, align 8
  store i64 0, ptr %required_size, align 8, !tbaa !34
  %len24 = getelementptr inbounds %struct.aws_byte_cursor, ptr %base64_source_cursor, i32 0, i32 0
  %28 = load i64, ptr %len24, align 8, !tbaa !35
  %call25 = call i32 @aws_base64_compute_encoded_len(i64 noundef %28, ptr noundef %required_size)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  br label %done

if.end28:                                         ; preds = %if.end21
  %29 = load ptr, ptr @s_proxy_authorization_header_basic_prefix, align 8, !tbaa !4
  %len29 = getelementptr inbounds %struct.aws_string, ptr %29, i32 0, i32 1
  %30 = load i64, ptr %len29, align 8, !tbaa !27
  %add30 = add i64 %30, 1
  %31 = load i64, ptr %required_size, align 8, !tbaa !34
  %add31 = add i64 %31, %add30
  store i64 %add31, ptr %required_size, align 8, !tbaa !34
  %32 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %33 = load i64, ptr %required_size, align 8, !tbaa !34
  %call32 = call i32 @aws_byte_buf_init(ptr noundef %header_value, ptr noundef %32, i64 noundef %33)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  br label %done

if.end35:                                         ; preds = %if.end28
  %34 = load ptr, ptr @s_proxy_authorization_header_basic_prefix, align 8, !tbaa !4
  %call36 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %34)
  %35 = getelementptr inbounds { i64, ptr }, ptr %basic_prefix, i32 0, i32 0
  %36 = extractvalue { i64, ptr } %call36, 0
  store i64 %36, ptr %35, align 8
  %37 = getelementptr inbounds { i64, ptr }, ptr %basic_prefix, i32 0, i32 1
  %38 = extractvalue { i64, ptr } %call36, 1
  store ptr %38, ptr %37, align 8
  %call37 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %header_value, ptr noundef %basic_prefix)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  br label %done

if.end40:                                         ; preds = %if.end35
  %call41 = call i32 @aws_base64_encode(ptr noundef %base64_source_cursor, ptr noundef %header_value)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  br label %done

if.end44:                                         ; preds = %if.end40
  %name = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %39 = load ptr, ptr @s_proxy_authorization_header_name, align 8, !tbaa !4
  %call45 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %39)
  %40 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %41 = extractvalue { i64, ptr } %call45, 0
  store i64 %41, ptr %40, align 8
  %42 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %43 = extractvalue { i64, ptr } %call45, 1
  store ptr %43, ptr %42, align 8
  %value = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %buffer46 = getelementptr inbounds %struct.aws_byte_buf, ptr %header_value, i32 0, i32 1
  %44 = load ptr, ptr %buffer46, align 8, !tbaa !31
  %len47 = getelementptr inbounds %struct.aws_byte_buf, ptr %header_value, i32 0, i32 0
  %45 = load i64, ptr %len47, align 8, !tbaa !33
  %call48 = call { i64, ptr } @aws_byte_cursor_from_array(ptr noundef %44, i64 noundef %45)
  %46 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %47 = extractvalue { i64, ptr } %call48, 0
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %49 = extractvalue { i64, ptr } %call48, 1
  store ptr %49, ptr %48, align 8
  %compression = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 2
  store i32 0, ptr %compression, align 8, !tbaa !37
  %50 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call49 = call i32 @aws_http_message_add_header(ptr noundef %50, ptr noundef byval(%struct.aws_http_header) align 8 %header)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end44
  br label %done

if.end52:                                         ; preds = %if.end44
  store i32 0, ptr %result, align 4, !tbaa !14
  br label %done

done:                                             ; preds = %if.end52, %if.then51, %if.then43, %if.then39, %if.then34, %if.then27, %if.then20, %if.then14, %if.then10, %if.then
  call void @aws_byte_buf_clean_up(ptr noundef %header_value)
  call void @aws_byte_buf_clean_up(ptr noundef %base64_input_value)
  %51 = load i32, ptr %result, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_strategy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %header_value) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %base64_input_value) #8
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define void @s_basic_auth_tunnel_add_header(ptr noundef %proxy_negotiator, ptr noundef %message, ptr noundef %negotiation_termination_callback, ptr noundef %negotiation_http_request_forward_callback, ptr noundef %internal_proxy_user_data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %negotiation_termination_callback.addr = alloca ptr, align 8
  %negotiation_http_request_forward_callback.addr = alloca ptr, align 8
  %internal_proxy_user_data.addr = alloca ptr, align 8
  %basic_auth_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %negotiation_termination_callback, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  store ptr %negotiation_http_request_forward_callback, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  store ptr %internal_proxy_user_data, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %connect_state, align 8, !tbaa !39
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %4(ptr noundef %5, i32 noundef 2071, ptr noundef %6)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %connect_state1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %7, i32 0, i32 2
  store i32 1, ptr %connect_state1, align 8, !tbaa !39
  %8 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %allocator, align 8, !tbaa !21
  %10 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %call = call i32 @s_add_basic_proxy_authentication_header(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %12 = load ptr, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call3 = call i32 @aws_last_error()
  %14 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %12(ptr noundef %13, i32 noundef %call3, ptr noundef %14)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %15 = load ptr, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %15(ptr noundef %16, ptr noundef %17)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_negotiator) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @aws_last_error() #1

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_basic_auth(ptr noundef %allocator, ptr noundef %config) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %basic_auth_strategy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %config, ptr %config.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth_options, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %proxy_connection_type, align 8, !tbaa !40
  %cmp2 = icmp ne i32 %3, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %proxy_connection_type3 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth_options, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %proxy_connection_type3, align 8, !tbaa !40
  %cmp4 = icmp ne i32 %5, 2
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_strategy) #8
  %6 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call8 = call ptr @aws_mem_calloc(ptr noundef %6, i64 noundef 1, i64 noundef 72)
  store ptr %call8, ptr %basic_auth_strategy, align 8, !tbaa !4
  %7 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %cmp9 = icmp eq ptr %7, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %8 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %9 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %strategy_base = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %9, i32 0, i32 3
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base, i32 0, i32 2
  store ptr %8, ptr %impl, align 8, !tbaa !42
  %10 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %strategy_base12 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %10, i32 0, i32 3
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base12, i32 0, i32 1
  store ptr @s_basic_auth_proxy_strategy_vtable, ptr %vtable, align 8, !tbaa !43
  %11 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %allocator13 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %12, i32 0, i32 0
  store ptr %11, ptr %allocator13, align 8, !tbaa !44
  %13 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %proxy_connection_type14 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth_options, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %proxy_connection_type14, align 8, !tbaa !40
  %15 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %strategy_base15 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %15, i32 0, i32 3
  %proxy_connection_type16 = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base15, i32 0, i32 3
  store i32 %14, ptr %proxy_connection_type16, align 8, !tbaa !45
  %16 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %strategy_base17 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %16, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base17, i32 0, i32 0
  %17 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %strategy_base18 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %17, i32 0, i32 3
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %strategy_base18, ptr noundef @s_destroy_basic_auth_strategy)
  %18 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %user_name = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth_options, ptr %19, i32 0, i32 1
  %call19 = call ptr @aws_string_new_from_cursor(ptr noundef %18, ptr noundef %user_name)
  %20 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %user_name20 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %20, i32 0, i32 1
  store ptr %call19, ptr %user_name20, align 8, !tbaa !25
  %21 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %user_name21 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %user_name21, align 8, !tbaa !25
  %cmp22 = icmp eq ptr %22, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end11
  br label %on_error

if.end24:                                         ; preds = %if.end11
  %23 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %password = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth_options, ptr %24, i32 0, i32 2
  %call25 = call ptr @aws_string_new_from_cursor(ptr noundef %23, ptr noundef %password)
  %25 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %password26 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %25, i32 0, i32 2
  store ptr %call25, ptr %password26, align 8, !tbaa !30
  %26 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %password27 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %password27, align 8, !tbaa !30
  %cmp28 = icmp eq ptr %27, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  br label %on_error

if.end30:                                         ; preds = %if.end24
  %28 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %strategy_base31 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %28, i32 0, i32 3
  store ptr %strategy_base31, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then29, %if.then23
  %29 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %strategy_base32 = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %29, i32 0, i32 3
  call void @aws_http_proxy_strategy_release(ptr noundef %strategy_base32)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end30, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_strategy) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then5, %if.then
  %30 = load ptr, ptr %retval, align 8
  ret ptr %30
}

declare ptr @aws_mem_calloc(ptr noundef, i64 noundef, i64 noundef) #1

declare void @aws_ref_count_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @s_destroy_basic_auth_strategy(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  %basic_auth_strategy = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_strategy) #8
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %1, ptr %basic_auth_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %user_name = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %user_name, align 8, !tbaa !25
  call void @aws_string_destroy(ptr noundef %3)
  %4 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %password = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %password, align 8, !tbaa !30
  call void @aws_string_destroy(ptr noundef %5)
  %6 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_strategy_basic_auth, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %allocator, align 8, !tbaa !44
  %8 = load ptr, ptr %basic_auth_strategy, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_strategy) #8
  ret void
}

declare ptr @aws_string_new_from_cursor(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @s_one_time_identity_connect_transform(ptr noundef %proxy_negotiator, ptr noundef %message, ptr noundef %negotiation_termination_callback, ptr noundef %negotiation_http_request_forward_callback, ptr noundef %internal_proxy_user_data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %negotiation_termination_callback.addr = alloca ptr, align 8
  %negotiation_http_request_forward_callback.addr = alloca ptr, align 8
  %internal_proxy_user_data.addr = alloca ptr, align 8
  %one_time_identity_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %negotiation_termination_callback, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  store ptr %negotiation_http_request_forward_callback, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  store ptr %internal_proxy_user_data, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one_time_identity_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %one_time_identity_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %one_time_identity_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %connect_state, align 8, !tbaa !46
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %4(ptr noundef %5, i32 noundef 2071, ptr noundef %6)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %one_time_identity_negotiator, align 8, !tbaa !4
  %connect_state1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %7, i32 0, i32 1
  store i32 1, ptr %connect_state1, align 8, !tbaa !46
  %8 = load ptr, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %8(ptr noundef %9, ptr noundef %10)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %one_time_identity_negotiator) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_tunneling_one_time_identity(ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %identity_strategy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_strategy) #8
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call1 = call ptr @aws_mem_calloc(ptr noundef %1, i64 noundef 1, i64 noundef 56)
  store ptr %call1, ptr %identity_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %4 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %4, i32 0, i32 1
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base, i32 0, i32 2
  store ptr %3, ptr %impl, align 8, !tbaa !48
  %5 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base5 = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %5, i32 0, i32 1
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base5, i32 0, i32 1
  store ptr @s_one_time_identity_proxy_strategy_vtable, ptr %vtable, align 8, !tbaa !50
  %6 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base6 = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %6, i32 0, i32 1
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base6, i32 0, i32 3
  store i32 2, ptr %proxy_connection_type, align 8, !tbaa !51
  %7 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %allocator7 = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %8, i32 0, i32 0
  store ptr %7, ptr %allocator7, align 8, !tbaa !52
  %9 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base8 = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %9, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base8, i32 0, i32 0
  %10 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base9 = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %10, i32 0, i32 1
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %strategy_base9, ptr noundef @s_destroy_one_time_identity_strategy)
  %11 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base10 = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %11, i32 0, i32 1
  store ptr %strategy_base10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_strategy) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_one_time_identity_strategy(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  %identity_strategy = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_strategy) #8
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %1, ptr %identity_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_strategy_one_time_identity, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !52
  %4 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_strategy) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @s_forwarding_identity_connect_transform(ptr noundef %proxy_negotiator, ptr noundef %message) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_forwarding_identity(ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %identity_strategy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_strategy) #8
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call1 = call ptr @aws_mem_calloc(ptr noundef %1, i64 noundef 1, i64 noundef 56)
  store ptr %call1, ptr %identity_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %4 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %4, i32 0, i32 1
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base, i32 0, i32 2
  store ptr %3, ptr %impl, align 8, !tbaa !53
  %5 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base5 = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %5, i32 0, i32 1
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base5, i32 0, i32 1
  store ptr @s_forwarding_identity_strategy_vtable, ptr %vtable, align 8, !tbaa !55
  %6 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base6 = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %6, i32 0, i32 1
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base6, i32 0, i32 3
  store i32 1, ptr %proxy_connection_type, align 8, !tbaa !56
  %7 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %allocator7 = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %8, i32 0, i32 0
  store ptr %7, ptr %allocator7, align 8, !tbaa !57
  %9 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base8 = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %9, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base8, i32 0, i32 0
  %10 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base9 = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %10, i32 0, i32 1
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %strategy_base9, ptr noundef @s_destroy_forwarding_identity_strategy)
  %11 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %strategy_base10 = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %11, i32 0, i32 1
  store ptr %strategy_base10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_strategy) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_forwarding_identity_strategy(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  %identity_strategy = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_strategy) #8
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %1, ptr %identity_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_strategy_forwarding_identity, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !57
  %4 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_strategy) #8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_tunneling_kerberos(ptr noundef %allocator, ptr noundef %config) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %kerberos_strategy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %config, ptr %config.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_token = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos_options, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %get_token, align 8, !tbaa !58
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_strategy) #8
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call4 = call ptr @aws_mem_calloc(ptr noundef %4, i64 noundef 1, i64 noundef 72)
  store ptr %call4, ptr %kerberos_strategy, align 8, !tbaa !4
  %5 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %7 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %strategy_base = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %7, i32 0, i32 3
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base, i32 0, i32 2
  store ptr %6, ptr %impl, align 8, !tbaa !60
  %8 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %strategy_base8 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %8, i32 0, i32 3
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base8, i32 0, i32 1
  store ptr @s_tunneling_kerberos_strategy_vtable, ptr %vtable, align 8, !tbaa !62
  %9 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %strategy_base9 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %9, i32 0, i32 3
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base9, i32 0, i32 3
  store i32 2, ptr %proxy_connection_type, align 8, !tbaa !63
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %allocator10 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %11, i32 0, i32 0
  store ptr %10, ptr %allocator10, align 8, !tbaa !64
  %12 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %strategy_base11 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %12, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base11, i32 0, i32 0
  %13 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %strategy_base12 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %13, i32 0, i32 3
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %strategy_base12, ptr noundef @s_destroy_tunneling_kerberos_strategy)
  %14 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_token13 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos_options, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %get_token13, align 8, !tbaa !58
  %16 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %get_token14 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %16, i32 0, i32 1
  store ptr %15, ptr %get_token14, align 8, !tbaa !65
  %17 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_token_user_data = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos_options, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %get_token_user_data, align 8, !tbaa !66
  %19 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %get_token_user_data15 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %19, i32 0, i32 2
  store ptr %18, ptr %get_token_user_data15, align 8, !tbaa !67
  %20 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %strategy_base16 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %20, i32 0, i32 3
  store ptr %strategy_base16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_strategy) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_kerberos_strategy(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  %kerberos_strategy = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_strategy) #8
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %1, ptr %kerberos_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !64
  %4 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_strategy) #8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_tunneling_ntlm(ptr noundef %allocator, ptr noundef %config) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %ntlm_strategy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %config, ptr %config.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_challenge_token = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm_options, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_challenge_token, align 8, !tbaa !68
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_strategy) #8
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call4 = call ptr @aws_mem_calloc(ptr noundef %4, i64 noundef 1, i64 noundef 80)
  store ptr %call4, ptr %ntlm_strategy, align 8, !tbaa !4
  %5 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %7 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %strategy_base = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %7, i32 0, i32 4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base, i32 0, i32 2
  store ptr %6, ptr %impl, align 8, !tbaa !70
  %8 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %strategy_base8 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %8, i32 0, i32 4
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base8, i32 0, i32 1
  store ptr @s_tunneling_ntlm_strategy_vtable, ptr %vtable, align 8, !tbaa !72
  %9 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %strategy_base9 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %9, i32 0, i32 4
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base9, i32 0, i32 3
  store i32 2, ptr %proxy_connection_type, align 8, !tbaa !73
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %allocator10 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %11, i32 0, i32 0
  store ptr %10, ptr %allocator10, align 8, !tbaa !74
  %12 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %strategy_base11 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %12, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base11, i32 0, i32 0
  %13 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %strategy_base12 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %13, i32 0, i32 4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %strategy_base12, ptr noundef @s_destroy_tunneling_ntlm_strategy)
  %14 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_challenge_token13 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm_options, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %get_challenge_token13, align 8, !tbaa !68
  %16 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %get_challenge_token14 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %16, i32 0, i32 2
  store ptr %15, ptr %get_challenge_token14, align 8, !tbaa !75
  %17 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_challenge_token_user_data = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm_options, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %get_challenge_token_user_data, align 8, !tbaa !76
  %19 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %get_challenge_token_user_data15 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %19, i32 0, i32 3
  store ptr %18, ptr %get_challenge_token_user_data15, align 8, !tbaa !77
  %20 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %strategy_base16 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %20, i32 0, i32 4
  store ptr %strategy_base16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_strategy) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_ntlm_strategy(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  %ntlm_strategy = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_strategy) #8
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %1, ptr %ntlm_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !74
  %4 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_strategy) #8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_tunneling_ntlm_credential(ptr noundef %allocator, ptr noundef %config) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %ntlm_credential_strategy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %config, ptr %config.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_token = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm_options, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %get_token, align 8, !tbaa !78
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_credential_strategy) #8
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call4 = call ptr @aws_mem_calloc(ptr noundef %4, i64 noundef 1, i64 noundef 80)
  store ptr %call4, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %5 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %7 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %strategy_base = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %7, i32 0, i32 4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base, i32 0, i32 2
  store ptr %6, ptr %impl, align 8, !tbaa !70
  %8 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %strategy_base8 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %8, i32 0, i32 4
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base8, i32 0, i32 1
  store ptr @s_tunneling_ntlm_credential_strategy_vtable, ptr %vtable, align 8, !tbaa !72
  %9 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %strategy_base9 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %9, i32 0, i32 4
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base9, i32 0, i32 3
  store i32 2, ptr %proxy_connection_type, align 8, !tbaa !73
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %allocator10 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %11, i32 0, i32 0
  store ptr %10, ptr %allocator10, align 8, !tbaa !74
  %12 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %strategy_base11 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %12, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base11, i32 0, i32 0
  %13 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %strategy_base12 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %13, i32 0, i32 4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %strategy_base12, ptr noundef @s_destroy_tunneling_ntlm_credential_strategy)
  %14 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_token13 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm_options, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %get_token13, align 8, !tbaa !78
  %16 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %get_token14 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %16, i32 0, i32 1
  store ptr %15, ptr %get_token14, align 8, !tbaa !79
  %17 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %get_challenge_token_user_data = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm_options, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %get_challenge_token_user_data, align 8, !tbaa !76
  %19 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %get_challenge_token_user_data15 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %19, i32 0, i32 3
  store ptr %18, ptr %get_challenge_token_user_data15, align 8, !tbaa !77
  %20 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %strategy_base16 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %20, i32 0, i32 4
  store ptr %strategy_base16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_credential_strategy) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_ntlm_credential_strategy(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  %ntlm_credential_strategy = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_credential_strategy) #8
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %1, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !74
  %4 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_credential_strategy) #8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_tunneling_adaptive(ptr noundef %allocator, ptr noundef %config) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %strategies = alloca [4 x ptr], align 16
  %strategy_count = alloca i32, align 4
  %identity_strategy = alloca ptr, align 8
  %kerberos_strategy = alloca ptr, align 8
  %ntlm_credential_strategy = alloca ptr, align 8
  %ntlm_strategy = alloca ptr, align 8
  %adaptive_sequence_strategy = alloca ptr, align 8
  %sequence_config = alloca %struct.aws_http_proxy_strategy_tunneling_sequence_options, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %config, ptr %config.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 32, ptr %strategies) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %strategy_count) #8
  store i32 0, ptr %strategy_count, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_strategy) #8
  store ptr null, ptr %identity_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_strategy) #8
  store ptr null, ptr %kerberos_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_credential_strategy) #8
  store ptr null, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_strategy) #8
  store ptr null, ptr %ntlm_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adaptive_sequence_strategy) #8
  store ptr null, ptr %adaptive_sequence_strategy, align 8, !tbaa !4
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_http_proxy_strategy_new_tunneling_one_time_identity(ptr noundef %2)
  store ptr %call2, ptr %identity_strategy, align 8, !tbaa !4
  %3 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %done

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  %5 = load i32, ptr %strategy_count, align 4, !tbaa !14
  %inc = add i32 %5, 1
  store i32 %inc, ptr %strategy_count, align 4, !tbaa !14
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %strategies, i64 0, i64 %idxprom
  store ptr %4, ptr %arrayidx, align 8, !tbaa !4
  %6 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %kerberos_options = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_adaptive_options, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %kerberos_options, align 8, !tbaa !80
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %kerberos_options8 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_adaptive_options, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %kerberos_options8, align 8, !tbaa !80
  %call9 = call ptr @aws_http_proxy_strategy_new_tunneling_kerberos(ptr noundef %8, ptr noundef %10)
  store ptr %call9, ptr %kerberos_strategy, align 8, !tbaa !4
  %11 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %cmp10 = icmp eq ptr %11, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  br label %done

if.end12:                                         ; preds = %if.then7
  %12 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %13 = load i32, ptr %strategy_count, align 4, !tbaa !14
  %inc13 = add i32 %13, 1
  store i32 %inc13, ptr %strategy_count, align 4, !tbaa !14
  %idxprom14 = zext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [4 x ptr], ptr %strategies, i64 0, i64 %idxprom14
  store ptr %12, ptr %arrayidx15, align 8, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %if.end5
  %14 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %ntlm_options = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_adaptive_options, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %ntlm_options, align 8, !tbaa !82
  %cmp17 = icmp ne ptr %15, null
  br i1 %cmp17, label %if.then18, label %if.end35

if.then18:                                        ; preds = %if.end16
  %16 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %ntlm_options19 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_adaptive_options, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %ntlm_options19, align 8, !tbaa !82
  %call20 = call ptr @aws_http_proxy_strategy_new_tunneling_ntlm_credential(ptr noundef %16, ptr noundef %18)
  store ptr %call20, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %19 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %19, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then18
  br label %done

if.end23:                                         ; preds = %if.then18
  %20 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %21 = load i32, ptr %strategy_count, align 4, !tbaa !14
  %inc24 = add i32 %21, 1
  store i32 %inc24, ptr %strategy_count, align 4, !tbaa !14
  %idxprom25 = zext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [4 x ptr], ptr %strategies, i64 0, i64 %idxprom25
  store ptr %20, ptr %arrayidx26, align 8, !tbaa !4
  %22 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %ntlm_options27 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_adaptive_options, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %ntlm_options27, align 8, !tbaa !82
  %call28 = call ptr @aws_http_proxy_strategy_new_tunneling_ntlm(ptr noundef %22, ptr noundef %24)
  store ptr %call28, ptr %ntlm_strategy, align 8, !tbaa !4
  %25 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %cmp29 = icmp eq ptr %25, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end23
  br label %done

if.end31:                                         ; preds = %if.end23
  %26 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %27 = load i32, ptr %strategy_count, align 4, !tbaa !14
  %inc32 = add i32 %27, 1
  store i32 %inc32, ptr %strategy_count, align 4, !tbaa !14
  %idxprom33 = zext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [4 x ptr], ptr %strategies, i64 0, i64 %idxprom33
  store ptr %26, ptr %arrayidx34, align 8, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %if.end31, %if.end16
  br label %do.body

do.body:                                          ; preds = %if.end35
  %28 = load i32, ptr %strategy_count, align 4, !tbaa !14
  %cmp36 = icmp ule i32 %28, 4
  br i1 %cmp36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1326) #9
  unreachable

if.end38:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end38
  br label %do.end

do.end:                                           ; preds = %do.cond
  %strategies39 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence_options, ptr %sequence_config, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x ptr], ptr %strategies, i64 0, i64 0
  store ptr %arraydecay, ptr %strategies39, align 8, !tbaa !83
  %strategy_count40 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence_options, ptr %sequence_config, i32 0, i32 1
  %29 = load i32, ptr %strategy_count, align 4, !tbaa !14
  store i32 %29, ptr %strategy_count40, align 8, !tbaa !85
  %30 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call41 = call ptr @aws_http_proxy_strategy_new_tunneling_sequence(ptr noundef %30, ptr noundef %sequence_config)
  store ptr %call41, ptr %adaptive_sequence_strategy, align 8, !tbaa !4
  %31 = load ptr, ptr %adaptive_sequence_strategy, align 8, !tbaa !4
  %cmp42 = icmp eq ptr %31, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.end
  br label %done

if.end44:                                         ; preds = %do.end
  br label %done

done:                                             ; preds = %if.end44, %if.then43, %if.then30, %if.then22, %if.then11, %if.then4
  %32 = load ptr, ptr %identity_strategy, align 8, !tbaa !4
  call void @aws_http_proxy_strategy_release(ptr noundef %32)
  %33 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  call void @aws_http_proxy_strategy_release(ptr noundef %33)
  %34 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  call void @aws_http_proxy_strategy_release(ptr noundef %34)
  %35 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  call void @aws_http_proxy_strategy_release(ptr noundef %35)
  %36 = load ptr, ptr %adaptive_sequence_strategy, align 8, !tbaa !4
  store ptr %36, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %adaptive_sequence_strategy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_strategy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_credential_strategy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_strategy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_strategy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %strategy_count) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %strategies) #8
  br label %return

return:                                           ; preds = %done, %if.then
  %37 = load ptr, ptr %retval, align 8
  ret ptr %37
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define ptr @aws_http_proxy_strategy_new_tunneling_sequence(ptr noundef %allocator, ptr noundef %config) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %sequence_strategy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %strategy = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %config, ptr %config.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_strategy) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 96)
  store ptr %call2, ptr %sequence_strategy, align 8, !tbaa !4
  %3 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategy_base = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %5, i32 0, i32 2
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base, i32 0, i32 2
  store ptr %4, ptr %impl, align 8, !tbaa !86
  %6 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategy_base6 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %6, i32 0, i32 2
  %vtable = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base6, i32 0, i32 1
  store ptr @s_tunneling_sequence_strategy_vtable, ptr %vtable, align 8, !tbaa !89
  %7 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategy_base7 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %7, i32 0, i32 2
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base7, i32 0, i32 3
  store i32 2, ptr %proxy_connection_type, align 8, !tbaa !90
  %8 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %allocator8 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %9, i32 0, i32 0
  store ptr %8, ptr %allocator8, align 8, !tbaa !91
  %10 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategy_base9 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %10, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %strategy_base9, i32 0, i32 0
  %11 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategy_base10 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %11, i32 0, i32 2
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %strategy_base10, ptr noundef @s_destroy_tunneling_sequence_strategy)
  %12 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategies = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %strategy_count = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence_options, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %strategy_count, align 8, !tbaa !85
  %conv = zext i32 %15 to i64
  %call11 = call i32 @aws_array_list_init_dynamic(ptr noundef %strategies, ptr noundef %13, i64 noundef %conv, i64 noundef 8)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  br label %on_error

if.end13:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %16 = load i64, ptr %i, align 8, !tbaa !34
  %17 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %strategy_count14 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence_options, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %strategy_count14, align 8, !tbaa !85
  %conv15 = zext i32 %18 to i64
  %cmp16 = icmp ult i64 %16, %conv15
  br i1 %cmp16, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %strategy) #8
  %19 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %strategies18 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence_options, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %strategies18, align 8, !tbaa !83
  %21 = load i64, ptr %i, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds ptr, ptr %20, i64 %21
  %22 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %22, ptr %strategy, align 8, !tbaa !4
  %23 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategies19 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %23, i32 0, i32 1
  %call20 = call i32 @aws_array_list_push_back(ptr noundef %strategies19, ptr noundef %strategy)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %for.body
  %24 = load ptr, ptr %strategy, align 8, !tbaa !4
  %call24 = call ptr @aws_http_proxy_strategy_acquire(ptr noundef %24)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr %strategy) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %25 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %25, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

cleanup25:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup29 [
    i32 3, label %for.end
    i32 2, label %on_error
  ]

for.end:                                          ; preds = %cleanup25
  %26 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategy_base27 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %26, i32 0, i32 2
  store ptr %strategy_base27, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

on_error:                                         ; preds = %cleanup25, %if.then12
  %27 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategy_base28 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %27, i32 0, i32 2
  call void @aws_http_proxy_strategy_release(ptr noundef %strategy_base28)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %on_error, %for.end, %cleanup25, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_strategy) #8
  br label %return

return:                                           ; preds = %cleanup29, %if.then
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_sequence_strategy(ptr noundef %proxy_strategy) #0 {
entry:
  %proxy_strategy.addr = alloca ptr, align 8
  %sequence_strategy = alloca ptr, align 8
  %strategy_count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %strategy = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_strategy) #8
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %impl, align 8, !tbaa !24
  store ptr %1, ptr %sequence_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %strategy_count) #8
  %2 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategies = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %2, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %strategies)
  store i64 %call, ptr %strategy_count, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !tbaa !34
  %4 = load i64, ptr %strategy_count, align 8, !tbaa !34
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %strategy) #8
  store ptr null, ptr %strategy, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategies1 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %i, align 8, !tbaa !34
  %call2 = call i32 @aws_array_list_get_at(ptr noundef %strategies1, ptr noundef %strategy, i64 noundef %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %strategy, align 8, !tbaa !4
  call void @aws_http_proxy_strategy_release(ptr noundef %7)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %strategy) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %8 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategies4 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %9, i32 0, i32 1
  call void @aws_array_list_clean_up(ptr noundef %strategies4)
  %10 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %allocator, align 8, !tbaa !91
  %12 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %11, ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr %strategy_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_strategy) #8
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_init_dynamic(ptr noalias noundef %list, ptr noundef %alloc, i64 noundef %initial_item_allocation, i64 noundef %item_size) #2 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %alloc.addr = alloca ptr, align 8
  %initial_item_allocation.addr = alloca i64, align 8
  %item_size.addr = alloca i64, align 8
  %allocation_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %alloc, ptr %alloc.addr, align 8, !tbaa !4
  store i64 %initial_item_allocation, ptr %initial_item_allocation.addr, align 8, !tbaa !34
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !34
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.6, ptr noundef @.str.5, i32 noundef 24) #9
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.body1
  call void @aws_fatal_assert(ptr noundef @.str.7, ptr noundef @.str.5, i32 noundef 25) #9
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_size.addr, align 8, !tbaa !34
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.8, ptr noundef @.str.5, i32 noundef 26) #9
  unreachable

if.end9:                                          ; preds = %do.body6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 40, i1 false)
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocation_size) #8
  store i64 0, ptr %allocation_size, align 8, !tbaa !34
  %4 = load i64, ptr %initial_item_allocation.addr, align 8, !tbaa !34
  %5 = load i64, ptr %item_size.addr, align 8, !tbaa !34
  %call = call i32 @aws_mul_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %allocation_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end12
  br label %error

if.end14:                                         ; preds = %do.end12
  %6 = load i64, ptr %allocation_size, align 8, !tbaa !34
  %cmp15 = icmp ugt i64 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %7 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %8 = load i64, ptr %allocation_size, align 8, !tbaa !34
  %call17 = call ptr @aws_mem_acquire(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  store ptr %call17, ptr %data, align 8, !tbaa !92
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data18 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data18, align 8, !tbaa !92
  %tobool19 = icmp ne ptr %11, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then16
  br label %error

if.end21:                                         ; preds = %if.then16
  %12 = load i64, ptr %allocation_size, align 8, !tbaa !34
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 1
  store i64 %12, ptr %current_size, align 8, !tbaa !93
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %14 = load i64, ptr %item_size.addr, align 8, !tbaa !34
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size23 = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 3
  store i64 %14, ptr %item_size23, align 8, !tbaa !94
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc24 = getelementptr inbounds %struct.aws_array_list, ptr %17, i32 0, i32 0
  store ptr %16, ptr %alloc24, align 8, !tbaa !95
  br label %do.body25

do.body25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size26 = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %current_size26, align 8, !tbaa !93
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body25
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data28 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data28, align 8, !tbaa !92
  %tobool29 = icmp ne ptr %21, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.9, ptr noundef @.str.5, i32 noundef 49) #9
  unreachable

if.end31:                                         ; preds = %lor.lhs.false, %do.body25
  br label %do.cond

do.cond:                                          ; preds = %if.end31
  br label %do.end32

do.end32:                                         ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then20, %if.then13
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end32
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocation_size) #8
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_push_back(ptr noalias noundef %list, ptr noundef %val) #2 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %err_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_code) #8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %2)
  %call1 = call i32 @aws_array_list_set_at(ptr noundef %0, ptr noundef %1, i64 noundef %call)
  store i32 %call1, ptr %err_code, align 4, !tbaa !14
  %3 = load i32, ptr %err_code, align 4, !tbaa !14
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !95
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !14
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #8
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare void @aws_raise_error_private(i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @aws_byte_buf_init(ptr noundef, ptr noundef, i64 noundef) #1

declare { i64, ptr } @aws_byte_cursor_from_string(ptr noundef) #1

declare i32 @aws_byte_buf_append(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare { i64, ptr } @aws_byte_cursor_from_array(ptr noundef, i64 noundef) #1

declare i32 @aws_base64_compute_encoded_len(i64 noundef, ptr noundef) #1

declare i32 @aws_byte_buf_append_dynamic(ptr noundef, ptr noundef) #1

declare i32 @aws_base64_encode(ptr noundef, ptr noundef) #1

declare i32 @aws_http_message_add_header(ptr noundef, ptr noundef byval(%struct.aws_http_header) align 8) #1

declare void @aws_byte_buf_clean_up(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @s_create_basic_auth_negotiator(ptr noundef %proxy_strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %proxy_strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %basic_auth_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_negotiator) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 64)
  store ptr %call2, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator6, align 8, !tbaa !21
  %6 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %6, i32 0, i32 2
  store i32 0, ptr %connect_state, align 8, !tbaa !39
  %7 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %8 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %negotiator_base = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %8, i32 0, i32 3
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base, i32 0, i32 1
  store ptr %7, ptr %impl, align 8, !tbaa !96
  %9 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %negotiator_base7 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %9, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base7, i32 0, i32 0
  %10 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %negotiator_base8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %10, i32 0, i32 3
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %negotiator_base8, ptr noundef @s_destroy_basic_auth_negotiator)
  %11 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %proxy_connection_type = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %proxy_connection_type, align 8, !tbaa !97
  %cmp9 = icmp eq i32 %12, 1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end5
  %13 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %negotiator_base11 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %13, i32 0, i32 3
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base11, i32 0, i32 2
  store ptr @s_basic_auth_proxy_negotiator_forwarding_vtable, ptr %strategy_vtable, align 8, !tbaa !16
  br label %if.end14

if.else:                                          ; preds = %if.end5
  %14 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %negotiator_base12 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %14, i32 0, i32 3
  %strategy_vtable13 = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base12, i32 0, i32 2
  store ptr @s_basic_auth_proxy_negotiator_tunneling_vtable, ptr %strategy_vtable13, align 8, !tbaa !16
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %15 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %call15 = call ptr @aws_http_proxy_strategy_acquire(ptr noundef %15)
  %16 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %16, i32 0, i32 1
  store ptr %call15, ptr %strategy, align 8, !tbaa !23
  %17 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %negotiator_base16 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %17, i32 0, i32 3
  store ptr %negotiator_base16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_negotiator) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_basic_auth_negotiator(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %basic_auth_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %strategy, align 8, !tbaa !23
  call void @aws_http_proxy_strategy_release(ptr noundef %3)
  %4 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %allocator, align 8, !tbaa !21
  %6 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_negotiator) #8
  ret void
}

declare void @aws_mem_release(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_basic_auth_on_connect_status(ptr noundef %proxy_negotiator, i32 noundef %status_code) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %status_code.addr = alloca i32, align 4
  %basic_auth_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %status_code, ptr %status_code.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %basic_auth_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %connect_state, align 8, !tbaa !39
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status_code.addr, align 4, !tbaa !16
  %cmp1 = icmp ne i32 200, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %connect_state3 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %5, i32 0, i32 2
  store i32 3, ptr %connect_state3, align 8, !tbaa !39
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %basic_auth_negotiator, align 8, !tbaa !4
  %connect_state4 = getelementptr inbounds %struct.aws_http_proxy_negotiator_basic_auth, ptr %6, i32 0, i32 2
  store i32 2, ptr %connect_state4, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %basic_auth_negotiator) #8
  ret i32 0
}

declare void @aws_string_destroy(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @s_create_one_time_identity_negotiator(ptr noundef %proxy_strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %proxy_strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %identity_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_negotiator) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 56)
  store ptr %call2, ptr %identity_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator6, align 8, !tbaa !98
  %6 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %6, i32 0, i32 1
  store i32 0, ptr %connect_state, align 8, !tbaa !46
  %7 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %8 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %8, i32 0, i32 2
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base, i32 0, i32 1
  store ptr %7, ptr %impl, align 8, !tbaa !99
  %9 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base7 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %9, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base7, i32 0, i32 0
  %10 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %10, i32 0, i32 2
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %negotiator_base8, ptr noundef @s_destroy_one_time_identity_negotiator)
  %11 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base9 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %11, i32 0, i32 2
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base9, i32 0, i32 2
  store ptr @s_one_time_identity_proxy_negotiator_tunneling_vtable, ptr %strategy_vtable, align 8, !tbaa !16
  %12 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base10 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %12, i32 0, i32 2
  store ptr %negotiator_base10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_negotiator) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_one_time_identity_negotiator(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %identity_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %identity_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !98
  %4 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_one_time_identity_on_connect_status(ptr noundef %proxy_negotiator, i32 noundef %status_code) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %status_code.addr = alloca i32, align 4
  %one_time_identity_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %status_code, ptr %status_code.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %one_time_identity_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %one_time_identity_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %one_time_identity_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %connect_state, align 8, !tbaa !46
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status_code.addr, align 4, !tbaa !16
  %cmp1 = icmp ne i32 200, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %one_time_identity_negotiator, align 8, !tbaa !4
  %connect_state3 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %5, i32 0, i32 1
  store i32 3, ptr %connect_state3, align 8, !tbaa !46
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %one_time_identity_negotiator, align 8, !tbaa !4
  %connect_state4 = getelementptr inbounds %struct.aws_http_proxy_negotiator_one_time_identity, ptr %6, i32 0, i32 1
  store i32 2, ptr %connect_state4, align 8, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %one_time_identity_negotiator) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @s_create_forwarding_identity_negotiator(ptr noundef %proxy_strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %proxy_strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %identity_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_negotiator) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 48)
  store ptr %call2, ptr %identity_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_forwarding_identity, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator6, align 8, !tbaa !100
  %6 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %7 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base = getelementptr inbounds %struct.aws_http_proxy_negotiator_forwarding_identity, ptr %7, i32 0, i32 1
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base, i32 0, i32 1
  store ptr %6, ptr %impl, align 8, !tbaa !102
  %8 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base7 = getelementptr inbounds %struct.aws_http_proxy_negotiator_forwarding_identity, ptr %8, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base7, i32 0, i32 0
  %9 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_forwarding_identity, ptr %9, i32 0, i32 1
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %negotiator_base8, ptr noundef @s_destroy_forwarding_identity_negotiator)
  %10 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base9 = getelementptr inbounds %struct.aws_http_proxy_negotiator_forwarding_identity, ptr %10, i32 0, i32 1
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base9, i32 0, i32 2
  store ptr @s_forwarding_identity_proxy_negotiator_tunneling_vtable, ptr %strategy_vtable, align 8, !tbaa !16
  %11 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %negotiator_base10 = getelementptr inbounds %struct.aws_http_proxy_negotiator_forwarding_identity, ptr %11, i32 0, i32 1
  store ptr %negotiator_base10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_negotiator) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_forwarding_identity_negotiator(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %identity_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %identity_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %identity_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_forwarding_identity, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !100
  %4 = load ptr, ptr %identity_negotiator, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %identity_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_create_tunneling_kerberos_negotiator(ptr noundef %proxy_strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %proxy_strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %kerberos_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_negotiator) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 64)
  store ptr %call2, ptr %kerberos_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator6, align 8, !tbaa !103
  %6 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %7 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %negotiator_base = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %7, i32 0, i32 3
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base, i32 0, i32 1
  store ptr %6, ptr %impl, align 8, !tbaa !105
  %8 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %negotiator_base7 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %8, i32 0, i32 3
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base7, i32 0, i32 0
  %9 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %negotiator_base8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %9, i32 0, i32 3
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %negotiator_base8, ptr noundef @s_destroy_tunneling_kerberos_negotiator)
  %10 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %negotiator_base9 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %10, i32 0, i32 3
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base9, i32 0, i32 2
  store ptr @s_tunneling_kerberos_proxy_negotiator_tunneling_vtable, ptr %strategy_vtable, align 8, !tbaa !16
  %11 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %call10 = call ptr @aws_http_proxy_strategy_acquire(ptr noundef %11)
  %12 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %12, i32 0, i32 1
  store ptr %call10, ptr %strategy, align 8, !tbaa !106
  %13 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %negotiator_base11 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %13, i32 0, i32 3
  store ptr %negotiator_base11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_negotiator) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_kerberos_negotiator(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %kerberos_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %kerberos_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %strategy, align 8, !tbaa !106
  call void @aws_http_proxy_strategy_release(ptr noundef %3)
  %4 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %allocator, align 8, !tbaa !103
  %6 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_kerberos_tunnel_transform_connect(ptr noundef %proxy_negotiator, ptr noundef %message, ptr noundef %negotiation_termination_callback, ptr noundef %negotiation_http_request_forward_callback, ptr noundef %internal_proxy_user_data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %negotiation_termination_callback.addr = alloca ptr, align 8
  %negotiation_http_request_forward_callback.addr = alloca ptr, align 8
  %internal_proxy_user_data.addr = alloca ptr, align 8
  %kerberos_negotiator = alloca ptr, align 8
  %kerberos_strategy = alloca ptr, align 8
  %result = alloca i32, align 4
  %error_code = alloca i32, align 4
  %kerberos_token = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %negotiation_termination_callback, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  store ptr %negotiation_http_request_forward_callback, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  store ptr %internal_proxy_user_data, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %kerberos_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_strategy) #8
  %2 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %strategy, align 8, !tbaa !106
  %impl1 = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %impl1, align 8, !tbaa !24
  store ptr %4, ptr %kerberos_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 -1, ptr %result, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #8
  store i32 0, ptr %error_code, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_token) #8
  store ptr null, ptr %kerberos_token, align 8, !tbaa !4
  %5 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %connect_state, align 8, !tbaa !107
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2071, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %connect_state2 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %connect_state2, align 8, !tbaa !107
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 38, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %connect_state6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %9, i32 0, i32 2
  store i32 1, ptr %connect_state6, align 8, !tbaa !107
  %10 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %get_token = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %get_token, align 8, !tbaa !65
  %12 = load ptr, ptr %kerberos_strategy, align 8, !tbaa !4
  %get_token_user_data = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_kerberos, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %get_token_user_data, align 8, !tbaa !67
  %call = call ptr %11(ptr noundef %13, ptr noundef %error_code)
  store ptr %call, ptr %kerberos_token, align 8, !tbaa !4
  %14 = load ptr, ptr %kerberos_token, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %14, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %15 = load i32, ptr %error_code, align 4, !tbaa !14
  %cmp8 = icmp ne i32 %15, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end5
  br label %done

if.end10:                                         ; preds = %lor.lhs.false
  %16 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %allocator, align 8, !tbaa !103
  %18 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #8
  %19 = load ptr, ptr %kerberos_token, align 8, !tbaa !4
  %call11 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %19)
  %20 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %21 = extractvalue { i64, ptr } %call11, 0
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %23 = extractvalue { i64, ptr } %call11, 1
  store ptr %23, ptr %22, align 8
  %24 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %call12 = call i32 @s_add_kerberos_proxy_usertoken_authentication_header(ptr noundef %17, ptr noundef %18, i64 %25, ptr %27)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #8
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 @aws_last_error()
  store i32 %call14, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end15:                                         ; preds = %if.end10
  %28 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %connect_state16 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %28, i32 0, i32 2
  store i32 1, ptr %connect_state16, align 8, !tbaa !107
  store i32 0, ptr %result, align 4, !tbaa !14
  br label %done

done:                                             ; preds = %if.end15, %if.then13, %if.then9, %if.then4, %if.then
  %29 = load i32, ptr %result, align 4, !tbaa !14
  %cmp17 = icmp ne i32 %29, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %done
  %30 = load i32, ptr %error_code, align 4, !tbaa !14
  %cmp19 = icmp eq i32 %30, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  store i32 3, ptr %error_code, align 4, !tbaa !14
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  %31 = load ptr, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %33 = load i32, ptr %error_code, align 4, !tbaa !14
  %34 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %31(ptr noundef %32, i32 noundef %33, ptr noundef %34)
  br label %if.end22

if.else:                                          ; preds = %done
  %35 = load ptr, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %35(ptr noundef %36, ptr noundef %37)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end21
  %38 = load ptr, ptr %kerberos_token, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %38)
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_token) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_strategy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_kerberos_on_incoming_header_adaptive(ptr noundef %proxy_negotiator, i32 noundef %header_block, ptr noundef %header_array, i64 noundef %num_headers) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %header_block.addr = alloca i32, align 4
  %header_array.addr = alloca ptr, align 8
  %num_headers.addr = alloca i64, align 8
  %kerberos_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %header_block, ptr %header_block.addr, align 4, !tbaa !16
  store ptr %header_array, ptr %header_array.addr, align 8, !tbaa !4
  store i64 %num_headers, ptr %num_headers.addr, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %kerberos_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %3 = load i32, ptr %header_block.addr, align 4, !tbaa !16
  %4 = load ptr, ptr %header_array.addr, align 8, !tbaa !4
  %5 = load i64, ptr %num_headers.addr, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_negotiator) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_kerberos_on_connect_status(ptr noundef %proxy_negotiator, i32 noundef %status_code) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %status_code.addr = alloca i32, align 4
  %kerberos_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %status_code, ptr %status_code.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %kerberos_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %connect_state, align 8, !tbaa !107
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status_code.addr, align 4, !tbaa !16
  %cmp1 = icmp ne i32 200, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %connect_state3 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %5, i32 0, i32 2
  store i32 3, ptr %connect_state3, align 8, !tbaa !107
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %connect_state4 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_kerberos, ptr %6, i32 0, i32 2
  store i32 2, ptr %connect_state4, align 8, !tbaa !107
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_negotiator) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_kerberos_on_incoming_body(ptr noundef %proxy_negotiator, ptr noundef %data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %kerberos_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kerberos_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %kerberos_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %kerberos_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kerberos_negotiator) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_add_kerberos_proxy_usertoken_authentication_header(ptr noundef %allocator, ptr noundef %request, i64 %user_token.coerce0, ptr %user_token.coerce1) #0 {
entry:
  %user_token = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %request.addr = alloca ptr, align 8
  %header_value = alloca %struct.aws_byte_buf, align 8
  %result = alloca i32, align 4
  %auth_header_cursor = alloca %struct.aws_byte_cursor, align 8
  %header = alloca %struct.aws_http_header, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %user_token, i32 0, i32 0
  store i64 %user_token.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %user_token, i32 0, i32 1
  store ptr %user_token.coerce1, ptr %1, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %request, ptr %request.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %header_value) #8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %header_value, i8 0, i64 32, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 -1, ptr %result, align 4, !tbaa !14
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %3 = load ptr, ptr @s_proxy_authorization_header_kerberos_prefix, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_string, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %len, align 8, !tbaa !27
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %user_token, i32 0, i32 0
  %5 = load i64, ptr %len1, align 8, !tbaa !35
  %add = add i64 %4, %5
  %call = call i32 @aws_byte_buf_init(ptr noundef %header_value, ptr noundef %2, i64 noundef %add)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %done

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr @s_proxy_authorization_header_kerberos_prefix, align 8, !tbaa !4
  %call2 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %auth_header_cursor, i32 0, i32 0
  %8 = extractvalue { i64, ptr } %call2, 0
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %auth_header_cursor, i32 0, i32 1
  %10 = extractvalue { i64, ptr } %call2, 1
  store ptr %10, ptr %9, align 8
  %call3 = call i32 @aws_byte_buf_append(ptr noundef %header_value, ptr noundef %auth_header_cursor)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %done

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @aws_byte_buf_append(ptr noundef %header_value, ptr noundef %user_token)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  br label %done

if.end10:                                         ; preds = %if.end6
  %name = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %11 = load ptr, ptr @s_proxy_authorization_header_name, align 8, !tbaa !4
  %call11 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %13 = extractvalue { i64, ptr } %call11, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %15 = extractvalue { i64, ptr } %call11, 1
  store ptr %15, ptr %14, align 8
  %value = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %header_value, i32 0, i32 1
  %16 = load ptr, ptr %buffer, align 8, !tbaa !31
  %len12 = getelementptr inbounds %struct.aws_byte_buf, ptr %header_value, i32 0, i32 0
  %17 = load i64, ptr %len12, align 8, !tbaa !33
  %call13 = call { i64, ptr } @aws_byte_cursor_from_array(ptr noundef %16, i64 noundef %17)
  %18 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %19 = extractvalue { i64, ptr } %call13, 0
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %21 = extractvalue { i64, ptr } %call13, 1
  store ptr %21, ptr %20, align 8
  %compression = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 2
  store i32 0, ptr %compression, align 8, !tbaa !37
  %22 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call14 = call i32 @aws_http_message_add_header(ptr noundef %22, ptr noundef byval(%struct.aws_http_header) align 8 %header)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  br label %done

if.end17:                                         ; preds = %if.end10
  store i32 0, ptr %result, align 4, !tbaa !14
  br label %done

done:                                             ; preds = %if.end17, %if.then16, %if.then9, %if.then5, %if.then
  call void @aws_byte_buf_clean_up(ptr noundef %header_value)
  %23 = load i32, ptr %result, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %header_value) #8
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal ptr @s_create_tunneling_ntlm_negotiator(ptr noundef %proxy_strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %proxy_strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %ntlm_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_negotiator) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 72)
  store ptr %call2, ptr %ntlm_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator6, align 8, !tbaa !108
  %6 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %7 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %negotiator_base = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %7, i32 0, i32 4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base, i32 0, i32 1
  store ptr %6, ptr %impl, align 8, !tbaa !110
  %8 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %negotiator_base7 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %8, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base7, i32 0, i32 0
  %9 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %negotiator_base8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %9, i32 0, i32 4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %negotiator_base8, ptr noundef @s_destroy_tunneling_ntlm_negotiator)
  %10 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %negotiator_base9 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %10, i32 0, i32 4
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base9, i32 0, i32 2
  store ptr @s_tunneling_ntlm_proxy_negotiator_tunneling_vtable, ptr %strategy_vtable, align 8, !tbaa !16
  %11 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %call10 = call ptr @aws_http_proxy_strategy_acquire(ptr noundef %11)
  %12 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %12, i32 0, i32 1
  store ptr %call10, ptr %strategy, align 8, !tbaa !111
  %13 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %negotiator_base11 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %13, i32 0, i32 4
  store ptr %negotiator_base11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_negotiator) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_ntlm_negotiator(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %ntlm_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %ntlm_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %challenge_token = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %challenge_token, align 8, !tbaa !112
  call void @aws_string_destroy(ptr noundef %3)
  %4 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %strategy, align 8, !tbaa !111
  call void @aws_http_proxy_strategy_release(ptr noundef %5)
  %6 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %allocator, align 8, !tbaa !108
  %8 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_ntlm_tunnel_transform_connect(ptr noundef %proxy_negotiator, ptr noundef %message, ptr noundef %negotiation_termination_callback, ptr noundef %negotiation_http_request_forward_callback, ptr noundef %internal_proxy_user_data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %negotiation_termination_callback.addr = alloca ptr, align 8
  %negotiation_http_request_forward_callback.addr = alloca ptr, align 8
  %internal_proxy_user_data.addr = alloca ptr, align 8
  %ntlm_negotiator = alloca ptr, align 8
  %ntlm_strategy = alloca ptr, align 8
  %result = alloca i32, align 4
  %error_code = alloca i32, align 4
  %challenge_answer_token = alloca ptr, align 8
  %challenge_token = alloca %struct.aws_byte_cursor, align 8
  %tmp = alloca %struct.aws_byte_cursor, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %negotiation_termination_callback, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  store ptr %negotiation_http_request_forward_callback, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  store ptr %internal_proxy_user_data, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %ntlm_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_strategy) #8
  %2 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %strategy, align 8, !tbaa !111
  %impl1 = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %impl1, align 8, !tbaa !24
  store ptr %4, ptr %ntlm_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 -1, ptr %result, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #8
  store i32 0, ptr %error_code, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %challenge_answer_token) #8
  store ptr null, ptr %challenge_answer_token, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %challenge_token) #8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %challenge_token, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %connect_state, align 8, !tbaa !113
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 2071, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end:                                           ; preds = %do.end
  %7 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state2 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %connect_state2, align 8, !tbaa !113
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 38, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %challenge_token6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %challenge_token6, align 8, !tbaa !112
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 2081, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end9:                                          ; preds = %if.end5
  %11 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state10 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %11, i32 0, i32 2
  store i32 1, ptr %connect_state10, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8
  %12 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %challenge_token11 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %challenge_token11, align 8, !tbaa !112
  %call = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %13)
  %14 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 0
  %15 = extractvalue { i64, ptr } %call, 0
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 1
  %17 = extractvalue { i64, ptr } %call, 1
  store ptr %17, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %challenge_token, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !114
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8
  %18 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %get_challenge_token = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %get_challenge_token, align 8, !tbaa !75
  %20 = load ptr, ptr %ntlm_strategy, align 8, !tbaa !4
  %get_challenge_token_user_data = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %get_challenge_token_user_data, align 8, !tbaa !77
  %call12 = call ptr %19(ptr noundef %21, ptr noundef %challenge_token, ptr noundef %error_code)
  store ptr %call12, ptr %challenge_answer_token, align 8, !tbaa !4
  %22 = load ptr, ptr %challenge_answer_token, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %22, null
  br i1 %cmp13, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %23 = load i32, ptr %error_code, align 4, !tbaa !14
  %cmp14 = icmp ne i32 %23, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end9
  br label %done

if.end16:                                         ; preds = %lor.lhs.false
  %24 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %allocator, align 8, !tbaa !108
  %26 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #8
  %27 = load ptr, ptr %challenge_answer_token, align 8, !tbaa !4
  %call17 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %27)
  %28 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %29 = extractvalue { i64, ptr } %call17, 0
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %31 = extractvalue { i64, ptr } %call17, 1
  store ptr %31, ptr %30, align 8
  %32 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %call18 = call i32 @s_add_ntlm_proxy_usertoken_authentication_header(ptr noundef %25, ptr noundef %26, i64 %33, ptr %35)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #8
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 @aws_last_error()
  store i32 %call20, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end21:                                         ; preds = %if.end16
  %36 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state22 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %36, i32 0, i32 2
  store i32 1, ptr %connect_state22, align 8, !tbaa !113
  store i32 0, ptr %result, align 4, !tbaa !14
  br label %done

done:                                             ; preds = %if.end21, %if.then19, %if.then15, %if.then8, %if.then4, %if.then
  %37 = load i32, ptr %result, align 4, !tbaa !14
  %cmp23 = icmp ne i32 %37, 0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %done
  %38 = load i32, ptr %error_code, align 4, !tbaa !14
  %cmp25 = icmp eq i32 %38, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then24
  store i32 3, ptr %error_code, align 4, !tbaa !14
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then24
  %39 = load ptr, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %41 = load i32, ptr %error_code, align 4, !tbaa !14
  %42 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %39(ptr noundef %40, i32 noundef %41, ptr noundef %42)
  br label %if.end28

if.else:                                          ; preds = %done
  %43 = load ptr, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %43(ptr noundef %44, ptr noundef %45)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end27
  %46 = load ptr, ptr %challenge_answer_token, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %46)
  call void @llvm.lifetime.end.p0(i64 16, ptr %challenge_token) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %challenge_answer_token) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_strategy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ntlm_on_incoming_header_adaptive(ptr noundef %proxy_negotiator, i32 noundef %header_block, ptr noundef %header_array, i64 noundef %num_headers) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %header_block.addr = alloca i32, align 4
  %header_array.addr = alloca ptr, align 8
  %num_headers.addr = alloca i64, align 8
  %ntlm_negotiator = alloca ptr, align 8
  %proxy_authenticate_header_name = alloca %struct.aws_byte_cursor, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %header_name_cursor = alloca %struct.aws_byte_cursor, align 8
  %challenge_value_cursor = alloca %struct.aws_byte_cursor, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %header_block, ptr %header_block.addr, align 4, !tbaa !16
  store ptr %header_array, ptr %header_array.addr, align 8, !tbaa !4
  store i64 %num_headers, ptr %num_headers.addr, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %ntlm_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %connect_state, align 8, !tbaa !113
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %header_block.addr, align 4, !tbaa !16
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr %proxy_authenticate_header_name) #8
  %5 = load ptr, ptr @s_ntlm_challenge_token_header, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %5)
  %6 = getelementptr inbounds { i64, ptr }, ptr %proxy_authenticate_header_name, i32 0, i32 0
  %7 = extractvalue { i64, ptr } %call, 0
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds { i64, ptr }, ptr %proxy_authenticate_header_name, i32 0, i32 1
  %9 = extractvalue { i64, ptr } %call, 1
  store ptr %9, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %10 = load i64, ptr %i, align 8, !tbaa !34
  %11 = load i64, ptr %num_headers.addr, align 8, !tbaa !34
  %cmp3 = icmp ult i64 %10, %11
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %header_name_cursor) #8
  %12 = load ptr, ptr %header_array.addr, align 8, !tbaa !4
  %13 = load i64, ptr %i, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds %struct.aws_http_header, ptr %12, i64 %13
  %name = getelementptr inbounds %struct.aws_http_header, ptr %arrayidx, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %header_name_cursor, ptr align 8 %name, i64 16, i1 false), !tbaa.struct !114
  %call4 = call zeroext i1 @aws_byte_cursor_eq_ignore_case(ptr noundef %proxy_authenticate_header_name, ptr noundef %header_name_cursor)
  br i1 %call4, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  %14 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %challenge_token = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %challenge_token, align 8, !tbaa !112
  call void @aws_string_destroy(ptr noundef %15)
  call void @llvm.lifetime.start.p0(i64 16, ptr %challenge_value_cursor) #8
  %16 = load ptr, ptr %header_array.addr, align 8, !tbaa !4
  %17 = load i64, ptr %i, align 8, !tbaa !34
  %arrayidx6 = getelementptr inbounds %struct.aws_http_header, ptr %16, i64 %17
  %value = getelementptr inbounds %struct.aws_http_header, ptr %arrayidx6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %challenge_value_cursor, ptr align 8 %value, i64 16, i1 false), !tbaa.struct !114
  %18 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %allocator, align 8, !tbaa !108
  %call7 = call ptr @aws_string_new_from_cursor(ptr noundef %19, ptr noundef %challenge_value_cursor)
  %20 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %challenge_token8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %20, i32 0, i32 3
  store ptr %call7, ptr %challenge_token8, align 8, !tbaa !112
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %challenge_value_cursor) #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 16, ptr %header_name_cursor) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %21 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.end:                                          ; preds = %cleanup9
  call void @llvm.lifetime.end.p0(i64 16, ptr %proxy_authenticate_header_name) #8
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_negotiator) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ntlm_on_connect_status(ptr noundef %proxy_negotiator, i32 noundef %status_code) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %status_code.addr = alloca i32, align 4
  %ntlm_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %status_code, ptr %status_code.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %ntlm_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %connect_state, align 8, !tbaa !113
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status_code.addr, align 4, !tbaa !16
  %cmp1 = icmp ne i32 200, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state3 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %5, i32 0, i32 2
  store i32 3, ptr %connect_state3, align 8, !tbaa !113
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %connect_state4 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %6, i32 0, i32 2
  store i32 2, ptr %connect_state4, align 8, !tbaa !113
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_negotiator) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ntlm_on_incoming_body(ptr noundef %proxy_negotiator, ptr noundef %data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ntlm_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %ntlm_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %ntlm_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_negotiator) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ntlm_tunnel_get_retry_directive(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @s_add_ntlm_proxy_usertoken_authentication_header(ptr noundef %allocator, ptr noundef %request, i64 %credential_response.coerce0, ptr %credential_response.coerce1) #0 {
entry:
  %credential_response = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %request.addr = alloca ptr, align 8
  %header_value = alloca %struct.aws_byte_buf, align 8
  %result = alloca i32, align 4
  %auth_header_cursor = alloca %struct.aws_byte_cursor, align 8
  %header = alloca %struct.aws_http_header, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %credential_response, i32 0, i32 0
  store i64 %credential_response.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %credential_response, i32 0, i32 1
  store ptr %credential_response.coerce1, ptr %1, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %request, ptr %request.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %header_value) #8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %header_value, i8 0, i64 32, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 -1, ptr %result, align 4, !tbaa !14
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %3 = load ptr, ptr @s_proxy_authorization_header_ntlm_prefix, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_string, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %len, align 8, !tbaa !27
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %credential_response, i32 0, i32 0
  %5 = load i64, ptr %len1, align 8, !tbaa !35
  %add = add i64 %4, %5
  %call = call i32 @aws_byte_buf_init(ptr noundef %header_value, ptr noundef %2, i64 noundef %add)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %done

if.end:                                           ; preds = %do.end
  %6 = load ptr, ptr @s_proxy_authorization_header_ntlm_prefix, align 8, !tbaa !4
  %call2 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %auth_header_cursor, i32 0, i32 0
  %8 = extractvalue { i64, ptr } %call2, 0
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %auth_header_cursor, i32 0, i32 1
  %10 = extractvalue { i64, ptr } %call2, 1
  store ptr %10, ptr %9, align 8
  %call3 = call i32 @aws_byte_buf_append(ptr noundef %header_value, ptr noundef %auth_header_cursor)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %done

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @aws_byte_buf_append(ptr noundef %header_value, ptr noundef %credential_response)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  br label %done

if.end10:                                         ; preds = %if.end6
  %name = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %11 = load ptr, ptr @s_proxy_authorization_header_name, align 8, !tbaa !4
  %call11 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %11)
  %12 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %13 = extractvalue { i64, ptr } %call11, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %15 = extractvalue { i64, ptr } %call11, 1
  store ptr %15, ptr %14, align 8
  %value = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %header_value, i32 0, i32 1
  %16 = load ptr, ptr %buffer, align 8, !tbaa !31
  %len12 = getelementptr inbounds %struct.aws_byte_buf, ptr %header_value, i32 0, i32 0
  %17 = load i64, ptr %len12, align 8, !tbaa !33
  %call13 = call { i64, ptr } @aws_byte_cursor_from_array(ptr noundef %16, i64 noundef %17)
  %18 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %19 = extractvalue { i64, ptr } %call13, 0
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %21 = extractvalue { i64, ptr } %call13, 1
  store ptr %21, ptr %20, align 8
  %compression = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 2
  store i32 0, ptr %compression, align 8, !tbaa !37
  %22 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call14 = call i32 @aws_http_message_add_header(ptr noundef %22, ptr noundef byval(%struct.aws_http_header) align 8 %header)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  br label %done

if.end17:                                         ; preds = %if.end10
  store i32 0, ptr %result, align 4, !tbaa !14
  br label %done

done:                                             ; preds = %if.end17, %if.then16, %if.then9, %if.then5, %if.then
  call void @aws_byte_buf_clean_up(ptr noundef %header_value)
  %23 = load i32, ptr %result, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %header_value) #8
  ret i32 %23
}

declare zeroext i1 @aws_byte_cursor_eq_ignore_case(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @s_create_tunneling_ntlm_credential_negotiator(ptr noundef %proxy_strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %proxy_strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %ntlm_credential_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_credential_negotiator) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 72)
  store ptr %call2, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator6, align 8, !tbaa !108
  %6 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %7 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %negotiator_base = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %7, i32 0, i32 4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base, i32 0, i32 1
  store ptr %6, ptr %impl, align 8, !tbaa !110
  %8 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %negotiator_base7 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %8, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base7, i32 0, i32 0
  %9 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %negotiator_base8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %9, i32 0, i32 4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %negotiator_base8, ptr noundef @s_destroy_tunneling_ntlm_credential_negotiator)
  %10 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %negotiator_base9 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %10, i32 0, i32 4
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base9, i32 0, i32 2
  store ptr @s_tunneling_ntlm_proxy_credential_negotiator_tunneling_vtable, ptr %strategy_vtable, align 8, !tbaa !16
  %11 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %call10 = call ptr @aws_http_proxy_strategy_acquire(ptr noundef %11)
  %12 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %12, i32 0, i32 1
  store ptr %call10, ptr %strategy, align 8, !tbaa !111
  %13 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %negotiator_base11 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %13, i32 0, i32 4
  store ptr %negotiator_base11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_credential_negotiator) #8
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_ntlm_credential_negotiator(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %ntlm_credential_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_credential_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %challenge_token = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %challenge_token, align 8, !tbaa !112
  call void @aws_string_destroy(ptr noundef %3)
  %4 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %strategy, align 8, !tbaa !111
  call void @aws_http_proxy_strategy_release(ptr noundef %5)
  %6 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %allocator, align 8, !tbaa !108
  %8 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_credential_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_ntlm_credential_tunnel_transform_connect(ptr noundef %proxy_negotiator, ptr noundef %message, ptr noundef %negotiation_termination_callback, ptr noundef %negotiation_http_request_forward_callback, ptr noundef %internal_proxy_user_data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %negotiation_termination_callback.addr = alloca ptr, align 8
  %negotiation_http_request_forward_callback.addr = alloca ptr, align 8
  %internal_proxy_user_data.addr = alloca ptr, align 8
  %ntlm_credential_negotiator = alloca ptr, align 8
  %ntlm_credential_strategy = alloca ptr, align 8
  %result = alloca i32, align 4
  %error_code = alloca i32, align 4
  %token = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %negotiation_termination_callback, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  store ptr %negotiation_http_request_forward_callback, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  store ptr %internal_proxy_user_data, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_credential_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ntlm_credential_strategy) #8
  %2 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %strategy, align 8, !tbaa !111
  %impl1 = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %impl1, align 8, !tbaa !24
  store ptr %4, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 -1, ptr %result, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #8
  store i32 0, ptr %error_code, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %token) #8
  store ptr null, ptr %token, align 8, !tbaa !4
  %5 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %connect_state = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %connect_state, align 8, !tbaa !113
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2071, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %connect_state2 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %connect_state2, align 8, !tbaa !113
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 38, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %connect_state6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %9, i32 0, i32 2
  store i32 1, ptr %connect_state6, align 8, !tbaa !113
  %10 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %get_token = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %get_token, align 8, !tbaa !79
  %12 = load ptr, ptr %ntlm_credential_strategy, align 8, !tbaa !4
  %get_challenge_token_user_data = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_ntlm, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %get_challenge_token_user_data, align 8, !tbaa !77
  %call = call ptr %11(ptr noundef %13, ptr noundef %error_code)
  store ptr %call, ptr %token, align 8, !tbaa !4
  %14 = load ptr, ptr %token, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %14, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %15 = load i32, ptr %error_code, align 4, !tbaa !14
  %cmp8 = icmp ne i32 %15, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end5
  br label %done

if.end10:                                         ; preds = %lor.lhs.false
  %16 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %allocator, align 8, !tbaa !108
  %18 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #8
  %19 = load ptr, ptr %token, align 8, !tbaa !4
  %call11 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %19)
  %20 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %21 = extractvalue { i64, ptr } %call11, 0
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %23 = extractvalue { i64, ptr } %call11, 1
  store ptr %23, ptr %22, align 8
  %24 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %call12 = call i32 @s_add_ntlm_proxy_usertoken_authentication_header(ptr noundef %17, ptr noundef %18, i64 %25, ptr %27)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #8
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 @aws_last_error()
  store i32 %call14, ptr %error_code, align 4, !tbaa !14
  br label %done

if.end15:                                         ; preds = %if.end10
  %28 = load ptr, ptr %ntlm_credential_negotiator, align 8, !tbaa !4
  %connect_state16 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_ntlm, ptr %28, i32 0, i32 2
  store i32 1, ptr %connect_state16, align 8, !tbaa !113
  store i32 0, ptr %result, align 4, !tbaa !14
  br label %done

done:                                             ; preds = %if.end15, %if.then13, %if.then9, %if.then4, %if.then
  %29 = load i32, ptr %result, align 4, !tbaa !14
  %cmp17 = icmp ne i32 %29, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %done
  %30 = load i32, ptr %error_code, align 4, !tbaa !14
  %cmp19 = icmp eq i32 %30, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  store i32 3, ptr %error_code, align 4, !tbaa !14
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  %31 = load ptr, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %33 = load i32, ptr %error_code, align 4, !tbaa !14
  %34 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %31(ptr noundef %32, i32 noundef %33, ptr noundef %34)
  br label %if.end22

if.else:                                          ; preds = %done
  %35 = load ptr, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void %35(ptr noundef %36, ptr noundef %37)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end21
  %38 = load ptr, ptr %token, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %38)
  call void @llvm.lifetime.end.p0(i64 8, ptr %token) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_credential_strategy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ntlm_credential_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_create_tunneling_sequence_negotiator(ptr noundef %proxy_strategy, ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %proxy_strategy.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %sequence_strategy = alloca ptr, align 8
  %strategy_count = alloca i64, align 8
  %i = alloca i64, align 8
  %strategy = alloca ptr, align 8
  %negotiator = alloca ptr, align 8
  store ptr %proxy_strategy, ptr %proxy_strategy.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 120)
  store ptr %call2, ptr %sequence_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator6, align 8, !tbaa !115
  %6 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %7 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiator_base = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %7, i32 0, i32 6
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base, i32 0, i32 1
  store ptr %6, ptr %impl, align 8, !tbaa !117
  %8 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiator_base7 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %8, i32 0, i32 6
  %ref_count = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base7, i32 0, i32 0
  %9 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiator_base8 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %9, i32 0, i32 6
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %negotiator_base8, ptr noundef @s_destroy_tunneling_sequence_negotiator)
  %10 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiator_base9 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %10, i32 0, i32 6
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %negotiator_base9, i32 0, i32 2
  store ptr @s_tunneling_sequence_proxy_negotiator_tunneling_vtable, ptr %strategy_vtable, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_strategy) #8
  %11 = load ptr, ptr %proxy_strategy.addr, align 8, !tbaa !4
  %impl10 = getelementptr inbounds %struct.aws_http_proxy_strategy, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %impl10, align 8, !tbaa !24
  store ptr %12, ptr %sequence_strategy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %strategy_count) #8
  %13 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategies = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %13, i32 0, i32 1
  %call11 = call i64 @aws_array_list_length(ptr noundef %strategies)
  store i64 %call11, ptr %strategy_count, align 8, !tbaa !34
  %14 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %16 = load i64, ptr %strategy_count, align 8, !tbaa !34
  %call12 = call i32 @aws_array_list_init_dynamic(ptr noundef %negotiators, ptr noundef %15, i64 noundef %16, i64 noundef 8)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end5
  br label %on_error

if.end14:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %17 = load i64, ptr %i, align 8, !tbaa !34
  %18 = load i64, ptr %strategy_count, align 8, !tbaa !34
  %cmp15 = icmp ult i64 %17, %18
  br i1 %cmp15, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %strategy) #8
  store ptr null, ptr %strategy, align 8, !tbaa !4
  %19 = load ptr, ptr %sequence_strategy, align 8, !tbaa !4
  %strategies16 = getelementptr inbounds %struct.aws_http_proxy_strategy_tunneling_sequence, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %i, align 8, !tbaa !34
  %call17 = call i32 @aws_array_list_get_at(ptr noundef %strategies16, ptr noundef %strategy, i64 noundef %20)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

if.end20:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator) #8
  %21 = load ptr, ptr %strategy, align 8, !tbaa !4
  %22 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call21 = call ptr @aws_http_proxy_strategy_create_negotiator(ptr noundef %21, ptr noundef %22)
  store ptr %call21, ptr %negotiator, align 8, !tbaa !4
  %23 = load ptr, ptr %negotiator, align 8, !tbaa !4
  %cmp22 = icmp eq ptr %23, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %24 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators25 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %24, i32 0, i32 1
  %call26 = call i32 @aws_array_list_push_back(ptr noundef %negotiators25, ptr noundef %negotiator)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  %25 = load ptr, ptr %negotiator, align 8, !tbaa !4
  call void @aws_http_proxy_negotiator_release(ptr noundef %25)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.then23, %if.end29
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator) #8
  br label %cleanup30

cleanup30:                                        ; preds = %if.then19, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %strategy) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup30
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %26, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

cleanup31:                                        ; preds = %cleanup30, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest32 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest32, label %cleanup35 [
    i32 3, label %for.end
    i32 2, label %on_error
  ]

for.end:                                          ; preds = %cleanup31
  %27 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiator_base33 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %27, i32 0, i32 6
  store ptr %negotiator_base33, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

on_error:                                         ; preds = %cleanup31, %if.then13
  %28 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiator_base34 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %28, i32 0, i32 6
  call void @aws_http_proxy_negotiator_release(ptr noundef %negotiator_base34)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %on_error, %for.end, %cleanup31
  call void @llvm.lifetime.end.p0(i64 8, ptr %strategy_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_strategy) #8
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup35, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  br label %return

return:                                           ; preds = %cleanup37, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define internal void @s_destroy_tunneling_sequence_negotiator(ptr noundef %proxy_negotiator) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  %negotiator_count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %sequence_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator_count) #8
  %2 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %2, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %negotiators)
  store i64 %call, ptr %negotiator_count, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !tbaa !34
  %4 = load i64, ptr %negotiator_count, align 8, !tbaa !34
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator) #8
  store ptr null, ptr %negotiator, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %i, align 8, !tbaa !34
  %call2 = call i32 @aws_array_list_get_at(ptr noundef %negotiators1, ptr noundef %negotiator, i64 noundef %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %negotiator, align 8, !tbaa !4
  call void @aws_http_proxy_negotiator_release(ptr noundef %7)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %8 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators4 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %9, i32 0, i32 1
  call void @aws_array_list_clean_up(ptr noundef %negotiators4)
  %10 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %allocator, align 8, !tbaa !115
  %12 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %11, ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_array_list_length(ptr noalias noundef %list) #2 {
entry:
  %list.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %length, align 8, !tbaa !118
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !92
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 342) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !118
  store i64 %5, ptr %len, align 8, !tbaa !34
  %6 = load i64, ptr %len, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8
  ret i64 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_get_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #2 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !34
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !34
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %data, align 8, !tbaa !92
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %item_size, align 8, !tbaa !94
  %7 = load i64, ptr %index.addr, align 8, !tbaa !34
  %mul = mul i64 %6, %7
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size1 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size1, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %add.ptr, i64 %9, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @aws_raise_error(i32 noundef 10)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_clean_up(ptr noalias noundef %list) #2 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !95
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !92
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc2, align 8, !tbaa !95
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !92
  call void @aws_mem_release(ptr noundef %5, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 40, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_sequence_tunnel_transform_connect(ptr noundef %proxy_negotiator, ptr noundef %message, ptr noundef %negotiation_termination_callback, ptr noundef %negotiation_http_request_forward_callback, ptr noundef %internal_proxy_user_data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %negotiation_termination_callback.addr = alloca ptr, align 8
  %negotiation_http_request_forward_callback.addr = alloca ptr, align 8
  %internal_proxy_user_data.addr = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %negotiation_termination_callback, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  store ptr %negotiation_http_request_forward_callback, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  store ptr %internal_proxy_user_data, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %sequence_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %internal_proxy_user_data.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_internal_proxy_user_data = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %3, i32 0, i32 3
  store ptr %2, ptr %original_internal_proxy_user_data, align 8, !tbaa !119
  %4 = load ptr, ptr %negotiation_termination_callback.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_negotiation_termination_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %5, i32 0, i32 4
  store ptr %4, ptr %original_negotiation_termination_callback, align 8, !tbaa !120
  %6 = load ptr, ptr %negotiation_http_request_forward_callback.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_negotiation_http_request_forward_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %7, i32 0, i32 5
  store ptr %6, ptr %original_negotiation_http_request_forward_callback, align 8, !tbaa !121
  %8 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @s_sequence_tunnel_try_next_negotiator(ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_sequence_on_incoming_headers(ptr noundef %proxy_negotiator, i32 noundef %header_block, ptr noundef %header_array, i64 noundef %num_headers) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %header_block.addr = alloca i32, align 4
  %header_array.addr = alloca ptr, align 8
  %num_headers.addr = alloca i64, align 8
  %sequence_negotiator = alloca ptr, align 8
  %negotiator_count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %negotiator = alloca ptr, align 8
  %on_incoming_headers = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %header_block, ptr %header_block.addr, align 4, !tbaa !16
  store ptr %header_array, ptr %header_array.addr, align 8, !tbaa !4
  store i64 %num_headers, ptr %num_headers.addr, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %sequence_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator_count) #8
  %2 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %2, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %negotiators)
  store i64 %call, ptr %negotiator_count, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !tbaa !34
  %4 = load i64, ptr %negotiator_count, align 8, !tbaa !34
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator) #8
  store ptr null, ptr %negotiator, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %i, align 8, !tbaa !34
  %call2 = call i32 @aws_array_list_get_at(ptr noundef %negotiators1, ptr noundef %negotiator, i64 noundef %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %on_incoming_headers) #8
  %7 = load ptr, ptr %negotiator, align 8, !tbaa !4
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %strategy_vtable, align 8, !tbaa !16
  %on_incoming_headers_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunnelling_vtable, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %on_incoming_headers_callback, align 8, !tbaa !122
  store ptr %9, ptr %on_incoming_headers, align 8, !tbaa !4
  %10 = load ptr, ptr %on_incoming_headers, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %on_incoming_headers, align 8, !tbaa !4
  %12 = load ptr, ptr %negotiator, align 8, !tbaa !4
  %13 = load i32, ptr %header_block.addr, align 4, !tbaa !16
  %14 = load ptr, ptr %header_array.addr, align 8, !tbaa !4
  %15 = load i64, ptr %num_headers.addr, align 8, !tbaa !34
  %call5 = call i32 %11(ptr noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %on_incoming_headers) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %16 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %16, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @s_sequence_on_connect_status(ptr noundef %proxy_negotiator, i32 noundef %status_code) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %status_code.addr = alloca i32, align 4
  %sequence_negotiator = alloca ptr, align 8
  %negotiator_count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %negotiator = alloca ptr, align 8
  %on_status = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store i32 %status_code, ptr %status_code.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %sequence_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator_count) #8
  %2 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %2, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %negotiators)
  store i64 %call, ptr %negotiator_count, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !tbaa !34
  %4 = load i64, ptr %negotiator_count, align 8, !tbaa !34
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator) #8
  store ptr null, ptr %negotiator, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %i, align 8, !tbaa !34
  %call2 = call i32 @aws_array_list_get_at(ptr noundef %negotiators1, ptr noundef %negotiator, i64 noundef %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %on_status) #8
  %7 = load ptr, ptr %negotiator, align 8, !tbaa !4
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %strategy_vtable, align 8, !tbaa !16
  %on_status_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunnelling_vtable, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %on_status_callback, align 8, !tbaa !123
  store ptr %9, ptr %on_status, align 8, !tbaa !4
  %10 = load ptr, ptr %on_status, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %on_status, align 8, !tbaa !4
  %12 = load ptr, ptr %negotiator, align 8, !tbaa !4
  %13 = load i32, ptr %status_code.addr, align 4, !tbaa !16
  %call5 = call i32 %11(ptr noundef %12, i32 noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %on_status) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @s_sequence_on_incoming_body(ptr noundef %proxy_negotiator, ptr noundef %data) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  %negotiator_count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %negotiator = alloca ptr, align 8
  %on_incoming_body = alloca ptr, align 8
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %sequence_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator_count) #8
  %2 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %2, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %negotiators)
  store i64 %call, ptr %negotiator_count, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !tbaa !34
  %4 = load i64, ptr %negotiator_count, align 8, !tbaa !34
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator) #8
  store ptr null, ptr %negotiator, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %i, align 8, !tbaa !34
  %call2 = call i32 @aws_array_list_get_at(ptr noundef %negotiators1, ptr noundef %negotiator, i64 noundef %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %on_incoming_body) #8
  %7 = load ptr, ptr %negotiator, align 8, !tbaa !4
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %strategy_vtable, align 8, !tbaa !16
  %on_incoming_body_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunnelling_vtable, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %on_incoming_body_callback, align 8, !tbaa !124
  store ptr %9, ptr %on_incoming_body, align 8, !tbaa !4
  %10 = load ptr, ptr %on_incoming_body, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %on_incoming_body, align 8, !tbaa !4
  %12 = load ptr, ptr %negotiator, align 8, !tbaa !4
  %13 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call5 = call i32 %11(ptr noundef %12, ptr noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %on_incoming_body) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i64, ptr %i, align 8, !tbaa !34
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @s_sequence_get_retry_directive(ptr noundef %proxy_negotiator) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy_negotiator.addr = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  %next_negotiator = alloca ptr, align 8
  %next_negotiator_directive = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %sequence_negotiator, align 8, !tbaa !4
  %2 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %current_negotiator_transform_index = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %current_negotiator_transform_index, align 8, !tbaa !125
  %4 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %4, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %negotiators)
  %cmp = icmp ult i64 %3, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_negotiator) #8
  store ptr null, ptr %next_negotiator, align 8, !tbaa !4
  %5 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %current_negotiator_transform_index2 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %current_negotiator_transform_index2, align 8, !tbaa !125
  %call3 = call i32 @aws_array_list_get_at(ptr noundef %negotiators1, ptr noundef %next_negotiator, i64 noundef %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_negotiator_directive) #8
  %8 = load ptr, ptr %next_negotiator, align 8, !tbaa !4
  %call4 = call i32 @aws_http_proxy_negotiator_get_retry_directive(ptr noundef %8)
  store i32 %call4, ptr %next_negotiator_directive, align 4, !tbaa !16
  %9 = load i32, ptr %next_negotiator_directive, align 4, !tbaa !16
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_negotiator_directive) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_negotiator) #8
  br label %cleanup8

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @s_sequence_tunnel_try_next_negotiator(ptr noundef %proxy_negotiator, ptr noundef %message) #0 {
entry:
  %proxy_negotiator.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  %negotiator_count = alloca i64, align 8
  %current_negotiator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %proxy_negotiator, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %0 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %1, ptr %sequence_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %negotiator_count) #8
  %2 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %2, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %negotiators)
  store i64 %call, ptr %negotiator_count, align 8, !tbaa !34
  %3 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %current_negotiator_transform_index = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %current_negotiator_transform_index, align 8, !tbaa !125
  %5 = load i64, ptr %negotiator_count, align 8, !tbaa !34
  %cmp = icmp uge i64 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %on_error

if.end:                                           ; preds = %entry
  store ptr null, ptr %current_negotiator, align 8, !tbaa !4
  %6 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators1 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %current_negotiator_transform_index2 = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %current_negotiator_transform_index2, align 8, !tbaa !125
  %inc = add i64 %8, 1
  store i64 %inc, ptr %current_negotiator_transform_index2, align 8, !tbaa !125
  %call3 = call i32 @aws_array_list_get_at(ptr noundef %negotiators1, ptr noundef %current_negotiator, i64 noundef %8)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %on_error

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %current_negotiator, align 8, !tbaa !4
  %strategy_vtable = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %strategy_vtable, align 8, !tbaa !16
  %connect_request_transform = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunnelling_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %connect_request_transform, align 8, !tbaa !126
  %12 = load ptr, ptr %current_negotiator, align 8, !tbaa !4
  %13 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %proxy_negotiator.addr, align 8, !tbaa !4
  call void %11(ptr noundef %12, ptr noundef %13, ptr noundef @s_sequence_tunnel_iteration_termination_callback, ptr noundef @s_sequence_tunnel_iteration_forward_callback, ptr noundef %14)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then4, %if.then
  %15 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_negotiation_termination_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %original_negotiation_termination_callback, align 8, !tbaa !120
  %17 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_internal_proxy_user_data = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %original_internal_proxy_user_data, align 8, !tbaa !119
  call void %16(ptr noundef %17, i32 noundef 2071, ptr noundef %19)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %negotiator_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_sequence_tunnel_iteration_termination_callback(ptr noundef %message, i32 noundef %error_code, ptr noundef %user_data) #0 {
entry:
  %message.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %user_data.addr = alloca ptr, align 8
  %proxy_negotiator = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %connection_error_code = alloca i32, align 4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !14
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %proxy_negotiator) #8
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %proxy_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %1 = load ptr, ptr %proxy_negotiator, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %2, ptr %sequence_negotiator, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !127
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !129
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %6(ptr noundef %7, i32 noundef 2058)
  %cmp2 = icmp uge i32 %call1, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable3, align 8, !tbaa !127
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !131
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %proxy_negotiator, align 8, !tbaa !4
  %13 = load i32, ptr %error_code.addr, align 4, !tbaa !14
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 3, i32 noundef 2058, ptr noundef @.str.3, ptr noundef %12, i32 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %connection_error_code) #8
  store i32 2083, ptr %connection_error_code, align 4, !tbaa !14
  %14 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %current_negotiator_transform_index = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %current_negotiator_transform_index, align 8, !tbaa !125
  %16 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %negotiators = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %16, i32 0, i32 1
  %call5 = call i64 @aws_array_list_length(ptr noundef %negotiators)
  %cmp6 = icmp uge i64 %15, %call5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.end
  store i32 2071, ptr %connection_error_code, align 4, !tbaa !14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end
  %17 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_negotiation_termination_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %original_negotiation_termination_callback, align 8, !tbaa !120
  %19 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %20 = load i32, ptr %connection_error_code, align 4, !tbaa !14
  %21 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_internal_proxy_user_data = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %original_internal_proxy_user_data, align 8, !tbaa !119
  call void %18(ptr noundef %19, i32 noundef %20, ptr noundef %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr %connection_error_code) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %proxy_negotiator) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_sequence_tunnel_iteration_forward_callback(ptr noundef %message, ptr noundef %user_data) #0 {
entry:
  %message.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %proxy_negotiator = alloca ptr, align 8
  %sequence_negotiator = alloca ptr, align 8
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %proxy_negotiator) #8
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %proxy_negotiator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sequence_negotiator) #8
  %1 = load ptr, ptr %proxy_negotiator, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_http_proxy_negotiator, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %impl, align 8, !tbaa !19
  store ptr %2, ptr %sequence_negotiator, align 8, !tbaa !4
  %3 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_negotiation_http_request_forward_callback = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %original_negotiation_http_request_forward_callback, align 8, !tbaa !121
  %5 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %sequence_negotiator, align 8, !tbaa !4
  %original_internal_proxy_user_data = getelementptr inbounds %struct.aws_http_proxy_negotiator_tunneling_sequence, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %original_internal_proxy_user_data, align 8, !tbaa !119
  call void %4(ptr noundef %5, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %sequence_negotiator) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %proxy_negotiator) #8
  ret void
}

declare ptr @aws_logger_get() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !34
  store i64 %b, ptr %b.addr, align 8, !tbaa !34
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !34
  %1 = load i64, ptr %b.addr, align 8, !tbaa !34
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_mul_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #2 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !34
  store i64 %b, ptr %b.addr, align 8, !tbaa !34
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !34
  %1 = load i64, ptr %b.addr, align 8, !tbaa !34
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  store i64 %5, ptr %2, align 8
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #2 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !34
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load i64, ptr %index.addr, align 8, !tbaa !34
  %call = call i32 @aws_array_list_ensure_capacity(ptr noundef %0, i64 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !92
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.10, ptr noundef @.str.5, i32 noundef 389) #9
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !92
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !94
  %8 = load i64, ptr %index.addr, align 8, !tbaa !34
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %11, i1 false)
  %12 = load i64, ptr %index.addr, align 8, !tbaa !34
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call6 = call i64 @aws_array_list_length(ptr noundef %13)
  %cmp = icmp uge i64 %12, %call6
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %14 = load i64, ptr %index.addr, align 8, !tbaa !34
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 2
  %call8 = call i32 @aws_add_size_checked(i64 noundef %14, i64 noundef 1, ptr noundef %length)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %do.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @aws_array_list_ensure_capacity(ptr noundef, i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !34
  store i64 %b, ptr %b.addr, align 8, !tbaa !34
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !34
  %1 = load i64, ptr %b.addr, align 8, !tbaa !34
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_add_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #2 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !34
  store i64 %b, ptr %b.addr, align 8, !tbaa !34
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !34
  %1 = load i64, ptr %b.addr, align 8, !tbaa !34
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  store i64 %5, ptr %2, align 8
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!8 = !{!9, !5, i64 24}
!9 = !{!"aws_http_proxy_strategy", !10, i64 0, !5, i64 24, !5, i64 32, !6, i64 40}
!10 = !{!"aws_ref_count", !11, i64 0, !5, i64 8, !5, i64 16}
!11 = !{!"aws_atomic_var", !5, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"aws_http_proxy_strategy_vtable", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !5, i64 32}
!18 = !{!"aws_http_proxy_negotiator_tunnelling_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!19 = !{!20, !5, i64 24}
!20 = !{!"aws_http_proxy_negotiator", !10, i64 0, !5, i64 24, !6, i64 32}
!21 = !{!22, !5, i64 0}
!22 = !{!"aws_http_proxy_negotiator_basic_auth", !5, i64 0, !5, i64 8, !6, i64 16, !20, i64 24}
!23 = !{!22, !5, i64 8}
!24 = !{!9, !5, i64 32}
!25 = !{!26, !5, i64 8}
!26 = !{!"aws_http_proxy_strategy_basic_auth", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24}
!27 = !{!28, !29, i64 8}
!28 = !{!"aws_string", !5, i64 0, !29, i64 8, !6, i64 16}
!29 = !{!"long", !6, i64 0}
!30 = !{!26, !5, i64 16}
!31 = !{!32, !5, i64 8}
!32 = !{!"aws_byte_buf", !29, i64 0, !5, i64 8, !29, i64 16, !5, i64 24}
!33 = !{!32, !29, i64 0}
!34 = !{!29, !29, i64 0}
!35 = !{!36, !29, i64 0}
!36 = !{!"aws_byte_cursor", !29, i64 0, !5, i64 8}
!37 = !{!38, !6, i64 32}
!38 = !{!"aws_http_header", !36, i64 0, !36, i64 16, !6, i64 32}
!39 = !{!22, !6, i64 16}
!40 = !{!41, !6, i64 0}
!41 = !{!"aws_http_proxy_strategy_basic_auth_options", !6, i64 0, !36, i64 8, !36, i64 24}
!42 = !{!26, !5, i64 56}
!43 = !{!26, !5, i64 48}
!44 = !{!26, !5, i64 0}
!45 = !{!26, !6, i64 64}
!46 = !{!47, !6, i64 8}
!47 = !{!"aws_http_proxy_negotiator_one_time_identity", !5, i64 0, !6, i64 8, !20, i64 16}
!48 = !{!49, !5, i64 40}
!49 = !{!"aws_http_proxy_strategy_one_time_identity", !5, i64 0, !9, i64 8}
!50 = !{!49, !5, i64 32}
!51 = !{!49, !6, i64 48}
!52 = !{!49, !5, i64 0}
!53 = !{!54, !5, i64 40}
!54 = !{!"aws_http_proxy_strategy_forwarding_identity", !5, i64 0, !9, i64 8}
!55 = !{!54, !5, i64 32}
!56 = !{!54, !6, i64 48}
!57 = !{!54, !5, i64 0}
!58 = !{!59, !5, i64 0}
!59 = !{!"aws_http_proxy_strategy_tunneling_kerberos_options", !5, i64 0, !5, i64 8}
!60 = !{!61, !5, i64 56}
!61 = !{!"aws_http_proxy_strategy_tunneling_kerberos", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24}
!62 = !{!61, !5, i64 48}
!63 = !{!61, !6, i64 64}
!64 = !{!61, !5, i64 0}
!65 = !{!61, !5, i64 8}
!66 = !{!59, !5, i64 8}
!67 = !{!61, !5, i64 16}
!68 = !{!69, !5, i64 8}
!69 = !{!"aws_http_proxy_strategy_tunneling_ntlm_options", !5, i64 0, !5, i64 8, !5, i64 16}
!70 = !{!71, !5, i64 64}
!71 = !{!"aws_http_proxy_strategy_tunneling_ntlm", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32}
!72 = !{!71, !5, i64 56}
!73 = !{!71, !6, i64 72}
!74 = !{!71, !5, i64 0}
!75 = !{!71, !5, i64 16}
!76 = !{!69, !5, i64 16}
!77 = !{!71, !5, i64 24}
!78 = !{!69, !5, i64 0}
!79 = !{!71, !5, i64 8}
!80 = !{!81, !5, i64 0}
!81 = !{!"aws_http_proxy_strategy_tunneling_adaptive_options", !5, i64 0, !5, i64 8}
!82 = !{!81, !5, i64 8}
!83 = !{!84, !5, i64 0}
!84 = !{!"aws_http_proxy_strategy_tunneling_sequence_options", !5, i64 0, !15, i64 8}
!85 = !{!84, !15, i64 8}
!86 = !{!87, !5, i64 80}
!87 = !{!"aws_http_proxy_strategy_tunneling_sequence", !5, i64 0, !88, i64 8, !9, i64 48}
!88 = !{!"aws_array_list", !5, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !5, i64 32}
!89 = !{!87, !5, i64 72}
!90 = !{!87, !6, i64 88}
!91 = !{!87, !5, i64 0}
!92 = !{!88, !5, i64 32}
!93 = !{!88, !29, i64 8}
!94 = !{!88, !29, i64 24}
!95 = !{!88, !5, i64 0}
!96 = !{!22, !5, i64 48}
!97 = !{!9, !6, i64 40}
!98 = !{!47, !5, i64 0}
!99 = !{!47, !5, i64 40}
!100 = !{!101, !5, i64 0}
!101 = !{!"aws_http_proxy_negotiator_forwarding_identity", !5, i64 0, !20, i64 8}
!102 = !{!101, !5, i64 32}
!103 = !{!104, !5, i64 0}
!104 = !{!"aws_http_proxy_negotiator_tunneling_kerberos", !5, i64 0, !5, i64 8, !6, i64 16, !20, i64 24}
!105 = !{!104, !5, i64 48}
!106 = !{!104, !5, i64 8}
!107 = !{!104, !6, i64 16}
!108 = !{!109, !5, i64 0}
!109 = !{!"aws_http_proxy_negotiator_tunneling_ntlm", !5, i64 0, !5, i64 8, !6, i64 16, !5, i64 24, !20, i64 32}
!110 = !{!109, !5, i64 56}
!111 = !{!109, !5, i64 8}
!112 = !{!109, !5, i64 24}
!113 = !{!109, !6, i64 16}
!114 = !{i64 0, i64 8, !34, i64 8, i64 8, !4}
!115 = !{!116, !5, i64 0}
!116 = !{!"aws_http_proxy_negotiator_tunneling_sequence", !5, i64 0, !88, i64 8, !29, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !20, i64 80}
!117 = !{!116, !5, i64 104}
!118 = !{!88, !29, i64 16}
!119 = !{!116, !5, i64 56}
!120 = !{!116, !5, i64 64}
!121 = !{!116, !5, i64 72}
!122 = !{!18, !5, i64 8}
!123 = !{!18, !5, i64 16}
!124 = !{!18, !5, i64 24}
!125 = !{!116, !29, i64 48}
!126 = !{!18, !5, i64 0}
!127 = !{!128, !5, i64 0}
!128 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!129 = !{!130, !5, i64 8}
!130 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!131 = !{!130, !5, i64 0}

; ModuleID = 'samples/927.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-auth/source/signable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, i64, [8 x i8] }
%struct.anon.0 = type { ptr, i64, [7 x i8] }
%struct.anon.1 = type { ptr, i64, [7 x i8] }
%struct.anon.2 = type { ptr, i64, [4 x i8] }
%struct.anon.3 = type { ptr, i64, [10 x i8] }
%struct.anon.4 = type { ptr, i64, [19 x i8] }
%struct.anon.5 = type { ptr, i64, [18 x i8] }
%struct.aws_signable_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_signable = type { ptr, ptr, ptr }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_signable_canonical_request_impl = type { ptr }

@g_aws_http_headers_property_list_name_s = internal constant %struct.anon { ptr null, i64 7, [8 x i8] c"headers\00" }, align 8
@g_aws_http_headers_property_list_name = global ptr @g_aws_http_headers_property_list_name_s, align 8
@g_aws_http_query_params_property_list_name_s = internal constant %struct.anon.0 { ptr null, i64 6, [7 x i8] c"params\00" }, align 8
@g_aws_http_query_params_property_list_name = global ptr @g_aws_http_query_params_property_list_name_s, align 8
@g_aws_http_method_property_name_s = internal constant %struct.anon.1 { ptr null, i64 6, [7 x i8] c"method\00" }, align 8
@g_aws_http_method_property_name = global ptr @g_aws_http_method_property_name_s, align 8
@g_aws_http_uri_property_name_s = internal constant %struct.anon.2 { ptr null, i64 3, [4 x i8] c"uri\00" }, align 8
@g_aws_http_uri_property_name = global ptr @g_aws_http_uri_property_name_s, align 8
@g_aws_signature_property_name_s = internal constant %struct.anon.3 { ptr null, i64 9, [10 x i8] c"signature\00" }, align 8
@g_aws_signature_property_name = global ptr @g_aws_signature_property_name_s, align 8
@g_aws_previous_signature_property_name_s = internal constant %struct.anon.4 { ptr null, i64 18, [19 x i8] c"previous-signature\00" }, align 8
@g_aws_previous_signature_property_name = global ptr @g_aws_previous_signature_property_name_s, align 8
@g_aws_canonical_request_property_name_s = internal constant %struct.anon.5 { ptr null, i64 17, [18 x i8] c"canonical-request\00" }, align 8
@g_aws_canonical_request_property_name = global ptr @g_aws_canonical_request_property_name_s, align 8
@s_signable_canonical_request_vtable = internal global %struct.aws_signable_vtable { ptr @s_aws_signable_canonical_request_get_property, ptr @s_aws_signable_canonical_request_get_property_list, ptr @s_aws_signable_canonical_request_get_payload_stream, ptr @s_aws_signable_canonical_request_destroy }, align 8

; Function Attrs: nounwind uwtable
define void @aws_signable_destroy(ptr noundef %signable) #0 {
entry:
  %signable.addr = alloca ptr, align 8
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end4

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_signable, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_signable, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %destroy = getelementptr inbounds %struct.aws_signable_vtable, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %destroy, align 8, !tbaa !10
  %6 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  call void %5(ptr noundef %6)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_signable_get_property(ptr noundef %signable, ptr noundef %name, ptr noundef %out_value) #0 {
entry:
  %signable.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_signable, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_property = getelementptr inbounds %struct.aws_signable_vtable, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %get_property, align 8, !tbaa !12
  %3 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_signable_get_property_list(ptr noundef %signable, ptr noundef %name, ptr noundef %out_property_list) #0 {
entry:
  %signable.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %out_property_list.addr = alloca ptr, align 8
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %out_property_list, ptr %out_property_list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_signable, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_property_list = getelementptr inbounds %struct.aws_signable_vtable, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %get_property_list, align 8, !tbaa !13
  %3 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %out_property_list.addr, align 8, !tbaa !4
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_signable_get_payload_stream(ptr noundef %signable, ptr noundef %out_input_stream) #0 {
entry:
  %signable.addr = alloca ptr, align 8
  %out_input_stream.addr = alloca ptr, align 8
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  store ptr %out_input_stream, ptr %out_input_stream.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_signable, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_payload_stream = getelementptr inbounds %struct.aws_signable_vtable, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %get_payload_stream, align 8, !tbaa !14
  %3 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %out_input_stream.addr, align 8, !tbaa !4
  %call = call i32 %2(ptr noundef %3, ptr noundef %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define ptr @aws_signable_new_canonical_request(ptr noundef %allocator, i64 %canonical_request.coerce0, ptr %canonical_request.coerce1) #0 {
entry:
  %retval = alloca ptr, align 8
  %canonical_request = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %signable = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, ptr }, ptr %canonical_request, i32 0, i32 0
  store i64 %canonical_request.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %canonical_request, i32 0, i32 1
  store ptr %canonical_request.coerce1, ptr %1, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %signable) #6
  store ptr null, ptr %signable, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #6
  store ptr null, ptr %impl, align 8, !tbaa !4
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr (ptr, i64, ...) @aws_mem_acquire_many(ptr noundef %2, i64 noundef 2, ptr noundef %signable, i64 noundef 24, ptr noundef %impl, i64 noundef 8)
  %3 = load ptr, ptr %signable, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %impl, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load ptr, ptr %signable, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 24, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %6 = load ptr, ptr %impl, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 8, i1 false)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body2
  br label %do.end4

do.end4:                                          ; preds = %do.cond3
  %7 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %signable, align 8, !tbaa !4
  %allocator5 = getelementptr inbounds %struct.aws_signable, ptr %8, i32 0, i32 0
  store ptr %7, ptr %allocator5, align 8, !tbaa !15
  %9 = load ptr, ptr %signable, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_signable, ptr %9, i32 0, i32 2
  store ptr @s_signable_canonical_request_vtable, ptr %vtable, align 8, !tbaa !8
  %10 = load ptr, ptr %impl, align 8, !tbaa !4
  %11 = load ptr, ptr %signable, align 8, !tbaa !4
  %impl6 = getelementptr inbounds %struct.aws_signable, ptr %11, i32 0, i32 1
  store ptr %10, ptr %impl6, align 8, !tbaa !16
  %12 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %canonical_request, i32 0, i32 1
  %13 = load ptr, ptr %ptr, align 8, !tbaa !17
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %canonical_request, i32 0, i32 0
  %14 = load i64, ptr %len, align 8, !tbaa !20
  %call7 = call ptr @aws_string_new_from_array(ptr noundef %12, ptr noundef %13, i64 noundef %14)
  %15 = load ptr, ptr %impl, align 8, !tbaa !4
  %canonical_request8 = getelementptr inbounds %struct.aws_signable_canonical_request_impl, ptr %15, i32 0, i32 0
  store ptr %call7, ptr %canonical_request8, align 8, !tbaa !21
  %16 = load ptr, ptr %impl, align 8, !tbaa !4
  %canonical_request9 = getelementptr inbounds %struct.aws_signable_canonical_request_impl, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %canonical_request9, align 8, !tbaa !21
  %cmp10 = icmp eq ptr %17, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end4
  br label %on_error

if.end12:                                         ; preds = %do.end4
  %18 = load ptr, ptr %signable, align 8, !tbaa !4
  store ptr %18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then11
  %19 = load ptr, ptr %signable, align 8, !tbaa !4
  call void @aws_signable_destroy(ptr noundef %19)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %signable) #6
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @aws_mem_acquire_many(ptr noundef, i64 noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @aws_string_new_from_array(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_signable_canonical_request_get_property(ptr noundef %signable, ptr noundef %name, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %signable.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %tmp = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #6
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %impl1 = getelementptr inbounds %struct.aws_signable, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %impl1, align 8, !tbaa !16
  store ptr %1, ptr %impl, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %4 = load ptr, ptr @g_aws_canonical_request_property_name, align 8, !tbaa !4
  %call = call zeroext i1 @aws_string_eq(ptr noundef %3, ptr noundef %4)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #6
  %6 = load ptr, ptr %impl, align 8, !tbaa !4
  %canonical_request = getelementptr inbounds %struct.aws_signable_canonical_request_impl, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %canonical_request, align 8, !tbaa !21
  %call2 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %7)
  %8 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 0
  %9 = extractvalue { i64, ptr } %call2, 0
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 1
  %11 = extractvalue { i64, ptr } %call2, 1
  store ptr %11, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #6
  br label %if.end

if.else:                                          ; preds = %do.end
  %call3 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #6
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_signable_canonical_request_get_property_list(ptr noundef %signable, ptr noundef %name, ptr noundef %out_list) #0 {
entry:
  %signable.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %out_list.addr = alloca ptr, align 8
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %out_list, ptr %out_list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %out_list.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %out_list.addr, align 8, !tbaa !4
  store ptr null, ptr %3, align 8, !tbaa !4
  %call = call i32 @aws_raise_error(i32 noundef 6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_signable_canonical_request_get_payload_stream(ptr noundef %signable, ptr noundef %out_input_stream) #0 {
entry:
  %signable.addr = alloca ptr, align 8
  %out_input_stream.addr = alloca ptr, align 8
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  store ptr %out_input_stream, ptr %out_input_stream.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %out_input_stream.addr, align 8, !tbaa !4
  store ptr null, ptr %1, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_signable_canonical_request_destroy(ptr noundef %signable) #0 {
entry:
  %signable.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %signable, ptr %signable.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup.cont

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #6
  %1 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %impl1 = getelementptr inbounds %struct.aws_signable, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %impl1, align 8, !tbaa !16
  store ptr %2, ptr %impl, align 8, !tbaa !4
  %3 = load ptr, ptr %impl, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %impl, align 8, !tbaa !4
  %canonical_request = getelementptr inbounds %struct.aws_signable_canonical_request_impl, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %canonical_request, align 8, !tbaa !21
  call void @aws_string_destroy(ptr noundef %5)
  %6 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_signable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %allocator, align 8, !tbaa !15
  %8 = load ptr, ptr %signable.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %7, ptr noundef %8)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %if.then, %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare zeroext i1 @aws_string_eq(ptr noundef, ptr noundef) #2

declare { i64, ptr } @aws_byte_cursor_from_string(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #5 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !25
  %0 = load i32, ptr %err.addr, align 4, !tbaa !25
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare void @aws_raise_error_private(i32 noundef) #2

declare void @aws_string_destroy(ptr noundef) #2

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!9, !5, i64 16}
!9 = !{!"aws_signable", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !5, i64 24}
!11 = !{!"aws_signable_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!12 = !{!11, !5, i64 0}
!13 = !{!11, !5, i64 8}
!14 = !{!11, !5, i64 16}
!15 = !{!9, !5, i64 0}
!16 = !{!9, !5, i64 8}
!17 = !{!18, !5, i64 8}
!18 = !{!"aws_byte_cursor", !19, i64 0, !5, i64 8}
!19 = !{!"long", !6, i64 0}
!20 = !{!18, !19, i64 0}
!21 = !{!22, !5, i64 0}
!22 = !{!"aws_signable_canonical_request_impl", !5, i64 0}
!23 = !{i64 0, i64 8, !24, i64 8, i64 8, !4}
!24 = !{!19, !19, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !6, i64 0}

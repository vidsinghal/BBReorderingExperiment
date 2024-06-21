; ModuleID = 'samples/312.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-http/source/h1_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_state_def = type { ptr, ptr }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_h1_encoder_message = type { %struct.aws_byte_buf, ptr, ptr, ptr, i64, i8, i8 }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_http_header = type { %struct.aws_byte_cursor, %struct.aws_byte_cursor, i32 }
%struct.aws_h1_trailer = type { ptr, %struct.aws_byte_buf }
%struct.aws_h1_encoder = type { ptr, i32, ptr, i64, ptr, i64, ptr }
%struct.aws_h1_chunk = type { ptr, ptr, i64, ptr, ptr, %struct.aws_linked_list_node, %struct.aws_byte_buf }
%struct.aws_linked_list_node = type { ptr, ptr }
%struct.aws_http1_chunk_options = type { ptr, i64, ptr, i64, ptr, ptr }
%struct.aws_http1_chunk_extension = type { %struct.aws_byte_cursor, %struct.aws_byte_cursor }
%struct.aws_linked_list = type { %struct.aws_linked_list_node, %struct.aws_linked_list_node }
%struct.aws_stream_status = type { i8, i8 }

@.str = private unnamed_addr constant [34 x i8] c"id=static: Request method not set\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"id=static: Request method is invalid\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"id=static: Request path not set\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"id=static: Request path is invalid\00", align 1
@__const.aws_h1_encoder_message_init_from_response.status_code_str = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"id=%p: %s\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Attempting to start new request while previous request is in progress.\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"No message is currently set for encoding.\00", align 1
@s_encoder_states = internal global [9 x %struct.encoder_state_def] [%struct.encoder_state_def { ptr @s_state_fn_init, ptr @.str.23 }, %struct.encoder_state_def { ptr @s_state_fn_head, ptr @.str.24 }, %struct.encoder_state_def { ptr @s_state_fn_unchunked_body, ptr @.str.25 }, %struct.encoder_state_def { ptr @s_state_fn_chunk_next, ptr @.str.26 }, %struct.encoder_state_def { ptr @s_state_fn_chunk_line, ptr @.str.27 }, %struct.encoder_state_def { ptr @s_state_fn_chunk_body, ptr @.str.28 }, %struct.encoder_state_def { ptr @s_state_fn_chunk_end, ptr @.str.29 }, %struct.encoder_state_def { ptr @s_state_fn_chunk_trailer, ptr @.str.30 }, %struct.encoder_state_def { ptr @s_state_fn_done, ptr @.str.31 }], align 16
@.str.8 = private unnamed_addr constant [34 x i8] c"id=static: Header name is invalid\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"id=static: Header '%.*s' has invalid value\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"id=static: Invalid Content-Length\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"id=static: Transfer-Encoding must include a valid value\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"id=static: Transfer-Encoding header whitespace only comma delimited header value\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"id=static: Transfer-Encoding header must end with \22chunked\22\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"id=static: Transfer-Encoding header must include \22chunked\22\00", align 1
@.str.17 = private unnamed_addr constant [83 x i8] c"id=static: Both Content-Length and Transfer-Encoding are set. Only one may be used\00", align 1
@.str.18 = private unnamed_addr constant [135 x i8] c"id=static: Both Transfer-Encoding chunked header and body stream is set. chunked data must use the chunk API to write the body stream.\00", align 1
@.str.19 = private unnamed_addr constant [92 x i8] c"id=static: Transfer-Encoding or Content-Length headers may not be present in such a message\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__const.s_write_crlf.crlf_cursor = private unnamed_addr constant %struct.aws_byte_cursor { i64 2, ptr @.str.20 }, align 8
@.str.21 = private unnamed_addr constant [52 x i8] c"id=static: Trailing Header '%.*s' has invalid value\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"BODY\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"CHUNK_NEXT\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"CHUNK_LINE\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"CHUNK_BODY\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"CHUNK_END\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"CHUNK_TRAILER\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"Starting to send data.\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Reading from body stream.\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"id=%p: Failed to read body stream, error %d (%s)\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"id=%p: Body stream has exceeded expected length: %lu\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"id=%p: Sending %zu bytes of body, progress: %lu/%lu\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"id=%p: Failed to query body stream status, error %d (%s)\00", align 1
@.str.38 = private unnamed_addr constant [77 x i8] c"id=%p: Reached end of body stream but sent less than declared length %lu/%lu\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"No chunks ready to send, waiting for more...\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"id=%p: Begin sending chunk %zu with size %lu\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Final chunk complete\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Chunk complete\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"Done sending data.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @aws_h1_encoder_message_init_from_request(ptr noundef %message, ptr noundef %allocator, ptr noundef %request, ptr noundef %pending_chunk_list) #0 {
entry:
  %retval = alloca i32, align 4
  %message.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %request.addr = alloca ptr, align 8
  %pending_chunk_list.addr = alloca ptr, align 8
  %method = alloca %struct.aws_byte_cursor, align 8
  %err = alloca i32, align 4
  %logger = alloca ptr, align 8
  %logger17 = alloca ptr, align 8
  %uri = alloca %struct.aws_byte_cursor, align 8
  %logger38 = alloca ptr, align 8
  %logger58 = alloca ptr, align 8
  %version = alloca %struct.aws_byte_cursor, align 8
  %header_lines_len = alloca i64, align 8
  %request_line_len = alloca i64, align 8
  %head_end_len = alloca i64, align 8
  %head_total_len = alloca i64, align 8
  %wrote_all = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %request, ptr %request.addr, align 8, !tbaa !4
  store ptr %pending_chunk_list, ptr %pending_chunk_list.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 72, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call = call ptr @aws_http_message_get_body_stream(ptr noundef %1)
  %call1 = call ptr @aws_input_stream_acquire(ptr noundef %call)
  %2 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %body = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %2, i32 0, i32 1
  store ptr %call1, ptr %body, align 8, !tbaa !8
  %3 = load ptr, ptr %pending_chunk_list.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %pending_chunk_list2 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %4, i32 0, i32 2
  store ptr %3, ptr %pending_chunk_list2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %method) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  %5 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call3 = call i32 @aws_http_message_get_request_method(ptr noundef %5, ptr noundef %method)
  store i32 %call3, ptr %err, align 4, !tbaa !14
  %6 = load i32, ptr %err, align 4, !tbaa !14
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body4
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call6 = call i32 %10(ptr noundef %11, i32 noundef 2053)
  %cmp7 = icmp uge i32 %call6, 2
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable9 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable9, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !20
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %call10 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 2053, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true, %do.body4
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end11

do.end11:                                         ; preds = %do.cond
  %call12 = call i32 @aws_raise_error(i32 noundef 2053)
  br label %error

if.end13:                                         ; preds = %do.end
  %16 = getelementptr inbounds { i64, ptr }, ptr %method, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds { i64, ptr }, ptr %method, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %call14 = call zeroext i1 @aws_strutil_is_http_token(i64 %17, ptr %19)
  br i1 %call14, label %if.end33, label %if.then15

if.then15:                                        ; preds = %if.end13
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger17) #8
  %call18 = call ptr @aws_logger_get()
  store ptr %call18, ptr %logger17, align 8, !tbaa !4
  %20 = load ptr, ptr %logger17, align 8, !tbaa !4
  %cmp19 = icmp ne ptr %20, null
  br i1 %cmp19, label %land.lhs.true20, label %if.end29

land.lhs.true20:                                  ; preds = %do.body16
  %21 = load ptr, ptr %logger17, align 8, !tbaa !4
  %vtable21 = getelementptr inbounds %struct.aws_logger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %vtable21, align 8, !tbaa !16
  %get_log_level22 = getelementptr inbounds %struct.aws_logger_vtable, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %get_log_level22, align 8, !tbaa !18
  %24 = load ptr, ptr %logger17, align 8, !tbaa !4
  %call23 = call i32 %23(ptr noundef %24, i32 noundef 2053)
  %cmp24 = icmp uge i32 %call23, 2
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %land.lhs.true20
  %25 = load ptr, ptr %logger17, align 8, !tbaa !4
  %vtable26 = getelementptr inbounds %struct.aws_logger, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %vtable26, align 8, !tbaa !16
  %log27 = getelementptr inbounds %struct.aws_logger_vtable, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %log27, align 8, !tbaa !20
  %28 = load ptr, ptr %logger17, align 8, !tbaa !4
  %call28 = call i32 (ptr, i32, i32, ptr, ...) %27(ptr noundef %28, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.1)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true20, %do.body16
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger17) #8
  br label %do.cond30

do.cond30:                                        ; preds = %if.end29
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  %call32 = call i32 @aws_raise_error(i32 noundef 2053)
  br label %error

if.end33:                                         ; preds = %if.end13
  %29 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call34 = call i32 @aws_http_message_get_request_path(ptr noundef %29, ptr noundef %uri)
  store i32 %call34, ptr %err, align 4, !tbaa !14
  %30 = load i32, ptr %err, align 4, !tbaa !14
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then36, label %if.end54

if.then36:                                        ; preds = %if.end33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger38) #8
  %call39 = call ptr @aws_logger_get()
  store ptr %call39, ptr %logger38, align 8, !tbaa !4
  %31 = load ptr, ptr %logger38, align 8, !tbaa !4
  %cmp40 = icmp ne ptr %31, null
  br i1 %cmp40, label %land.lhs.true41, label %if.end50

land.lhs.true41:                                  ; preds = %do.body37
  %32 = load ptr, ptr %logger38, align 8, !tbaa !4
  %vtable42 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable42, align 8, !tbaa !16
  %get_log_level43 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %get_log_level43, align 8, !tbaa !18
  %35 = load ptr, ptr %logger38, align 8, !tbaa !4
  %call44 = call i32 %34(ptr noundef %35, i32 noundef 2053)
  %cmp45 = icmp uge i32 %call44, 2
  br i1 %cmp45, label %if.then46, label %if.end50

if.then46:                                        ; preds = %land.lhs.true41
  %36 = load ptr, ptr %logger38, align 8, !tbaa !4
  %vtable47 = getelementptr inbounds %struct.aws_logger, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %vtable47, align 8, !tbaa !16
  %log48 = getelementptr inbounds %struct.aws_logger_vtable, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %log48, align 8, !tbaa !20
  %39 = load ptr, ptr %logger38, align 8, !tbaa !4
  %call49 = call i32 (ptr, i32, i32, ptr, ...) %38(ptr noundef %39, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.2)
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %land.lhs.true41, %do.body37
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger38) #8
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %call53 = call i32 @aws_raise_error(i32 noundef 2054)
  br label %error

if.end54:                                         ; preds = %if.end33
  %40 = getelementptr inbounds { i64, ptr }, ptr %uri, i32 0, i32 0
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds { i64, ptr }, ptr %uri, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %call55 = call zeroext i1 @aws_strutil_is_http_request_target(i64 %41, ptr %43)
  br i1 %call55, label %if.end74, label %if.then56

if.then56:                                        ; preds = %if.end54
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger58) #8
  %call59 = call ptr @aws_logger_get()
  store ptr %call59, ptr %logger58, align 8, !tbaa !4
  %44 = load ptr, ptr %logger58, align 8, !tbaa !4
  %cmp60 = icmp ne ptr %44, null
  br i1 %cmp60, label %land.lhs.true61, label %if.end70

land.lhs.true61:                                  ; preds = %do.body57
  %45 = load ptr, ptr %logger58, align 8, !tbaa !4
  %vtable62 = getelementptr inbounds %struct.aws_logger, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %vtable62, align 8, !tbaa !16
  %get_log_level63 = getelementptr inbounds %struct.aws_logger_vtable, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %get_log_level63, align 8, !tbaa !18
  %48 = load ptr, ptr %logger58, align 8, !tbaa !4
  %call64 = call i32 %47(ptr noundef %48, i32 noundef 2053)
  %cmp65 = icmp uge i32 %call64, 2
  br i1 %cmp65, label %if.then66, label %if.end70

if.then66:                                        ; preds = %land.lhs.true61
  %49 = load ptr, ptr %logger58, align 8, !tbaa !4
  %vtable67 = getelementptr inbounds %struct.aws_logger, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %vtable67, align 8, !tbaa !16
  %log68 = getelementptr inbounds %struct.aws_logger_vtable, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %log68, align 8, !tbaa !20
  %52 = load ptr, ptr %logger58, align 8, !tbaa !4
  %call69 = call i32 (ptr, i32, i32, ptr, ...) %51(ptr noundef %52, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.3)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %land.lhs.true61, %do.body57
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger58) #8
  br label %do.cond71

do.cond71:                                        ; preds = %if.end70
  br label %do.end72

do.end72:                                         ; preds = %do.cond71
  %call73 = call i32 @aws_raise_error(i32 noundef 2054)
  br label %error

if.end74:                                         ; preds = %if.end54
  %call75 = call { i64, ptr } @aws_http_version_to_str(i32 noundef 2)
  %53 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 0
  %54 = extractvalue { i64, ptr } %call75, 0
  store i64 %54, ptr %53, align 8
  %55 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 1
  %56 = extractvalue { i64, ptr } %call75, 1
  store ptr %56, ptr %55, align 8
  %57 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call76 = call i32 @s_scan_outgoing_headers(ptr noundef %57, ptr noundef %58, ptr noundef %header_lines_len, i1 noundef zeroext false, i1 noundef zeroext false)
  store i32 %call76, ptr %err, align 4, !tbaa !14
  %59 = load i32, ptr %err, align 4, !tbaa !14
  %tobool77 = icmp ne i32 %59, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  br label %error

if.end79:                                         ; preds = %if.end74
  store i64 4, ptr %request_line_len, align 8, !tbaa !21
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %method, i32 0, i32 0
  %60 = load i64, ptr %len, align 8, !tbaa !22
  %61 = load i64, ptr %request_line_len, align 8, !tbaa !21
  %call80 = call i32 @aws_add_size_checked(i64 noundef %60, i64 noundef %61, ptr noundef %request_line_len)
  %62 = load i32, ptr %err, align 4, !tbaa !14
  %or = or i32 %62, %call80
  store i32 %or, ptr %err, align 4, !tbaa !14
  %len81 = getelementptr inbounds %struct.aws_byte_cursor, ptr %uri, i32 0, i32 0
  %63 = load i64, ptr %len81, align 8, !tbaa !22
  %64 = load i64, ptr %request_line_len, align 8, !tbaa !21
  %call82 = call i32 @aws_add_size_checked(i64 noundef %63, i64 noundef %64, ptr noundef %request_line_len)
  %65 = load i32, ptr %err, align 4, !tbaa !14
  %or83 = or i32 %65, %call82
  store i32 %or83, ptr %err, align 4, !tbaa !14
  %len84 = getelementptr inbounds %struct.aws_byte_cursor, ptr %version, i32 0, i32 0
  %66 = load i64, ptr %len84, align 8, !tbaa !22
  %67 = load i64, ptr %request_line_len, align 8, !tbaa !21
  %call85 = call i32 @aws_add_size_checked(i64 noundef %66, i64 noundef %67, ptr noundef %request_line_len)
  %68 = load i32, ptr %err, align 4, !tbaa !14
  %or86 = or i32 %68, %call85
  store i32 %or86, ptr %err, align 4, !tbaa !14
  store i64 2, ptr %head_end_len, align 8, !tbaa !21
  %69 = load i64, ptr %request_line_len, align 8, !tbaa !21
  store i64 %69, ptr %head_total_len, align 8, !tbaa !21
  %70 = load i64, ptr %header_lines_len, align 8, !tbaa !21
  %71 = load i64, ptr %head_total_len, align 8, !tbaa !21
  %call87 = call i32 @aws_add_size_checked(i64 noundef %70, i64 noundef %71, ptr noundef %head_total_len)
  %72 = load i32, ptr %err, align 4, !tbaa !14
  %or88 = or i32 %72, %call87
  store i32 %or88, ptr %err, align 4, !tbaa !14
  %73 = load i64, ptr %head_end_len, align 8, !tbaa !21
  %74 = load i64, ptr %head_total_len, align 8, !tbaa !21
  %call89 = call i32 @aws_add_size_checked(i64 noundef %73, i64 noundef %74, ptr noundef %head_total_len)
  %75 = load i32, ptr %err, align 4, !tbaa !14
  %or90 = or i32 %75, %call89
  store i32 %or90, ptr %err, align 4, !tbaa !14
  %76 = load i32, ptr %err, align 4, !tbaa !14
  %tobool91 = icmp ne i32 %76, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end79
  br label %error

if.end93:                                         ; preds = %if.end79
  %77 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %79 = load i64, ptr %head_total_len, align 8, !tbaa !21
  %call94 = call i32 @aws_byte_buf_init(ptr noundef %outgoing_head_buf, ptr noundef %78, i64 noundef %79)
  store i32 %call94, ptr %err, align 4, !tbaa !14
  %80 = load i32, ptr %err, align 4, !tbaa !14
  %tobool95 = icmp ne i32 %80, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  br label %error

if.end97:                                         ; preds = %if.end93
  store i8 1, ptr %wrote_all, align 1, !tbaa !24
  %81 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf98 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %81, i32 0, i32 0
  %82 = getelementptr inbounds { i64, ptr }, ptr %method, i32 0, i32 0
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds { i64, ptr }, ptr %method, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  %call99 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %outgoing_head_buf98, i64 %83, ptr %85)
  %conv = zext i1 %call99 to i32
  %86 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool100 = trunc i8 %86 to i1
  %conv101 = zext i1 %tobool100 to i32
  %and = and i32 %conv101, %conv
  %tobool102 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool102 to i8
  store i8 %frombool, ptr %wrote_all, align 1, !tbaa !24
  %87 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf103 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %87, i32 0, i32 0
  %call104 = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %outgoing_head_buf103, i8 noundef zeroext 32)
  %conv105 = zext i1 %call104 to i32
  %88 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool106 = trunc i8 %88 to i1
  %conv107 = zext i1 %tobool106 to i32
  %and108 = and i32 %conv107, %conv105
  %tobool109 = icmp ne i32 %and108, 0
  %frombool110 = zext i1 %tobool109 to i8
  store i8 %frombool110, ptr %wrote_all, align 1, !tbaa !24
  %89 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf111 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %89, i32 0, i32 0
  %90 = getelementptr inbounds { i64, ptr }, ptr %uri, i32 0, i32 0
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds { i64, ptr }, ptr %uri, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %call112 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %outgoing_head_buf111, i64 %91, ptr %93)
  %conv113 = zext i1 %call112 to i32
  %94 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool114 = trunc i8 %94 to i1
  %conv115 = zext i1 %tobool114 to i32
  %and116 = and i32 %conv115, %conv113
  %tobool117 = icmp ne i32 %and116, 0
  %frombool118 = zext i1 %tobool117 to i8
  store i8 %frombool118, ptr %wrote_all, align 1, !tbaa !24
  %95 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf119 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %95, i32 0, i32 0
  %call120 = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %outgoing_head_buf119, i8 noundef zeroext 32)
  %conv121 = zext i1 %call120 to i32
  %96 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool122 = trunc i8 %96 to i1
  %conv123 = zext i1 %tobool122 to i32
  %and124 = and i32 %conv123, %conv121
  %tobool125 = icmp ne i32 %and124, 0
  %frombool126 = zext i1 %tobool125 to i8
  store i8 %frombool126, ptr %wrote_all, align 1, !tbaa !24
  %97 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf127 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %97, i32 0, i32 0
  %98 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 0
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  %call128 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %outgoing_head_buf127, i64 %99, ptr %101)
  %conv129 = zext i1 %call128 to i32
  %102 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool130 = trunc i8 %102 to i1
  %conv131 = zext i1 %tobool130 to i32
  %and132 = and i32 %conv131, %conv129
  %tobool133 = icmp ne i32 %and132, 0
  %frombool134 = zext i1 %tobool133 to i8
  store i8 %frombool134, ptr %wrote_all, align 1, !tbaa !24
  %103 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf135 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %103, i32 0, i32 0
  %call136 = call zeroext i1 @s_write_crlf(ptr noundef %outgoing_head_buf135)
  %conv137 = zext i1 %call136 to i32
  %104 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool138 = trunc i8 %104 to i1
  %conv139 = zext i1 %tobool138 to i32
  %and140 = and i32 %conv139, %conv137
  %tobool141 = icmp ne i32 %and140, 0
  %frombool142 = zext i1 %tobool141 to i8
  store i8 %frombool142, ptr %wrote_all, align 1, !tbaa !24
  %105 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf143 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %call144 = call ptr @aws_http_message_get_const_headers(ptr noundef %106)
  call void @s_write_headers(ptr noundef %outgoing_head_buf143, ptr noundef %call144)
  %107 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf145 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %107, i32 0, i32 0
  %call146 = call zeroext i1 @s_write_crlf(ptr noundef %outgoing_head_buf145)
  %conv147 = zext i1 %call146 to i32
  %108 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool148 = trunc i8 %108 to i1
  %conv149 = zext i1 %tobool148 to i32
  %and150 = and i32 %conv149, %conv147
  %tobool151 = icmp ne i32 %and150, 0
  %frombool152 = zext i1 %tobool151 to i8
  store i8 %frombool152, ptr %wrote_all, align 1, !tbaa !24
  %109 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool153 = trunc i8 %109 to i1
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then96, %if.then92, %if.then78, %do.end72, %do.end52, %do.end31, %do.end11
  %110 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @aws_h1_encoder_message_clean_up(ptr noundef %110)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end97
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %method) #8
  %111 = load i32, ptr %retval, align 4
  ret i32 %111
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @aws_input_stream_acquire(ptr noundef) #2

declare ptr @aws_http_message_get_body_stream(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @aws_http_message_get_request_method(ptr noundef, ptr noundef) #2

declare ptr @aws_logger_get() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #4 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !14
  %0 = load i32, ptr %err.addr, align 4, !tbaa !14
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare zeroext i1 @aws_strutil_is_http_token(i64, ptr) #2

declare i32 @aws_http_message_get_request_path(ptr noundef, ptr noundef) #2

declare zeroext i1 @aws_strutil_is_http_request_target(i64, ptr) #2

declare { i64, ptr } @aws_http_version_to_str(i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_scan_outgoing_headers(ptr noundef %encoder_message, ptr noundef %message, ptr noundef %out_header_lines_len, i1 noundef zeroext %body_headers_ignored, i1 noundef zeroext %body_headers_forbidden) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder_message.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %out_header_lines_len.addr = alloca ptr, align 8
  %body_headers_ignored.addr = alloca i8, align 1
  %body_headers_forbidden.addr = alloca i8, align 1
  %total = alloca i64, align 8
  %has_body_stream = alloca i8, align 1
  %has_content_length_header = alloca i8, align 1
  %has_transfer_encoding_header = alloca i8, align 1
  %num_headers = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %header = alloca %struct.aws_http_header, align 8
  %logger = alloca ptr, align 8
  %field_value = alloca %struct.aws_byte_cursor, align 8
  %logger19 = alloca ptr, align 8
  %name_enum = alloca i32, align 4
  %logger53 = alloca ptr, align 8
  %logger78 = alloca ptr, align 8
  %substr = alloca %struct.aws_byte_cursor, align 8
  %trimmed = alloca %struct.aws_byte_cursor, align 8
  %logger107 = alloca ptr, align 8
  %logger129 = alloca ptr, align 8
  %err = alloca i32, align 4
  %logger182 = alloca ptr, align 8
  %logger209 = alloca ptr, align 8
  %logger236 = alloca ptr, align 8
  %logger265 = alloca ptr, align 8
  store ptr %encoder_message, ptr %encoder_message.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %out_header_lines_len, ptr %out_header_lines_len.addr, align 8, !tbaa !4
  %frombool = zext i1 %body_headers_ignored to i8
  store i8 %frombool, ptr %body_headers_ignored.addr, align 1, !tbaa !24
  %frombool1 = zext i1 %body_headers_forbidden to i8
  store i8 %frombool1, ptr %body_headers_forbidden.addr, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #8
  store i64 0, ptr %total, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_body_stream) #8
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call = call ptr @aws_http_message_get_body_stream(ptr noundef %0)
  %tobool = icmp ne ptr %call, null
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %has_body_stream, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_content_length_header) #8
  store i8 0, ptr %has_content_length_header, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_transfer_encoding_header) #8
  store i8 0, ptr %has_transfer_encoding_header, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_headers) #8
  %1 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call3 = call i64 @aws_http_message_get_header_count(ptr noundef %1)
  store i64 %call3, ptr %num_headers, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !21
  %3 = load i64, ptr %num_headers, align 8, !tbaa !21
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup173

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40, ptr %header) #8
  %4 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %5 = load i64, ptr %i, align 8, !tbaa !21
  %call4 = call i32 @aws_http_message_get_header(ptr noundef %4, ptr noundef %header, i64 noundef %5)
  %name = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %6 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %call5 = call zeroext i1 @aws_strutil_is_http_token(i64 %7, ptr %9)
  br i1 %call5, label %if.end14, label %if.then

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call6 = call ptr @aws_logger_get()
  store ptr %call6, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp7 = icmp ne ptr %10, null
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %call8 = call i32 %13(ptr noundef %14, i32 noundef 2053)
  %cmp9 = icmp uge i32 %call8, 2
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable11 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable11, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %log, align 8, !tbaa !20
  %18 = load ptr, ptr %logger, align 8, !tbaa !4
  %call12 = call i32 (ptr, i32, i32, ptr, ...) %17(ptr noundef %18, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.8)
  br label %if.end

if.end:                                           ; preds = %if.then10, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call13 = call i32 @aws_raise_error(i32 noundef 2051)
  store i32 %call13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup170

if.end14:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %field_value) #8
  %value = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %19 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %call15 = call { i64, ptr } @aws_strutil_trim_http_whitespace(i64 %20, ptr %22)
  %23 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 0
  %24 = extractvalue { i64, ptr } %call15, 0
  store i64 %24, ptr %23, align 8
  %25 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 1
  %26 = extractvalue { i64, ptr } %call15, 1
  store ptr %26, ptr %25, align 8
  %27 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 0
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %call16 = call zeroext i1 @aws_strutil_is_http_field_value(i64 %28, ptr %30)
  br i1 %call16, label %if.end42, label %if.then17

if.then17:                                        ; preds = %if.end14
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger19) #8
  %call20 = call ptr @aws_logger_get()
  store ptr %call20, ptr %logger19, align 8, !tbaa !4
  %31 = load ptr, ptr %logger19, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %31, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end38

land.lhs.true22:                                  ; preds = %do.body18
  %32 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable23, align 8, !tbaa !16
  %get_log_level24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %get_log_level24, align 8, !tbaa !18
  %35 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call25 = call i32 %34(ptr noundef %35, i32 noundef 2053)
  %cmp26 = icmp uge i32 %call25, 2
  br i1 %cmp26, label %if.then27, label %if.end38

if.then27:                                        ; preds = %land.lhs.true22
  %36 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable28 = getelementptr inbounds %struct.aws_logger, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %vtable28, align 8, !tbaa !16
  %log29 = getelementptr inbounds %struct.aws_logger_vtable, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %log29, align 8, !tbaa !20
  %39 = load ptr, ptr %logger19, align 8, !tbaa !4
  %name30 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %name30, i32 0, i32 0
  %40 = load i64, ptr %len, align 8, !tbaa !27
  %conv = trunc i64 %40 to i32
  %cmp31 = icmp slt i32 %conv, 0
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then27
  br label %cond.end

cond.false:                                       ; preds = %if.then27
  %name33 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len34 = getelementptr inbounds %struct.aws_byte_cursor, ptr %name33, i32 0, i32 0
  %41 = load i64, ptr %len34, align 8, !tbaa !27
  %conv35 = trunc i64 %41 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv35, %cond.false ]
  %name36 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %name36, i32 0, i32 1
  %42 = load ptr, ptr %ptr, align 8, !tbaa !29
  %call37 = call i32 (ptr, i32, i32, ptr, ...) %38(ptr noundef %39, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.9, i32 noundef %cond, ptr noundef %42)
  br label %if.end38

if.end38:                                         ; preds = %cond.end, %land.lhs.true22, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger19) #8
  br label %do.cond39

do.cond39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  %call41 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup169

if.end42:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_enum) #8
  %name43 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %43 = getelementptr inbounds { i64, ptr }, ptr %name43, i32 0, i32 0
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, ptr }, ptr %name43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %call44 = call i32 @aws_http_str_to_header_name(i64 %44, ptr %46)
  store i32 %call44, ptr %name_enum, align 4, !tbaa !30
  %47 = load i32, ptr %name_enum, align 4, !tbaa !30
  switch i32 %47, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb48
    i32 9, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end42
  %call45 = call zeroext i1 @aws_byte_cursor_eq_c_str(ptr noundef %field_value, ptr noundef @.str.10)
  br i1 %call45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %sw.bb
  %48 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %has_connection_close_header = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %48, i32 0, i32 5
  store i8 1, ptr %has_connection_close_header, align 8, !tbaa !31
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %sw.bb
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end42
  store i8 1, ptr %has_content_length_header, align 1, !tbaa !24
  %49 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %content_length = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %49, i32 0, i32 4
  %50 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 0
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %call49 = call i32 @aws_byte_cursor_utf8_parse_u64(i64 %51, ptr %53, ptr noundef %content_length)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end71

if.then51:                                        ; preds = %sw.bb48
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger53) #8
  %call54 = call ptr @aws_logger_get()
  store ptr %call54, ptr %logger53, align 8, !tbaa !4
  %54 = load ptr, ptr %logger53, align 8, !tbaa !4
  %cmp55 = icmp ne ptr %54, null
  br i1 %cmp55, label %land.lhs.true57, label %if.end67

land.lhs.true57:                                  ; preds = %do.body52
  %55 = load ptr, ptr %logger53, align 8, !tbaa !4
  %vtable58 = getelementptr inbounds %struct.aws_logger, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %vtable58, align 8, !tbaa !16
  %get_log_level59 = getelementptr inbounds %struct.aws_logger_vtable, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %get_log_level59, align 8, !tbaa !18
  %58 = load ptr, ptr %logger53, align 8, !tbaa !4
  %call60 = call i32 %57(ptr noundef %58, i32 noundef 2053)
  %cmp61 = icmp uge i32 %call60, 2
  br i1 %cmp61, label %if.then63, label %if.end67

if.then63:                                        ; preds = %land.lhs.true57
  %59 = load ptr, ptr %logger53, align 8, !tbaa !4
  %vtable64 = getelementptr inbounds %struct.aws_logger, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %vtable64, align 8, !tbaa !16
  %log65 = getelementptr inbounds %struct.aws_logger_vtable, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %log65, align 8, !tbaa !20
  %62 = load ptr, ptr %logger53, align 8, !tbaa !4
  %call66 = call i32 (ptr, i32, i32, ptr, ...) %61(ptr noundef %62, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.11)
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true57, %do.body52
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger53) #8
  br label %do.cond68

do.cond68:                                        ; preds = %if.end67
  br label %do.end69

do.end69:                                         ; preds = %do.cond68
  %call70 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call70, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup168

if.end71:                                         ; preds = %sw.bb48
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end42
  store i8 1, ptr %has_transfer_encoding_header, align 1, !tbaa !24
  %len73 = getelementptr inbounds %struct.aws_byte_cursor, ptr %field_value, i32 0, i32 0
  %63 = load i64, ptr %len73, align 8, !tbaa !22
  %cmp74 = icmp eq i64 0, %63
  br i1 %cmp74, label %if.then76, label %if.end96

if.then76:                                        ; preds = %sw.bb72
  br label %do.body77

do.body77:                                        ; preds = %if.then76
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger78) #8
  %call79 = call ptr @aws_logger_get()
  store ptr %call79, ptr %logger78, align 8, !tbaa !4
  %64 = load ptr, ptr %logger78, align 8, !tbaa !4
  %cmp80 = icmp ne ptr %64, null
  br i1 %cmp80, label %land.lhs.true82, label %if.end92

land.lhs.true82:                                  ; preds = %do.body77
  %65 = load ptr, ptr %logger78, align 8, !tbaa !4
  %vtable83 = getelementptr inbounds %struct.aws_logger, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %vtable83, align 8, !tbaa !16
  %get_log_level84 = getelementptr inbounds %struct.aws_logger_vtable, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %get_log_level84, align 8, !tbaa !18
  %68 = load ptr, ptr %logger78, align 8, !tbaa !4
  %call85 = call i32 %67(ptr noundef %68, i32 noundef 2053)
  %cmp86 = icmp uge i32 %call85, 2
  br i1 %cmp86, label %if.then88, label %if.end92

if.then88:                                        ; preds = %land.lhs.true82
  %69 = load ptr, ptr %logger78, align 8, !tbaa !4
  %vtable89 = getelementptr inbounds %struct.aws_logger, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %vtable89, align 8, !tbaa !16
  %log90 = getelementptr inbounds %struct.aws_logger_vtable, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %log90, align 8, !tbaa !20
  %72 = load ptr, ptr %logger78, align 8, !tbaa !4
  %call91 = call i32 (ptr, i32, i32, ptr, ...) %71(ptr noundef %72, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.12)
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %land.lhs.true82, %do.body77
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger78) #8
  br label %do.cond93

do.cond93:                                        ; preds = %if.end92
  br label %do.end94

do.end94:                                         ; preds = %do.cond93
  %call95 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call95, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup168

if.end96:                                         ; preds = %sw.bb72
  call void @llvm.lifetime.start.p0(i64 16, ptr %substr) #8
  br label %do.body97

do.body97:                                        ; preds = %if.end96
  call void @llvm.memset.p0.i64(ptr align 8 %substr, i8 0, i64 16, i1 false)
  br label %do.cond98

do.cond98:                                        ; preds = %do.body97
  br label %do.end99

do.end99:                                         ; preds = %do.cond98
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end99
  %call100 = call zeroext i1 @aws_byte_cursor_next_split(ptr noundef %field_value, i8 noundef signext 44, ptr noundef %substr)
  br i1 %call100, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %trimmed) #8
  %73 = getelementptr inbounds { i64, ptr }, ptr %substr, i32 0, i32 0
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds { i64, ptr }, ptr %substr, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  %call101 = call { i64, ptr } @aws_strutil_trim_http_whitespace(i64 %74, ptr %76)
  %77 = getelementptr inbounds { i64, ptr }, ptr %trimmed, i32 0, i32 0
  %78 = extractvalue { i64, ptr } %call101, 0
  store i64 %78, ptr %77, align 8
  %79 = getelementptr inbounds { i64, ptr }, ptr %trimmed, i32 0, i32 1
  %80 = extractvalue { i64, ptr } %call101, 1
  store ptr %80, ptr %79, align 8
  %len102 = getelementptr inbounds %struct.aws_byte_cursor, ptr %trimmed, i32 0, i32 0
  %81 = load i64, ptr %len102, align 8, !tbaa !22
  %cmp103 = icmp eq i64 0, %81
  br i1 %cmp103, label %if.then105, label %if.end125

if.then105:                                       ; preds = %while.body
  br label %do.body106

do.body106:                                       ; preds = %if.then105
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger107) #8
  %call108 = call ptr @aws_logger_get()
  store ptr %call108, ptr %logger107, align 8, !tbaa !4
  %82 = load ptr, ptr %logger107, align 8, !tbaa !4
  %cmp109 = icmp ne ptr %82, null
  br i1 %cmp109, label %land.lhs.true111, label %if.end121

land.lhs.true111:                                 ; preds = %do.body106
  %83 = load ptr, ptr %logger107, align 8, !tbaa !4
  %vtable112 = getelementptr inbounds %struct.aws_logger, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %vtable112, align 8, !tbaa !16
  %get_log_level113 = getelementptr inbounds %struct.aws_logger_vtable, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %get_log_level113, align 8, !tbaa !18
  %86 = load ptr, ptr %logger107, align 8, !tbaa !4
  %call114 = call i32 %85(ptr noundef %86, i32 noundef 2053)
  %cmp115 = icmp uge i32 %call114, 2
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %land.lhs.true111
  %87 = load ptr, ptr %logger107, align 8, !tbaa !4
  %vtable118 = getelementptr inbounds %struct.aws_logger, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %vtable118, align 8, !tbaa !16
  %log119 = getelementptr inbounds %struct.aws_logger_vtable, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %log119, align 8, !tbaa !20
  %90 = load ptr, ptr %logger107, align 8, !tbaa !4
  %call120 = call i32 (ptr, i32, i32, ptr, ...) %89(ptr noundef %90, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.13)
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %land.lhs.true111, %do.body106
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger107) #8
  br label %do.cond122

do.cond122:                                       ; preds = %if.end121
  br label %do.end123

do.end123:                                        ; preds = %do.cond122
  %call124 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call124, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end125:                                        ; preds = %while.body
  %91 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %has_chunked_encoding_header = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %91, i32 0, i32 6
  %92 = load i8, ptr %has_chunked_encoding_header, align 1, !tbaa !32, !range !25, !noundef !26
  %tobool126 = trunc i8 %92 to i1
  br i1 %tobool126, label %if.then127, label %if.end147

if.then127:                                       ; preds = %if.end125
  br label %do.body128

do.body128:                                       ; preds = %if.then127
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger129) #8
  %call130 = call ptr @aws_logger_get()
  store ptr %call130, ptr %logger129, align 8, !tbaa !4
  %93 = load ptr, ptr %logger129, align 8, !tbaa !4
  %cmp131 = icmp ne ptr %93, null
  br i1 %cmp131, label %land.lhs.true133, label %if.end143

land.lhs.true133:                                 ; preds = %do.body128
  %94 = load ptr, ptr %logger129, align 8, !tbaa !4
  %vtable134 = getelementptr inbounds %struct.aws_logger, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %vtable134, align 8, !tbaa !16
  %get_log_level135 = getelementptr inbounds %struct.aws_logger_vtable, ptr %95, i32 0, i32 1
  %96 = load ptr, ptr %get_log_level135, align 8, !tbaa !18
  %97 = load ptr, ptr %logger129, align 8, !tbaa !4
  %call136 = call i32 %96(ptr noundef %97, i32 noundef 2053)
  %cmp137 = icmp uge i32 %call136, 2
  br i1 %cmp137, label %if.then139, label %if.end143

if.then139:                                       ; preds = %land.lhs.true133
  %98 = load ptr, ptr %logger129, align 8, !tbaa !4
  %vtable140 = getelementptr inbounds %struct.aws_logger, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %vtable140, align 8, !tbaa !16
  %log141 = getelementptr inbounds %struct.aws_logger_vtable, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %log141, align 8, !tbaa !20
  %101 = load ptr, ptr %logger129, align 8, !tbaa !4
  %call142 = call i32 (ptr, i32, i32, ptr, ...) %100(ptr noundef %101, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.14)
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %land.lhs.true133, %do.body128
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger129) #8
  br label %do.cond144

do.cond144:                                       ; preds = %if.end143
  br label %do.end145

do.end145:                                        ; preds = %do.cond144
  %call146 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call146, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end147:                                        ; preds = %if.end125
  %call148 = call zeroext i1 @aws_byte_cursor_eq_c_str(ptr noundef %trimmed, ptr noundef @.str.15)
  br i1 %call148, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end147
  %102 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %has_chunked_encoding_header150 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %102, i32 0, i32 6
  store i8 1, ptr %has_chunked_encoding_header150, align 1, !tbaa !32
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end147
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %do.end145, %do.end123
  call void @llvm.lifetime.end.p0(i64 16, ptr %trimmed) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup152 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup152

cleanup152:                                       ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %substr) #8
  %cleanup.dest153 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest153, label %cleanup168 [
    i32 0, label %cleanup.cont154
  ]

cleanup.cont154:                                  ; preds = %cleanup152
  br label %sw.epilog

sw.default:                                       ; preds = %if.end42
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup.cont154, %if.end71, %if.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  store i32 0, ptr %err, align 4, !tbaa !14
  %name155 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len156 = getelementptr inbounds %struct.aws_byte_cursor, ptr %name155, i32 0, i32 0
  %103 = load i64, ptr %len156, align 8, !tbaa !27
  %104 = load i64, ptr %total, align 8, !tbaa !21
  %call157 = call i32 @aws_add_size_checked(i64 noundef %103, i64 noundef %104, ptr noundef %total)
  %105 = load i32, ptr %err, align 4, !tbaa !14
  %or = or i32 %105, %call157
  store i32 %or, ptr %err, align 4, !tbaa !14
  %value158 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %len159 = getelementptr inbounds %struct.aws_byte_cursor, ptr %value158, i32 0, i32 0
  %106 = load i64, ptr %len159, align 8, !tbaa !33
  %107 = load i64, ptr %total, align 8, !tbaa !21
  %call160 = call i32 @aws_add_size_checked(i64 noundef %106, i64 noundef %107, ptr noundef %total)
  %108 = load i32, ptr %err, align 4, !tbaa !14
  %or161 = or i32 %108, %call160
  store i32 %or161, ptr %err, align 4, !tbaa !14
  %109 = load i64, ptr %total, align 8, !tbaa !21
  %call162 = call i32 @aws_add_size_checked(i64 noundef 4, i64 noundef %109, ptr noundef %total)
  %110 = load i32, ptr %err, align 4, !tbaa !14
  %or163 = or i32 %110, %call162
  store i32 %or163, ptr %err, align 4, !tbaa !14
  %111 = load i32, ptr %err, align 4, !tbaa !14
  %tobool164 = icmp ne i32 %111, 0
  br i1 %tobool164, label %if.then165, label %if.end166

if.then165:                                       ; preds = %sw.epilog
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup167

if.end166:                                        ; preds = %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup167

cleanup167:                                       ; preds = %if.end166, %if.then165
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  br label %cleanup168

cleanup168:                                       ; preds = %cleanup167, %cleanup152, %do.end94, %do.end69
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_enum) #8
  br label %cleanup169

cleanup169:                                       ; preds = %cleanup168, %do.end40
  call void @llvm.lifetime.end.p0(i64 16, ptr %field_value) #8
  br label %cleanup170

cleanup170:                                       ; preds = %cleanup169, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr %header) #8
  %cleanup.dest171 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest171, label %cleanup173 [
    i32 0, label %cleanup.cont172
  ]

cleanup.cont172:                                  ; preds = %cleanup170
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont172
  %112 = load i64, ptr %i, align 8, !tbaa !21
  %inc = add i64 %112, 1
  store i64 %inc, ptr %i, align 8, !tbaa !21
  br label %for.cond

cleanup173:                                       ; preds = %cleanup170, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest174 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest174, label %cleanup297 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup173
  %113 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %has_chunked_encoding_header175 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %113, i32 0, i32 6
  %114 = load i8, ptr %has_chunked_encoding_header175, align 1, !tbaa !32, !range !25, !noundef !26
  %tobool176 = trunc i8 %114 to i1
  br i1 %tobool176, label %if.end200, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %for.end
  %115 = load i8, ptr %has_transfer_encoding_header, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool178 = trunc i8 %115 to i1
  br i1 %tobool178, label %if.then180, label %if.end200

if.then180:                                       ; preds = %land.lhs.true177
  br label %do.body181

do.body181:                                       ; preds = %if.then180
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger182) #8
  %call183 = call ptr @aws_logger_get()
  store ptr %call183, ptr %logger182, align 8, !tbaa !4
  %116 = load ptr, ptr %logger182, align 8, !tbaa !4
  %cmp184 = icmp ne ptr %116, null
  br i1 %cmp184, label %land.lhs.true186, label %if.end196

land.lhs.true186:                                 ; preds = %do.body181
  %117 = load ptr, ptr %logger182, align 8, !tbaa !4
  %vtable187 = getelementptr inbounds %struct.aws_logger, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %vtable187, align 8, !tbaa !16
  %get_log_level188 = getelementptr inbounds %struct.aws_logger_vtable, ptr %118, i32 0, i32 1
  %119 = load ptr, ptr %get_log_level188, align 8, !tbaa !18
  %120 = load ptr, ptr %logger182, align 8, !tbaa !4
  %call189 = call i32 %119(ptr noundef %120, i32 noundef 2053)
  %cmp190 = icmp uge i32 %call189, 2
  br i1 %cmp190, label %if.then192, label %if.end196

if.then192:                                       ; preds = %land.lhs.true186
  %121 = load ptr, ptr %logger182, align 8, !tbaa !4
  %vtable193 = getelementptr inbounds %struct.aws_logger, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %vtable193, align 8, !tbaa !16
  %log194 = getelementptr inbounds %struct.aws_logger_vtable, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %log194, align 8, !tbaa !20
  %124 = load ptr, ptr %logger182, align 8, !tbaa !4
  %call195 = call i32 (ptr, i32, i32, ptr, ...) %123(ptr noundef %124, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.16)
  br label %if.end196

if.end196:                                        ; preds = %if.then192, %land.lhs.true186, %do.body181
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger182) #8
  br label %do.cond197

do.cond197:                                       ; preds = %if.end196
  br label %do.end198

do.end198:                                        ; preds = %do.cond197
  %call199 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call199, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup297

if.end200:                                        ; preds = %land.lhs.true177, %for.end
  %125 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %has_chunked_encoding_header201 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %125, i32 0, i32 6
  %126 = load i8, ptr %has_chunked_encoding_header201, align 1, !tbaa !32, !range !25, !noundef !26
  %tobool202 = trunc i8 %126 to i1
  br i1 %tobool202, label %land.lhs.true204, label %if.end227

land.lhs.true204:                                 ; preds = %if.end200
  %127 = load i8, ptr %has_content_length_header, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool205 = trunc i8 %127 to i1
  br i1 %tobool205, label %if.then207, label %if.end227

if.then207:                                       ; preds = %land.lhs.true204
  br label %do.body208

do.body208:                                       ; preds = %if.then207
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger209) #8
  %call210 = call ptr @aws_logger_get()
  store ptr %call210, ptr %logger209, align 8, !tbaa !4
  %128 = load ptr, ptr %logger209, align 8, !tbaa !4
  %cmp211 = icmp ne ptr %128, null
  br i1 %cmp211, label %land.lhs.true213, label %if.end223

land.lhs.true213:                                 ; preds = %do.body208
  %129 = load ptr, ptr %logger209, align 8, !tbaa !4
  %vtable214 = getelementptr inbounds %struct.aws_logger, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %vtable214, align 8, !tbaa !16
  %get_log_level215 = getelementptr inbounds %struct.aws_logger_vtable, ptr %130, i32 0, i32 1
  %131 = load ptr, ptr %get_log_level215, align 8, !tbaa !18
  %132 = load ptr, ptr %logger209, align 8, !tbaa !4
  %call216 = call i32 %131(ptr noundef %132, i32 noundef 2053)
  %cmp217 = icmp uge i32 %call216, 2
  br i1 %cmp217, label %if.then219, label %if.end223

if.then219:                                       ; preds = %land.lhs.true213
  %133 = load ptr, ptr %logger209, align 8, !tbaa !4
  %vtable220 = getelementptr inbounds %struct.aws_logger, ptr %133, i32 0, i32 0
  %134 = load ptr, ptr %vtable220, align 8, !tbaa !16
  %log221 = getelementptr inbounds %struct.aws_logger_vtable, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %log221, align 8, !tbaa !20
  %136 = load ptr, ptr %logger209, align 8, !tbaa !4
  %call222 = call i32 (ptr, i32, i32, ptr, ...) %135(ptr noundef %136, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.17)
  br label %if.end223

if.end223:                                        ; preds = %if.then219, %land.lhs.true213, %do.body208
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger209) #8
  br label %do.cond224

do.cond224:                                       ; preds = %if.end223
  br label %do.end225

do.end225:                                        ; preds = %do.cond224
  %call226 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call226, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup297

if.end227:                                        ; preds = %land.lhs.true204, %if.end200
  %137 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %has_chunked_encoding_header228 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %137, i32 0, i32 6
  %138 = load i8, ptr %has_chunked_encoding_header228, align 1, !tbaa !32, !range !25, !noundef !26
  %tobool229 = trunc i8 %138 to i1
  br i1 %tobool229, label %land.lhs.true231, label %if.end254

land.lhs.true231:                                 ; preds = %if.end227
  %139 = load i8, ptr %has_body_stream, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool232 = trunc i8 %139 to i1
  br i1 %tobool232, label %if.then234, label %if.end254

if.then234:                                       ; preds = %land.lhs.true231
  br label %do.body235

do.body235:                                       ; preds = %if.then234
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger236) #8
  %call237 = call ptr @aws_logger_get()
  store ptr %call237, ptr %logger236, align 8, !tbaa !4
  %140 = load ptr, ptr %logger236, align 8, !tbaa !4
  %cmp238 = icmp ne ptr %140, null
  br i1 %cmp238, label %land.lhs.true240, label %if.end250

land.lhs.true240:                                 ; preds = %do.body235
  %141 = load ptr, ptr %logger236, align 8, !tbaa !4
  %vtable241 = getelementptr inbounds %struct.aws_logger, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %vtable241, align 8, !tbaa !16
  %get_log_level242 = getelementptr inbounds %struct.aws_logger_vtable, ptr %142, i32 0, i32 1
  %143 = load ptr, ptr %get_log_level242, align 8, !tbaa !18
  %144 = load ptr, ptr %logger236, align 8, !tbaa !4
  %call243 = call i32 %143(ptr noundef %144, i32 noundef 2053)
  %cmp244 = icmp uge i32 %call243, 2
  br i1 %cmp244, label %if.then246, label %if.end250

if.then246:                                       ; preds = %land.lhs.true240
  %145 = load ptr, ptr %logger236, align 8, !tbaa !4
  %vtable247 = getelementptr inbounds %struct.aws_logger, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %vtable247, align 8, !tbaa !16
  %log248 = getelementptr inbounds %struct.aws_logger_vtable, ptr %146, i32 0, i32 0
  %147 = load ptr, ptr %log248, align 8, !tbaa !20
  %148 = load ptr, ptr %logger236, align 8, !tbaa !4
  %call249 = call i32 (ptr, i32, i32, ptr, ...) %147(ptr noundef %148, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.18)
  br label %if.end250

if.end250:                                        ; preds = %if.then246, %land.lhs.true240, %do.body235
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger236) #8
  br label %do.cond251

do.cond251:                                       ; preds = %if.end250
  br label %do.end252

do.end252:                                        ; preds = %do.cond251
  %call253 = call i32 @aws_raise_error(i32 noundef 2057)
  store i32 %call253, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup297

if.end254:                                        ; preds = %land.lhs.true231, %if.end227
  %149 = load i8, ptr %body_headers_forbidden.addr, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool255 = trunc i8 %149 to i1
  br i1 %tobool255, label %land.lhs.true257, label %if.end283

land.lhs.true257:                                 ; preds = %if.end254
  %150 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %content_length258 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %150, i32 0, i32 4
  %151 = load i64, ptr %content_length258, align 8, !tbaa !34
  %cmp259 = icmp ugt i64 %151, 0
  br i1 %cmp259, label %if.then263, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true257
  %152 = load i8, ptr %has_transfer_encoding_header, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool261 = trunc i8 %152 to i1
  br i1 %tobool261, label %if.then263, label %if.end283

if.then263:                                       ; preds = %lor.lhs.false, %land.lhs.true257
  br label %do.body264

do.body264:                                       ; preds = %if.then263
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger265) #8
  %call266 = call ptr @aws_logger_get()
  store ptr %call266, ptr %logger265, align 8, !tbaa !4
  %153 = load ptr, ptr %logger265, align 8, !tbaa !4
  %cmp267 = icmp ne ptr %153, null
  br i1 %cmp267, label %land.lhs.true269, label %if.end279

land.lhs.true269:                                 ; preds = %do.body264
  %154 = load ptr, ptr %logger265, align 8, !tbaa !4
  %vtable270 = getelementptr inbounds %struct.aws_logger, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %vtable270, align 8, !tbaa !16
  %get_log_level271 = getelementptr inbounds %struct.aws_logger_vtable, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %get_log_level271, align 8, !tbaa !18
  %157 = load ptr, ptr %logger265, align 8, !tbaa !4
  %call272 = call i32 %156(ptr noundef %157, i32 noundef 2053)
  %cmp273 = icmp uge i32 %call272, 2
  br i1 %cmp273, label %if.then275, label %if.end279

if.then275:                                       ; preds = %land.lhs.true269
  %158 = load ptr, ptr %logger265, align 8, !tbaa !4
  %vtable276 = getelementptr inbounds %struct.aws_logger, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %vtable276, align 8, !tbaa !16
  %log277 = getelementptr inbounds %struct.aws_logger_vtable, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %log277, align 8, !tbaa !20
  %161 = load ptr, ptr %logger265, align 8, !tbaa !4
  %call278 = call i32 (ptr, i32, i32, ptr, ...) %160(ptr noundef %161, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.19)
  br label %if.end279

if.end279:                                        ; preds = %if.then275, %land.lhs.true269, %do.body264
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger265) #8
  br label %do.cond280

do.cond280:                                       ; preds = %if.end279
  br label %do.end281

do.end281:                                        ; preds = %do.cond280
  %call282 = call i32 @aws_raise_error(i32 noundef 2050)
  store i32 %call282, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup297

if.end283:                                        ; preds = %lor.lhs.false, %if.end254
  %162 = load i8, ptr %body_headers_ignored.addr, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool284 = trunc i8 %162 to i1
  br i1 %tobool284, label %if.then285, label %if.end288

if.then285:                                       ; preds = %if.end283
  %163 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %content_length286 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %163, i32 0, i32 4
  store i64 0, ptr %content_length286, align 8, !tbaa !34
  %164 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %has_chunked_encoding_header287 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %164, i32 0, i32 6
  store i8 0, ptr %has_chunked_encoding_header287, align 1, !tbaa !32
  br label %if.end288

if.end288:                                        ; preds = %if.then285, %if.end283
  %165 = load ptr, ptr %encoder_message.addr, align 8, !tbaa !4
  %content_length289 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %165, i32 0, i32 4
  %166 = load i64, ptr %content_length289, align 8, !tbaa !34
  %cmp290 = icmp ugt i64 %166, 0
  br i1 %cmp290, label %land.lhs.true292, label %if.end296

land.lhs.true292:                                 ; preds = %if.end288
  %167 = load i8, ptr %has_body_stream, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool293 = trunc i8 %167 to i1
  br i1 %tobool293, label %if.end296, label %if.then294

if.then294:                                       ; preds = %land.lhs.true292
  %call295 = call i32 @aws_raise_error(i32 noundef 2056)
  store i32 %call295, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup297

if.end296:                                        ; preds = %land.lhs.true292, %if.end288
  %168 = load i64, ptr %total, align 8, !tbaa !21
  %169 = load ptr, ptr %out_header_lines_len.addr, align 8, !tbaa !4
  store i64 %168, ptr %169, align 8, !tbaa !21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup297

cleanup297:                                       ; preds = %if.end296, %if.then294, %do.end281, %do.end252, %do.end225, %do.end198, %cleanup173
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_headers) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_transfer_encoding_header) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_content_length_header) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_body_stream) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #8
  %170 = load i32, ptr %retval, align 4
  ret i32 %170
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !21
  store i64 %b, ptr %b.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !21
  %1 = load i64, ptr %b.addr, align 8, !tbaa !21
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_add_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @aws_byte_buf_init(ptr noundef, ptr noundef, i64 noundef) #2

declare zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef, i64, ptr) #2

declare zeroext i1 @aws_byte_buf_write_u8(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s_write_crlf(ptr noundef %dst) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %crlf_cursor = alloca %struct.aws_byte_cursor, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %crlf_cursor) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %crlf_cursor, ptr align 8 @__const.s_write_crlf.crlf_cursor, i64 16, i1 false)
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds { i64, ptr }, ptr %crlf_cursor, i32 0, i32 0
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %crlf_cursor, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %call = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %0, i64 %2, ptr %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %crlf_cursor) #8
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define internal void @s_write_headers(ptr noundef %dst, ptr noundef %headers) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %headers.addr = alloca ptr, align 8
  %num_headers = alloca i64, align 8
  %wrote_all = alloca i8, align 1
  %i = alloca i64, align 8
  %header = alloca %struct.aws_http_header, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_headers) #8
  %0 = load ptr, ptr %headers.addr, align 8, !tbaa !4
  %call = call i64 @aws_http_headers_count(ptr noundef %0)
  store i64 %call, ptr %num_headers, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr %wrote_all) #8
  store i8 1, ptr %wrote_all, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !21
  %2 = load i64, ptr %num_headers, align 8, !tbaa !21
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40, ptr %header) #8
  %3 = load ptr, ptr %headers.addr, align 8, !tbaa !4
  %4 = load i64, ptr %i, align 8, !tbaa !21
  %call1 = call i32 @aws_http_headers_get_index(ptr noundef %3, i64 noundef %4, ptr noundef %header)
  %5 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %6 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %call2 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %5, i64 %7, ptr %9)
  %conv = zext i1 %call2 to i32
  %10 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool = trunc i8 %10 to i1
  %conv3 = zext i1 %tobool to i32
  %and = and i32 %conv3, %conv
  %tobool4 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool4 to i8
  store i8 %frombool, ptr %wrote_all, align 1, !tbaa !24
  %11 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call5 = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %11, i8 noundef zeroext 58)
  %conv6 = zext i1 %call5 to i32
  %12 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool7 = trunc i8 %12 to i1
  %conv8 = zext i1 %tobool7 to i32
  %and9 = and i32 %conv8, %conv6
  %tobool10 = icmp ne i32 %and9, 0
  %frombool11 = zext i1 %tobool10 to i8
  store i8 %frombool11, ptr %wrote_all, align 1, !tbaa !24
  %13 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call12 = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %13, i8 noundef zeroext 32)
  %conv13 = zext i1 %call12 to i32
  %14 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool14 = trunc i8 %14 to i1
  %conv15 = zext i1 %tobool14 to i32
  %and16 = and i32 %conv15, %conv13
  %tobool17 = icmp ne i32 %and16, 0
  %frombool18 = zext i1 %tobool17 to i8
  store i8 %frombool18, ptr %wrote_all, align 1, !tbaa !24
  %15 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %16 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %call19 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %15, i64 %17, ptr %19)
  %conv20 = zext i1 %call19 to i32
  %20 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool21 = trunc i8 %20 to i1
  %conv22 = zext i1 %tobool21 to i32
  %and23 = and i32 %conv22, %conv20
  %tobool24 = icmp ne i32 %and23, 0
  %frombool25 = zext i1 %tobool24 to i8
  store i8 %frombool25, ptr %wrote_all, align 1, !tbaa !24
  %21 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call26 = call zeroext i1 @s_write_crlf(ptr noundef %21)
  %conv27 = zext i1 %call26 to i32
  %22 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool28 = trunc i8 %22 to i1
  %conv29 = zext i1 %tobool28 to i32
  %and30 = and i32 %conv29, %conv27
  %tobool31 = icmp ne i32 %and30, 0
  %frombool32 = zext i1 %tobool31 to i8
  store i8 %frombool32, ptr %wrote_all, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 40, ptr %header) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, ptr %i, align 8, !tbaa !21
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %24 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool33 = trunc i8 %24 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %wrote_all) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_headers) #8
  ret void
}

declare ptr @aws_http_message_get_const_headers(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @aws_h1_encoder_message_clean_up(ptr noundef %message) #0 {
entry:
  %message.addr = alloca ptr, align 8
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %body = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %body, align 8, !tbaa !8
  %call = call ptr @aws_input_stream_release(ptr noundef %1)
  %2 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %2, i32 0, i32 0
  call void @aws_byte_buf_clean_up(ptr noundef %outgoing_head_buf)
  %3 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %trailer = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %trailer, align 8, !tbaa !35
  call void @aws_h1_trailer_destroy(ptr noundef %4)
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 72, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_h1_encoder_message_init_from_response(ptr noundef %message, ptr noundef %allocator, ptr noundef %response, i1 noundef zeroext %body_headers_ignored, ptr noundef %pending_chunk_list) #0 {
entry:
  %retval = alloca i32, align 4
  %message.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %response.addr = alloca ptr, align 8
  %body_headers_ignored.addr = alloca i8, align 1
  %pending_chunk_list.addr = alloca ptr, align 8
  %version = alloca %struct.aws_byte_cursor, align 8
  %status_int = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %status_code_str = alloca [4 x i8], align 1
  %status_code = alloca %struct.aws_byte_cursor, align 8
  %status_text = alloca %struct.aws_byte_cursor, align 8
  %header_lines_len = alloca i64, align 8
  %body_headers_forbidden = alloca i8, align 1
  %response_line_len = alloca i64, align 8
  %head_end_len = alloca i64, align 8
  %head_total_len = alloca i64, align 8
  %wrote_all = alloca i8, align 1
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %response, ptr %response.addr, align 8, !tbaa !4
  %frombool = zext i1 %body_headers_ignored to i8
  store i8 %frombool, ptr %body_headers_ignored.addr, align 1, !tbaa !24
  store ptr %pending_chunk_list, ptr %pending_chunk_list.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 72, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %call = call ptr @aws_http_message_get_body_stream(ptr noundef %1)
  %call1 = call ptr @aws_input_stream_acquire(ptr noundef %call)
  %2 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %body = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %2, i32 0, i32 1
  store ptr %call1, ptr %body, align 8, !tbaa !8
  %3 = load ptr, ptr %pending_chunk_list.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %pending_chunk_list2 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %4, i32 0, i32 2
  store ptr %3, ptr %pending_chunk_list2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %version) #8
  %call3 = call { i64, ptr } @aws_http_version_to_str(i32 noundef 2)
  %5 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 0
  %6 = extractvalue { i64, ptr } %call3, 0
  store i64 %6, ptr %5, align 8
  %7 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 1
  %8 = extractvalue { i64, ptr } %call3, 1
  store ptr %8, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status_int) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  %9 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %call4 = call i32 @aws_http_message_get_response_status(ptr noundef %9, ptr noundef %status_int)
  store i32 %call4, ptr %err, align 4, !tbaa !14
  %10 = load i32, ptr %err, align 4, !tbaa !14
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call5 = call i32 @aws_raise_error(i32 noundef 2055)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %status_code_str) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %status_code_str, ptr align 1 @__const.aws_h1_encoder_message_init_from_response.status_code_str, i64 4, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], ptr %status_code_str, i64 0, i64 0
  %11 = load i32, ptr %status_int, align 4, !tbaa !14
  %call6 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 4, ptr noundef @.str.4, i32 noundef %11) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %status_code) #8
  %arraydecay7 = getelementptr inbounds [4 x i8], ptr %status_code_str, i64 0, i64 0
  %call8 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef %arraydecay7)
  %12 = getelementptr inbounds { i64, ptr }, ptr %status_code, i32 0, i32 0
  %13 = extractvalue { i64, ptr } %call8, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %status_code, i32 0, i32 1
  %15 = extractvalue { i64, ptr } %call8, 1
  store ptr %15, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %status_text) #8
  %16 = load i32, ptr %status_int, align 4, !tbaa !14
  %call9 = call ptr @aws_http_status_text(i32 noundef %16)
  %call10 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef %call9)
  %17 = getelementptr inbounds { i64, ptr }, ptr %status_text, i32 0, i32 0
  %18 = extractvalue { i64, ptr } %call10, 0
  store i64 %18, ptr %17, align 8
  %19 = getelementptr inbounds { i64, ptr }, ptr %status_text, i32 0, i32 1
  %20 = extractvalue { i64, ptr } %call10, 1
  store ptr %20, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %header_lines_len) #8
  %21 = load i32, ptr %status_int, align 4, !tbaa !14
  %cmp = icmp eq i32 %21, 304
  %conv = zext i1 %cmp to i32
  %22 = load i8, ptr %body_headers_ignored.addr, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool11 = trunc i8 %22 to i1
  %conv12 = zext i1 %tobool11 to i32
  %or = or i32 %conv12, %conv
  %tobool13 = icmp ne i32 %or, 0
  %frombool14 = zext i1 %tobool13 to i8
  store i8 %frombool14, ptr %body_headers_ignored.addr, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 1, ptr %body_headers_forbidden) #8
  %23 = load i32, ptr %status_int, align 4, !tbaa !14
  %cmp15 = icmp eq i32 %23, 204
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %24 = load i32, ptr %status_int, align 4, !tbaa !14
  %div = sdiv i32 %24, 100
  %cmp17 = icmp eq i32 %div, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %25 = phi i1 [ true, %if.end ], [ %cmp17, %lor.rhs ]
  %frombool19 = zext i1 %25 to i8
  store i8 %frombool19, ptr %body_headers_forbidden, align 1, !tbaa !24
  %26 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %28 = load i8, ptr %body_headers_ignored.addr, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool20 = trunc i8 %28 to i1
  %29 = load i8, ptr %body_headers_forbidden, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool21 = trunc i8 %29 to i1
  %call22 = call i32 @s_scan_outgoing_headers(ptr noundef %26, ptr noundef %27, ptr noundef %header_lines_len, i1 noundef zeroext %tobool20, i1 noundef zeroext %tobool21)
  store i32 %call22, ptr %err, align 4, !tbaa !14
  %30 = load i32, ptr %err, align 4, !tbaa !14
  %tobool23 = icmp ne i32 %30, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.end
  br label %error

if.end25:                                         ; preds = %lor.end
  store i64 4, ptr %response_line_len, align 8, !tbaa !21
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %version, i32 0, i32 0
  %31 = load i64, ptr %len, align 8, !tbaa !22
  %32 = load i64, ptr %response_line_len, align 8, !tbaa !21
  %call26 = call i32 @aws_add_size_checked(i64 noundef %31, i64 noundef %32, ptr noundef %response_line_len)
  %33 = load i32, ptr %err, align 4, !tbaa !14
  %or27 = or i32 %33, %call26
  store i32 %or27, ptr %err, align 4, !tbaa !14
  %len28 = getelementptr inbounds %struct.aws_byte_cursor, ptr %status_code, i32 0, i32 0
  %34 = load i64, ptr %len28, align 8, !tbaa !22
  %35 = load i64, ptr %response_line_len, align 8, !tbaa !21
  %call29 = call i32 @aws_add_size_checked(i64 noundef %34, i64 noundef %35, ptr noundef %response_line_len)
  %36 = load i32, ptr %err, align 4, !tbaa !14
  %or30 = or i32 %36, %call29
  store i32 %or30, ptr %err, align 4, !tbaa !14
  %len31 = getelementptr inbounds %struct.aws_byte_cursor, ptr %status_text, i32 0, i32 0
  %37 = load i64, ptr %len31, align 8, !tbaa !22
  %38 = load i64, ptr %response_line_len, align 8, !tbaa !21
  %call32 = call i32 @aws_add_size_checked(i64 noundef %37, i64 noundef %38, ptr noundef %response_line_len)
  %39 = load i32, ptr %err, align 4, !tbaa !14
  %or33 = or i32 %39, %call32
  store i32 %or33, ptr %err, align 4, !tbaa !14
  store i64 2, ptr %head_end_len, align 8, !tbaa !21
  %40 = load i64, ptr %response_line_len, align 8, !tbaa !21
  store i64 %40, ptr %head_total_len, align 8, !tbaa !21
  %41 = load i64, ptr %header_lines_len, align 8, !tbaa !21
  %42 = load i64, ptr %head_total_len, align 8, !tbaa !21
  %call34 = call i32 @aws_add_size_checked(i64 noundef %41, i64 noundef %42, ptr noundef %head_total_len)
  %43 = load i32, ptr %err, align 4, !tbaa !14
  %or35 = or i32 %43, %call34
  store i32 %or35, ptr %err, align 4, !tbaa !14
  %44 = load i64, ptr %head_end_len, align 8, !tbaa !21
  %45 = load i64, ptr %head_total_len, align 8, !tbaa !21
  %call36 = call i32 @aws_add_size_checked(i64 noundef %44, i64 noundef %45, ptr noundef %head_total_len)
  %46 = load i32, ptr %err, align 4, !tbaa !14
  %or37 = or i32 %46, %call36
  store i32 %or37, ptr %err, align 4, !tbaa !14
  %47 = load i32, ptr %err, align 4, !tbaa !14
  %tobool38 = icmp ne i32 %47, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end25
  br label %error

if.end40:                                         ; preds = %if.end25
  %48 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %50 = load i64, ptr %head_total_len, align 8, !tbaa !21
  %call41 = call i32 @aws_byte_buf_init(ptr noundef %outgoing_head_buf, ptr noundef %49, i64 noundef %50)
  store i32 %call41, ptr %err, align 4, !tbaa !14
  %51 = load i32, ptr %err, align 4, !tbaa !14
  %tobool42 = icmp ne i32 %51, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  store i8 1, ptr %wrote_all, align 1, !tbaa !24
  %52 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf45 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %52, i32 0, i32 0
  %53 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 0
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds { i64, ptr }, ptr %version, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %call46 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %outgoing_head_buf45, i64 %54, ptr %56)
  %conv47 = zext i1 %call46 to i32
  %57 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool48 = trunc i8 %57 to i1
  %conv49 = zext i1 %tobool48 to i32
  %and = and i32 %conv49, %conv47
  %tobool50 = icmp ne i32 %and, 0
  %frombool51 = zext i1 %tobool50 to i8
  store i8 %frombool51, ptr %wrote_all, align 1, !tbaa !24
  %58 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf52 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %58, i32 0, i32 0
  %call53 = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %outgoing_head_buf52, i8 noundef zeroext 32)
  %conv54 = zext i1 %call53 to i32
  %59 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool55 = trunc i8 %59 to i1
  %conv56 = zext i1 %tobool55 to i32
  %and57 = and i32 %conv56, %conv54
  %tobool58 = icmp ne i32 %and57, 0
  %frombool59 = zext i1 %tobool58 to i8
  store i8 %frombool59, ptr %wrote_all, align 1, !tbaa !24
  %60 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf60 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %60, i32 0, i32 0
  %61 = getelementptr inbounds { i64, ptr }, ptr %status_code, i32 0, i32 0
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds { i64, ptr }, ptr %status_code, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  %call61 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %outgoing_head_buf60, i64 %62, ptr %64)
  %conv62 = zext i1 %call61 to i32
  %65 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool63 = trunc i8 %65 to i1
  %conv64 = zext i1 %tobool63 to i32
  %and65 = and i32 %conv64, %conv62
  %tobool66 = icmp ne i32 %and65, 0
  %frombool67 = zext i1 %tobool66 to i8
  store i8 %frombool67, ptr %wrote_all, align 1, !tbaa !24
  %66 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf68 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %66, i32 0, i32 0
  %call69 = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %outgoing_head_buf68, i8 noundef zeroext 32)
  %conv70 = zext i1 %call69 to i32
  %67 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool71 = trunc i8 %67 to i1
  %conv72 = zext i1 %tobool71 to i32
  %and73 = and i32 %conv72, %conv70
  %tobool74 = icmp ne i32 %and73, 0
  %frombool75 = zext i1 %tobool74 to i8
  store i8 %frombool75, ptr %wrote_all, align 1, !tbaa !24
  %68 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf76 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %68, i32 0, i32 0
  %69 = getelementptr inbounds { i64, ptr }, ptr %status_text, i32 0, i32 0
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds { i64, ptr }, ptr %status_text, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %call77 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %outgoing_head_buf76, i64 %70, ptr %72)
  %conv78 = zext i1 %call77 to i32
  %73 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool79 = trunc i8 %73 to i1
  %conv80 = zext i1 %tobool79 to i32
  %and81 = and i32 %conv80, %conv78
  %tobool82 = icmp ne i32 %and81, 0
  %frombool83 = zext i1 %tobool82 to i8
  store i8 %frombool83, ptr %wrote_all, align 1, !tbaa !24
  %74 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf84 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %74, i32 0, i32 0
  %call85 = call zeroext i1 @s_write_crlf(ptr noundef %outgoing_head_buf84)
  %conv86 = zext i1 %call85 to i32
  %75 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool87 = trunc i8 %75 to i1
  %conv88 = zext i1 %tobool87 to i32
  %and89 = and i32 %conv88, %conv86
  %tobool90 = icmp ne i32 %and89, 0
  %frombool91 = zext i1 %tobool90 to i8
  store i8 %frombool91, ptr %wrote_all, align 1, !tbaa !24
  %76 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf92 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %call93 = call ptr @aws_http_message_get_const_headers(ptr noundef %77)
  call void @s_write_headers(ptr noundef %outgoing_head_buf92, ptr noundef %call93)
  %78 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %outgoing_head_buf94 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %78, i32 0, i32 0
  %call95 = call zeroext i1 @s_write_crlf(ptr noundef %outgoing_head_buf94)
  %conv96 = zext i1 %call95 to i32
  %79 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool97 = trunc i8 %79 to i1
  %conv98 = zext i1 %tobool97 to i32
  %and99 = and i32 %conv98, %conv96
  %tobool100 = icmp ne i32 %and99, 0
  %frombool101 = zext i1 %tobool100 to i8
  store i8 %frombool101, ptr %wrote_all, align 1, !tbaa !24
  %80 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool102 = trunc i8 %80 to i1
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then39, %if.then24
  %81 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @aws_h1_encoder_message_clean_up(ptr noundef %81)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end44, %if.then43
  call void @llvm.lifetime.end.p0(i64 1, ptr %body_headers_forbidden) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %header_lines_len) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %status_text) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %status_code) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status_code_str) #8
  br label %cleanup107

cleanup107:                                       ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status_int) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %version) #8
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

declare i32 @aws_http_message_get_response_status(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #6

declare { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef) #2

declare ptr @aws_http_status_text(i32 noundef) #2

declare ptr @aws_input_stream_release(ptr noundef) #2

declare void @aws_byte_buf_clean_up(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @aws_h1_trailer_destroy(ptr noundef %trailer) #0 {
entry:
  %trailer.addr = alloca ptr, align 8
  store ptr %trailer, ptr %trailer.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %trailer.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %trailer.addr, align 8, !tbaa !4
  %trailer_data = getelementptr inbounds %struct.aws_h1_trailer, ptr %1, i32 0, i32 1
  call void @aws_byte_buf_clean_up(ptr noundef %trailer_data)
  %2 = load ptr, ptr %trailer.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_h1_trailer, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !36
  %4 = load ptr, ptr %trailer.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_h1_encoder_init(ptr noundef %encoder, ptr noundef %allocator) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 56, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 0
  store ptr %1, ptr %allocator1, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_h1_encoder_clean_up(ptr noundef %encoder) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 56, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_h1_encoder_start_message(ptr noundef %encoder, ptr noundef %message, ptr noundef %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %message1, align 8, !tbaa !40
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %5(ptr noundef %6, i32 noundef 2053)
  %cmp3 = icmp uge i32 %call2, 2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable5, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !20
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %12, ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.end

do.end:                                           ; preds = %if.end
  %call7 = call i32 @aws_raise_error(i32 noundef 38)
  store i32 %call7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %entry
  %13 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream9 = getelementptr inbounds %struct.aws_h1_encoder, ptr %14, i32 0, i32 6
  store ptr %13, ptr %current_stream9, align 8, !tbaa !41
  %15 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message10 = getelementptr inbounds %struct.aws_h1_encoder, ptr %16, i32 0, i32 2
  store ptr %15, ptr %message10, align 8, !tbaa !40
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %do.end
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define ptr @aws_h1_trailer_new(ptr noundef %allocator, ptr noundef %trailing_headers) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %trailing_headers.addr = alloca ptr, align 8
  %trailer_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %trailer = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %trailing_headers, ptr %trailing_headers.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailer_size) #8
  store i64 0, ptr %trailer_size, align 8, !tbaa !21
  %0 = load ptr, ptr %trailing_headers.addr, align 8, !tbaa !4
  %call = call i32 @s_scan_outgoing_trailer(ptr noundef %0, ptr noundef %trailer_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailer) #8
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call1 = call ptr @aws_mem_calloc(ptr noundef %1, i64 noundef 1, i64 noundef 40)
  store ptr %call1, ptr %trailer, align 8, !tbaa !4
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %trailer, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_h1_trailer, ptr %3, i32 0, i32 0
  store ptr %2, ptr %allocator2, align 8, !tbaa !36
  %4 = load ptr, ptr %trailer, align 8, !tbaa !4
  %trailer_data = getelementptr inbounds %struct.aws_h1_trailer, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %6 = load i64, ptr %trailer_size, align 8, !tbaa !21
  %call3 = call i32 @aws_byte_buf_init(ptr noundef %trailer_data, ptr noundef %5, i64 noundef %6)
  %7 = load ptr, ptr %trailer, align 8, !tbaa !4
  %trailer_data4 = getelementptr inbounds %struct.aws_h1_trailer, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %trailing_headers.addr, align 8, !tbaa !4
  call void @s_write_headers(ptr noundef %trailer_data4, ptr noundef %8)
  %9 = load ptr, ptr %trailer, align 8, !tbaa !4
  %trailer_data5 = getelementptr inbounds %struct.aws_h1_trailer, ptr %9, i32 0, i32 1
  %call6 = call zeroext i1 @s_write_crlf(ptr noundef %trailer_data5)
  %10 = load ptr, ptr %trailer, align 8, !tbaa !4
  store ptr %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailer_size) #8
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal i32 @s_scan_outgoing_trailer(ptr noundef %headers, ptr noundef %out_size) #0 {
entry:
  %retval = alloca i32, align 4
  %headers.addr = alloca ptr, align 8
  %out_size.addr = alloca ptr, align 8
  %num_headers = alloca i64, align 8
  %total = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %header = alloca %struct.aws_http_header, align 8
  %logger = alloca ptr, align 8
  %field_value = alloca %struct.aws_byte_cursor, align 8
  %logger16 = alloca ptr, align 8
  %name_enum = alloca i32, align 4
  %logger120 = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !4
  store ptr %out_size, ptr %out_size.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_headers) #8
  %0 = load ptr, ptr %headers.addr, align 8, !tbaa !4
  %call = call i64 @aws_http_headers_count(ptr noundef %0)
  store i64 %call, ptr %num_headers, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #8
  store i64 0, ptr %total, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !21
  %2 = load i64, ptr %num_headers, align 8, !tbaa !21
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup167

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40, ptr %header) #8
  %3 = load ptr, ptr %headers.addr, align 8, !tbaa !4
  %4 = load i64, ptr %i, align 8, !tbaa !21
  %call1 = call i32 @aws_http_headers_get_index(ptr noundef %3, i64 noundef %4, ptr noundef %header)
  %name = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %5 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %call2 = call zeroext i1 @aws_strutil_is_http_token(i64 %6, ptr %8)
  br i1 %call2, label %if.end11, label %if.then

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %9, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %12(ptr noundef %13, i32 noundef 2053)
  %cmp6 = icmp uge i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable8, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %log, align 8, !tbaa !20
  %17 = load ptr, ptr %logger, align 8, !tbaa !4
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %16(ptr noundef %17, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.8)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call10 = call i32 @aws_raise_error(i32 noundef 2051)
  store i32 %call10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup166

if.end11:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %field_value) #8
  %value = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %18 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %call12 = call { i64, ptr } @aws_strutil_trim_http_whitespace(i64 %19, ptr %21)
  %22 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 0
  %23 = extractvalue { i64, ptr } %call12, 0
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 1
  %25 = extractvalue { i64, ptr } %call12, 1
  store ptr %25, ptr %24, align 8
  %26 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 0
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds { i64, ptr }, ptr %field_value, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %call13 = call zeroext i1 @aws_strutil_is_http_field_value(i64 %27, ptr %29)
  br i1 %call13, label %if.end39, label %if.then14

if.then14:                                        ; preds = %if.end11
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger16) #8
  %call17 = call ptr @aws_logger_get()
  store ptr %call17, ptr %logger16, align 8, !tbaa !4
  %30 = load ptr, ptr %logger16, align 8, !tbaa !4
  %cmp18 = icmp ne ptr %30, null
  br i1 %cmp18, label %land.lhs.true19, label %if.end35

land.lhs.true19:                                  ; preds = %do.body15
  %31 = load ptr, ptr %logger16, align 8, !tbaa !4
  %vtable20 = getelementptr inbounds %struct.aws_logger, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %vtable20, align 8, !tbaa !16
  %get_log_level21 = getelementptr inbounds %struct.aws_logger_vtable, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %get_log_level21, align 8, !tbaa !18
  %34 = load ptr, ptr %logger16, align 8, !tbaa !4
  %call22 = call i32 %33(ptr noundef %34, i32 noundef 2053)
  %cmp23 = icmp uge i32 %call22, 2
  br i1 %cmp23, label %if.then24, label %if.end35

if.then24:                                        ; preds = %land.lhs.true19
  %35 = load ptr, ptr %logger16, align 8, !tbaa !4
  %vtable25 = getelementptr inbounds %struct.aws_logger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vtable25, align 8, !tbaa !16
  %log26 = getelementptr inbounds %struct.aws_logger_vtable, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %log26, align 8, !tbaa !20
  %38 = load ptr, ptr %logger16, align 8, !tbaa !4
  %name27 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %name27, i32 0, i32 0
  %39 = load i64, ptr %len, align 8, !tbaa !27
  %conv = trunc i64 %39 to i32
  %cmp28 = icmp slt i32 %conv, 0
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then24
  br label %cond.end

cond.false:                                       ; preds = %if.then24
  %name30 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len31 = getelementptr inbounds %struct.aws_byte_cursor, ptr %name30, i32 0, i32 0
  %40 = load i64, ptr %len31, align 8, !tbaa !27
  %conv32 = trunc i64 %40 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv32, %cond.false ]
  %name33 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %name33, i32 0, i32 1
  %41 = load ptr, ptr %ptr, align 8, !tbaa !29
  %call34 = call i32 (ptr, i32, i32, ptr, ...) %37(ptr noundef %38, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.9, i32 noundef %cond, ptr noundef %41)
  br label %if.end35

if.end35:                                         ; preds = %cond.end, %land.lhs.true19, %do.body15
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger16) #8
  br label %do.cond36

do.cond36:                                        ; preds = %if.end35
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  %call38 = call i32 @aws_raise_error(i32 noundef 2052)
  store i32 %call38, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165

if.end39:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_enum) #8
  %name40 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %42 = getelementptr inbounds { i64, ptr }, ptr %name40, i32 0, i32 0
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds { i64, ptr }, ptr %name40, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %call41 = call i32 @aws_http_str_to_header_name(i64 %43, ptr %45)
  store i32 %call41, ptr %name_enum, align 4, !tbaa !30
  %46 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp42 = icmp eq i32 %46, 9
  br i1 %cmp42, label %if.then118, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end39
  %47 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp44 = icmp eq i32 %47, 7
  br i1 %cmp44, label %if.then118, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %48 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp47 = icmp eq i32 %48, 12
  br i1 %cmp47, label %if.then118, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %49 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp50 = icmp eq i32 %49, 8
  br i1 %cmp50, label %if.then118, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %50 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp53 = icmp eq i32 %50, 13
  br i1 %cmp53, label %if.then118, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %51 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp56 = icmp eq i32 %51, 14
  br i1 %cmp56, label %if.then118, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %52 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp59 = icmp eq i32 %52, 15
  br i1 %cmp59, label %if.then118, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %53 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp62 = icmp eq i32 %53, 16
  br i1 %cmp62, label %if.then118, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %54 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp65 = icmp eq i32 %54, 17
  br i1 %cmp65, label %if.then118, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %55 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp68 = icmp eq i32 %55, 18
  br i1 %cmp68, label %if.then118, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %56 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp71 = icmp eq i32 %56, 19
  br i1 %cmp71, label %if.then118, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %57 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp74 = icmp eq i32 %57, 20
  br i1 %cmp74, label %if.then118, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %58 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp77 = icmp eq i32 %58, 21
  br i1 %cmp77, label %if.then118, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false76
  %59 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp80 = icmp eq i32 %59, 22
  br i1 %cmp80, label %if.then118, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %60 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp83 = icmp eq i32 %60, 23
  br i1 %cmp83, label %if.then118, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %61 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp86 = icmp eq i32 %61, 24
  br i1 %cmp86, label %if.then118, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %62 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp89 = icmp eq i32 %62, 25
  br i1 %cmp89, label %if.then118, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %63 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp92 = icmp eq i32 %63, 11
  br i1 %cmp92, label %if.then118, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false91
  %64 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp95 = icmp eq i32 %64, 10
  br i1 %cmp95, label %if.then118, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false94
  %65 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp98 = icmp eq i32 %65, 26
  br i1 %cmp98, label %if.then118, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %66 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp101 = icmp eq i32 %66, 27
  br i1 %cmp101, label %if.then118, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %lor.lhs.false100
  %67 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp104 = icmp eq i32 %67, 28
  br i1 %cmp104, label %if.then118, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false103
  %68 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp107 = icmp eq i32 %68, 29
  br i1 %cmp107, label %if.then118, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false106
  %69 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp110 = icmp eq i32 %69, 30
  br i1 %cmp110, label %if.then118, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false109
  %70 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp113 = icmp eq i32 %70, 31
  br i1 %cmp113, label %if.then118, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false112
  %71 = load i32, ptr %name_enum, align 4, !tbaa !30
  %cmp116 = icmp eq i32 %71, 32
  br i1 %cmp116, label %if.then118, label %if.end152

if.then118:                                       ; preds = %lor.lhs.false115, %lor.lhs.false112, %lor.lhs.false109, %lor.lhs.false106, %lor.lhs.false103, %lor.lhs.false100, %lor.lhs.false97, %lor.lhs.false94, %lor.lhs.false91, %lor.lhs.false88, %lor.lhs.false85, %lor.lhs.false82, %lor.lhs.false79, %lor.lhs.false76, %lor.lhs.false73, %lor.lhs.false70, %lor.lhs.false67, %lor.lhs.false64, %lor.lhs.false61, %lor.lhs.false58, %lor.lhs.false55, %lor.lhs.false52, %lor.lhs.false49, %lor.lhs.false46, %lor.lhs.false, %if.end39
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger120) #8
  %call121 = call ptr @aws_logger_get()
  store ptr %call121, ptr %logger120, align 8, !tbaa !4
  %72 = load ptr, ptr %logger120, align 8, !tbaa !4
  %cmp122 = icmp ne ptr %72, null
  br i1 %cmp122, label %land.lhs.true124, label %if.end148

land.lhs.true124:                                 ; preds = %do.body119
  %73 = load ptr, ptr %logger120, align 8, !tbaa !4
  %vtable125 = getelementptr inbounds %struct.aws_logger, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %vtable125, align 8, !tbaa !16
  %get_log_level126 = getelementptr inbounds %struct.aws_logger_vtable, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %get_log_level126, align 8, !tbaa !18
  %76 = load ptr, ptr %logger120, align 8, !tbaa !4
  %call127 = call i32 %75(ptr noundef %76, i32 noundef 2053)
  %cmp128 = icmp uge i32 %call127, 2
  br i1 %cmp128, label %if.then130, label %if.end148

if.then130:                                       ; preds = %land.lhs.true124
  %77 = load ptr, ptr %logger120, align 8, !tbaa !4
  %vtable131 = getelementptr inbounds %struct.aws_logger, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %vtable131, align 8, !tbaa !16
  %log132 = getelementptr inbounds %struct.aws_logger_vtable, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %log132, align 8, !tbaa !20
  %80 = load ptr, ptr %logger120, align 8, !tbaa !4
  %name133 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len134 = getelementptr inbounds %struct.aws_byte_cursor, ptr %name133, i32 0, i32 0
  %81 = load i64, ptr %len134, align 8, !tbaa !27
  %conv135 = trunc i64 %81 to i32
  %cmp136 = icmp slt i32 %conv135, 0
  br i1 %cmp136, label %cond.true138, label %cond.false139

cond.true138:                                     ; preds = %if.then130
  br label %cond.end143

cond.false139:                                    ; preds = %if.then130
  %name140 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len141 = getelementptr inbounds %struct.aws_byte_cursor, ptr %name140, i32 0, i32 0
  %82 = load i64, ptr %len141, align 8, !tbaa !27
  %conv142 = trunc i64 %82 to i32
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false139, %cond.true138
  %cond144 = phi i32 [ 0, %cond.true138 ], [ %conv142, %cond.false139 ]
  %name145 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %ptr146 = getelementptr inbounds %struct.aws_byte_cursor, ptr %name145, i32 0, i32 1
  %83 = load ptr, ptr %ptr146, align 8, !tbaa !29
  %call147 = call i32 (ptr, i32, i32, ptr, ...) %79(ptr noundef %80, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.21, i32 noundef %cond144, ptr noundef %83)
  br label %if.end148

if.end148:                                        ; preds = %cond.end143, %land.lhs.true124, %do.body119
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger120) #8
  br label %do.cond149

do.cond149:                                       ; preds = %if.end148
  br label %do.end150

do.end150:                                        ; preds = %do.cond149
  %call151 = call i32 @aws_raise_error(i32 noundef 2050)
  store i32 %call151, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end152:                                        ; preds = %lor.lhs.false115
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  store i32 0, ptr %err, align 4, !tbaa !14
  %name153 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 0
  %len154 = getelementptr inbounds %struct.aws_byte_cursor, ptr %name153, i32 0, i32 0
  %84 = load i64, ptr %len154, align 8, !tbaa !27
  %85 = load i64, ptr %total, align 8, !tbaa !21
  %call155 = call i32 @aws_add_size_checked(i64 noundef %84, i64 noundef %85, ptr noundef %total)
  %86 = load i32, ptr %err, align 4, !tbaa !14
  %or = or i32 %86, %call155
  store i32 %or, ptr %err, align 4, !tbaa !14
  %value156 = getelementptr inbounds %struct.aws_http_header, ptr %header, i32 0, i32 1
  %len157 = getelementptr inbounds %struct.aws_byte_cursor, ptr %value156, i32 0, i32 0
  %87 = load i64, ptr %len157, align 8, !tbaa !33
  %88 = load i64, ptr %total, align 8, !tbaa !21
  %call158 = call i32 @aws_add_size_checked(i64 noundef %87, i64 noundef %88, ptr noundef %total)
  %89 = load i32, ptr %err, align 4, !tbaa !14
  %or159 = or i32 %89, %call158
  store i32 %or159, ptr %err, align 4, !tbaa !14
  %90 = load i64, ptr %total, align 8, !tbaa !21
  %call160 = call i32 @aws_add_size_checked(i64 noundef 4, i64 noundef %90, ptr noundef %total)
  %91 = load i32, ptr %err, align 4, !tbaa !14
  %or161 = or i32 %91, %call160
  store i32 %or161, ptr %err, align 4, !tbaa !14
  %92 = load i32, ptr %err, align 4, !tbaa !14
  %tobool = icmp ne i32 %92, 0
  br i1 %tobool, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.end152
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end163:                                        ; preds = %if.end152
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %if.then162
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  br label %cleanup164

cleanup164:                                       ; preds = %cleanup, %do.end150
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_enum) #8
  br label %cleanup165

cleanup165:                                       ; preds = %cleanup164, %do.end37
  call void @llvm.lifetime.end.p0(i64 16, ptr %field_value) #8
  br label %cleanup166

cleanup166:                                       ; preds = %cleanup165, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr %header) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup167 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup166
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %93 = load i64, ptr %i, align 8, !tbaa !21
  %inc = add i64 %93, 1
  store i64 %inc, ptr %i, align 8, !tbaa !21
  br label %for.cond

cleanup167:                                       ; preds = %cleanup166, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest168 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest168, label %cleanup173 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup167
  %94 = load i64, ptr %total, align 8, !tbaa !21
  %call169 = call i32 @aws_add_size_checked(i64 noundef 2, i64 noundef %94, ptr noundef %total)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173

if.end172:                                        ; preds = %for.end
  %95 = load i64, ptr %total, align 8, !tbaa !21
  %96 = load ptr, ptr %out_size.addr, align 8, !tbaa !4
  store i64 %95, ptr %96, align 8, !tbaa !21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup173

cleanup173:                                       ; preds = %if.end172, %if.then171, %cleanup167
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_headers) #8
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

declare ptr @aws_mem_calloc(ptr noundef, i64 noundef, i64 noundef) #2

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_h1_chunk_new(ptr noundef %allocator, ptr noundef %options) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  %chunk_line_size = alloca i64, align 8
  %chunk_line_storage = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.aws_byte_buf, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_line_size) #8
  %0 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %call = call i64 @s_calculate_chunk_line_size(ptr noundef %0)
  store i64 %call, ptr %chunk_line_size, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_line_storage) #8
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load i64, ptr %chunk_line_size, align 8, !tbaa !21
  %call1 = call ptr (ptr, i64, ...) @aws_mem_acquire_many(ptr noundef %1, i64 noundef 2, ptr noundef %chunk, i64 noundef 88, ptr noundef %chunk_line_storage, i64 noundef %2)
  %tobool = icmp ne ptr %call1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %chunk, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_h1_chunk, ptr %4, i32 0, i32 0
  store ptr %3, ptr %allocator2, align 8, !tbaa !42
  %5 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %chunk_data = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %chunk_data, align 8, !tbaa !45
  %call3 = call ptr @aws_input_stream_acquire(ptr noundef %6)
  %7 = load ptr, ptr %chunk, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_h1_chunk, ptr %7, i32 0, i32 1
  store ptr %call3, ptr %data, align 8, !tbaa !47
  %8 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %chunk_data_size = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %chunk_data_size, align 8, !tbaa !48
  %10 = load ptr, ptr %chunk, align 8, !tbaa !4
  %data_size = getelementptr inbounds %struct.aws_h1_chunk, ptr %10, i32 0, i32 2
  store i64 %9, ptr %data_size, align 8, !tbaa !49
  %11 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_complete = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %on_complete, align 8, !tbaa !50
  %13 = load ptr, ptr %chunk, align 8, !tbaa !4
  %on_complete4 = getelementptr inbounds %struct.aws_h1_chunk, ptr %13, i32 0, i32 3
  store ptr %12, ptr %on_complete4, align 8, !tbaa !51
  %14 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %user_data, align 8, !tbaa !52
  %16 = load ptr, ptr %chunk, align 8, !tbaa !4
  %user_data5 = getelementptr inbounds %struct.aws_h1_chunk, ptr %16, i32 0, i32 4
  store ptr %15, ptr %user_data5, align 8, !tbaa !53
  %17 = load ptr, ptr %chunk, align 8, !tbaa !4
  %chunk_line = getelementptr inbounds %struct.aws_h1_chunk, ptr %17, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr %tmp) #8
  %18 = load ptr, ptr %chunk_line_storage, align 8, !tbaa !4
  %19 = load i64, ptr %chunk_line_size, align 8, !tbaa !21
  call void @aws_byte_buf_from_empty_array(ptr sret(%struct.aws_byte_buf) align 8 %tmp, ptr noundef %18, i64 noundef %19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %chunk_line, ptr align 8 %tmp, i64 32, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 32, ptr %tmp) #8
  %20 = load ptr, ptr %chunk, align 8, !tbaa !4
  %chunk_line6 = getelementptr inbounds %struct.aws_h1_chunk, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %options.addr, align 8, !tbaa !4
  call void @s_populate_chunk_line_buffer(ptr noundef %chunk_line6, ptr noundef %21)
  %22 = load ptr, ptr %chunk, align 8, !tbaa !4
  store ptr %22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_line_storage) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_line_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #8
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define internal i64 @s_calculate_chunk_line_size(ptr noundef %options) #0 {
entry:
  %options.addr = alloca ptr, align 8
  %chunk_line_size = alloca i64, align 8
  %i = alloca i64, align 8
  %chunk_extension = alloca ptr, align 8
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_line_size) #8
  store i64 19, ptr %chunk_line_size, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !21
  %1 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %num_extensions = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %num_extensions, align 8, !tbaa !55
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_extension) #8
  %3 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %extensions = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %extensions, align 8, !tbaa !56
  %5 = load i64, ptr %i, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds %struct.aws_http1_chunk_extension, ptr %4, i64 %5
  store ptr %add.ptr, ptr %chunk_extension, align 8, !tbaa !4
  %6 = load i64, ptr %chunk_line_size, align 8, !tbaa !21
  %add = add i64 %6, 4
  store i64 %add, ptr %chunk_line_size, align 8, !tbaa !21
  %7 = load ptr, ptr %chunk_extension, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.aws_http1_chunk_extension, ptr %7, i32 0, i32 0
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 0
  %8 = load i64, ptr %len, align 8, !tbaa !57
  %9 = load i64, ptr %chunk_line_size, align 8, !tbaa !21
  %add1 = add i64 %9, %8
  store i64 %add1, ptr %chunk_line_size, align 8, !tbaa !21
  %10 = load i64, ptr %chunk_line_size, align 8, !tbaa !21
  %add2 = add i64 %10, 4
  store i64 %add2, ptr %chunk_line_size, align 8, !tbaa !21
  %11 = load ptr, ptr %chunk_extension, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_http1_chunk_extension, ptr %11, i32 0, i32 1
  %len3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %value, i32 0, i32 0
  %12 = load i64, ptr %len3, align 8, !tbaa !59
  %13 = load i64, ptr %chunk_line_size, align 8, !tbaa !21
  %add4 = add i64 %13, %12
  store i64 %add4, ptr %chunk_line_size, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_extension) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %i, align 8, !tbaa !21
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %15 = load i64, ptr %chunk_line_size, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_line_size) #8
  ret i64 %15
}

declare ptr @aws_mem_acquire_many(ptr noundef, i64 noundef, ...) #2

declare void @aws_byte_buf_from_empty_array(ptr sret(%struct.aws_byte_buf) align 8, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_populate_chunk_line_buffer(ptr noundef %chunk_line, ptr noundef %options) #0 {
entry:
  %chunk_line.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %wrote_chunk_line = alloca i8, align 1
  %i = alloca i64, align 8
  store ptr %chunk_line, ptr %chunk_line.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %wrote_chunk_line) #8
  store i8 1, ptr %wrote_chunk_line, align 1, !tbaa !24
  %0 = load ptr, ptr %chunk_line.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %chunk_data_size = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %chunk_data_size, align 8, !tbaa !48
  %call = call zeroext i1 @s_write_chunk_size(ptr noundef %0, i64 noundef %2)
  %conv = zext i1 %call to i32
  %3 = load i8, ptr %wrote_chunk_line, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool = trunc i8 %3 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, ptr %wrote_chunk_line, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %i, align 8, !tbaa !21
  %5 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %num_extensions = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %num_extensions, align 8, !tbaa !55
  %cmp = icmp ult i64 %4, %6
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %chunk_line.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %extensions = getelementptr inbounds %struct.aws_http1_chunk_options, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %extensions, align 8, !tbaa !56
  %10 = load i64, ptr %i, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds %struct.aws_http1_chunk_extension, ptr %9, i64 %10
  %call4 = call zeroext i1 @s_write_chunk_extension(ptr noundef %7, ptr noundef %add.ptr)
  %conv5 = zext i1 %call4 to i32
  %11 = load i8, ptr %wrote_chunk_line, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool6 = trunc i8 %11 to i1
  %conv7 = zext i1 %tobool6 to i32
  %and8 = and i32 %conv7, %conv5
  %tobool9 = icmp ne i32 %and8, 0
  %frombool10 = zext i1 %tobool9 to i8
  store i8 %frombool10, ptr %wrote_chunk_line, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, ptr %i, align 8, !tbaa !21
  %inc = add i64 %12, 1
  store i64 %inc, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %13 = load ptr, ptr %chunk_line.addr, align 8, !tbaa !4
  %call11 = call zeroext i1 @s_write_crlf(ptr noundef %13)
  %conv12 = zext i1 %call11 to i32
  %14 = load i8, ptr %wrote_chunk_line, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool13 = trunc i8 %14 to i1
  %conv14 = zext i1 %tobool13 to i32
  %and15 = and i32 %conv14, %conv12
  %tobool16 = icmp ne i32 %and15, 0
  %frombool17 = zext i1 %tobool16 to i8
  store i8 %frombool17, ptr %wrote_chunk_line, align 1, !tbaa !24
  %15 = load i8, ptr %wrote_chunk_line, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool18 = trunc i8 %15 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %wrote_chunk_line) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_h1_chunk_destroy(ptr noundef %chunk) #0 {
entry:
  %chunk.addr = alloca ptr, align 8
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %chunk.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_h1_chunk, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %data, align 8, !tbaa !47
  %call = call ptr @aws_input_stream_release(ptr noundef %1)
  %2 = load ptr, ptr %chunk.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_h1_chunk, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !42
  %4 = load ptr, ptr %chunk.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_h1_chunk_complete_and_destroy(ptr noundef %chunk, ptr noundef %http_stream, i32 noundef %error_code) #0 {
entry:
  %chunk.addr = alloca ptr, align 8
  %http_stream.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %on_complete = alloca ptr, align 8
  %user_data = alloca ptr, align 8
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !4
  store ptr %http_stream, ptr %http_stream.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %on_complete) #8
  %0 = load ptr, ptr %chunk.addr, align 8, !tbaa !4
  %on_complete1 = getelementptr inbounds %struct.aws_h1_chunk, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %on_complete1, align 8, !tbaa !51
  store ptr %1, ptr %on_complete, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_data) #8
  %2 = load ptr, ptr %chunk.addr, align 8, !tbaa !4
  %user_data2 = getelementptr inbounds %struct.aws_h1_chunk, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %user_data2, align 8, !tbaa !53
  store ptr %3, ptr %user_data, align 8, !tbaa !4
  %4 = load ptr, ptr %chunk.addr, align 8, !tbaa !4
  call void @aws_h1_chunk_destroy(ptr noundef %4)
  %5 = load ptr, ptr %on_complete, align 8, !tbaa !4
  %cmp = icmp ne ptr null, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %on_complete, align 8, !tbaa !4
  %7 = load ptr, ptr %http_stream.addr, align 8, !tbaa !4
  %8 = load i32, ptr %error_code.addr, align 4, !tbaa !14
  %9 = load ptr, ptr %user_data, align 8, !tbaa !4
  call void %6(ptr noundef %7, i32 noundef %8, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_data) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %on_complete) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_h1_encoder_process(ptr noundef %encoder, ptr noundef %out_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %prev_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %out_buf, ptr %out_buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %message, align 8, !tbaa !40
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 2053)
  %cmp2 = icmp uge i32 %call1, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable4, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !20
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %12, ptr noundef @.str.7)
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.end

do.end:                                           ; preds = %if.end
  %call6 = call i32 @aws_raise_error(i32 noundef 38)
  store i32 %call6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_state) #8
  br label %do.body8

do.body8:                                         ; preds = %do.cond, %if.end7
  %13 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.aws_h1_encoder, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %state, align 8, !tbaa !60
  store i32 %14, ptr %prev_state, align 4, !tbaa !30
  %15 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %state9 = getelementptr inbounds %struct.aws_h1_encoder, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %state9, align 8, !tbaa !60
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.encoder_state_def], ptr @s_encoder_states, i64 0, i64 %idxprom
  %fn = getelementptr inbounds %struct.encoder_state_def, ptr %arrayidx, i32 0, i32 0
  %17 = load ptr, ptr %fn, align 16, !tbaa !61
  %18 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %out_buf.addr, align 8, !tbaa !4
  %call10 = call i32 %17(ptr noundef %18, ptr noundef %19)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body8
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %do.body8
  br label %do.cond

do.cond:                                          ; preds = %if.end13
  %20 = load i32, ptr %prev_state, align 4, !tbaa !30
  %21 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %state14 = getelementptr inbounds %struct.aws_h1_encoder, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %state14, align 8, !tbaa !60
  %cmp15 = icmp ne i32 %20, %22
  br i1 %cmp15, label %do.body8, label %do.end16

do.end16:                                         ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_state) #8
  br label %return

return:                                           ; preds = %cleanup, %do.end
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_h1_encoder_is_message_in_progress(ptr noundef %encoder) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %message, align 8, !tbaa !40
  %tobool = icmp ne ptr %1, null
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_h1_encoder_is_waiting_for_chunks(ptr noundef %encoder) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.aws_h1_encoder, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %state, align 8, !tbaa !60
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %message, align 8, !tbaa !40
  %pending_chunk_list = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pending_chunk_list, align 8, !tbaa !13
  %call = call zeroext i1 @aws_linked_list_empty(ptr noundef %4)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %call, %land.rhs ]
  ret i1 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @aws_linked_list_empty(ptr noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !63
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %2, i32 0, i32 1
  %cmp = icmp eq ptr %1, %tail
  ret i1 %cmp
}

declare void @aws_raise_error_private(i32 noundef) #2

declare i64 @aws_http_message_get_header_count(ptr noundef) #2

declare i32 @aws_http_message_get_header(ptr noundef, ptr noundef, i64 noundef) #2

declare { i64, ptr } @aws_strutil_trim_http_whitespace(i64, ptr) #2

declare zeroext i1 @aws_strutil_is_http_field_value(i64, ptr) #2

declare i32 @aws_http_str_to_header_name(i64, ptr) #2

declare zeroext i1 @aws_byte_cursor_eq_c_str(ptr noundef, ptr noundef) #2

declare i32 @aws_byte_cursor_utf8_parse_u64(i64, ptr, ptr noundef) #2

declare zeroext i1 @aws_byte_cursor_next_split(ptr noundef, i8 noundef signext, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !21
  store i64 %b, ptr %b.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !21
  %1 = load i64, ptr %b.addr, align 8, !tbaa !21
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

declare i64 @aws_http_headers_count(ptr noundef) #2

declare i32 @aws_http_headers_get_index(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s_write_chunk_size(ptr noundef %dst, i64 noundef %chunk_size) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %chunk_size.addr = alloca i64, align 8
  %ascii_hex_chunk_size_str = alloca [17 x i8], align 16
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store i64 %chunk_size, ptr %chunk_size.addr, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 17, ptr %ascii_hex_chunk_size_str) #8
  call void @llvm.memset.p0.i64(ptr align 16 %ascii_hex_chunk_size_str, i8 0, i64 17, i1 false)
  %arraydecay = getelementptr inbounds [17 x i8], ptr %ascii_hex_chunk_size_str, i64 0, i64 0
  %0 = load i64, ptr %chunk_size.addr, align 8, !tbaa !21
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 17, ptr noundef @.str.22, i64 noundef %0) #8
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #8
  %arraydecay1 = getelementptr inbounds [17 x i8], ptr %ascii_hex_chunk_size_str, i64 0, i64 0
  %call2 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef %arraydecay1)
  %2 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %3 = extractvalue { i64, ptr } %call2, 0
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %5 = extractvalue { i64, ptr } %call2, 1
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %call3 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %1, i64 %7, ptr %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr %ascii_hex_chunk_size_str) #8
  ret i1 %call3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s_write_chunk_extension(ptr noundef %dst, ptr noundef %chunk_extension) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %chunk_extension.addr = alloca ptr, align 8
  %wrote_all = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store ptr %chunk_extension, ptr %chunk_extension.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %wrote_all) #8
  store i8 1, ptr %wrote_all, align 1, !tbaa !24
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %0, i8 noundef zeroext 59)
  %conv = zext i1 %call to i32
  %1 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool = trunc i8 %1 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, ptr %wrote_all, align 1, !tbaa !24
  %2 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %chunk_extension.addr, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.aws_http1_chunk_extension, ptr %3, i32 0, i32 0
  %4 = getelementptr inbounds { i64, ptr }, ptr %key, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds { i64, ptr }, ptr %key, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %call3 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %2, i64 %5, ptr %7)
  %conv4 = zext i1 %call3 to i32
  %8 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool5 = trunc i8 %8 to i1
  %conv6 = zext i1 %tobool5 to i32
  %and7 = and i32 %conv6, %conv4
  %tobool8 = icmp ne i32 %and7, 0
  %frombool9 = zext i1 %tobool8 to i8
  store i8 %frombool9, ptr %wrote_all, align 1, !tbaa !24
  %9 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call10 = call zeroext i1 @aws_byte_buf_write_u8(ptr noundef %9, i8 noundef zeroext 61)
  %conv11 = zext i1 %call10 to i32
  %10 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool12 = trunc i8 %10 to i1
  %conv13 = zext i1 %tobool12 to i32
  %and14 = and i32 %conv13, %conv11
  %tobool15 = icmp ne i32 %and14, 0
  %frombool16 = zext i1 %tobool15 to i8
  store i8 %frombool16, ptr %wrote_all, align 1, !tbaa !24
  %11 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %chunk_extension.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_http1_chunk_extension, ptr %12, i32 0, i32 1
  %13 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %call17 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %11, i64 %14, ptr %16)
  %conv18 = zext i1 %call17 to i32
  %17 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool19 = trunc i8 %17 to i1
  %conv20 = zext i1 %tobool19 to i32
  %and21 = and i32 %conv20, %conv18
  %tobool22 = icmp ne i32 %and21, 0
  %frombool23 = zext i1 %tobool22 to i8
  store i8 %frombool23, ptr %wrote_all, align 1, !tbaa !24
  %18 = load i8, ptr %wrote_all, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool24 = trunc i8 %18 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %wrote_all) #8
  ret i1 %tobool24
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_init(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %message, align 8, !tbaa !40
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %6(ptr noundef %7, i32 noundef 2053)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable4, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !20
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %13, ptr noundef @.str.32)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.end

do.end:                                           ; preds = %if.end6
  %14 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call7 = call i32 @s_switch_state(ptr noundef %14, i32 noundef 1)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_head(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %done = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %message, align 8, !tbaa !40
  %outgoing_head_buf = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %3, i32 0, i32 0
  %call = call zeroext i1 @s_encode_buf(ptr noundef %0, ptr noundef %1, ptr noundef %outgoing_head_buf)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %done, align 1, !tbaa !24
  %4 = load i8, ptr %done, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %message1, align 8, !tbaa !40
  %outgoing_head_buf2 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %6, i32 0, i32 0
  call void @aws_byte_buf_clean_up(ptr noundef %outgoing_head_buf2)
  %7 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message3 = getelementptr inbounds %struct.aws_h1_encoder, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %message3, align 8, !tbaa !40
  %body = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %body, align 8, !tbaa !8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message5 = getelementptr inbounds %struct.aws_h1_encoder, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %message5, align 8, !tbaa !40
  %content_length = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %content_length, align 8, !tbaa !34
  %tobool6 = icmp ne i64 %12, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call8 = call i32 @s_switch_state(ptr noundef %13, i32 noundef 2)
  store i32 %call8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.end
  %14 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message9 = getelementptr inbounds %struct.aws_h1_encoder, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %message9, align 8, !tbaa !40
  %has_chunked_encoding_header = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %15, i32 0, i32 6
  %16 = load i8, ptr %has_chunked_encoding_header, align 1, !tbaa !32, !range !25, !noundef !26
  %tobool10 = trunc i8 %16 to i1
  br i1 %tobool10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  %17 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call12 = call i32 @s_switch_state(ptr noundef %17, i32 noundef 3)
  store i32 %call12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else13:                                        ; preds = %if.else
  %18 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call14 = call i32 @s_switch_state(ptr noundef %18, i32 noundef 8)
  store i32 %call14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %if.then11, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_unchunked_body(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %done = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %message, align 8, !tbaa !40
  %body = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %body, align 8, !tbaa !8
  %5 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %message1, align 8, !tbaa !40
  %content_length = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %content_length, align 8, !tbaa !34
  %call = call i32 @s_encode_stream(ptr noundef %0, ptr noundef %1, ptr noundef %4, i64 noundef %7, ptr noundef %done)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8, ptr %done, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool2 = trunc i8 %8 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call5 = call i32 @s_switch_state(ptr noundef %9, i32 noundef 8)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_chunk_next(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %node = alloca ptr, align 8
  %logger12 = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %message, align 8, !tbaa !40
  %pending_chunk_list = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pending_chunk_list, align 8, !tbaa !13
  %call = call zeroext i1 @aws_linked_list_empty(ptr noundef %3)
  br i1 %call, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %7(ptr noundef %8, i32 noundef 2053)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable5, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !20
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %13 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %14, ptr noundef @.str.39)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8
  %15 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message8 = getelementptr inbounds %struct.aws_h1_encoder, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %message8, align 8, !tbaa !40
  %pending_chunk_list9 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pending_chunk_list9, align 8, !tbaa !13
  %call10 = call ptr @aws_linked_list_front(ptr noundef %17)
  store ptr %call10, ptr %node, align 8, !tbaa !4
  %18 = load ptr, ptr %node, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 -40
  %19 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk = getelementptr inbounds %struct.aws_h1_encoder, ptr %19, i32 0, i32 4
  store ptr %add.ptr, ptr %current_chunk, align 8, !tbaa !65
  %20 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %chunk_count = getelementptr inbounds %struct.aws_h1_encoder, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %chunk_count, align 8, !tbaa !66
  %inc = add i64 %21, 1
  store i64 %inc, ptr %chunk_count, align 8, !tbaa !66
  br label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger12) #8
  %call13 = call ptr @aws_logger_get()
  store ptr %call13, ptr %logger12, align 8, !tbaa !4
  %22 = load ptr, ptr %logger12, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %22, null
  br i1 %cmp14, label %land.lhs.true15, label %if.end27

land.lhs.true15:                                  ; preds = %do.body11
  %23 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable16 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable16, align 8, !tbaa !16
  %get_log_level17 = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %get_log_level17, align 8, !tbaa !18
  %26 = load ptr, ptr %logger12, align 8, !tbaa !4
  %call18 = call i32 %25(ptr noundef %26, i32 noundef 2053)
  %cmp19 = icmp uge i32 %call18, 6
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %land.lhs.true15
  %27 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable21 = getelementptr inbounds %struct.aws_logger, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %vtable21, align 8, !tbaa !16
  %log22 = getelementptr inbounds %struct.aws_logger_vtable, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %log22, align 8, !tbaa !20
  %30 = load ptr, ptr %logger12, align 8, !tbaa !4
  %31 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream23 = getelementptr inbounds %struct.aws_h1_encoder, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %current_stream23, align 8, !tbaa !41
  %33 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %chunk_count24 = getelementptr inbounds %struct.aws_h1_encoder, ptr %33, i32 0, i32 5
  %34 = load i64, ptr %chunk_count24, align 8, !tbaa !66
  %35 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk25 = getelementptr inbounds %struct.aws_h1_encoder, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %current_chunk25, align 8, !tbaa !65
  %data_size = getelementptr inbounds %struct.aws_h1_chunk, ptr %36, i32 0, i32 2
  %37 = load i64, ptr %data_size, align 8, !tbaa !49
  %call26 = call i32 (ptr, i32, i32, ptr, ...) %29(ptr noundef %30, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.40, ptr noundef %32, i64 noundef %34, i64 noundef %37)
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %land.lhs.true15, %do.body11
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger12) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end27
  br label %do.end28

do.end28:                                         ; preds = %do.cond
  %38 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call29 = call i32 @s_switch_state(ptr noundef %38, i32 noundef 4)
  store i32 %call29, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8
  br label %return

return:                                           ; preds = %do.end28, %do.end
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_chunk_line(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %done = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %current_chunk, align 8, !tbaa !65
  %chunk_line = getelementptr inbounds %struct.aws_h1_chunk, ptr %3, i32 0, i32 6
  %call = call zeroext i1 @s_encode_buf(ptr noundef %0, ptr noundef %1, ptr noundef %chunk_line)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %done, align 1, !tbaa !24
  %4 = load i8, ptr %done, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %current_chunk1, align 8, !tbaa !65
  %data_size = getelementptr inbounds %struct.aws_h1_chunk, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %data_size, align 8, !tbaa !49
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %8, null
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %do.body
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %11(ptr noundef %12, i32 noundef 2053)
  %cmp6 = icmp uge i32 %call5, 6
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %vtable8, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %log, align 8, !tbaa !20
  %16 = load ptr, ptr %logger, align 8, !tbaa !4
  %17 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %15(ptr noundef %16, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %18, ptr noundef @.str.41)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  call void @s_clean_up_current_chunk(ptr noundef %19, i32 noundef 0)
  %20 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call11 = call i32 @s_switch_state(ptr noundef %20, i32 noundef 7)
  store i32 %call11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %21 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call13 = call i32 @s_switch_state(ptr noundef %21, i32 noundef 5)
  store i32 %call13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_chunk_body(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %done = alloca i8, align 1
  %error_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %current_chunk, align 8, !tbaa !65
  %data = getelementptr inbounds %struct.aws_h1_chunk, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %data, align 8, !tbaa !47
  %5 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %current_chunk1, align 8, !tbaa !65
  %data_size = getelementptr inbounds %struct.aws_h1_chunk, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %data_size, align 8, !tbaa !49
  %call = call i32 @s_encode_stream(ptr noundef %0, ptr noundef %1, ptr noundef %4, i64 noundef %7, ptr noundef %done)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #8
  %call2 = call i32 @aws_last_error()
  store i32 %call2, ptr %error_code, align 4, !tbaa !14
  %8 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %9 = load i32, ptr %error_code, align 4, !tbaa !14
  call void @s_clean_up_current_chunk(ptr noundef %8, i32 noundef %9)
  %10 = load i32, ptr %error_code, align 4, !tbaa !14
  %call3 = call i32 @aws_raise_error(i32 noundef %10)
  store i32 %call3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i8, ptr %done, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool4 = trunc i8 %11 to i1
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call7 = call i32 @s_switch_state(ptr noundef %12, i32 noundef 6)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_chunk_end(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %done = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call = call zeroext i1 @s_write_crlf(ptr noundef %0)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %done, align 1, !tbaa !24
  %1 = load i8, ptr %done, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %5(ptr noundef %6, i32 noundef 2053)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable5, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !20
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %12, ptr noundef @.str.42)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end7
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  call void @s_clean_up_current_chunk(ptr noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call8 = call i32 @s_switch_state(ptr noundef %14, i32 noundef 3)
  store i32 %call8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_chunk_trailer(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %done = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %message, align 8, !tbaa !40
  %trailer = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %trailer, align 8, !tbaa !35
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %message1, align 8, !tbaa !40
  %trailer2 = getelementptr inbounds %struct.aws_h1_encoder_message, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %trailer2, align 8, !tbaa !35
  %trailer_data = getelementptr inbounds %struct.aws_h1_trailer, ptr %7, i32 0, i32 1
  %call = call zeroext i1 @s_encode_buf(ptr noundef %3, ptr noundef %4, ptr noundef %trailer_data)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %done, align 1, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call3 = call zeroext i1 @s_write_crlf(ptr noundef %8)
  %frombool4 = zext i1 %call3 to i8
  store i8 %frombool4, ptr %done, align 1, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8, ptr %done, align 1, !tbaa !24, !range !25, !noundef !26
  %tobool5 = trunc i8 %9 to i1
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call8 = call i32 @s_switch_state(ptr noundef %10, i32 noundef 8)
  store i32 %call8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @s_state_fn_done(ptr noundef %encoder, ptr noundef %dst) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef 2053)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable3, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !20
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %11, ptr noundef @.str.43)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.aws_h1_encoder, ptr %12, i32 0, i32 2
  store ptr null, ptr %message, align 8, !tbaa !40
  %13 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call5 = call i32 @s_switch_state(ptr noundef %13, i32 noundef 0)
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define internal i32 @s_switch_state(ptr noundef %encoder, i32 noundef %state) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store i32 %state, ptr %state.addr, align 4, !tbaa !30
  %0 = load i32, ptr %state.addr, align 4, !tbaa !30
  %1 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %state1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %1, i32 0, i32 1
  store i32 %0, ptr %state1, align 8, !tbaa !60
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 3
  store i64 0, ptr %progress_bytes, align 8, !tbaa !67
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s_encode_buf(ptr noundef %encoder, ptr noundef %dst, ptr noundef %src) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %src_cursor = alloca %struct.aws_byte_cursor, align 8
  %coerce = alloca %struct.aws_byte_cursor, align 8
  %written = alloca %struct.aws_byte_cursor, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %src_cursor) #8
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %0)
  %1 = getelementptr inbounds { i64, ptr }, ptr %src_cursor, i32 0, i32 0
  %2 = extractvalue { i64, ptr } %call, 0
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %src_cursor, i32 0, i32 1
  %4 = extractvalue { i64, ptr } %call, 1
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes = getelementptr inbounds %struct.aws_h1_encoder, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %progress_bytes, align 8, !tbaa !67
  %call1 = call { i64, ptr } @aws_byte_cursor_advance(ptr noundef %src_cursor, i64 noundef %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %coerce, i32 0, i32 0
  %8 = extractvalue { i64, ptr } %call1, 0
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %coerce, i32 0, i32 1
  %10 = extractvalue { i64, ptr } %call1, 1
  store ptr %10, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %written) #8
  %11 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call2 = call { i64, ptr } @aws_byte_buf_write_to_capacity(ptr noundef %11, ptr noundef %src_cursor)
  %12 = getelementptr inbounds { i64, ptr }, ptr %written, i32 0, i32 0
  %13 = extractvalue { i64, ptr } %call2, 0
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %written, i32 0, i32 1
  %15 = extractvalue { i64, ptr } %call2, 1
  store ptr %15, ptr %14, align 8
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %written, i32 0, i32 0
  %16 = load i64, ptr %len, align 8, !tbaa !22
  %17 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes3 = getelementptr inbounds %struct.aws_h1_encoder, ptr %17, i32 0, i32 3
  %18 = load i64, ptr %progress_bytes3, align 8, !tbaa !67
  %add = add i64 %18, %16
  store i64 %add, ptr %progress_bytes3, align 8, !tbaa !67
  %len4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %src_cursor, i32 0, i32 0
  %19 = load i64, ptr %len4, align 8, !tbaa !22
  %cmp = icmp eq i64 %19, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %written) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %src_cursor) #8
  ret i1 %cmp
}

declare { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef) #2

declare { i64, ptr } @aws_byte_cursor_advance(ptr noundef, i64 noundef) #2

declare { i64, ptr } @aws_byte_buf_write_to_capacity(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_encode_stream(ptr noundef %encoder, ptr noundef %dst, ptr noundef %stream, i64 noundef %total_length, ptr noundef %out_done) #0 {
entry:
  %retval = alloca i32, align 4
  %encoder.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %total_length.addr = alloca i64, align 8
  %out_done.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %prev_len = alloca i64, align 8
  %err = alloca i32, align 4
  %amount_read = alloca i64, align 8
  %logger13 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %add_err = alloca i32, align 4
  %logger39 = alloca ptr, align 8
  %logger58 = alloca ptr, align 8
  %status = alloca %struct.aws_stream_status, align 1
  %logger85 = alloca ptr, align 8
  %logger108 = alloca ptr, align 8
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i64 %total_length, ptr %total_length.addr, align 8, !tbaa !21
  store ptr %out_done, ptr %out_done.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out_done.addr, align 8, !tbaa !4
  store i8 0, ptr %0, align 1, !tbaa !24
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %capacity, align 8, !tbaa !68
  %3 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %len, align 8, !tbaa !69
  %cmp = icmp eq i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable, align 8, !tbaa !16
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %get_log_level, align 8, !tbaa !18
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %8(ptr noundef %9, i32 noundef 2053)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable5, align 8, !tbaa !16
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %log, align 8, !tbaa !20
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %14 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %12(ptr noundef %13, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.5, ptr noundef %15, ptr noundef @.str.33)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.end

do.end:                                           ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_len) #8
  %16 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %len8 = getelementptr inbounds %struct.aws_byte_buf, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len8, align 8, !tbaa !69
  store i64 %17, ptr %prev_len, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  %18 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %call9 = call i32 @aws_input_stream_read(ptr noundef %18, ptr noundef %19)
  store i32 %call9, ptr %err, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %amount_read) #8
  %20 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %len10 = getelementptr inbounds %struct.aws_byte_buf, ptr %20, i32 0, i32 0
  %21 = load i64, ptr %len10, align 8, !tbaa !69
  %22 = load i64, ptr %prev_len, align 8, !tbaa !21
  %sub = sub i64 %21, %22
  store i64 %sub, ptr %amount_read, align 8, !tbaa !21
  %23 = load i32, ptr %err, align 4, !tbaa !14
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then11, label %if.end31

if.then11:                                        ; preds = %do.end
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger13) #8
  %call14 = call ptr @aws_logger_get()
  store ptr %call14, ptr %logger13, align 8, !tbaa !4
  %24 = load ptr, ptr %logger13, align 8, !tbaa !4
  %cmp15 = icmp ne ptr %24, null
  br i1 %cmp15, label %land.lhs.true16, label %if.end29

land.lhs.true16:                                  ; preds = %do.body12
  %25 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %vtable17, align 8, !tbaa !16
  %get_log_level18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %get_log_level18, align 8, !tbaa !18
  %28 = load ptr, ptr %logger13, align 8, !tbaa !4
  %call19 = call i32 %27(ptr noundef %28, i32 noundef 2053)
  %cmp20 = icmp uge i32 %call19, 2
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %land.lhs.true16
  %29 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %vtable22, align 8, !tbaa !16
  %log23 = getelementptr inbounds %struct.aws_logger_vtable, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %log23, align 8, !tbaa !20
  %32 = load ptr, ptr %logger13, align 8, !tbaa !4
  %33 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream24 = getelementptr inbounds %struct.aws_h1_encoder, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %current_stream24, align 8, !tbaa !41
  %call25 = call i32 @aws_last_error()
  %call26 = call i32 @aws_last_error()
  %call27 = call ptr @aws_error_name(i32 noundef %call26)
  %call28 = call i32 (ptr, i32, i32, ptr, ...) %31(ptr noundef %32, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.34, ptr noundef %34, i32 noundef %call25, ptr noundef %call27)
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %land.lhs.true16, %do.body12
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger13) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end29
  br label %do.end30

do.end30:                                         ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129

if.end31:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %add_err) #8
  %35 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes = getelementptr inbounds %struct.aws_h1_encoder, ptr %35, i32 0, i32 3
  %36 = load i64, ptr %progress_bytes, align 8, !tbaa !67
  %37 = load i64, ptr %amount_read, align 8, !tbaa !21
  %38 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes32 = getelementptr inbounds %struct.aws_h1_encoder, ptr %38, i32 0, i32 3
  %call33 = call i32 @aws_add_u64_checked(i64 noundef %36, i64 noundef %37, ptr noundef %progress_bytes32)
  store i32 %call33, ptr %add_err, align 4, !tbaa !14
  %39 = load i32, ptr %add_err, align 4, !tbaa !14
  %tobool34 = icmp ne i32 %39, 0
  br i1 %tobool34, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %40 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes35 = getelementptr inbounds %struct.aws_h1_encoder, ptr %40, i32 0, i32 3
  %41 = load i64, ptr %progress_bytes35, align 8, !tbaa !67
  %42 = load i64, ptr %total_length.addr, align 8, !tbaa !21
  %cmp36 = icmp ugt i64 %41, %42
  br i1 %cmp36, label %if.then37, label %if.end56

if.then37:                                        ; preds = %lor.lhs.false, %if.end31
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger39) #8
  %call40 = call ptr @aws_logger_get()
  store ptr %call40, ptr %logger39, align 8, !tbaa !4
  %43 = load ptr, ptr %logger39, align 8, !tbaa !4
  %cmp41 = icmp ne ptr %43, null
  br i1 %cmp41, label %land.lhs.true42, label %if.end52

land.lhs.true42:                                  ; preds = %do.body38
  %44 = load ptr, ptr %logger39, align 8, !tbaa !4
  %vtable43 = getelementptr inbounds %struct.aws_logger, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %vtable43, align 8, !tbaa !16
  %get_log_level44 = getelementptr inbounds %struct.aws_logger_vtable, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %get_log_level44, align 8, !tbaa !18
  %47 = load ptr, ptr %logger39, align 8, !tbaa !4
  %call45 = call i32 %46(ptr noundef %47, i32 noundef 2053)
  %cmp46 = icmp uge i32 %call45, 2
  br i1 %cmp46, label %if.then47, label %if.end52

if.then47:                                        ; preds = %land.lhs.true42
  %48 = load ptr, ptr %logger39, align 8, !tbaa !4
  %vtable48 = getelementptr inbounds %struct.aws_logger, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %vtable48, align 8, !tbaa !16
  %log49 = getelementptr inbounds %struct.aws_logger_vtable, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %log49, align 8, !tbaa !20
  %51 = load ptr, ptr %logger39, align 8, !tbaa !4
  %52 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream50 = getelementptr inbounds %struct.aws_h1_encoder, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %current_stream50, align 8, !tbaa !41
  %54 = load i64, ptr %total_length.addr, align 8, !tbaa !21
  %call51 = call i32 (ptr, i32, i32, ptr, ...) %50(ptr noundef %51, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.35, ptr noundef %53, i64 noundef %54)
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %land.lhs.true42, %do.body38
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger39) #8
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  %call55 = call i32 @aws_raise_error(i32 noundef 2063)
  store i32 %call55, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup128

if.end56:                                         ; preds = %lor.lhs.false
  br label %do.body57

do.body57:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger58) #8
  %call59 = call ptr @aws_logger_get()
  store ptr %call59, ptr %logger58, align 8, !tbaa !4
  %55 = load ptr, ptr %logger58, align 8, !tbaa !4
  %cmp60 = icmp ne ptr %55, null
  br i1 %cmp60, label %land.lhs.true61, label %if.end72

land.lhs.true61:                                  ; preds = %do.body57
  %56 = load ptr, ptr %logger58, align 8, !tbaa !4
  %vtable62 = getelementptr inbounds %struct.aws_logger, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %vtable62, align 8, !tbaa !16
  %get_log_level63 = getelementptr inbounds %struct.aws_logger_vtable, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %get_log_level63, align 8, !tbaa !18
  %59 = load ptr, ptr %logger58, align 8, !tbaa !4
  %call64 = call i32 %58(ptr noundef %59, i32 noundef 2053)
  %cmp65 = icmp uge i32 %call64, 6
  br i1 %cmp65, label %if.then66, label %if.end72

if.then66:                                        ; preds = %land.lhs.true61
  %60 = load ptr, ptr %logger58, align 8, !tbaa !4
  %vtable67 = getelementptr inbounds %struct.aws_logger, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %vtable67, align 8, !tbaa !16
  %log68 = getelementptr inbounds %struct.aws_logger_vtable, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %log68, align 8, !tbaa !20
  %63 = load ptr, ptr %logger58, align 8, !tbaa !4
  %64 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream69 = getelementptr inbounds %struct.aws_h1_encoder, ptr %64, i32 0, i32 6
  %65 = load ptr, ptr %current_stream69, align 8, !tbaa !41
  %66 = load i64, ptr %amount_read, align 8, !tbaa !21
  %67 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes70 = getelementptr inbounds %struct.aws_h1_encoder, ptr %67, i32 0, i32 3
  %68 = load i64, ptr %progress_bytes70, align 8, !tbaa !67
  %69 = load i64, ptr %total_length.addr, align 8, !tbaa !21
  %call71 = call i32 (ptr, i32, i32, ptr, ...) %62(ptr noundef %63, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.36, ptr noundef %65, i64 noundef %66, i64 noundef %68, i64 noundef %69)
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %land.lhs.true61, %do.body57
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger58) #8
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  %70 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes75 = getelementptr inbounds %struct.aws_h1_encoder, ptr %70, i32 0, i32 3
  %71 = load i64, ptr %progress_bytes75, align 8, !tbaa !67
  %72 = load i64, ptr %total_length.addr, align 8, !tbaa !21
  %cmp76 = icmp eq i64 %71, %72
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %do.end74
  %73 = load ptr, ptr %out_done.addr, align 8, !tbaa !4
  store i8 1, ptr %73, align 1, !tbaa !24
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup128

if.end78:                                         ; preds = %do.end74
  %74 = load i64, ptr %amount_read, align 8, !tbaa !21
  %cmp79 = icmp eq i64 %74, 0
  br i1 %cmp79, label %if.then80, label %if.end127

if.then80:                                        ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 2, ptr %status) #8
  %75 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %call81 = call i32 @aws_input_stream_get_status(ptr noundef %75, ptr noundef %status)
  store i32 %call81, ptr %err, align 4, !tbaa !14
  %76 = load i32, ptr %err, align 4, !tbaa !14
  %tobool82 = icmp ne i32 %76, 0
  br i1 %tobool82, label %if.then83, label %if.end104

if.then83:                                        ; preds = %if.then80
  br label %do.body84

do.body84:                                        ; preds = %if.then83
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger85) #8
  %call86 = call ptr @aws_logger_get()
  store ptr %call86, ptr %logger85, align 8, !tbaa !4
  %77 = load ptr, ptr %logger85, align 8, !tbaa !4
  %cmp87 = icmp ne ptr %77, null
  br i1 %cmp87, label %land.lhs.true88, label %if.end101

land.lhs.true88:                                  ; preds = %do.body84
  %78 = load ptr, ptr %logger85, align 8, !tbaa !4
  %vtable89 = getelementptr inbounds %struct.aws_logger, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %vtable89, align 8, !tbaa !16
  %get_log_level90 = getelementptr inbounds %struct.aws_logger_vtable, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %get_log_level90, align 8, !tbaa !18
  %81 = load ptr, ptr %logger85, align 8, !tbaa !4
  %call91 = call i32 %80(ptr noundef %81, i32 noundef 2053)
  %cmp92 = icmp uge i32 %call91, 6
  br i1 %cmp92, label %if.then93, label %if.end101

if.then93:                                        ; preds = %land.lhs.true88
  %82 = load ptr, ptr %logger85, align 8, !tbaa !4
  %vtable94 = getelementptr inbounds %struct.aws_logger, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %vtable94, align 8, !tbaa !16
  %log95 = getelementptr inbounds %struct.aws_logger_vtable, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %log95, align 8, !tbaa !20
  %85 = load ptr, ptr %logger85, align 8, !tbaa !4
  %86 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream96 = getelementptr inbounds %struct.aws_h1_encoder, ptr %86, i32 0, i32 6
  %87 = load ptr, ptr %current_stream96, align 8, !tbaa !41
  %call97 = call i32 @aws_last_error()
  %call98 = call i32 @aws_last_error()
  %call99 = call ptr @aws_error_name(i32 noundef %call98)
  %call100 = call i32 (ptr, i32, i32, ptr, ...) %84(ptr noundef %85, i32 noundef 6, i32 noundef 2053, ptr noundef @.str.37, ptr noundef %87, i32 noundef %call97, ptr noundef %call99)
  br label %if.end101

if.end101:                                        ; preds = %if.then93, %land.lhs.true88, %do.body84
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger85) #8
  br label %do.cond102

do.cond102:                                       ; preds = %if.end101
  br label %do.end103

do.end103:                                        ; preds = %do.cond102
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %if.then80
  %is_end_of_stream = getelementptr inbounds %struct.aws_stream_status, ptr %status, i32 0, i32 0
  %88 = load i8, ptr %is_end_of_stream, align 1, !tbaa !70, !range !25, !noundef !26
  %tobool105 = trunc i8 %88 to i1
  br i1 %tobool105, label %if.then106, label %if.end126

if.then106:                                       ; preds = %if.end104
  br label %do.body107

do.body107:                                       ; preds = %if.then106
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger108) #8
  %call109 = call ptr @aws_logger_get()
  store ptr %call109, ptr %logger108, align 8, !tbaa !4
  %89 = load ptr, ptr %logger108, align 8, !tbaa !4
  %cmp110 = icmp ne ptr %89, null
  br i1 %cmp110, label %land.lhs.true111, label %if.end122

land.lhs.true111:                                 ; preds = %do.body107
  %90 = load ptr, ptr %logger108, align 8, !tbaa !4
  %vtable112 = getelementptr inbounds %struct.aws_logger, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %vtable112, align 8, !tbaa !16
  %get_log_level113 = getelementptr inbounds %struct.aws_logger_vtable, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %get_log_level113, align 8, !tbaa !18
  %93 = load ptr, ptr %logger108, align 8, !tbaa !4
  %call114 = call i32 %92(ptr noundef %93, i32 noundef 2053)
  %cmp115 = icmp uge i32 %call114, 2
  br i1 %cmp115, label %if.then116, label %if.end122

if.then116:                                       ; preds = %land.lhs.true111
  %94 = load ptr, ptr %logger108, align 8, !tbaa !4
  %vtable117 = getelementptr inbounds %struct.aws_logger, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %vtable117, align 8, !tbaa !16
  %log118 = getelementptr inbounds %struct.aws_logger_vtable, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %log118, align 8, !tbaa !20
  %97 = load ptr, ptr %logger108, align 8, !tbaa !4
  %98 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream119 = getelementptr inbounds %struct.aws_h1_encoder, ptr %98, i32 0, i32 6
  %99 = load ptr, ptr %current_stream119, align 8, !tbaa !41
  %100 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %progress_bytes120 = getelementptr inbounds %struct.aws_h1_encoder, ptr %100, i32 0, i32 3
  %101 = load i64, ptr %progress_bytes120, align 8, !tbaa !67
  %102 = load i64, ptr %total_length.addr, align 8, !tbaa !21
  %call121 = call i32 (ptr, i32, i32, ptr, ...) %96(ptr noundef %97, i32 noundef 2, i32 noundef 2053, ptr noundef @.str.38, ptr noundef %99, i64 noundef %101, i64 noundef %102)
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %land.lhs.true111, %do.body107
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger108) #8
  br label %do.cond123

do.cond123:                                       ; preds = %if.end122
  br label %do.end124

do.end124:                                        ; preds = %do.cond123
  %call125 = call i32 @aws_raise_error(i32 noundef 2063)
  store i32 %call125, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end126:                                        ; preds = %if.end104
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %do.end124, %do.end103
  call void @llvm.lifetime.end.p0(i64 2, ptr %status) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup128 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end127

if.end127:                                        ; preds = %cleanup.cont, %if.end78
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup128

cleanup128:                                       ; preds = %if.end127, %cleanup, %if.then77, %do.end54
  call void @llvm.lifetime.end.p0(i64 4, ptr %add_err) #8
  br label %cleanup129

cleanup129:                                       ; preds = %cleanup128, %do.end30
  call void @llvm.lifetime.end.p0(i64 8, ptr %amount_read) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_len) #8
  br label %return

return:                                           ; preds = %cleanup129, %if.then
  %103 = load i32, ptr %retval, align 4
  ret i32 %103
}

declare i32 @aws_input_stream_read(ptr noundef, ptr noundef) #2

declare i32 @aws_last_error() #2

declare ptr @aws_error_name(i32 noundef) #2

declare i32 @aws_input_stream_get_status(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @aws_linked_list_front(ptr noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !63
  store ptr %1, ptr %rval, align 8, !tbaa !4
  %2 = load ptr, ptr %rval, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #8
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal void @s_clean_up_current_chunk(ptr noundef %encoder, i32 noundef %error_code) #0 {
entry:
  %encoder.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !14
  %0 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk = getelementptr inbounds %struct.aws_h1_encoder, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %current_chunk, align 8, !tbaa !65
  %node = getelementptr inbounds %struct.aws_h1_chunk, ptr %1, i32 0, i32 5
  call void @aws_linked_list_remove(ptr noundef %node)
  %2 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk1 = getelementptr inbounds %struct.aws_h1_encoder, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %current_chunk1, align 8, !tbaa !65
  %4 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_stream = getelementptr inbounds %struct.aws_h1_encoder, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %current_stream, align 8, !tbaa !41
  %6 = load i32, ptr %error_code.addr, align 4, !tbaa !14
  call void @aws_h1_chunk_complete_and_destroy(ptr noundef %3, ptr noundef %5, i32 noundef %6)
  %7 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %current_chunk2 = getelementptr inbounds %struct.aws_h1_encoder, ptr %7, i32 0, i32 4
  store ptr null, ptr %current_chunk2, align 8, !tbaa !65
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_remove(ptr noundef %node) #4 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !72
  %2 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8, !tbaa !73
  %next1 = getelementptr inbounds %struct.aws_linked_list_node, ptr %3, i32 0, i32 0
  store ptr %1, ptr %next1, align 8, !tbaa !72
  %4 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev2, align 8, !tbaa !73
  %6 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %next3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next3, align 8, !tbaa !72
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %7, i32 0, i32 1
  store ptr %5, ptr %prev4, align 8, !tbaa !73
  %8 = load ptr, ptr %node.addr, align 8, !tbaa !4
  call void @aws_linked_list_node_reset(ptr noundef %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_node_reset(ptr noundef %node) #4 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!9, !5, i64 32}
!9 = !{!"aws_h1_encoder_message", !10, i64 0, !5, i64 32, !5, i64 40, !5, i64 48, !11, i64 56, !12, i64 64, !12, i64 65}
!10 = !{!"aws_byte_buf", !11, i64 0, !5, i64 8, !11, i64 16, !5, i64 24}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_Bool", !6, i64 0}
!13 = !{!9, !5, i64 40}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!18 = !{!19, !5, i64 8}
!19 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!19, !5, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!23, !11, i64 0}
!23 = !{!"aws_byte_cursor", !11, i64 0, !5, i64 8}
!24 = !{!12, !12, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!28, !11, i64 0}
!28 = !{!"aws_http_header", !23, i64 0, !23, i64 16, !6, i64 32}
!29 = !{!28, !5, i64 8}
!30 = !{!6, !6, i64 0}
!31 = !{!9, !12, i64 64}
!32 = !{!9, !12, i64 65}
!33 = !{!28, !11, i64 16}
!34 = !{!9, !11, i64 56}
!35 = !{!9, !5, i64 48}
!36 = !{!37, !5, i64 0}
!37 = !{!"aws_h1_trailer", !5, i64 0, !10, i64 8}
!38 = !{!39, !5, i64 0}
!39 = !{!"aws_h1_encoder", !5, i64 0, !6, i64 8, !5, i64 16, !11, i64 24, !5, i64 32, !11, i64 40, !5, i64 48}
!40 = !{!39, !5, i64 16}
!41 = !{!39, !5, i64 48}
!42 = !{!43, !5, i64 0}
!43 = !{!"aws_h1_chunk", !5, i64 0, !5, i64 8, !11, i64 16, !5, i64 24, !5, i64 32, !44, i64 40, !10, i64 56}
!44 = !{!"aws_linked_list_node", !5, i64 0, !5, i64 8}
!45 = !{!46, !5, i64 0}
!46 = !{!"aws_http1_chunk_options", !5, i64 0, !11, i64 8, !5, i64 16, !11, i64 24, !5, i64 32, !5, i64 40}
!47 = !{!43, !5, i64 8}
!48 = !{!46, !11, i64 8}
!49 = !{!43, !11, i64 16}
!50 = !{!46, !5, i64 32}
!51 = !{!43, !5, i64 24}
!52 = !{!46, !5, i64 40}
!53 = !{!43, !5, i64 32}
!54 = !{i64 0, i64 8, !21, i64 8, i64 8, !4, i64 16, i64 8, !21, i64 24, i64 8, !4}
!55 = !{!46, !11, i64 24}
!56 = !{!46, !5, i64 16}
!57 = !{!58, !11, i64 0}
!58 = !{!"aws_http1_chunk_extension", !23, i64 0, !23, i64 16}
!59 = !{!58, !11, i64 16}
!60 = !{!39, !6, i64 8}
!61 = !{!62, !5, i64 0}
!62 = !{!"encoder_state_def", !5, i64 0, !5, i64 8}
!63 = !{!64, !5, i64 0}
!64 = !{!"aws_linked_list", !44, i64 0, !44, i64 16}
!65 = !{!39, !5, i64 32}
!66 = !{!39, !11, i64 40}
!67 = !{!39, !11, i64 24}
!68 = !{!10, !11, i64 16}
!69 = !{!10, !11, i64 0}
!70 = !{!71, !12, i64 0}
!71 = !{!"aws_stream_status", !12, i64 0, !12, i64 1}
!72 = !{!44, !5, i64 0}
!73 = !{!44, !5, i64 8}

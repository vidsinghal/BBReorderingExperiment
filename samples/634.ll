; ModuleID = 'samples/634.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-event-stream/source/event_stream_rpc_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_socket_channel_bootstrap_options = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_event_stream_rpc_client_connection = type { ptr, %struct.aws_hash_table, ptr, %struct.aws_atomic_var, ptr, ptr, i32, %struct.aws_mutex, %struct.aws_atomic_var, %struct.aws_atomic_var, i64, ptr, ptr, ptr, ptr, i8, i8 }
%struct.aws_hash_table = type { ptr }
%struct.aws_mutex = type { %union.pthread_mutex_t, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.aws_atomic_var = type { ptr }
%struct.aws_event_stream_rpc_client_connection_options = type { ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_event_stream_rpc_message_args = type { ptr, i64, ptr, i32, i32 }
%struct.event_stream_connection_send_message_args = type { ptr, %struct.aws_event_stream_message, i32, ptr, ptr, ptr, ptr, i8, i8 }
%struct.aws_event_stream_message = type { ptr, %struct.aws_byte_buf }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.aws_event_stream_header_value_pair = type { i8, [127 x i8], i32, %union.anon, i16, i8 }
%union.anon = type { ptr, [8 x i8] }
%struct.aws_event_stream_rpc_client_continuation_token = type { i32, ptr, ptr, ptr, ptr, %struct.aws_atomic_var, %struct.aws_atomic_var, %struct.aws_atomic_var }
%struct.aws_event_stream_rpc_client_stream_continuation_options = type { ptr, ptr, ptr }
%struct.aws_event_stream_channel_handler_options = type { ptr, ptr, i64, i8 }
%struct.aws_hash_element = type { ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"id=%p: creating new connection\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"id=%p: failed initializing continuation table with error %s.\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"id=%p: failed creating new socket channel with error %s.\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"id=%p: connection acquired, new ref count is %zu.\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"id=%p: connection released, new ref count is %zu.\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Connection ref count has gone negative\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"ref_count != 0 && \22Connection ref count has gone negative\22\00", align 1
@.str.7 = private unnamed_addr constant [219 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-event-stream/source/event_stream_rpc_client.c\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"id=%p: connection close invoked with reason %s.\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"id=%p: connection already closed.\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"id=%p: creating a new stream on connection\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"id=%p: error while allocating continuation %s\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"id=%p: continuation created %p\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"id=%p: continuation acquired, new ref count is %zu.\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"id=%p: continuation released, new ref count is %zu.\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Continuation ref count has gone negative\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"ref_count != 0 && \22Continuation ref count has gone negative\22\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"id=%p: activating continuation\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"id=%p: stream has already been activated\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"id=%p: stream's connection is not open\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"id=%p: continuation's new stream id is %u\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"id=%p: storing the new stream failed with %s\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"id=%p: failed to flush the new stream to the channel with error %s\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"id=%p: on_channel_setup_fn invoked with error_code %d with channel %p\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"id=%p: successful event-stream channel setup %p\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"id=%p: creating an event-stream handler on channel %p\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"id=%p: creating an event-stream handler failed with error %s\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"id=%p: creating channel slot failed with error %s\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"id=%p: setting handler on channel slot failed with error %s\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"id=%p: message received on connection of length %u\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"id=%p: error initializing headers %s\00", align 1
@s_internal_error = internal constant %struct.aws_byte_cursor { i64 100, ptr @.str.42 }, align 8
@.str.31 = private unnamed_addr constant [33 x i8] c"id=%p: error fetching headers %s\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"id=%p: invalid protocol message with error %s\00", align 1
@s_invalid_message_error = internal constant %struct.aws_byte_cursor { i64 159, ptr @.str.43 }, align 8
@.str.33 = private unnamed_addr constant [23 x i8] c"id=%p: routing message\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"list != ((void*)0)\00", align 1
@.str.35 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"alloc != ((void*)0)\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"item_size > 0\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"list->current_size == 0 || list->data\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"id=%p: sending connection-level error\0A%.*s\00", align 1
@s_json_content_type_name = internal constant %struct.aws_byte_cursor { i64 13, ptr @.str.40 }, align 8
@s_json_content_type_value = internal constant %struct.aws_byte_cursor { i64 16, ptr @.str.41 }, align 8
@.str.40 = private unnamed_addr constant [14 x i8] c":content-type\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"application/json\00", align 1
@.str.42 = private unnamed_addr constant [101 x i8] c"{ \22message\22: \22An error occurred on the peer endpoint. This is not likely caused by your endpoint.\22 }\00", align 1
@.str.43 = private unnamed_addr constant [160 x i8] c"{ \22message\22: \22A message was received with missing required fields. Check that your client is sending at least, :message-type, :message-flags, and :stream-id\22 }\00", align 1
@.str.44 = private unnamed_addr constant [91 x i8] c"id=%p: a message was received on this connection prior to the connect handshake completing\00", align 1
@s_connect_not_completed_error = internal constant %struct.aws_byte_cursor { i64 227, ptr @.str.55 }, align 8
@.str.45 = private unnamed_addr constant [20 x i8] c"id=%p: stream id %u\00", align 1
@.str.46 = private unnamed_addr constant [100 x i8] c"id=%p: only application messages can be sent on a stream id, but this message is the incorrect type\00", align 1
@s_invalid_stream_id_error = internal constant %struct.aws_byte_cursor { i64 137, ptr @.str.56 }, align 8
@.str.47 = private unnamed_addr constant [68 x i8] c"id=%p: a stream id was received that was not created by this client\00", align 1
@s_invalid_client_stream_id_error = internal constant %struct.aws_byte_cursor { i64 134, ptr @.str.57 }, align 8
@.str.48 = private unnamed_addr constant [77 x i8] c"id=%p: a stream id was received that corresponds to an already-closed stream\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"continuation != NULL\00", align 1
@.str.50 = private unnamed_addr constant [67 x i8] c"id=%p: the terminate stream flag was specified for continuation %p\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"id=%p: a zero stream id was received with an invalid message-type %u\00", align 1
@s_invalid_message_type_error = internal constant %struct.aws_byte_cursor { i64 70, ptr @.str.59 }, align 8
@.str.52 = private unnamed_addr constant [89 x i8] c"id=%p: connect ack received but the handshake is already completed. Only one is allowed.\00", align 1
@.str.53 = private unnamed_addr constant [60 x i8] c"id=%p: connect ack received, connection handshake completed\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.55 = private unnamed_addr constant [228 x i8] c"{ \22message\22: \22A CONNECT message must be received, and the CONNECT_ACK must be sent in response, before any other message-types can be sent on this connection. In addition, only one CONNECT message is allowed on a connection.\22 }\00", align 1
@.str.56 = private unnamed_addr constant [138 x i8] c"{ \22message\22: \22non-zero stream-id field is only allowed for messages of type APPLICATION_MESSAGE. The stream id max value is INT32_MAX.\22 }\00", align 1
@.str.57 = private unnamed_addr constant [135 x i8] c"{ \22message\22: \22stream-id values must be monotonically incrementing. A stream-id arrived that was lower than the last seen stream-id.\22 }\00", align 1
@.str.58 = private unnamed_addr constant [52 x i8] c"token=%p: completing continuation with stream-id %u\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"{ \22message\22: \22an invalid value for message-type field was received.\22 }\00", align 1
@.str.60 = private unnamed_addr constant [73 x i8] c"id=%p: on_channel_shutdown_fn invoked with error_code %d with channel %p\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"id=%p: destroying connection.\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"id=%p: sending message. continuation: %p, stream id %d\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"id=%p: handshake completion value %zu\00", align 1
@.str.64 = private unnamed_addr constant [68 x i8] c"id=%p: handshake not completed, only a connect message can be sent.\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"id=%p: failed to allocate callback arguments %s.\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"id=%p: sending message on continuation %p\00", align 1
@.str.67 = private unnamed_addr constant [55 x i8] c"id=%p:end stream flag was specified on continuation %p\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"id=%p: terminating connection\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"id=%p: sending connect message, waiting on connect ack\00", align 1
@.str.70 = private unnamed_addr constant [64 x i8] c"id=%p: an error occurred while initializing the headers list %s\00", align 1
@.str.71 = private unnamed_addr constant [68 x i8] c"!aws_array_list_push_back(&headers_list, &message_args->headers[i])\00", align 1
@aws_event_stream_rpc_message_type_name = external constant %struct.aws_byte_cursor, align 8
@.str.72 = private unnamed_addr constant [190 x i8] c"!aws_event_stream_add_int32_header( &headers_list, (const char *)aws_event_stream_rpc_message_type_name.ptr, (uint8_t)aws_event_stream_rpc_message_type_name.len, message_args->message_type)\00", align 1
@aws_event_stream_rpc_message_flags_name = external constant %struct.aws_byte_cursor, align 8
@.str.73 = private unnamed_addr constant [193 x i8] c"!aws_event_stream_add_int32_header( &headers_list, (const char *)aws_event_stream_rpc_message_flags_name.ptr, (uint8_t)aws_event_stream_rpc_message_flags_name.len, message_args->message_flags)\00", align 1
@aws_event_stream_rpc_stream_id_name = external constant %struct.aws_byte_cursor, align 8
@.str.74 = private unnamed_addr constant [167 x i8] c"!aws_event_stream_add_int32_header( &headers_list, (const char *)aws_event_stream_rpc_stream_id_name.ptr, (uint8_t)aws_event_stream_rpc_stream_id_name.len, stream_id)\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"id=%p: operation name specified %.*s\00", align 1
@aws_event_stream_rpc_operation_name = external constant %struct.aws_byte_cursor, align 8
@.str.76 = private unnamed_addr constant [226 x i8] c"!aws_event_stream_add_string_header( &headers_list, (const char *)aws_event_stream_rpc_operation_name.ptr, (uint8_t)aws_event_stream_rpc_operation_name.len, (const char *)operation_name->ptr, (uint16_t)operation_name->len, 0)\00", align 1
@.str.77 = private unnamed_addr constant [41 x i8] c"id=%p: message init failed with error %s\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"id=%p: writing message failed with error %s\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"id=%p: message %p flushed to channel.\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"id=%p: connect message flushed to the wire.\00", align 1
@.str.82 = private unnamed_addr constant [61 x i8] c"id=%p: the end stream flag was set, closing continuation %p.\00", align 1
@.str.83 = private unnamed_addr constant [56 x i8] c"end stream flag was set but it wasn't on a continuation\00", align 1
@.str.84 = private unnamed_addr constant [88 x i8] c"message_args->continuation && \22end stream flag was set but it wasn't on a continuation\22\00", align 1
@.str.85 = private unnamed_addr constant [78 x i8] c"id=%p: terminate_connection flag was specified. Shutting down the connection.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @aws_event_stream_rpc_client_connection_connect(ptr noundef %allocator, ptr noundef %conn_options) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %conn_options.addr = alloca ptr, align 8
  %connection = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger20 = alloca ptr, align 8
  %bootstrap_options = alloca %struct.aws_socket_channel_bootstrap_options, align 8
  %logger49 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %conn_options, ptr %conn_options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection) #10
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 168)
  store ptr %call, ptr %connection, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %4(ptr noundef %5, i32 noundef 4099)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable4, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !12
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %connection, align 8, !tbaa !4
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 6, i32 noundef 4099, ptr noundef @.str, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %connection, align 8, !tbaa !4
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %12 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %connection, align 8, !tbaa !4
  %allocator8 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %13, i32 0, i32 0
  store ptr %12, ptr %allocator8, align 8, !tbaa !13
  %14 = load ptr, ptr %connection, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %14, i32 0, i32 3
  call void @aws_atomic_init_int(ptr noundef %ref_count, i64 noundef 1)
  %15 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %bootstrap = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %bootstrap, align 8, !tbaa !21
  %17 = load ptr, ptr %connection, align 8, !tbaa !4
  %bootstrap_ref = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %17, i32 0, i32 2
  store ptr %16, ptr %bootstrap_ref, align 8, !tbaa !24
  %18 = load ptr, ptr %connection, align 8, !tbaa !4
  %bootstrap_ref9 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %bootstrap_ref9, align 8, !tbaa !24
  %call10 = call ptr @aws_client_bootstrap_acquire(ptr noundef %19)
  %20 = load ptr, ptr %connection, align 8, !tbaa !4
  %handshake_state = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %20, i32 0, i32 9
  call void @aws_atomic_init_int(ptr noundef %handshake_state, i64 noundef 0)
  %21 = load ptr, ptr %connection, align 8, !tbaa !4
  %is_open = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %21, i32 0, i32 8
  call void @aws_atomic_init_int(ptr noundef %is_open, i64 noundef 1)
  %22 = load ptr, ptr %connection, align 8, !tbaa !4
  %stream_lock = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %22, i32 0, i32 7
  %call11 = call i32 @aws_mutex_init(ptr noundef %stream_lock)
  %23 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %on_connection_shutdown = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %on_connection_shutdown, align 8, !tbaa !25
  %25 = load ptr, ptr %connection, align 8, !tbaa !4
  %on_connection_shutdown12 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %25, i32 0, i32 13
  store ptr %24, ptr %on_connection_shutdown12, align 8, !tbaa !26
  %26 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %on_connection_protocol_message = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %on_connection_protocol_message, align 8, !tbaa !27
  %28 = load ptr, ptr %connection, align 8, !tbaa !4
  %on_connection_protocol_message13 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %28, i32 0, i32 12
  store ptr %27, ptr %on_connection_protocol_message13, align 8, !tbaa !28
  %29 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %on_connection_setup = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %on_connection_setup, align 8, !tbaa !29
  %31 = load ptr, ptr %connection, align 8, !tbaa !4
  %on_connection_setup14 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %31, i32 0, i32 11
  store ptr %30, ptr %on_connection_setup14, align 8, !tbaa !30
  %32 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %32, i32 0, i32 8
  %33 = load ptr, ptr %user_data, align 8, !tbaa !31
  %34 = load ptr, ptr %connection, align 8, !tbaa !4
  %user_data15 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %34, i32 0, i32 14
  store ptr %33, ptr %user_data15, align 8, !tbaa !32
  %35 = load ptr, ptr %connection, align 8, !tbaa !4
  %continuation_table = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call16 = call i32 @aws_hash_table_init(ptr noundef %continuation_table, ptr noundef %36, i64 noundef 64, ptr noundef @aws_event_stream_rpc_hash_streamid, ptr noundef @aws_event_stream_rpc_streamid_eq, ptr noundef null, ptr noundef null)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end37

if.then18:                                        ; preds = %if.end7
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger20) #10
  %call21 = call ptr @aws_logger_get()
  store ptr %call21, ptr %logger20, align 8, !tbaa !4
  %37 = load ptr, ptr %logger20, align 8, !tbaa !4
  %cmp22 = icmp ne ptr %37, null
  br i1 %cmp22, label %land.lhs.true23, label %if.end34

land.lhs.true23:                                  ; preds = %do.body19
  %38 = load ptr, ptr %logger20, align 8, !tbaa !4
  %vtable24 = getelementptr inbounds %struct.aws_logger, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %vtable24, align 8, !tbaa !8
  %get_log_level25 = getelementptr inbounds %struct.aws_logger_vtable, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %get_log_level25, align 8, !tbaa !10
  %41 = load ptr, ptr %logger20, align 8, !tbaa !4
  %call26 = call i32 %40(ptr noundef %41, i32 noundef 4099)
  %cmp27 = icmp uge i32 %call26, 2
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %land.lhs.true23
  %42 = load ptr, ptr %logger20, align 8, !tbaa !4
  %vtable29 = getelementptr inbounds %struct.aws_logger, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %vtable29, align 8, !tbaa !8
  %log30 = getelementptr inbounds %struct.aws_logger_vtable, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %log30, align 8, !tbaa !12
  %45 = load ptr, ptr %logger20, align 8, !tbaa !4
  %46 = load ptr, ptr %connection, align 8, !tbaa !4
  %call31 = call i32 @aws_last_error()
  %call32 = call ptr @aws_error_debug_str(i32 noundef %call31)
  %call33 = call i32 (ptr, i32, i32, ptr, ...) %44(ptr noundef %45, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.1, ptr noundef %46, ptr noundef %call32)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %land.lhs.true23, %do.body19
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger20) #10
  br label %do.cond35

do.cond35:                                        ; preds = %if.end34
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  br label %error

if.end37:                                         ; preds = %if.end7
  %bootstrap38 = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 0
  %47 = load ptr, ptr %connection, align 8, !tbaa !4
  %bootstrap_ref39 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %bootstrap_ref39, align 8, !tbaa !24
  store ptr %48, ptr %bootstrap38, align 8, !tbaa !33
  %host_name = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 1
  %49 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %host_name40 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %host_name40, align 8, !tbaa !35
  store ptr %50, ptr %host_name, align 8, !tbaa !36
  %port = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 2
  %51 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %port41 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %51, i32 0, i32 1
  %52 = load i16, ptr %port41, align 8, !tbaa !37
  store i16 %52, ptr %port, align 8, !tbaa !38
  %socket_options = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 3
  %53 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %socket_options42 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %socket_options42, align 8, !tbaa !39
  store ptr %54, ptr %socket_options, align 8, !tbaa !40
  %tls_options = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 4
  %55 = load ptr, ptr %conn_options.addr, align 8, !tbaa !4
  %tls_options43 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection_options, ptr %55, i32 0, i32 3
  %56 = load ptr, ptr %tls_options43, align 8, !tbaa !41
  store ptr %56, ptr %tls_options, align 8, !tbaa !42
  %creation_callback = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 5
  store ptr null, ptr %creation_callback, align 8, !tbaa !43
  %setup_callback = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 6
  store ptr @s_on_channel_setup_fn, ptr %setup_callback, align 8, !tbaa !44
  %shutdown_callback = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 7
  store ptr @s_on_channel_shutdown_fn, ptr %shutdown_callback, align 8, !tbaa !45
  %enable_read_back_pressure = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 8
  store i8 0, ptr %enable_read_back_pressure, align 8, !tbaa !46
  %user_data44 = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 9
  %57 = load ptr, ptr %connection, align 8, !tbaa !4
  store ptr %57, ptr %user_data44, align 8, !tbaa !47
  %requested_event_loop = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 10
  store ptr null, ptr %requested_event_loop, align 8, !tbaa !48
  %host_resolution_override_config = getelementptr inbounds %struct.aws_socket_channel_bootstrap_options, ptr %bootstrap_options, i32 0, i32 11
  store ptr null, ptr %host_resolution_override_config, align 8, !tbaa !49
  %call45 = call i32 @aws_client_bootstrap_new_socket_channel(ptr noundef %bootstrap_options)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end66

if.then47:                                        ; preds = %if.end37
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger49) #10
  %call50 = call ptr @aws_logger_get()
  store ptr %call50, ptr %logger49, align 8, !tbaa !4
  %58 = load ptr, ptr %logger49, align 8, !tbaa !4
  %cmp51 = icmp ne ptr %58, null
  br i1 %cmp51, label %land.lhs.true52, label %if.end63

land.lhs.true52:                                  ; preds = %do.body48
  %59 = load ptr, ptr %logger49, align 8, !tbaa !4
  %vtable53 = getelementptr inbounds %struct.aws_logger, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %vtable53, align 8, !tbaa !8
  %get_log_level54 = getelementptr inbounds %struct.aws_logger_vtable, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %get_log_level54, align 8, !tbaa !10
  %62 = load ptr, ptr %logger49, align 8, !tbaa !4
  %call55 = call i32 %61(ptr noundef %62, i32 noundef 4099)
  %cmp56 = icmp uge i32 %call55, 2
  br i1 %cmp56, label %if.then57, label %if.end63

if.then57:                                        ; preds = %land.lhs.true52
  %63 = load ptr, ptr %logger49, align 8, !tbaa !4
  %vtable58 = getelementptr inbounds %struct.aws_logger, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %vtable58, align 8, !tbaa !8
  %log59 = getelementptr inbounds %struct.aws_logger_vtable, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %log59, align 8, !tbaa !12
  %66 = load ptr, ptr %logger49, align 8, !tbaa !4
  %67 = load ptr, ptr %connection, align 8, !tbaa !4
  %call60 = call i32 @aws_last_error()
  %call61 = call ptr @aws_error_debug_str(i32 noundef %call60)
  %call62 = call i32 (ptr, i32, i32, ptr, ...) %65(ptr noundef %66, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.2, ptr noundef %67, ptr noundef %call61)
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %land.lhs.true52, %do.body48
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger49) #10
  br label %do.cond64

do.cond64:                                        ; preds = %if.end63
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  br label %error

if.end66:                                         ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %do.end65, %do.end36
  %68 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %68)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end66, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection) #10
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @aws_mem_calloc(ptr noundef, i64 noundef, i64 noundef) #2

declare ptr @aws_logger_get() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_atomic_init_int(ptr noundef %var, i64 noundef %n) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !50
  %0 = load i64, ptr %n.addr, align 8, !tbaa !50
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store i64 %0, ptr %1, align 8, !tbaa !50
  ret void
}

declare ptr @aws_client_bootstrap_acquire(ptr noundef) #2

declare i32 @aws_mutex_init(ptr noundef) #2

declare i32 @aws_hash_table_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @aws_event_stream_rpc_hash_streamid(ptr noundef) #2

declare zeroext i1 @aws_event_stream_rpc_streamid_eq(ptr noundef, ptr noundef) #2

declare ptr @aws_error_debug_str(i32 noundef) #2

declare i32 @aws_last_error() #2

; Function Attrs: nounwind uwtable
define internal void @s_on_channel_setup_fn(ptr noundef %bootstrap, i32 noundef %error_code, ptr noundef %channel, ptr noundef %user_data) #0 {
entry:
  %bootstrap.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %channel.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %connection = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %last_error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %logger14 = alloca ptr, align 8
  store ptr %bootstrap, ptr %bootstrap.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !51
  store ptr %channel, ptr %channel.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bootstrap.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection) #10
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %1, ptr %connection, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %connection, align 8, !tbaa !4
  %12 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  %13 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.23, ptr noundef %11, i32 noundef %12, ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %15 = load ptr, ptr %connection, align 8, !tbaa !4
  %bootstrap_owned = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %15, i32 0, i32 15
  store i8 1, ptr %bootstrap_owned, align 8, !tbaa !52
  %16 = load ptr, ptr %connection, align 8, !tbaa !4
  %17 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %call6 = call i32 @s_create_connection_on_channel(ptr noundef %16, ptr noundef %17)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_error) #10
  %call9 = call i32 @aws_last_error()
  store i32 %call9, ptr %last_error, align 4, !tbaa !51
  %18 = load ptr, ptr %connection, align 8, !tbaa !4
  %on_connection_setup = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %18, i32 0, i32 11
  %19 = load ptr, ptr %on_connection_setup, align 8, !tbaa !30
  %20 = load i32, ptr %last_error, align 4, !tbaa !51
  %21 = load ptr, ptr %connection, align 8, !tbaa !4
  %user_data10 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %user_data10, align 8, !tbaa !32
  call void %19(ptr noundef null, i32 noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %24 = load i32, ptr %last_error, align 4, !tbaa !51
  %call11 = call i32 @aws_channel_shutdown(ptr noundef %23, i32 noundef %24)
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_error) #10
  br label %cleanup

if.end12:                                         ; preds = %if.then5
  br label %do.body13

do.body13:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger14) #10
  %call15 = call ptr @aws_logger_get()
  store ptr %call15, ptr %logger14, align 8, !tbaa !4
  %25 = load ptr, ptr %logger14, align 8, !tbaa !4
  %cmp16 = icmp ne ptr %25, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end26

land.lhs.true17:                                  ; preds = %do.body13
  %26 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable18, align 8, !tbaa !8
  %get_log_level19 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %get_log_level19, align 8, !tbaa !10
  %29 = load ptr, ptr %logger14, align 8, !tbaa !4
  %call20 = call i32 %28(ptr noundef %29, i32 noundef 4099)
  %cmp21 = icmp uge i32 %call20, 5
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %land.lhs.true17
  %30 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %vtable23, align 8, !tbaa !8
  %log24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %log24, align 8, !tbaa !12
  %33 = load ptr, ptr %logger14, align 8, !tbaa !4
  %34 = load ptr, ptr %connection, align 8, !tbaa !4
  %35 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) %32(ptr noundef %33, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.24, ptr noundef %34, ptr noundef %35)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true17, %do.body13
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger14) #10
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  %36 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_acquire(ptr noundef %36)
  %37 = load ptr, ptr %connection, align 8, !tbaa !4
  %on_connection_setup29 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %37, i32 0, i32 11
  %38 = load ptr, ptr %on_connection_setup29, align 8, !tbaa !30
  %39 = load ptr, ptr %connection, align 8, !tbaa !4
  %40 = load ptr, ptr %connection, align 8, !tbaa !4
  %user_data30 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %40, i32 0, i32 14
  %41 = load ptr, ptr %user_data30, align 8, !tbaa !32
  call void %38(ptr noundef %39, i32 noundef 0, ptr noundef %41)
  %42 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %42)
  br label %if.end33

if.else:                                          ; preds = %do.end
  %43 = load ptr, ptr %connection, align 8, !tbaa !4
  %on_connection_setup31 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %43, i32 0, i32 11
  %44 = load ptr, ptr %on_connection_setup31, align 8, !tbaa !30
  %45 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  %46 = load ptr, ptr %connection, align 8, !tbaa !4
  %user_data32 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %46, i32 0, i32 14
  %47 = load ptr, ptr %user_data32, align 8, !tbaa !32
  call void %44(ptr noundef null, i32 noundef %45, ptr noundef %47)
  %48 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %48)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %do.end28
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection) #10
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
define internal void @s_on_channel_shutdown_fn(ptr noundef %bootstrap, i32 noundef %error_code, ptr noundef %channel, ptr noundef %user_data) #0 {
entry:
  %bootstrap.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %channel.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %connection = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %bootstrap, ptr %bootstrap.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !51
  store ptr %channel, ptr %channel.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bootstrap.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection) #10
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %1, ptr %connection, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %connection, align 8, !tbaa !4
  %12 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  %13 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.60, ptr noundef %11, i32 noundef %12, ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %connection, align 8, !tbaa !4
  %is_open = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %14, i32 0, i32 8
  call void @aws_atomic_store_int(ptr noundef %is_open, i64 noundef 0)
  %15 = load ptr, ptr %connection, align 8, !tbaa !4
  %bootstrap_owned = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %15, i32 0, i32 15
  %16 = load i8, ptr %bootstrap_owned, align 8, !tbaa !52, !range !53, !noundef !54
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  %17 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @s_clear_continuation_table(ptr noundef %17)
  %18 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_acquire(ptr noundef %18)
  %19 = load ptr, ptr %connection, align 8, !tbaa !4
  %on_connection_shutdown = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %on_connection_shutdown, align 8, !tbaa !26
  %21 = load ptr, ptr %connection, align 8, !tbaa !4
  %22 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  %23 = load ptr, ptr %connection, align 8, !tbaa !4
  %user_data6 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %23, i32 0, i32 14
  %24 = load ptr, ptr %user_data6, align 8, !tbaa !32
  call void %20(ptr noundef %21, i32 noundef %22, ptr noundef %24)
  %25 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %25)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end
  %26 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  call void @aws_channel_release_hold(ptr noundef %26)
  %27 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %27)
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection) #10
  ret void
}

declare i32 @aws_client_bootstrap_new_socket_channel(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @aws_event_stream_rpc_client_connection_release(ptr noundef %connection) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  %connection_mut = alloca ptr, align 8
  %ref_count = alloca i64, align 8
  %logger = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection_mut) #10
  %1 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  store ptr %1, ptr %connection_mut, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_count) #10
  %2 = load ptr, ptr %connection_mut, align 8, !tbaa !4
  %ref_count1 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %2, i32 0, i32 3
  %call = call i64 @aws_atomic_fetch_sub_explicit(ptr noundef %ref_count1, i64 noundef 1, i32 noundef 5)
  store i64 %call, ptr %ref_count, align 8, !tbaa !50
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call3 = call i32 %6(ptr noundef %7, i32 noundef 4099)
  %cmp4 = icmp uge i32 %call3, 6
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable6 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable6, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !12
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %13 = load i64, ptr %ref_count, align 8, !tbaa !50
  %sub = sub i64 %13, 1
  %call7 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.4, ptr noundef %12, i64 noundef %sub)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %14 = load i64, ptr %ref_count, align 8, !tbaa !50
  %cmp10 = icmp ne i64 %14, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.then12

land.lhs.true11:                                  ; preds = %do.body9
  br i1 true, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true11, %do.body9
  call void @aws_fatal_assert(ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 361) #11
  unreachable

if.end13:                                         ; preds = %land.lhs.true11
  br label %do.cond14

do.cond14:                                        ; preds = %if.end13
  br label %do.end15

do.end15:                                         ; preds = %do.cond14
  %15 = load i64, ptr %ref_count, align 8, !tbaa !50
  %cmp16 = icmp eq i64 %15, 1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end15
  %16 = load ptr, ptr %connection_mut, align 8, !tbaa !4
  call void @s_destroy_connection(ptr noundef %16)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_count) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection_mut) #10
  br label %return

return:                                           ; preds = %if.end18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_event_stream_rpc_client_connection_acquire(ptr noundef %connection) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  %current_count = alloca i64, align 8
  %logger = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_count) #10
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %0, i32 0, i32 3
  %call = call i64 @aws_atomic_fetch_add_explicit(ptr noundef %ref_count, i64 noundef 1, i32 noundef 0)
  store i64 %call, ptr %current_count, align 8, !tbaa !50
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %4(ptr noundef %5, i32 noundef 4099)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable4, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !12
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %11 = load i64, ptr %current_count, align 8, !tbaa !50
  %add = add i64 %11, 1
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.3, ptr noundef %10, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_count) #10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_atomic_fetch_add_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %order) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !50
  store i32 %order, ptr %order.addr, align 4, !tbaa !55
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load i32, ptr %order.addr, align 4, !tbaa !55
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !50
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !50
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  %4 = atomicrmw add ptr %0, i64 %3 monotonic, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %5 = load i64, ptr %.atomictmp, align 8
  %6 = atomicrmw add ptr %0, i64 %5 acquire, align 8
  store i64 %6, ptr %atomic-temp, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = atomicrmw add ptr %0, i64 %7 release, align 8
  store i64 %8, ptr %atomic-temp, align 8
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  %9 = load i64, ptr %.atomictmp, align 8
  %10 = atomicrmw add ptr %0, i64 %9 acq_rel, align 8
  store i64 %10, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %11 = load i64, ptr %.atomictmp, align 8
  %12 = atomicrmw add ptr %0, i64 %11 seq_cst, align 8
  store i64 %12, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !50
  ret i64 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_atomic_fetch_sub_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %order) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !50
  store i32 %order, ptr %order.addr, align 4, !tbaa !55
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load i32, ptr %order.addr, align 4, !tbaa !55
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !50
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !50
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  %4 = atomicrmw sub ptr %0, i64 %3 monotonic, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %5 = load i64, ptr %.atomictmp, align 8
  %6 = atomicrmw sub ptr %0, i64 %5 acquire, align 8
  store i64 %6, ptr %atomic-temp, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = atomicrmw sub ptr %0, i64 %7 release, align 8
  store i64 %8, ptr %atomic-temp, align 8
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  %9 = load i64, ptr %.atomictmp, align 8
  %10 = atomicrmw sub ptr %0, i64 %9 acq_rel, align 8
  store i64 %10, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %11 = load i64, ptr %.atomictmp, align 8
  %12 = atomicrmw sub ptr %0, i64 %11 seq_cst, align 8
  store i64 %12, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !50
  ret i64 %13
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal void @s_destroy_connection(ptr noundef %connection) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.61, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %continuation_table = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %10, i32 0, i32 1
  call void @aws_hash_table_clean_up(ptr noundef %continuation_table)
  %11 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %bootstrap_ref = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %bootstrap_ref, align 8, !tbaa !24
  call void @aws_client_bootstrap_release(ptr noundef %12)
  %13 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %allocator, align 8, !tbaa !13
  %15 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %14, ptr noundef %15)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_event_stream_rpc_client_connection_close(ptr noundef %connection, i32 noundef %shutdown_error_code) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  %shutdown_error_code.addr = alloca i32, align 4
  %logger = alloca ptr, align 8
  %expect_open = alloca i64, align 8
  %logger12 = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store i32 %shutdown_error_code, ptr %shutdown_error_code.addr, align 4, !tbaa !51
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %10 = load i32, ptr %shutdown_error_code.addr, align 4, !tbaa !51
  %call4 = call ptr @aws_error_debug_str(i32 noundef %10)
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.8, ptr noundef %9, ptr noundef %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %expect_open) #10
  store i64 1, ptr %expect_open, align 8, !tbaa !50
  %11 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %is_open = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %11, i32 0, i32 8
  %call6 = call zeroext i1 @aws_atomic_compare_exchange_int(ptr noundef %is_open, ptr noundef %expect_open, i64 noundef 0)
  br i1 %call6, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  %12 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %channel = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %channel, align 8, !tbaa !56
  %14 = load i32, ptr %shutdown_error_code.addr, align 4, !tbaa !51
  %call8 = call i32 @aws_channel_shutdown(ptr noundef %13, i32 noundef %14)
  %15 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %bootstrap_owned = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %15, i32 0, i32 15
  %16 = load i8, ptr %bootstrap_owned, align 8, !tbaa !52, !range !53, !noundef !54
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then7
  %17 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @s_clear_continuation_table(ptr noundef %17)
  %18 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %18)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %if.end26

if.else:                                          ; preds = %do.end
  br label %do.body11

do.body11:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger12) #10
  %call13 = call ptr @aws_logger_get()
  store ptr %call13, ptr %logger12, align 8, !tbaa !4
  %19 = load ptr, ptr %logger12, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %19, null
  br i1 %cmp14, label %land.lhs.true15, label %if.end24

land.lhs.true15:                                  ; preds = %do.body11
  %20 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable16 = getelementptr inbounds %struct.aws_logger, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %vtable16, align 8, !tbaa !8
  %get_log_level17 = getelementptr inbounds %struct.aws_logger_vtable, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %get_log_level17, align 8, !tbaa !10
  %23 = load ptr, ptr %logger12, align 8, !tbaa !4
  %call18 = call i32 %22(ptr noundef %23, i32 noundef 4099)
  %cmp19 = icmp uge i32 %call18, 6
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true15
  %24 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable21 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable21, align 8, !tbaa !8
  %log22 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %log22, align 8, !tbaa !12
  %27 = load ptr, ptr %logger12, align 8, !tbaa !4
  %28 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call23 = call i32 (ptr, i32, i32, ptr, ...) %26(ptr noundef %27, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.9, ptr noundef %28)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true15, %do.body11
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger12) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end24
  br label %do.end25

do.end25:                                         ; preds = %do.cond
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %expect_open) #10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @aws_atomic_compare_exchange_int(ptr noundef %var, ptr noundef %expected, i64 noundef %desired) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !4
  store i64 %desired, ptr %desired.addr, align 8, !tbaa !50
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %expected.addr, align 8, !tbaa !4
  %2 = load i64, ptr %desired.addr, align 8, !tbaa !50
  %call = call zeroext i1 @aws_atomic_compare_exchange_int_explicit(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 5, i32 noundef 5)
  ret i1 %call
}

declare i32 @aws_channel_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_clear_continuation_table(ptr noundef %connection) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %stream_lock = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %0, i32 0, i32 7
  %call = call i32 @aws_mutex_lock(ptr noundef %stream_lock)
  %1 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %continuation_table = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %1, i32 0, i32 1
  %call1 = call i32 @aws_hash_table_foreach(ptr noundef %continuation_table, ptr noundef @s_mark_each_continuation_closed, ptr noundef null)
  %2 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %stream_lock2 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %2, i32 0, i32 7
  %call3 = call i32 @aws_mutex_unlock(ptr noundef %stream_lock2)
  %3 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %continuation_table4 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %3, i32 0, i32 1
  %call5 = call i32 @aws_hash_table_foreach(ptr noundef %continuation_table4, ptr noundef @s_complete_and_clear_each_continuation, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_event_stream_rpc_client_connection_is_open(ptr noundef %connection) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %is_open = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %0, i32 0, i32 8
  %call = call i64 @aws_atomic_load_int(ptr noundef %is_open)
  %cmp = icmp eq i64 %call, 1
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_atomic_load_int(ptr noundef %var) #3 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call i64 @aws_atomic_load_int_explicit(ptr noundef %0, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_event_stream_rpc_client_connection_send_protocol_message(ptr noundef %connection, ptr noundef %message_args, ptr noundef %flush_fn, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca ptr, align 8
  %message_args.addr = alloca ptr, align 8
  %flush_fn.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store ptr %message_args, ptr %message_args.addr, align 8, !tbaa !4
  store ptr %flush_fn, ptr %flush_fn.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_event_stream_rpc_client_connection_is_open(ptr noundef %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 4104)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %flush_fn.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call2 = call i32 @s_send_protocol_message(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #3 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !51
  %0 = load i32, ptr %err.addr, align 4, !tbaa !51
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @s_send_protocol_message(ptr noundef %connection, ptr noundef %continuation, ptr noundef %operation_name, ptr noundef %message_args, i32 noundef %stream_id, ptr noundef %flush_fn, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca ptr, align 8
  %continuation.addr = alloca ptr, align 8
  %operation_name.addr = alloca ptr, align 8
  %message_args.addr = alloca ptr, align 8
  %stream_id.addr = alloca i32, align 4
  %flush_fn.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %connect_handshake_state = alloca i64, align 8
  %logger7 = alloca ptr, align 8
  %logger26 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %args = alloca ptr, align 8
  %logger46 = alloca ptr, align 8
  %logger74 = alloca ptr, align 8
  %logger93 = alloca ptr, align 8
  %logger118 = alloca ptr, align 8
  %logger138 = alloca ptr, align 8
  %headers_count = alloca i64, align 8
  %headers_list = alloca %struct.aws_array_list, align 8
  %logger177 = alloca ptr, align 8
  %i = alloca i64, align 8
  %logger232 = alloca ptr, align 8
  %message_init_err_code = alloca i32, align 4
  %logger271 = alloca ptr, align 8
  %logger296 = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store ptr %continuation, ptr %continuation.addr, align 8, !tbaa !4
  store ptr %operation_name, ptr %operation_name.addr, align 8, !tbaa !4
  store ptr %message_args, ptr %message_args.addr, align 8, !tbaa !4
  store i32 %stream_id, ptr %stream_id.addr, align 4, !tbaa !51
  store ptr %flush_fn, ptr %flush_fn.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %11 = load i32, ptr %stream_id.addr, align 4, !tbaa !51
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.62, ptr noundef %9, ptr noundef %10, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %connect_handshake_state) #10
  %12 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %handshake_state = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %12, i32 0, i32 9
  %call5 = call i64 @aws_atomic_load_int(ptr noundef %handshake_state)
  store i64 %call5, ptr %connect_handshake_state, align 8, !tbaa !50
  br label %do.body6

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger7) #10
  %call8 = call ptr @aws_logger_get()
  store ptr %call8, ptr %logger7, align 8, !tbaa !4
  %13 = load ptr, ptr %logger7, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %13, null
  br i1 %cmp9, label %land.lhs.true10, label %if.end19

land.lhs.true10:                                  ; preds = %do.body6
  %14 = load ptr, ptr %logger7, align 8, !tbaa !4
  %vtable11 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable11, align 8, !tbaa !8
  %get_log_level12 = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %get_log_level12, align 8, !tbaa !10
  %17 = load ptr, ptr %logger7, align 8, !tbaa !4
  %call13 = call i32 %16(ptr noundef %17, i32 noundef 4099)
  %cmp14 = icmp uge i32 %call13, 6
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %land.lhs.true10
  %18 = load ptr, ptr %logger7, align 8, !tbaa !4
  %vtable16 = getelementptr inbounds %struct.aws_logger, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vtable16, align 8, !tbaa !8
  %log17 = getelementptr inbounds %struct.aws_logger_vtable, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %log17, align 8, !tbaa !12
  %21 = load ptr, ptr %logger7, align 8, !tbaa !4
  %22 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %23 = load i64, ptr %connect_handshake_state, align 8, !tbaa !50
  %call18 = call i32 (ptr, i32, i32, ptr, ...) %20(ptr noundef %21, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.63, ptr noundef %22, i64 noundef %23)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true10, %do.body6
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger7) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  br label %do.end20

do.end20:                                         ; preds = %do.cond
  %24 = load i64, ptr %connect_handshake_state, align 8, !tbaa !50
  %cmp21 = icmp ne i64 %24, 2
  br i1 %cmp21, label %land.lhs.true22, label %if.end42

land.lhs.true22:                                  ; preds = %do.end20
  %25 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_type = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %message_type, align 8, !tbaa !57
  %cmp23 = icmp ult i32 %26, 4
  br i1 %cmp23, label %if.then24, label %if.end42

if.then24:                                        ; preds = %land.lhs.true22
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger26) #10
  %call27 = call ptr @aws_logger_get()
  store ptr %call27, ptr %logger26, align 8, !tbaa !4
  %27 = load ptr, ptr %logger26, align 8, !tbaa !4
  %cmp28 = icmp ne ptr %27, null
  br i1 %cmp28, label %land.lhs.true29, label %if.end38

land.lhs.true29:                                  ; preds = %do.body25
  %28 = load ptr, ptr %logger26, align 8, !tbaa !4
  %vtable30 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable30, align 8, !tbaa !8
  %get_log_level31 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %get_log_level31, align 8, !tbaa !10
  %31 = load ptr, ptr %logger26, align 8, !tbaa !4
  %call32 = call i32 %30(ptr noundef %31, i32 noundef 4099)
  %cmp33 = icmp uge i32 %call32, 2
  br i1 %cmp33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %land.lhs.true29
  %32 = load ptr, ptr %logger26, align 8, !tbaa !4
  %vtable35 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable35, align 8, !tbaa !8
  %log36 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %log36, align 8, !tbaa !12
  %35 = load ptr, ptr %logger26, align 8, !tbaa !4
  %36 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call37 = call i32 (ptr, i32, i32, ptr, ...) %34(ptr noundef %35, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.64, ptr noundef %36)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true29, %do.body25
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger26) #10
  br label %do.cond39

do.cond39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  %call41 = call i32 @aws_raise_error(i32 noundef 4105)
  store i32 %call41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup320

if.end42:                                         ; preds = %land.lhs.true22, %do.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #10
  %37 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %allocator, align 8, !tbaa !13
  %call43 = call ptr @aws_mem_calloc(ptr noundef %38, i64 noundef 1, i64 noundef 96)
  store ptr %call43, ptr %args, align 8, !tbaa !4
  %39 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %39, null
  br i1 %tobool, label %if.end63, label %if.then44

if.then44:                                        ; preds = %if.end42
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger46) #10
  %call47 = call ptr @aws_logger_get()
  store ptr %call47, ptr %logger46, align 8, !tbaa !4
  %40 = load ptr, ptr %logger46, align 8, !tbaa !4
  %cmp48 = icmp ne ptr %40, null
  br i1 %cmp48, label %land.lhs.true49, label %if.end60

land.lhs.true49:                                  ; preds = %do.body45
  %41 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable50, align 8, !tbaa !8
  %get_log_level51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %get_log_level51, align 8, !tbaa !10
  %44 = load ptr, ptr %logger46, align 8, !tbaa !4
  %call52 = call i32 %43(ptr noundef %44, i32 noundef 4099)
  %cmp53 = icmp uge i32 %call52, 2
  br i1 %cmp53, label %if.then54, label %if.end60

if.then54:                                        ; preds = %land.lhs.true49
  %45 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable55 = getelementptr inbounds %struct.aws_logger, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %vtable55, align 8, !tbaa !8
  %log56 = getelementptr inbounds %struct.aws_logger_vtable, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %log56, align 8, !tbaa !12
  %48 = load ptr, ptr %logger46, align 8, !tbaa !4
  %49 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call57 = call i32 @aws_last_error()
  %call58 = call ptr @aws_error_debug_str(i32 noundef %call57)
  %call59 = call i32 (ptr, i32, i32, ptr, ...) %47(ptr noundef %48, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.65, ptr noundef %49, ptr noundef %call58)
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %land.lhs.true49, %do.body45
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger46) #10
  br label %do.cond61

do.cond61:                                        ; preds = %if.end60
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup319

if.end63:                                         ; preds = %if.end42
  %50 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %allocator64 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %allocator64, align 8, !tbaa !13
  %52 = load ptr, ptr %args, align 8, !tbaa !4
  %allocator65 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %52, i32 0, i32 0
  store ptr %51, ptr %allocator65, align 8, !tbaa !59
  %53 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %args, align 8, !tbaa !4
  %user_data66 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %54, i32 0, i32 6
  store ptr %53, ptr %user_data66, align 8, !tbaa !63
  %55 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_type67 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %message_type67, align 8, !tbaa !57
  %57 = load ptr, ptr %args, align 8, !tbaa !4
  %message_type68 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %57, i32 0, i32 2
  store i32 %56, ptr %message_type68, align 8, !tbaa !64
  %58 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %args, align 8, !tbaa !4
  %connection69 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %59, i32 0, i32 3
  store ptr %58, ptr %connection69, align 8, !tbaa !65
  %60 = load ptr, ptr %flush_fn.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %args, align 8, !tbaa !4
  %flush_fn70 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %61, i32 0, i32 5
  store ptr %60, ptr %flush_fn70, align 8, !tbaa !66
  %62 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %tobool71 = icmp ne ptr %62, null
  br i1 %tobool71, label %if.then72, label %if.end109

if.then72:                                        ; preds = %if.end63
  br label %do.body73

do.body73:                                        ; preds = %if.then72
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger74) #10
  %call75 = call ptr @aws_logger_get()
  store ptr %call75, ptr %logger74, align 8, !tbaa !4
  %63 = load ptr, ptr %logger74, align 8, !tbaa !4
  %cmp76 = icmp ne ptr %63, null
  br i1 %cmp76, label %land.lhs.true77, label %if.end86

land.lhs.true77:                                  ; preds = %do.body73
  %64 = load ptr, ptr %logger74, align 8, !tbaa !4
  %vtable78 = getelementptr inbounds %struct.aws_logger, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %vtable78, align 8, !tbaa !8
  %get_log_level79 = getelementptr inbounds %struct.aws_logger_vtable, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %get_log_level79, align 8, !tbaa !10
  %67 = load ptr, ptr %logger74, align 8, !tbaa !4
  %call80 = call i32 %66(ptr noundef %67, i32 noundef 4099)
  %cmp81 = icmp uge i32 %call80, 6
  br i1 %cmp81, label %if.then82, label %if.end86

if.then82:                                        ; preds = %land.lhs.true77
  %68 = load ptr, ptr %logger74, align 8, !tbaa !4
  %vtable83 = getelementptr inbounds %struct.aws_logger, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %vtable83, align 8, !tbaa !8
  %log84 = getelementptr inbounds %struct.aws_logger_vtable, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %log84, align 8, !tbaa !12
  %71 = load ptr, ptr %logger74, align 8, !tbaa !4
  %72 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call85 = call i32 (ptr, i32, i32, ptr, ...) %70(ptr noundef %71, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.66, ptr noundef %72, ptr noundef %73)
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %land.lhs.true77, %do.body73
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger74) #10
  br label %do.cond87

do.cond87:                                        ; preds = %if.end86
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  %74 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %args, align 8, !tbaa !4
  %continuation89 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %75, i32 0, i32 4
  store ptr %74, ptr %continuation89, align 8, !tbaa !67
  %76 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_continuation_acquire(ptr noundef %76)
  %77 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_flags = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %77, i32 0, i32 4
  %78 = load i32, ptr %message_flags, align 4, !tbaa !68
  %and = and i32 %78, 2
  %tobool90 = icmp ne i32 %and, 0
  br i1 %tobool90, label %if.then91, label %if.end108

if.then91:                                        ; preds = %do.end88
  br label %do.body92

do.body92:                                        ; preds = %if.then91
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger93) #10
  %call94 = call ptr @aws_logger_get()
  store ptr %call94, ptr %logger93, align 8, !tbaa !4
  %79 = load ptr, ptr %logger93, align 8, !tbaa !4
  %cmp95 = icmp ne ptr %79, null
  br i1 %cmp95, label %land.lhs.true96, label %if.end105

land.lhs.true96:                                  ; preds = %do.body92
  %80 = load ptr, ptr %logger93, align 8, !tbaa !4
  %vtable97 = getelementptr inbounds %struct.aws_logger, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %vtable97, align 8, !tbaa !8
  %get_log_level98 = getelementptr inbounds %struct.aws_logger_vtable, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %get_log_level98, align 8, !tbaa !10
  %83 = load ptr, ptr %logger93, align 8, !tbaa !4
  %call99 = call i32 %82(ptr noundef %83, i32 noundef 4099)
  %cmp100 = icmp uge i32 %call99, 5
  br i1 %cmp100, label %if.then101, label %if.end105

if.then101:                                       ; preds = %land.lhs.true96
  %84 = load ptr, ptr %logger93, align 8, !tbaa !4
  %vtable102 = getelementptr inbounds %struct.aws_logger, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %vtable102, align 8, !tbaa !8
  %log103 = getelementptr inbounds %struct.aws_logger_vtable, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %log103, align 8, !tbaa !12
  %87 = load ptr, ptr %logger93, align 8, !tbaa !4
  %88 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call104 = call i32 (ptr, i32, i32, ptr, ...) %86(ptr noundef %87, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.67, ptr noundef %88, ptr noundef %89)
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %land.lhs.true96, %do.body92
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger93) #10
  br label %do.cond106

do.cond106:                                       ; preds = %if.end105
  br label %do.end107

do.end107:                                        ; preds = %do.cond106
  %90 = load ptr, ptr %args, align 8, !tbaa !4
  %end_stream = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %90, i32 0, i32 7
  store i8 1, ptr %end_stream, align 8, !tbaa !69
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %do.end88
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end63
  %91 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_type110 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %91, i32 0, i32 3
  %92 = load i32, ptr %message_type110, align 8, !tbaa !57
  %cmp111 = icmp eq i32 %92, 5
  br i1 %cmp111, label %land.lhs.true112, label %if.end133

land.lhs.true112:                                 ; preds = %if.end109
  %93 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_flags113 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %93, i32 0, i32 4
  %94 = load i32, ptr %message_flags113, align 4, !tbaa !68
  %and114 = and i32 %94, 1
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.end133, label %if.then116

if.then116:                                       ; preds = %land.lhs.true112
  br label %do.body117

do.body117:                                       ; preds = %if.then116
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger118) #10
  %call119 = call ptr @aws_logger_get()
  store ptr %call119, ptr %logger118, align 8, !tbaa !4
  %95 = load ptr, ptr %logger118, align 8, !tbaa !4
  %cmp120 = icmp ne ptr %95, null
  br i1 %cmp120, label %land.lhs.true121, label %if.end130

land.lhs.true121:                                 ; preds = %do.body117
  %96 = load ptr, ptr %logger118, align 8, !tbaa !4
  %vtable122 = getelementptr inbounds %struct.aws_logger, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %vtable122, align 8, !tbaa !8
  %get_log_level123 = getelementptr inbounds %struct.aws_logger_vtable, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %get_log_level123, align 8, !tbaa !10
  %99 = load ptr, ptr %logger118, align 8, !tbaa !4
  %call124 = call i32 %98(ptr noundef %99, i32 noundef 4099)
  %cmp125 = icmp uge i32 %call124, 5
  br i1 %cmp125, label %if.then126, label %if.end130

if.then126:                                       ; preds = %land.lhs.true121
  %100 = load ptr, ptr %logger118, align 8, !tbaa !4
  %vtable127 = getelementptr inbounds %struct.aws_logger, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %vtable127, align 8, !tbaa !8
  %log128 = getelementptr inbounds %struct.aws_logger_vtable, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %log128, align 8, !tbaa !12
  %103 = load ptr, ptr %logger118, align 8, !tbaa !4
  %104 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call129 = call i32 (ptr, i32, i32, ptr, ...) %102(ptr noundef %103, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.68, ptr noundef %104)
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %land.lhs.true121, %do.body117
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger118) #10
  br label %do.cond131

do.cond131:                                       ; preds = %if.end130
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  %105 = load ptr, ptr %args, align 8, !tbaa !4
  %terminate_connection = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %105, i32 0, i32 8
  store i8 1, ptr %terminate_connection, align 1, !tbaa !70
  br label %if.end133

if.end133:                                        ; preds = %do.end132, %land.lhs.true112, %if.end109
  %106 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_type134 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %106, i32 0, i32 3
  %107 = load i32, ptr %message_type134, align 8, !tbaa !57
  %cmp135 = icmp eq i32 %107, 4
  br i1 %cmp135, label %if.then136, label %if.end154

if.then136:                                       ; preds = %if.end133
  br label %do.body137

do.body137:                                       ; preds = %if.then136
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger138) #10
  %call139 = call ptr @aws_logger_get()
  store ptr %call139, ptr %logger138, align 8, !tbaa !4
  %108 = load ptr, ptr %logger138, align 8, !tbaa !4
  %cmp140 = icmp ne ptr %108, null
  br i1 %cmp140, label %land.lhs.true141, label %if.end150

land.lhs.true141:                                 ; preds = %do.body137
  %109 = load ptr, ptr %logger138, align 8, !tbaa !4
  %vtable142 = getelementptr inbounds %struct.aws_logger, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %vtable142, align 8, !tbaa !8
  %get_log_level143 = getelementptr inbounds %struct.aws_logger_vtable, ptr %110, i32 0, i32 1
  %111 = load ptr, ptr %get_log_level143, align 8, !tbaa !10
  %112 = load ptr, ptr %logger138, align 8, !tbaa !4
  %call144 = call i32 %111(ptr noundef %112, i32 noundef 4099)
  %cmp145 = icmp uge i32 %call144, 5
  br i1 %cmp145, label %if.then146, label %if.end150

if.then146:                                       ; preds = %land.lhs.true141
  %113 = load ptr, ptr %logger138, align 8, !tbaa !4
  %vtable147 = getelementptr inbounds %struct.aws_logger, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %vtable147, align 8, !tbaa !8
  %log148 = getelementptr inbounds %struct.aws_logger_vtable, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %log148, align 8, !tbaa !12
  %116 = load ptr, ptr %logger138, align 8, !tbaa !4
  %117 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call149 = call i32 (ptr, i32, i32, ptr, ...) %115(ptr noundef %116, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.69, ptr noundef %117)
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %land.lhs.true141, %do.body137
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger138) #10
  br label %do.cond151

do.cond151:                                       ; preds = %if.end150
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  %118 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %handshake_state153 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %118, i32 0, i32 9
  call void @aws_atomic_store_int(ptr noundef %handshake_state153, i64 noundef 1)
  br label %if.end154

if.end154:                                        ; preds = %do.end152, %if.end133
  %119 = load ptr, ptr %flush_fn.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %args, align 8, !tbaa !4
  %flush_fn155 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %120, i32 0, i32 5
  store ptr %119, ptr %flush_fn155, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr %headers_count) #10
  store i64 0, ptr %headers_count, align 8, !tbaa !50
  %121 = load ptr, ptr %operation_name.addr, align 8, !tbaa !4
  %tobool156 = icmp ne ptr %121, null
  br i1 %tobool156, label %if.then157, label %if.else

if.then157:                                       ; preds = %if.end154
  %122 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %headers_count158 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %122, i32 0, i32 1
  %123 = load i64, ptr %headers_count158, align 8, !tbaa !71
  %call159 = call i32 @aws_add_size_checked(i64 noundef %123, i64 noundef 4, ptr noundef %headers_count)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.then157
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup318

if.end162:                                        ; preds = %if.then157
  br label %if.end168

if.else:                                          ; preds = %if.end154
  %124 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %headers_count163 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %124, i32 0, i32 1
  %125 = load i64, ptr %headers_count163, align 8, !tbaa !71
  %call164 = call i32 @aws_add_size_checked(i64 noundef %125, i64 noundef 3, ptr noundef %headers_count)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup318

if.end167:                                        ; preds = %if.else
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.end162
  call void @llvm.lifetime.start.p0(i64 40, ptr %headers_list) #10
  br label %do.body169

do.body169:                                       ; preds = %if.end168
  call void @llvm.memset.p0.i64(ptr align 8 %headers_list, i8 0, i64 40, i1 false)
  br label %do.cond170

do.cond170:                                       ; preds = %do.body169
  br label %do.end171

do.end171:                                        ; preds = %do.cond170
  %126 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %allocator172 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %allocator172, align 8, !tbaa !13
  %128 = load i64, ptr %headers_count, align 8, !tbaa !50
  %call173 = call i32 @aws_array_list_init_dynamic(ptr noundef %headers_list, ptr noundef %127, i64 noundef %128, i64 noundef 160)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.end194

if.then175:                                       ; preds = %do.end171
  br label %do.body176

do.body176:                                       ; preds = %if.then175
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger177) #10
  %call178 = call ptr @aws_logger_get()
  store ptr %call178, ptr %logger177, align 8, !tbaa !4
  %129 = load ptr, ptr %logger177, align 8, !tbaa !4
  %cmp179 = icmp ne ptr %129, null
  br i1 %cmp179, label %land.lhs.true180, label %if.end191

land.lhs.true180:                                 ; preds = %do.body176
  %130 = load ptr, ptr %logger177, align 8, !tbaa !4
  %vtable181 = getelementptr inbounds %struct.aws_logger, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %vtable181, align 8, !tbaa !8
  %get_log_level182 = getelementptr inbounds %struct.aws_logger_vtable, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %get_log_level182, align 8, !tbaa !10
  %133 = load ptr, ptr %logger177, align 8, !tbaa !4
  %call183 = call i32 %132(ptr noundef %133, i32 noundef 4099)
  %cmp184 = icmp uge i32 %call183, 2
  br i1 %cmp184, label %if.then185, label %if.end191

if.then185:                                       ; preds = %land.lhs.true180
  %134 = load ptr, ptr %logger177, align 8, !tbaa !4
  %vtable186 = getelementptr inbounds %struct.aws_logger, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %vtable186, align 8, !tbaa !8
  %log187 = getelementptr inbounds %struct.aws_logger_vtable, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %log187, align 8, !tbaa !12
  %137 = load ptr, ptr %logger177, align 8, !tbaa !4
  %138 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call188 = call i32 @aws_last_error()
  %call189 = call ptr @aws_error_debug_str(i32 noundef %call188)
  %call190 = call i32 (ptr, i32, i32, ptr, ...) %136(ptr noundef %137, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.70, ptr noundef %138, ptr noundef %call189)
  br label %if.end191

if.end191:                                        ; preds = %if.then185, %land.lhs.true180, %do.body176
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger177) #10
  br label %do.cond192

do.cond192:                                       ; preds = %if.end191
  br label %do.end193

do.end193:                                        ; preds = %do.cond192
  br label %args_allocated_before_failure

if.end194:                                        ; preds = %do.end171
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end194
  %139 = load i64, ptr %i, align 8, !tbaa !50
  %140 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %headers_count195 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %140, i32 0, i32 1
  %141 = load i64, ptr %headers_count195, align 8, !tbaa !71
  %cmp196 = icmp ult i64 %139, %141
  br i1 %cmp196, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 23, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body197

do.body197:                                       ; preds = %for.body
  %142 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %headers = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %headers, align 8, !tbaa !72
  %144 = load i64, ptr %i, align 8, !tbaa !50
  %arrayidx = getelementptr inbounds %struct.aws_event_stream_header_value_pair, ptr %143, i64 %144
  %call198 = call i32 @aws_array_list_push_back(ptr noundef %headers_list, ptr noundef %arrayidx)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then200, label %if.end201

if.then200:                                       ; preds = %do.body197
  call void @aws_fatal_assert(ptr noundef @.str.71, ptr noundef @.str.7, i32 noundef 581) #11
  unreachable

if.end201:                                        ; preds = %do.body197
  br label %do.cond202

do.cond202:                                       ; preds = %if.end201
  br label %do.end203

do.end203:                                        ; preds = %do.cond202
  br label %for.inc

for.inc:                                          ; preds = %do.end203
  %145 = load i64, ptr %i, align 8, !tbaa !50
  %inc = add i64 %145, 1
  store i64 %inc, ptr %i, align 8, !tbaa !50
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  br label %do.body204

do.body204:                                       ; preds = %for.end
  %146 = load ptr, ptr getelementptr inbounds (%struct.aws_byte_cursor, ptr @aws_event_stream_rpc_message_type_name, i32 0, i32 1), align 8, !tbaa !73
  %147 = load i64, ptr @aws_event_stream_rpc_message_type_name, align 8, !tbaa !75
  %conv = trunc i64 %147 to i8
  %148 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_type205 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %148, i32 0, i32 3
  %149 = load i32, ptr %message_type205, align 8, !tbaa !57
  %call206 = call i32 @aws_event_stream_add_int32_header(ptr noundef %headers_list, ptr noundef %146, i8 noundef zeroext %conv, i32 noundef %149)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.then208, label %if.end209

if.then208:                                       ; preds = %do.body204
  call void @aws_fatal_assert(ptr noundef @.str.72, ptr noundef @.str.7, i32 noundef 588) #11
  unreachable

if.end209:                                        ; preds = %do.body204
  br label %do.cond210

do.cond210:                                       ; preds = %if.end209
  br label %do.end211

do.end211:                                        ; preds = %do.cond210
  br label %do.body212

do.body212:                                       ; preds = %do.end211
  %150 = load ptr, ptr getelementptr inbounds (%struct.aws_byte_cursor, ptr @aws_event_stream_rpc_message_flags_name, i32 0, i32 1), align 8, !tbaa !73
  %151 = load i64, ptr @aws_event_stream_rpc_message_flags_name, align 8, !tbaa !75
  %conv213 = trunc i64 %151 to i8
  %152 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %message_flags214 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %152, i32 0, i32 4
  %153 = load i32, ptr %message_flags214, align 4, !tbaa !68
  %call215 = call i32 @aws_event_stream_add_int32_header(ptr noundef %headers_list, ptr noundef %150, i8 noundef zeroext %conv213, i32 noundef %153)
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then217, label %if.end218

if.then217:                                       ; preds = %do.body212
  call void @aws_fatal_assert(ptr noundef @.str.73, ptr noundef @.str.7, i32 noundef 593) #11
  unreachable

if.end218:                                        ; preds = %do.body212
  br label %do.cond219

do.cond219:                                       ; preds = %if.end218
  br label %do.end220

do.end220:                                        ; preds = %do.cond219
  br label %do.body221

do.body221:                                       ; preds = %do.end220
  %154 = load ptr, ptr getelementptr inbounds (%struct.aws_byte_cursor, ptr @aws_event_stream_rpc_stream_id_name, i32 0, i32 1), align 8, !tbaa !73
  %155 = load i64, ptr @aws_event_stream_rpc_stream_id_name, align 8, !tbaa !75
  %conv222 = trunc i64 %155 to i8
  %156 = load i32, ptr %stream_id.addr, align 4, !tbaa !51
  %call223 = call i32 @aws_event_stream_add_int32_header(ptr noundef %headers_list, ptr noundef %154, i8 noundef zeroext %conv222, i32 noundef %156)
  %tobool224 = icmp ne i32 %call223, 0
  br i1 %tobool224, label %if.then225, label %if.end226

if.then225:                                       ; preds = %do.body221
  call void @aws_fatal_assert(ptr noundef @.str.74, ptr noundef @.str.7, i32 noundef 598) #11
  unreachable

if.end226:                                        ; preds = %do.body221
  br label %do.cond227

do.cond227:                                       ; preds = %if.end226
  br label %do.end228

do.end228:                                        ; preds = %do.cond227
  %157 = load ptr, ptr %operation_name.addr, align 8, !tbaa !4
  %tobool229 = icmp ne ptr %157, null
  br i1 %tobool229, label %if.then230, label %if.end265

if.then230:                                       ; preds = %do.end228
  br label %do.body231

do.body231:                                       ; preds = %if.then230
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger232) #10
  %call233 = call ptr @aws_logger_get()
  store ptr %call233, ptr %logger232, align 8, !tbaa !4
  %158 = load ptr, ptr %logger232, align 8, !tbaa !4
  %cmp234 = icmp ne ptr %158, null
  br i1 %cmp234, label %land.lhs.true236, label %if.end251

land.lhs.true236:                                 ; preds = %do.body231
  %159 = load ptr, ptr %logger232, align 8, !tbaa !4
  %vtable237 = getelementptr inbounds %struct.aws_logger, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %vtable237, align 8, !tbaa !8
  %get_log_level238 = getelementptr inbounds %struct.aws_logger_vtable, ptr %160, i32 0, i32 1
  %161 = load ptr, ptr %get_log_level238, align 8, !tbaa !10
  %162 = load ptr, ptr %logger232, align 8, !tbaa !4
  %call239 = call i32 %161(ptr noundef %162, i32 noundef 4099)
  %cmp240 = icmp uge i32 %call239, 5
  br i1 %cmp240, label %if.then242, label %if.end251

if.then242:                                       ; preds = %land.lhs.true236
  %163 = load ptr, ptr %logger232, align 8, !tbaa !4
  %vtable243 = getelementptr inbounds %struct.aws_logger, ptr %163, i32 0, i32 0
  %164 = load ptr, ptr %vtable243, align 8, !tbaa !8
  %log244 = getelementptr inbounds %struct.aws_logger_vtable, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %log244, align 8, !tbaa !12
  %166 = load ptr, ptr %logger232, align 8, !tbaa !4
  %167 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %168 = load ptr, ptr %operation_name.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %168, i32 0, i32 0
  %169 = load i64, ptr %len, align 8, !tbaa !75
  %conv245 = trunc i64 %169 to i32
  %cmp246 = icmp slt i32 %conv245, 0
  br i1 %cmp246, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then242
  br label %cond.end

cond.false:                                       ; preds = %if.then242
  %170 = load ptr, ptr %operation_name.addr, align 8, !tbaa !4
  %len248 = getelementptr inbounds %struct.aws_byte_cursor, ptr %170, i32 0, i32 0
  %171 = load i64, ptr %len248, align 8, !tbaa !75
  %conv249 = trunc i64 %171 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv249, %cond.false ]
  %172 = load ptr, ptr %operation_name.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %172, i32 0, i32 1
  %173 = load ptr, ptr %ptr, align 8, !tbaa !73
  %call250 = call i32 (ptr, i32, i32, ptr, ...) %165(ptr noundef %166, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.75, ptr noundef %167, i32 noundef %cond, ptr noundef %173)
  br label %if.end251

if.end251:                                        ; preds = %cond.end, %land.lhs.true236, %do.body231
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger232) #10
  br label %do.cond252

do.cond252:                                       ; preds = %if.end251
  br label %do.end253

do.end253:                                        ; preds = %do.cond252
  br label %do.body254

do.body254:                                       ; preds = %do.end253
  %174 = load ptr, ptr getelementptr inbounds (%struct.aws_byte_cursor, ptr @aws_event_stream_rpc_operation_name, i32 0, i32 1), align 8, !tbaa !73
  %175 = load i64, ptr @aws_event_stream_rpc_operation_name, align 8, !tbaa !75
  %conv255 = trunc i64 %175 to i8
  %176 = load ptr, ptr %operation_name.addr, align 8, !tbaa !4
  %ptr256 = getelementptr inbounds %struct.aws_byte_cursor, ptr %176, i32 0, i32 1
  %177 = load ptr, ptr %ptr256, align 8, !tbaa !73
  %178 = load ptr, ptr %operation_name.addr, align 8, !tbaa !4
  %len257 = getelementptr inbounds %struct.aws_byte_cursor, ptr %178, i32 0, i32 0
  %179 = load i64, ptr %len257, align 8, !tbaa !75
  %conv258 = trunc i64 %179 to i16
  %call259 = call i32 @aws_event_stream_add_string_header(ptr noundef %headers_list, ptr noundef %174, i8 noundef zeroext %conv255, ptr noundef %177, i16 noundef zeroext %conv258, i8 noundef signext 0)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.then261, label %if.end262

if.then261:                                       ; preds = %do.body254
  call void @aws_fatal_assert(ptr noundef @.str.76, ptr noundef @.str.7, i32 noundef 612) #11
  unreachable

if.end262:                                        ; preds = %do.body254
  br label %do.cond263

do.cond263:                                       ; preds = %if.end262
  br label %do.end264

do.end264:                                        ; preds = %do.cond263
  br label %if.end265

if.end265:                                        ; preds = %do.end264, %do.end228
  %180 = load ptr, ptr %args, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %180, i32 0, i32 1
  %181 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %allocator266 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %181, i32 0, i32 0
  %182 = load ptr, ptr %allocator266, align 8, !tbaa !13
  %183 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %payload = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %183, i32 0, i32 2
  %184 = load ptr, ptr %payload, align 8, !tbaa !76
  %call267 = call i32 @aws_event_stream_message_init(ptr noundef %message, ptr noundef %182, ptr noundef %headers_list, ptr noundef %184)
  store i32 %call267, ptr %message_init_err_code, align 4, !tbaa !51
  call void @aws_array_list_clean_up(ptr noundef %headers_list)
  %185 = load i32, ptr %message_init_err_code, align 4, !tbaa !51
  %tobool268 = icmp ne i32 %185, 0
  br i1 %tobool268, label %if.then269, label %if.end290

if.then269:                                       ; preds = %if.end265
  br label %do.body270

do.body270:                                       ; preds = %if.then269
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger271) #10
  %call272 = call ptr @aws_logger_get()
  store ptr %call272, ptr %logger271, align 8, !tbaa !4
  %186 = load ptr, ptr %logger271, align 8, !tbaa !4
  %cmp273 = icmp ne ptr %186, null
  br i1 %cmp273, label %land.lhs.true275, label %if.end287

land.lhs.true275:                                 ; preds = %do.body270
  %187 = load ptr, ptr %logger271, align 8, !tbaa !4
  %vtable276 = getelementptr inbounds %struct.aws_logger, ptr %187, i32 0, i32 0
  %188 = load ptr, ptr %vtable276, align 8, !tbaa !8
  %get_log_level277 = getelementptr inbounds %struct.aws_logger_vtable, ptr %188, i32 0, i32 1
  %189 = load ptr, ptr %get_log_level277, align 8, !tbaa !10
  %190 = load ptr, ptr %logger271, align 8, !tbaa !4
  %call278 = call i32 %189(ptr noundef %190, i32 noundef 4099)
  %cmp279 = icmp uge i32 %call278, 2
  br i1 %cmp279, label %if.then281, label %if.end287

if.then281:                                       ; preds = %land.lhs.true275
  %191 = load ptr, ptr %logger271, align 8, !tbaa !4
  %vtable282 = getelementptr inbounds %struct.aws_logger, ptr %191, i32 0, i32 0
  %192 = load ptr, ptr %vtable282, align 8, !tbaa !8
  %log283 = getelementptr inbounds %struct.aws_logger_vtable, ptr %192, i32 0, i32 0
  %193 = load ptr, ptr %log283, align 8, !tbaa !12
  %194 = load ptr, ptr %logger271, align 8, !tbaa !4
  %195 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call284 = call i32 @aws_last_error()
  %call285 = call ptr @aws_error_debug_str(i32 noundef %call284)
  %call286 = call i32 (ptr, i32, i32, ptr, ...) %193(ptr noundef %194, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.77, ptr noundef %195, ptr noundef %call285)
  br label %if.end287

if.end287:                                        ; preds = %if.then281, %land.lhs.true275, %do.body270
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger271) #10
  br label %do.cond288

do.cond288:                                       ; preds = %if.end287
  br label %do.end289

do.end289:                                        ; preds = %do.cond288
  br label %args_allocated_before_failure

if.end290:                                        ; preds = %if.end265
  %196 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_acquire(ptr noundef %196)
  %197 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %event_stream_handler = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %197, i32 0, i32 5
  %198 = load ptr, ptr %event_stream_handler, align 8, !tbaa !77
  %199 = load ptr, ptr %args, align 8, !tbaa !4
  %message291 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %199, i32 0, i32 1
  %200 = load ptr, ptr %args, align 8, !tbaa !4
  %call292 = call i32 @aws_event_stream_channel_handler_write_message(ptr noundef %198, ptr noundef %message291, ptr noundef @s_on_protocol_message_written_fn, ptr noundef %200)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.then294, label %if.end315

if.then294:                                       ; preds = %if.end290
  br label %do.body295

do.body295:                                       ; preds = %if.then294
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger296) #10
  %call297 = call ptr @aws_logger_get()
  store ptr %call297, ptr %logger296, align 8, !tbaa !4
  %201 = load ptr, ptr %logger296, align 8, !tbaa !4
  %cmp298 = icmp ne ptr %201, null
  br i1 %cmp298, label %land.lhs.true300, label %if.end312

land.lhs.true300:                                 ; preds = %do.body295
  %202 = load ptr, ptr %logger296, align 8, !tbaa !4
  %vtable301 = getelementptr inbounds %struct.aws_logger, ptr %202, i32 0, i32 0
  %203 = load ptr, ptr %vtable301, align 8, !tbaa !8
  %get_log_level302 = getelementptr inbounds %struct.aws_logger_vtable, ptr %203, i32 0, i32 1
  %204 = load ptr, ptr %get_log_level302, align 8, !tbaa !10
  %205 = load ptr, ptr %logger296, align 8, !tbaa !4
  %call303 = call i32 %204(ptr noundef %205, i32 noundef 4099)
  %cmp304 = icmp uge i32 %call303, 2
  br i1 %cmp304, label %if.then306, label %if.end312

if.then306:                                       ; preds = %land.lhs.true300
  %206 = load ptr, ptr %logger296, align 8, !tbaa !4
  %vtable307 = getelementptr inbounds %struct.aws_logger, ptr %206, i32 0, i32 0
  %207 = load ptr, ptr %vtable307, align 8, !tbaa !8
  %log308 = getelementptr inbounds %struct.aws_logger_vtable, ptr %207, i32 0, i32 0
  %208 = load ptr, ptr %log308, align 8, !tbaa !12
  %209 = load ptr, ptr %logger296, align 8, !tbaa !4
  %210 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call309 = call i32 @aws_last_error()
  %call310 = call ptr @aws_error_debug_str(i32 noundef %call309)
  %call311 = call i32 (ptr, i32, i32, ptr, ...) %208(ptr noundef %209, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.78, ptr noundef %210, ptr noundef %call310)
  br label %if.end312

if.end312:                                        ; preds = %if.then306, %land.lhs.true300, %do.body295
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger296) #10
  br label %do.cond313

do.cond313:                                       ; preds = %if.end312
  br label %do.end314

do.end314:                                        ; preds = %do.cond313
  br label %message_initialized_before_failure

if.end315:                                        ; preds = %if.end290
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

message_initialized_before_failure:               ; preds = %do.end314
  %211 = load ptr, ptr %args, align 8, !tbaa !4
  %message316 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %211, i32 0, i32 1
  call void @aws_event_stream_message_clean_up(ptr noundef %message316)
  br label %args_allocated_before_failure

args_allocated_before_failure:                    ; preds = %message_initialized_before_failure, %do.end289, %do.end193
  %212 = load ptr, ptr %args, align 8, !tbaa !4
  %allocator317 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %212, i32 0, i32 0
  %213 = load ptr, ptr %allocator317, align 8, !tbaa !59
  %214 = load ptr, ptr %args, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %213, ptr noundef %214)
  %215 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %215)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %args_allocated_before_failure, %if.end315
  call void @llvm.lifetime.end.p0(i64 40, ptr %headers_list) #10
  br label %cleanup318

cleanup318:                                       ; preds = %cleanup, %if.then166, %if.then161
  call void @llvm.lifetime.end.p0(i64 8, ptr %headers_count) #10
  br label %cleanup319

cleanup319:                                       ; preds = %cleanup318, %do.end62
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #10
  br label %cleanup320

cleanup320:                                       ; preds = %cleanup319, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %connect_handshake_state) #10
  %216 = load i32, ptr %retval, align 4
  ret i32 %216
}

; Function Attrs: nounwind uwtable
define ptr @aws_event_stream_rpc_client_connection_new_stream(ptr noundef %connection, ptr noundef %continuation_options) #0 {
entry:
  %retval = alloca ptr, align 8
  %connection.addr = alloca ptr, align 8
  %continuation_options.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %continuation = alloca ptr, align 8
  %logger8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger26 = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store ptr %continuation_options, ptr %continuation_options.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.10, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %continuation) #10
  %10 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %allocator, align 8, !tbaa !13
  %call5 = call ptr @aws_mem_calloc(ptr noundef %11, i64 noundef 1, i64 noundef 64)
  store ptr %call5, ptr %continuation, align 8, !tbaa !4
  %12 = load ptr, ptr %continuation, align 8, !tbaa !4
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %if.end24, label %if.then6

if.then6:                                         ; preds = %do.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger8) #10
  %call9 = call ptr @aws_logger_get()
  store ptr %call9, ptr %logger8, align 8, !tbaa !4
  %13 = load ptr, ptr %logger8, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %13, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end22

land.lhs.true11:                                  ; preds = %do.body7
  %14 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable12 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable12, align 8, !tbaa !8
  %get_log_level13 = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %get_log_level13, align 8, !tbaa !10
  %17 = load ptr, ptr %logger8, align 8, !tbaa !4
  %call14 = call i32 %16(ptr noundef %17, i32 noundef 4099)
  %cmp15 = icmp uge i32 %call14, 2
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %land.lhs.true11
  %18 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vtable17, align 8, !tbaa !8
  %log18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %log18, align 8, !tbaa !12
  %21 = load ptr, ptr %logger8, align 8, !tbaa !4
  %22 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call19 = call i32 @aws_last_error()
  %call20 = call ptr @aws_error_debug_str(i32 noundef %call19)
  %call21 = call i32 (ptr, i32, i32, ptr, ...) %20(ptr noundef %21, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.11, ptr noundef %22, ptr noundef %call20)
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %land.lhs.true11, %do.body7
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger8) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end22
  br label %do.end23

do.end23:                                         ; preds = %do.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %do.end
  br label %do.body25

do.body25:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger26) #10
  %call27 = call ptr @aws_logger_get()
  store ptr %call27, ptr %logger26, align 8, !tbaa !4
  %23 = load ptr, ptr %logger26, align 8, !tbaa !4
  %cmp28 = icmp ne ptr %23, null
  br i1 %cmp28, label %land.lhs.true29, label %if.end38

land.lhs.true29:                                  ; preds = %do.body25
  %24 = load ptr, ptr %logger26, align 8, !tbaa !4
  %vtable30 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable30, align 8, !tbaa !8
  %get_log_level31 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %get_log_level31, align 8, !tbaa !10
  %27 = load ptr, ptr %logger26, align 8, !tbaa !4
  %call32 = call i32 %26(ptr noundef %27, i32 noundef 4099)
  %cmp33 = icmp uge i32 %call32, 5
  br i1 %cmp33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %land.lhs.true29
  %28 = load ptr, ptr %logger26, align 8, !tbaa !4
  %vtable35 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable35, align 8, !tbaa !8
  %log36 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %log36, align 8, !tbaa !12
  %31 = load ptr, ptr %logger26, align 8, !tbaa !4
  %32 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %continuation, align 8, !tbaa !4
  %call37 = call i32 (ptr, i32, i32, ptr, ...) %30(ptr noundef %31, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.12, ptr noundef %32, ptr noundef %33)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true29, %do.body25
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger26) #10
  br label %do.cond39

do.cond39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  %34 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %continuation, align 8, !tbaa !4
  %connection41 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %35, i32 0, i32 1
  store ptr %34, ptr %connection41, align 8, !tbaa !78
  %36 = load ptr, ptr %continuation, align 8, !tbaa !4
  %connection42 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %connection42, align 8, !tbaa !78
  call void @aws_event_stream_rpc_client_connection_acquire(ptr noundef %37)
  %38 = load ptr, ptr %continuation, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %38, i32 0, i32 5
  call void @aws_atomic_init_int(ptr noundef %ref_count, i64 noundef 1)
  %39 = load ptr, ptr %continuation, align 8, !tbaa !4
  %is_closed = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %39, i32 0, i32 6
  call void @aws_atomic_init_int(ptr noundef %is_closed, i64 noundef 0)
  %40 = load ptr, ptr %continuation, align 8, !tbaa !4
  %is_complete = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %40, i32 0, i32 7
  call void @aws_atomic_init_int(ptr noundef %is_complete, i64 noundef 0)
  %41 = load ptr, ptr %continuation_options.addr, align 8, !tbaa !4
  %on_continuation = getelementptr inbounds %struct.aws_event_stream_rpc_client_stream_continuation_options, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %on_continuation, align 8, !tbaa !80
  %43 = load ptr, ptr %continuation, align 8, !tbaa !4
  %continuation_fn = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %43, i32 0, i32 2
  store ptr %42, ptr %continuation_fn, align 8, !tbaa !82
  %44 = load ptr, ptr %continuation_options.addr, align 8, !tbaa !4
  %on_continuation_closed = getelementptr inbounds %struct.aws_event_stream_rpc_client_stream_continuation_options, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %on_continuation_closed, align 8, !tbaa !83
  %46 = load ptr, ptr %continuation, align 8, !tbaa !4
  %closed_fn = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %46, i32 0, i32 3
  store ptr %45, ptr %closed_fn, align 8, !tbaa !84
  %47 = load ptr, ptr %continuation_options.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_event_stream_rpc_client_stream_continuation_options, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %user_data, align 8, !tbaa !85
  %49 = load ptr, ptr %continuation, align 8, !tbaa !4
  %user_data43 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %49, i32 0, i32 4
  store ptr %48, ptr %user_data43, align 8, !tbaa !86
  %50 = load ptr, ptr %continuation, align 8, !tbaa !4
  store ptr %50, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr %continuation) #10
  %51 = load ptr, ptr %retval, align 8
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define ptr @aws_event_stream_rpc_client_continuation_get_user_data(ptr noundef %continuation) #0 {
entry:
  %continuation.addr = alloca ptr, align 8
  store ptr %continuation, ptr %continuation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %user_data, align 8, !tbaa !86
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @aws_event_stream_rpc_client_continuation_acquire(ptr noundef %continuation) #0 {
entry:
  %continuation.addr = alloca ptr, align 8
  %current_count = alloca i64, align 8
  %logger = alloca ptr, align 8
  store ptr %continuation, ptr %continuation.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_count) #10
  %0 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %0, i32 0, i32 5
  %call = call i64 @aws_atomic_fetch_add_explicit(ptr noundef %ref_count, i64 noundef 1, i32 noundef 0)
  store i64 %call, ptr %current_count, align 8, !tbaa !50
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %4(ptr noundef %5, i32 noundef 4099)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable4, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !12
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %11 = load i64, ptr %current_count, align 8, !tbaa !50
  %add = add i64 %11, 1
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.13, ptr noundef %10, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_count) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_event_stream_rpc_client_continuation_release(ptr noundef %continuation) #0 {
entry:
  %continuation.addr = alloca ptr, align 8
  %continuation_mut = alloca ptr, align 8
  %ref_count = alloca i64, align 8
  %logger = alloca ptr, align 8
  %allocator = alloca ptr, align 8
  store ptr %continuation, ptr %continuation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %continuation_mut) #10
  %1 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  store ptr %1, ptr %continuation_mut, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_count) #10
  %2 = load ptr, ptr %continuation_mut, align 8, !tbaa !4
  %ref_count4 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %2, i32 0, i32 5
  %call = call i64 @aws_atomic_fetch_sub_explicit(ptr noundef %ref_count4, i64 noundef 1, i32 noundef 5)
  store i64 %call, ptr %ref_count, align 8, !tbaa !50
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call7 = call i32 %6(ptr noundef %7, i32 noundef 4099)
  %cmp8 = icmp uge i32 %call7, 6
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable11 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable11, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !12
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %13 = load i64, ptr %ref_count, align 8, !tbaa !50
  %sub = sub i64 %13, 1
  %call12 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.14, ptr noundef %12, i64 noundef %sub)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end13
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body14

do.body14:                                        ; preds = %do.end
  %14 = load i64, ptr %ref_count, align 8, !tbaa !50
  %cmp15 = icmp ne i64 %14, 0
  br i1 %cmp15, label %land.lhs.true17, label %if.then18

land.lhs.true17:                                  ; preds = %do.body14
  br i1 true, label %if.end19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true17, %do.body14
  call void @aws_fatal_assert(ptr noundef @.str.16, ptr noundef @.str.7, i32 noundef 967) #11
  unreachable

if.end19:                                         ; preds = %land.lhs.true17
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %15 = load i64, ptr %ref_count, align 8, !tbaa !50
  %cmp22 = icmp eq i64 %15, 1
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocator) #10
  %16 = load ptr, ptr %continuation_mut, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %connection, align 8, !tbaa !78
  %allocator25 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %allocator25, align 8, !tbaa !13
  store ptr %18, ptr %allocator, align 8, !tbaa !4
  %19 = load ptr, ptr %continuation_mut, align 8, !tbaa !4
  %connection26 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %connection26, align 8, !tbaa !78
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %20)
  %21 = load ptr, ptr %allocator, align 8, !tbaa !4
  %22 = load ptr, ptr %continuation_mut, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %21, ptr noundef %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocator) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %do.end21
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_count) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %continuation_mut) #10
  br label %return

return:                                           ; preds = %if.end27, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_event_stream_rpc_client_continuation_is_closed(ptr noundef %continuation) #0 {
entry:
  %continuation.addr = alloca ptr, align 8
  store ptr %continuation, ptr %continuation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %is_closed = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %0, i32 0, i32 6
  %call = call i64 @aws_atomic_load_int(ptr noundef %is_closed)
  %cmp = icmp eq i64 %call, 1
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define i32 @aws_event_stream_rpc_client_continuation_activate(ptr noundef %continuation, i64 %operation_name.coerce0, ptr %operation_name.coerce1, ptr noundef %message_args, ptr noundef %flush_fn, ptr noundef %user_data) #0 {
entry:
  %operation_name = alloca %struct.aws_byte_cursor, align 8
  %continuation.addr = alloca ptr, align 8
  %message_args.addr = alloca ptr, align 8
  %flush_fn.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %ret_val = alloca i32, align 4
  %logger8 = alloca ptr, align 8
  %logger28 = alloca ptr, align 8
  %logger48 = alloca ptr, align 8
  %logger70 = alloca ptr, align 8
  %logger100 = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %operation_name, i32 0, i32 0
  store i64 %operation_name.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %operation_name, i32 0, i32 1
  store ptr %operation_name.coerce1, ptr %1, align 8
  store ptr %continuation, ptr %continuation.addr, align 8, !tbaa !4
  store ptr %message_args, ptr %message_args.addr, align 8, !tbaa !4
  store ptr %flush_fn, ptr %flush_fn.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.17, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val) #10
  store i32 -1, ptr %ret_val, align 4, !tbaa !51
  %12 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %connection, align 8, !tbaa !78
  %stream_lock = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %13, i32 0, i32 7
  %call5 = call i32 @aws_mutex_lock(ptr noundef %stream_lock)
  %14 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %stream_id, align 8, !tbaa !87
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then6, label %if.end23

if.then6:                                         ; preds = %do.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger8) #10
  %call9 = call ptr @aws_logger_get()
  store ptr %call9, ptr %logger8, align 8, !tbaa !4
  %16 = load ptr, ptr %logger8, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %16, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end20

land.lhs.true11:                                  ; preds = %do.body7
  %17 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable12 = getelementptr inbounds %struct.aws_logger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vtable12, align 8, !tbaa !8
  %get_log_level13 = getelementptr inbounds %struct.aws_logger_vtable, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %get_log_level13, align 8, !tbaa !10
  %20 = load ptr, ptr %logger8, align 8, !tbaa !4
  %call14 = call i32 %19(ptr noundef %20, i32 noundef 4099)
  %cmp15 = icmp uge i32 %call14, 2
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %land.lhs.true11
  %21 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %vtable17, align 8, !tbaa !8
  %log18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %log18, align 8, !tbaa !12
  %24 = load ptr, ptr %logger8, align 8, !tbaa !4
  %25 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call19 = call i32 (ptr, i32, i32, ptr, ...) %23(ptr noundef %24, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.18, ptr noundef %25)
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true11, %do.body7
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger8) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end20
  br label %do.end21

do.end21:                                         ; preds = %do.cond
  %call22 = call i32 @aws_raise_error(i32 noundef 38)
  br label %clean_up

if.end23:                                         ; preds = %do.end
  %26 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection24 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %connection24, align 8, !tbaa !78
  %call25 = call zeroext i1 @aws_event_stream_rpc_client_connection_is_open(ptr noundef %27)
  br i1 %call25, label %if.end44, label %if.then26

if.then26:                                        ; preds = %if.end23
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger28) #10
  %call29 = call ptr @aws_logger_get()
  store ptr %call29, ptr %logger28, align 8, !tbaa !4
  %28 = load ptr, ptr %logger28, align 8, !tbaa !4
  %cmp30 = icmp ne ptr %28, null
  br i1 %cmp30, label %land.lhs.true31, label %if.end40

land.lhs.true31:                                  ; preds = %do.body27
  %29 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable32 = getelementptr inbounds %struct.aws_logger, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %vtable32, align 8, !tbaa !8
  %get_log_level33 = getelementptr inbounds %struct.aws_logger_vtable, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %get_log_level33, align 8, !tbaa !10
  %32 = load ptr, ptr %logger28, align 8, !tbaa !4
  %call34 = call i32 %31(ptr noundef %32, i32 noundef 4099)
  %cmp35 = icmp uge i32 %call34, 2
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %land.lhs.true31
  %33 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable37 = getelementptr inbounds %struct.aws_logger, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %vtable37, align 8, !tbaa !8
  %log38 = getelementptr inbounds %struct.aws_logger_vtable, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %log38, align 8, !tbaa !12
  %36 = load ptr, ptr %logger28, align 8, !tbaa !4
  %37 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call39 = call i32 (ptr, i32, i32, ptr, ...) %35(ptr noundef %36, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.19, ptr noundef %37)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %land.lhs.true31, %do.body27
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger28) #10
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  %call43 = call i32 @aws_raise_error(i32 noundef 4104)
  br label %clean_up

if.end44:                                         ; preds = %if.end23
  %38 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection45 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %connection45, align 8, !tbaa !78
  %latest_stream_id = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %39, i32 0, i32 6
  %40 = load i32, ptr %latest_stream_id, align 8, !tbaa !88
  %add = add i32 %40, 1
  %41 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id46 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %41, i32 0, i32 0
  store i32 %add, ptr %stream_id46, align 8, !tbaa !87
  br label %do.body47

do.body47:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger48) #10
  %call49 = call ptr @aws_logger_get()
  store ptr %call49, ptr %logger48, align 8, !tbaa !4
  %42 = load ptr, ptr %logger48, align 8, !tbaa !4
  %cmp50 = icmp ne ptr %42, null
  br i1 %cmp50, label %land.lhs.true51, label %if.end61

land.lhs.true51:                                  ; preds = %do.body47
  %43 = load ptr, ptr %logger48, align 8, !tbaa !4
  %vtable52 = getelementptr inbounds %struct.aws_logger, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %vtable52, align 8, !tbaa !8
  %get_log_level53 = getelementptr inbounds %struct.aws_logger_vtable, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %get_log_level53, align 8, !tbaa !10
  %46 = load ptr, ptr %logger48, align 8, !tbaa !4
  %call54 = call i32 %45(ptr noundef %46, i32 noundef 4099)
  %cmp55 = icmp uge i32 %call54, 5
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %land.lhs.true51
  %47 = load ptr, ptr %logger48, align 8, !tbaa !4
  %vtable57 = getelementptr inbounds %struct.aws_logger, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %vtable57, align 8, !tbaa !8
  %log58 = getelementptr inbounds %struct.aws_logger_vtable, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %log58, align 8, !tbaa !12
  %50 = load ptr, ptr %logger48, align 8, !tbaa !4
  %51 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id59 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %stream_id59, align 8, !tbaa !87
  %call60 = call i32 (ptr, i32, i32, ptr, ...) %49(ptr noundef %50, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.20, ptr noundef %51, i32 noundef %53)
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %land.lhs.true51, %do.body47
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger48) #10
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %54 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection64 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %connection64, align 8, !tbaa !78
  %continuation_table = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id65 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call66 = call i32 @aws_hash_table_put(ptr noundef %continuation_table, ptr noundef %stream_id65, ptr noundef %57, ptr noundef null)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end88

if.then68:                                        ; preds = %do.end63
  br label %do.body69

do.body69:                                        ; preds = %if.then68
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger70) #10
  %call71 = call ptr @aws_logger_get()
  store ptr %call71, ptr %logger70, align 8, !tbaa !4
  %58 = load ptr, ptr %logger70, align 8, !tbaa !4
  %cmp72 = icmp ne ptr %58, null
  br i1 %cmp72, label %land.lhs.true73, label %if.end84

land.lhs.true73:                                  ; preds = %do.body69
  %59 = load ptr, ptr %logger70, align 8, !tbaa !4
  %vtable74 = getelementptr inbounds %struct.aws_logger, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %vtable74, align 8, !tbaa !8
  %get_log_level75 = getelementptr inbounds %struct.aws_logger_vtable, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %get_log_level75, align 8, !tbaa !10
  %62 = load ptr, ptr %logger70, align 8, !tbaa !4
  %call76 = call i32 %61(ptr noundef %62, i32 noundef 4099)
  %cmp77 = icmp uge i32 %call76, 2
  br i1 %cmp77, label %if.then78, label %if.end84

if.then78:                                        ; preds = %land.lhs.true73
  %63 = load ptr, ptr %logger70, align 8, !tbaa !4
  %vtable79 = getelementptr inbounds %struct.aws_logger, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %vtable79, align 8, !tbaa !8
  %log80 = getelementptr inbounds %struct.aws_logger_vtable, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %log80, align 8, !tbaa !12
  %66 = load ptr, ptr %logger70, align 8, !tbaa !4
  %67 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call81 = call i32 @aws_last_error()
  %call82 = call ptr @aws_error_debug_str(i32 noundef %call81)
  %call83 = call i32 (ptr, i32, i32, ptr, ...) %65(ptr noundef %66, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.21, ptr noundef %67, ptr noundef %call82)
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %land.lhs.true73, %do.body69
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger70) #10
  br label %do.cond85

do.cond85:                                        ; preds = %if.end84
  br label %do.end86

do.end86:                                         ; preds = %do.cond85
  %68 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id87 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %68, i32 0, i32 0
  store i32 0, ptr %stream_id87, align 8, !tbaa !87
  br label %clean_up

if.end88:                                         ; preds = %do.end63
  %69 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection89 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %connection89, align 8, !tbaa !78
  %71 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id90 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %stream_id90, align 8, !tbaa !87
  %75 = load ptr, ptr %flush_fn.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call91 = call i32 @s_send_protocol_message(ptr noundef %70, ptr noundef %71, ptr noundef %operation_name, ptr noundef %72, i32 noundef %74, ptr noundef %75, ptr noundef %76)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then93, label %if.end117

if.then93:                                        ; preds = %if.end88
  %77 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection94 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %connection94, align 8, !tbaa !78
  %continuation_table95 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id96 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %79, i32 0, i32 0
  %call97 = call i32 @aws_hash_table_remove(ptr noundef %continuation_table95, ptr noundef %stream_id96, ptr noundef null, ptr noundef null)
  %80 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id98 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %80, i32 0, i32 0
  store i32 0, ptr %stream_id98, align 8, !tbaa !87
  br label %do.body99

do.body99:                                        ; preds = %if.then93
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger100) #10
  %call101 = call ptr @aws_logger_get()
  store ptr %call101, ptr %logger100, align 8, !tbaa !4
  %81 = load ptr, ptr %logger100, align 8, !tbaa !4
  %cmp102 = icmp ne ptr %81, null
  br i1 %cmp102, label %land.lhs.true103, label %if.end114

land.lhs.true103:                                 ; preds = %do.body99
  %82 = load ptr, ptr %logger100, align 8, !tbaa !4
  %vtable104 = getelementptr inbounds %struct.aws_logger, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %vtable104, align 8, !tbaa !8
  %get_log_level105 = getelementptr inbounds %struct.aws_logger_vtable, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %get_log_level105, align 8, !tbaa !10
  %85 = load ptr, ptr %logger100, align 8, !tbaa !4
  %call106 = call i32 %84(ptr noundef %85, i32 noundef 4099)
  %cmp107 = icmp uge i32 %call106, 2
  br i1 %cmp107, label %if.then108, label %if.end114

if.then108:                                       ; preds = %land.lhs.true103
  %86 = load ptr, ptr %logger100, align 8, !tbaa !4
  %vtable109 = getelementptr inbounds %struct.aws_logger, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %vtable109, align 8, !tbaa !8
  %log110 = getelementptr inbounds %struct.aws_logger_vtable, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %log110, align 8, !tbaa !12
  %89 = load ptr, ptr %logger100, align 8, !tbaa !4
  %90 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call111 = call i32 @aws_last_error()
  %call112 = call ptr @aws_error_debug_str(i32 noundef %call111)
  %call113 = call i32 (ptr, i32, i32, ptr, ...) %88(ptr noundef %89, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.22, ptr noundef %90, ptr noundef %call112)
  br label %if.end114

if.end114:                                        ; preds = %if.then108, %land.lhs.true103, %do.body99
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger100) #10
  br label %do.cond115

do.cond115:                                       ; preds = %if.end114
  br label %do.end116

do.end116:                                        ; preds = %do.cond115
  br label %clean_up

if.end117:                                        ; preds = %if.end88
  %91 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_continuation_acquire(ptr noundef %91)
  %92 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id118 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %92, i32 0, i32 0
  %93 = load i32, ptr %stream_id118, align 8, !tbaa !87
  %94 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection119 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %connection119, align 8, !tbaa !78
  %latest_stream_id120 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %95, i32 0, i32 6
  store i32 %93, ptr %latest_stream_id120, align 8, !tbaa !88
  store i32 0, ptr %ret_val, align 4, !tbaa !51
  br label %clean_up

clean_up:                                         ; preds = %if.end117, %do.end116, %do.end86, %do.end42, %do.end21
  %96 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection121 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %96, i32 0, i32 1
  %97 = load ptr, ptr %connection121, align 8, !tbaa !78
  %stream_lock122 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %97, i32 0, i32 7
  %call123 = call i32 @aws_mutex_unlock(ptr noundef %stream_lock122)
  %98 = load i32, ptr %ret_val, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val) #10
  ret i32 %98
}

declare i32 @aws_mutex_lock(ptr noundef) #2

declare i32 @aws_hash_table_put(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @aws_hash_table_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @aws_mutex_unlock(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @aws_event_stream_rpc_client_continuation_send_message(ptr noundef %continuation, ptr noundef %message_args, ptr noundef %flush_fn, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %continuation.addr = alloca ptr, align 8
  %message_args.addr = alloca ptr, align 8
  %flush_fn.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  store ptr %continuation, ptr %continuation.addr, align 8, !tbaa !4
  store ptr %message_args, ptr %message_args.addr, align 8, !tbaa !4
  store ptr %flush_fn, ptr %flush_fn.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_event_stream_rpc_client_continuation_is_closed(ptr noundef %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 4106)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %stream_id, align 8, !tbaa !87
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @aws_raise_error(i32 noundef 4107)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %connection, align 8, !tbaa !78
  %5 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %message_args.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %continuation.addr, align 8, !tbaa !4
  %stream_id5 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %stream_id5, align 8, !tbaa !87
  %9 = load ptr, ptr %flush_fn.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call6 = call i32 @s_send_protocol_message(ptr noundef %4, ptr noundef %5, ptr noundef null, ptr noundef %6, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 %call6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @s_create_connection_on_channel(ptr noundef %connection, ptr noundef %channel) #0 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca ptr, align 8
  %channel.addr = alloca ptr, align 8
  %event_stream_handler = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %handler_options = alloca %struct.aws_event_stream_channel_handler_options, align 8
  %logger = alloca ptr, align 8
  %logger10 = alloca ptr, align 8
  %logger32 = alloca ptr, align 8
  %logger55 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store ptr %channel, ptr %channel.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_stream_handler) #10
  store ptr null, ptr %event_stream_handler, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #10
  store ptr null, ptr %slot, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %handler_options) #10
  %on_message_received = getelementptr inbounds %struct.aws_event_stream_channel_handler_options, ptr %handler_options, i32 0, i32 0
  store ptr @s_on_message_received, ptr %on_message_received, align 8, !tbaa !89
  %user_data = getelementptr inbounds %struct.aws_event_stream_channel_handler_options, ptr %handler_options, i32 0, i32 1
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  store ptr %0, ptr %user_data, align 8, !tbaa !91
  %initial_window_size = getelementptr inbounds %struct.aws_event_stream_channel_handler_options, ptr %handler_options, i32 0, i32 2
  %1 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %initial_window_size1 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %1, i32 0, i32 10
  %2 = load i64, ptr %initial_window_size1, align 8, !tbaa !92
  store i64 %2, ptr %initial_window_size, align 8, !tbaa !93
  %manual_window_management = getelementptr inbounds %struct.aws_event_stream_channel_handler_options, ptr %handler_options, i32 0, i32 3
  %3 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %enable_read_back_pressure = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %3, i32 0, i32 16
  %4 = load i8, ptr %enable_read_back_pressure, align 1, !tbaa !94, !range !53, !noundef !54
  %tobool = trunc i8 %4 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %manual_window_management, align 8, !tbaa !95
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %8(ptr noundef %9, i32 noundef 4099)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable4, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %log, align 8, !tbaa !12
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %14 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %12(ptr noundef %13, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.25, ptr noundef %14, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %allocator, align 8, !tbaa !13
  %call6 = call ptr @aws_event_stream_channel_handler_new(ptr noundef %17, ptr noundef %handler_options)
  store ptr %call6, ptr %event_stream_handler, align 8, !tbaa !4
  %18 = load ptr, ptr %event_stream_handler, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %18, null
  br i1 %tobool7, label %if.end27, label %if.then8

if.then8:                                         ; preds = %do.end
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger10) #10
  %call11 = call ptr @aws_logger_get()
  store ptr %call11, ptr %logger10, align 8, !tbaa !4
  %19 = load ptr, ptr %logger10, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %19, null
  br i1 %cmp12, label %land.lhs.true13, label %if.end24

land.lhs.true13:                                  ; preds = %do.body9
  %20 = load ptr, ptr %logger10, align 8, !tbaa !4
  %vtable14 = getelementptr inbounds %struct.aws_logger, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %vtable14, align 8, !tbaa !8
  %get_log_level15 = getelementptr inbounds %struct.aws_logger_vtable, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %get_log_level15, align 8, !tbaa !10
  %23 = load ptr, ptr %logger10, align 8, !tbaa !4
  %call16 = call i32 %22(ptr noundef %23, i32 noundef 4099)
  %cmp17 = icmp uge i32 %call16, 2
  br i1 %cmp17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %land.lhs.true13
  %24 = load ptr, ptr %logger10, align 8, !tbaa !4
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable19, align 8, !tbaa !8
  %log20 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %log20, align 8, !tbaa !12
  %27 = load ptr, ptr %logger10, align 8, !tbaa !4
  %28 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call21 = call i32 @aws_last_error()
  %call22 = call ptr @aws_error_debug_str(i32 noundef %call21)
  %call23 = call i32 (ptr, i32, i32, ptr, ...) %26(ptr noundef %27, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.26, ptr noundef %28, ptr noundef %call22)
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %land.lhs.true13, %do.body9
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger10) #10
  br label %do.cond25

do.cond25:                                        ; preds = %if.end24
  br label %do.end26

do.end26:                                         ; preds = %do.cond25
  br label %error

if.end27:                                         ; preds = %do.end
  %29 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %call28 = call ptr @aws_channel_slot_new(ptr noundef %29)
  store ptr %call28, ptr %slot, align 8, !tbaa !4
  %30 = load ptr, ptr %slot, align 8, !tbaa !4
  %tobool29 = icmp ne ptr %30, null
  br i1 %tobool29, label %if.end49, label %if.then30

if.then30:                                        ; preds = %if.end27
  br label %do.body31

do.body31:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger32) #10
  %call33 = call ptr @aws_logger_get()
  store ptr %call33, ptr %logger32, align 8, !tbaa !4
  %31 = load ptr, ptr %logger32, align 8, !tbaa !4
  %cmp34 = icmp ne ptr %31, null
  br i1 %cmp34, label %land.lhs.true35, label %if.end46

land.lhs.true35:                                  ; preds = %do.body31
  %32 = load ptr, ptr %logger32, align 8, !tbaa !4
  %vtable36 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable36, align 8, !tbaa !8
  %get_log_level37 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %get_log_level37, align 8, !tbaa !10
  %35 = load ptr, ptr %logger32, align 8, !tbaa !4
  %call38 = call i32 %34(ptr noundef %35, i32 noundef 4099)
  %cmp39 = icmp uge i32 %call38, 2
  br i1 %cmp39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %land.lhs.true35
  %36 = load ptr, ptr %logger32, align 8, !tbaa !4
  %vtable41 = getelementptr inbounds %struct.aws_logger, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %vtable41, align 8, !tbaa !8
  %log42 = getelementptr inbounds %struct.aws_logger_vtable, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %log42, align 8, !tbaa !12
  %39 = load ptr, ptr %logger32, align 8, !tbaa !4
  %40 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call43 = call i32 @aws_last_error()
  %call44 = call ptr @aws_error_debug_str(i32 noundef %call43)
  %call45 = call i32 (ptr, i32, i32, ptr, ...) %38(ptr noundef %39, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.27, ptr noundef %40, ptr noundef %call44)
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %land.lhs.true35, %do.body31
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger32) #10
  br label %do.cond47

do.cond47:                                        ; preds = %if.end46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %error

if.end49:                                         ; preds = %if.end27
  %41 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %slot, align 8, !tbaa !4
  %call50 = call i32 @aws_channel_slot_insert_end(ptr noundef %41, ptr noundef %42)
  %43 = load ptr, ptr %slot, align 8, !tbaa !4
  %44 = load ptr, ptr %event_stream_handler, align 8, !tbaa !4
  %call51 = call i32 @aws_channel_slot_set_handler(ptr noundef %43, ptr noundef %44)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then53, label %if.end72

if.then53:                                        ; preds = %if.end49
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger55) #10
  %call56 = call ptr @aws_logger_get()
  store ptr %call56, ptr %logger55, align 8, !tbaa !4
  %45 = load ptr, ptr %logger55, align 8, !tbaa !4
  %cmp57 = icmp ne ptr %45, null
  br i1 %cmp57, label %land.lhs.true58, label %if.end69

land.lhs.true58:                                  ; preds = %do.body54
  %46 = load ptr, ptr %logger55, align 8, !tbaa !4
  %vtable59 = getelementptr inbounds %struct.aws_logger, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %vtable59, align 8, !tbaa !8
  %get_log_level60 = getelementptr inbounds %struct.aws_logger_vtable, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %get_log_level60, align 8, !tbaa !10
  %49 = load ptr, ptr %logger55, align 8, !tbaa !4
  %call61 = call i32 %48(ptr noundef %49, i32 noundef 4099)
  %cmp62 = icmp uge i32 %call61, 2
  br i1 %cmp62, label %if.then63, label %if.end69

if.then63:                                        ; preds = %land.lhs.true58
  %50 = load ptr, ptr %logger55, align 8, !tbaa !4
  %vtable64 = getelementptr inbounds %struct.aws_logger, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %vtable64, align 8, !tbaa !8
  %log65 = getelementptr inbounds %struct.aws_logger_vtable, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %log65, align 8, !tbaa !12
  %53 = load ptr, ptr %logger55, align 8, !tbaa !4
  %54 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call66 = call i32 @aws_last_error()
  %call67 = call ptr @aws_error_debug_str(i32 noundef %call66)
  %call68 = call i32 (ptr, i32, i32, ptr, ...) %52(ptr noundef %53, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.28, ptr noundef %54, ptr noundef %call67)
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %land.lhs.true58, %do.body54
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger55) #10
  br label %do.cond70

do.cond70:                                        ; preds = %if.end69
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  br label %error

if.end72:                                         ; preds = %if.end49
  %55 = load ptr, ptr %event_stream_handler, align 8, !tbaa !4
  %56 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %event_stream_handler73 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %56, i32 0, i32 5
  store ptr %55, ptr %event_stream_handler73, align 8, !tbaa !77
  %57 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %channel74 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %58, i32 0, i32 4
  store ptr %57, ptr %channel74, align 8, !tbaa !56
  %59 = load ptr, ptr %channel.addr, align 8, !tbaa !4
  call void @aws_channel_acquire_hold(ptr noundef %59)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %do.end71, %do.end48, %do.end26
  %60 = load ptr, ptr %slot, align 8, !tbaa !4
  %tobool75 = icmp ne ptr %60, null
  br i1 %tobool75, label %if.end79, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %error
  %61 = load ptr, ptr %event_stream_handler, align 8, !tbaa !4
  %tobool77 = icmp ne ptr %61, null
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %land.lhs.true76
  %62 = load ptr, ptr %event_stream_handler, align 8, !tbaa !4
  call void @aws_channel_handler_destroy(ptr noundef %62)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %land.lhs.true76, %error
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end72
  call void @llvm.lifetime.end.p0(i64 32, ptr %handler_options) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_stream_handler) #10
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal void @s_on_message_received(ptr noundef %message, i32 noundef %error_code, ptr noundef %user_data) #0 {
entry:
  %message.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %user_data.addr = alloca ptr, align 8
  %connection = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %headers = alloca %struct.aws_array_list, align 8
  %logger11 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger33 = alloca ptr, align 8
  %stream_id = alloca i32, align 4
  %message_type = alloca i32, align 4
  %message_flags = alloca i32, align 4
  %operation_name_buf = alloca %struct.aws_byte_buf, align 8
  %logger58 = alloca ptr, align 8
  %logger77 = alloca ptr, align 8
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !51
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end93, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection) #10
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %1, ptr %connection, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable4, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %connection, align 8, !tbaa !4
  %12 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call5 = call i32 @aws_event_stream_message_total_length(ptr noundef %12)
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.29, ptr noundef %11, i32 noundef %call5)
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 40, ptr %headers) #10
  %13 = load ptr, ptr %connection, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %allocator, align 8, !tbaa !13
  %call7 = call i32 @aws_array_list_init_dynamic(ptr noundef %headers, ptr noundef %14, i64 noundef 8, i64 noundef 160)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end28

if.then9:                                         ; preds = %do.end
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger11) #10
  %call12 = call ptr @aws_logger_get()
  store ptr %call12, ptr %logger11, align 8, !tbaa !4
  %15 = load ptr, ptr %logger11, align 8, !tbaa !4
  %cmp13 = icmp ne ptr %15, null
  br i1 %cmp13, label %land.lhs.true14, label %if.end25

land.lhs.true14:                                  ; preds = %do.body10
  %16 = load ptr, ptr %logger11, align 8, !tbaa !4
  %vtable15 = getelementptr inbounds %struct.aws_logger, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %vtable15, align 8, !tbaa !8
  %get_log_level16 = getelementptr inbounds %struct.aws_logger_vtable, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %get_log_level16, align 8, !tbaa !10
  %19 = load ptr, ptr %logger11, align 8, !tbaa !4
  %call17 = call i32 %18(ptr noundef %19, i32 noundef 4099)
  %cmp18 = icmp uge i32 %call17, 2
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %land.lhs.true14
  %20 = load ptr, ptr %logger11, align 8, !tbaa !4
  %vtable20 = getelementptr inbounds %struct.aws_logger, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %vtable20, align 8, !tbaa !8
  %log21 = getelementptr inbounds %struct.aws_logger_vtable, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %log21, align 8, !tbaa !12
  %23 = load ptr, ptr %logger11, align 8, !tbaa !4
  %24 = load ptr, ptr %connection, align 8, !tbaa !4
  %call22 = call i32 @aws_last_error()
  %call23 = call ptr @aws_error_debug_str(i32 noundef %call22)
  %call24 = call i32 (ptr, i32, i32, ptr, ...) %22(ptr noundef %23, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.30, ptr noundef %24, ptr noundef %call23)
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %land.lhs.true14, %do.body10
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger11) #10
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  %25 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %25, i32 noundef 7, i32 noundef 0, ptr noundef @s_internal_error)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %do.end
  %26 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call29 = call i32 @aws_event_stream_message_headers(ptr noundef %26, ptr noundef %headers)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end50

if.then31:                                        ; preds = %if.end28
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger33) #10
  %call34 = call ptr @aws_logger_get()
  store ptr %call34, ptr %logger33, align 8, !tbaa !4
  %27 = load ptr, ptr %logger33, align 8, !tbaa !4
  %cmp35 = icmp ne ptr %27, null
  br i1 %cmp35, label %land.lhs.true36, label %if.end47

land.lhs.true36:                                  ; preds = %do.body32
  %28 = load ptr, ptr %logger33, align 8, !tbaa !4
  %vtable37 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable37, align 8, !tbaa !8
  %get_log_level38 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %get_log_level38, align 8, !tbaa !10
  %31 = load ptr, ptr %logger33, align 8, !tbaa !4
  %call39 = call i32 %30(ptr noundef %31, i32 noundef 4099)
  %cmp40 = icmp uge i32 %call39, 2
  br i1 %cmp40, label %if.then41, label %if.end47

if.then41:                                        ; preds = %land.lhs.true36
  %32 = load ptr, ptr %logger33, align 8, !tbaa !4
  %vtable42 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable42, align 8, !tbaa !8
  %log43 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %log43, align 8, !tbaa !12
  %35 = load ptr, ptr %logger33, align 8, !tbaa !4
  %36 = load ptr, ptr %connection, align 8, !tbaa !4
  %call44 = call i32 @aws_last_error()
  %call45 = call ptr @aws_error_debug_str(i32 noundef %call44)
  %call46 = call i32 (ptr, i32, i32, ptr, ...) %34(ptr noundef %35, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.31, ptr noundef %36, ptr noundef %call45)
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %land.lhs.true36, %do.body32
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger33) #10
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %37 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %37, i32 noundef 7, i32 noundef 0, ptr noundef @s_internal_error)
  br label %clean_up

if.end50:                                         ; preds = %if.end28
  store i32 -1, ptr %stream_id, align 4, !tbaa !51
  store i32 -1, ptr %message_type, align 4, !tbaa !51
  store i32 -1, ptr %message_flags, align 4, !tbaa !51
  br label %do.body51

do.body51:                                        ; preds = %if.end50
  call void @llvm.memset.p0.i64(ptr align 8 %operation_name_buf, i8 0, i64 32, i1 false)
  br label %do.cond52

do.cond52:                                        ; preds = %do.body51
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  %call54 = call i32 @aws_event_stream_rpc_extract_message_metadata(ptr noundef %headers, ptr noundef %stream_id, ptr noundef %message_type, ptr noundef %message_flags, ptr noundef %operation_name_buf)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.end75

if.then56:                                        ; preds = %do.end53
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger58) #10
  %call59 = call ptr @aws_logger_get()
  store ptr %call59, ptr %logger58, align 8, !tbaa !4
  %38 = load ptr, ptr %logger58, align 8, !tbaa !4
  %cmp60 = icmp ne ptr %38, null
  br i1 %cmp60, label %land.lhs.true61, label %if.end72

land.lhs.true61:                                  ; preds = %do.body57
  %39 = load ptr, ptr %logger58, align 8, !tbaa !4
  %vtable62 = getelementptr inbounds %struct.aws_logger, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %vtable62, align 8, !tbaa !8
  %get_log_level63 = getelementptr inbounds %struct.aws_logger_vtable, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %get_log_level63, align 8, !tbaa !10
  %42 = load ptr, ptr %logger58, align 8, !tbaa !4
  %call64 = call i32 %41(ptr noundef %42, i32 noundef 4099)
  %cmp65 = icmp uge i32 %call64, 2
  br i1 %cmp65, label %if.then66, label %if.end72

if.then66:                                        ; preds = %land.lhs.true61
  %43 = load ptr, ptr %logger58, align 8, !tbaa !4
  %vtable67 = getelementptr inbounds %struct.aws_logger, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %vtable67, align 8, !tbaa !8
  %log68 = getelementptr inbounds %struct.aws_logger_vtable, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %log68, align 8, !tbaa !12
  %46 = load ptr, ptr %logger58, align 8, !tbaa !4
  %47 = load ptr, ptr %connection, align 8, !tbaa !4
  %call69 = call i32 @aws_last_error()
  %call70 = call ptr @aws_error_debug_str(i32 noundef %call69)
  %call71 = call i32 (ptr, i32, i32, ptr, ...) %45(ptr noundef %46, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.32, ptr noundef %47, ptr noundef %call70)
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %land.lhs.true61, %do.body57
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger58) #10
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  %48 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %48, i32 noundef 6, i32 noundef 0, ptr noundef @s_invalid_message_error)
  br label %clean_up

if.end75:                                         ; preds = %do.end53
  br label %do.body76

do.body76:                                        ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger77) #10
  %call78 = call ptr @aws_logger_get()
  store ptr %call78, ptr %logger77, align 8, !tbaa !4
  %49 = load ptr, ptr %logger77, align 8, !tbaa !4
  %cmp79 = icmp ne ptr %49, null
  br i1 %cmp79, label %land.lhs.true80, label %if.end89

land.lhs.true80:                                  ; preds = %do.body76
  %50 = load ptr, ptr %logger77, align 8, !tbaa !4
  %vtable81 = getelementptr inbounds %struct.aws_logger, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %vtable81, align 8, !tbaa !8
  %get_log_level82 = getelementptr inbounds %struct.aws_logger_vtable, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %get_log_level82, align 8, !tbaa !10
  %53 = load ptr, ptr %logger77, align 8, !tbaa !4
  %call83 = call i32 %52(ptr noundef %53, i32 noundef 4099)
  %cmp84 = icmp uge i32 %call83, 6
  br i1 %cmp84, label %if.then85, label %if.end89

if.then85:                                        ; preds = %land.lhs.true80
  %54 = load ptr, ptr %logger77, align 8, !tbaa !4
  %vtable86 = getelementptr inbounds %struct.aws_logger, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %vtable86, align 8, !tbaa !8
  %log87 = getelementptr inbounds %struct.aws_logger_vtable, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %log87, align 8, !tbaa !12
  %57 = load ptr, ptr %logger77, align 8, !tbaa !4
  %58 = load ptr, ptr %connection, align 8, !tbaa !4
  %call88 = call i32 (ptr, i32, i32, ptr, ...) %56(ptr noundef %57, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.33, ptr noundef %58)
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %land.lhs.true80, %do.body76
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger77) #10
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %59 = load ptr, ptr %connection, align 8, !tbaa !4
  %60 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %61 = load i32, ptr %stream_id, align 4, !tbaa !51
  %62 = load i32, ptr %message_type, align 4, !tbaa !51
  %63 = load i32, ptr %message_flags, align 4, !tbaa !51
  call void @s_route_message_by_type(ptr noundef %59, ptr noundef %60, ptr noundef %headers, i32 noundef %61, i32 noundef %62, i32 noundef %63)
  br label %clean_up

clean_up:                                         ; preds = %do.end91, %do.end74, %do.end49
  call void @aws_event_stream_headers_list_cleanup(ptr noundef %headers)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %clean_up, %do.end27
  call void @llvm.lifetime.end.p0(i64 40, ptr %headers) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end93
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end93

if.end93:                                         ; preds = %cleanup, %cleanup.cont, %entry
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare ptr @aws_event_stream_channel_handler_new(ptr noundef, ptr noundef) #2

declare ptr @aws_channel_slot_new(ptr noundef) #2

declare i32 @aws_channel_slot_insert_end(ptr noundef, ptr noundef) #2

declare i32 @aws_channel_slot_set_handler(ptr noundef, ptr noundef) #2

declare void @aws_channel_acquire_hold(ptr noundef) #2

declare void @aws_channel_handler_destroy(ptr noundef) #2

declare i32 @aws_event_stream_message_total_length(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_init_dynamic(ptr noalias noundef %list, ptr noundef %alloc, i64 noundef %initial_item_allocation, i64 noundef %item_size) #3 {
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
  store i64 %initial_item_allocation, ptr %initial_item_allocation.addr, align 8, !tbaa !50
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !50
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.34, ptr noundef @.str.35, i32 noundef 24) #11
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
  call void @aws_fatal_assert(ptr noundef @.str.36, ptr noundef @.str.35, i32 noundef 25) #11
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_size.addr, align 8, !tbaa !50
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.37, ptr noundef @.str.35, i32 noundef 26) #11
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocation_size) #10
  store i64 0, ptr %allocation_size, align 8, !tbaa !50
  %4 = load i64, ptr %initial_item_allocation.addr, align 8, !tbaa !50
  %5 = load i64, ptr %item_size.addr, align 8, !tbaa !50
  %call = call i32 @aws_mul_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %allocation_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end12
  br label %error

if.end14:                                         ; preds = %do.end12
  %6 = load i64, ptr %allocation_size, align 8, !tbaa !50
  %cmp15 = icmp ugt i64 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %7 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %8 = load i64, ptr %allocation_size, align 8, !tbaa !50
  %call17 = call ptr @aws_mem_acquire(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  store ptr %call17, ptr %data, align 8, !tbaa !96
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data18 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data18, align 8, !tbaa !96
  %tobool19 = icmp ne ptr %11, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then16
  br label %error

if.end21:                                         ; preds = %if.then16
  %12 = load i64, ptr %allocation_size, align 8, !tbaa !50
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 1
  store i64 %12, ptr %current_size, align 8, !tbaa !98
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %14 = load i64, ptr %item_size.addr, align 8, !tbaa !50
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size23 = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 3
  store i64 %14, ptr %item_size23, align 8, !tbaa !99
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc24 = getelementptr inbounds %struct.aws_array_list, ptr %17, i32 0, i32 0
  store ptr %16, ptr %alloc24, align 8, !tbaa !100
  br label %do.body25

do.body25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size26 = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %current_size26, align 8, !tbaa !98
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body25
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data28 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data28, align 8, !tbaa !96
  %tobool29 = icmp ne ptr %21, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.38, ptr noundef @.str.35, i32 noundef 49) #11
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocation_size) #10
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @s_send_connection_level_error(ptr noundef %connection, i32 noundef %message_type, i32 noundef %message_flags, ptr noundef %message) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  %message_type.addr = alloca i32, align 4
  %message_flags.addr = alloca i32, align 4
  %message.addr = alloca ptr, align 8
  %payload_buf = alloca %struct.aws_byte_buf, align 8
  %logger = alloca ptr, align 8
  %content_type_header = alloca %struct.aws_event_stream_header_value_pair, align 8
  %headers = alloca [1 x %struct.aws_event_stream_header_value_pair], align 16
  %message_args = alloca %struct.aws_event_stream_rpc_message_args, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store i32 %message_type, ptr %message_type.addr, align 4, !tbaa !51
  store i32 %message_flags, ptr %message_flags.addr, align 4, !tbaa !51
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %payload_buf) #10
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !73
  %2 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !75
  call void @aws_byte_buf_from_array(ptr sret(%struct.aws_byte_buf) align 8 %payload_buf, ptr noundef %1, i64 noundef %3)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %7(ptr noundef %8, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !12
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %13 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %len4 = getelementptr inbounds %struct.aws_byte_buf, ptr %payload_buf, i32 0, i32 0
  %14 = load i64, ptr %len4, align 8, !tbaa !101
  %conv = trunc i64 %14 to i32
  %cmp5 = icmp slt i32 %conv, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %len7 = getelementptr inbounds %struct.aws_byte_buf, ptr %payload_buf, i32 0, i32 0
  %15 = load i64, ptr %len7, align 8, !tbaa !101
  %conv8 = trunc i64 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv8, %cond.false ]
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %payload_buf, i32 0, i32 1
  %16 = load ptr, ptr %buffer, align 8, !tbaa !102
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.39, ptr noundef %13, i32 noundef %cond, ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 160, ptr %content_type_header) #10
  %17 = load i64, ptr @s_json_content_type_name, align 8
  %18 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @s_json_content_type_name, i32 0, i32 1), align 8
  %19 = load i64, ptr @s_json_content_type_value, align 8
  %20 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @s_json_content_type_value, i32 0, i32 1), align 8
  call void @aws_event_stream_create_string_header(ptr sret(%struct.aws_event_stream_header_value_pair) align 8 %content_type_header, i64 %17, ptr %18, i64 %19, ptr %20)
  call void @llvm.lifetime.start.p0(i64 160, ptr %headers) #10
  %arrayinit.begin = getelementptr inbounds [1 x %struct.aws_event_stream_header_value_pair], ptr %headers, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayinit.begin, ptr align 8 %content_type_header, i64 160, i1 false), !tbaa.struct !103
  call void @llvm.lifetime.start.p0(i64 32, ptr %message_args) #10
  %headers10 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x %struct.aws_event_stream_header_value_pair], ptr %headers, i64 0, i64 0
  store ptr %arraydecay, ptr %headers10, align 8, !tbaa !72
  %headers_count = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 1
  store i64 1, ptr %headers_count, align 8, !tbaa !71
  %payload = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 2
  store ptr %payload_buf, ptr %payload, align 8, !tbaa !76
  %message_type11 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 3
  %21 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  store i32 %21, ptr %message_type11, align 8, !tbaa !57
  %message_flags12 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 4
  %22 = load i32, ptr %message_flags.addr, align 4, !tbaa !51
  store i32 %22, ptr %message_flags12, align 4, !tbaa !68
  %23 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call13 = call i32 @aws_event_stream_rpc_client_connection_send_protocol_message(ptr noundef %23, ptr noundef %message_args, ptr noundef @s_connection_error_message_flush_fn, ptr noundef %24)
  call void @llvm.lifetime.end.p0(i64 32, ptr %message_args) #10
  call void @llvm.lifetime.end.p0(i64 160, ptr %headers) #10
  call void @llvm.lifetime.end.p0(i64 160, ptr %content_type_header) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %payload_buf) #10
  ret void
}

declare i32 @aws_event_stream_message_headers(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @aws_event_stream_rpc_extract_message_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_route_message_by_type(ptr noundef %connection, ptr noundef %message, ptr noundef %headers_list, i32 noundef %stream_id, i32 noundef %message_type, i32 noundef %message_flags) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %headers_list.addr = alloca ptr, align 8
  %stream_id.addr = alloca i32, align 4
  %message_type.addr = alloca i32, align 4
  %message_flags.addr = alloca i32, align 4
  %payload_buf = alloca %struct.aws_byte_buf, align 8
  %message_args = alloca %struct.aws_event_stream_rpc_message_args, align 8
  %handshake_complete = alloca i64, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger25 = alloca ptr, align 8
  %continuation = alloca ptr, align 8
  %logger46 = alloca ptr, align 8
  %continuation_element = alloca ptr, align 8
  %old_stream_id = alloca i8, align 1
  %logger76 = alloca ptr, align 8
  %logger95 = alloca ptr, align 8
  %logger126 = alloca ptr, align 8
  %logger159 = alloca ptr, align 8
  %logger184 = alloca ptr, align 8
  %logger204 = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %headers_list, ptr %headers_list.addr, align 8, !tbaa !4
  store i32 %stream_id, ptr %stream_id.addr, align 4, !tbaa !51
  store i32 %message_type, ptr %message_type.addr, align 4, !tbaa !51
  store i32 %message_flags, ptr %message_flags.addr, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 32, ptr %payload_buf) #10
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call = call ptr @aws_event_stream_message_payload(ptr noundef %0)
  %1 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call1 = call i32 @aws_event_stream_message_payload_len(ptr noundef %1)
  %conv = zext i32 %call1 to i64
  call void @aws_byte_buf_from_array(ptr sret(%struct.aws_byte_buf) align 8 %payload_buf, ptr noundef %call, i64 noundef %conv)
  call void @llvm.lifetime.start.p0(i64 32, ptr %message_args) #10
  %headers = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 0
  %2 = load ptr, ptr %headers_list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !96
  store ptr %3, ptr %headers, align 8, !tbaa !72
  %headers_count = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 1
  %4 = load ptr, ptr %headers_list.addr, align 8, !tbaa !4
  %call2 = call i64 @aws_array_list_length(ptr noundef %4)
  store i64 %call2, ptr %headers_count, align 8, !tbaa !71
  %payload = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 2
  store ptr %payload_buf, ptr %payload, align 8, !tbaa !76
  %message_type3 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 3
  %5 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  store i32 %5, ptr %message_type3, align 8, !tbaa !57
  %message_flags4 = getelementptr inbounds %struct.aws_event_stream_rpc_message_args, ptr %message_args, i32 0, i32 4
  %6 = load i32, ptr %message_flags.addr, align 4, !tbaa !51
  store i32 %6, ptr %message_flags4, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %handshake_complete) #10
  %7 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %handshake_state = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %7, i32 0, i32 9
  %call5 = call i64 @aws_atomic_load_int(ptr noundef %handshake_state)
  store i64 %call5, ptr %handshake_complete, align 8, !tbaa !50
  %8 = load i64, ptr %handshake_complete, align 8, !tbaa !50
  %cmp = icmp ult i64 %8, 2
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  %cmp7 = icmp ne i32 %9, 5
  br i1 %cmp7, label %if.then, label %if.end20

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call9 = call ptr @aws_logger_get()
  store ptr %call9, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %10, null
  br i1 %cmp10, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %do.body
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %call13 = call i32 %13(ptr noundef %14, i32 noundef 4099)
  %cmp14 = icmp uge i32 %call13, 2
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %land.lhs.true12
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable17, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %log, align 8, !tbaa !12
  %18 = load ptr, ptr %logger, align 8, !tbaa !4
  %19 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call18 = call i32 (ptr, i32, i32, ptr, ...) %17(ptr noundef %18, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.44, ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then16, %land.lhs.true12, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call19 = call i32 @aws_raise_error(i32 noundef 4105)
  %20 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %20, i32 noundef 6, i32 noundef 0, ptr noundef @s_connect_not_completed_error)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup224

if.end20:                                         ; preds = %land.lhs.true, %entry
  %21 = load i32, ptr %stream_id.addr, align 4, !tbaa !51
  %cmp21 = icmp ugt i32 %21, 0
  br i1 %cmp21, label %if.then23, label %if.else151

if.then23:                                        ; preds = %if.end20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger25) #10
  %call26 = call ptr @aws_logger_get()
  store ptr %call26, ptr %logger25, align 8, !tbaa !4
  %22 = load ptr, ptr %logger25, align 8, !tbaa !4
  %cmp27 = icmp ne ptr %22, null
  br i1 %cmp27, label %land.lhs.true29, label %if.end39

land.lhs.true29:                                  ; preds = %do.body24
  %23 = load ptr, ptr %logger25, align 8, !tbaa !4
  %vtable30 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable30, align 8, !tbaa !8
  %get_log_level31 = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %get_log_level31, align 8, !tbaa !10
  %26 = load ptr, ptr %logger25, align 8, !tbaa !4
  %call32 = call i32 %25(ptr noundef %26, i32 noundef 4099)
  %cmp33 = icmp uge i32 %call32, 6
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %land.lhs.true29
  %27 = load ptr, ptr %logger25, align 8, !tbaa !4
  %vtable36 = getelementptr inbounds %struct.aws_logger, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %vtable36, align 8, !tbaa !8
  %log37 = getelementptr inbounds %struct.aws_logger_vtable, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %log37, align 8, !tbaa !12
  %30 = load ptr, ptr %logger25, align 8, !tbaa !4
  %31 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %32 = load i32, ptr %stream_id.addr, align 4, !tbaa !51
  %call38 = call i32 (ptr, i32, i32, ptr, ...) %29(ptr noundef %30, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.45, ptr noundef %31, i32 noundef %32)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true29, %do.body24
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger25) #10
  br label %do.cond40

do.cond40:                                        ; preds = %if.end39
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.start.p0(i64 8, ptr %continuation) #10
  store ptr null, ptr %continuation, align 8, !tbaa !4
  %33 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  %cmp42 = icmp ugt i32 %33, 1
  br i1 %cmp42, label %if.then44, label %if.end64

if.then44:                                        ; preds = %do.end41
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger46) #10
  %call47 = call ptr @aws_logger_get()
  store ptr %call47, ptr %logger46, align 8, !tbaa !4
  %34 = load ptr, ptr %logger46, align 8, !tbaa !4
  %cmp48 = icmp ne ptr %34, null
  br i1 %cmp48, label %land.lhs.true50, label %if.end60

land.lhs.true50:                                  ; preds = %do.body45
  %35 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable51 = getelementptr inbounds %struct.aws_logger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vtable51, align 8, !tbaa !8
  %get_log_level52 = getelementptr inbounds %struct.aws_logger_vtable, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %get_log_level52, align 8, !tbaa !10
  %38 = load ptr, ptr %logger46, align 8, !tbaa !4
  %call53 = call i32 %37(ptr noundef %38, i32 noundef 4099)
  %cmp54 = icmp uge i32 %call53, 2
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %land.lhs.true50
  %39 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable57 = getelementptr inbounds %struct.aws_logger, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %vtable57, align 8, !tbaa !8
  %log58 = getelementptr inbounds %struct.aws_logger_vtable, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %log58, align 8, !tbaa !12
  %42 = load ptr, ptr %logger46, align 8, !tbaa !4
  %43 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call59 = call i32 (ptr, i32, i32, ptr, ...) %41(ptr noundef %42, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.46, ptr noundef %43)
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %land.lhs.true50, %do.body45
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger46) #10
  br label %do.cond61

do.cond61:                                        ; preds = %if.end60
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  %call63 = call i32 @aws_raise_error(i32 noundef 4105)
  %44 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %44, i32 noundef 6, i32 noundef 0, ptr noundef @s_invalid_stream_id_error)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup150

if.end64:                                         ; preds = %do.end41
  %45 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %stream_lock = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %45, i32 0, i32 7
  %call65 = call i32 @aws_mutex_lock(ptr noundef %stream_lock)
  call void @llvm.lifetime.start.p0(i64 8, ptr %continuation_element) #10
  store ptr null, ptr %continuation_element, align 8, !tbaa !4
  %46 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %continuation_table = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %46, i32 0, i32 1
  %call66 = call i32 @aws_hash_table_find(ptr noundef %continuation_table, ptr noundef %stream_id.addr, ptr noundef %continuation_element)
  %tobool = icmp ne i32 %call66, 0
  br i1 %tobool, label %if.then68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end64
  %47 = load ptr, ptr %continuation_element, align 8, !tbaa !4
  %tobool67 = icmp ne ptr %47, null
  br i1 %tobool67, label %if.end113, label %if.then68

if.then68:                                        ; preds = %lor.lhs.false, %if.end64
  call void @llvm.lifetime.start.p0(i64 1, ptr %old_stream_id) #10
  %48 = load i32, ptr %stream_id.addr, align 4, !tbaa !51
  %49 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %latest_stream_id = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %49, i32 0, i32 6
  %50 = load i32, ptr %latest_stream_id, align 8, !tbaa !88
  %cmp69 = icmp ule i32 %48, %50
  %frombool = zext i1 %cmp69 to i8
  store i8 %frombool, ptr %old_stream_id, align 1, !tbaa !105
  %51 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %stream_lock71 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %51, i32 0, i32 7
  %call72 = call i32 @aws_mutex_unlock(ptr noundef %stream_lock71)
  %52 = load i8, ptr %old_stream_id, align 1, !tbaa !105, !range !53, !noundef !54
  %tobool73 = trunc i8 %52 to i1
  br i1 %tobool73, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.then68
  br label %do.body75

do.body75:                                        ; preds = %if.then74
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger76) #10
  %call77 = call ptr @aws_logger_get()
  store ptr %call77, ptr %logger76, align 8, !tbaa !4
  %53 = load ptr, ptr %logger76, align 8, !tbaa !4
  %cmp78 = icmp ne ptr %53, null
  br i1 %cmp78, label %land.lhs.true80, label %if.end90

land.lhs.true80:                                  ; preds = %do.body75
  %54 = load ptr, ptr %logger76, align 8, !tbaa !4
  %vtable81 = getelementptr inbounds %struct.aws_logger, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %vtable81, align 8, !tbaa !8
  %get_log_level82 = getelementptr inbounds %struct.aws_logger_vtable, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %get_log_level82, align 8, !tbaa !10
  %57 = load ptr, ptr %logger76, align 8, !tbaa !4
  %call83 = call i32 %56(ptr noundef %57, i32 noundef 4099)
  %cmp84 = icmp uge i32 %call83, 2
  br i1 %cmp84, label %if.then86, label %if.end90

if.then86:                                        ; preds = %land.lhs.true80
  %58 = load ptr, ptr %logger76, align 8, !tbaa !4
  %vtable87 = getelementptr inbounds %struct.aws_logger, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %vtable87, align 8, !tbaa !8
  %log88 = getelementptr inbounds %struct.aws_logger_vtable, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %log88, align 8, !tbaa !12
  %61 = load ptr, ptr %logger76, align 8, !tbaa !4
  %62 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call89 = call i32 (ptr, i32, i32, ptr, ...) %60(ptr noundef %61, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.47, ptr noundef %62)
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %land.lhs.true80, %do.body75
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger76) #10
  br label %do.cond91

do.cond91:                                        ; preds = %if.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  %call93 = call i32 @aws_raise_error(i32 noundef 4105)
  %63 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %63, i32 noundef 6, i32 noundef 0, ptr noundef @s_invalid_client_stream_id_error)
  br label %if.end112

if.else:                                          ; preds = %if.then68
  br label %do.body94

do.body94:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger95) #10
  %call96 = call ptr @aws_logger_get()
  store ptr %call96, ptr %logger95, align 8, !tbaa !4
  %64 = load ptr, ptr %logger95, align 8, !tbaa !4
  %cmp97 = icmp ne ptr %64, null
  br i1 %cmp97, label %land.lhs.true99, label %if.end109

land.lhs.true99:                                  ; preds = %do.body94
  %65 = load ptr, ptr %logger95, align 8, !tbaa !4
  %vtable100 = getelementptr inbounds %struct.aws_logger, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %vtable100, align 8, !tbaa !8
  %get_log_level101 = getelementptr inbounds %struct.aws_logger_vtable, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %get_log_level101, align 8, !tbaa !10
  %68 = load ptr, ptr %logger95, align 8, !tbaa !4
  %call102 = call i32 %67(ptr noundef %68, i32 noundef 4099)
  %cmp103 = icmp uge i32 %call102, 3
  br i1 %cmp103, label %if.then105, label %if.end109

if.then105:                                       ; preds = %land.lhs.true99
  %69 = load ptr, ptr %logger95, align 8, !tbaa !4
  %vtable106 = getelementptr inbounds %struct.aws_logger, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %vtable106, align 8, !tbaa !8
  %log107 = getelementptr inbounds %struct.aws_logger_vtable, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %log107, align 8, !tbaa !12
  %72 = load ptr, ptr %logger95, align 8, !tbaa !4
  %73 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call108 = call i32 (ptr, i32, i32, ptr, ...) %71(ptr noundef %72, i32 noundef 3, i32 noundef 4099, ptr noundef @.str.48, ptr noundef %73)
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %land.lhs.true99, %do.body94
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger95) #10
  br label %do.cond110

do.cond110:                                       ; preds = %if.end109
  br label %do.end111

do.end111:                                        ; preds = %do.cond110
  br label %if.end112

if.end112:                                        ; preds = %do.end111, %do.end92
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %old_stream_id) #10
  br label %cleanup

if.end113:                                        ; preds = %lor.lhs.false
  %74 = load ptr, ptr %continuation_element, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %value, align 8, !tbaa !106
  store ptr %75, ptr %continuation, align 8, !tbaa !4
  br label %do.body114

do.body114:                                       ; preds = %if.end113
  %76 = load ptr, ptr %continuation, align 8, !tbaa !4
  %cmp115 = icmp ne ptr %76, null
  br i1 %cmp115, label %if.end118, label %if.then117

if.then117:                                       ; preds = %do.body114
  call void @aws_fatal_assert(ptr noundef @.str.49, ptr noundef @.str.7, i32 noundef 777) #11
  unreachable

if.end118:                                        ; preds = %do.body114
  br label %do.cond119

do.cond119:                                       ; preds = %if.end118
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  %77 = load ptr, ptr %continuation, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_continuation_acquire(ptr noundef %77)
  %78 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %stream_lock121 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %78, i32 0, i32 7
  %call122 = call i32 @aws_mutex_unlock(ptr noundef %stream_lock121)
  %79 = load ptr, ptr %continuation, align 8, !tbaa !4
  %continuation_fn = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %79, i32 0, i32 2
  %80 = load ptr, ptr %continuation_fn, align 8, !tbaa !82
  %81 = load ptr, ptr %continuation, align 8, !tbaa !4
  %82 = load ptr, ptr %continuation, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %user_data, align 8, !tbaa !86
  call void %80(ptr noundef %81, ptr noundef %message_args, ptr noundef %83)
  %84 = load ptr, ptr %continuation, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_continuation_release(ptr noundef %84)
  %85 = load i32, ptr %message_flags.addr, align 4, !tbaa !51
  %and = and i32 %85, 2
  %tobool123 = icmp ne i32 %and, 0
  br i1 %tobool123, label %if.then124, label %if.end149

if.then124:                                       ; preds = %do.end120
  br label %do.body125

do.body125:                                       ; preds = %if.then124
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger126) #10
  %call127 = call ptr @aws_logger_get()
  store ptr %call127, ptr %logger126, align 8, !tbaa !4
  %86 = load ptr, ptr %logger126, align 8, !tbaa !4
  %cmp128 = icmp ne ptr %86, null
  br i1 %cmp128, label %land.lhs.true130, label %if.end140

land.lhs.true130:                                 ; preds = %do.body125
  %87 = load ptr, ptr %logger126, align 8, !tbaa !4
  %vtable131 = getelementptr inbounds %struct.aws_logger, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %vtable131, align 8, !tbaa !8
  %get_log_level132 = getelementptr inbounds %struct.aws_logger_vtable, ptr %88, i32 0, i32 1
  %89 = load ptr, ptr %get_log_level132, align 8, !tbaa !10
  %90 = load ptr, ptr %logger126, align 8, !tbaa !4
  %call133 = call i32 %89(ptr noundef %90, i32 noundef 4099)
  %cmp134 = icmp uge i32 %call133, 5
  br i1 %cmp134, label %if.then136, label %if.end140

if.then136:                                       ; preds = %land.lhs.true130
  %91 = load ptr, ptr %logger126, align 8, !tbaa !4
  %vtable137 = getelementptr inbounds %struct.aws_logger, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %vtable137, align 8, !tbaa !8
  %log138 = getelementptr inbounds %struct.aws_logger_vtable, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %log138, align 8, !tbaa !12
  %94 = load ptr, ptr %logger126, align 8, !tbaa !4
  %95 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %continuation, align 8, !tbaa !4
  %call139 = call i32 (ptr, i32, i32, ptr, ...) %93(ptr noundef %94, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.50, ptr noundef %95, ptr noundef %96)
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %land.lhs.true130, %do.body125
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger126) #10
  br label %do.cond141

do.cond141:                                       ; preds = %if.end140
  br label %do.end142

do.end142:                                        ; preds = %do.cond141
  %97 = load ptr, ptr %continuation, align 8, !tbaa !4
  %is_closed = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %97, i32 0, i32 6
  call void @aws_atomic_store_int(ptr noundef %is_closed, i64 noundef 1)
  %98 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %stream_lock143 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %98, i32 0, i32 7
  %call144 = call i32 @aws_mutex_lock(ptr noundef %stream_lock143)
  %99 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %continuation_table145 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %99, i32 0, i32 1
  %call146 = call i32 @aws_hash_table_remove(ptr noundef %continuation_table145, ptr noundef %stream_id.addr, ptr noundef null, ptr noundef null)
  %100 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %stream_lock147 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %100, i32 0, i32 7
  %call148 = call i32 @aws_mutex_unlock(ptr noundef %stream_lock147)
  %101 = load ptr, ptr %continuation, align 8, !tbaa !4
  call void @s_complete_continuation(ptr noundef %101)
  br label %if.end149

if.end149:                                        ; preds = %do.end142, %do.end120
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %if.end112
  call void @llvm.lifetime.end.p0(i64 8, ptr %continuation_element) #10
  br label %cleanup150

cleanup150:                                       ; preds = %cleanup, %do.end62
  call void @llvm.lifetime.end.p0(i64 8, ptr %continuation) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup224 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup150
  br label %if.end223

if.else151:                                       ; preds = %if.end20
  %102 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  %cmp152 = icmp ule i32 %102, 1
  br i1 %cmp152, label %if.then157, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %if.else151
  %103 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  %cmp155 = icmp uge i32 %103, 8
  br i1 %cmp155, label %if.then157, label %if.end176

if.then157:                                       ; preds = %lor.lhs.false154, %if.else151
  br label %do.body158

do.body158:                                       ; preds = %if.then157
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger159) #10
  %call160 = call ptr @aws_logger_get()
  store ptr %call160, ptr %logger159, align 8, !tbaa !4
  %104 = load ptr, ptr %logger159, align 8, !tbaa !4
  %cmp161 = icmp ne ptr %104, null
  br i1 %cmp161, label %land.lhs.true163, label %if.end173

land.lhs.true163:                                 ; preds = %do.body158
  %105 = load ptr, ptr %logger159, align 8, !tbaa !4
  %vtable164 = getelementptr inbounds %struct.aws_logger, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %vtable164, align 8, !tbaa !8
  %get_log_level165 = getelementptr inbounds %struct.aws_logger_vtable, ptr %106, i32 0, i32 1
  %107 = load ptr, ptr %get_log_level165, align 8, !tbaa !10
  %108 = load ptr, ptr %logger159, align 8, !tbaa !4
  %call166 = call i32 %107(ptr noundef %108, i32 noundef 4099)
  %cmp167 = icmp uge i32 %call166, 2
  br i1 %cmp167, label %if.then169, label %if.end173

if.then169:                                       ; preds = %land.lhs.true163
  %109 = load ptr, ptr %logger159, align 8, !tbaa !4
  %vtable170 = getelementptr inbounds %struct.aws_logger, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %vtable170, align 8, !tbaa !8
  %log171 = getelementptr inbounds %struct.aws_logger_vtable, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %log171, align 8, !tbaa !12
  %112 = load ptr, ptr %logger159, align 8, !tbaa !4
  %113 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %114 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  %call172 = call i32 (ptr, i32, i32, ptr, ...) %111(ptr noundef %112, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.51, ptr noundef %113, i32 noundef %114)
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %land.lhs.true163, %do.body158
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger159) #10
  br label %do.cond174

do.cond174:                                       ; preds = %if.end173
  br label %do.end175

do.end175:                                        ; preds = %do.cond174
  %115 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %115, i32 noundef 6, i32 noundef 0, ptr noundef @s_invalid_message_type_error)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup224

if.end176:                                        ; preds = %lor.lhs.false154
  %116 = load i32, ptr %message_type.addr, align 4, !tbaa !51
  %cmp177 = icmp eq i32 %116, 5
  br i1 %cmp177, label %if.then179, label %if.end221

if.then179:                                       ; preds = %if.end176
  %117 = load i64, ptr %handshake_complete, align 8, !tbaa !50
  %cmp180 = icmp ne i64 %117, 1
  br i1 %cmp180, label %if.then182, label %if.end201

if.then182:                                       ; preds = %if.then179
  br label %do.body183

do.body183:                                       ; preds = %if.then182
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger184) #10
  %call185 = call ptr @aws_logger_get()
  store ptr %call185, ptr %logger184, align 8, !tbaa !4
  %118 = load ptr, ptr %logger184, align 8, !tbaa !4
  %cmp186 = icmp ne ptr %118, null
  br i1 %cmp186, label %land.lhs.true188, label %if.end198

land.lhs.true188:                                 ; preds = %do.body183
  %119 = load ptr, ptr %logger184, align 8, !tbaa !4
  %vtable189 = getelementptr inbounds %struct.aws_logger, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %vtable189, align 8, !tbaa !8
  %get_log_level190 = getelementptr inbounds %struct.aws_logger_vtable, ptr %120, i32 0, i32 1
  %121 = load ptr, ptr %get_log_level190, align 8, !tbaa !10
  %122 = load ptr, ptr %logger184, align 8, !tbaa !4
  %call191 = call i32 %121(ptr noundef %122, i32 noundef 4099)
  %cmp192 = icmp uge i32 %call191, 2
  br i1 %cmp192, label %if.then194, label %if.end198

if.then194:                                       ; preds = %land.lhs.true188
  %123 = load ptr, ptr %logger184, align 8, !tbaa !4
  %vtable195 = getelementptr inbounds %struct.aws_logger, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %vtable195, align 8, !tbaa !8
  %log196 = getelementptr inbounds %struct.aws_logger_vtable, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %log196, align 8, !tbaa !12
  %126 = load ptr, ptr %logger184, align 8, !tbaa !4
  %127 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call197 = call i32 (ptr, i32, i32, ptr, ...) %125(ptr noundef %126, i32 noundef 2, i32 noundef 4099, ptr noundef @.str.52, ptr noundef %127)
  br label %if.end198

if.end198:                                        ; preds = %if.then194, %land.lhs.true188, %do.body183
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger184) #10
  br label %do.cond199

do.cond199:                                       ; preds = %if.end198
  br label %do.end200

do.end200:                                        ; preds = %do.cond199
  %128 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  call void @s_send_connection_level_error(ptr noundef %128, i32 noundef 6, i32 noundef 0, ptr noundef @s_connect_not_completed_error)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup224

if.end201:                                        ; preds = %if.then179
  %129 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %handshake_state202 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %129, i32 0, i32 9
  call void @aws_atomic_store_int(ptr noundef %handshake_state202, i64 noundef 2)
  br label %do.body203

do.body203:                                       ; preds = %if.end201
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger204) #10
  %call205 = call ptr @aws_logger_get()
  store ptr %call205, ptr %logger204, align 8, !tbaa !4
  %130 = load ptr, ptr %logger204, align 8, !tbaa !4
  %cmp206 = icmp ne ptr %130, null
  br i1 %cmp206, label %land.lhs.true208, label %if.end218

land.lhs.true208:                                 ; preds = %do.body203
  %131 = load ptr, ptr %logger204, align 8, !tbaa !4
  %vtable209 = getelementptr inbounds %struct.aws_logger, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %vtable209, align 8, !tbaa !8
  %get_log_level210 = getelementptr inbounds %struct.aws_logger_vtable, ptr %132, i32 0, i32 1
  %133 = load ptr, ptr %get_log_level210, align 8, !tbaa !10
  %134 = load ptr, ptr %logger204, align 8, !tbaa !4
  %call211 = call i32 %133(ptr noundef %134, i32 noundef 4099)
  %cmp212 = icmp uge i32 %call211, 4
  br i1 %cmp212, label %if.then214, label %if.end218

if.then214:                                       ; preds = %land.lhs.true208
  %135 = load ptr, ptr %logger204, align 8, !tbaa !4
  %vtable215 = getelementptr inbounds %struct.aws_logger, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %vtable215, align 8, !tbaa !8
  %log216 = getelementptr inbounds %struct.aws_logger_vtable, ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %log216, align 8, !tbaa !12
  %138 = load ptr, ptr %logger204, align 8, !tbaa !4
  %139 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call217 = call i32 (ptr, i32, i32, ptr, ...) %137(ptr noundef %138, i32 noundef 4, i32 noundef 4099, ptr noundef @.str.53, ptr noundef %139)
  br label %if.end218

if.end218:                                        ; preds = %if.then214, %land.lhs.true208, %do.body203
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger204) #10
  br label %do.cond219

do.cond219:                                       ; preds = %if.end218
  br label %do.end220

do.end220:                                        ; preds = %do.cond219
  br label %if.end221

if.end221:                                        ; preds = %do.end220, %if.end176
  %140 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %on_connection_protocol_message = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %140, i32 0, i32 12
  %141 = load ptr, ptr %on_connection_protocol_message, align 8, !tbaa !28
  %142 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %143 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %user_data222 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %143, i32 0, i32 14
  %144 = load ptr, ptr %user_data222, align 8, !tbaa !32
  call void %141(ptr noundef %142, ptr noundef %message_args, ptr noundef %144)
  br label %if.end223

if.end223:                                        ; preds = %if.end221, %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup224

cleanup224:                                       ; preds = %if.end223, %do.end200, %do.end175, %cleanup150, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %handshake_complete) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %message_args) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %payload_buf) #10
  %cleanup.dest227 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest227, label %unreachable [
    i32 0, label %cleanup.cont228
    i32 1, label %cleanup.cont228
  ]

cleanup.cont228:                                  ; preds = %cleanup224, %cleanup224
  ret void

unreachable:                                      ; preds = %cleanup224
  unreachable
}

declare void @aws_event_stream_headers_list_cleanup(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !50
  store i64 %b, ptr %b.addr, align 8, !tbaa !50
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !50
  %1 = load i64, ptr %b.addr, align 8, !tbaa !50
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_mul_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !50
  store i64 %b, ptr %b.addr, align 8, !tbaa !50
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !50
  %1 = load i64, ptr %b.addr, align 8, !tbaa !50
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

declare void @aws_byte_buf_from_array(ptr sret(%struct.aws_byte_buf) align 8, ptr noundef, i64 noundef) #2

declare void @aws_event_stream_create_string_header(ptr sret(%struct.aws_event_stream_header_value_pair) align 8, i64, ptr, i64, ptr) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal void @s_connection_error_message_flush_fn(i32 noundef %error_code, ptr noundef %user_data) #0 {
entry:
  %error_code.addr = alloca i32, align 4
  %user_data.addr = alloca ptr, align 8
  %connection = alloca ptr, align 8
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !51
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection) #10
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %1, ptr %connection, align 8, !tbaa !4
  %2 = load ptr, ptr %connection, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_connection_close(ptr noundef %2, i32 noundef 4105)
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection) #10
  ret void
}

declare ptr @aws_event_stream_message_payload(ptr noundef) #2

declare i32 @aws_event_stream_message_payload_len(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_array_list_length(ptr noalias noundef %list) #3 {
entry:
  %list.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %length, align 8, !tbaa !108
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !96
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.54, ptr noundef @.str.35, i32 noundef 342) #11
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !108
  store i64 %5, ptr %len, align 8, !tbaa !50
  %6 = load i64, ptr %len, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10
  ret i64 %6
}

declare i32 @aws_hash_table_find(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_atomic_store_int(ptr noundef %var, i64 noundef %n) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !50
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !50
  call void @aws_atomic_store_int_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_complete_continuation(ptr noundef %token) #0 {
entry:
  %token.addr = alloca ptr, align 8
  %expect_not_complete = alloca i64, align 8
  %logger = alloca ptr, align 8
  store ptr %token, ptr %token.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %expect_not_complete) #10
  store i64 0, ptr %expect_not_complete, align 8, !tbaa !50
  %0 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %is_complete = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %0, i32 0, i32 7
  %call = call zeroext i1 @aws_atomic_compare_exchange_int(ptr noundef %is_complete, ptr noundef %expect_not_complete, i64 noundef 1)
  br i1 %call, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %4(ptr noundef %5, i32 noundef 4099)
  %cmp3 = icmp uge i32 %call2, 5
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable5, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !12
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %stream_id = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %stream_id, align 8, !tbaa !87
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.58, ptr noundef %10, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %stream_id7 = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %stream_id7, align 8, !tbaa !87
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.end
  %15 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %closed_fn = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %closed_fn, align 8, !tbaa !84
  %17 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %user_data, align 8, !tbaa !86
  call void %16(ptr noundef %17, ptr noundef %19)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end
  %20 = load ptr, ptr %token.addr, align 8, !tbaa !4
  call void @aws_event_stream_rpc_client_continuation_release(ptr noundef %20)
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %expect_not_complete) #10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_atomic_store_int_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %memory_order) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %memory_order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !50
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !55
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !55
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !50
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !50
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  store atomic i64 %3, ptr %0 monotonic, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %4 = load i64, ptr %.atomictmp, align 8
  store atomic i64 %4, ptr %0 release, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %5 = load i64, ptr %.atomictmp, align 8
  store atomic i64 %5, ptr %0 seq_cst, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_atomic_priv_xlate_order(i32 noundef %order) #3 {
entry:
  %retval = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !55
  %0 = load i32, ptr %order.addr, align 4, !tbaa !55
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #12
  unreachable

return:                                           ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noreturn nounwind
declare void @abort() #9

declare void @aws_channel_release_hold(ptr noundef) #2

declare void @aws_hash_table_clean_up(ptr noundef) #2

declare void @aws_client_bootstrap_release(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @aws_atomic_compare_exchange_int_explicit(ptr noundef %var, ptr noundef %expected, i64 noundef %desired, i32 noundef %order_success, i32 noundef %order_failure) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca i64, align 8
  %order_success.addr = alloca i32, align 4
  %order_failure.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %cmpxchg.bool = alloca i8, align 1
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !4
  store i64 %desired, ptr %desired.addr, align 8, !tbaa !50
  store i32 %order_success, ptr %order_success.addr, align 4, !tbaa !55
  store i32 %order_failure, ptr %order_failure.addr, align 4, !tbaa !55
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load i32, ptr %order_success.addr, align 4, !tbaa !55
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load ptr, ptr %expected.addr, align 8, !tbaa !4
  %3 = load i64, ptr %desired.addr, align 8, !tbaa !50
  store i64 %3, ptr %.atomictmp, align 8, !tbaa !50
  %4 = load i32, ptr %order_failure.addr, align 4, !tbaa !55
  %call1 = call i32 @aws_atomic_priv_xlate_order(i32 noundef %4)
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  switch i32 %call1, label %monotonic_fail [
    i32 1, label %acquire_fail
    i32 2, label %acquire_fail
    i32 5, label %seqcst_fail
  ]

acquire:                                          ; preds = %entry, %entry
  switch i32 %call1, label %monotonic_fail9 [
    i32 1, label %acquire_fail10
    i32 2, label %acquire_fail10
    i32 5, label %seqcst_fail11
  ]

release:                                          ; preds = %entry
  switch i32 %call1, label %monotonic_fail22 [
    i32 1, label %acquire_fail23
    i32 2, label %acquire_fail23
    i32 5, label %seqcst_fail24
  ]

acqrel:                                           ; preds = %entry
  switch i32 %call1, label %monotonic_fail35 [
    i32 1, label %acquire_fail36
    i32 2, label %acquire_fail36
    i32 5, label %seqcst_fail37
  ]

seqcst:                                           ; preds = %entry
  switch i32 %call1, label %monotonic_fail48 [
    i32 1, label %acquire_fail49
    i32 2, label %acquire_fail49
    i32 5, label %seqcst_fail50
  ]

atomic.continue:                                  ; preds = %atomic.continue51, %atomic.continue38, %atomic.continue25, %atomic.continue12, %atomic.continue2
  %5 = load i8, ptr %cmpxchg.bool, align 1, !tbaa !105, !range !53, !noundef !54
  %tobool = trunc i8 %5 to i1
  ret i1 %tobool

monotonic_fail:                                   ; preds = %monotonic
  %6 = load i64, ptr %2, align 8
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = cmpxchg ptr %0, i64 %6, i64 %7 monotonic monotonic, align 8
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  br i1 %10, label %cmpxchg.continue, label %cmpxchg.store_expected

acquire_fail:                                     ; preds = %monotonic, %monotonic
  %11 = load i64, ptr %2, align 8
  %12 = load i64, ptr %.atomictmp, align 8
  %13 = cmpxchg ptr %0, i64 %11, i64 %12 monotonic acquire, align 8
  %14 = extractvalue { i64, i1 } %13, 0
  %15 = extractvalue { i64, i1 } %13, 1
  br i1 %15, label %cmpxchg.continue4, label %cmpxchg.store_expected3

seqcst_fail:                                      ; preds = %monotonic
  %16 = load i64, ptr %2, align 8
  %17 = load i64, ptr %.atomictmp, align 8
  %18 = cmpxchg ptr %0, i64 %16, i64 %17 monotonic seq_cst, align 8
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %20, label %cmpxchg.continue7, label %cmpxchg.store_expected6

atomic.continue2:                                 ; preds = %cmpxchg.continue7, %cmpxchg.continue4, %cmpxchg.continue
  br label %atomic.continue

cmpxchg.store_expected:                           ; preds = %monotonic_fail
  store i64 %9, ptr %2, align 8
  br label %cmpxchg.continue

cmpxchg.continue:                                 ; preds = %cmpxchg.store_expected, %monotonic_fail
  %frombool = zext i1 %10 to i8
  store i8 %frombool, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue2

cmpxchg.store_expected3:                          ; preds = %acquire_fail
  store i64 %14, ptr %2, align 8
  br label %cmpxchg.continue4

cmpxchg.continue4:                                ; preds = %cmpxchg.store_expected3, %acquire_fail
  %frombool5 = zext i1 %15 to i8
  store i8 %frombool5, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue2

cmpxchg.store_expected6:                          ; preds = %seqcst_fail
  store i64 %19, ptr %2, align 8
  br label %cmpxchg.continue7

cmpxchg.continue7:                                ; preds = %cmpxchg.store_expected6, %seqcst_fail
  %frombool8 = zext i1 %20 to i8
  store i8 %frombool8, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue2

monotonic_fail9:                                  ; preds = %acquire
  %21 = load i64, ptr %2, align 8
  %22 = load i64, ptr %.atomictmp, align 8
  %23 = cmpxchg ptr %0, i64 %21, i64 %22 acquire monotonic, align 8
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = extractvalue { i64, i1 } %23, 1
  br i1 %25, label %cmpxchg.continue14, label %cmpxchg.store_expected13

acquire_fail10:                                   ; preds = %acquire, %acquire
  %26 = load i64, ptr %2, align 8
  %27 = load i64, ptr %.atomictmp, align 8
  %28 = cmpxchg ptr %0, i64 %26, i64 %27 acquire acquire, align 8
  %29 = extractvalue { i64, i1 } %28, 0
  %30 = extractvalue { i64, i1 } %28, 1
  br i1 %30, label %cmpxchg.continue17, label %cmpxchg.store_expected16

seqcst_fail11:                                    ; preds = %acquire
  %31 = load i64, ptr %2, align 8
  %32 = load i64, ptr %.atomictmp, align 8
  %33 = cmpxchg ptr %0, i64 %31, i64 %32 acquire seq_cst, align 8
  %34 = extractvalue { i64, i1 } %33, 0
  %35 = extractvalue { i64, i1 } %33, 1
  br i1 %35, label %cmpxchg.continue20, label %cmpxchg.store_expected19

atomic.continue12:                                ; preds = %cmpxchg.continue20, %cmpxchg.continue17, %cmpxchg.continue14
  br label %atomic.continue

cmpxchg.store_expected13:                         ; preds = %monotonic_fail9
  store i64 %24, ptr %2, align 8
  br label %cmpxchg.continue14

cmpxchg.continue14:                               ; preds = %cmpxchg.store_expected13, %monotonic_fail9
  %frombool15 = zext i1 %25 to i8
  store i8 %frombool15, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue12

cmpxchg.store_expected16:                         ; preds = %acquire_fail10
  store i64 %29, ptr %2, align 8
  br label %cmpxchg.continue17

cmpxchg.continue17:                               ; preds = %cmpxchg.store_expected16, %acquire_fail10
  %frombool18 = zext i1 %30 to i8
  store i8 %frombool18, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue12

cmpxchg.store_expected19:                         ; preds = %seqcst_fail11
  store i64 %34, ptr %2, align 8
  br label %cmpxchg.continue20

cmpxchg.continue20:                               ; preds = %cmpxchg.store_expected19, %seqcst_fail11
  %frombool21 = zext i1 %35 to i8
  store i8 %frombool21, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue12

monotonic_fail22:                                 ; preds = %release
  %36 = load i64, ptr %2, align 8
  %37 = load i64, ptr %.atomictmp, align 8
  %38 = cmpxchg ptr %0, i64 %36, i64 %37 release monotonic, align 8
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  br i1 %40, label %cmpxchg.continue27, label %cmpxchg.store_expected26

acquire_fail23:                                   ; preds = %release, %release
  %41 = load i64, ptr %2, align 8
  %42 = load i64, ptr %.atomictmp, align 8
  %43 = cmpxchg ptr %0, i64 %41, i64 %42 release acquire, align 8
  %44 = extractvalue { i64, i1 } %43, 0
  %45 = extractvalue { i64, i1 } %43, 1
  br i1 %45, label %cmpxchg.continue30, label %cmpxchg.store_expected29

seqcst_fail24:                                    ; preds = %release
  %46 = load i64, ptr %2, align 8
  %47 = load i64, ptr %.atomictmp, align 8
  %48 = cmpxchg ptr %0, i64 %46, i64 %47 release seq_cst, align 8
  %49 = extractvalue { i64, i1 } %48, 0
  %50 = extractvalue { i64, i1 } %48, 1
  br i1 %50, label %cmpxchg.continue33, label %cmpxchg.store_expected32

atomic.continue25:                                ; preds = %cmpxchg.continue33, %cmpxchg.continue30, %cmpxchg.continue27
  br label %atomic.continue

cmpxchg.store_expected26:                         ; preds = %monotonic_fail22
  store i64 %39, ptr %2, align 8
  br label %cmpxchg.continue27

cmpxchg.continue27:                               ; preds = %cmpxchg.store_expected26, %monotonic_fail22
  %frombool28 = zext i1 %40 to i8
  store i8 %frombool28, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue25

cmpxchg.store_expected29:                         ; preds = %acquire_fail23
  store i64 %44, ptr %2, align 8
  br label %cmpxchg.continue30

cmpxchg.continue30:                               ; preds = %cmpxchg.store_expected29, %acquire_fail23
  %frombool31 = zext i1 %45 to i8
  store i8 %frombool31, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue25

cmpxchg.store_expected32:                         ; preds = %seqcst_fail24
  store i64 %49, ptr %2, align 8
  br label %cmpxchg.continue33

cmpxchg.continue33:                               ; preds = %cmpxchg.store_expected32, %seqcst_fail24
  %frombool34 = zext i1 %50 to i8
  store i8 %frombool34, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue25

monotonic_fail35:                                 ; preds = %acqrel
  %51 = load i64, ptr %2, align 8
  %52 = load i64, ptr %.atomictmp, align 8
  %53 = cmpxchg ptr %0, i64 %51, i64 %52 acq_rel monotonic, align 8
  %54 = extractvalue { i64, i1 } %53, 0
  %55 = extractvalue { i64, i1 } %53, 1
  br i1 %55, label %cmpxchg.continue40, label %cmpxchg.store_expected39

acquire_fail36:                                   ; preds = %acqrel, %acqrel
  %56 = load i64, ptr %2, align 8
  %57 = load i64, ptr %.atomictmp, align 8
  %58 = cmpxchg ptr %0, i64 %56, i64 %57 acq_rel acquire, align 8
  %59 = extractvalue { i64, i1 } %58, 0
  %60 = extractvalue { i64, i1 } %58, 1
  br i1 %60, label %cmpxchg.continue43, label %cmpxchg.store_expected42

seqcst_fail37:                                    ; preds = %acqrel
  %61 = load i64, ptr %2, align 8
  %62 = load i64, ptr %.atomictmp, align 8
  %63 = cmpxchg ptr %0, i64 %61, i64 %62 acq_rel seq_cst, align 8
  %64 = extractvalue { i64, i1 } %63, 0
  %65 = extractvalue { i64, i1 } %63, 1
  br i1 %65, label %cmpxchg.continue46, label %cmpxchg.store_expected45

atomic.continue38:                                ; preds = %cmpxchg.continue46, %cmpxchg.continue43, %cmpxchg.continue40
  br label %atomic.continue

cmpxchg.store_expected39:                         ; preds = %monotonic_fail35
  store i64 %54, ptr %2, align 8
  br label %cmpxchg.continue40

cmpxchg.continue40:                               ; preds = %cmpxchg.store_expected39, %monotonic_fail35
  %frombool41 = zext i1 %55 to i8
  store i8 %frombool41, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue38

cmpxchg.store_expected42:                         ; preds = %acquire_fail36
  store i64 %59, ptr %2, align 8
  br label %cmpxchg.continue43

cmpxchg.continue43:                               ; preds = %cmpxchg.store_expected42, %acquire_fail36
  %frombool44 = zext i1 %60 to i8
  store i8 %frombool44, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue38

cmpxchg.store_expected45:                         ; preds = %seqcst_fail37
  store i64 %64, ptr %2, align 8
  br label %cmpxchg.continue46

cmpxchg.continue46:                               ; preds = %cmpxchg.store_expected45, %seqcst_fail37
  %frombool47 = zext i1 %65 to i8
  store i8 %frombool47, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue38

monotonic_fail48:                                 ; preds = %seqcst
  %66 = load i64, ptr %2, align 8
  %67 = load i64, ptr %.atomictmp, align 8
  %68 = cmpxchg ptr %0, i64 %66, i64 %67 seq_cst monotonic, align 8
  %69 = extractvalue { i64, i1 } %68, 0
  %70 = extractvalue { i64, i1 } %68, 1
  br i1 %70, label %cmpxchg.continue53, label %cmpxchg.store_expected52

acquire_fail49:                                   ; preds = %seqcst, %seqcst
  %71 = load i64, ptr %2, align 8
  %72 = load i64, ptr %.atomictmp, align 8
  %73 = cmpxchg ptr %0, i64 %71, i64 %72 seq_cst acquire, align 8
  %74 = extractvalue { i64, i1 } %73, 0
  %75 = extractvalue { i64, i1 } %73, 1
  br i1 %75, label %cmpxchg.continue56, label %cmpxchg.store_expected55

seqcst_fail50:                                    ; preds = %seqcst
  %76 = load i64, ptr %2, align 8
  %77 = load i64, ptr %.atomictmp, align 8
  %78 = cmpxchg ptr %0, i64 %76, i64 %77 seq_cst seq_cst, align 8
  %79 = extractvalue { i64, i1 } %78, 0
  %80 = extractvalue { i64, i1 } %78, 1
  br i1 %80, label %cmpxchg.continue59, label %cmpxchg.store_expected58

atomic.continue51:                                ; preds = %cmpxchg.continue59, %cmpxchg.continue56, %cmpxchg.continue53
  br label %atomic.continue

cmpxchg.store_expected52:                         ; preds = %monotonic_fail48
  store i64 %69, ptr %2, align 8
  br label %cmpxchg.continue53

cmpxchg.continue53:                               ; preds = %cmpxchg.store_expected52, %monotonic_fail48
  %frombool54 = zext i1 %70 to i8
  store i8 %frombool54, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue51

cmpxchg.store_expected55:                         ; preds = %acquire_fail49
  store i64 %74, ptr %2, align 8
  br label %cmpxchg.continue56

cmpxchg.continue56:                               ; preds = %cmpxchg.store_expected55, %acquire_fail49
  %frombool57 = zext i1 %75 to i8
  store i8 %frombool57, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue51

cmpxchg.store_expected58:                         ; preds = %seqcst_fail50
  store i64 %79, ptr %2, align 8
  br label %cmpxchg.continue59

cmpxchg.continue59:                               ; preds = %cmpxchg.store_expected58, %seqcst_fail50
  %frombool60 = zext i1 %80 to i8
  store i8 %frombool60, ptr %cmpxchg.bool, align 1, !tbaa !105
  br label %atomic.continue51
}

declare i32 @aws_hash_table_foreach(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_mark_each_continuation_closed(ptr noundef %context, ptr noundef %p_element) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %p_element.addr = alloca ptr, align 8
  %continuation = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %p_element, ptr %p_element.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %continuation) #10
  %1 = load ptr, ptr %p_element.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %value, align 8, !tbaa !106
  store ptr %2, ptr %continuation, align 8, !tbaa !4
  %3 = load ptr, ptr %continuation, align 8, !tbaa !4
  %is_closed = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %3, i32 0, i32 6
  call void @aws_atomic_store_int(ptr noundef %is_closed, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %continuation) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @s_complete_and_clear_each_continuation(ptr noundef %context, ptr noundef %p_element) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %p_element.addr = alloca ptr, align 8
  %continuation = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %p_element, ptr %p_element.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %continuation) #10
  %1 = load ptr, ptr %p_element.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %value, align 8, !tbaa !106
  store ptr %2, ptr %continuation, align 8, !tbaa !4
  %3 = load ptr, ptr %continuation, align 8, !tbaa !4
  call void @s_complete_continuation(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %continuation) #10
  ret i32 3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_atomic_load_int_explicit(ptr noundef %var, i32 noundef %memory_order) #3 {
entry:
  %var.addr = alloca ptr, align 8
  %memory_order.addr = alloca i32, align 4
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !55
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !55
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %2 = load atomic i64, ptr %0 monotonic, align 8
  store i64 %2, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i64, ptr %0 acquire, align 8
  store i64 %3, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %4 = load atomic i64, ptr %0 seq_cst, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load i64, ptr %atomic-temp, align 8, !tbaa !50
  ret i64 %5
}

declare void @aws_raise_error_private(i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !50
  store i64 %b, ptr %b.addr, align 8, !tbaa !50
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !50
  %1 = load i64, ptr %b.addr, align 8, !tbaa !50
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_add_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_push_back(ptr noalias noundef %list, ptr noundef %val) #3 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %err_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_code) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %2)
  %call1 = call i32 @aws_array_list_set_at(ptr noundef %0, ptr noundef %1, i64 noundef %call)
  store i32 %call1, ptr %err_code, align 4, !tbaa !51
  %3 = load i32, ptr %err_code, align 4, !tbaa !51
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !100
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !51
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #10
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @aws_event_stream_add_int32_header(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare i32 @aws_event_stream_add_string_header(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i8 noundef signext) #2

declare i32 @aws_event_stream_message_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_clean_up(ptr noalias noundef %list) #3 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !100
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !96
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc2, align 8, !tbaa !100
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !96
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

declare i32 @aws_event_stream_channel_handler_write_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_on_protocol_message_written_fn(ptr noundef %message, i32 noundef %error_code, ptr noundef %user_data) #0 {
entry:
  %message.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %user_data.addr = alloca ptr, align 8
  %message_args = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger8 = alloca ptr, align 8
  %logger27 = alloca ptr, align 8
  %logger66 = alloca ptr, align 8
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !51
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %message.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %message_args) #10
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %1, ptr %message_args, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #10
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 4099)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %connection, align 8, !tbaa !65
  %13 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.80, ptr noundef %12, ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %message_args, align 8, !tbaa !4
  %message_type = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %message_type, align 8, !tbaa !64
  %cmp5 = icmp eq i32 %15, 4
  br i1 %cmp5, label %if.then6, label %if.end24

if.then6:                                         ; preds = %do.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger8) #10
  %call9 = call ptr @aws_logger_get()
  store ptr %call9, ptr %logger8, align 8, !tbaa !4
  %16 = load ptr, ptr %logger8, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %16, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end21

land.lhs.true11:                                  ; preds = %do.body7
  %17 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable12 = getelementptr inbounds %struct.aws_logger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vtable12, align 8, !tbaa !8
  %get_log_level13 = getelementptr inbounds %struct.aws_logger_vtable, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %get_log_level13, align 8, !tbaa !10
  %20 = load ptr, ptr %logger8, align 8, !tbaa !4
  %call14 = call i32 %19(ptr noundef %20, i32 noundef 4099)
  %cmp15 = icmp uge i32 %call14, 6
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %land.lhs.true11
  %21 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %vtable17, align 8, !tbaa !8
  %log18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %log18, align 8, !tbaa !12
  %24 = load ptr, ptr %logger8, align 8, !tbaa !4
  %25 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection19 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %connection19, align 8, !tbaa !65
  %call20 = call i32 (ptr, i32, i32, ptr, ...) %23(ptr noundef %24, i32 noundef 6, i32 noundef 4099, ptr noundef @.str.81, ptr noundef %26)
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %land.lhs.true11, %do.body7
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger8) #10
  br label %do.cond22

do.cond22:                                        ; preds = %if.end21
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %do.end
  %27 = load ptr, ptr %message_args, align 8, !tbaa !4
  %end_stream = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %27, i32 0, i32 7
  %28 = load i8, ptr %end_stream, align 8, !tbaa !69, !range !53, !noundef !54
  %tobool = trunc i8 %28 to i1
  br i1 %tobool, label %if.then25, label %if.end61

if.then25:                                        ; preds = %if.end24
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger27) #10
  %call28 = call ptr @aws_logger_get()
  store ptr %call28, ptr %logger27, align 8, !tbaa !4
  %29 = load ptr, ptr %logger27, align 8, !tbaa !4
  %cmp29 = icmp ne ptr %29, null
  br i1 %cmp29, label %land.lhs.true30, label %if.end40

land.lhs.true30:                                  ; preds = %do.body26
  %30 = load ptr, ptr %logger27, align 8, !tbaa !4
  %vtable31 = getelementptr inbounds %struct.aws_logger, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %vtable31, align 8, !tbaa !8
  %get_log_level32 = getelementptr inbounds %struct.aws_logger_vtable, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %get_log_level32, align 8, !tbaa !10
  %33 = load ptr, ptr %logger27, align 8, !tbaa !4
  %call33 = call i32 %32(ptr noundef %33, i32 noundef 4099)
  %cmp34 = icmp uge i32 %call33, 5
  br i1 %cmp34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %land.lhs.true30
  %34 = load ptr, ptr %logger27, align 8, !tbaa !4
  %vtable36 = getelementptr inbounds %struct.aws_logger, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %vtable36, align 8, !tbaa !8
  %log37 = getelementptr inbounds %struct.aws_logger_vtable, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %log37, align 8, !tbaa !12
  %37 = load ptr, ptr %logger27, align 8, !tbaa !4
  %38 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection38 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %connection38, align 8, !tbaa !65
  %40 = load ptr, ptr %message_args, align 8, !tbaa !4
  %continuation = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %continuation, align 8, !tbaa !67
  %call39 = call i32 (ptr, i32, i32, ptr, ...) %36(ptr noundef %37, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.82, ptr noundef %39, ptr noundef %41)
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %land.lhs.true30, %do.body26
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger27) #10
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %42 = load ptr, ptr %message_args, align 8, !tbaa !4
  %continuation44 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %continuation44, align 8, !tbaa !67
  %tobool45 = icmp ne ptr %43, null
  br i1 %tobool45, label %land.lhs.true46, label %if.then47

land.lhs.true46:                                  ; preds = %do.body43
  br i1 true, label %if.end48, label %if.then47

if.then47:                                        ; preds = %land.lhs.true46, %do.body43
  call void @aws_fatal_assert(ptr noundef @.str.84, ptr noundef @.str.7, i32 noundef 434) #11
  unreachable

if.end48:                                         ; preds = %land.lhs.true46
  br label %do.cond49

do.cond49:                                        ; preds = %if.end48
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  %44 = load ptr, ptr %message_args, align 8, !tbaa !4
  %continuation51 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %continuation51, align 8, !tbaa !67
  %is_closed = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %45, i32 0, i32 6
  call void @aws_atomic_store_int(ptr noundef %is_closed, i64 noundef 1)
  %46 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection52 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %connection52, align 8, !tbaa !65
  %stream_lock = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %47, i32 0, i32 7
  %call53 = call i32 @aws_mutex_lock(ptr noundef %stream_lock)
  %48 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection54 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %connection54, align 8, !tbaa !65
  %continuation_table = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %message_args, align 8, !tbaa !4
  %continuation55 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %continuation55, align 8, !tbaa !67
  %stream_id = getelementptr inbounds %struct.aws_event_stream_rpc_client_continuation_token, ptr %51, i32 0, i32 0
  %call56 = call i32 @aws_hash_table_remove(ptr noundef %continuation_table, ptr noundef %stream_id, ptr noundef null, ptr noundef null)
  %52 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection57 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %connection57, align 8, !tbaa !65
  %stream_lock58 = getelementptr inbounds %struct.aws_event_stream_rpc_client_connection, ptr %53, i32 0, i32 7
  %call59 = call i32 @aws_mutex_unlock(ptr noundef %stream_lock58)
  %54 = load ptr, ptr %message_args, align 8, !tbaa !4
  %continuation60 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %54, i32 0, i32 4
  %55 = load ptr, ptr %continuation60, align 8, !tbaa !67
  call void @s_complete_continuation(ptr noundef %55)
  br label %if.end61

if.end61:                                         ; preds = %do.end50, %if.end24
  %56 = load ptr, ptr %message_args, align 8, !tbaa !4
  %flush_fn = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %56, i32 0, i32 5
  %57 = load ptr, ptr %flush_fn, align 8, !tbaa !66
  %58 = load i32, ptr %error_code.addr, align 4, !tbaa !51
  %59 = load ptr, ptr %message_args, align 8, !tbaa !4
  %user_data62 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %59, i32 0, i32 6
  %60 = load ptr, ptr %user_data62, align 8, !tbaa !63
  call void %57(i32 noundef %58, ptr noundef %60)
  %61 = load ptr, ptr %message_args, align 8, !tbaa !4
  %terminate_connection = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %61, i32 0, i32 8
  %62 = load i8, ptr %terminate_connection, align 1, !tbaa !70, !range !53, !noundef !54
  %tobool63 = trunc i8 %62 to i1
  br i1 %tobool63, label %if.then64, label %if.end83

if.then64:                                        ; preds = %if.end61
  br label %do.body65

do.body65:                                        ; preds = %if.then64
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger66) #10
  %call67 = call ptr @aws_logger_get()
  store ptr %call67, ptr %logger66, align 8, !tbaa !4
  %63 = load ptr, ptr %logger66, align 8, !tbaa !4
  %cmp68 = icmp ne ptr %63, null
  br i1 %cmp68, label %land.lhs.true69, label %if.end79

land.lhs.true69:                                  ; preds = %do.body65
  %64 = load ptr, ptr %logger66, align 8, !tbaa !4
  %vtable70 = getelementptr inbounds %struct.aws_logger, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %vtable70, align 8, !tbaa !8
  %get_log_level71 = getelementptr inbounds %struct.aws_logger_vtable, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %get_log_level71, align 8, !tbaa !10
  %67 = load ptr, ptr %logger66, align 8, !tbaa !4
  %call72 = call i32 %66(ptr noundef %67, i32 noundef 4099)
  %cmp73 = icmp uge i32 %call72, 5
  br i1 %cmp73, label %if.then74, label %if.end79

if.then74:                                        ; preds = %land.lhs.true69
  %68 = load ptr, ptr %logger66, align 8, !tbaa !4
  %vtable75 = getelementptr inbounds %struct.aws_logger, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %vtable75, align 8, !tbaa !8
  %log76 = getelementptr inbounds %struct.aws_logger_vtable, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %log76, align 8, !tbaa !12
  %71 = load ptr, ptr %logger66, align 8, !tbaa !4
  %72 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection77 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %72, i32 0, i32 3
  %73 = load ptr, ptr %connection77, align 8, !tbaa !65
  %call78 = call i32 (ptr, i32, i32, ptr, ...) %70(ptr noundef %71, i32 noundef 5, i32 noundef 4099, ptr noundef @.str.85, ptr noundef %73)
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %land.lhs.true69, %do.body65
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger66) #10
  br label %do.cond80

do.cond80:                                        ; preds = %if.end79
  br label %do.end81

do.end81:                                         ; preds = %do.cond80
  %74 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection82 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %74, i32 0, i32 3
  %75 = load ptr, ptr %connection82, align 8, !tbaa !65
  call void @aws_event_stream_rpc_client_connection_close(ptr noundef %75, i32 noundef 0)
  br label %if.end83

if.end83:                                         ; preds = %do.end81, %if.end61
  %76 = load ptr, ptr %message_args, align 8, !tbaa !4
  %connection84 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %76, i32 0, i32 3
  %77 = load ptr, ptr %connection84, align 8, !tbaa !65
  call void @aws_event_stream_rpc_client_connection_release(ptr noundef %77)
  %78 = load ptr, ptr %message_args, align 8, !tbaa !4
  %continuation85 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %78, i32 0, i32 4
  %79 = load ptr, ptr %continuation85, align 8, !tbaa !67
  %tobool86 = icmp ne ptr %79, null
  br i1 %tobool86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end83
  %80 = load ptr, ptr %message_args, align 8, !tbaa !4
  %continuation88 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %80, i32 0, i32 4
  %81 = load ptr, ptr %continuation88, align 8, !tbaa !67
  call void @aws_event_stream_rpc_client_continuation_release(ptr noundef %81)
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end83
  %82 = load ptr, ptr %message_args, align 8, !tbaa !4
  %message90 = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %82, i32 0, i32 1
  call void @aws_event_stream_message_clean_up(ptr noundef %message90)
  %83 = load ptr, ptr %message_args, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.event_stream_connection_send_message_args, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %allocator, align 8, !tbaa !59
  %85 = load ptr, ptr %message_args, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %84, ptr noundef %85)
  call void @llvm.lifetime.end.p0(i64 8, ptr %message_args) #10
  ret void
}

declare void @aws_event_stream_message_clean_up(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !50
  store i64 %b, ptr %b.addr, align 8, !tbaa !50
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !50
  %1 = load i64, ptr %b.addr, align 8, !tbaa !50
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #3 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !50
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load i64, ptr %index.addr, align 8, !tbaa !50
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
  %3 = load ptr, ptr %data, align 8, !tbaa !96
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.79, ptr noundef @.str.35, i32 noundef 389) #11
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !96
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !99
  %8 = load i64, ptr %index.addr, align 8, !tbaa !50
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %11, i1 false)
  %12 = load i64, ptr %index.addr, align 8, !tbaa !50
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call6 = call i64 @aws_array_list_length(ptr noundef %13)
  %cmp = icmp uge i64 %12, %call6
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %14 = load i64, ptr %index.addr, align 8, !tbaa !50
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

declare i32 @aws_array_list_ensure_capacity(ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !5, i64 8}
!11 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!12 = !{!11, !5, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"aws_event_stream_rpc_client_connection", !5, i64 0, !15, i64 8, !5, i64 16, !16, i64 24, !5, i64 32, !5, i64 40, !17, i64 48, !18, i64 56, !16, i64 104, !16, i64 112, !20, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !19, i64 160, !19, i64 161}
!15 = !{!"aws_hash_table", !5, i64 0}
!16 = !{!"aws_atomic_var", !5, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = !{!"aws_mutex", !6, i64 0, !19, i64 40}
!19 = !{!"_Bool", !6, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !5, i64 32}
!22 = !{!"aws_event_stream_rpc_client_connection_options", !5, i64 0, !23, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!23 = !{!"short", !6, i64 0}
!24 = !{!14, !5, i64 16}
!25 = !{!22, !5, i64 56}
!26 = !{!14, !5, i64 144}
!27 = !{!22, !5, i64 48}
!28 = !{!14, !5, i64 136}
!29 = !{!22, !5, i64 40}
!30 = !{!14, !5, i64 128}
!31 = !{!22, !5, i64 64}
!32 = !{!14, !5, i64 152}
!33 = !{!34, !5, i64 0}
!34 = !{!"aws_socket_channel_bootstrap_options", !5, i64 0, !5, i64 8, !23, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !19, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!35 = !{!22, !5, i64 0}
!36 = !{!34, !5, i64 8}
!37 = !{!22, !23, i64 8}
!38 = !{!34, !23, i64 16}
!39 = !{!22, !5, i64 16}
!40 = !{!34, !5, i64 24}
!41 = !{!22, !5, i64 24}
!42 = !{!34, !5, i64 32}
!43 = !{!34, !5, i64 40}
!44 = !{!34, !5, i64 48}
!45 = !{!34, !5, i64 56}
!46 = !{!34, !19, i64 64}
!47 = !{!34, !5, i64 72}
!48 = !{!34, !5, i64 80}
!49 = !{!34, !5, i64 88}
!50 = !{!20, !20, i64 0}
!51 = !{!17, !17, i64 0}
!52 = !{!14, !19, i64 160}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!6, !6, i64 0}
!56 = !{!14, !5, i64 32}
!57 = !{!58, !6, i64 24}
!58 = !{!"aws_event_stream_rpc_message_args", !5, i64 0, !20, i64 8, !5, i64 16, !6, i64 24, !17, i64 28}
!59 = !{!60, !5, i64 0}
!60 = !{!"event_stream_connection_send_message_args", !5, i64 0, !61, i64 8, !6, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !19, i64 88, !19, i64 89}
!61 = !{!"aws_event_stream_message", !5, i64 0, !62, i64 8}
!62 = !{!"aws_byte_buf", !20, i64 0, !5, i64 8, !20, i64 16, !5, i64 24}
!63 = !{!60, !5, i64 80}
!64 = !{!60, !6, i64 48}
!65 = !{!60, !5, i64 56}
!66 = !{!60, !5, i64 72}
!67 = !{!60, !5, i64 64}
!68 = !{!58, !17, i64 28}
!69 = !{!60, !19, i64 88}
!70 = !{!60, !19, i64 89}
!71 = !{!58, !20, i64 8}
!72 = !{!58, !5, i64 0}
!73 = !{!74, !5, i64 8}
!74 = !{!"aws_byte_cursor", !20, i64 0, !5, i64 8}
!75 = !{!74, !20, i64 0}
!76 = !{!58, !5, i64 16}
!77 = !{!14, !5, i64 40}
!78 = !{!79, !5, i64 8}
!79 = !{!"aws_event_stream_rpc_client_continuation_token", !17, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!80 = !{!81, !5, i64 0}
!81 = !{!"aws_event_stream_rpc_client_stream_continuation_options", !5, i64 0, !5, i64 8, !5, i64 16}
!82 = !{!79, !5, i64 16}
!83 = !{!81, !5, i64 8}
!84 = !{!79, !5, i64 24}
!85 = !{!81, !5, i64 16}
!86 = !{!79, !5, i64 32}
!87 = !{!79, !17, i64 0}
!88 = !{!14, !17, i64 48}
!89 = !{!90, !5, i64 0}
!90 = !{!"aws_event_stream_channel_handler_options", !5, i64 0, !5, i64 8, !20, i64 16, !19, i64 24}
!91 = !{!90, !5, i64 8}
!92 = !{!14, !20, i64 120}
!93 = !{!90, !20, i64 16}
!94 = !{!14, !19, i64 161}
!95 = !{!90, !19, i64 24}
!96 = !{!97, !5, i64 32}
!97 = !{!"aws_array_list", !5, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !5, i64 32}
!98 = !{!97, !20, i64 8}
!99 = !{!97, !20, i64 24}
!100 = !{!97, !5, i64 0}
!101 = !{!62, !20, i64 0}
!102 = !{!62, !5, i64 8}
!103 = !{i64 0, i64 1, !55, i64 1, i64 127, !55, i64 128, i64 4, !55, i64 136, i64 8, !4, i64 136, i64 16, !55, i64 152, i64 2, !104, i64 154, i64 1, !55}
!104 = !{!23, !23, i64 0}
!105 = !{!19, !19, i64 0}
!106 = !{!107, !5, i64 8}
!107 = !{!"aws_hash_element", !5, i64 0, !5, i64 8}
!108 = !{!97, !20, i64 16}

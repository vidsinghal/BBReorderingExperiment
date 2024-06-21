; ModuleID = 'samples/707.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-mqtt/source/v5/mqtt5_to_mqtt3_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_mqtt_client_connection_vtable = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aws_mqtt5_packet_publish_view = type { %struct.aws_byte_cursor, i16, i32, i8, i8, %struct.aws_byte_cursor, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, ptr }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_mqtt5_publish_completion_options = type { ptr, ptr }
%struct.aws_mqtt5_to_mqtt3_adapter_operation_publish = type { %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr, ptr, ptr }
%struct.aws_mqtt5_to_mqtt3_adapter_operation_base = type { ptr, %struct.aws_ref_count, ptr, ptr, i8, %struct.aws_task, i32, i16 }
%struct.aws_ref_count = type { %struct.aws_atomic_var, ptr, ptr }
%struct.aws_atomic_var = type { ptr }
%struct.aws_task = type { ptr, ptr, i64, %struct.aws_linked_list_node, %struct.aws_priority_queue_node, ptr, %union.anon }
%struct.aws_linked_list_node = type { ptr, ptr }
%struct.aws_priority_queue_node = type { i64 }
%union.anon = type { i64 }
%struct.aws_mqtt5_to_mqtt3_adapter_publish_options = type { ptr, %struct.aws_byte_cursor, i32, i8, %struct.aws_byte_cursor, ptr, ptr }
%struct.aws_mqtt_client_connection_5_impl = type { ptr, %struct.aws_mqtt_client_connection, ptr, ptr, ptr, i8, i32, %struct.aws_ref_count, %struct.aws_ref_count, %struct.aws_rw_lock, %struct.anon, %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aws_mqtt_client_connection = type { ptr, ptr }
%struct.aws_rw_lock = type { %union.pthread_rwlock_t }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%struct.anon = type { i8 }
%struct.aws_mqtt5_to_mqtt3_adapter_operation_table = type { %struct.aws_mutex, %struct.aws_hash_table, i16 }
%struct.aws_mutex = type { %union.pthread_mutex_t, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.aws_hash_table = type { ptr }
%struct.aws_mqtt5_operation_publish = type { %struct.aws_mqtt5_operation, ptr, %struct.aws_mqtt5_packet_publish_storage, %struct.aws_mqtt5_publish_completion_options }
%struct.aws_mqtt5_operation = type { ptr, %struct.aws_ref_count, i64, %struct.aws_linked_list_node, i32, ptr, i32, i64, ptr }
%struct.aws_mqtt5_packet_publish_storage = type { %struct.aws_mqtt5_packet_publish_view, i32, i32, i16, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_mqtt5_user_property_set, %struct.aws_array_list, %struct.aws_byte_buf }
%struct.aws_mqtt5_user_property_set = type { %struct.aws_array_list }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options = type { ptr, ptr, i64, ptr, ptr, ptr, ptr }
%struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe = type { %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr, %struct.aws_array_list, ptr, ptr, ptr, ptr }
%struct.aws_mqtt_topic_subscription = type { %struct.aws_byte_cursor, i32, ptr, ptr, ptr }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_mqtt5_operation_subscribe = type { %struct.aws_mqtt5_operation, ptr, %struct.aws_mqtt5_packet_subscribe_storage, %struct.aws_mqtt5_subscribe_completion_options }
%struct.aws_mqtt5_packet_subscribe_storage = type { %struct.aws_mqtt5_packet_subscribe_view, i32, %struct.aws_array_list, %struct.aws_mqtt5_user_property_set, %struct.aws_byte_buf }
%struct.aws_mqtt5_packet_subscribe_view = type { i16, i64, ptr, ptr, i64, ptr }
%struct.aws_mqtt5_subscribe_completion_options = type { ptr, ptr }
%struct.aws_mqtt_subscription_set_subscription_options = type { %struct.aws_byte_cursor, i32, i8, i8, i32, ptr, ptr, ptr }
%struct.aws_mqtt5_subscription_view = type { %struct.aws_byte_cursor, i32, i8, i8, i32 }
%struct.aws_mqtt_subscription_set_subscription_record = type { ptr, %struct.aws_byte_buf, %struct.aws_mqtt_subscription_set_subscription_options }
%struct.aws_hash_element = type { ptr, ptr }
%struct.aws_mqtt5_packet_unsubscribe_view = type { i16, i64, ptr, i64, ptr }
%struct.aws_mqtt5_unsubscribe_completion_options = type { ptr, ptr }
%struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe = type { %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr, %struct.aws_byte_buf, ptr, ptr }
%struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options = type { ptr, %struct.aws_byte_cursor, ptr, ptr }
%struct.aws_mqtt5_operation_unsubscribe = type { %struct.aws_mqtt5_operation, ptr, %struct.aws_mqtt5_packet_unsubscribe_storage, %struct.aws_mqtt5_unsubscribe_completion_options }
%struct.aws_mqtt5_packet_unsubscribe_storage = type { %struct.aws_mqtt5_packet_unsubscribe_view, %struct.aws_array_list, %struct.aws_mqtt5_user_property_set, %struct.aws_byte_buf }
%struct.aws_mqtt5_listener_config = type { ptr, %struct.aws_mqtt5_callback_set, ptr, ptr }
%struct.aws_mqtt5_callback_set = type { ptr, ptr, ptr, ptr }
%struct.aws_mqtt5_client = type { ptr, %struct.aws_ref_count, ptr, ptr, %struct.aws_task, i64, i8, %struct.aws_mqtt5_negotiated_settings, ptr, %struct.aws_channel_handler, ptr, i32, i32, i32, %struct.aws_mqtt5_encoder, %struct.aws_mqtt5_decoder, %struct.aws_mqtt5_inbound_topic_alias_resolver, ptr, i32, ptr, %struct.aws_mqtt5_client_operational_state, %struct.aws_mqtt5_client_operation_statistics_impl, %struct.aws_mqtt5_client_flow_control_state, %struct.aws_mqtt5_callback_set_manager, i64, i64, i64, i64, i64, i64, i64, i8, i8 }
%struct.aws_mqtt5_negotiated_settings = type { i32, i32, i16, i32, i16, i16, i16, i8, i8, i8, i8, i8, %struct.aws_byte_buf }
%struct.aws_channel_handler = type { ptr, ptr, ptr, ptr }
%struct.aws_mqtt5_encoder = type { %struct.aws_mqtt5_encoder_options, %struct.aws_array_list, i64, ptr }
%struct.aws_mqtt5_encoder_options = type { ptr, ptr }
%struct.aws_mqtt5_decoder = type { ptr, %struct.aws_mqtt5_decoder_options, i32, %struct.aws_byte_buf, i8, i32, %struct.aws_byte_cursor, ptr }
%struct.aws_mqtt5_decoder_options = type { ptr, ptr, ptr }
%struct.aws_mqtt5_inbound_topic_alias_resolver = type { ptr, %struct.aws_array_list }
%struct.aws_mqtt5_client_operational_state = type { ptr, i16, %struct.aws_linked_list, ptr, %struct.aws_hash_table, %struct.aws_linked_list, %struct.aws_linked_list, i8 }
%struct.aws_linked_list = type { %struct.aws_linked_list_node, %struct.aws_linked_list_node }
%struct.aws_mqtt5_client_operation_statistics_impl = type { %struct.aws_atomic_var, %struct.aws_atomic_var, %struct.aws_atomic_var, %struct.aws_atomic_var }
%struct.aws_mqtt5_client_flow_control_state = type { i32, %struct.aws_rate_limiter_token_bucket, %struct.aws_rate_limiter_token_bucket }
%struct.aws_rate_limiter_token_bucket = type { i64, i64, i64, i64, %struct.aws_rate_limiter_token_bucket_options }
%struct.aws_rate_limiter_token_bucket_options = type { ptr, i64, i64, i64 }
%struct.aws_mqtt5_callback_set_manager = type { ptr, %struct.aws_linked_list, i64 }
%struct.aws_mqtt_subscription_set_publish_received_options = type { ptr, %struct.aws_byte_cursor, i32, i8, i8, %struct.aws_byte_cursor }
%struct.aws_mqtt5_client_lifecycle_event = type { i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.aws_mqtt5_packet_suback_view = type { i16, ptr, i64, ptr, i64, ptr }
%struct.aws_mqtt_set_will_task = type { %struct.aws_task, ptr, ptr, %struct.aws_byte_buf, i32, i8, %struct.aws_byte_buf }
%struct.aws_mqtt_set_login_task = type { %struct.aws_task, ptr, ptr, %struct.aws_byte_buf, %struct.aws_byte_buf }
%struct.aws_mqtt_set_use_websockets_task = type { %struct.aws_task, ptr, ptr, ptr, ptr }
%struct.aws_mqtt_set_http_proxy_options_task = type { %struct.aws_task, ptr, ptr, ptr }
%struct.aws_mqtt_set_host_resolution_task = type { %struct.aws_task, ptr, ptr, %struct.aws_host_resolution_config }
%struct.aws_host_resolution_config = type { ptr, i64, ptr, i64 }
%struct.aws_mqtt_set_reconnect_timeout_task = type { %struct.aws_task, ptr, ptr, i64, i64 }
%struct.aws_mqtt_set_interruption_handlers_task = type { %struct.aws_task, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aws_mqtt_set_connection_result_handlers_task = type { %struct.aws_task, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aws_mqtt_set_on_closed_handler_task = type { %struct.aws_task, ptr, ptr, ptr, ptr }
%struct.aws_mqtt_set_on_any_publish_handler_task = type { %struct.aws_task, ptr, ptr, ptr, ptr }
%struct.aws_mqtt_adapter_connect_task = type { %struct.aws_task, ptr, ptr, %struct.aws_byte_buf, i16, %struct.aws_socket_options, ptr, %struct.aws_tls_connection_options, %struct.aws_byte_buf, i16, i32, i32, ptr, ptr, i8 }
%struct.aws_socket_options = type { i32, i32, i32, i16, i16, i16, i8 }
%struct.aws_tls_connection_options = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.aws_mqtt_adapter_disconnect_task = type { %struct.aws_task, ptr, ptr, ptr, ptr }
%struct.aws_mqtt5_client_operation_statistics = type { i64, i64, i64, i64 }
%struct.aws_mqtt_connection_operation_statistics = type { i64, i64, i64, i64 }
%struct.aws_mqtt5_client_options_storage = type { ptr, ptr, i16, ptr, %struct.aws_socket_options, %struct.aws_tls_connection_options, ptr, %struct.aws_http_proxy_options, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, %struct.aws_mqtt5_client_topic_alias_options, ptr, ptr, ptr, ptr, ptr, %struct.aws_host_resolution_config }
%struct.aws_http_proxy_options = type { i32, %struct.aws_byte_cursor, i16, ptr, ptr, i32, %struct.aws_byte_cursor, %struct.aws_byte_cursor }
%struct.aws_mqtt5_client_topic_alias_options = type { i32, i16, i32, i16 }
%struct.aws_mqtt5_packet_connect_storage = type { ptr, %struct.aws_mqtt5_packet_connect_view, %struct.aws_byte_cursor, %struct.aws_byte_cursor, i32, i8, i8, i16, i16, i32, ptr, i32, %struct.aws_mqtt5_user_property_set, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_buf }
%struct.aws_mqtt5_packet_connect_view = type { i16, %struct.aws_byte_cursor, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr }
%struct.aws_mqtt5_adapter_websocket_handshake_args = type { i8, ptr, ptr, i32 }
%struct.aws_mqtt_connection_options = type { %struct.aws_byte_cursor, i16, ptr, ptr, %struct.aws_byte_cursor, i16, i32, i32, ptr, ptr, i8 }
%struct.aws_mqtt_adapter_final_destroy_task = type { %struct.aws_task, ptr, ptr }

@s_aws_mqtt_client_connection_5_vtable_ptr = internal global ptr @s_aws_mqtt_client_connection_5_vtable, align 8
@.str = private unnamed_addr constant [53 x i8] c"id=%p: mqtt3-to-5-adapter, invalid qos for subscribe\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"id=%p: mqtt3-to-5-adapter, invalid topic filter for subscribe\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"list != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"alloc != ((void*)0)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"item_size > 0\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"list->current_size == 0 || list->data\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"id=%p: mqtt3-to-5-adapter, completing single-topic subscribe\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"id=%p: mqtt3-to-5-adapter, completing multi-topic subscribe\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"raw_array != ((void*)0)\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"item_count > 0\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"no_overflow\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@s_aws_mqtt_client_connection_5_vtable = internal global %struct.aws_mqtt_client_connection_vtable { ptr @s_aws_mqtt_client_connection_5_acquire, ptr @s_aws_mqtt_client_connection_5_release, ptr @s_aws_mqtt_client_connection_5_set_will, ptr @s_aws_mqtt_client_connection_5_set_login, ptr @s_aws_mqtt_client_connection_5_use_websockets, ptr @s_aws_mqtt_client_connection_5_set_http_proxy_options, ptr @s_aws_mqtt_client_connection_5_set_host_resolution_options, ptr @s_aws_mqtt_client_connection_5_set_reconnect_timeout, ptr @s_aws_mqtt_client_connection_5_set_interruption_handlers, ptr @s_aws_mqtt_client_connection_5_set_connection_result_handlers, ptr @s_aws_mqtt_client_connection_5_set_on_closed_handler, ptr @s_aws_mqtt_client_connection_5_set_on_any_publish_handler, ptr @s_aws_mqtt_client_connection_5_connect, ptr @s_aws_mqtt_client_connection_5_reconnect, ptr @s_aws_mqtt_client_connection_5_disconnect, ptr @s_aws_mqtt_client_connection_5_subscribe_multiple, ptr @s_aws_mqtt_client_connection_5_subscribe, ptr @s_aws_mqtt_5_resubscribe_existing_topics, ptr @s_aws_mqtt_client_connection_5_unsubscribe, ptr @s_aws_mqtt_client_connection_5_publish, ptr @s_aws_mqtt_client_connection_5_get_stats }, align 8
@.str.14 = private unnamed_addr constant [48 x i8] c"id=%p: mqtt3-to-5-adapter, invalid qos for will\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"id=%p: mqtt3-to-5-adapter, invalid topic for will\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"id=%p: failed to create set will task\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"SetWillTask\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"id=%p: failed to create set login task, error code %d(%s)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"SetLoginTask\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"id=%p: mqtt3-to-5-adapter - invalid CONNECT username or password\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"id=%p: failed to create set use websockets task, error code %d(%s)\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"SetUseWebsocketsTask\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"id=%p: mqtt3-to-5 adapter performing safe user callback\00", align 1
@.str.24 = private unnamed_addr constant [71 x i8] c"id=%p: failed to create set http proxy options task, error code %d(%s)\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"SetHttpProxyOptionsTask\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"id=%p: failed to create set reconnect timeout task, error code %d(%s)\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"SetHostResolutionTask\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"SetReconnectTimeoutTask\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"id=%p: failed to create set interruption handlers task, error code %d(%s)\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"SetInterruptionHandlersTask\00", align 1
@.str.31 = private unnamed_addr constant [79 x i8] c"id=%p: failed to create set connection result handlers task, error code %d(%s)\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"SetConnectionResultHandlersTask\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"id=%p: failed to create set on closed handler task, error code %d(%s)\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"SetOnClosedHandlerTask\00", align 1
@.str.35 = private unnamed_addr constant [67 x i8] c"id=%p: failed to create set on any publish task, error code %d(%s)\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"SetOnAnyPublishHandlerTask\00", align 1
@.str.37 = private unnamed_addr constant [85 x i8] c"id=%p: mqtt3-to-5-adapter - failed to create adapter connect task, error code %d(%s)\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"id=%p: mqtt3-to-5-adapter - host name not set in MQTT client configuration\00", align 1
@.str.39 = private unnamed_addr constant [80 x i8] c"id=%p: mqtt3-to-5-adapter - invalid socket options in MQTT client configuration\00", align 1
@.str.40 = private unnamed_addr constant [95 x i8] c"id=%p: mqtt3-to-5-adapter - keep alive interval is too small relative to ping timeout interval\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"AdapterConnectTask\00", align 1
@.str.42 = private unnamed_addr constant [77 x i8] c"id=%p: mqtt3-to-5-adapter - Failed to set TLS Connection Options server name\00", align 1
@.str.43 = private unnamed_addr constant [84 x i8] c"id=%p: mqtt3-to-5-adapter - performing connect safe callback, adapter in state (%d)\00", align 1
@.str.44 = private unnamed_addr constant [83 x i8] c"id=%p: mqtt3-to-5-adapter - resetting mqtt5 client connection and requesting start\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"old_frequency > 0 && new_frequency > 0\00", align 1
@.str.46 = private unnamed_addr constant [209 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/clock.inl\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"aws_mqtt_client_connection_reconnect has been DEPRECATED.\00", align 1
@.str.48 = private unnamed_addr constant [67 x i8] c"id=%p: failed to create adapter disconnect task, error code %d(%s)\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"AdapterDisconnectTask\00", align 1
@.str.50 = private unnamed_addr constant [87 x i8] c"id=%p: mqtt3-to-5-adapter - performing disconnect safe callback, adapter in state (%d)\00", align 1
@.str.51 = private unnamed_addr constant [79 x i8] c"id=%p: mqtt3-to-5-adapter - disconnect forwarding stop request to mqtt5 client\00", align 1
@.str.52 = private unnamed_addr constant [61 x i8] c"id=%p: mqtt3-to-5-adapter, multi-topic subscribe API invoked\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"id=%p: mqtt3-to-5-adapter multi-topic subscribe empty\00", align 1
@.str.54 = private unnamed_addr constant [94 x i8] c"id=%p: mqtt3-to-5-adapter, multi-topic subscribe operation creation failed, error code %d(%s)\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"Mqtt5ToMqtt3AdapterSubscribeMultipleSubmission\00", align 1
@.str.56 = private unnamed_addr constant [75 x i8] c"id=%p: mqtt3-to-5-adapter, multi-topic subscribe failed, error code %d(%s)\00", align 1
@.str.57 = private unnamed_addr constant [62 x i8] c"id=%p: mqtt3-to-5-adapter, single-topic subscribe API invoked\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"Mqtt5ToMqtt3AdapterSubscribeSubmission\00", align 1
@.str.59 = private unnamed_addr constant [90 x i8] c"id=%p: mqtt3-to-5-adapter, single-topic subscribe failed synchronously, error code %d(%s)\00", align 1
@.str.60 = private unnamed_addr constant [63 x i8] c"id=%p: mqtt3-to-5-adapter, resubscribe_existing_topics invoked\00", align 1
@.str.61 = private unnamed_addr constant [103 x i8] c"id=%p: mqtt3-to-5-adapter, resubscribe_existing_topics failed on operation creation, error code %d(%s)\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"Mqtt5ToMqtt3AdapterSubscribeResubscribe\00", align 1
@.str.63 = private unnamed_addr constant [81 x i8] c"id=%p: mqtt3-to-5-adapter, resubscribe_existing_topics failed, error code %d(%s)\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"id=%p: mqtt3-to-5-adapter, unsubscribe called\00", align 1
@.str.65 = private unnamed_addr constant [68 x i8] c"id=%p: mqtt3-to-5-adapter, unsubscribe failed, invalid topic filter\00", align 1
@.str.66 = private unnamed_addr constant [84 x i8] c"id=%p: mqtt3-to-5-adapter, unsubscribe operation creation failed, error code %d(%s)\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"Mqtt5ToMqtt3AdapterUnsubscribeSubmission\00", align 1
@.str.68 = private unnamed_addr constant [65 x i8] c"id=%p: mqtt3-to-5-adapter, unsubscribe failed, error code %d(%s)\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"id=%p: mqtt3-to-5-adapter, invoking publish API\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"id=%p: mqtt3-to-5-adapter, invalid qos for publish\00", align 1
@.str.71 = private unnamed_addr constant [53 x i8] c"id=%p: mqtt3-to-5-adapter, invalid topic for publish\00", align 1
@.str.72 = private unnamed_addr constant [37 x i8] c"Mqtt5ToMqtt3AdapterPublishSubmission\00", align 1
@.str.73 = private unnamed_addr constant [72 x i8] c"Invalid MQTT3-to-5 adapter used when trying to get operation statistics\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"id=%p: mqtt3-to-5-adapter, get_stats invoked\00", align 1
@.str.75 = private unnamed_addr constant [86 x i8] c"id=%p: Invalid MQTT311 statistics struct used when trying to get operation statistics\00", align 1
@.str.76 = private unnamed_addr constant [71 x i8] c"id=%p: failed to create adapter final destroy task, last_error: %d(%s)\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"MqttAdapterFinalDestroy\00", align 1
@.str.78 = private unnamed_addr constant [47 x i8] c"id=%p: Final destruction of mqtt3-to-5 adapter\00", align 1
@.str.79 = private unnamed_addr constant [106 x i8] c"id=%p: mqtt3-to-5-adapter - received on connection success event from mqtt5 client, adapter in state (%d)\00", align 1
@.str.80 = private unnamed_addr constant [106 x i8] c"id=%p: mqtt3-to-5-adapter - received on connection failure event from mqtt5 client, adapter in state (%d)\00", align 1
@.str.81 = private unnamed_addr constant [118 x i8] c"id=%p: mqtt3-to-5-adapter - received on disconnection event from mqtt5 client, adapter in state (%d), error code (%d)\00", align 1
@.str.82 = private unnamed_addr constant [95 x i8] c"id=%p: mqtt3-to-5-adapter - received on stopped event from mqtt5 client, adapter in state (%d)\00", align 1

; Function Attrs: nounwind uwtable
define ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_publish(ptr noundef %allocator, ptr noundef %options) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %publish_op = alloca ptr, align 8
  %publish_view = alloca %struct.aws_mqtt5_packet_publish_view, align 8
  %publish_completion_options = alloca %struct.aws_mqtt5_publish_completion_options, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %publish_op) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 152)
  store ptr %call, ptr %publish_op, align 8, !tbaa !4
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %2, i32 0, i32 0
  %allocator1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 0
  store ptr %1, ptr %allocator1, align 8, !tbaa !8
  %3 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base2, i32 0, i32 1
  %4 = load ptr, ptr %publish_op, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %4, ptr noundef @s_adapter_publish_operation_destroy)
  %5 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %6 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %6, i32 0, i32 0
  %impl = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base3, i32 0, i32 2
  store ptr %5, ptr %impl, align 8, !tbaa !19
  %7 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %7, i32 0, i32 0
  %type = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base4, i32 0, i32 6
  store i32 0, ptr %type, align 8, !tbaa !20
  %8 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %adapter, align 8, !tbaa !21
  %10 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %10, i32 0, i32 0
  %adapter6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base5, i32 0, i32 3
  store ptr %9, ptr %adapter6, align 8, !tbaa !24
  %11 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %11, i32 0, i32 0
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base7, i32 0, i32 4
  store i8 0, ptr %holding_adapter_ref, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 128, ptr %publish_view) #9
  %payload = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 0
  %12 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %payload8 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %12, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %payload, ptr align 8 %payload8, i64 16, i1 false), !tbaa.struct !26
  %packet_id = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 1
  store i16 0, ptr %packet_id, align 8, !tbaa !28
  %qos = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 2
  %13 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %qos9 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %qos9, align 8, !tbaa !30
  store i32 %14, ptr %qos, align 4, !tbaa !31
  %duplicate = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 3
  store i8 0, ptr %duplicate, align 8, !tbaa !32
  %retain = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 4
  %15 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %retain10 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %15, i32 0, i32 3
  %16 = load i8, ptr %retain10, align 4, !tbaa !33, !range !34, !noundef !35
  %tobool = trunc i8 %16 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %retain, align 1, !tbaa !36
  %topic = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 5
  %17 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %topic11 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %17, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic, ptr align 8 %topic11, i64 16, i1 false), !tbaa.struct !26
  %payload_format = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 6
  store ptr null, ptr %payload_format, align 8, !tbaa !37
  %message_expiry_interval_seconds = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 7
  store ptr null, ptr %message_expiry_interval_seconds, align 8, !tbaa !38
  %topic_alias = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 8
  store ptr null, ptr %topic_alias, align 8, !tbaa !39
  %response_topic = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 9
  store ptr null, ptr %response_topic, align 8, !tbaa !40
  %correlation_data = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 10
  store ptr null, ptr %correlation_data, align 8, !tbaa !41
  %subscription_identifier_count = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 11
  store i64 0, ptr %subscription_identifier_count, align 8, !tbaa !42
  %subscription_identifiers = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 12
  store ptr null, ptr %subscription_identifiers, align 8, !tbaa !43
  %content_type = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 13
  store ptr null, ptr %content_type, align 8, !tbaa !44
  %user_property_count = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 14
  store i64 0, ptr %user_property_count, align 8, !tbaa !45
  %user_properties = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %publish_view, i32 0, i32 15
  store ptr null, ptr %user_properties, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 16, ptr %publish_completion_options) #9
  %completion_callback = getelementptr inbounds %struct.aws_mqtt5_publish_completion_options, ptr %publish_completion_options, i32 0, i32 0
  store ptr @s_aws_mqtt5_to_mqtt3_adapter_publish_completion_fn, ptr %completion_callback, align 8, !tbaa !47
  %completion_user_data = getelementptr inbounds %struct.aws_mqtt5_publish_completion_options, ptr %publish_completion_options, i32 0, i32 1
  %18 = load ptr, ptr %publish_op, align 8, !tbaa !4
  store ptr %18, ptr %completion_user_data, align 8, !tbaa !49
  %19 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %adapter12 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %adapter12, align 8, !tbaa !21
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %client, align 8, !tbaa !50
  %call13 = call ptr @aws_mqtt5_operation_publish_new(ptr noundef %19, ptr noundef %22, ptr noundef %publish_view, ptr noundef %publish_completion_options)
  %23 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %publish_op14 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %23, i32 0, i32 1
  store ptr %call13, ptr %publish_op14, align 8, !tbaa !58
  %24 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %publish_op15 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %publish_op15, align 8, !tbaa !58
  %cmp = icmp eq ptr %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %26 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_complete = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %on_complete, align 8, !tbaa !59
  %28 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %on_publish_complete = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %28, i32 0, i32 2
  store ptr %27, ptr %on_publish_complete, align 8, !tbaa !60
  %29 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_complete_userdata = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %on_complete_userdata, align 8, !tbaa !61
  %31 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %on_publish_complete_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %31, i32 0, i32 3
  store ptr %30, ptr %on_publish_complete_user_data, align 8, !tbaa !62
  %32 = load ptr, ptr %publish_op, align 8, !tbaa !4
  store ptr %32, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then
  %33 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base16 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %33, i32 0, i32 0
  %call17 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base16)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %publish_completion_options) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr %publish_view) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %publish_op) #9
  %34 = load ptr, ptr %retval, align 8
  ret ptr %34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @aws_mem_calloc(ptr noundef, i64 noundef, i64 noundef) #2

declare void @aws_ref_count_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_adapter_publish_operation_destroy(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %operation = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %publish_op = alloca ptr, align 8
  %adapter_to_release = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %operation, align 8, !tbaa !4
  %1 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %publish_op) #9
  %2 = load ptr, ptr %operation, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %impl, align 8, !tbaa !63
  store ptr %3, ptr %publish_op, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter_to_release) #9
  store ptr null, ptr %adapter_to_release, align 8, !tbaa !4
  %4 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %4, i32 0, i32 0
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 4
  %5 = load i8, ptr %holding_adapter_ref, align 8, !tbaa !25, !range !34, !noundef !35
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %6, i32 0, i32 0
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base2, i32 0, i32 3
  %7 = load ptr, ptr %adapter, align 8, !tbaa !24
  store ptr %7, ptr %adapter_to_release, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %8 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %publish_op4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %publish_op4, align 8, !tbaa !58
  %completion_options = getelementptr inbounds %struct.aws_mqtt5_operation_publish, ptr %9, i32 0, i32 3
  %completion_callback = getelementptr inbounds %struct.aws_mqtt5_publish_completion_options, ptr %completion_options, i32 0, i32 0
  store ptr null, ptr %completion_callback, align 8, !tbaa !64
  %10 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %publish_op5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %publish_op5, align 8, !tbaa !58
  %completion_options6 = getelementptr inbounds %struct.aws_mqtt5_operation_publish, ptr %11, i32 0, i32 3
  %completion_user_data = getelementptr inbounds %struct.aws_mqtt5_publish_completion_options, ptr %completion_options6, i32 0, i32 1
  store ptr null, ptr %completion_user_data, align 8, !tbaa !72
  %12 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %publish_op7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %publish_op7, align 8, !tbaa !58
  %base8 = getelementptr inbounds %struct.aws_mqtt5_operation_publish, ptr %13, i32 0, i32 0
  %call = call ptr @aws_mqtt5_operation_release(ptr noundef %base8)
  %14 = load ptr, ptr %operation, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %allocator, align 8, !tbaa !73
  %16 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %adapter_to_release, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %17, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end3
  %18 = load ptr, ptr %adapter_to_release, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %18, i32 0, i32 8
  %call11 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end3
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter_to_release) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %publish_op) #9
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_publish_completion_fn(i32 noundef %packet_type, ptr noundef %packet, i32 noundef %error_code, ptr noundef %complete_ctx) #0 {
entry:
  %packet_type.addr = alloca i32, align 4
  %packet.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %complete_ctx.addr = alloca ptr, align 8
  %publish_op = alloca ptr, align 8
  store i32 %packet_type, ptr %packet_type.addr, align 4, !tbaa !74
  store ptr %packet, ptr %packet.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !75
  store ptr %complete_ctx, ptr %complete_ctx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %packet_type.addr, align 4, !tbaa !74
  %1 = load ptr, ptr %packet.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %publish_op) #9
  %2 = load ptr, ptr %complete_ctx.addr, align 8, !tbaa !4
  store ptr %2, ptr %publish_op, align 8, !tbaa !4
  %3 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %on_publish_complete = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %on_publish_complete, align 8, !tbaa !60
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %on_publish_complete1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %on_publish_complete1, align 8, !tbaa !60
  %7 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %7, i32 0, i32 0
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 3
  %8 = load ptr, ptr %adapter, align 8, !tbaa !24
  %base2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %9, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base3, i32 0, i32 7
  %10 = load i16, ptr %id, align 4, !tbaa !76
  %11 = load i32, ptr %error_code.addr, align 4, !tbaa !75
  %12 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %on_publish_complete_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %on_publish_complete_user_data, align 8, !tbaa !62
  call void %6(ptr noundef %base2, i16 noundef zeroext %10, i32 noundef %11, ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %14, i32 0, i32 0
  %adapter5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base4, i32 0, i32 3
  %15 = load ptr, ptr %adapter5, align 8, !tbaa !24
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 11
  %16 = load ptr, ptr %publish_op, align 8, !tbaa !4
  %base6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %16, i32 0, i32 0
  %id7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base6, i32 0, i32 7
  %17 = load i16, ptr %id7, align 4, !tbaa !76
  call void @aws_mqtt5_to_mqtt3_adapter_operation_table_remove_operation(ptr noundef %operational_state, i16 noundef zeroext %17)
  call void @llvm.lifetime.end.p0(i64 8, ptr %publish_op) #9
  ret void
}

declare ptr @aws_mqtt5_operation_publish_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %operation) #0 {
entry:
  %operation.addr = alloca ptr, align 8
  store ptr %operation, ptr %operation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %1, i32 0, i32 1
  %call = call i64 @aws_ref_count_release(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @s_adapter_publish_submission_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %operation = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %operation, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %2, i32 0, i32 0
  %adapter1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 3
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !24
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %client, align 8, !tbaa !50
  %6 = load ptr, ptr %operation, align 8, !tbaa !4
  %publish_op = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %publish_op, align 8, !tbaa !58
  %base2 = getelementptr inbounds %struct.aws_mqtt5_operation_publish, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %8, 0
  call void @aws_mqtt5_client_submit_operation_internal(ptr noundef %5, ptr noundef %base2, i1 noundef zeroext %cmp)
  %9 = load ptr, ptr %operation, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %9, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_release_cross_thread_refs(ptr noundef %base3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  ret void
}

declare void @aws_mqtt5_client_submit_operation_internal(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_operation_release_cross_thread_refs(ptr noundef %operation) #0 {
entry:
  %operation.addr = alloca ptr, align 8
  store ptr %operation, ptr %operation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %holding_adapter_ref, align 8, !tbaa !77, !range !34, !noundef !35
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %holding_adapter_ref1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %2, i32 0, i32 4
  store i8 0, ptr %holding_adapter_ref1, align 8, !tbaa !77
  %3 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %adapter, align 8, !tbaa !78
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %4, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_subscribe(ptr noundef %allocator, ptr noundef %options, ptr noundef %adapter) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %subscribe_op = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %subscription_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %subscription_count, align 8, !tbaa !79
  %2 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %subscriptions, align 8, !tbaa !81
  %4 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call = call i32 @s_validate_adapter_subscribe_options(i64 noundef %1, ptr noundef %3, ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscribe_op) #9
  %5 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call1 = call ptr @aws_mem_calloc(ptr noundef %5, i64 noundef 1, i64 noundef 208)
  store ptr %call1, ptr %subscribe_op, align 8, !tbaa !4
  %6 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %7, i32 0, i32 0
  %allocator2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 0
  store ptr %6, ptr %allocator2, align 8, !tbaa !82
  %8 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %8, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base3, i32 0, i32 1
  %9 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %9, ptr noundef @s_adapter_subscribe_operation_destroy)
  %10 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %11 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %11, i32 0, i32 0
  %impl = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base4, i32 0, i32 2
  store ptr %10, ptr %impl, align 8, !tbaa !84
  %12 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %12, i32 0, i32 0
  %type = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base5, i32 0, i32 6
  store i32 1, ptr %type, align 8, !tbaa !85
  %13 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %adapter6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %adapter6, align 8, !tbaa !86
  %15 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %15, i32 0, i32 0
  %adapter8 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base7, i32 0, i32 3
  store ptr %14, ptr %adapter8, align 8, !tbaa !87
  %16 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base9 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %16, i32 0, i32 0
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base9, i32 0, i32 4
  store i8 0, ptr %holding_adapter_ref, align 8, !tbaa !88
  %17 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %subscription_count10 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %subscription_count10, align 8, !tbaa !79
  %cmp = icmp ugt i64 %18, 0
  br i1 %cmp, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end
  %19 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %20 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %subscription_count12 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %subscription_count12, align 8, !tbaa !79
  %22 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %subscriptions13 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %subscriptions13, align 8, !tbaa !81
  %call14 = call i32 @s_aws_mqtt5_to_mqtt3_adapter_build_subscribe(ptr noundef %19, i64 noundef %21, ptr noundef %23)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then11
  br label %error

if.end17:                                         ; preds = %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  %24 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %on_suback, align 8, !tbaa !89
  %26 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_suback19 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %26, i32 0, i32 3
  store ptr %25, ptr %on_suback19, align 8, !tbaa !90
  %27 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %on_suback_user_data, align 8, !tbaa !91
  %29 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_suback_user_data20 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %29, i32 0, i32 4
  store ptr %28, ptr %on_suback_user_data20, align 8, !tbaa !92
  %30 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_multi_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %on_multi_suback, align 8, !tbaa !93
  %32 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_multi_suback21 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %32, i32 0, i32 5
  store ptr %31, ptr %on_multi_suback21, align 8, !tbaa !94
  %33 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_multi_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %on_multi_suback_user_data, align 8, !tbaa !95
  %35 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_multi_suback_user_data22 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %35, i32 0, i32 6
  store ptr %34, ptr %on_multi_suback_user_data22, align 8, !tbaa !96
  %36 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  store ptr %36, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then16
  %37 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base23 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %37, i32 0, i32 0
  %call24 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base23)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscribe_op) #9
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %38 = load ptr, ptr %retval, align 8
  ret ptr %38
}

; Function Attrs: nounwind uwtable
define internal i32 @s_validate_adapter_subscribe_options(i64 noundef %subscription_count, ptr noundef %subscriptions, ptr noundef %adapter) #0 {
entry:
  %retval = alloca i32, align 4
  %subscription_count.addr = alloca i64, align 8
  %subscriptions.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %subscription = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger15 = alloca ptr, align 8
  store i64 %subscription_count, ptr %subscription_count.addr, align 8, !tbaa !27
  store ptr %subscriptions, ptr %subscriptions.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !27
  %1 = load i64, ptr %subscription_count.addr, align 8, !tbaa !27
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup32

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #9
  %2 = load ptr, ptr %subscriptions.addr, align 8, !tbaa !4
  %3 = load i64, ptr %i, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %2, i64 %3
  store ptr %add.ptr, ptr %subscription, align 8, !tbaa !4
  %4 = load ptr, ptr %subscription, align 8, !tbaa !4
  %qos = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %qos, align 8, !tbaa !97
  %cmp1 = icmp ult i32 %5, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load ptr, ptr %subscription, align 8, !tbaa !4
  %qos2 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %qos2, align 8, !tbaa !97
  %cmp3 = icmp ugt i32 %7, 2
  br i1 %cmp3, label %if.then, label %if.end11

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %8, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %11(ptr noundef %12, i32 noundef 5126)
  %cmp6 = icmp uge i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %vtable8, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %log, align 8, !tbaa !103
  %16 = load ptr, ptr %logger, align 8, !tbaa !4
  %17 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %15(ptr noundef %16, i32 noundef 2, i32 noundef 5126, ptr noundef @.str, ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call10 = call i32 @aws_raise_error(i32 noundef 5126)
  store i32 %call10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %subscription, align 8, !tbaa !4
  %topic = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %18, i32 0, i32 0
  %call12 = call zeroext i1 @aws_mqtt_is_valid_topic_filter(ptr noundef %topic)
  br i1 %call12, label %if.end31, label %if.then13

if.then13:                                        ; preds = %if.end11
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger15) #9
  %call16 = call ptr @aws_logger_get()
  store ptr %call16, ptr %logger15, align 8, !tbaa !4
  %19 = load ptr, ptr %logger15, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %19, null
  br i1 %cmp17, label %land.lhs.true18, label %if.end27

land.lhs.true18:                                  ; preds = %do.body14
  %20 = load ptr, ptr %logger15, align 8, !tbaa !4
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %vtable19, align 8, !tbaa !99
  %get_log_level20 = getelementptr inbounds %struct.aws_logger_vtable, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %get_log_level20, align 8, !tbaa !101
  %23 = load ptr, ptr %logger15, align 8, !tbaa !4
  %call21 = call i32 %22(ptr noundef %23, i32 noundef 5126)
  %cmp22 = icmp uge i32 %call21, 2
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %land.lhs.true18
  %24 = load ptr, ptr %logger15, align 8, !tbaa !4
  %vtable24 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable24, align 8, !tbaa !99
  %log25 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %log25, align 8, !tbaa !103
  %27 = load ptr, ptr %logger15, align 8, !tbaa !4
  %28 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call26 = call i32 (ptr, i32, i32, ptr, ...) %26(ptr noundef %27, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.1, ptr noundef %28)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true18, %do.body14
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger15) #9
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  %call30 = call i32 @aws_raise_error(i32 noundef 5128)
  store i32 %call30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end29, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %29 = load i64, ptr %i, align 8, !tbaa !27
  %inc = add i64 %29, 1
  store i64 %inc, ptr %i, align 8, !tbaa !27
  br label %for.cond

cleanup32:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  %cleanup.dest33 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest33, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup32
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup32
  %30 = load i32, ptr %retval, align 4
  ret i32 %30

unreachable:                                      ; preds = %cleanup32
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_adapter_subscribe_operation_destroy(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %operation = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %subscribe_op = alloca ptr, align 8
  %subscription_count = alloca i64, align 8
  %i = alloca i64, align 8
  %record = alloca ptr, align 8
  %adapter_to_release = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %operation, align 8, !tbaa !4
  %1 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscribe_op) #9
  %2 = load ptr, ptr %operation, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %impl, align 8, !tbaa !63
  store ptr %3, ptr %subscribe_op, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_count) #9
  %4 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %4, i32 0, i32 2
  %call = call i64 @aws_array_list_length(ptr noundef %subscriptions)
  store i64 %call, ptr %subscription_count, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %i, align 8, !tbaa !27
  %6 = load i64, ptr %subscription_count, align 8, !tbaa !27
  %cmp1 = icmp ult i64 %5, %6
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #9
  store ptr null, ptr %record, align 8, !tbaa !4
  %7 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscriptions2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %i, align 8, !tbaa !27
  %call3 = call i32 @aws_array_list_get_at(ptr noundef %subscriptions2, ptr noundef %record, i64 noundef %8)
  %9 = load ptr, ptr %record, align 8, !tbaa !4
  call void @aws_mqtt_subscription_set_subscription_record_destroy(ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8, !tbaa !27
  %inc = add i64 %10, 1
  store i64 %inc, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %11 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscriptions4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %11, i32 0, i32 2
  call void @aws_array_list_clean_up(ptr noundef %subscriptions4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter_to_release) #9
  store ptr null, ptr %adapter_to_release, align 8, !tbaa !4
  %12 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %12, i32 0, i32 0
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 4
  %13 = load i8, ptr %holding_adapter_ref, align 8, !tbaa !88, !range !34, !noundef !35
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %for.end
  %14 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %14, i32 0, i32 0
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base6, i32 0, i32 3
  %15 = load ptr, ptr %adapter, align 8, !tbaa !87
  store ptr %15, ptr %adapter_to_release, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.end
  %16 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscribe_op8 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %subscribe_op8, align 8, !tbaa !104
  %cmp9 = icmp ne ptr %17, null
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end7
  %18 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscribe_op11 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %subscribe_op11, align 8, !tbaa !104
  %completion_options = getelementptr inbounds %struct.aws_mqtt5_operation_subscribe, ptr %19, i32 0, i32 3
  %completion_callback = getelementptr inbounds %struct.aws_mqtt5_subscribe_completion_options, ptr %completion_options, i32 0, i32 0
  store ptr null, ptr %completion_callback, align 8, !tbaa !105
  %20 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscribe_op12 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %subscribe_op12, align 8, !tbaa !104
  %completion_options13 = getelementptr inbounds %struct.aws_mqtt5_operation_subscribe, ptr %21, i32 0, i32 3
  %completion_user_data = getelementptr inbounds %struct.aws_mqtt5_subscribe_completion_options, ptr %completion_options13, i32 0, i32 1
  store ptr null, ptr %completion_user_data, align 8, !tbaa !110
  %22 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscribe_op14 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %subscribe_op14, align 8, !tbaa !104
  %base15 = getelementptr inbounds %struct.aws_mqtt5_operation_subscribe, ptr %23, i32 0, i32 0
  %call16 = call ptr @aws_mqtt5_operation_release(ptr noundef %base15)
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end7
  %24 = load ptr, ptr %operation, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %allocator, align 8, !tbaa !73
  %26 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %adapter_to_release, align 8, !tbaa !4
  %cmp18 = icmp ne ptr %27, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %28 = load ptr, ptr %adapter_to_release, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %28, i32 0, i32 8
  %call20 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter_to_release) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_count) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscribe_op) #9
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
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
define internal i32 @s_aws_mqtt5_to_mqtt3_adapter_build_subscribe(ptr noundef %subscribe_op, i64 noundef %subscription_count, ptr noundef %subscriptions) #0 {
entry:
  %retval = alloca i32, align 4
  %subscribe_op.addr = alloca ptr, align 8
  %subscription_count.addr = alloca i64, align 8
  %subscriptions.addr = alloca ptr, align 8
  %allocator = alloca ptr, align 8
  %i = alloca i64, align 8
  %subscription_options = alloca ptr, align 8
  %subscription_record_options = alloca %struct.aws_mqtt_subscription_set_subscription_options, align 8
  %record = alloca ptr, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %subscription_ptr = alloca ptr, align 8
  %i8 = alloca i64, align 8
  %subscription = alloca ptr, align 8
  %subscribe_view = alloca %struct.aws_mqtt5_packet_subscribe_view, align 8
  %subscribe_completion_options = alloca %struct.aws_mqtt5_subscribe_completion_options, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %subscribe_op, ptr %subscribe_op.addr, align 8, !tbaa !4
  store i64 %subscription_count, ptr %subscription_count.addr, align 8, !tbaa !27
  store ptr %subscriptions, ptr %subscriptions.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocator) #9
  %0 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %0, i32 0, i32 0
  %allocator1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 0
  %1 = load ptr, ptr %allocator1, align 8, !tbaa !82
  store ptr %1, ptr %allocator, align 8, !tbaa !4
  %2 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  %subscriptions2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %allocator, align 8, !tbaa !4
  %4 = load i64, ptr %subscription_count.addr, align 8, !tbaa !27
  %call = call i32 @aws_array_list_init_dynamic(ptr noundef %subscriptions2, ptr noundef %3, i64 noundef %4, i64 noundef 8)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %i, align 8, !tbaa !27
  %6 = load i64, ptr %subscription_count.addr, align 8, !tbaa !27
  %cmp = icmp ult i64 %5, %6
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_options) #9
  %7 = load ptr, ptr %subscriptions.addr, align 8, !tbaa !4
  %8 = load i64, ptr %i, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %7, i64 %8
  store ptr %arrayidx, ptr %subscription_options, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 56, ptr %subscription_record_options) #9
  %topic_filter = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 0
  %9 = load ptr, ptr %subscription_options, align 8, !tbaa !4
  %topic = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %9, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic_filter, ptr align 8 %topic, i64 16, i1 false), !tbaa.struct !26
  %qos = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 1
  %10 = load ptr, ptr %subscription_options, align 8, !tbaa !4
  %qos3 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %qos3, align 8, !tbaa !97
  store i32 %11, ptr %qos, align 8, !tbaa !111
  %no_local = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 2
  store i8 0, ptr %no_local, align 4, !tbaa !113
  %retain_as_published = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 3
  store i8 0, ptr %retain_as_published, align 1, !tbaa !114
  %retain_handling_type = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 4
  store i32 0, ptr %retain_handling_type, align 8, !tbaa !115
  %on_publish_received = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 5
  %12 = load ptr, ptr %subscription_options, align 8, !tbaa !4
  %on_publish = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %on_publish, align 8, !tbaa !116
  store ptr %13, ptr %on_publish_received, align 8, !tbaa !117
  %on_cleanup = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 6
  %14 = load ptr, ptr %subscription_options, align 8, !tbaa !4
  %on_cleanup4 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %on_cleanup4, align 8, !tbaa !118
  store ptr %15, ptr %on_cleanup, align 8, !tbaa !119
  %callback_user_data = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_record_options, i32 0, i32 7
  %16 = load ptr, ptr %subscription_options, align 8, !tbaa !4
  %on_publish_ud = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %on_publish_ud, align 8, !tbaa !120
  store ptr %17, ptr %callback_user_data, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #9
  %18 = load ptr, ptr %allocator, align 8, !tbaa !4
  %call5 = call ptr @aws_mqtt_subscription_set_subscription_record_new(ptr noundef %18, ptr noundef %subscription_record_options)
  store ptr %call5, ptr %record, align 8, !tbaa !4
  %19 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  %subscriptions6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %19, i32 0, i32 2
  %call7 = call i32 @aws_array_list_push_back(ptr noundef %subscriptions6, ptr noundef %record)
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %subscription_record_options) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_options) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, ptr %i, align 8, !tbaa !27
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %21 = load i64, ptr %subscription_count.addr, align 8, !tbaa !27
  %22 = call ptr @llvm.stacksave.p0()
  store ptr %22, ptr %saved_stack, align 8
  %vla = alloca %struct.aws_mqtt5_subscription_view, i64 %21, align 16
  store i64 %21, ptr %__vla_expr0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_ptr) #9
  store ptr %vla, ptr %subscription_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #9
  store i64 0, ptr %i8, align 8, !tbaa !27
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %for.end
  %23 = load i64, ptr %i8, align 8, !tbaa !27
  %24 = load i64, ptr %subscription_count.addr, align 8, !tbaa !27
  %cmp10 = icmp ult i64 %23, %24
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #9
  br label %for.end21

for.body12:                                       ; preds = %for.cond9
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #9
  %25 = load ptr, ptr %subscription_ptr, align 8, !tbaa !4
  %26 = load i64, ptr %i8, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds %struct.aws_mqtt5_subscription_view, ptr %25, i64 %26
  store ptr %add.ptr, ptr %subscription, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %for.body12
  %27 = load ptr, ptr %subscription, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 32, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load ptr, ptr %subscription, align 8, !tbaa !4
  %topic_filter13 = getelementptr inbounds %struct.aws_mqtt5_subscription_view, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %subscriptions.addr, align 8, !tbaa !4
  %30 = load i64, ptr %i8, align 8, !tbaa !27
  %arrayidx14 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %29, i64 %30
  %topic15 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %arrayidx14, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic_filter13, ptr align 8 %topic15, i64 16, i1 false), !tbaa.struct !26
  %31 = load ptr, ptr %subscriptions.addr, align 8, !tbaa !4
  %32 = load i64, ptr %i8, align 8, !tbaa !27
  %arrayidx16 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %31, i64 %32
  %qos17 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %arrayidx16, i32 0, i32 1
  %33 = load i32, ptr %qos17, align 8, !tbaa !97
  %34 = load ptr, ptr %subscription, align 8, !tbaa !4
  %qos18 = getelementptr inbounds %struct.aws_mqtt5_subscription_view, ptr %34, i32 0, i32 1
  store i32 %33, ptr %qos18, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #9
  br label %for.inc19

for.inc19:                                        ; preds = %do.end
  %35 = load i64, ptr %i8, align 8, !tbaa !27
  %inc20 = add i64 %35, 1
  store i64 %inc20, ptr %i8, align 8, !tbaa !27
  br label %for.cond9

for.end21:                                        ; preds = %for.cond.cleanup11
  call void @llvm.lifetime.start.p0(i64 48, ptr %subscribe_view) #9
  %packet_id = getelementptr inbounds %struct.aws_mqtt5_packet_subscribe_view, ptr %subscribe_view, i32 0, i32 0
  store i16 0, ptr %packet_id, align 8, !tbaa !124
  %subscription_count22 = getelementptr inbounds %struct.aws_mqtt5_packet_subscribe_view, ptr %subscribe_view, i32 0, i32 1
  %36 = load i64, ptr %subscription_count.addr, align 8, !tbaa !27
  store i64 %36, ptr %subscription_count22, align 8, !tbaa !125
  %subscriptions23 = getelementptr inbounds %struct.aws_mqtt5_packet_subscribe_view, ptr %subscribe_view, i32 0, i32 2
  %37 = load ptr, ptr %subscription_ptr, align 8, !tbaa !4
  store ptr %37, ptr %subscriptions23, align 8, !tbaa !126
  %subscription_identifier = getelementptr inbounds %struct.aws_mqtt5_packet_subscribe_view, ptr %subscribe_view, i32 0, i32 3
  store ptr null, ptr %subscription_identifier, align 8, !tbaa !127
  %user_property_count = getelementptr inbounds %struct.aws_mqtt5_packet_subscribe_view, ptr %subscribe_view, i32 0, i32 4
  store i64 0, ptr %user_property_count, align 8, !tbaa !128
  %user_properties = getelementptr inbounds %struct.aws_mqtt5_packet_subscribe_view, ptr %subscribe_view, i32 0, i32 5
  store ptr null, ptr %user_properties, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 16, ptr %subscribe_completion_options) #9
  %completion_callback = getelementptr inbounds %struct.aws_mqtt5_subscribe_completion_options, ptr %subscribe_completion_options, i32 0, i32 0
  store ptr @s_aws_mqtt5_to_mqtt3_adapter_subscribe_completion_fn, ptr %completion_callback, align 8, !tbaa !130
  %completion_user_data = getelementptr inbounds %struct.aws_mqtt5_subscribe_completion_options, ptr %subscribe_completion_options, i32 0, i32 1
  %38 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  store ptr %38, ptr %completion_user_data, align 8, !tbaa !131
  %39 = load ptr, ptr %allocator, align 8, !tbaa !4
  %40 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  %base24 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %40, i32 0, i32 0
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base24, i32 0, i32 3
  %41 = load ptr, ptr %adapter, align 8, !tbaa !87
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %client, align 8, !tbaa !50
  %call25 = call ptr @aws_mqtt5_operation_subscribe_new(ptr noundef %39, ptr noundef %42, ptr noundef %subscribe_view, ptr noundef %subscribe_completion_options)
  %43 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  %subscribe_op26 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %43, i32 0, i32 1
  store ptr %call25, ptr %subscribe_op26, align 8, !tbaa !104
  %44 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  %subscribe_op27 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %subscribe_op27, align 8, !tbaa !104
  %cmp28 = icmp eq ptr %45, null
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.end21
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %subscribe_completion_options) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr %subscribe_view) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_ptr) #9
  %46 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %46)
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocator) #9
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define void @s_adapter_subscribe_submission_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %operation = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %full_subscriptions = alloca %struct.aws_array_list, align 8
  %subscription_count = alloca i64, align 8
  %error_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %subscription_count18 = alloca i64, align 8
  %i = alloca i64, align 8
  %record = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %operation, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %2, i32 0, i32 0
  %adapter1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 3
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !87
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 40, ptr %full_subscriptions) #9
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %full_subscriptions, i8 0, i64 40, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %operation, align 8, !tbaa !4
  %subscribe_op = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %subscribe_op, align 8, !tbaa !104
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %do.end
  %6 = load ptr, ptr %adapter, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %subscriptions, align 8, !tbaa !132
  call void @aws_mqtt_subscription_set_get_subscriptions(ptr noundef %7, ptr noundef %full_subscriptions)
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_count) #9
  %call = call i64 @aws_array_list_length(ptr noundef %full_subscriptions)
  store i64 %call, ptr %subscription_count, align 8, !tbaa !27
  %8 = load i64, ptr %subscription_count, align 8, !tbaa !27
  %cmp2 = icmp eq i64 %8, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load ptr, ptr %operation, align 8, !tbaa !4
  %call3 = call i32 @s_aws_mqtt5_to_mqtt3_adapter_build_resubscribe(ptr noundef %9, ptr noundef %full_subscriptions)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end16

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call5 = call i32 @aws_last_error()
  store i32 %call5, ptr %error_code, align 4, !tbaa !75
  %10 = load i64, ptr %subscription_count, align 8, !tbaa !27
  %cmp6 = icmp eq i64 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  store i32 5163, ptr %error_code, align 4, !tbaa !75
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4
  %11 = load ptr, ptr %operation, align 8, !tbaa !4
  %on_multi_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %on_multi_suback, align 8, !tbaa !94
  %tobool8 = icmp ne ptr %12, null
  br i1 %tobool8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %operation, align 8, !tbaa !4
  %on_multi_suback10 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %on_multi_suback10, align 8, !tbaa !94
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base11 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %operation, align 8, !tbaa !4
  %base12 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %16, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base12, i32 0, i32 7
  %17 = load i16, ptr %id, align 4, !tbaa !133
  %18 = load i32, ptr %error_code, align 4, !tbaa !75
  %19 = load ptr, ptr %operation, align 8, !tbaa !4
  %on_multi_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %on_multi_suback_user_data, align 8, !tbaa !96
  call void %14(ptr noundef %base11, i16 noundef zeroext %17, ptr noundef null, i32 noundef %18, ptr noundef %20)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 11
  %22 = load ptr, ptr %operation, align 8, !tbaa !4
  %base14 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %22, i32 0, i32 0
  %id15 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base14, i32 0, i32 7
  %23 = load i16, ptr %id15, align 4, !tbaa !133
  call void @aws_mqtt5_to_mqtt3_adapter_operation_table_remove_operation(ptr noundef %operational_state, i16 noundef zeroext %23)
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_count) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %complete
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17

if.end17:                                         ; preds = %cleanup.cont, %do.end
  %24 = load ptr, ptr %operation, align 8, !tbaa !4
  %subscriptions19 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %24, i32 0, i32 2
  %call20 = call i64 @aws_array_list_length(ptr noundef %subscriptions19)
  store i64 %call20, ptr %subscription_count18, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %25 = load i64, ptr %i, align 8, !tbaa !27
  %26 = load i64, ptr %subscription_count18, align 8, !tbaa !27
  %cmp21 = icmp ult i64 %25, %26
  br i1 %cmp21, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #9
  store ptr null, ptr %record, align 8, !tbaa !4
  %27 = load ptr, ptr %operation, align 8, !tbaa !4
  %subscriptions22 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %27, i32 0, i32 2
  %28 = load i64, ptr %i, align 8, !tbaa !27
  %call23 = call i32 @aws_array_list_get_at(ptr noundef %subscriptions22, ptr noundef %record, i64 noundef %28)
  %29 = load ptr, ptr %adapter, align 8, !tbaa !4
  %subscriptions24 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %subscriptions24, align 8, !tbaa !132
  %31 = load ptr, ptr %record, align 8, !tbaa !4
  %subscription_view = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_record, ptr %31, i32 0, i32 2
  call void @aws_mqtt_subscription_set_add_subscription(ptr noundef %30, ptr noundef %subscription_view)
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, ptr %i, align 8, !tbaa !27
  %inc = add i64 %32, 1
  store i64 %inc, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %33 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %client, align 8, !tbaa !50
  %35 = load ptr, ptr %operation, align 8, !tbaa !4
  %subscribe_op26 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %subscribe_op26, align 8, !tbaa !104
  %base27 = getelementptr inbounds %struct.aws_mqtt5_operation_subscribe, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp28 = icmp ne i32 %37, 0
  call void @aws_mqtt5_client_submit_operation_internal(ptr noundef %34, ptr noundef %base27, i1 noundef zeroext %cmp28)
  br label %complete

complete:                                         ; preds = %for.end, %cleanup
  call void @aws_array_list_clean_up(ptr noundef %full_subscriptions)
  %38 = load ptr, ptr %operation, align 8, !tbaa !4
  %base29 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %38, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_release_cross_thread_refs(ptr noundef %base29)
  call void @llvm.lifetime.end.p0(i64 40, ptr %full_subscriptions) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @aws_mqtt_subscription_set_get_subscriptions(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_array_list_length(ptr noalias noundef %list) #5 {
entry:
  %list.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %length, align 8, !tbaa !134
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !135
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.13, ptr noundef @.str.3, i32 noundef 342) #10
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #9
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !134
  store i64 %5, ptr %len, align 8, !tbaa !27
  %6 = load i64, ptr %len, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #9
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt5_to_mqtt3_adapter_build_resubscribe(ptr noundef %subscribe_op, ptr noundef %full_subscriptions) #0 {
entry:
  %subscribe_op.addr = alloca ptr, align 8
  %full_subscriptions.addr = alloca ptr, align 8
  %subscription_count = alloca i64, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i64, align 8
  %existing_subscription = alloca ptr, align 8
  store ptr %subscribe_op, ptr %subscribe_op.addr, align 8, !tbaa !4
  store ptr %full_subscriptions, ptr %full_subscriptions.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_count) #9
  %0 = load ptr, ptr %full_subscriptions.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  store i64 %call, ptr %subscription_count, align 8, !tbaa !27
  %1 = load i64, ptr %subscription_count, align 8, !tbaa !27
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca %struct.aws_mqtt_topic_subscription, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !tbaa !27
  %4 = load i64, ptr %subscription_count, align 8, !tbaa !27
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %existing_subscription) #9
  store ptr null, ptr %existing_subscription, align 8, !tbaa !4
  %5 = load ptr, ptr %full_subscriptions.addr, align 8, !tbaa !4
  %6 = load i64, ptr %i, align 8, !tbaa !27
  %call1 = call i32 @aws_array_list_get_at_ptr(ptr noundef %5, ptr noundef %existing_subscription, i64 noundef %6)
  %7 = load i64, ptr %i, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %vla, i64 %7
  %topic = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %arrayidx, i32 0, i32 0
  %8 = load ptr, ptr %existing_subscription, align 8, !tbaa !4
  %topic_filter = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %topic, ptr align 8 %topic_filter, i64 16, i1 false), !tbaa.struct !26
  %9 = load ptr, ptr %existing_subscription, align 8, !tbaa !4
  %qos = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %qos, align 8, !tbaa !111
  %11 = load i64, ptr %i, align 8, !tbaa !27
  %arrayidx2 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %vla, i64 %11
  %qos3 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %arrayidx2, i32 0, i32 1
  store i32 %10, ptr %qos3, align 16, !tbaa !97
  %12 = load ptr, ptr %existing_subscription, align 8, !tbaa !4
  %on_publish_received = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %on_publish_received, align 8, !tbaa !117
  %14 = load i64, ptr %i, align 8, !tbaa !27
  %arrayidx4 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %vla, i64 %14
  %on_publish = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %arrayidx4, i32 0, i32 2
  store ptr %13, ptr %on_publish, align 8, !tbaa !116
  %15 = load ptr, ptr %existing_subscription, align 8, !tbaa !4
  %on_cleanup = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %on_cleanup, align 8, !tbaa !119
  %17 = load i64, ptr %i, align 8, !tbaa !27
  %arrayidx5 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %vla, i64 %17
  %on_cleanup6 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %arrayidx5, i32 0, i32 3
  store ptr %16, ptr %on_cleanup6, align 16, !tbaa !118
  %18 = load ptr, ptr %existing_subscription, align 8, !tbaa !4
  %callback_user_data = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %callback_user_data, align 8, !tbaa !121
  %20 = load i64, ptr %i, align 8, !tbaa !27
  %arrayidx7 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %vla, i64 %20
  %on_publish_ud = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %arrayidx7, i32 0, i32 4
  store ptr %19, ptr %on_publish_ud, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 8, ptr %existing_subscription) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, ptr %i, align 8, !tbaa !27
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %22 = load ptr, ptr %subscribe_op.addr, align 8, !tbaa !4
  %23 = load i64, ptr %subscription_count, align 8, !tbaa !27
  %call8 = call i32 @s_aws_mqtt5_to_mqtt3_adapter_build_subscribe(ptr noundef %22, i64 noundef %23, ptr noundef %vla)
  %24 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %24)
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_count) #9
  ret i32 %call8
}

declare i32 @aws_last_error() #2

; Function Attrs: nounwind uwtable
define void @aws_mqtt5_to_mqtt3_adapter_operation_table_remove_operation(ptr noundef %table, i16 noundef zeroext %operation_id) #0 {
entry:
  %table.addr = alloca ptr, align 8
  %operation_id.addr = alloca i16, align 2
  %existing_element = alloca %struct.aws_hash_element, align 8
  %operation = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8, !tbaa !4
  store i16 %operation_id, ptr %operation_id.addr, align 2, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 16, ptr %existing_element) #9
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %existing_element, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %0, i32 0, i32 0
  %call = call i32 @aws_mutex_lock(ptr noundef %lock)
  %1 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %operations = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %1, i32 0, i32 1
  %call1 = call i32 @aws_hash_table_remove(ptr noundef %operations, ptr noundef %operation_id.addr, ptr noundef %existing_element, ptr noundef null)
  %2 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %lock2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %2, i32 0, i32 0
  %call3 = call i32 @aws_mutex_unlock(ptr noundef %lock2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %existing_element, i32 0, i32 1
  %3 = load ptr, ptr %value, align 8, !tbaa !137
  store ptr %3, ptr %operation, align 8, !tbaa !4
  %4 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %operation, align 8, !tbaa !4
  %call4 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %existing_element) #9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_get_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #5 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !27
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %data, align 8, !tbaa !135
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %item_size, align 8, !tbaa !139
  %7 = load i64, ptr %index.addr, align 8, !tbaa !27
  %mul = mul i64 %6, %7
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size1 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size1, align 8, !tbaa !139
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

declare void @aws_mqtt_subscription_set_add_subscription(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_clean_up(ptr noalias noundef %list) #5 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !140
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !135
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc2, align 8, !tbaa !140
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !135
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
define ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_unsubscribe(ptr noundef %allocator, ptr noundef %options) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %unsubscribe_op = alloca ptr, align 8
  %unsubscribe_view = alloca %struct.aws_mqtt5_packet_unsubscribe_view, align 8
  %unsubscribe_completion_options = alloca %struct.aws_mqtt5_unsubscribe_completion_options, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %unsubscribe_op) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 184)
  store ptr %call, ptr %unsubscribe_op, align 8, !tbaa !4
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %2, i32 0, i32 0
  %allocator1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 0
  store ptr %1, ptr %allocator1, align 8, !tbaa !141
  %3 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %3, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base2, i32 0, i32 1
  %4 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %4, ptr noundef @s_adapter_unsubscribe_operation_destroy)
  %5 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %6 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %6, i32 0, i32 0
  %impl = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base3, i32 0, i32 2
  store ptr %5, ptr %impl, align 8, !tbaa !143
  %7 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %7, i32 0, i32 0
  %type = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base4, i32 0, i32 6
  store i32 2, ptr %type, align 8, !tbaa !144
  %8 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %adapter, align 8, !tbaa !145
  %10 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %10, i32 0, i32 0
  %adapter6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base5, i32 0, i32 3
  store ptr %9, ptr %adapter6, align 8, !tbaa !147
  %11 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %11, i32 0, i32 0
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base7, i32 0, i32 4
  store i8 0, ptr %holding_adapter_ref, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 40, ptr %unsubscribe_view) #9
  %packet_id = getelementptr inbounds %struct.aws_mqtt5_packet_unsubscribe_view, ptr %unsubscribe_view, i32 0, i32 0
  store i16 0, ptr %packet_id, align 8, !tbaa !149
  %topic_filter_count = getelementptr inbounds %struct.aws_mqtt5_packet_unsubscribe_view, ptr %unsubscribe_view, i32 0, i32 1
  store i64 1, ptr %topic_filter_count, align 8, !tbaa !151
  %topic_filters = getelementptr inbounds %struct.aws_mqtt5_packet_unsubscribe_view, ptr %unsubscribe_view, i32 0, i32 2
  %12 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %topic_filter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %12, i32 0, i32 1
  store ptr %topic_filter, ptr %topic_filters, align 8, !tbaa !152
  %user_property_count = getelementptr inbounds %struct.aws_mqtt5_packet_unsubscribe_view, ptr %unsubscribe_view, i32 0, i32 3
  store i64 0, ptr %user_property_count, align 8, !tbaa !153
  %user_properties = getelementptr inbounds %struct.aws_mqtt5_packet_unsubscribe_view, ptr %unsubscribe_view, i32 0, i32 4
  store ptr null, ptr %user_properties, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 16, ptr %unsubscribe_completion_options) #9
  %completion_callback = getelementptr inbounds %struct.aws_mqtt5_unsubscribe_completion_options, ptr %unsubscribe_completion_options, i32 0, i32 0
  store ptr @s_aws_mqtt5_to_mqtt3_adapter_unsubscribe_completion_fn, ptr %completion_callback, align 8, !tbaa !155
  %completion_user_data = getelementptr inbounds %struct.aws_mqtt5_unsubscribe_completion_options, ptr %unsubscribe_completion_options, i32 0, i32 1
  %13 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  store ptr %13, ptr %completion_user_data, align 8, !tbaa !157
  %14 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %adapter8 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %adapter8, align 8, !tbaa !145
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %client, align 8, !tbaa !50
  %call9 = call ptr @aws_mqtt5_operation_unsubscribe_new(ptr noundef %14, ptr noundef %17, ptr noundef %unsubscribe_view, ptr noundef %unsubscribe_completion_options)
  %18 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %unsubscribe_op10 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %18, i32 0, i32 1
  store ptr %call9, ptr %unsubscribe_op10, align 8, !tbaa !158
  %19 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %unsubscribe_op11 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %unsubscribe_op11, align 8, !tbaa !158
  %cmp = icmp eq ptr %20, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %21 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_unsuback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %on_unsuback, align 8, !tbaa !159
  %23 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %on_unsuback12 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %23, i32 0, i32 3
  store ptr %22, ptr %on_unsuback12, align 8, !tbaa !160
  %24 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %on_unsuback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %on_unsuback_user_data, align 8, !tbaa !161
  %26 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %on_unsuback_user_data13 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %26, i32 0, i32 4
  store ptr %25, ptr %on_unsuback_user_data13, align 8, !tbaa !162
  %27 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %topic_filter14 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %topic_filter15 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %29, i32 0, i32 1
  %30 = getelementptr inbounds { i64, ptr }, ptr %topic_filter15, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds { i64, ptr }, ptr %topic_filter15, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %call16 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %topic_filter14, ptr noundef %28, i64 %31, ptr %33)
  %34 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  store ptr %34, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then
  %35 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base17 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %35, i32 0, i32 0
  %call18 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base17)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %unsubscribe_completion_options) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr %unsubscribe_view) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %unsubscribe_op) #9
  %36 = load ptr, ptr %retval, align 8
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define internal void @s_adapter_unsubscribe_operation_destroy(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %operation = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %unsubscribe_op = alloca ptr, align 8
  %adapter_to_release = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %operation, align 8, !tbaa !4
  %1 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %unsubscribe_op) #9
  %2 = load ptr, ptr %operation, align 8, !tbaa !4
  %impl = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %impl, align 8, !tbaa !63
  store ptr %3, ptr %unsubscribe_op, align 8, !tbaa !4
  %4 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %topic_filter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %4, i32 0, i32 2
  call void @aws_byte_buf_clean_up(ptr noundef %topic_filter)
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter_to_release) #9
  store ptr null, ptr %adapter_to_release, align 8, !tbaa !4
  %5 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %5, i32 0, i32 0
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 4
  %6 = load i8, ptr %holding_adapter_ref, align 8, !tbaa !148, !range !34, !noundef !35
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %7 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base2 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %7, i32 0, i32 0
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base2, i32 0, i32 3
  %8 = load ptr, ptr %adapter, align 8, !tbaa !147
  store ptr %8, ptr %adapter_to_release, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %9 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %unsubscribe_op4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %unsubscribe_op4, align 8, !tbaa !158
  %completion_options = getelementptr inbounds %struct.aws_mqtt5_operation_unsubscribe, ptr %10, i32 0, i32 3
  %completion_callback = getelementptr inbounds %struct.aws_mqtt5_unsubscribe_completion_options, ptr %completion_options, i32 0, i32 0
  store ptr null, ptr %completion_callback, align 8, !tbaa !163
  %11 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %unsubscribe_op5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %unsubscribe_op5, align 8, !tbaa !158
  %completion_options6 = getelementptr inbounds %struct.aws_mqtt5_operation_unsubscribe, ptr %12, i32 0, i32 3
  %completion_user_data = getelementptr inbounds %struct.aws_mqtt5_unsubscribe_completion_options, ptr %completion_options6, i32 0, i32 1
  store ptr null, ptr %completion_user_data, align 8, !tbaa !166
  %13 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %unsubscribe_op7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %unsubscribe_op7, align 8, !tbaa !158
  %base8 = getelementptr inbounds %struct.aws_mqtt5_operation_unsubscribe, ptr %14, i32 0, i32 0
  %call = call ptr @aws_mqtt5_operation_release(ptr noundef %base8)
  %15 = load ptr, ptr %operation, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %allocator, align 8, !tbaa !73
  %17 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %adapter_to_release, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %18, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end3
  %19 = load ptr, ptr %adapter_to_release, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 8
  %call11 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end3
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter_to_release) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %unsubscribe_op) #9
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
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
define internal void @s_aws_mqtt5_to_mqtt3_adapter_unsubscribe_completion_fn(ptr noundef %unsuback, i32 noundef %error_code, ptr noundef %complete_ctx) #0 {
entry:
  %unsuback.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %complete_ctx.addr = alloca ptr, align 8
  %unsubscribe_op = alloca ptr, align 8
  store ptr %unsuback, ptr %unsuback.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !75
  store ptr %complete_ctx, ptr %complete_ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %unsuback.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %unsubscribe_op) #9
  %1 = load ptr, ptr %complete_ctx.addr, align 8, !tbaa !4
  store ptr %1, ptr %unsubscribe_op, align 8, !tbaa !4
  %2 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %on_unsuback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %on_unsuback, align 8, !tbaa !160
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %on_unsuback1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %on_unsuback1, align 8, !tbaa !160
  %6 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %6, i32 0, i32 0
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 3
  %7 = load ptr, ptr %adapter, align 8, !tbaa !147
  %base2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %8, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base3, i32 0, i32 7
  %9 = load i16, ptr %id, align 4, !tbaa !167
  %10 = load i32, ptr %error_code.addr, align 4, !tbaa !75
  %11 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %on_unsuback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %on_unsuback_user_data, align 8, !tbaa !162
  call void %5(ptr noundef %base2, i16 noundef zeroext %9, i32 noundef %10, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base4 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %13, i32 0, i32 0
  %adapter5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base4, i32 0, i32 3
  %14 = load ptr, ptr %adapter5, align 8, !tbaa !147
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %14, i32 0, i32 11
  %15 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !4
  %base6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %15, i32 0, i32 0
  %id7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base6, i32 0, i32 7
  %16 = load i16, ptr %id7, align 4, !tbaa !167
  call void @aws_mqtt5_to_mqtt3_adapter_operation_table_remove_operation(ptr noundef %operational_state, i16 noundef zeroext %16)
  call void @llvm.lifetime.end.p0(i64 8, ptr %unsubscribe_op) #9
  ret void
}

declare ptr @aws_mqtt5_operation_unsubscribe_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef, ptr noundef, i64, ptr) #2

; Function Attrs: nounwind uwtable
define void @s_adapter_unsubscribe_submission_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %operation = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %operation, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %2, i32 0, i32 0
  %adapter1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 3
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !147
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %adapter, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %subscriptions, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #9
  %6 = load ptr, ptr %operation, align 8, !tbaa !4
  %topic_filter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %6, i32 0, i32 2
  %call = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %topic_filter)
  %7 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %8 = extractvalue { i64, ptr } %call, 0
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %10 = extractvalue { i64, ptr } %call, 1
  store ptr %10, ptr %9, align 8
  %11 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  call void @aws_mqtt_subscription_set_remove_subscription(ptr noundef %5, i64 %12, ptr %14)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #9
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %client, align 8, !tbaa !50
  %17 = load ptr, ptr %operation, align 8, !tbaa !4
  %unsubscribe_op = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %unsubscribe_op, align 8, !tbaa !158
  %base2 = getelementptr inbounds %struct.aws_mqtt5_operation_unsubscribe, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %19, 0
  call void @aws_mqtt5_client_submit_operation_internal(ptr noundef %16, ptr noundef %base2, i1 noundef zeroext %cmp)
  %20 = load ptr, ptr %operation, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %20, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_release_cross_thread_refs(ptr noundef %base3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  ret void
}

declare void @aws_mqtt_subscription_set_remove_subscription(ptr noundef, i64, ptr) #2

declare { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_mqtt_client_connection_new_from_mqtt5_client(ptr noundef %client) #0 {
entry:
  %client.addr = alloca ptr, align 8
  %allocator = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %listener_config = alloca %struct.aws_mqtt5_listener_config, align 8
  store ptr %client, ptr %client.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocator) #9
  %0 = load ptr, ptr %client.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %allocator1, align 8, !tbaa !168
  store ptr %1, ptr %allocator, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %allocator, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %2, i64 noundef 1, i64 noundef 400)
  store ptr %call, ptr %adapter, align 8, !tbaa !4
  %3 = load ptr, ptr %allocator, align 8, !tbaa !4
  %4 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %4, i32 0, i32 0
  store ptr %3, ptr %allocator2, align 8, !tbaa !184
  %5 = load ptr, ptr @s_aws_mqtt_client_connection_5_vtable_ptr, align 8, !tbaa !4
  %6 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 1
  %vtable = getelementptr inbounds %struct.aws_mqtt_client_connection, ptr %base, i32 0, i32 0
  store ptr %5, ptr %vtable, align 8, !tbaa !185
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %8 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base3 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %8, i32 0, i32 1
  %impl = getelementptr inbounds %struct.aws_mqtt_client_connection, ptr %base3, i32 0, i32 1
  store ptr %7, ptr %impl, align 8, !tbaa !186
  %9 = load ptr, ptr %client.addr, align 8, !tbaa !4
  %call4 = call ptr @aws_mqtt5_client_acquire(ptr noundef %9)
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client5 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %10, i32 0, i32 2
  store ptr %call4, ptr %client5, align 8, !tbaa !50
  %11 = load ptr, ptr %client.addr, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt5_client, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %loop, align 8, !tbaa !187
  %13 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop6 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %13, i32 0, i32 4
  store ptr %12, ptr %loop6, align 8, !tbaa !188
  %14 = load ptr, ptr %adapter, align 8, !tbaa !4
  %adapter_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %14, i32 0, i32 6
  store i32 2, ptr %adapter_state, align 4, !tbaa !189
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %external_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %external_refs, ptr noundef %16, ptr noundef @s_aws_mqtt5_to_mqtt3_adapter_on_zero_external_refs)
  %17 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %internal_refs, ptr noundef %18, ptr noundef @s_aws_mqtt5_to_mqtt3_adapter_on_zero_internal_refs)
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 9
  %call7 = call i32 @aws_rw_lock_init(ptr noundef %lock)
  %20 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %allocator, align 8, !tbaa !4
  call void @aws_mqtt5_to_mqtt3_adapter_operation_table_init(ptr noundef %operational_state, ptr noundef %21)
  %22 = load ptr, ptr %allocator, align 8, !tbaa !4
  %call8 = call ptr @aws_mqtt_subscription_set_new(ptr noundef %22)
  %23 = load ptr, ptr %adapter, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %23, i32 0, i32 12
  store ptr %call8, ptr %subscriptions, align 8, !tbaa !132
  %24 = load ptr, ptr %adapter, align 8, !tbaa !4
  %synced_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %24, i32 0, i32 10
  %terminated = getelementptr inbounds %struct.anon, ptr %synced_data, i32 0, i32 0
  store i8 0, ptr %terminated, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 56, ptr %listener_config) #9
  %client9 = getelementptr inbounds %struct.aws_mqtt5_listener_config, ptr %listener_config, i32 0, i32 0
  %25 = load ptr, ptr %client.addr, align 8, !tbaa !4
  store ptr %25, ptr %client9, align 8, !tbaa !191
  %listener_callbacks = getelementptr inbounds %struct.aws_mqtt5_listener_config, ptr %listener_config, i32 0, i32 1
  %listener_publish_received_handler = getelementptr inbounds %struct.aws_mqtt5_callback_set, ptr %listener_callbacks, i32 0, i32 0
  store ptr @s_aws_mqtt5_listener_publish_received_adapter, ptr %listener_publish_received_handler, align 8, !tbaa !194
  %listener_publish_received_handler_user_data = getelementptr inbounds %struct.aws_mqtt5_callback_set, ptr %listener_callbacks, i32 0, i32 1
  %26 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %26, ptr %listener_publish_received_handler_user_data, align 8, !tbaa !195
  %lifecycle_event_handler = getelementptr inbounds %struct.aws_mqtt5_callback_set, ptr %listener_callbacks, i32 0, i32 2
  store ptr @s_aws_mqtt5_client_lifecycle_event_callback_adapter, ptr %lifecycle_event_handler, align 8, !tbaa !196
  %lifecycle_event_handler_user_data = getelementptr inbounds %struct.aws_mqtt5_callback_set, ptr %listener_callbacks, i32 0, i32 3
  %27 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %27, ptr %lifecycle_event_handler_user_data, align 8, !tbaa !197
  %termination_callback = getelementptr inbounds %struct.aws_mqtt5_listener_config, ptr %listener_config, i32 0, i32 2
  store ptr @s_aws_mqtt5_to_mqtt3_adapter_on_listener_detached, ptr %termination_callback, align 8, !tbaa !198
  %termination_callback_user_data = getelementptr inbounds %struct.aws_mqtt5_listener_config, ptr %listener_config, i32 0, i32 3
  %28 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %28, ptr %termination_callback_user_data, align 8, !tbaa !199
  %29 = load ptr, ptr %allocator, align 8, !tbaa !4
  %call10 = call ptr @aws_mqtt5_listener_new(ptr noundef %29, ptr noundef %listener_config)
  %30 = load ptr, ptr %adapter, align 8, !tbaa !4
  %listener = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %30, i32 0, i32 3
  store ptr %call10, ptr %listener, align 8, !tbaa !200
  %31 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base11 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %31, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 56, ptr %listener_config) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocator) #9
  ret ptr %base11
}

declare ptr @aws_mqtt5_client_acquire(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_on_zero_external_refs(ptr noundef %impl) #0 {
entry:
  %impl.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call = call i32 @s_aws_mqtt5_adapter_perform_safe_callback(ptr noundef %1, i1 noundef zeroext true, ptr noundef @s_decref_for_shutdown, ptr noundef null)
  %2 = load ptr, ptr %adapter, align 8, !tbaa !4
  %listener = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %listener, align 8, !tbaa !200
  %call1 = call ptr @aws_mqtt5_listener_release(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_on_zero_internal_refs(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  call void @s_aws_mqtt_adapter_final_destroy(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret void
}

declare i32 @aws_rw_lock_init(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @aws_mqtt5_to_mqtt3_adapter_operation_table_init(ptr noundef %table, ptr noundef %allocator) #0 {
entry:
  %table.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %0, i32 0, i32 0
  %call = call i32 @aws_mutex_init(ptr noundef %lock)
  %1 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %operations = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call1 = call i32 @aws_hash_table_init(ptr noundef %operations, ptr noundef %2, i64 noundef 100, ptr noundef @aws_mqtt_hash_uint16_t, ptr noundef @aws_mqtt_compare_uint16_t_eq, ptr noundef null, ptr noundef null)
  %3 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %next_id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %3, i32 0, i32 2
  store i16 1, ptr %next_id, align 8, !tbaa !201
  ret void
}

declare ptr @aws_mqtt_subscription_set_new(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s_aws_mqtt5_listener_publish_received_adapter(ptr noundef %publish, ptr noundef %user_data) #0 {
entry:
  %publish.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %connection = alloca ptr, align 8
  %incoming_publish_options = alloca %struct.aws_mqtt_subscription_set_publish_received_options, align 8
  store ptr %publish, ptr %publish.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 1
  store ptr %base, ptr %connection, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %incoming_publish_options) #9
  %connection1 = getelementptr inbounds %struct.aws_mqtt_subscription_set_publish_received_options, ptr %incoming_publish_options, i32 0, i32 0
  %2 = load ptr, ptr %connection, align 8, !tbaa !4
  store ptr %2, ptr %connection1, align 8, !tbaa !202
  %topic = getelementptr inbounds %struct.aws_mqtt_subscription_set_publish_received_options, ptr %incoming_publish_options, i32 0, i32 1
  %3 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %topic2 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %3, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic, ptr align 8 %topic2, i64 16, i1 false), !tbaa.struct !26
  %qos = getelementptr inbounds %struct.aws_mqtt_subscription_set_publish_received_options, ptr %incoming_publish_options, i32 0, i32 2
  %4 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %qos3 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %qos3, align 4, !tbaa !31
  store i32 %5, ptr %qos, align 8, !tbaa !204
  %retain = getelementptr inbounds %struct.aws_mqtt_subscription_set_publish_received_options, ptr %incoming_publish_options, i32 0, i32 3
  %6 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %retain4 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %6, i32 0, i32 4
  %7 = load i8, ptr %retain4, align 1, !tbaa !36, !range !34, !noundef !35
  %tobool = trunc i8 %7 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %retain, align 4, !tbaa !205
  %dup = getelementptr inbounds %struct.aws_mqtt_subscription_set_publish_received_options, ptr %incoming_publish_options, i32 0, i32 4
  %8 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %duplicate = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %8, i32 0, i32 3
  %9 = load i8, ptr %duplicate, align 8, !tbaa !32, !range !34, !noundef !35
  %tobool5 = trunc i8 %9 to i1
  %frombool6 = zext i1 %tobool5 to i8
  store i8 %frombool6, ptr %dup, align 1, !tbaa !206
  %payload = getelementptr inbounds %struct.aws_mqtt_subscription_set_publish_received_options, ptr %incoming_publish_options, i32 0, i32 5
  %10 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %payload7 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %10, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %payload, ptr align 8 %payload7, i64 16, i1 false), !tbaa.struct !26
  %11 = load ptr, ptr %adapter, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %subscriptions, align 8, !tbaa !132
  call void @aws_mqtt_subscription_set_on_publish_received(ptr noundef %12, ptr noundef %incoming_publish_options)
  %13 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_any_publish = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %13, i32 0, i32 23
  %14 = load ptr, ptr %on_any_publish, align 8, !tbaa !207
  %tobool8 = icmp ne ptr %14, null
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_any_publish9 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 23
  %16 = load ptr, ptr %on_any_publish9, align 8, !tbaa !207
  %17 = load ptr, ptr %connection, align 8, !tbaa !4
  %18 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %topic10 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %payload11 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %duplicate12 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %20, i32 0, i32 3
  %21 = load i8, ptr %duplicate12, align 8, !tbaa !32, !range !34, !noundef !35
  %tobool13 = trunc i8 %21 to i1
  %22 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %qos14 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %qos14, align 4, !tbaa !31
  %24 = load ptr, ptr %publish.addr, align 8, !tbaa !4
  %retain15 = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %24, i32 0, i32 4
  %25 = load i8, ptr %retain15, align 1, !tbaa !36, !range !34, !noundef !35
  %tobool16 = trunc i8 %25 to i1
  %26 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_any_publish_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %26, i32 0, i32 24
  %27 = load ptr, ptr %on_any_publish_user_data, align 8, !tbaa !208
  call void %16(ptr noundef %17, ptr noundef %topic10, ptr noundef %payload11, i1 noundef zeroext %tobool13, i32 noundef %23, i1 noundef zeroext %tobool16, ptr noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr %incoming_publish_options) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret i1 false
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_client_lifecycle_event_callback_adapter(ptr noundef %event) #0 {
entry:
  %event.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %event, ptr %event.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %user_data, align 8, !tbaa !209
  store ptr %1, ptr %adapter, align 8, !tbaa !4
  %2 = load ptr, ptr %adapter, align 8, !tbaa !4
  %3 = load ptr, ptr %event.addr, align 8, !tbaa !4
  %call = call i32 @s_aws_mqtt5_adapter_perform_safe_callback(ptr noundef %2, i1 noundef zeroext false, ptr noundef @s_aws_mqtt5_to_mqtt3_adapter_safe_lifecycle_handler, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_on_listener_detached(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret void
}

declare ptr @aws_mqtt5_listener_new(ptr noundef, ptr noundef) #2

declare i32 @aws_mutex_init(ptr noundef) #2

declare i32 @aws_hash_table_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @aws_mqtt_hash_uint16_t(ptr noundef) #2

declare zeroext i1 @aws_mqtt_compare_uint16_t_eq(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @aws_mqtt5_to_mqtt3_adapter_operation_table_clean_up(ptr noundef %table) #0 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %operations = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %call = call i32 @aws_hash_table_foreach(ptr noundef %operations, ptr noundef @s_adapter_operation_clean_up, ptr noundef %1)
  %2 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %operations1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %2, i32 0, i32 1
  call void @aws_hash_table_clean_up(ptr noundef %operations1)
  %3 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %3, i32 0, i32 0
  call void @aws_mutex_clean_up(ptr noundef %lock)
  ret void
}

declare i32 @aws_hash_table_foreach(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_adapter_operation_clean_up(ptr noundef %context, ptr noundef %operation_element) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %operation_element.addr = alloca ptr, align 8
  %operation = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %operation_element, ptr %operation_element.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %1 = load ptr, ptr %operation_element.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %value, align 8, !tbaa !137
  store ptr %2, ptr %operation, align 8, !tbaa !4
  %3 = load ptr, ptr %operation, align 8, !tbaa !4
  %call = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  ret i32 1
}

declare void @aws_hash_table_clean_up(ptr noundef) #2

declare void @aws_mutex_clean_up(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @aws_mqtt5_to_mqtt3_adapter_operation_table_add_operation(ptr noundef %table, ptr noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %operation.addr = alloca ptr, align 8
  %current_id = alloca i16, align 2
  %elem = alloca ptr, align 8
  %i = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8, !tbaa !4
  store ptr %operation, ptr %operation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %0, i32 0, i32 7
  store i16 0, ptr %id, align 4, !tbaa !211
  %1 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %1, i32 0, i32 0
  %call = call i32 @aws_mutex_lock(ptr noundef %lock)
  call void @llvm.lifetime.start.p0(i64 2, ptr %current_id) #9
  %2 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %next_id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %2, i32 0, i32 2
  %3 = load i16, ptr %next_id, align 8, !tbaa !201
  store i16 %3, ptr %current_id, align 2, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem) #9
  store ptr null, ptr %elem, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #9
  store i16 0, ptr %i, align 2, !tbaa !136
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i16, ptr %i, align 2, !tbaa !136
  %conv = zext i16 %4 to i32
  %cmp = icmp slt i32 %conv, 65535
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %operations = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %5, i32 0, i32 1
  %call2 = call i32 @aws_hash_table_find(ptr noundef %operations, ptr noundef %current_id, ptr noundef %elem)
  %6 = load ptr, ptr %elem, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %7 = load i16, ptr %current_id, align 2, !tbaa !136
  %8 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %id5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %8, i32 0, i32 7
  store i16 %7, ptr %id5, align 4, !tbaa !211
  %9 = load i16, ptr %current_id, align 2, !tbaa !136
  %call6 = call zeroext i16 @s_next_adapter_id(i16 noundef zeroext %9)
  %10 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %next_id7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %10, i32 0, i32 2
  store i16 %call6, ptr %next_id7, align 8, !tbaa !201
  %11 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %operations8 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %id9 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %call10 = call i32 @aws_hash_table_put(ptr noundef %operations8, ptr noundef %id9, ptr noundef %13, ptr noundef null)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %14 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %id12 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %14, i32 0, i32 7
  store i16 0, ptr %id12, align 4, !tbaa !211
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %15 = load i16, ptr %current_id, align 2, !tbaa !136
  %call14 = call zeroext i16 @s_next_adapter_id(i16 noundef zeroext %15)
  store i16 %call14, ptr %current_id, align 2, !tbaa !136
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %16 = load i16, ptr %i, align 2, !tbaa !136
  %inc = add i16 %16, 1
  store i16 %inc, ptr %i, align 2, !tbaa !136
  br label %for.cond

cleanup:                                          ; preds = %if.end, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup22 [
    i32 2, label %for.end
    i32 5, label %done
  ]

for.end:                                          ; preds = %cleanup
  br label %done

done:                                             ; preds = %for.end, %cleanup
  %17 = load ptr, ptr %table.addr, align 8, !tbaa !4
  %lock15 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_table, ptr %17, i32 0, i32 0
  %call16 = call i32 @aws_mutex_unlock(ptr noundef %lock15)
  %18 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %id17 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %18, i32 0, i32 7
  %19 = load i16, ptr %id17, align 4, !tbaa !211
  %conv18 = zext i16 %19 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %done
  br label %cond.end

cond.false:                                       ; preds = %done
  %call21 = call i32 @aws_raise_error(i32 noundef 5139)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call21, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %cond.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr %current_id) #9
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare i32 @aws_mutex_lock(ptr noundef) #2

declare i32 @aws_hash_table_find(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i16 @s_next_adapter_id(i16 noundef zeroext %current_id) #0 {
entry:
  %current_id.addr = alloca i16, align 2
  store i16 %current_id, ptr %current_id.addr, align 2, !tbaa !136
  %0 = load i16, ptr %current_id.addr, align 2, !tbaa !136
  %inc = add i16 %0, 1
  store i16 %inc, ptr %current_id.addr, align 2, !tbaa !136
  %conv = zext i16 %inc to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 1, ptr %current_id.addr, align 2, !tbaa !136
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i16, ptr %current_id.addr, align 2, !tbaa !136
  ret i16 %1
}

declare i32 @aws_hash_table_put(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @aws_mutex_unlock(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #5 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !75
  %0 = load i32, ptr %err.addr, align 4, !tbaa !75
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare i32 @aws_hash_table_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @aws_ref_count_release(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_mqtt5_to_mqtt3_adapter_operation_acquire(ptr noundef %operation) #0 {
entry:
  %operation.addr = alloca ptr, align 8
  store ptr %operation, ptr %operation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %1, i32 0, i32 1
  %call = call ptr @aws_ref_count_acquire(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  ret ptr %2
}

declare ptr @aws_ref_count_acquire(ptr noundef) #2

declare ptr @aws_mqtt5_operation_release(ptr noundef) #2

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

declare ptr @aws_logger_get() #2

declare zeroext i1 @aws_mqtt_is_valid_topic_filter(ptr noundef) #2

declare void @aws_mqtt_subscription_set_subscription_record_destroy(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_init_dynamic(ptr noalias noundef %list, ptr noundef %alloc, i64 noundef %initial_item_allocation, i64 noundef %item_size) #5 {
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
  store i64 %initial_item_allocation, ptr %initial_item_allocation.addr, align 8, !tbaa !27
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !27
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 24) #10
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
  call void @aws_fatal_assert(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 25) #10
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_size.addr, align 8, !tbaa !27
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.5, ptr noundef @.str.3, i32 noundef 26) #10
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocation_size) #9
  store i64 0, ptr %allocation_size, align 8, !tbaa !27
  %4 = load i64, ptr %initial_item_allocation.addr, align 8, !tbaa !27
  %5 = load i64, ptr %item_size.addr, align 8, !tbaa !27
  %call = call i32 @aws_mul_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %allocation_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end12
  br label %error

if.end14:                                         ; preds = %do.end12
  %6 = load i64, ptr %allocation_size, align 8, !tbaa !27
  %cmp15 = icmp ugt i64 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %7 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %8 = load i64, ptr %allocation_size, align 8, !tbaa !27
  %call17 = call ptr @aws_mem_acquire(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  store ptr %call17, ptr %data, align 8, !tbaa !135
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data18 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data18, align 8, !tbaa !135
  %tobool19 = icmp ne ptr %11, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then16
  br label %error

if.end21:                                         ; preds = %if.then16
  %12 = load i64, ptr %allocation_size, align 8, !tbaa !27
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 1
  store i64 %12, ptr %current_size, align 8, !tbaa !212
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %14 = load i64, ptr %item_size.addr, align 8, !tbaa !27
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size23 = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 3
  store i64 %14, ptr %item_size23, align 8, !tbaa !139
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc24 = getelementptr inbounds %struct.aws_array_list, ptr %17, i32 0, i32 0
  store ptr %16, ptr %alloc24, align 8, !tbaa !140
  br label %do.body25

do.body25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size26 = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %current_size26, align 8, !tbaa !212
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body25
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data28 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data28, align 8, !tbaa !135
  %tobool29 = icmp ne ptr %21, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 49) #10
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocation_size) #9
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare ptr @aws_mqtt_subscription_set_subscription_record_new(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_push_back(ptr noalias noundef %list, ptr noundef %val) #5 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %err_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_code) #9
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %2)
  %call1 = call i32 @aws_array_list_set_at(ptr noundef %0, ptr noundef %1, i64 noundef %call)
  store i32 %call1, ptr %err_code, align 4, !tbaa !75
  %3 = load i32, ptr %err_code, align 4, !tbaa !75
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !140
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !75
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #9
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_subscribe_completion_fn(ptr noundef %suback, i32 noundef %error_code, ptr noundef %complete_ctx) #0 {
entry:
  %suback.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %complete_ctx.addr = alloca ptr, align 8
  %subscribe_op = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %topic_filter = alloca %struct.aws_byte_cursor, align 8
  %granted_qos = alloca i32, align 4
  %subscription_count = alloca i64, align 8
  %record = alloca ptr, align 8
  %logger29 = alloca ptr, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %subscription_ptr = alloca ptr, align 8
  %multi_sub_list = alloca %struct.aws_array_list, align 8
  %subscription_count48 = alloca i64, align 8
  %i = alloca i64, align 8
  %subscription = alloca ptr, align 8
  %record61 = alloca ptr, align 8
  store ptr %suback, ptr %suback.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !75
  store ptr %complete_ctx, ptr %complete_ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscribe_op) #9
  %1 = load ptr, ptr %complete_ctx.addr, align 8, !tbaa !4
  store ptr %1, ptr %subscribe_op, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %2, i32 0, i32 0
  %adapter1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base, i32 0, i32 3
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !87
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %on_suback, align 8, !tbaa !90
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %6, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call3 = call i32 %9(ptr noundef %10, i32 noundef 5126)
  %cmp4 = icmp uge i32 %call3, 5
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable6 = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable6, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %log, align 8, !tbaa !103
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call7 = call i32 (ptr, i32, i32, ptr, ...) %13(ptr noundef %14, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.8, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %topic_filter) #9
  br label %do.body8

do.body8:                                         ; preds = %do.end
  call void @llvm.memset.p0.i64(ptr align 8 %topic_filter, i8 0, i64 16, i1 false)
  br label %do.cond9

do.cond9:                                         ; preds = %do.body8
  br label %do.end10

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %granted_qos) #9
  store i32 0, ptr %granted_qos, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_count) #9
  %16 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %16, i32 0, i32 2
  %call11 = call i64 @aws_array_list_length(ptr noundef %subscriptions)
  store i64 %call11, ptr %subscription_count, align 8, !tbaa !27
  %17 = load i64, ptr %subscription_count, align 8, !tbaa !27
  %cmp12 = icmp ugt i64 %17, 0
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #9
  store ptr null, ptr %record, align 8, !tbaa !4
  %18 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscriptions14 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %18, i32 0, i32 2
  %call15 = call i32 @aws_array_list_get_at(ptr noundef %subscriptions14, ptr noundef %record, i64 noundef 0)
  %19 = load ptr, ptr %record, align 8, !tbaa !4
  %subscription_view = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_record, ptr %19, i32 0, i32 2
  %topic_filter16 = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_view, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic_filter, ptr align 8 %topic_filter16, i64 16, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.end10
  %20 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  %reason_code_count = getelementptr inbounds %struct.aws_mqtt5_packet_suback_view, ptr %20, i32 0, i32 4
  %21 = load i64, ptr %reason_code_count, align 8, !tbaa !213
  %cmp18 = icmp ugt i64 %21, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %22 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  %reason_codes = getelementptr inbounds %struct.aws_mqtt5_packet_suback_view, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %reason_codes, align 8, !tbaa !215
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 0
  %24 = load i32, ptr %arrayidx, align 4, !tbaa !74
  %call20 = call i32 @s_convert_mqtt5_suback_reason_code_to_mqtt3_granted_qos(i32 noundef %24)
  store i32 %call20, ptr %granted_qos, align 4, !tbaa !74
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %25 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_suback22 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %on_suback22, align 8, !tbaa !90
  %27 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base23 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base24 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %28, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base24, i32 0, i32 7
  %29 = load i16, ptr %id, align 4, !tbaa !133
  %30 = load i32, ptr %granted_qos, align 4, !tbaa !74
  %31 = load i32, ptr %error_code.addr, align 4, !tbaa !75
  %32 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %on_suback_user_data, align 8, !tbaa !92
  call void %26(ptr noundef %base23, i16 noundef zeroext %29, ptr noundef %topic_filter, i32 noundef %30, i32 noundef %31, ptr noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_count) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %granted_qos) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %topic_filter) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %entry
  %34 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_multi_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %on_multi_suback, align 8, !tbaa !94
  %cmp26 = icmp ne ptr %35, null
  br i1 %cmp26, label %if.then27, label %if.end76

if.then27:                                        ; preds = %if.end25
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger29) #9
  %call30 = call ptr @aws_logger_get()
  store ptr %call30, ptr %logger29, align 8, !tbaa !4
  %36 = load ptr, ptr %logger29, align 8, !tbaa !4
  %cmp31 = icmp ne ptr %36, null
  br i1 %cmp31, label %land.lhs.true32, label %if.end41

land.lhs.true32:                                  ; preds = %do.body28
  %37 = load ptr, ptr %logger29, align 8, !tbaa !4
  %vtable33 = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable33, align 8, !tbaa !99
  %get_log_level34 = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %get_log_level34, align 8, !tbaa !101
  %40 = load ptr, ptr %logger29, align 8, !tbaa !4
  %call35 = call i32 %39(ptr noundef %40, i32 noundef 5126)
  %cmp36 = icmp uge i32 %call35, 5
  br i1 %cmp36, label %if.then37, label %if.end41

if.then37:                                        ; preds = %land.lhs.true32
  %41 = load ptr, ptr %logger29, align 8, !tbaa !4
  %vtable38 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable38, align 8, !tbaa !99
  %log39 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %log39, align 8, !tbaa !103
  %44 = load ptr, ptr %logger29, align 8, !tbaa !4
  %45 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call40 = call i32 (ptr, i32, i32, ptr, ...) %43(ptr noundef %44, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.9, ptr noundef %45)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %land.lhs.true32, %do.body28
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger29) #9
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  %46 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  %reason_code_count44 = getelementptr inbounds %struct.aws_mqtt5_packet_suback_view, ptr %46, i32 0, i32 4
  %47 = load i64, ptr %reason_code_count44, align 8, !tbaa !213
  %48 = call ptr @llvm.stacksave.p0()
  store ptr %48, ptr %saved_stack, align 8
  %vla = alloca %struct.aws_mqtt_topic_subscription, i64 %47, align 16
  store i64 %47, ptr %__vla_expr0, align 8
  %49 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  %reason_code_count45 = getelementptr inbounds %struct.aws_mqtt5_packet_suback_view, ptr %49, i32 0, i32 4
  %50 = load i64, ptr %reason_code_count45, align 8, !tbaa !213
  %vla46 = alloca ptr, i64 %50, align 16
  store i64 %50, ptr %__vla_expr1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_ptr) #9
  store ptr %vla, ptr %subscription_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 40, ptr %multi_sub_list) #9
  %51 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  %reason_code_count47 = getelementptr inbounds %struct.aws_mqtt5_packet_suback_view, ptr %51, i32 0, i32 4
  %52 = load i64, ptr %reason_code_count47, align 8, !tbaa !213
  call void @aws_array_list_init_static(ptr noundef %multi_sub_list, ptr noundef %vla46, i64 noundef %52, i64 noundef 8)
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription_count48) #9
  %53 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscriptions49 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %53, i32 0, i32 2
  %call50 = call i64 @aws_array_list_length(ptr noundef %subscriptions49)
  store i64 %call50, ptr %subscription_count48, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end43
  %54 = load i64, ptr %i, align 8, !tbaa !27
  %55 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  %reason_code_count51 = getelementptr inbounds %struct.aws_mqtt5_packet_suback_view, ptr %55, i32 0, i32 4
  %56 = load i64, ptr %reason_code_count51, align 8, !tbaa !213
  %cmp52 = icmp ult i64 %54, %56
  br i1 %cmp52, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscription) #9
  %57 = load ptr, ptr %subscription_ptr, align 8, !tbaa !4
  %58 = load i64, ptr %i, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %57, i64 %58
  store ptr %add.ptr, ptr %subscription, align 8, !tbaa !4
  br label %do.body53

do.body53:                                        ; preds = %for.body
  %59 = load ptr, ptr %subscription, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %59, i8 0, i64 48, i1 false)
  br label %do.cond54

do.cond54:                                        ; preds = %do.body53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  %60 = load ptr, ptr %suback.addr, align 8, !tbaa !4
  %reason_codes56 = getelementptr inbounds %struct.aws_mqtt5_packet_suback_view, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %reason_codes56, align 8, !tbaa !215
  %62 = load i64, ptr %i, align 8, !tbaa !27
  %arrayidx57 = getelementptr inbounds i32, ptr %61, i64 %62
  %63 = load i32, ptr %arrayidx57, align 4, !tbaa !74
  %call58 = call i32 @s_convert_mqtt5_suback_reason_code_to_mqtt3_granted_qos(i32 noundef %63)
  %64 = load ptr, ptr %subscription, align 8, !tbaa !4
  %qos = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %64, i32 0, i32 1
  store i32 %call58, ptr %qos, align 8, !tbaa !97
  %65 = load i64, ptr %i, align 8, !tbaa !27
  %66 = load i64, ptr %subscription_count48, align 8, !tbaa !27
  %cmp59 = icmp ult i64 %65, %66
  br i1 %cmp59, label %if.then60, label %if.end70

if.then60:                                        ; preds = %do.end55
  call void @llvm.lifetime.start.p0(i64 8, ptr %record61) #9
  store ptr null, ptr %record61, align 8, !tbaa !4
  %67 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %subscriptions62 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %67, i32 0, i32 2
  %68 = load i64, ptr %i, align 8, !tbaa !27
  %call63 = call i32 @aws_array_list_get_at(ptr noundef %subscriptions62, ptr noundef %record61, i64 noundef %68)
  %69 = load ptr, ptr %subscription, align 8, !tbaa !4
  %topic = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %record61, align 8, !tbaa !4
  %subscription_view64 = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_record, ptr %70, i32 0, i32 2
  %topic_filter65 = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_view64, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic, ptr align 8 %topic_filter65, i64 16, i1 false), !tbaa.struct !26
  %71 = load ptr, ptr %record61, align 8, !tbaa !4
  %subscription_view66 = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_record, ptr %71, i32 0, i32 2
  %on_publish_received = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_view66, i32 0, i32 5
  %72 = load ptr, ptr %on_publish_received, align 8, !tbaa !216
  %73 = load ptr, ptr %subscription, align 8, !tbaa !4
  %on_publish = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %73, i32 0, i32 2
  store ptr %72, ptr %on_publish, align 8, !tbaa !116
  %74 = load ptr, ptr %record61, align 8, !tbaa !4
  %subscription_view67 = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_record, ptr %74, i32 0, i32 2
  %callback_user_data = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_view67, i32 0, i32 7
  %75 = load ptr, ptr %callback_user_data, align 8, !tbaa !218
  %76 = load ptr, ptr %subscription, align 8, !tbaa !4
  %on_publish_ud = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %76, i32 0, i32 4
  store ptr %75, ptr %on_publish_ud, align 8, !tbaa !120
  %77 = load ptr, ptr %record61, align 8, !tbaa !4
  %subscription_view68 = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_record, ptr %77, i32 0, i32 2
  %on_cleanup = getelementptr inbounds %struct.aws_mqtt_subscription_set_subscription_options, ptr %subscription_view68, i32 0, i32 6
  %78 = load ptr, ptr %on_cleanup, align 8, !tbaa !219
  %79 = load ptr, ptr %subscription, align 8, !tbaa !4
  %on_cleanup69 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %79, i32 0, i32 3
  store ptr %78, ptr %on_cleanup69, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 8, ptr %record61) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then60, %do.end55
  %call71 = call i32 @aws_array_list_push_back(ptr noundef %multi_sub_list, ptr noundef %subscription)
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %80 = load i64, ptr %i, align 8, !tbaa !27
  %inc = add i64 %80, 1
  store i64 %inc, ptr %i, align 8, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %81 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_multi_suback72 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %81, i32 0, i32 5
  %82 = load ptr, ptr %on_multi_suback72, align 8, !tbaa !94
  %83 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base73 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base74 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %84, i32 0, i32 0
  %id75 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base74, i32 0, i32 7
  %85 = load i16, ptr %id75, align 4, !tbaa !133
  %86 = load i32, ptr %error_code.addr, align 4, !tbaa !75
  %87 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %on_multi_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %87, i32 0, i32 6
  %88 = load ptr, ptr %on_multi_suback_user_data, align 8, !tbaa !96
  call void %82(ptr noundef %base73, i16 noundef zeroext %85, ptr noundef %multi_sub_list, i32 noundef %86, ptr noundef %88)
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_count48) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr %multi_sub_list) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscription_ptr) #9
  %89 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %89)
  br label %if.end76

if.end76:                                         ; preds = %for.end, %if.end25
  %90 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base77 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %90, i32 0, i32 0
  %adapter78 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base77, i32 0, i32 3
  %91 = load ptr, ptr %adapter78, align 8, !tbaa !87
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %91, i32 0, i32 11
  %92 = load ptr, ptr %subscribe_op, align 8, !tbaa !4
  %base79 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %92, i32 0, i32 0
  %id80 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base79, i32 0, i32 7
  %93 = load i16, ptr %id80, align 4, !tbaa !133
  call void @aws_mqtt5_to_mqtt3_adapter_operation_table_remove_operation(ptr noundef %operational_state, i16 noundef zeroext %93)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscribe_op) #9
  ret void
}

declare ptr @aws_mqtt5_operation_subscribe_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #6

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #5 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_mul_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #5 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #5 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load i64, ptr %index.addr, align 8, !tbaa !27
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
  %3 = load ptr, ptr %data, align 8, !tbaa !135
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 389) #10
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !135
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !139
  %8 = load i64, ptr %index.addr, align 8, !tbaa !27
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %11, i1 false)
  %12 = load i64, ptr %index.addr, align 8, !tbaa !27
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call6 = call i64 @aws_array_list_length(ptr noundef %13)
  %cmp = icmp uge i64 %12, %call6
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %14 = load i64, ptr %index.addr, align 8, !tbaa !27
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #5 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_add_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #5 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
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
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

; Function Attrs: nounwind uwtable
define internal i32 @s_convert_mqtt5_suback_reason_code_to_mqtt3_granted_qos(i32 noundef %reason_code) #0 {
entry:
  %retval = alloca i32, align 4
  %reason_code.addr = alloca i32, align 4
  store i32 %reason_code, ptr %reason_code.addr, align 4, !tbaa !74
  %0 = load i32, ptr %reason_code.addr, align 4, !tbaa !74
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load i32, ptr %reason_code.addr, align 4, !tbaa !74
  store i32 %1, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 128, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_init_static(ptr noalias noundef %list, ptr noundef %raw_array, i64 noundef %item_count, i64 noundef %item_size) #5 {
entry:
  %list.addr = alloca ptr, align 8
  %raw_array.addr = alloca ptr, align 8
  %item_count.addr = alloca i64, align 8
  %item_size.addr = alloca i64, align 8
  %current_size = alloca i64, align 8
  %no_overflow = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %raw_array, ptr %raw_array.addr, align 8, !tbaa !4
  store i64 %item_count, ptr %item_count.addr, align 8, !tbaa !27
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !27
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 65) #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load ptr, ptr %raw_array.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.body1
  call void @aws_fatal_assert(ptr noundef @.str.10, ptr noundef @.str.3, i32 noundef 66) #10
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_count.addr, align 8, !tbaa !27
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.11, ptr noundef @.str.3, i32 noundef 67) #10
  unreachable

if.end9:                                          ; preds = %do.body6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %3 = load i64, ptr %item_size.addr, align 8, !tbaa !27
  %cmp12 = icmp ugt i64 %3, 0
  br i1 %cmp12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %do.body11
  call void @aws_fatal_assert(ptr noundef @.str.5, ptr noundef @.str.3, i32 noundef 68) #10
  unreachable

if.end14:                                         ; preds = %do.body11
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 40, i1 false)
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 0
  store ptr null, ptr %alloc, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_size) #9
  store i64 0, ptr %current_size, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_overflow) #9
  %6 = load i64, ptr %item_count.addr, align 8, !tbaa !27
  %7 = load i64, ptr %item_size.addr, align 8, !tbaa !27
  %call = call i32 @aws_mul_size_checked(i64 noundef %6, i64 noundef %7, ptr noundef %current_size)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %no_overflow, align 4, !tbaa !75
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %8 = load i32, ptr %no_overflow, align 4, !tbaa !75
  %tobool19 = icmp ne i32 %8, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %do.body18
  call void @aws_fatal_assert(ptr noundef @.str.12, ptr noundef @.str.3, i32 noundef 75) #10
  unreachable

if.end21:                                         ; preds = %do.body18
  br label %do.cond

do.cond:                                          ; preds = %if.end21
  br label %do.end22

do.end22:                                         ; preds = %do.cond
  %9 = load i64, ptr %current_size, align 8, !tbaa !27
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size23 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 1
  store i64 %9, ptr %current_size23, align 8, !tbaa !212
  %11 = load i64, ptr %item_size.addr, align 8, !tbaa !27
  %12 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size24 = getelementptr inbounds %struct.aws_array_list, ptr %12, i32 0, i32 3
  store i64 %11, ptr %item_size24, align 8, !tbaa !139
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 2
  store i64 0, ptr %length, align 8, !tbaa !134
  %14 = load ptr, ptr %raw_array.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 4
  store ptr %14, ptr %data, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_overflow) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_size) #9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_get_at_ptr(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #5 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !27
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !135
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %item_size, align 8, !tbaa !139
  %6 = load i64, ptr %index.addr, align 8, !tbaa !27
  %mul = mul i64 %5, %6
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %mul
  %7 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store ptr %add.ptr, ptr %7, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 10)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare void @aws_byte_buf_clean_up(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_client_connection_5_acquire(ptr noundef %impl) #0 {
entry:
  %impl.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %external_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 7
  %call = call ptr @aws_ref_count_acquire(ptr noundef %external_refs)
  %2 = load ptr, ptr %adapter, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret ptr %base
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt_client_connection_5_release(ptr noundef %impl) #0 {
entry:
  %impl.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %external_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 7
  %call = call i64 @aws_ref_count_release(ptr noundef %external_refs)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_will(ptr noundef %impl, ptr noundef %topic, i32 noundef %qos, i1 noundef zeroext %retain, ptr noundef %payload) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %topic.addr = alloca ptr, align 8
  %qos.addr = alloca i32, align 4
  %retain.addr = alloca i8, align 1
  %payload.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger13 = alloca ptr, align 8
  %task = alloca ptr, align 8
  %logger34 = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %topic, ptr %topic.addr, align 8, !tbaa !4
  store i32 %qos, ptr %qos.addr, align 4, !tbaa !74
  %frombool = zext i1 %retain to i8
  store i8 %frombool, ptr %retain.addr, align 1, !tbaa !220
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load i32, ptr %qos.addr, align 4, !tbaa !74
  %cmp = icmp ult i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %qos.addr, align 4, !tbaa !74
  %cmp1 = icmp ugt i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call3 = call i32 %6(ptr noundef %7, i32 noundef 5126)
  %cmp4 = icmp uge i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable6 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable6, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !103
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call7 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.14, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call8 = call i32 @aws_raise_error(i32 noundef 5126)
  store i32 %call8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51

if.end9:                                          ; preds = %lor.lhs.false
  %13 = load ptr, ptr %topic.addr, align 8, !tbaa !4
  %call10 = call zeroext i1 @aws_mqtt_is_valid_topic(ptr noundef %13)
  br i1 %call10, label %if.end29, label %if.then11

if.then11:                                        ; preds = %if.end9
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger13) #9
  %call14 = call ptr @aws_logger_get()
  store ptr %call14, ptr %logger13, align 8, !tbaa !4
  %14 = load ptr, ptr %logger13, align 8, !tbaa !4
  %cmp15 = icmp ne ptr %14, null
  br i1 %cmp15, label %land.lhs.true16, label %if.end25

land.lhs.true16:                                  ; preds = %do.body12
  %15 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable17, align 8, !tbaa !99
  %get_log_level18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %get_log_level18, align 8, !tbaa !101
  %18 = load ptr, ptr %logger13, align 8, !tbaa !4
  %call19 = call i32 %17(ptr noundef %18, i32 noundef 5126)
  %cmp20 = icmp uge i32 %call19, 2
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %land.lhs.true16
  %19 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable22, align 8, !tbaa !99
  %log23 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %log23, align 8, !tbaa !103
  %22 = load ptr, ptr %logger13, align 8, !tbaa !4
  %23 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call24 = call i32 (ptr, i32, i32, ptr, ...) %21(ptr noundef %22, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.15, ptr noundef %23)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true16, %do.body12
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger13) #9
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  %call28 = call i32 @aws_raise_error(i32 noundef 5128)
  store i32 %call28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51

if.end29:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %24 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %allocator, align 8, !tbaa !184
  %26 = load ptr, ptr %adapter, align 8, !tbaa !4
  %27 = load ptr, ptr %topic.addr, align 8, !tbaa !4
  %28 = load i32, ptr %qos.addr, align 4, !tbaa !74
  %29 = load i8, ptr %retain.addr, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool = trunc i8 %29 to i1
  %30 = load ptr, ptr %payload.addr, align 8, !tbaa !4
  %call30 = call ptr @s_aws_mqtt_set_will_task_new(ptr noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, i1 noundef zeroext %tobool, ptr noundef %30)
  store ptr %call30, ptr %task, align 8, !tbaa !4
  %31 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp31 = icmp eq ptr %31, null
  br i1 %cmp31, label %if.then32, label %if.end49

if.then32:                                        ; preds = %if.end29
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger34) #9
  %call35 = call ptr @aws_logger_get()
  store ptr %call35, ptr %logger34, align 8, !tbaa !4
  %32 = load ptr, ptr %logger34, align 8, !tbaa !4
  %cmp36 = icmp ne ptr %32, null
  br i1 %cmp36, label %land.lhs.true37, label %if.end46

land.lhs.true37:                                  ; preds = %do.body33
  %33 = load ptr, ptr %logger34, align 8, !tbaa !4
  %vtable38 = getelementptr inbounds %struct.aws_logger, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %vtable38, align 8, !tbaa !99
  %get_log_level39 = getelementptr inbounds %struct.aws_logger_vtable, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %get_log_level39, align 8, !tbaa !101
  %36 = load ptr, ptr %logger34, align 8, !tbaa !4
  %call40 = call i32 %35(ptr noundef %36, i32 noundef 5126)
  %cmp41 = icmp uge i32 %call40, 2
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %land.lhs.true37
  %37 = load ptr, ptr %logger34, align 8, !tbaa !4
  %vtable43 = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable43, align 8, !tbaa !99
  %log44 = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %log44, align 8, !tbaa !103
  %40 = load ptr, ptr %logger34, align 8, !tbaa !4
  %41 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call45 = call i32 (ptr, i32, i32, ptr, ...) %39(ptr noundef %40, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.16, ptr noundef %41)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %land.lhs.true37, %do.body33
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger34) #9
  br label %do.cond47

do.cond47:                                        ; preds = %if.end46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end29
  %42 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %loop, align 8, !tbaa !188
  %44 = load ptr, ptr %task, align 8, !tbaa !4
  %task50 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %44, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %43, ptr noundef %task50)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end48
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup, %do.end27, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_login(ptr noundef %impl, ptr noundef %username, ptr noundef %password) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %username.addr = alloca ptr, align 8
  %password.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %username, ptr %username.addr, align 8, !tbaa !4
  store ptr %password, ptr %password.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %username.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %password.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_login_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %6 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %7, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %10(ptr noundef %11, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !103
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %17 = load i32, ptr %error_code, align 4, !tbaa !75
  %18 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %18)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.18, ptr noundef %16, i32 noundef %17, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %loop, align 8, !tbaa !188
  %21 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %21, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %20, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_use_websockets(ptr noundef %impl, ptr noundef %transformer, ptr noundef %transformer_user_data, ptr noundef %validator, ptr noundef %validator_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %transformer.addr = alloca ptr, align 8
  %transformer_user_data.addr = alloca ptr, align 8
  %validator.addr = alloca ptr, align 8
  %validator_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %transformer, ptr %transformer.addr, align 8, !tbaa !4
  store ptr %transformer_user_data, ptr %transformer_user_data.addr, align 8, !tbaa !4
  store ptr %validator, ptr %validator.addr, align 8, !tbaa !4
  store ptr %validator_user_data, ptr %validator_user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %validator.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %validator_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %2, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator, align 8, !tbaa !184
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %6 = load ptr, ptr %transformer.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %transformer_user_data.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_use_websockets_task_new(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %8 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %12(ptr noundef %13, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %log, align 8, !tbaa !103
  %17 = load ptr, ptr %logger, align 8, !tbaa !4
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  %19 = load i32, ptr %error_code, align 4, !tbaa !75
  %20 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %20)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %16(ptr noundef %17, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.21, ptr noundef %18, i32 noundef %19, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %loop, align 8, !tbaa !188
  %23 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %23, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %22, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_http_proxy_options(ptr noundef %impl, ptr noundef %proxy_options) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %proxy_options.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %proxy_options, ptr %proxy_options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %proxy_options.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_http_proxy_options_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %5 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %6, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %9(ptr noundef %10, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %log, align 8, !tbaa !103
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %16 = load i32, ptr %error_code, align 4, !tbaa !75
  %17 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %17)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %13(ptr noundef %14, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.24, ptr noundef %15, i32 noundef %16, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %loop, align 8, !tbaa !188
  %20 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %20, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %19, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_host_resolution_options(ptr noundef %impl, ptr noundef %host_resolution_config) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %host_resolution_config.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %host_resolution_config, ptr %host_resolution_config.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %host_resolution_config.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_host_resolution_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %5 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %6, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %9(ptr noundef %10, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %log, align 8, !tbaa !103
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %16 = load i32, ptr %error_code, align 4, !tbaa !75
  %17 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %17)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %13(ptr noundef %14, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.26, ptr noundef %15, i32 noundef %16, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %loop, align 8, !tbaa !188
  %20 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %20, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %19, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_reconnect_timeout(ptr noundef %impl, i64 noundef %min_timeout, i64 noundef %max_timeout) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %min_timeout.addr = alloca i64, align 8
  %max_timeout.addr = alloca i64, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store i64 %min_timeout, ptr %min_timeout.addr, align 8, !tbaa !27
  store i64 %max_timeout, ptr %max_timeout.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load i64, ptr %min_timeout.addr, align 8, !tbaa !27
  %5 = load i64, ptr %max_timeout.addr, align 8, !tbaa !27
  %call = call ptr @s_aws_mqtt_set_reconnect_timeout_task_new(ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %6 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %7, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %10(ptr noundef %11, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !103
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %17 = load i32, ptr %error_code, align 4, !tbaa !75
  %18 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %18)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.26, ptr noundef %16, i32 noundef %17, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %loop, align 8, !tbaa !188
  %21 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %21, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %20, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_interruption_handlers(ptr noundef %impl, ptr noundef %on_interrupted, ptr noundef %on_interrupted_user_data, ptr noundef %on_resumed, ptr noundef %on_resumed_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %on_interrupted.addr = alloca ptr, align 8
  %on_interrupted_user_data.addr = alloca ptr, align 8
  %on_resumed.addr = alloca ptr, align 8
  %on_resumed_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %on_interrupted, ptr %on_interrupted.addr, align 8, !tbaa !4
  store ptr %on_interrupted_user_data, ptr %on_interrupted_user_data.addr, align 8, !tbaa !4
  store ptr %on_resumed, ptr %on_resumed.addr, align 8, !tbaa !4
  store ptr %on_resumed_user_data, ptr %on_resumed_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %on_interrupted.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %on_interrupted_user_data.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %on_resumed.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %on_resumed_user_data.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_interruption_handlers_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %8 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %12(ptr noundef %13, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %log, align 8, !tbaa !103
  %17 = load ptr, ptr %logger, align 8, !tbaa !4
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  %19 = load i32, ptr %error_code, align 4, !tbaa !75
  %20 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %20)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %16(ptr noundef %17, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.29, ptr noundef %18, i32 noundef %19, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %loop, align 8, !tbaa !188
  %23 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %23, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %22, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_connection_result_handlers(ptr noundef %impl, ptr noundef %on_connection_success, ptr noundef %on_connection_success_user_data, ptr noundef %on_connection_failure, ptr noundef %on_connection_failure_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %on_connection_success.addr = alloca ptr, align 8
  %on_connection_success_user_data.addr = alloca ptr, align 8
  %on_connection_failure.addr = alloca ptr, align 8
  %on_connection_failure_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %on_connection_success, ptr %on_connection_success.addr, align 8, !tbaa !4
  store ptr %on_connection_success_user_data, ptr %on_connection_success_user_data.addr, align 8, !tbaa !4
  store ptr %on_connection_failure, ptr %on_connection_failure.addr, align 8, !tbaa !4
  store ptr %on_connection_failure_user_data, ptr %on_connection_failure_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %on_connection_success.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %on_connection_success_user_data.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %on_connection_failure.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %on_connection_failure_user_data.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_connection_result_handlers_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %8 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %12(ptr noundef %13, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %log, align 8, !tbaa !103
  %17 = load ptr, ptr %logger, align 8, !tbaa !4
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  %19 = load i32, ptr %error_code, align 4, !tbaa !75
  %20 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %20)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %16(ptr noundef %17, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.31, ptr noundef %18, i32 noundef %19, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %loop, align 8, !tbaa !188
  %23 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %23, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %22, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_on_closed_handler(ptr noundef %impl, ptr noundef %on_closed, ptr noundef %on_closed_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %on_closed.addr = alloca ptr, align 8
  %on_closed_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %on_closed, ptr %on_closed.addr, align 8, !tbaa !4
  store ptr %on_closed_user_data, ptr %on_closed_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %on_closed.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %on_closed_user_data.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_on_closed_handler_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %6 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %7, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %10(ptr noundef %11, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !103
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %17 = load i32, ptr %error_code, align 4, !tbaa !75
  %18 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %18)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.33, ptr noundef %16, i32 noundef %17, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %loop, align 8, !tbaa !188
  %21 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %21, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %20, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_set_on_any_publish_handler(ptr noundef %impl, ptr noundef %on_any_publish, ptr noundef %on_any_publish_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %on_any_publish.addr = alloca ptr, align 8
  %on_any_publish_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %on_any_publish, ptr %on_any_publish.addr, align 8, !tbaa !4
  store ptr %on_any_publish_user_data, ptr %on_any_publish_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %on_any_publish.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %on_any_publish_user_data.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_set_on_any_publish_handler_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %6 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %7, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %10(ptr noundef %11, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !103
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %17 = load i32, ptr %error_code, align 4, !tbaa !75
  %18 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %18)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.35, ptr noundef %16, i32 noundef %17, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %loop, align 8, !tbaa !188
  %21 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %21, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %20, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_connect(ptr noundef %impl, ptr noundef %connection_options) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %connection_options.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %connection_options, ptr %connection_options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call = call i32 @s_validate_adapter_connection_options(ptr noundef %1, ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator, align 8, !tbaa !184
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %6 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %call1 = call ptr @s_aws_mqtt_adapter_connect_task_new(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store ptr %call1, ptr %task, align 8, !tbaa !4
  %7 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call3 = call i32 @aws_last_error()
  store i32 %call3, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call4 = call ptr @aws_logger_get()
  store ptr %call4, ptr %logger, align 8, !tbaa !4
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %do.body
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %call6 = call i32 %11(ptr noundef %12, i32 noundef 5126)
  %cmp7 = icmp uge i32 %call6, 2
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable9 = getelementptr inbounds %struct.aws_logger, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %vtable9, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %log, align 8, !tbaa !103
  %16 = load ptr, ptr %logger, align 8, !tbaa !4
  %17 = load ptr, ptr %adapter, align 8, !tbaa !4
  %18 = load i32, ptr %error_code, align 4, !tbaa !75
  %19 = load i32, ptr %error_code, align 4, !tbaa !75
  %call10 = call ptr @aws_error_debug_str(i32 noundef %19)
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %15(ptr noundef %16, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.37, ptr noundef %17, i32 noundef %18, ptr noundef %call10)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %20 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %loop, align 8, !tbaa !188
  %22 = load ptr, ptr %task, align 8, !tbaa !4
  %task14 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %22, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %21, ptr noundef %task14)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_reconnect(ptr noundef %impl, ptr noundef %on_connection_complete, ptr noundef %userdata) #0 {
entry:
  %impl.addr = alloca ptr, align 8
  %on_connection_complete.addr = alloca ptr, align 8
  %userdata.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %on_connection_complete, ptr %on_connection_complete.addr, align 8, !tbaa !4
  store ptr %userdata, ptr %userdata.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %on_connection_complete.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %userdata.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %6(ptr noundef %7, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !103
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.47)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.end

do.end:                                           ; preds = %if.end
  %call5 = call i32 @aws_raise_error(i32 noundef 6)
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_disconnect(ptr noundef %impl, ptr noundef %on_disconnect, ptr noundef %on_disconnect_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %on_disconnect.addr = alloca ptr, align 8
  %on_disconnect_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %on_disconnect, ptr %on_disconnect.addr, align 8, !tbaa !4
  store ptr %on_disconnect_user_data, ptr %on_disconnect_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator, align 8, !tbaa !184
  %3 = load ptr, ptr %adapter, align 8, !tbaa !4
  %4 = load ptr, ptr %on_disconnect.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %on_disconnect_user_data.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_adapter_disconnect_task_new(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %6 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %7, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %10(ptr noundef %11, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !103
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %17 = load i32, ptr %error_code, align 4, !tbaa !75
  %18 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %18)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.48, ptr noundef %16, i32 noundef %17, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %loop, align 8, !tbaa !188
  %21 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %21, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %20, ptr noundef %task11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @s_aws_mqtt_client_connection_5_subscribe_multiple(ptr noundef %impl, ptr noundef %topic_filters, ptr noundef %on_suback, ptr noundef %on_suback_user_data) #0 {
entry:
  %retval = alloca i16, align 2
  %impl.addr = alloca ptr, align 8
  %topic_filters.addr = alloca ptr, align 8
  %on_suback.addr = alloca ptr, align 8
  %on_suback_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger10 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %subscriptions = alloca ptr, align 8
  %subscribe_options = alloca %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, align 8
  %operation = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger37 = alloca ptr, align 8
  %synthetic_id = alloca i16, align 2
  %error_code62 = alloca i32, align 4
  %logger65 = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %topic_filters, ptr %topic_filters.addr, align 8, !tbaa !4
  store ptr %on_suback, ptr %on_suback.addr, align 8, !tbaa !4
  store ptr %on_suback_user_data, ptr %on_suback_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !103
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.52, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %topic_filters.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %12 = load ptr, ptr %topic_filters.addr, align 8, !tbaa !4
  %call6 = call i64 @aws_array_list_length(ptr noundef %12)
  %cmp7 = icmp eq i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end26

if.then8:                                         ; preds = %lor.lhs.false, %do.end
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger10) #9
  %call11 = call ptr @aws_logger_get()
  store ptr %call11, ptr %logger10, align 8, !tbaa !4
  %13 = load ptr, ptr %logger10, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %13, null
  br i1 %cmp12, label %land.lhs.true13, label %if.end22

land.lhs.true13:                                  ; preds = %do.body9
  %14 = load ptr, ptr %logger10, align 8, !tbaa !4
  %vtable14 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable14, align 8, !tbaa !99
  %get_log_level15 = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %get_log_level15, align 8, !tbaa !101
  %17 = load ptr, ptr %logger10, align 8, !tbaa !4
  %call16 = call i32 %16(ptr noundef %17, i32 noundef 5126)
  %cmp17 = icmp uge i32 %call16, 2
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true13
  %18 = load ptr, ptr %logger10, align 8, !tbaa !4
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vtable19, align 8, !tbaa !99
  %log20 = getelementptr inbounds %struct.aws_logger_vtable, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %log20, align 8, !tbaa !103
  %21 = load ptr, ptr %logger10, align 8, !tbaa !4
  %22 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call21 = call i32 (ptr, i32, i32, ptr, ...) %20(ptr noundef %21, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.53, ptr noundef %22)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %land.lhs.true13, %do.body9
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger10) #9
  br label %do.cond23

do.cond23:                                        ; preds = %if.end22
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  %call25 = call i32 @aws_raise_error(i32 noundef 34)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85

if.end26:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %subscriptions) #9
  %23 = load ptr, ptr %topic_filters.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %data, align 8, !tbaa !135
  store ptr %24, ptr %subscriptions, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 56, ptr %subscribe_options) #9
  %adapter27 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 0
  %25 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %25, ptr %adapter27, align 8, !tbaa !86
  %subscriptions28 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 1
  %26 = load ptr, ptr %subscriptions, align 8, !tbaa !4
  store ptr %26, ptr %subscriptions28, align 8, !tbaa !81
  %subscription_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 2
  %27 = load ptr, ptr %topic_filters.addr, align 8, !tbaa !4
  %call29 = call i64 @aws_array_list_length(ptr noundef %27)
  store i64 %call29, ptr %subscription_count, align 8, !tbaa !79
  %on_suback30 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 3
  store ptr null, ptr %on_suback30, align 8, !tbaa !89
  %on_suback_user_data31 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 4
  store ptr null, ptr %on_suback_user_data31, align 8, !tbaa !91
  %on_multi_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 5
  %28 = load ptr, ptr %on_suback.addr, align 8, !tbaa !4
  store ptr %28, ptr %on_multi_suback, align 8, !tbaa !93
  %on_multi_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 6
  %29 = load ptr, ptr %on_suback_user_data.addr, align 8, !tbaa !4
  store ptr %29, ptr %on_multi_suback_user_data, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %30 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %allocator, align 8, !tbaa !184
  %32 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call32 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_subscribe(ptr noundef %31, ptr noundef %subscribe_options, ptr noundef %32)
  store ptr %call32, ptr %operation, align 8, !tbaa !4
  %33 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp33 = icmp eq ptr %33, null
  br i1 %cmp33, label %if.then34, label %if.end53

if.then34:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call35 = call i32 @aws_last_error()
  store i32 %call35, ptr %error_code, align 4, !tbaa !75
  br label %do.body36

do.body36:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger37) #9
  %call38 = call ptr @aws_logger_get()
  store ptr %call38, ptr %logger37, align 8, !tbaa !4
  %34 = load ptr, ptr %logger37, align 8, !tbaa !4
  %cmp39 = icmp ne ptr %34, null
  br i1 %cmp39, label %land.lhs.true40, label %if.end50

land.lhs.true40:                                  ; preds = %do.body36
  %35 = load ptr, ptr %logger37, align 8, !tbaa !4
  %vtable41 = getelementptr inbounds %struct.aws_logger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vtable41, align 8, !tbaa !99
  %get_log_level42 = getelementptr inbounds %struct.aws_logger_vtable, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %get_log_level42, align 8, !tbaa !101
  %38 = load ptr, ptr %logger37, align 8, !tbaa !4
  %call43 = call i32 %37(ptr noundef %38, i32 noundef 5126)
  %cmp44 = icmp uge i32 %call43, 2
  br i1 %cmp44, label %if.then45, label %if.end50

if.then45:                                        ; preds = %land.lhs.true40
  %39 = load ptr, ptr %logger37, align 8, !tbaa !4
  %vtable46 = getelementptr inbounds %struct.aws_logger, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %vtable46, align 8, !tbaa !99
  %log47 = getelementptr inbounds %struct.aws_logger_vtable, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %log47, align 8, !tbaa !103
  %42 = load ptr, ptr %logger37, align 8, !tbaa !4
  %43 = load ptr, ptr %adapter, align 8, !tbaa !4
  %44 = load i32, ptr %error_code, align 4, !tbaa !75
  %45 = load i32, ptr %error_code, align 4, !tbaa !75
  %call48 = call ptr @aws_error_debug_str(i32 noundef %45)
  %call49 = call i32 (ptr, i32, i32, ptr, ...) %41(ptr noundef %42, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.54, ptr noundef %43, i32 noundef %44, ptr noundef %call48)
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %land.lhs.true40, %do.body36
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger37) #9
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end26
  %46 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %46, i32 0, i32 11
  %47 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %47, i32 0, i32 0
  %call54 = call i32 @aws_mqtt5_to_mqtt3_adapter_operation_table_add_operation(ptr noundef %operational_state, ptr noundef %base)
  %tobool = icmp ne i32 %call54, 0
  br i1 %tobool, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end53
  br label %error

if.end56:                                         ; preds = %if.end53
  %48 = load ptr, ptr %operation, align 8, !tbaa !4
  %base57 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %48, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base57, i32 0, i32 7
  %49 = load i16, ptr %id, align 4, !tbaa !133
  store i16 %49, ptr %synthetic_id, align 2, !tbaa !136
  %50 = load ptr, ptr %operation, align 8, !tbaa !4
  %base58 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %50, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_acquire_cross_thread_refs(ptr noundef %base58)
  %51 = load ptr, ptr %operation, align 8, !tbaa !4
  %base59 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %51, i32 0, i32 0
  %submission_task = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base59, i32 0, i32 5
  %52 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %submission_task, ptr noundef @s_adapter_subscribe_submission_fn, ptr noundef %52, ptr noundef @.str.55)
  %53 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %loop, align 8, !tbaa !188
  %55 = load ptr, ptr %operation, align 8, !tbaa !4
  %base60 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %55, i32 0, i32 0
  %submission_task61 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base60, i32 0, i32 5
  call void @aws_event_loop_schedule_task_now(ptr noundef %54, ptr noundef %submission_task61)
  %56 = load i16, ptr %synthetic_id, align 2, !tbaa !136
  store i16 %56, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then55
  %call63 = call i32 @aws_last_error()
  store i32 %call63, ptr %error_code62, align 4, !tbaa !75
  br label %do.body64

do.body64:                                        ; preds = %error
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger65) #9
  %call66 = call ptr @aws_logger_get()
  store ptr %call66, ptr %logger65, align 8, !tbaa !4
  %57 = load ptr, ptr %logger65, align 8, !tbaa !4
  %cmp67 = icmp ne ptr %57, null
  br i1 %cmp67, label %land.lhs.true68, label %if.end78

land.lhs.true68:                                  ; preds = %do.body64
  %58 = load ptr, ptr %logger65, align 8, !tbaa !4
  %vtable69 = getelementptr inbounds %struct.aws_logger, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %vtable69, align 8, !tbaa !99
  %get_log_level70 = getelementptr inbounds %struct.aws_logger_vtable, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %get_log_level70, align 8, !tbaa !101
  %61 = load ptr, ptr %logger65, align 8, !tbaa !4
  %call71 = call i32 %60(ptr noundef %61, i32 noundef 5126)
  %cmp72 = icmp uge i32 %call71, 2
  br i1 %cmp72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %land.lhs.true68
  %62 = load ptr, ptr %logger65, align 8, !tbaa !4
  %vtable74 = getelementptr inbounds %struct.aws_logger, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %vtable74, align 8, !tbaa !99
  %log75 = getelementptr inbounds %struct.aws_logger_vtable, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %log75, align 8, !tbaa !103
  %65 = load ptr, ptr %logger65, align 8, !tbaa !4
  %66 = load ptr, ptr %adapter, align 8, !tbaa !4
  %67 = load i32, ptr %error_code62, align 4, !tbaa !75
  %68 = load i32, ptr %error_code62, align 4, !tbaa !75
  %call76 = call ptr @aws_error_debug_str(i32 noundef %68)
  %call77 = call i32 (ptr, i32, i32, ptr, ...) %64(ptr noundef %65, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.56, ptr noundef %66, i32 noundef %67, ptr noundef %call76)
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %land.lhs.true68, %do.body64
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger65) #9
  br label %do.cond79

do.cond79:                                        ; preds = %if.end78
  br label %do.end80

do.end80:                                         ; preds = %do.cond79
  %69 = load ptr, ptr %operation, align 8, !tbaa !4
  %base81 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %69, i32 0, i32 0
  %call82 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base81)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end56, %do.end52
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %subscribe_options) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %subscriptions) #9
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup, %do.end24
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %70 = load i16, ptr %retval, align 2
  ret i16 %70
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @s_aws_mqtt_client_connection_5_subscribe(ptr noundef %impl, ptr noundef %topic_filter, i32 noundef %qos, ptr noundef %on_publish, ptr noundef %on_publish_ud, ptr noundef %on_ud_cleanup, ptr noundef %on_suback, ptr noundef %on_suback_user_data) #0 {
entry:
  %retval = alloca i16, align 2
  %impl.addr = alloca ptr, align 8
  %topic_filter.addr = alloca ptr, align 8
  %qos.addr = alloca i32, align 4
  %on_publish.addr = alloca ptr, align 8
  %on_publish_ud.addr = alloca ptr, align 8
  %on_ud_cleanup.addr = alloca ptr, align 8
  %on_suback.addr = alloca ptr, align 8
  %on_suback_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %subscription = alloca %struct.aws_mqtt_topic_subscription, align 8
  %subscribe_options = alloca %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, align 8
  %operation = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %synthetic_id = alloca i16, align 2
  %error_code = alloca i32, align 4
  %logger25 = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %topic_filter, ptr %topic_filter.addr, align 8, !tbaa !4
  store i32 %qos, ptr %qos.addr, align 4, !tbaa !74
  store ptr %on_publish, ptr %on_publish.addr, align 8, !tbaa !4
  store ptr %on_publish_ud, ptr %on_publish_ud.addr, align 8, !tbaa !4
  store ptr %on_ud_cleanup, ptr %on_ud_cleanup.addr, align 8, !tbaa !4
  store ptr %on_suback, ptr %on_suback.addr, align 8, !tbaa !4
  store ptr %on_suback_user_data, ptr %on_suback_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !103
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.57, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 48, ptr %subscription) #9
  %topic = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %subscription, i32 0, i32 0
  %11 = load ptr, ptr %topic_filter.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic, ptr align 8 %11, i64 16, i1 false), !tbaa.struct !26
  %qos5 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %subscription, i32 0, i32 1
  %12 = load i32, ptr %qos.addr, align 4, !tbaa !74
  store i32 %12, ptr %qos5, align 8, !tbaa !97
  %on_publish6 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %subscription, i32 0, i32 2
  %13 = load ptr, ptr %on_publish.addr, align 8, !tbaa !4
  store ptr %13, ptr %on_publish6, align 8, !tbaa !116
  %on_cleanup = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %subscription, i32 0, i32 3
  %14 = load ptr, ptr %on_ud_cleanup.addr, align 8, !tbaa !4
  store ptr %14, ptr %on_cleanup, align 8, !tbaa !118
  %on_publish_ud7 = getelementptr inbounds %struct.aws_mqtt_topic_subscription, ptr %subscription, i32 0, i32 4
  %15 = load ptr, ptr %on_publish_ud.addr, align 8, !tbaa !4
  store ptr %15, ptr %on_publish_ud7, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 56, ptr %subscribe_options) #9
  %adapter8 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 0
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %16, ptr %adapter8, align 8, !tbaa !86
  %subscriptions = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 1
  store ptr %subscription, ptr %subscriptions, align 8, !tbaa !81
  %subscription_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 2
  store i64 1, ptr %subscription_count, align 8, !tbaa !79
  %on_suback9 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 3
  %17 = load ptr, ptr %on_suback.addr, align 8, !tbaa !4
  store ptr %17, ptr %on_suback9, align 8, !tbaa !89
  %on_suback_user_data10 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 4
  %18 = load ptr, ptr %on_suback_user_data.addr, align 8, !tbaa !4
  store ptr %18, ptr %on_suback_user_data10, align 8, !tbaa !91
  %on_multi_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 5
  store ptr null, ptr %on_multi_suback, align 8, !tbaa !93
  %on_multi_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 6
  store ptr null, ptr %on_multi_suback_user_data, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %allocator, align 8, !tbaa !184
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call11 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_subscribe(ptr noundef %20, ptr noundef %subscribe_options, ptr noundef %21)
  store ptr %call11, ptr %operation, align 8, !tbaa !4
  %22 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %22, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %23 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %23, i32 0, i32 11
  %24 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %24, i32 0, i32 0
  %call15 = call i32 @aws_mqtt5_to_mqtt3_adapter_operation_table_add_operation(ptr noundef %operational_state, ptr noundef %base)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  br label %error

if.end17:                                         ; preds = %if.end14
  %25 = load ptr, ptr %operation, align 8, !tbaa !4
  %base18 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %25, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base18, i32 0, i32 7
  %26 = load i16, ptr %id, align 4, !tbaa !133
  store i16 %26, ptr %synthetic_id, align 2, !tbaa !136
  %27 = load ptr, ptr %operation, align 8, !tbaa !4
  %base19 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %27, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_acquire_cross_thread_refs(ptr noundef %base19)
  %28 = load ptr, ptr %operation, align 8, !tbaa !4
  %base20 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %28, i32 0, i32 0
  %submission_task = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base20, i32 0, i32 5
  %29 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %submission_task, ptr noundef @s_adapter_subscribe_submission_fn, ptr noundef %29, ptr noundef @.str.58)
  %30 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %loop, align 8, !tbaa !188
  %32 = load ptr, ptr %operation, align 8, !tbaa !4
  %base21 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %32, i32 0, i32 0
  %submission_task22 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base21, i32 0, i32 5
  call void @aws_event_loop_schedule_task_now(ptr noundef %31, ptr noundef %submission_task22)
  %33 = load i16, ptr %synthetic_id, align 2, !tbaa !136
  store i16 %33, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then16
  %call23 = call i32 @aws_last_error()
  store i32 %call23, ptr %error_code, align 4, !tbaa !75
  br label %do.body24

do.body24:                                        ; preds = %error
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger25) #9
  %call26 = call ptr @aws_logger_get()
  store ptr %call26, ptr %logger25, align 8, !tbaa !4
  %34 = load ptr, ptr %logger25, align 8, !tbaa !4
  %cmp27 = icmp ne ptr %34, null
  br i1 %cmp27, label %land.lhs.true28, label %if.end38

land.lhs.true28:                                  ; preds = %do.body24
  %35 = load ptr, ptr %logger25, align 8, !tbaa !4
  %vtable29 = getelementptr inbounds %struct.aws_logger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vtable29, align 8, !tbaa !99
  %get_log_level30 = getelementptr inbounds %struct.aws_logger_vtable, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %get_log_level30, align 8, !tbaa !101
  %38 = load ptr, ptr %logger25, align 8, !tbaa !4
  %call31 = call i32 %37(ptr noundef %38, i32 noundef 5126)
  %cmp32 = icmp uge i32 %call31, 2
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %land.lhs.true28
  %39 = load ptr, ptr %logger25, align 8, !tbaa !4
  %vtable34 = getelementptr inbounds %struct.aws_logger, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %vtable34, align 8, !tbaa !99
  %log35 = getelementptr inbounds %struct.aws_logger_vtable, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %log35, align 8, !tbaa !103
  %42 = load ptr, ptr %logger25, align 8, !tbaa !4
  %43 = load ptr, ptr %adapter, align 8, !tbaa !4
  %44 = load i32, ptr %error_code, align 4, !tbaa !75
  %45 = load i32, ptr %error_code, align 4, !tbaa !75
  %call36 = call ptr @aws_error_debug_str(i32 noundef %45)
  %call37 = call i32 (ptr, i32, i32, ptr, ...) %41(ptr noundef %42, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.59, ptr noundef %43, i32 noundef %44, ptr noundef %call36)
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %land.lhs.true28, %do.body24
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger25) #9
  br label %do.cond39

do.cond39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  %46 = load ptr, ptr %operation, align 8, !tbaa !4
  %base41 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %46, i32 0, i32 0
  %call42 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base41)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end17, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %subscribe_options) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr %subscription) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %47 = load i16, ptr %retval, align 2
  ret i16 %47
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @s_aws_mqtt_5_resubscribe_existing_topics(ptr noundef %impl, ptr noundef %on_suback, ptr noundef %on_suback_user_data) #0 {
entry:
  %retval = alloca i16, align 2
  %impl.addr = alloca ptr, align 8
  %on_suback.addr = alloca ptr, align 8
  %on_suback_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %subscribe_options = alloca %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, align 8
  %operation = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger13 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %synthetic_id = alloca i16, align 2
  %error_code38 = alloca i32, align 4
  %logger41 = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %on_suback, ptr %on_suback.addr, align 8, !tbaa !4
  store ptr %on_suback_user_data, ptr %on_suback_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !103
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.60, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 56, ptr %subscribe_options) #9
  %adapter5 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 0
  %11 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %11, ptr %adapter5, align 8, !tbaa !86
  %subscriptions = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 1
  store ptr null, ptr %subscriptions, align 8, !tbaa !81
  %subscription_count = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 2
  store i64 0, ptr %subscription_count, align 8, !tbaa !79
  %on_suback6 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 3
  store ptr null, ptr %on_suback6, align 8, !tbaa !89
  %on_suback_user_data7 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 4
  store ptr null, ptr %on_suback_user_data7, align 8, !tbaa !91
  %on_multi_suback = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 5
  %12 = load ptr, ptr %on_suback.addr, align 8, !tbaa !4
  store ptr %12, ptr %on_multi_suback, align 8, !tbaa !93
  %on_multi_suback_user_data = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_subscribe_options, ptr %subscribe_options, i32 0, i32 6
  %13 = load ptr, ptr %on_suback_user_data.addr, align 8, !tbaa !4
  store ptr %13, ptr %on_multi_suback_user_data, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %14 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %allocator, align 8, !tbaa !184
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call8 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_subscribe(ptr noundef %15, ptr noundef %subscribe_options, ptr noundef %16)
  store ptr %call8, ptr %operation, align 8, !tbaa !4
  %17 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp9 = icmp eq ptr %17, null
  br i1 %cmp9, label %if.then10, label %if.end29

if.then10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call11 = call i32 @aws_last_error()
  store i32 %call11, ptr %error_code, align 4, !tbaa !75
  br label %do.body12

do.body12:                                        ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger13) #9
  %call14 = call ptr @aws_logger_get()
  store ptr %call14, ptr %logger13, align 8, !tbaa !4
  %18 = load ptr, ptr %logger13, align 8, !tbaa !4
  %cmp15 = icmp ne ptr %18, null
  br i1 %cmp15, label %land.lhs.true16, label %if.end26

land.lhs.true16:                                  ; preds = %do.body12
  %19 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable17, align 8, !tbaa !99
  %get_log_level18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %get_log_level18, align 8, !tbaa !101
  %22 = load ptr, ptr %logger13, align 8, !tbaa !4
  %call19 = call i32 %21(ptr noundef %22, i32 noundef 5126)
  %cmp20 = icmp uge i32 %call19, 2
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %land.lhs.true16
  %23 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable22, align 8, !tbaa !99
  %log23 = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %log23, align 8, !tbaa !103
  %26 = load ptr, ptr %logger13, align 8, !tbaa !4
  %27 = load ptr, ptr %adapter, align 8, !tbaa !4
  %28 = load i32, ptr %error_code, align 4, !tbaa !75
  %29 = load i32, ptr %error_code, align 4, !tbaa !75
  %call24 = call ptr @aws_error_debug_str(i32 noundef %29)
  %call25 = call i32 (ptr, i32, i32, ptr, ...) %25(ptr noundef %26, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.61, ptr noundef %27, i32 noundef %28, ptr noundef %call24)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true16, %do.body12
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger13) #9
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end29:                                         ; preds = %do.end
  %30 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %30, i32 0, i32 11
  %31 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %31, i32 0, i32 0
  %call30 = call i32 @aws_mqtt5_to_mqtt3_adapter_operation_table_add_operation(ptr noundef %operational_state, ptr noundef %base)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  br label %error

if.end32:                                         ; preds = %if.end29
  %32 = load ptr, ptr %operation, align 8, !tbaa !4
  %base33 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %32, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base33, i32 0, i32 7
  %33 = load i16, ptr %id, align 4, !tbaa !133
  store i16 %33, ptr %synthetic_id, align 2, !tbaa !136
  %34 = load ptr, ptr %operation, align 8, !tbaa !4
  %base34 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %34, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_acquire_cross_thread_refs(ptr noundef %base34)
  %35 = load ptr, ptr %operation, align 8, !tbaa !4
  %base35 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %35, i32 0, i32 0
  %submission_task = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base35, i32 0, i32 5
  %36 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %submission_task, ptr noundef @s_adapter_subscribe_submission_fn, ptr noundef %36, ptr noundef @.str.62)
  %37 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %loop, align 8, !tbaa !188
  %39 = load ptr, ptr %operation, align 8, !tbaa !4
  %base36 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %39, i32 0, i32 0
  %submission_task37 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base36, i32 0, i32 5
  call void @aws_event_loop_schedule_task_now(ptr noundef %38, ptr noundef %submission_task37)
  %40 = load i16, ptr %synthetic_id, align 2, !tbaa !136
  store i16 %40, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then31
  %call39 = call i32 @aws_last_error()
  store i32 %call39, ptr %error_code38, align 4, !tbaa !75
  br label %do.body40

do.body40:                                        ; preds = %error
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger41) #9
  %call42 = call ptr @aws_logger_get()
  store ptr %call42, ptr %logger41, align 8, !tbaa !4
  %41 = load ptr, ptr %logger41, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %41, null
  br i1 %cmp43, label %land.lhs.true44, label %if.end54

land.lhs.true44:                                  ; preds = %do.body40
  %42 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable45 = getelementptr inbounds %struct.aws_logger, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %vtable45, align 8, !tbaa !99
  %get_log_level46 = getelementptr inbounds %struct.aws_logger_vtable, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %get_log_level46, align 8, !tbaa !101
  %45 = load ptr, ptr %logger41, align 8, !tbaa !4
  %call47 = call i32 %44(ptr noundef %45, i32 noundef 5126)
  %cmp48 = icmp uge i32 %call47, 2
  br i1 %cmp48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %land.lhs.true44
  %46 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %vtable50, align 8, !tbaa !99
  %log51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %log51, align 8, !tbaa !103
  %49 = load ptr, ptr %logger41, align 8, !tbaa !4
  %50 = load ptr, ptr %adapter, align 8, !tbaa !4
  %51 = load i32, ptr %error_code38, align 4, !tbaa !75
  %52 = load i32, ptr %error_code38, align 4, !tbaa !75
  %call52 = call ptr @aws_error_debug_str(i32 noundef %52)
  %call53 = call i32 (ptr, i32, i32, ptr, ...) %48(ptr noundef %49, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.63, ptr noundef %50, i32 noundef %51, ptr noundef %call52)
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %land.lhs.true44, %do.body40
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger41) #9
  br label %do.cond55

do.cond55:                                        ; preds = %if.end54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  %53 = load ptr, ptr %operation, align 8, !tbaa !4
  %base57 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_subscribe, ptr %53, i32 0, i32 0
  %call58 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base57)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end32, %do.end28
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %subscribe_options) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %54 = load i16, ptr %retval, align 2
  ret i16 %54
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @s_aws_mqtt_client_connection_5_unsubscribe(ptr noundef %impl, ptr noundef %topic_filter, ptr noundef %on_unsuback, ptr noundef %on_unsuback_user_data) #0 {
entry:
  %retval = alloca i16, align 2
  %impl.addr = alloca ptr, align 8
  %topic_filter.addr = alloca ptr, align 8
  %on_unsuback.addr = alloca ptr, align 8
  %on_unsuback_user_data.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %unsubscribe_options = alloca %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, align 8
  %operation = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger34 = alloca ptr, align 8
  %synthetic_id = alloca i16, align 2
  %error_code59 = alloca i32, align 4
  %logger62 = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %topic_filter, ptr %topic_filter.addr, align 8, !tbaa !4
  store ptr %on_unsuback, ptr %on_unsuback.addr, align 8, !tbaa !4
  store ptr %on_unsuback_user_data, ptr %on_unsuback_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !103
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.64, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %topic_filter.addr, align 8, !tbaa !4
  %call5 = call zeroext i1 @aws_mqtt_is_valid_topic_filter(ptr noundef %11)
  br i1 %call5, label %if.end24, label %if.then6

if.then6:                                         ; preds = %do.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger8) #9
  %call9 = call ptr @aws_logger_get()
  store ptr %call9, ptr %logger8, align 8, !tbaa !4
  %12 = load ptr, ptr %logger8, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %12, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end20

land.lhs.true11:                                  ; preds = %do.body7
  %13 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable12 = getelementptr inbounds %struct.aws_logger, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %vtable12, align 8, !tbaa !99
  %get_log_level13 = getelementptr inbounds %struct.aws_logger_vtable, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %get_log_level13, align 8, !tbaa !101
  %16 = load ptr, ptr %logger8, align 8, !tbaa !4
  %call14 = call i32 %15(ptr noundef %16, i32 noundef 5126)
  %cmp15 = icmp uge i32 %call14, 2
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vtable17, align 8, !tbaa !99
  %log18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %log18, align 8, !tbaa !103
  %20 = load ptr, ptr %logger8, align 8, !tbaa !4
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call19 = call i32 (ptr, i32, i32, ptr, ...) %19(ptr noundef %20, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.65, ptr noundef %21)
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true11, %do.body7
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger8) #9
  br label %do.cond21

do.cond21:                                        ; preds = %if.end20
  br label %do.end22

do.end22:                                         ; preds = %do.cond21
  %call23 = call i32 @aws_raise_error(i32 noundef 5128)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

if.end24:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %unsubscribe_options) #9
  %adapter25 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %unsubscribe_options, i32 0, i32 0
  %22 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %22, ptr %adapter25, align 8, !tbaa !145
  %topic_filter26 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %unsubscribe_options, i32 0, i32 1
  %23 = load ptr, ptr %topic_filter.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic_filter26, ptr align 8 %23, i64 16, i1 false), !tbaa.struct !26
  %on_unsuback27 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %unsubscribe_options, i32 0, i32 2
  %24 = load ptr, ptr %on_unsuback.addr, align 8, !tbaa !4
  store ptr %24, ptr %on_unsuback27, align 8, !tbaa !159
  %on_unsuback_user_data28 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_unsubscribe_options, ptr %unsubscribe_options, i32 0, i32 3
  %25 = load ptr, ptr %on_unsuback_user_data.addr, align 8, !tbaa !4
  store ptr %25, ptr %on_unsuback_user_data28, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %26 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %allocator, align 8, !tbaa !184
  %call29 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_unsubscribe(ptr noundef %27, ptr noundef %unsubscribe_options)
  store ptr %call29, ptr %operation, align 8, !tbaa !4
  %28 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp30 = icmp eq ptr %28, null
  br i1 %cmp30, label %if.then31, label %if.end50

if.then31:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call32 = call i32 @aws_last_error()
  store i32 %call32, ptr %error_code, align 4, !tbaa !75
  br label %do.body33

do.body33:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger34) #9
  %call35 = call ptr @aws_logger_get()
  store ptr %call35, ptr %logger34, align 8, !tbaa !4
  %29 = load ptr, ptr %logger34, align 8, !tbaa !4
  %cmp36 = icmp ne ptr %29, null
  br i1 %cmp36, label %land.lhs.true37, label %if.end47

land.lhs.true37:                                  ; preds = %do.body33
  %30 = load ptr, ptr %logger34, align 8, !tbaa !4
  %vtable38 = getelementptr inbounds %struct.aws_logger, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %vtable38, align 8, !tbaa !99
  %get_log_level39 = getelementptr inbounds %struct.aws_logger_vtable, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %get_log_level39, align 8, !tbaa !101
  %33 = load ptr, ptr %logger34, align 8, !tbaa !4
  %call40 = call i32 %32(ptr noundef %33, i32 noundef 5126)
  %cmp41 = icmp uge i32 %call40, 2
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %land.lhs.true37
  %34 = load ptr, ptr %logger34, align 8, !tbaa !4
  %vtable43 = getelementptr inbounds %struct.aws_logger, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %vtable43, align 8, !tbaa !99
  %log44 = getelementptr inbounds %struct.aws_logger_vtable, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %log44, align 8, !tbaa !103
  %37 = load ptr, ptr %logger34, align 8, !tbaa !4
  %38 = load ptr, ptr %adapter, align 8, !tbaa !4
  %39 = load i32, ptr %error_code, align 4, !tbaa !75
  %40 = load i32, ptr %error_code, align 4, !tbaa !75
  %call45 = call ptr @aws_error_debug_str(i32 noundef %40)
  %call46 = call i32 (ptr, i32, i32, ptr, ...) %36(ptr noundef %37, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.66, ptr noundef %38, i32 noundef %39, ptr noundef %call45)
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %land.lhs.true37, %do.body33
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger34) #9
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end24
  %41 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %41, i32 0, i32 11
  %42 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %42, i32 0, i32 0
  %call51 = call i32 @aws_mqtt5_to_mqtt3_adapter_operation_table_add_operation(ptr noundef %operational_state, ptr noundef %base)
  %tobool = icmp ne i32 %call51, 0
  br i1 %tobool, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end50
  br label %error

if.end53:                                         ; preds = %if.end50
  %43 = load ptr, ptr %operation, align 8, !tbaa !4
  %base54 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %43, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base54, i32 0, i32 7
  %44 = load i16, ptr %id, align 4, !tbaa !167
  store i16 %44, ptr %synthetic_id, align 2, !tbaa !136
  %45 = load ptr, ptr %operation, align 8, !tbaa !4
  %base55 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %45, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_acquire_cross_thread_refs(ptr noundef %base55)
  %46 = load ptr, ptr %operation, align 8, !tbaa !4
  %base56 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %46, i32 0, i32 0
  %submission_task = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base56, i32 0, i32 5
  %47 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %submission_task, ptr noundef @s_adapter_unsubscribe_submission_fn, ptr noundef %47, ptr noundef @.str.67)
  %48 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %loop, align 8, !tbaa !188
  %50 = load ptr, ptr %operation, align 8, !tbaa !4
  %base57 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %50, i32 0, i32 0
  %submission_task58 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base57, i32 0, i32 5
  call void @aws_event_loop_schedule_task_now(ptr noundef %49, ptr noundef %submission_task58)
  %51 = load i16, ptr %synthetic_id, align 2, !tbaa !136
  store i16 %51, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then52
  %call60 = call i32 @aws_last_error()
  store i32 %call60, ptr %error_code59, align 4, !tbaa !75
  br label %do.body61

do.body61:                                        ; preds = %error
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger62) #9
  %call63 = call ptr @aws_logger_get()
  store ptr %call63, ptr %logger62, align 8, !tbaa !4
  %52 = load ptr, ptr %logger62, align 8, !tbaa !4
  %cmp64 = icmp ne ptr %52, null
  br i1 %cmp64, label %land.lhs.true65, label %if.end75

land.lhs.true65:                                  ; preds = %do.body61
  %53 = load ptr, ptr %logger62, align 8, !tbaa !4
  %vtable66 = getelementptr inbounds %struct.aws_logger, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %vtable66, align 8, !tbaa !99
  %get_log_level67 = getelementptr inbounds %struct.aws_logger_vtable, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %get_log_level67, align 8, !tbaa !101
  %56 = load ptr, ptr %logger62, align 8, !tbaa !4
  %call68 = call i32 %55(ptr noundef %56, i32 noundef 5126)
  %cmp69 = icmp uge i32 %call68, 2
  br i1 %cmp69, label %if.then70, label %if.end75

if.then70:                                        ; preds = %land.lhs.true65
  %57 = load ptr, ptr %logger62, align 8, !tbaa !4
  %vtable71 = getelementptr inbounds %struct.aws_logger, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %vtable71, align 8, !tbaa !99
  %log72 = getelementptr inbounds %struct.aws_logger_vtable, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %log72, align 8, !tbaa !103
  %60 = load ptr, ptr %logger62, align 8, !tbaa !4
  %61 = load ptr, ptr %adapter, align 8, !tbaa !4
  %62 = load i32, ptr %error_code59, align 4, !tbaa !75
  %63 = load i32, ptr %error_code59, align 4, !tbaa !75
  %call73 = call ptr @aws_error_debug_str(i32 noundef %63)
  %call74 = call i32 (ptr, i32, i32, ptr, ...) %59(ptr noundef %60, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.68, ptr noundef %61, i32 noundef %62, ptr noundef %call73)
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %land.lhs.true65, %do.body61
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger62) #9
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %64 = load ptr, ptr %operation, align 8, !tbaa !4
  %base78 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe, ptr %64, i32 0, i32 0
  %call79 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base78)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.end53, %do.end49
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr %unsubscribe_options) #9
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup, %do.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %65 = load i16, ptr %retval, align 2
  ret i16 %65
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @s_aws_mqtt_client_connection_5_publish(ptr noundef %impl, ptr noundef %topic, i32 noundef %qos, i1 noundef zeroext %retain, ptr noundef %payload, ptr noundef %on_complete, ptr noundef %userdata) #0 {
entry:
  %retval = alloca i16, align 2
  %impl.addr = alloca ptr, align 8
  %topic.addr = alloca ptr, align 8
  %qos.addr = alloca i32, align 4
  %retain.addr = alloca i8, align 1
  %payload.addr = alloca ptr, align 8
  %on_complete.addr = alloca ptr, align 8
  %userdata.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger29 = alloca ptr, align 8
  %topic_cursor = alloca %struct.aws_byte_cursor, align 8
  %payload_cursor = alloca %struct.aws_byte_cursor, align 8
  %publish_options = alloca %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, align 8
  %operation = alloca ptr, align 8
  %synthetic_id = alloca i16, align 2
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %topic, ptr %topic.addr, align 8, !tbaa !4
  store i32 %qos, ptr %qos.addr, align 4, !tbaa !74
  %frombool = zext i1 %retain to i8
  store i8 %frombool, ptr %retain.addr, align 1, !tbaa !220
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !4
  store ptr %on_complete, ptr %on_complete.addr, align 8, !tbaa !4
  store ptr %userdata, ptr %userdata.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !103
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.69, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, ptr %qos.addr, align 4, !tbaa !74
  %cmp5 = icmp ult i32 %11, 0
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %12 = load i32, ptr %qos.addr, align 4, !tbaa !74
  %cmp6 = icmp ugt i32 %12, 2
  br i1 %cmp6, label %if.then7, label %if.end25

if.then7:                                         ; preds = %lor.lhs.false, %do.end
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger9) #9
  %call10 = call ptr @aws_logger_get()
  store ptr %call10, ptr %logger9, align 8, !tbaa !4
  %13 = load ptr, ptr %logger9, align 8, !tbaa !4
  %cmp11 = icmp ne ptr %13, null
  br i1 %cmp11, label %land.lhs.true12, label %if.end21

land.lhs.true12:                                  ; preds = %do.body8
  %14 = load ptr, ptr %logger9, align 8, !tbaa !4
  %vtable13 = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable13, align 8, !tbaa !99
  %get_log_level14 = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %get_log_level14, align 8, !tbaa !101
  %17 = load ptr, ptr %logger9, align 8, !tbaa !4
  %call15 = call i32 %16(ptr noundef %17, i32 noundef 5126)
  %cmp16 = icmp uge i32 %call15, 2
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %land.lhs.true12
  %18 = load ptr, ptr %logger9, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vtable18, align 8, !tbaa !99
  %log19 = getelementptr inbounds %struct.aws_logger_vtable, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %log19, align 8, !tbaa !103
  %21 = load ptr, ptr %logger9, align 8, !tbaa !4
  %22 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call20 = call i32 (ptr, i32, i32, ptr, ...) %20(ptr noundef %21, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.70, ptr noundef %22)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true12, %do.body8
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger9) #9
  br label %do.cond22

do.cond22:                                        ; preds = %if.end21
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  %call24 = call i32 @aws_raise_error(i32 noundef 5126)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77

if.end25:                                         ; preds = %lor.lhs.false
  %23 = load ptr, ptr %topic.addr, align 8, !tbaa !4
  %call26 = call zeroext i1 @aws_mqtt_is_valid_topic(ptr noundef %23)
  br i1 %call26, label %if.end45, label %if.then27

if.then27:                                        ; preds = %if.end25
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger29) #9
  %call30 = call ptr @aws_logger_get()
  store ptr %call30, ptr %logger29, align 8, !tbaa !4
  %24 = load ptr, ptr %logger29, align 8, !tbaa !4
  %cmp31 = icmp ne ptr %24, null
  br i1 %cmp31, label %land.lhs.true32, label %if.end41

land.lhs.true32:                                  ; preds = %do.body28
  %25 = load ptr, ptr %logger29, align 8, !tbaa !4
  %vtable33 = getelementptr inbounds %struct.aws_logger, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %vtable33, align 8, !tbaa !99
  %get_log_level34 = getelementptr inbounds %struct.aws_logger_vtable, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %get_log_level34, align 8, !tbaa !101
  %28 = load ptr, ptr %logger29, align 8, !tbaa !4
  %call35 = call i32 %27(ptr noundef %28, i32 noundef 5126)
  %cmp36 = icmp uge i32 %call35, 2
  br i1 %cmp36, label %if.then37, label %if.end41

if.then37:                                        ; preds = %land.lhs.true32
  %29 = load ptr, ptr %logger29, align 8, !tbaa !4
  %vtable38 = getelementptr inbounds %struct.aws_logger, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %vtable38, align 8, !tbaa !99
  %log39 = getelementptr inbounds %struct.aws_logger_vtable, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %log39, align 8, !tbaa !103
  %32 = load ptr, ptr %logger29, align 8, !tbaa !4
  %33 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call40 = call i32 (ptr, i32, i32, ptr, ...) %31(ptr noundef %32, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.71, ptr noundef %33)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %land.lhs.true32, %do.body28
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger29) #9
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  %call44 = call i32 @aws_raise_error(i32 noundef 5128)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77

if.end45:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 16, ptr %topic_cursor) #9
  %34 = load ptr, ptr %topic.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic_cursor, ptr align 8 %34, i64 16, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(i64 16, ptr %payload_cursor) #9
  br label %do.body46

do.body46:                                        ; preds = %if.end45
  call void @llvm.memset.p0.i64(ptr align 8 %payload_cursor, i8 0, i64 16, i1 false)
  br label %do.cond47

do.cond47:                                        ; preds = %do.body46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  %35 = load ptr, ptr %payload.addr, align 8, !tbaa !4
  %cmp49 = icmp ne ptr %35, null
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.end48
  %36 = load ptr, ptr %payload.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %payload_cursor, ptr align 8 %36, i64 16, i1 false), !tbaa.struct !26
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %do.end48
  call void @llvm.lifetime.start.p0(i64 64, ptr %publish_options) #9
  %adapter52 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %publish_options, i32 0, i32 0
  %37 = load ptr, ptr %adapter, align 8, !tbaa !4
  store ptr %37, ptr %adapter52, align 8, !tbaa !21
  %topic53 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %publish_options, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %topic53, ptr align 8 %topic_cursor, i64 16, i1 false), !tbaa.struct !26
  %qos54 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %publish_options, i32 0, i32 2
  %38 = load i32, ptr %qos.addr, align 4, !tbaa !74
  store i32 %38, ptr %qos54, align 8, !tbaa !30
  %retain55 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %publish_options, i32 0, i32 3
  %39 = load i8, ptr %retain.addr, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool = trunc i8 %39 to i1
  %frombool56 = zext i1 %tobool to i8
  store i8 %frombool56, ptr %retain55, align 4, !tbaa !33
  %payload57 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %publish_options, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %payload57, ptr align 8 %payload_cursor, i64 16, i1 false), !tbaa.struct !26
  %on_complete58 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %publish_options, i32 0, i32 5
  %40 = load ptr, ptr %on_complete.addr, align 8, !tbaa !4
  store ptr %40, ptr %on_complete58, align 8, !tbaa !59
  %on_complete_userdata = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_publish_options, ptr %publish_options, i32 0, i32 6
  %41 = load ptr, ptr %userdata.addr, align 8, !tbaa !4
  store ptr %41, ptr %on_complete_userdata, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation) #9
  %42 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %allocator, align 8, !tbaa !184
  %call59 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_new_publish(ptr noundef %43, ptr noundef %publish_options)
  store ptr %call59, ptr %operation, align 8, !tbaa !4
  %44 = load ptr, ptr %operation, align 8, !tbaa !4
  %cmp60 = icmp eq ptr %44, null
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end51
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  %45 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %45, i32 0, i32 11
  %46 = load ptr, ptr %operation, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %46, i32 0, i32 0
  %call63 = call i32 @aws_mqtt5_to_mqtt3_adapter_operation_table_add_operation(ptr noundef %operational_state, ptr noundef %base)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  br label %error

if.end66:                                         ; preds = %if.end62
  %47 = load ptr, ptr %operation, align 8, !tbaa !4
  %base67 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %47, i32 0, i32 0
  %id = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base67, i32 0, i32 7
  %48 = load i16, ptr %id, align 4, !tbaa !76
  store i16 %48, ptr %synthetic_id, align 2, !tbaa !136
  %49 = load ptr, ptr %operation, align 8, !tbaa !4
  %base68 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %49, i32 0, i32 0
  call void @s_aws_mqtt5_to_mqtt3_adapter_operation_acquire_cross_thread_refs(ptr noundef %base68)
  %50 = load ptr, ptr %operation, align 8, !tbaa !4
  %base69 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %50, i32 0, i32 0
  %submission_task = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base69, i32 0, i32 5
  %51 = load ptr, ptr %operation, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %submission_task, ptr noundef @s_adapter_publish_submission_fn, ptr noundef %51, ptr noundef @.str.72)
  %52 = load ptr, ptr %adapter, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %loop, align 8, !tbaa !188
  %54 = load ptr, ptr %operation, align 8, !tbaa !4
  %base70 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %54, i32 0, i32 0
  %submission_task71 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %base70, i32 0, i32 5
  call void @aws_event_loop_schedule_task_now(ptr noundef %53, ptr noundef %submission_task71)
  %55 = load i16, ptr %synthetic_id, align 2, !tbaa !136
  store i16 %55, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then65
  %56 = load ptr, ptr %operation, align 8, !tbaa !4
  %base72 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_publish, ptr %56, i32 0, i32 0
  %call73 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_release(ptr noundef %base72)
  store i16 0, ptr %retval, align 2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end66, %if.then61
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %publish_options) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %payload_cursor) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %topic_cursor) #9
  br label %cleanup77

cleanup77:                                        ; preds = %cleanup, %do.end43, %do.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %57 = load i16, ptr %retval, align 2
  ret i16 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt_client_connection_5_get_stats(ptr noundef %impl, ptr noundef %stats) #0 {
entry:
  %retval = alloca i32, align 4
  %impl.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger9 = alloca ptr, align 8
  %logger27 = alloca ptr, align 8
  %mqtt5_stats = alloca %struct.aws_mqtt5_client_operation_statistics, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !4
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %impl.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable4, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !103
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.73)
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call6 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  br label %do.body8

do.body8:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger9) #9
  %call10 = call ptr @aws_logger_get()
  store ptr %call10, ptr %logger9, align 8, !tbaa !4
  %11 = load ptr, ptr %logger9, align 8, !tbaa !4
  %cmp11 = icmp ne ptr %11, null
  br i1 %cmp11, label %land.lhs.true12, label %if.end21

land.lhs.true12:                                  ; preds = %do.body8
  %12 = load ptr, ptr %logger9, align 8, !tbaa !4
  %vtable13 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable13, align 8, !tbaa !99
  %get_log_level14 = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %get_log_level14, align 8, !tbaa !101
  %15 = load ptr, ptr %logger9, align 8, !tbaa !4
  %call15 = call i32 %14(ptr noundef %15, i32 noundef 5126)
  %cmp16 = icmp uge i32 %call15, 5
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %land.lhs.true12
  %16 = load ptr, ptr %logger9, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %vtable18, align 8, !tbaa !99
  %log19 = getelementptr inbounds %struct.aws_logger_vtable, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %log19, align 8, !tbaa !103
  %19 = load ptr, ptr %logger9, align 8, !tbaa !4
  %20 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call20 = call i32 (ptr, i32, i32, ptr, ...) %18(ptr noundef %19, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.74, ptr noundef %20)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true12, %do.body8
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger9) #9
  br label %do.cond22

do.cond22:                                        ; preds = %if.end21
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  %21 = load ptr, ptr %stats.addr, align 8, !tbaa !4
  %tobool24 = icmp ne ptr %21, null
  br i1 %tobool24, label %if.end43, label %if.then25

if.then25:                                        ; preds = %do.end23
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger27) #9
  %call28 = call ptr @aws_logger_get()
  store ptr %call28, ptr %logger27, align 8, !tbaa !4
  %22 = load ptr, ptr %logger27, align 8, !tbaa !4
  %cmp29 = icmp ne ptr %22, null
  br i1 %cmp29, label %land.lhs.true30, label %if.end39

land.lhs.true30:                                  ; preds = %do.body26
  %23 = load ptr, ptr %logger27, align 8, !tbaa !4
  %vtable31 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable31, align 8, !tbaa !99
  %get_log_level32 = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %get_log_level32, align 8, !tbaa !101
  %26 = load ptr, ptr %logger27, align 8, !tbaa !4
  %call33 = call i32 %25(ptr noundef %26, i32 noundef 5126)
  %cmp34 = icmp uge i32 %call33, 2
  br i1 %cmp34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %land.lhs.true30
  %27 = load ptr, ptr %logger27, align 8, !tbaa !4
  %vtable36 = getelementptr inbounds %struct.aws_logger, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %vtable36, align 8, !tbaa !99
  %log37 = getelementptr inbounds %struct.aws_logger_vtable, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %log37, align 8, !tbaa !103
  %30 = load ptr, ptr %logger27, align 8, !tbaa !4
  %31 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call38 = call i32 (ptr, i32, i32, ptr, ...) %29(ptr noundef %30, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.75, ptr noundef %31)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true30, %do.body26
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger27) #9
  br label %do.cond40

do.cond40:                                        ; preds = %if.end39
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  %call42 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call42, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %do.end23
  call void @llvm.lifetime.start.p0(i64 32, ptr %mqtt5_stats) #9
  br label %do.body44

do.body44:                                        ; preds = %if.end43
  call void @llvm.memset.p0.i64(ptr align 8 %mqtt5_stats, i8 0, i64 32, i1 false)
  br label %do.cond45

do.cond45:                                        ; preds = %do.body44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  %32 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %client, align 8, !tbaa !50
  call void @aws_mqtt5_client_get_stats(ptr noundef %33, ptr noundef %mqtt5_stats)
  %incomplete_operation_count = getelementptr inbounds %struct.aws_mqtt5_client_operation_statistics, ptr %mqtt5_stats, i32 0, i32 0
  %34 = load i64, ptr %incomplete_operation_count, align 8, !tbaa !221
  %35 = load ptr, ptr %stats.addr, align 8, !tbaa !4
  %incomplete_operation_count47 = getelementptr inbounds %struct.aws_mqtt_connection_operation_statistics, ptr %35, i32 0, i32 0
  store i64 %34, ptr %incomplete_operation_count47, align 8, !tbaa !223
  %incomplete_operation_size = getelementptr inbounds %struct.aws_mqtt5_client_operation_statistics, ptr %mqtt5_stats, i32 0, i32 1
  %36 = load i64, ptr %incomplete_operation_size, align 8, !tbaa !225
  %37 = load ptr, ptr %stats.addr, align 8, !tbaa !4
  %incomplete_operation_size48 = getelementptr inbounds %struct.aws_mqtt_connection_operation_statistics, ptr %37, i32 0, i32 1
  store i64 %36, ptr %incomplete_operation_size48, align 8, !tbaa !226
  %unacked_operation_count = getelementptr inbounds %struct.aws_mqtt5_client_operation_statistics, ptr %mqtt5_stats, i32 0, i32 2
  %38 = load i64, ptr %unacked_operation_count, align 8, !tbaa !227
  %39 = load ptr, ptr %stats.addr, align 8, !tbaa !4
  %unacked_operation_count49 = getelementptr inbounds %struct.aws_mqtt_connection_operation_statistics, ptr %39, i32 0, i32 2
  store i64 %38, ptr %unacked_operation_count49, align 8, !tbaa !228
  %unacked_operation_size = getelementptr inbounds %struct.aws_mqtt5_client_operation_statistics, ptr %mqtt5_stats, i32 0, i32 3
  %40 = load i64, ptr %unacked_operation_size, align 8, !tbaa !229
  %41 = load ptr, ptr %stats.addr, align 8, !tbaa !4
  %unacked_operation_size50 = getelementptr inbounds %struct.aws_mqtt_connection_operation_statistics, ptr %41, i32 0, i32 3
  store i64 %40, ptr %unacked_operation_size50, align 8, !tbaa !230
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr %mqtt5_stats) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end41, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare zeroext i1 @aws_mqtt_is_valid_topic(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_will_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %topic, i32 noundef %qos, i1 noundef zeroext %retain, ptr noundef %payload) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %topic.addr = alloca ptr, align 8
  %qos.addr = alloca i32, align 4
  %retain.addr = alloca i8, align 1
  %payload.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %topic, ptr %topic.addr, align 8, !tbaa !4
  store i32 %qos, ptr %qos.addr, align 4, !tbaa !74
  %frombool = zext i1 %retain to i8
  store i8 %frombool, ptr %retain.addr, align 1, !tbaa !220
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %topic.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %1, i64 noundef 1, i64 noundef 152)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_will_task_fn, ptr noundef %3, ptr noundef @.str.17)
  %4 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %6 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %6, i32 0, i32 1
  store ptr %5, ptr %allocator2, align 8, !tbaa !231
  %7 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %8, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !233
  %9 = load i32, ptr %qos.addr, align 4, !tbaa !74
  %10 = load ptr, ptr %set_task, align 8, !tbaa !4
  %qos5 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %10, i32 0, i32 4
  store i32 %9, ptr %qos5, align 8, !tbaa !234
  %11 = load i8, ptr %retain.addr, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool = trunc i8 %11 to i1
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  %retain6 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %12, i32 0, i32 5
  %frombool7 = zext i1 %tobool to i8
  store i8 %frombool7, ptr %retain6, align 4, !tbaa !235
  %13 = load ptr, ptr %set_task, align 8, !tbaa !4
  %topic_buffer = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %topic.addr, align 8, !tbaa !4
  %16 = getelementptr inbounds { i64, ptr }, ptr %15, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds { i64, ptr }, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %call8 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %topic_buffer, ptr noundef %14, i64 %17, ptr %19)
  %20 = load ptr, ptr %payload.addr, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %20, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %21 = load ptr, ptr %set_task, align 8, !tbaa !4
  %payload_buffer = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %payload.addr, align 8, !tbaa !4
  %24 = getelementptr inbounds { i64, ptr }, ptr %23, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds { i64, ptr }, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %call11 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %payload_buffer, ptr noundef %22, i64 %25, ptr %27)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %28 = load ptr, ptr %set_task, align 8, !tbaa !4
  store ptr %28, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

declare void @aws_event_loop_schedule_task_now(ptr noundef, ptr noundef) #2

declare void @aws_task_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_set_will_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %connect = alloca ptr, align 8
  %will9 = alloca %struct.aws_mqtt5_packet_publish_view, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !233
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %client, align 8, !tbaa !50
  %config = getelementptr inbounds %struct.aws_mqtt5_client, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %config, align 8, !tbaa !236
  %connect2 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %7, i32 0, i32 24
  %8 = load ptr, ptr %connect2, align 8, !tbaa !237
  store ptr %8, ptr %connect, align 8, !tbaa !4
  %9 = load ptr, ptr %connect, align 8, !tbaa !4
  %will = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %will, align 8, !tbaa !244
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %connect, align 8, !tbaa !4
  %will5 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %will5, align 8, !tbaa !244
  call void @aws_mqtt5_packet_publish_storage_clean_up(ptr noundef %12)
  %13 = load ptr, ptr %connect, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %allocator, align 8, !tbaa !247
  %15 = load ptr, ptr %connect, align 8, !tbaa !4
  %will6 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %15, i32 0, i32 10
  %16 = load ptr, ptr %will6, align 8, !tbaa !244
  call void @aws_mem_release(ptr noundef %14, ptr noundef %16)
  %17 = load ptr, ptr %connect, align 8, !tbaa !4
  %will7 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %17, i32 0, i32 10
  store ptr null, ptr %will7, align 8, !tbaa !244
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %payload = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 0
  %18 = load ptr, ptr %set_task, align 8, !tbaa !4
  %payload_buffer = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %18, i32 0, i32 6
  %call = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %payload_buffer)
  %19 = getelementptr inbounds { i64, ptr }, ptr %payload, i32 0, i32 0
  %20 = extractvalue { i64, ptr } %call, 0
  store i64 %20, ptr %19, align 8
  %21 = getelementptr inbounds { i64, ptr }, ptr %payload, i32 0, i32 1
  %22 = extractvalue { i64, ptr } %call, 1
  store ptr %22, ptr %21, align 8
  %packet_id = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 1
  store i16 0, ptr %packet_id, align 8, !tbaa !28
  %qos = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 2
  %23 = load ptr, ptr %set_task, align 8, !tbaa !4
  %qos10 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %qos10, align 8, !tbaa !234
  store i32 %24, ptr %qos, align 4, !tbaa !31
  %duplicate = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 3
  store i8 0, ptr %duplicate, align 8, !tbaa !32
  %retain = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 4
  %25 = load ptr, ptr %set_task, align 8, !tbaa !4
  %retain11 = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %25, i32 0, i32 5
  %26 = load i8, ptr %retain11, align 4, !tbaa !235, !range !34, !noundef !35
  %tobool = trunc i8 %26 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %retain, align 1, !tbaa !36
  %topic = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 5
  %27 = load ptr, ptr %set_task, align 8, !tbaa !4
  %topic_buffer = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %27, i32 0, i32 3
  %call12 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %topic_buffer)
  %28 = getelementptr inbounds { i64, ptr }, ptr %topic, i32 0, i32 0
  %29 = extractvalue { i64, ptr } %call12, 0
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds { i64, ptr }, ptr %topic, i32 0, i32 1
  %31 = extractvalue { i64, ptr } %call12, 1
  store ptr %31, ptr %30, align 8
  %payload_format = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 6
  store ptr null, ptr %payload_format, align 8, !tbaa !37
  %message_expiry_interval_seconds = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 7
  store ptr null, ptr %message_expiry_interval_seconds, align 8, !tbaa !38
  %topic_alias = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 8
  store ptr null, ptr %topic_alias, align 8, !tbaa !39
  %response_topic = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 9
  store ptr null, ptr %response_topic, align 8, !tbaa !40
  %correlation_data = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 10
  store ptr null, ptr %correlation_data, align 8, !tbaa !41
  %subscription_identifier_count = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 11
  store i64 0, ptr %subscription_identifier_count, align 8, !tbaa !42
  %subscription_identifiers = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 12
  store ptr null, ptr %subscription_identifiers, align 8, !tbaa !43
  %content_type = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 13
  store ptr null, ptr %content_type, align 8, !tbaa !44
  %user_property_count = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 14
  store i64 0, ptr %user_property_count, align 8, !tbaa !45
  %user_properties = getelementptr inbounds %struct.aws_mqtt5_packet_publish_view, ptr %will9, i32 0, i32 15
  store ptr null, ptr %user_properties, align 8, !tbaa !46
  %32 = load ptr, ptr %connect, align 8, !tbaa !4
  %allocator13 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %allocator13, align 8, !tbaa !247
  %call14 = call ptr @aws_mem_calloc(ptr noundef %33, i64 noundef 1, i64 noundef 304)
  %34 = load ptr, ptr %connect, align 8, !tbaa !4
  %will15 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %34, i32 0, i32 10
  store ptr %call14, ptr %will15, align 8, !tbaa !244
  %35 = load ptr, ptr %connect, align 8, !tbaa !4
  %will16 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %35, i32 0, i32 10
  %36 = load ptr, ptr %will16, align 8, !tbaa !244
  %37 = load ptr, ptr %connect, align 8, !tbaa !4
  %allocator17 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %allocator17, align 8, !tbaa !247
  %call18 = call i32 @aws_mqtt5_packet_publish_storage_init(ptr noundef %36, ptr noundef %38, ptr noundef %will9)
  %39 = load ptr, ptr %connect, align 8, !tbaa !4
  %will19 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %39, i32 0, i32 10
  %40 = load ptr, ptr %will19, align 8, !tbaa !244
  %storage_view = getelementptr inbounds %struct.aws_mqtt5_packet_publish_storage, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %connect, align 8, !tbaa !4
  %storage_view20 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %41, i32 0, i32 1
  %will21 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %storage_view20, i32 0, i32 12
  store ptr %storage_view, ptr %will21, align 8, !tbaa !248
  br label %done

done:                                             ; preds = %if.end8, %if.then
  %42 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %42, i32 0, i32 8
  %call22 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %43 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @s_aws_mqtt_set_will_task_destroy(ptr noundef %43)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

declare void @aws_mqtt5_packet_publish_storage_clean_up(ptr noundef) #2

declare i32 @aws_mqtt5_packet_publish_storage_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt_set_will_task_destroy(ptr noundef %task) #0 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %topic_buffer = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %1, i32 0, i32 3
  call void @aws_byte_buf_clean_up(ptr noundef %topic_buffer)
  %2 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %payload_buffer = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %2, i32 0, i32 6
  call void @aws_byte_buf_clean_up(ptr noundef %payload_buffer)
  %3 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_will_task, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %allocator, align 8, !tbaa !231
  %5 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %4, ptr noundef %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_login_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %username, ptr noundef %password) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %username.addr = alloca ptr, align 8
  %password.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %username, ptr %username.addr, align 8, !tbaa !4
  store ptr %password, ptr %password.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 144)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_login_task_fn, ptr noundef %2, ptr noundef @.str.19)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !249
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !251
  %8 = load ptr, ptr %username.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %set_task, align 8, !tbaa !4
  %username_buffer = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %username.addr, align 8, !tbaa !4
  %12 = getelementptr inbounds { i64, ptr }, ptr %11, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %call5 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %username_buffer, ptr noundef %10, i64 %13, ptr %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %password.addr, align 8, !tbaa !4
  %cmp6 = icmp ne ptr %16, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %17 = load ptr, ptr %set_task, align 8, !tbaa !4
  %password_buffer = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %password.addr, align 8, !tbaa !4
  %20 = getelementptr inbounds { i64, ptr }, ptr %19, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds { i64, ptr }, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %call8 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %password_buffer, ptr noundef %18, i64 %21, ptr %23)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %24 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %24
}

declare ptr @aws_error_debug_str(i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_set_login_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %username_cursor = alloca %struct.aws_byte_cursor, align 8
  %password_cursor = alloca %struct.aws_byte_cursor, align 8
  %old_connect = alloca ptr, align 8
  %new_connect_view = alloca %struct.aws_mqtt5_packet_connect_view, align 8
  %logger = alloca ptr, align 8
  %new_connect = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !251
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %username_buffer = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %5, i32 0, i32 3
  %call = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %username_buffer)
  %6 = getelementptr inbounds { i64, ptr }, ptr %username_cursor, i32 0, i32 0
  %7 = extractvalue { i64, ptr } %call, 0
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds { i64, ptr }, ptr %username_cursor, i32 0, i32 1
  %9 = extractvalue { i64, ptr } %call, 1
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %set_task, align 8, !tbaa !4
  %password_buffer = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %10, i32 0, i32 4
  %call2 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %password_buffer)
  %11 = getelementptr inbounds { i64, ptr }, ptr %password_cursor, i32 0, i32 0
  %12 = extractvalue { i64, ptr } %call2, 0
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds { i64, ptr }, ptr %password_cursor, i32 0, i32 1
  %14 = extractvalue { i64, ptr } %call2, 1
  store ptr %14, ptr %13, align 8
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %client, align 8, !tbaa !50
  %config = getelementptr inbounds %struct.aws_mqtt5_client, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %config, align 8, !tbaa !236
  %connect = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %17, i32 0, i32 24
  %18 = load ptr, ptr %connect, align 8, !tbaa !237
  store ptr %18, ptr %old_connect, align 8, !tbaa !4
  %19 = load ptr, ptr %old_connect, align 8, !tbaa !4
  %storage_view = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %19, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new_connect_view, ptr align 8 %storage_view, i64 144, i1 false), !tbaa.struct !252
  %20 = load ptr, ptr %set_task, align 8, !tbaa !4
  %username_buffer3 = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %20, i32 0, i32 3
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %username_buffer3, i32 0, i32 0
  %21 = load i64, ptr %len, align 8, !tbaa !253
  %cmp4 = icmp ugt i64 %21, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %username = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %new_connect_view, i32 0, i32 2
  store ptr %username_cursor, ptr %username, align 8, !tbaa !254
  br label %if.end7

if.else:                                          ; preds = %if.end
  %username6 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %new_connect_view, i32 0, i32 2
  store ptr null, ptr %username6, align 8, !tbaa !254
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %22 = load ptr, ptr %set_task, align 8, !tbaa !4
  %password_buffer8 = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %22, i32 0, i32 4
  %len9 = getelementptr inbounds %struct.aws_byte_buf, ptr %password_buffer8, i32 0, i32 0
  %23 = load i64, ptr %len9, align 8, !tbaa !255
  %cmp10 = icmp ugt i64 %23, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.end7
  %password = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %new_connect_view, i32 0, i32 3
  store ptr %password_cursor, ptr %password, align 8, !tbaa !256
  br label %if.end14

if.else12:                                        ; preds = %if.end7
  %password13 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %new_connect_view, i32 0, i32 3
  store ptr null, ptr %password13, align 8, !tbaa !256
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then11
  %call15 = call i32 @aws_mqtt5_packet_connect_view_validate(ptr noundef %new_connect_view)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.end14
  br label %do.body

do.body:                                          ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call17 = call ptr @aws_logger_get()
  store ptr %call17, ptr %logger, align 8, !tbaa !4
  %24 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp18 = icmp ne ptr %24, null
  br i1 %cmp18, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %do.body
  %25 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %28 = load ptr, ptr %logger, align 8, !tbaa !4
  %call19 = call i32 %27(ptr noundef %28, i32 noundef 5126)
  %cmp20 = icmp uge i32 %call19, 2
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %vtable22, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %log, align 8, !tbaa !103
  %32 = load ptr, ptr %logger, align 8, !tbaa !4
  %33 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call23 = call i32 (ptr, i32, i32, ptr, ...) %31(ptr noundef %32, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.20, ptr noundef %33)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end24
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %done

if.end25:                                         ; preds = %if.end14
  %34 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %allocator, align 8, !tbaa !184
  %call26 = call ptr @aws_mem_calloc(ptr noundef %35, i64 noundef 1, i64 noundef 320)
  store ptr %call26, ptr %new_connect, align 8, !tbaa !4
  %36 = load ptr, ptr %new_connect, align 8, !tbaa !4
  %37 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator27 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %allocator27, align 8, !tbaa !184
  %call28 = call i32 @aws_mqtt5_packet_connect_storage_init(ptr noundef %36, ptr noundef %38, ptr noundef %new_connect_view)
  %39 = load ptr, ptr %new_connect, align 8, !tbaa !4
  %40 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client29 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %client29, align 8, !tbaa !50
  %config30 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %config30, align 8, !tbaa !236
  %connect31 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %42, i32 0, i32 24
  store ptr %39, ptr %connect31, align 8, !tbaa !237
  %43 = load ptr, ptr %old_connect, align 8, !tbaa !4
  call void @aws_mqtt5_packet_connect_storage_clean_up(ptr noundef %43)
  %44 = load ptr, ptr %old_connect, align 8, !tbaa !4
  %allocator32 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %allocator32, align 8, !tbaa !247
  %46 = load ptr, ptr %old_connect, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %45, ptr noundef %46)
  br label %done

done:                                             ; preds = %if.end25, %do.end, %if.then
  %47 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %47, i32 0, i32 8
  %call33 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %48 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @s_aws_mqtt_set_login_task_destroy(ptr noundef %48)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

declare i32 @aws_mqtt5_packet_connect_view_validate(ptr noundef) #2

declare i32 @aws_mqtt5_packet_connect_storage_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @aws_mqtt5_packet_connect_storage_clean_up(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt_set_login_task_destroy(ptr noundef %task) #0 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %username_buffer = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %1, i32 0, i32 3
  call void @aws_byte_buf_clean_up_secure(ptr noundef %username_buffer)
  %2 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %password_buffer = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %2, i32 0, i32 4
  call void @aws_byte_buf_clean_up_secure(ptr noundef %password_buffer)
  %3 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_login_task, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %allocator, align 8, !tbaa !249
  %5 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %4, ptr noundef %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @aws_byte_buf_clean_up_secure(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_use_websockets_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %transformer, ptr noundef %transformer_user_data) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %transformer.addr = alloca ptr, align 8
  %transformer_user_data.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %transformer, ptr %transformer.addr, align 8, !tbaa !4
  store ptr %transformer_user_data, ptr %transformer_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 96)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_use_websockets_task_fn, ptr noundef %2, ptr noundef @.str.22)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !257
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !259
  %8 = load ptr, ptr %transformer.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %set_task, align 8, !tbaa !4
  %transformer5 = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %9, i32 0, i32 3
  store ptr %8, ptr %transformer5, align 8, !tbaa !260
  %10 = load ptr, ptr %transformer_user_data.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %set_task, align 8, !tbaa !4
  %transformer_user_data6 = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %11, i32 0, i32 4
  store ptr %10, ptr %transformer_user_data6, align 8, !tbaa !261
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @s_set_use_websockets_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !259
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %transformer = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %transformer, align 8, !tbaa !260
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %websocket_handshake_transformer = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 25
  store ptr %6, ptr %websocket_handshake_transformer, align 8, !tbaa !262
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %transformer_user_data = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %transformer_user_data, align 8, !tbaa !261
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %websocket_handshake_transformer_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %10, i32 0, i32 26
  store ptr %9, ptr %websocket_handshake_transformer_user_data, align 8, !tbaa !263
  %11 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %client, align 8, !tbaa !50
  %config = getelementptr inbounds %struct.aws_mqtt5_client, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %config, align 8, !tbaa !236
  %websocket_handshake_transform = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %13, i32 0, i32 9
  store ptr @s_aws_mqtt5_adapter_transform_websocket_handshake_fn, ptr %websocket_handshake_transform, align 8, !tbaa !264
  %14 = load ptr, ptr %adapter, align 8, !tbaa !4
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %client2, align 8, !tbaa !50
  %config3 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %config3, align 8, !tbaa !236
  %websocket_handshake_transform_user_data = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %17, i32 0, i32 10
  store ptr %14, ptr %websocket_handshake_transform_user_data, align 8, !tbaa !265
  br label %done

done:                                             ; preds = %if.end, %if.then
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %18, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %19 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_use_websockets_task, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %allocator, align 8, !tbaa !257
  %21 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %20, ptr noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_adapter_transform_websocket_handshake_fn(ptr noundef %request, ptr noundef %user_data, ptr noundef %complete_fn, ptr noundef %complete_ctx) #0 {
entry:
  %request.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %complete_fn.addr = alloca ptr, align 8
  %complete_ctx.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %args = alloca %struct.aws_mqtt5_adapter_websocket_handshake_args, align 8
  store ptr %request, ptr %request.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %complete_fn, ptr %complete_fn.addr, align 8, !tbaa !4
  store ptr %complete_ctx, ptr %complete_ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %args) #9
  call void @llvm.memset.p0.i64(ptr align 8 %args, i8 0, i64 32, i1 false)
  %input_request = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %args, i32 0, i32 1
  %1 = load ptr, ptr %request.addr, align 8, !tbaa !4
  store ptr %1, ptr %input_request, align 8, !tbaa !266
  %2 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call = call i32 @s_aws_mqtt5_adapter_perform_safe_callback(ptr noundef %2, i1 noundef zeroext false, ptr noundef @s_safe_websocket_handshake_fn, ptr noundef %args)
  %chain_callback = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %args, i32 0, i32 0
  %3 = load i8, ptr %chain_callback, align 8, !tbaa !268, !range !34, !noundef !35
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %complete_fn.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %mqtt5_websocket_handshake_completion_function = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %5, i32 0, i32 27
  store ptr %4, ptr %mqtt5_websocket_handshake_completion_function, align 8, !tbaa !269
  %6 = load ptr, ptr %complete_ctx.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %mqtt5_websocket_handshake_completion_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 28
  store ptr %6, ptr %mqtt5_websocket_handshake_completion_user_data, align 8, !tbaa !270
  %8 = load ptr, ptr %adapter, align 8, !tbaa !4
  %websocket_handshake_transformer = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %8, i32 0, i32 25
  %9 = load ptr, ptr %websocket_handshake_transformer, align 8, !tbaa !262
  %10 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %adapter, align 8, !tbaa !4
  %websocket_handshake_transformer_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %11, i32 0, i32 26
  %12 = load ptr, ptr %websocket_handshake_transformer_user_data, align 8, !tbaa !263
  %13 = load ptr, ptr %adapter, align 8, !tbaa !4
  call void %9(ptr noundef %10, ptr noundef %12, ptr noundef @s_aws_mqtt5_adapter_websocket_handshake_completion_fn, ptr noundef %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %complete_fn.addr, align 8, !tbaa !4
  %output_request = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %args, i32 0, i32 2
  %15 = load ptr, ptr %output_request, align 8, !tbaa !271
  %completion_error_code = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %args, i32 0, i32 3
  %16 = load i32, ptr %completion_error_code, align 8, !tbaa !272
  %17 = load ptr, ptr %complete_ctx.addr, align 8, !tbaa !4
  call void %14(ptr noundef %15, i32 noundef %16, ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %args) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt5_adapter_perform_safe_callback(ptr noundef %adapter, i1 noundef zeroext %use_write_lock, ptr noundef %callback_fn, ptr noundef %callback_user_data) #0 {
entry:
  %adapter.addr = alloca ptr, align 8
  %use_write_lock.addr = alloca i8, align 1
  %callback_fn.addr = alloca ptr, align 8
  %callback_user_data.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %should_unlock = alloca i8, align 1
  %clear_synchronous_callback_flag = alloca i8, align 1
  %result = alloca i32, align 4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  %frombool = zext i1 %use_write_lock to i8
  store i8 %frombool, ptr %use_write_lock.addr, align 1, !tbaa !220
  store ptr %callback_fn, ptr %callback_fn.addr, align 8, !tbaa !4
  store ptr %callback_user_data, ptr %callback_user_data.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !103
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.23, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %should_unlock) #9
  store i8 1, ptr %should_unlock, align 1, !tbaa !220
  call void @llvm.lifetime.start.p0(i64 1, ptr %clear_synchronous_callback_flag) #9
  store i8 0, ptr %clear_synchronous_callback_flag, align 1, !tbaa !220
  %10 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %loop, align 8, !tbaa !188
  %call5 = call zeroext i1 @aws_event_loop_thread_is_callers_thread(ptr noundef %11)
  br i1 %call5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.end
  %12 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %in_synchronous_callback = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %12, i32 0, i32 5
  %13 = load i8, ptr %in_synchronous_callback, align 8, !tbaa !273, !range !34, !noundef !35
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then6
  store i8 0, ptr %should_unlock, align 1, !tbaa !220
  br label %if.end9

if.else:                                          ; preds = %if.then6
  %14 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %in_synchronous_callback8 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %14, i32 0, i32 5
  store i8 1, ptr %in_synchronous_callback8, align 8, !tbaa !273
  store i8 1, ptr %clear_synchronous_callback_flag, align 1, !tbaa !220
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %do.end
  %15 = load i8, ptr %should_unlock, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool11 = trunc i8 %15 to i1
  br i1 %tobool11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end10
  %16 = load i8, ptr %use_write_lock.addr, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool13 = trunc i8 %16 to i1
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.then12
  %17 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %17, i32 0, i32 9
  %call15 = call i32 @aws_rw_lock_wlock(ptr noundef %lock)
  br label %if.end19

if.else16:                                        ; preds = %if.then12
  %18 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %lock17 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %18, i32 0, i32 9
  %call18 = call i32 @aws_rw_lock_rlock(ptr noundef %lock17)
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9
  %19 = load ptr, ptr %callback_fn.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %callback_user_data.addr, align 8, !tbaa !4
  %call21 = call i32 %19(ptr noundef %20, ptr noundef %21)
  store i32 %call21, ptr %result, align 4, !tbaa !75
  %22 = load i8, ptr %should_unlock, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool22 = trunc i8 %22 to i1
  br i1 %tobool22, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end20
  %23 = load i8, ptr %use_write_lock.addr, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool24 = trunc i8 %23 to i1
  br i1 %tobool24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.then23
  %24 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %lock26 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %24, i32 0, i32 9
  %call27 = call i32 @aws_rw_lock_wunlock(ptr noundef %lock26)
  br label %if.end31

if.else28:                                        ; preds = %if.then23
  %25 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %lock29 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %25, i32 0, i32 9
  %call30 = call i32 @aws_rw_lock_runlock(ptr noundef %lock29)
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end20
  %26 = load i8, ptr %clear_synchronous_callback_flag, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool33 = trunc i8 %26 to i1
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  %27 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %in_synchronous_callback35 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %27, i32 0, i32 5
  store i8 0, ptr %in_synchronous_callback35, align 8, !tbaa !273
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32
  %28 = load i32, ptr %result, align 4, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %clear_synchronous_callback_flag) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %should_unlock) #9
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @s_safe_websocket_handshake_fn(ptr noundef %adapter, ptr noundef %context) #0 {
entry:
  %adapter.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %args = alloca ptr, align 8
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %args, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %synced_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 10
  %terminated = getelementptr inbounds %struct.anon, ptr %synced_data, i32 0, i32 0
  %2 = load i8, ptr %terminated, align 8, !tbaa !190, !range !34, !noundef !35
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %args, align 8, !tbaa !4
  %completion_error_code = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %3, i32 0, i32 3
  store i32 5153, ptr %completion_error_code, align 8, !tbaa !272
  br label %if.end3

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %websocket_handshake_transformer = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %4, i32 0, i32 25
  %5 = load ptr, ptr %websocket_handshake_transformer, align 8, !tbaa !262
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  %6 = load ptr, ptr %args, align 8, !tbaa !4
  %input_request = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %input_request, align 8, !tbaa !266
  %8 = load ptr, ptr %args, align 8, !tbaa !4
  %output_request = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %8, i32 0, i32 2
  store ptr %7, ptr %output_request, align 8, !tbaa !271
  br label %if.end

if.else2:                                         ; preds = %if.else
  %9 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %9, i32 0, i32 8
  %call = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %10 = load ptr, ptr %args, align 8, !tbaa !4
  %chain_callback = getelementptr inbounds %struct.aws_mqtt5_adapter_websocket_handshake_args, ptr %10, i32 0, i32 0
  store i8 1, ptr %chain_callback, align 8, !tbaa !268
  br label %if.end

if.end:                                           ; preds = %if.else2, %if.then1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_adapter_websocket_handshake_completion_fn(ptr noundef %request, i32 noundef %error_code, ptr noundef %complete_ctx) #0 {
entry:
  %request.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %complete_ctx.addr = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %request, ptr %request.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !75
  store ptr %complete_ctx, ptr %complete_ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %0 = load ptr, ptr %complete_ctx.addr, align 8, !tbaa !4
  store ptr %0, ptr %adapter, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter, align 8, !tbaa !4
  %mqtt5_websocket_handshake_completion_function = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 27
  %2 = load ptr, ptr %mqtt5_websocket_handshake_completion_function, align 8, !tbaa !269
  %3 = load ptr, ptr %request.addr, align 8, !tbaa !4
  %4 = load i32, ptr %error_code.addr, align 4, !tbaa !75
  %call = call i32 @s_translate_mqtt5_error_code_to_mqtt311(i32 noundef %4)
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %mqtt5_websocket_handshake_completion_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %5, i32 0, i32 28
  %6 = load ptr, ptr %mqtt5_websocket_handshake_completion_user_data, align 8, !tbaa !270
  call void %2(ptr noundef %3, i32 noundef %call, ptr noundef %6)
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 8
  %call1 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  ret void
}

declare zeroext i1 @aws_event_loop_thread_is_callers_thread(ptr noundef) #2

declare i32 @aws_rw_lock_wlock(ptr noundef) #2

declare i32 @aws_rw_lock_rlock(ptr noundef) #2

declare i32 @aws_rw_lock_wunlock(ptr noundef) #2

declare i32 @aws_rw_lock_runlock(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_translate_mqtt5_error_code_to_mqtt311(i32 noundef %error_code) #0 {
entry:
  %retval = alloca i32, align 4
  %error_code.addr = alloca i32, align 4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !75
  %0 = load i32, ptr %error_code.addr, align 4, !tbaa !75
  switch i32 %0, label %sw.default [
    i32 5148, label %sw.bb
    i32 5149, label %sw.bb
    i32 5150, label %sw.bb1
    i32 5151, label %sw.bb2
    i32 5152, label %sw.bb2
    i32 5153, label %sw.bb3
    i32 5155, label %sw.bb3
    i32 5154, label %sw.bb4
    i32 5156, label %sw.bb5
    i32 5157, label %sw.bb6
    i32 5158, label %sw.bb7
    i32 5161, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 5130, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 5130, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry, %entry
  store i32 5129, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry, %entry
  store i32 1051, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 5134, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 5138, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 5127, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 5130, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  store i32 5128, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %error_code.addr, align 4, !tbaa !75
  store i32 %1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_http_proxy_options_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %proxy_options) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %proxy_options.addr = alloca ptr, align 8
  %proxy_config = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %proxy_options, ptr %proxy_options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %proxy_config) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %proxy_options.addr, align 8, !tbaa !4
  %call = call ptr @aws_http_proxy_config_new_tunneling_from_proxy_options(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %proxy_config, align 8, !tbaa !4
  %2 = load ptr, ptr %proxy_config, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %3 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mem_calloc(ptr noundef %3, i64 noundef 1, i64 noundef 88)
  store ptr %call2, ptr %set_task, align 8, !tbaa !4
  %4 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_http_proxy_options_task_fn, ptr noundef %5, ptr noundef @.str.25)
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator3 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %allocator3, align 8, !tbaa !184
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator4 = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %8, i32 0, i32 1
  store ptr %7, ptr %allocator4, align 8, !tbaa !274
  %9 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %9, i32 0, i32 8
  %call5 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %10 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter6 = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %10, i32 0, i32 2
  store ptr %call5, ptr %adapter6, align 8, !tbaa !276
  %11 = load ptr, ptr %proxy_config, align 8, !tbaa !4
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  %proxy_config7 = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %12, i32 0, i32 3
  store ptr %11, ptr %proxy_config7, align 8, !tbaa !277
  %13 = load ptr, ptr %set_task, align 8, !tbaa !4
  store ptr %13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %proxy_config) #9
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

declare ptr @aws_http_proxy_config_new_tunneling_from_proxy_options(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_set_http_proxy_options_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !276
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %client, align 8, !tbaa !50
  %config = getelementptr inbounds %struct.aws_mqtt5_client, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %config, align 8, !tbaa !236
  %http_proxy_config = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %http_proxy_config, align 8, !tbaa !278
  call void @aws_http_proxy_config_destroy(ptr noundef %8)
  %9 = load ptr, ptr %set_task, align 8, !tbaa !4
  %proxy_config = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %proxy_config, align 8, !tbaa !277
  %11 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %client2, align 8, !tbaa !50
  %config3 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %config3, align 8, !tbaa !236
  %http_proxy_config4 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %13, i32 0, i32 8
  store ptr %10, ptr %http_proxy_config4, align 8, !tbaa !278
  %14 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client5 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %client5, align 8, !tbaa !50
  %config6 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %config6, align 8, !tbaa !236
  %http_proxy_config7 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %http_proxy_config7, align 8, !tbaa !278
  %cmp8 = icmp ne ptr %17, null
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end
  %18 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client10 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %client10, align 8, !tbaa !50
  %config11 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %config11, align 8, !tbaa !236
  %http_proxy_options = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client12 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %client12, align 8, !tbaa !50
  %config13 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %config13, align 8, !tbaa !236
  %http_proxy_config14 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %23, i32 0, i32 8
  %24 = load ptr, ptr %http_proxy_config14, align 8, !tbaa !278
  call void @aws_http_proxy_options_init_from_config(ptr noundef %http_proxy_options, ptr noundef %24)
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end
  %25 = load ptr, ptr %set_task, align 8, !tbaa !4
  %proxy_config16 = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %25, i32 0, i32 3
  store ptr null, ptr %proxy_config16, align 8, !tbaa !277
  br label %done

done:                                             ; preds = %if.end15, %if.then
  %26 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %26, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %27 = load ptr, ptr %set_task, align 8, !tbaa !4
  %proxy_config17 = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %proxy_config17, align 8, !tbaa !277
  call void @aws_http_proxy_config_destroy(ptr noundef %28)
  %29 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_http_proxy_options_task, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %allocator, align 8, !tbaa !274
  %31 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %30, ptr noundef %31)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

declare void @aws_http_proxy_config_destroy(ptr noundef) #2

declare void @aws_http_proxy_options_init_from_config(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_host_resolution_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %host_resolution_config) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %host_resolution_config.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %host_resolution_config, ptr %host_resolution_config.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 112)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_host_resolution_task_fn, ptr noundef %2, ptr noundef @.str.27)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !279
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !281
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %host_resolution_config5 = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %host_resolution_config.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %host_resolution_config5, ptr align 8 %9, i64 32, i1 false), !tbaa.struct !282
  %10 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @s_set_host_resolution_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !281
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %client, align 8, !tbaa !50
  %config = getelementptr inbounds %struct.aws_mqtt5_client, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %config, align 8, !tbaa !236
  %host_resolution_override = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %7, i32 0, i32 29
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %host_resolution_config = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %8, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %host_resolution_override, ptr align 8 %host_resolution_config, i64 32, i1 false), !tbaa.struct !282
  br label %done

done:                                             ; preds = %if.end, %if.then
  %9 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %9, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %10 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_host_resolution_task, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %allocator, align 8, !tbaa !279
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %11, ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_reconnect_timeout_task_new(ptr noundef %allocator, ptr noundef %adapter, i64 noundef %min_timeout, i64 noundef %max_timeout) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %min_timeout.addr = alloca i64, align 8
  %max_timeout.addr = alloca i64, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store i64 %min_timeout, ptr %min_timeout.addr, align 8, !tbaa !27
  store i64 %max_timeout, ptr %max_timeout.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 96)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_reconnect_timeout_task_fn, ptr noundef %2, ptr noundef @.str.28)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !283
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !285
  %8 = load i64, ptr %min_timeout.addr, align 8, !tbaa !27
  %9 = load i64, ptr %max_timeout.addr, align 8, !tbaa !27
  %call5 = call i64 @aws_min_u64(i64 noundef %8, i64 noundef %9)
  %10 = load ptr, ptr %set_task, align 8, !tbaa !4
  %min_timeout6 = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %10, i32 0, i32 3
  store i64 %call5, ptr %min_timeout6, align 8, !tbaa !286
  %11 = load i64, ptr %min_timeout.addr, align 8, !tbaa !27
  %12 = load i64, ptr %max_timeout.addr, align 8, !tbaa !27
  %call7 = call i64 @aws_max_u64(i64 noundef %11, i64 noundef %12)
  %13 = load ptr, ptr %set_task, align 8, !tbaa !4
  %max_timeout8 = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %13, i32 0, i32 4
  store i64 %call7, ptr %max_timeout8, align 8, !tbaa !287
  %14 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @s_set_reconnect_timeout_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !285
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %min_timeout = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %min_timeout, align 8, !tbaa !286
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %client, align 8, !tbaa !50
  %config = getelementptr inbounds %struct.aws_mqtt5_client, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %config, align 8, !tbaa !236
  %min_reconnect_delay_ms = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %9, i32 0, i32 17
  store i64 %6, ptr %min_reconnect_delay_ms, align 8, !tbaa !288
  %10 = load ptr, ptr %set_task, align 8, !tbaa !4
  %max_timeout = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %max_timeout, align 8, !tbaa !287
  %12 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %client2, align 8, !tbaa !50
  %config3 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %config3, align 8, !tbaa !236
  %max_reconnect_delay_ms = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %14, i32 0, i32 18
  store i64 %11, ptr %max_reconnect_delay_ms, align 8, !tbaa !289
  %15 = load ptr, ptr %set_task, align 8, !tbaa !4
  %min_timeout4 = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %min_timeout4, align 8, !tbaa !286
  %17 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client5 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %client5, align 8, !tbaa !50
  %current_reconnect_delay_ms = getelementptr inbounds %struct.aws_mqtt5_client, ptr %18, i32 0, i32 28
  store i64 %16, ptr %current_reconnect_delay_ms, align 8, !tbaa !290
  br label %done

done:                                             ; preds = %if.end, %if.then
  %19 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %20 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_reconnect_timeout_task, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %allocator, align 8, !tbaa !283
  %22 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %21, ptr noundef %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_min_u64(i64 noundef %a, i64 noundef %b) #5 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_max_u64(i64 noundef %a, i64 noundef %b) #5 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_interruption_handlers_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %on_interrupted, ptr noundef %on_interrupted_user_data, ptr noundef %on_resumed, ptr noundef %on_resumed_user_data) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %on_interrupted.addr = alloca ptr, align 8
  %on_interrupted_user_data.addr = alloca ptr, align 8
  %on_resumed.addr = alloca ptr, align 8
  %on_resumed_user_data.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %on_interrupted, ptr %on_interrupted.addr, align 8, !tbaa !4
  store ptr %on_interrupted_user_data, ptr %on_interrupted_user_data.addr, align 8, !tbaa !4
  store ptr %on_resumed, ptr %on_resumed.addr, align 8, !tbaa !4
  store ptr %on_resumed_user_data, ptr %on_resumed_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 112)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_interruption_handlers_task_fn, ptr noundef %2, ptr noundef @.str.30)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !291
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !293
  %8 = load ptr, ptr %on_interrupted.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_interrupted5 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %9, i32 0, i32 3
  store ptr %8, ptr %on_interrupted5, align 8, !tbaa !294
  %10 = load ptr, ptr %on_interrupted_user_data.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_interrupted_user_data6 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %11, i32 0, i32 4
  store ptr %10, ptr %on_interrupted_user_data6, align 8, !tbaa !295
  %12 = load ptr, ptr %on_resumed.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_resumed7 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %13, i32 0, i32 5
  store ptr %12, ptr %on_resumed7, align 8, !tbaa !296
  %14 = load ptr, ptr %on_resumed_user_data.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_resumed_user_data8 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %15, i32 0, i32 6
  store ptr %14, ptr %on_resumed_user_data8, align 8, !tbaa !297
  %16 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal void @s_set_interruption_handlers_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !293
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_interrupted = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %on_interrupted, align 8, !tbaa !294
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_interrupted2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 13
  store ptr %6, ptr %on_interrupted2, align 8, !tbaa !298
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_interrupted_user_data = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %on_interrupted_user_data, align 8, !tbaa !295
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_interrupted_user_data3 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %10, i32 0, i32 14
  store ptr %9, ptr %on_interrupted_user_data3, align 8, !tbaa !299
  %11 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_resumed = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %on_resumed, align 8, !tbaa !296
  %13 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_resumed4 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %13, i32 0, i32 15
  store ptr %12, ptr %on_resumed4, align 8, !tbaa !300
  %14 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_resumed_user_data = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %on_resumed_user_data, align 8, !tbaa !297
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_resumed_user_data5 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %16, i32 0, i32 16
  store ptr %15, ptr %on_resumed_user_data5, align 8, !tbaa !301
  br label %done

done:                                             ; preds = %if.end, %if.then
  %17 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %17, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %18 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_interruption_handlers_task, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %allocator, align 8, !tbaa !291
  %20 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %19, ptr noundef %20)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_connection_result_handlers_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %on_connection_success, ptr noundef %on_connection_success_user_data, ptr noundef %on_connection_failure, ptr noundef %on_connection_failure_user_data) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %on_connection_success.addr = alloca ptr, align 8
  %on_connection_success_user_data.addr = alloca ptr, align 8
  %on_connection_failure.addr = alloca ptr, align 8
  %on_connection_failure_user_data.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %on_connection_success, ptr %on_connection_success.addr, align 8, !tbaa !4
  store ptr %on_connection_success_user_data, ptr %on_connection_success_user_data.addr, align 8, !tbaa !4
  store ptr %on_connection_failure, ptr %on_connection_failure.addr, align 8, !tbaa !4
  store ptr %on_connection_failure_user_data, ptr %on_connection_failure_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 112)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_connection_result_handlers_task_fn, ptr noundef %2, ptr noundef @.str.32)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !302
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !304
  %8 = load ptr, ptr %on_connection_success.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_success5 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %9, i32 0, i32 3
  store ptr %8, ptr %on_connection_success5, align 8, !tbaa !305
  %10 = load ptr, ptr %on_connection_success_user_data.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_success_user_data6 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %11, i32 0, i32 4
  store ptr %10, ptr %on_connection_success_user_data6, align 8, !tbaa !306
  %12 = load ptr, ptr %on_connection_failure.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_failure7 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %13, i32 0, i32 5
  store ptr %12, ptr %on_connection_failure7, align 8, !tbaa !307
  %14 = load ptr, ptr %on_connection_failure_user_data.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_failure_user_data8 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %15, i32 0, i32 6
  store ptr %14, ptr %on_connection_failure_user_data8, align 8, !tbaa !308
  %16 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal void @s_set_connection_result_handlers_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !304
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_success = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %on_connection_success, align 8, !tbaa !305
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_connection_success2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 19
  store ptr %6, ptr %on_connection_success2, align 8, !tbaa !309
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_success_user_data = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %on_connection_success_user_data, align 8, !tbaa !306
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_connection_success_user_data3 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %10, i32 0, i32 20
  store ptr %9, ptr %on_connection_success_user_data3, align 8, !tbaa !310
  %11 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_failure = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %on_connection_failure, align 8, !tbaa !307
  %13 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_connection_failure4 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %13, i32 0, i32 21
  store ptr %12, ptr %on_connection_failure4, align 8, !tbaa !311
  %14 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_connection_failure_user_data = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %on_connection_failure_user_data, align 8, !tbaa !308
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_connection_failure_user_data5 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %16, i32 0, i32 22
  store ptr %15, ptr %on_connection_failure_user_data5, align 8, !tbaa !312
  br label %done

done:                                             ; preds = %if.end, %if.then
  %17 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %17, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %18 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_connection_result_handlers_task, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %allocator, align 8, !tbaa !302
  %20 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %19, ptr noundef %20)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_on_closed_handler_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %on_closed, ptr noundef %on_closed_user_data) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %on_closed.addr = alloca ptr, align 8
  %on_closed_user_data.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %on_closed, ptr %on_closed.addr, align 8, !tbaa !4
  store ptr %on_closed_user_data, ptr %on_closed_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 96)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_on_closed_handler_task_fn, ptr noundef %2, ptr noundef @.str.34)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !313
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !315
  %8 = load ptr, ptr %on_closed.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_closed5 = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %9, i32 0, i32 3
  store ptr %8, ptr %on_closed5, align 8, !tbaa !316
  %10 = load ptr, ptr %on_closed_user_data.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_closed_user_data6 = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %11, i32 0, i32 4
  store ptr %10, ptr %on_closed_user_data6, align 8, !tbaa !317
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @s_set_on_closed_handler_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !315
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_closed = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %on_closed, align 8, !tbaa !316
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_closed2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 17
  store ptr %6, ptr %on_closed2, align 8, !tbaa !318
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_closed_user_data = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %on_closed_user_data, align 8, !tbaa !317
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_closed_user_data3 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %10, i32 0, i32 18
  store ptr %9, ptr %on_closed_user_data3, align 8, !tbaa !319
  br label %done

done:                                             ; preds = %if.end, %if.then
  %11 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %11, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_on_closed_handler_task, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %allocator, align 8, !tbaa !313
  %14 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %13, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_set_on_any_publish_handler_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %on_any_publish, ptr noundef %on_any_publish_user_data) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %on_any_publish.addr = alloca ptr, align 8
  %on_any_publish_user_data.addr = alloca ptr, align 8
  %set_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %on_any_publish, ptr %on_any_publish.addr, align 8, !tbaa !4
  store ptr %on_any_publish_user_data, ptr %on_any_publish_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 96)
  store ptr %call, ptr %set_task, align 8, !tbaa !4
  %1 = load ptr, ptr %set_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_set_on_any_publish_handler_task_fn, ptr noundef %2, ptr noundef @.str.36)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !320
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !322
  %8 = load ptr, ptr %on_any_publish.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_any_publish5 = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %9, i32 0, i32 3
  store ptr %8, ptr %on_any_publish5, align 8, !tbaa !323
  %10 = load ptr, ptr %on_any_publish_user_data.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_any_publish_user_data6 = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %11, i32 0, i32 4
  store ptr %10, ptr %on_any_publish_user_data6, align 8, !tbaa !324
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @s_set_on_any_publish_handler_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %set_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %set_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %set_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !322
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_any_publish = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %on_any_publish, align 8, !tbaa !323
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_any_publish2 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 23
  store ptr %6, ptr %on_any_publish2, align 8, !tbaa !207
  %8 = load ptr, ptr %set_task, align 8, !tbaa !4
  %on_any_publish_user_data = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %on_any_publish_user_data, align 8, !tbaa !324
  %10 = load ptr, ptr %adapter, align 8, !tbaa !4
  %on_any_publish_user_data3 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %10, i32 0, i32 24
  store ptr %9, ptr %on_any_publish_user_data3, align 8, !tbaa !208
  br label %done

done:                                             ; preds = %if.end, %if.then
  %11 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %11, i32 0, i32 8
  %call = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %12 = load ptr, ptr %set_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_set_on_any_publish_handler_task, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %allocator, align 8, !tbaa !320
  %14 = load ptr, ptr %set_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %13, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set_task) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_validate_adapter_connection_options(ptr noundef %connection_options, ptr noundef %adapter) #0 {
entry:
  %retval = alloca i32, align 4
  %connection_options.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger21 = alloca ptr, align 8
  %logger41 = alloca ptr, align 8
  store ptr %connection_options, ptr %connection_options.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 5140)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %host_name = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %1, i32 0, i32 0
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %host_name, i32 0, i32 0
  %2 = load i64, ptr %len, align 8, !tbaa !325
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %3, null
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %6(ptr noundef %7, i32 noundef 5126)
  %cmp6 = icmp uge i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable8, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !103
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.38, ptr noundef %12)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.end

do.end:                                           ; preds = %if.end10
  %call11 = call i32 @aws_raise_error(i32 noundef 5140)
  store i32 %call11, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %13 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %socket_options = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %socket_options, align 8, !tbaa !327
  %cmp13 = icmp ne ptr %14, null
  br i1 %cmp13, label %if.then14, label %if.end37

if.then14:                                        ; preds = %if.end12
  %15 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %socket_options15 = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %socket_options15, align 8, !tbaa !327
  %type = getelementptr inbounds %struct.aws_socket_options, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %type, align 4, !tbaa !328
  %cmp16 = icmp eq i32 %17, 1
  br i1 %cmp16, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then14
  %18 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %socket_options17 = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %socket_options17, align 8, !tbaa !327
  %connect_timeout_ms = getelementptr inbounds %struct.aws_socket_options, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %connect_timeout_ms, align 4, !tbaa !329
  %cmp18 = icmp eq i32 %20, 0
  br i1 %cmp18, label %if.then19, label %if.end36

if.then19:                                        ; preds = %lor.lhs.false, %if.then14
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger21) #9
  %call22 = call ptr @aws_logger_get()
  store ptr %call22, ptr %logger21, align 8, !tbaa !4
  %21 = load ptr, ptr %logger21, align 8, !tbaa !4
  %cmp23 = icmp ne ptr %21, null
  br i1 %cmp23, label %land.lhs.true24, label %if.end33

land.lhs.true24:                                  ; preds = %do.body20
  %22 = load ptr, ptr %logger21, align 8, !tbaa !4
  %vtable25 = getelementptr inbounds %struct.aws_logger, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %vtable25, align 8, !tbaa !99
  %get_log_level26 = getelementptr inbounds %struct.aws_logger_vtable, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %get_log_level26, align 8, !tbaa !101
  %25 = load ptr, ptr %logger21, align 8, !tbaa !4
  %call27 = call i32 %24(ptr noundef %25, i32 noundef 5126)
  %cmp28 = icmp uge i32 %call27, 2
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %land.lhs.true24
  %26 = load ptr, ptr %logger21, align 8, !tbaa !4
  %vtable30 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable30, align 8, !tbaa !99
  %log31 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %log31, align 8, !tbaa !103
  %29 = load ptr, ptr %logger21, align 8, !tbaa !4
  %30 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call32 = call i32 (ptr, i32, i32, ptr, ...) %28(ptr noundef %29, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.39, ptr noundef %30)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %land.lhs.true24, %do.body20
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger21) #9
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  %call35 = call i32 @aws_raise_error(i32 noundef 5140)
  store i32 %call35, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end12
  %31 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %keep_alive_time_secs = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %31, i32 0, i32 5
  %32 = load i16, ptr %keep_alive_time_secs, align 8, !tbaa !330
  %33 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %ping_timeout_ms = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %33, i32 0, i32 6
  %34 = load i32, ptr %ping_timeout_ms, align 4, !tbaa !331
  %call38 = call zeroext i1 @aws_mqtt5_client_keep_alive_options_are_valid(i16 noundef zeroext %32, i32 noundef %34)
  br i1 %call38, label %if.end56, label %if.then39

if.then39:                                        ; preds = %if.end37
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger41) #9
  %call42 = call ptr @aws_logger_get()
  store ptr %call42, ptr %logger41, align 8, !tbaa !4
  %35 = load ptr, ptr %logger41, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %35, null
  br i1 %cmp43, label %land.lhs.true44, label %if.end53

land.lhs.true44:                                  ; preds = %do.body40
  %36 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable45 = getelementptr inbounds %struct.aws_logger, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %vtable45, align 8, !tbaa !99
  %get_log_level46 = getelementptr inbounds %struct.aws_logger_vtable, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %get_log_level46, align 8, !tbaa !101
  %39 = load ptr, ptr %logger41, align 8, !tbaa !4
  %call47 = call i32 %38(ptr noundef %39, i32 noundef 5126)
  %cmp48 = icmp uge i32 %call47, 2
  br i1 %cmp48, label %if.then49, label %if.end53

if.then49:                                        ; preds = %land.lhs.true44
  %40 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %vtable50, align 8, !tbaa !99
  %log51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %log51, align 8, !tbaa !103
  %43 = load ptr, ptr %logger41, align 8, !tbaa !4
  %44 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call52 = call i32 (ptr, i32, i32, ptr, ...) %42(ptr noundef %43, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.40, ptr noundef %44)
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %land.lhs.true44, %do.body40
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger41) #9
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  %call55 = call i32 @aws_raise_error(i32 noundef 5140)
  store i32 %call55, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %do.end54, %do.end34, %do.end, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_adapter_connect_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %connection_options) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %connection_options.addr = alloca ptr, align 8
  %connect_task = alloca ptr, align 8
  %host_name_cur = alloca %struct.aws_byte_cursor, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %connection_options, ptr %connection_options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connect_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 280)
  store ptr %call, ptr %connect_task, align 8, !tbaa !4
  %1 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %connect_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_adapter_connect_task_fn, ptr noundef %2, ptr noundef @.str.41)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !332
  %6 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %host_name = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %host_name3 = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %8, i32 0, i32 0
  %9 = getelementptr inbounds { i64, ptr }, ptr %host_name3, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds { i64, ptr }, ptr %host_name3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %call4 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %host_name, ptr noundef %7, i64 %10, ptr %12)
  %13 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %port = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %13, i32 0, i32 1
  %14 = load i16, ptr %port, align 8, !tbaa !334
  %15 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %port5 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %15, i32 0, i32 4
  store i16 %14, ptr %port5, align 8, !tbaa !335
  %16 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %socket_options = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %socket_options6 = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %socket_options6, align 8, !tbaa !327
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %socket_options, ptr align 4 %18, i64 20, i1 false), !tbaa.struct !336
  %19 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %tls_options = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %tls_options, align 8, !tbaa !337
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %tls_options7 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %tls_options8 = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %tls_options8, align 8, !tbaa !337
  %call9 = call i32 @aws_tls_connection_options_copy(ptr noundef %tls_options7, ptr noundef %23)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  br label %error

if.end:                                           ; preds = %if.then
  %24 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %tls_options12 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %tls_options_ptr = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %25, i32 0, i32 6
  store ptr %tls_options12, ptr %tls_options_ptr, align 8, !tbaa !338
  %26 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %tls_options13 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %26, i32 0, i32 7
  %server_name = getelementptr inbounds %struct.aws_tls_connection_options, ptr %tls_options13, i32 0, i32 1
  %27 = load ptr, ptr %server_name, align 8, !tbaa !339
  %tobool14 = icmp ne ptr %27, null
  br i1 %tobool14, label %if.end31, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %host_name_cur) #9
  %28 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %host_name16 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %28, i32 0, i32 3
  %call17 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %host_name16)
  %29 = getelementptr inbounds { i64, ptr }, ptr %host_name_cur, i32 0, i32 0
  %30 = extractvalue { i64, ptr } %call17, 0
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds { i64, ptr }, ptr %host_name_cur, i32 0, i32 1
  %32 = extractvalue { i64, ptr } %call17, 1
  store ptr %32, ptr %31, align 8
  %33 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %tls_options18 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %allocator19 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %allocator19, align 8, !tbaa !332
  %call20 = call i32 @aws_tls_connection_options_set_server_name(ptr noundef %tls_options18, ptr noundef %35, ptr noundef %host_name_cur)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.then15
  br label %do.body

do.body:                                          ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call23 = call ptr @aws_logger_get()
  store ptr %call23, ptr %logger, align 8, !tbaa !4
  %36 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %36, null
  br i1 %cmp, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %do.body
  %37 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %40 = load ptr, ptr %logger, align 8, !tbaa !4
  %call24 = call i32 %39(ptr noundef %40, i32 noundef 5126)
  %cmp25 = icmp uge i32 %call24, 2
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable27 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable27, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %log, align 8, !tbaa !103
  %44 = load ptr, ptr %logger, align 8, !tbaa !4
  %45 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call28 = call i32 (ptr, i32, i32, ptr, ...) %43(ptr noundef %44, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.42, ptr noundef %45)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end29
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.then15
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end30
  call void @llvm.lifetime.end.p0(i64 16, ptr %host_name_cur) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31

if.end31:                                         ; preds = %cleanup.cont, %if.end
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %entry
  %46 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %46, i32 0, i32 8
  %call33 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %47 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %adapter34 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %47, i32 0, i32 2
  store ptr %call33, ptr %adapter34, align 8, !tbaa !340
  %48 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %client_id = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %48, i32 0, i32 8
  %49 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %client_id35 = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %50, i32 0, i32 4
  %51 = getelementptr inbounds { i64, ptr }, ptr %client_id35, i32 0, i32 0
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds { i64, ptr }, ptr %client_id35, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %call36 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %client_id, ptr noundef %49, i64 %52, ptr %54)
  %55 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %keep_alive_time_secs = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %55, i32 0, i32 5
  %56 = load i16, ptr %keep_alive_time_secs, align 8, !tbaa !330
  %57 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %keep_alive_time_secs37 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %57, i32 0, i32 9
  store i16 %56, ptr %keep_alive_time_secs37, align 8, !tbaa !341
  %58 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %ping_timeout_ms = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %58, i32 0, i32 6
  %59 = load i32, ptr %ping_timeout_ms, align 4, !tbaa !331
  %60 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %ping_timeout_ms38 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %60, i32 0, i32 10
  store i32 %59, ptr %ping_timeout_ms38, align 4, !tbaa !342
  %61 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %protocol_operation_timeout_ms = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %61, i32 0, i32 7
  %62 = load i32, ptr %protocol_operation_timeout_ms, align 8, !tbaa !343
  %63 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %protocol_operation_timeout_ms39 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %63, i32 0, i32 11
  store i32 %62, ptr %protocol_operation_timeout_ms39, align 8, !tbaa !344
  %64 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %on_connection_complete = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %on_connection_complete, align 8, !tbaa !345
  %66 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %on_connection_complete40 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %66, i32 0, i32 12
  store ptr %65, ptr %on_connection_complete40, align 8, !tbaa !346
  %67 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %67, i32 0, i32 9
  %68 = load ptr, ptr %user_data, align 8, !tbaa !347
  %69 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %on_connection_complete_user_data = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %69, i32 0, i32 13
  store ptr %68, ptr %on_connection_complete_user_data, align 8, !tbaa !348
  %70 = load ptr, ptr %connection_options.addr, align 8, !tbaa !4
  %clean_session = getelementptr inbounds %struct.aws_mqtt_connection_options, ptr %70, i32 0, i32 10
  %71 = load i8, ptr %clean_session, align 8, !tbaa !349, !range !34, !noundef !35
  %tobool41 = trunc i8 %71 to i1
  %72 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %clean_session42 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %72, i32 0, i32 14
  %frombool = zext i1 %tobool41 to i8
  store i8 %frombool, ptr %clean_session42, align 8, !tbaa !350
  %73 = load ptr, ptr %connect_task, align 8, !tbaa !4
  store ptr %73, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

error:                                            ; preds = %cleanup, %if.then11
  %74 = load ptr, ptr %connect_task, align 8, !tbaa !4
  call void @s_aws_mqtt_adapter_connect_task_destroy(ptr noundef %74)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %error, %if.end32, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %connect_task) #9
  %75 = load ptr, ptr %retval, align 8
  ret ptr %75
}

declare zeroext i1 @aws_mqtt5_client_keep_alive_options_are_valid(i16 noundef zeroext, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_adapter_connect_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %connect_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connect_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %connect_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !340
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %6 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %call = call i32 @s_aws_mqtt5_adapter_perform_safe_callback(ptr noundef %5, i1 noundef zeroext false, ptr noundef @s_aws_mqtt5_to_mqtt3_adapter_safe_connect_handler, ptr noundef %6)
  br label %done

done:                                             ; preds = %if.end, %if.then
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 8
  %call2 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %8 = load ptr, ptr %connect_task, align 8, !tbaa !4
  call void @s_aws_mqtt_adapter_connect_task_destroy(ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %connect_task) #9
  ret void
}

declare i32 @aws_tls_connection_options_copy(ptr noundef, ptr noundef) #2

declare i32 @aws_tls_connection_options_set_server_name(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt_adapter_connect_task_destroy(ptr noundef %task) #0 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %host_name = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %1, i32 0, i32 3
  call void @aws_byte_buf_clean_up(ptr noundef %host_name)
  %2 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %client_id = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %2, i32 0, i32 8
  call void @aws_byte_buf_clean_up(ptr noundef %client_id)
  %3 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %tls_options_ptr = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %tls_options_ptr, align 8, !tbaa !338
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %tls_options_ptr2 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %tls_options_ptr2, align 8, !tbaa !338
  call void @aws_tls_connection_options_clean_up(ptr noundef %6)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %allocator, align 8, !tbaa !332
  %9 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %8, ptr noundef %9)
  br label %return

return:                                           ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt5_to_mqtt3_adapter_safe_connect_handler(ptr noundef %adapter, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %connect_task = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  %logger24 = alloca ptr, align 8
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connect_task) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %connect_task, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %synced_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 10
  %terminated = getelementptr inbounds %struct.anon, ptr %synced_data, i32 0, i32 0
  %2 = load i8, ptr %terminated, align 8, !tbaa !190, !range !34, !noundef !35
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %6(ptr noundef %7, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable4, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !103
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %adapter_state, align 4, !tbaa !189
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.43, ptr noundef %12, i32 noundef %14)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state7 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %adapter_state7, align 4, !tbaa !189
  %cmp8 = icmp ne i32 %16, 2
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %do.end
  %17 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %on_connection_complete = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %on_connection_complete, align 8, !tbaa !346
  %tobool10 = icmp ne ptr %18, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %19 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %on_connection_complete12 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %on_connection_complete12, align 8, !tbaa !346
  %21 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %on_connection_complete_user_data = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %on_connection_complete_user_data, align 8, !tbaa !348
  call void %20(ptr noundef %base, i32 noundef 5132, i32 noundef 0, i1 noundef zeroext false, ptr noundef %23)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %24 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %24, i32 0, i32 29
  %25 = load ptr, ptr %on_disconnect, align 8, !tbaa !351
  %tobool15 = icmp ne ptr %25, null
  br i1 %tobool15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %26 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect17 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %26, i32 0, i32 29
  %27 = load ptr, ptr %on_disconnect17, align 8, !tbaa !351
  %28 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base18 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %29, i32 0, i32 30
  %30 = load ptr, ptr %on_disconnect_user_data, align 8, !tbaa !352
  call void %27(ptr noundef %base18, ptr noundef %30)
  %31 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect19 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %31, i32 0, i32 29
  store ptr null, ptr %on_disconnect19, align 8, !tbaa !351
  %32 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect_user_data20 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %32, i32 0, i32 30
  store ptr null, ptr %on_disconnect_user_data20, align 8, !tbaa !352
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  %33 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state22 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %33, i32 0, i32 6
  store i32 0, ptr %adapter_state22, align 4, !tbaa !189
  br label %do.body23

do.body23:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger24) #9
  %call25 = call ptr @aws_logger_get()
  store ptr %call25, ptr %logger24, align 8, !tbaa !4
  %34 = load ptr, ptr %logger24, align 8, !tbaa !4
  %cmp26 = icmp ne ptr %34, null
  br i1 %cmp26, label %land.lhs.true27, label %if.end36

land.lhs.true27:                                  ; preds = %do.body23
  %35 = load ptr, ptr %logger24, align 8, !tbaa !4
  %vtable28 = getelementptr inbounds %struct.aws_logger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vtable28, align 8, !tbaa !99
  %get_log_level29 = getelementptr inbounds %struct.aws_logger_vtable, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %get_log_level29, align 8, !tbaa !101
  %38 = load ptr, ptr %logger24, align 8, !tbaa !4
  %call30 = call i32 %37(ptr noundef %38, i32 noundef 5126)
  %cmp31 = icmp uge i32 %call30, 5
  br i1 %cmp31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %land.lhs.true27
  %39 = load ptr, ptr %logger24, align 8, !tbaa !4
  %vtable33 = getelementptr inbounds %struct.aws_logger, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %vtable33, align 8, !tbaa !99
  %log34 = getelementptr inbounds %struct.aws_logger_vtable, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %log34, align 8, !tbaa !103
  %42 = load ptr, ptr %logger24, align 8, !tbaa !4
  %43 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call35 = call i32 (ptr, i32, i32, ptr, ...) %41(ptr noundef %42, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.44, ptr noundef %43)
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %land.lhs.true27, %do.body23
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger24) #9
  br label %do.cond37

do.cond37:                                        ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  %44 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %connect_task, align 8, !tbaa !4
  call void @s_aws_mqtt5_to_mqtt3_adapter_update_config_on_connect(ptr noundef %44, ptr noundef %45)
  %46 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %client, align 8, !tbaa !50
  %call39 = call zeroext i1 @aws_mqtt5_client_reset_connection(ptr noundef %47)
  %48 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %client40 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %client40, align 8, !tbaa !50
  call void @aws_mqtt5_client_change_desired_state(ptr noundef %49, i32 noundef 3, ptr noundef null)
  %50 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %on_connection_complete41 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %on_connection_complete41, align 8, !tbaa !346
  %52 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete42 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %52, i32 0, i32 31
  store ptr %51, ptr %on_connection_complete42, align 8, !tbaa !353
  %53 = load ptr, ptr %connect_task, align 8, !tbaa !4
  %on_connection_complete_user_data43 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %53, i32 0, i32 13
  %54 = load ptr, ptr %on_connection_complete_user_data43, align 8, !tbaa !348
  %55 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete_user_data44 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %55, i32 0, i32 32
  store ptr %54, ptr %on_connection_complete_user_data44, align 8, !tbaa !354
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %connect_task) #9
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_update_config_on_connect(ptr noundef %adapter, ptr noundef %connect_task) #0 {
entry:
  %adapter.addr = alloca ptr, align 8
  %connect_task.addr = alloca ptr, align 8
  %config = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %connect_task, ptr %connect_task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #9
  %0 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %client, align 8, !tbaa !50
  %config1 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %config1, align 8, !tbaa !236
  store ptr %2, ptr %config, align 8, !tbaa !4
  %3 = load ptr, ptr %config, align 8, !tbaa !4
  %host_name = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %host_name, align 8, !tbaa !355
  call void @aws_string_destroy(ptr noundef %4)
  %5 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %allocator, align 8, !tbaa !184
  %7 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %host_name2 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %7, i32 0, i32 3
  %call = call ptr @aws_string_new_from_buf(ptr noundef %6, ptr noundef %host_name2)
  %8 = load ptr, ptr %config, align 8, !tbaa !4
  %host_name3 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %8, i32 0, i32 1
  store ptr %call, ptr %host_name3, align 8, !tbaa !355
  %9 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %port = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %9, i32 0, i32 4
  %10 = load i16, ptr %port, align 8, !tbaa !335
  %11 = load ptr, ptr %config, align 8, !tbaa !4
  %port4 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %11, i32 0, i32 2
  store i16 %10, ptr %port4, align 8, !tbaa !356
  %12 = load ptr, ptr %config, align 8, !tbaa !4
  %socket_options = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %socket_options5 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %13, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %socket_options, ptr align 4 %socket_options5, i64 20, i1 false), !tbaa.struct !336
  %14 = load ptr, ptr %config, align 8, !tbaa !4
  %tls_options_ptr = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %tls_options_ptr, align 8, !tbaa !357
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %config, align 8, !tbaa !4
  %tls_options = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %16, i32 0, i32 5
  call void @aws_tls_connection_options_clean_up(ptr noundef %tls_options)
  %17 = load ptr, ptr %config, align 8, !tbaa !4
  %tls_options_ptr6 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %17, i32 0, i32 6
  store ptr null, ptr %tls_options_ptr6, align 8, !tbaa !357
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %tls_options_ptr7 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %tls_options_ptr7, align 8, !tbaa !338
  %tobool8 = icmp ne ptr %19, null
  br i1 %tobool8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end
  %20 = load ptr, ptr %config, align 8, !tbaa !4
  %tls_options10 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %tls_options_ptr11 = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %tls_options_ptr11, align 8, !tbaa !338
  %call12 = call i32 @aws_tls_connection_options_copy(ptr noundef %tls_options10, ptr noundef %22)
  %23 = load ptr, ptr %config, align 8, !tbaa !4
  %tls_options13 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %config, align 8, !tbaa !4
  %tls_options_ptr14 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %24, i32 0, i32 6
  store ptr %tls_options13, ptr %tls_options_ptr14, align 8, !tbaa !357
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end
  %25 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %client16 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %client16, align 8, !tbaa !50
  %negotiated_settings = getelementptr inbounds %struct.aws_mqtt5_client, ptr %26, i32 0, i32 7
  %client_id_storage = getelementptr inbounds %struct.aws_mqtt5_negotiated_settings, ptr %negotiated_settings, i32 0, i32 12
  call void @aws_byte_buf_clean_up(ptr noundef %client_id_storage)
  %27 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %client17 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %client17, align 8, !tbaa !50
  %negotiated_settings18 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %28, i32 0, i32 7
  %client_id_storage19 = getelementptr inbounds %struct.aws_mqtt5_negotiated_settings, ptr %negotiated_settings18, i32 0, i32 12
  %29 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator20 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %allocator20, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #9
  %31 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %client_id = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %31, i32 0, i32 8
  %call21 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %client_id)
  %32 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %33 = extractvalue { i64, ptr } %call21, 0
  store i64 %33, ptr %32, align 8
  %34 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %35 = extractvalue { i64, ptr } %call21, 1
  store ptr %35, ptr %34, align 8
  %36 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %call22 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %client_id_storage19, ptr noundef %30, i64 %37, ptr %39)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #9
  %40 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %keep_alive_time_secs = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %40, i32 0, i32 9
  %41 = load i16, ptr %keep_alive_time_secs, align 8, !tbaa !341
  %42 = load ptr, ptr %config, align 8, !tbaa !4
  %connect = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %42, i32 0, i32 24
  %43 = load ptr, ptr %connect, align 8, !tbaa !237
  %storage_view = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %43, i32 0, i32 1
  %keep_alive_interval_seconds = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %storage_view, i32 0, i32 0
  store i16 %41, ptr %keep_alive_interval_seconds, align 8, !tbaa !358
  %44 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %ping_timeout_ms = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %44, i32 0, i32 10
  %45 = load i32, ptr %ping_timeout_ms, align 4, !tbaa !342
  %46 = load ptr, ptr %config, align 8, !tbaa !4
  %ping_timeout_ms23 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %46, i32 0, i32 21
  store i32 %45, ptr %ping_timeout_ms23, align 8, !tbaa !359
  %47 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %protocol_operation_timeout_ms = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %47, i32 0, i32 11
  %48 = load i32, ptr %protocol_operation_timeout_ms, align 8, !tbaa !344
  %add = add i32 %48, 1000
  %sub = sub i32 %add, 1
  %conv = zext i32 %sub to i64
  %call24 = call i64 @aws_timestamp_convert(i64 noundef %conv, i32 noundef 1000, i32 noundef 1, ptr noundef null)
  %49 = load ptr, ptr %config, align 8, !tbaa !4
  %ack_timeout_seconds = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %49, i32 0, i32 20
  store i64 %call24, ptr %ack_timeout_seconds, align 8, !tbaa !360
  %50 = load ptr, ptr %connect_task.addr, align 8, !tbaa !4
  %clean_session = getelementptr inbounds %struct.aws_mqtt_adapter_connect_task, ptr %50, i32 0, i32 14
  %51 = load i8, ptr %clean_session, align 8, !tbaa !350, !range !34, !noundef !35
  %tobool25 = trunc i8 %51 to i1
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end15
  %52 = load ptr, ptr %config, align 8, !tbaa !4
  %session_behavior = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %52, i32 0, i32 13
  store i32 1, ptr %session_behavior, align 8, !tbaa !361
  %53 = load ptr, ptr %config, align 8, !tbaa !4
  %connect27 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %53, i32 0, i32 24
  %54 = load ptr, ptr %connect27, align 8, !tbaa !237
  %storage_view28 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %54, i32 0, i32 1
  %session_expiry_interval_seconds = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %storage_view28, i32 0, i32 5
  store ptr null, ptr %session_expiry_interval_seconds, align 8, !tbaa !362
  br label %if.end37

if.else:                                          ; preds = %if.end15
  %55 = load ptr, ptr %config, align 8, !tbaa !4
  %session_behavior29 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %55, i32 0, i32 13
  store i32 3, ptr %session_behavior29, align 8, !tbaa !361
  %56 = load ptr, ptr %config, align 8, !tbaa !4
  %connect30 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %56, i32 0, i32 24
  %57 = load ptr, ptr %connect30, align 8, !tbaa !237
  %session_expiry_interval_seconds31 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %57, i32 0, i32 4
  store i32 604800, ptr %session_expiry_interval_seconds31, align 8, !tbaa !363
  %58 = load ptr, ptr %config, align 8, !tbaa !4
  %connect32 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %58, i32 0, i32 24
  %59 = load ptr, ptr %connect32, align 8, !tbaa !237
  %session_expiry_interval_seconds33 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %config, align 8, !tbaa !4
  %connect34 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %60, i32 0, i32 24
  %61 = load ptr, ptr %connect34, align 8, !tbaa !237
  %storage_view35 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_storage, ptr %61, i32 0, i32 1
  %session_expiry_interval_seconds36 = getelementptr inbounds %struct.aws_mqtt5_packet_connect_view, ptr %storage_view35, i32 0, i32 5
  store ptr %session_expiry_interval_seconds33, ptr %session_expiry_interval_seconds36, align 8, !tbaa !362
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #9
  ret void
}

declare zeroext i1 @aws_mqtt5_client_reset_connection(ptr noundef) #2

declare void @aws_mqtt5_client_change_desired_state(ptr noundef, i32 noundef, ptr noundef) #2

declare void @aws_string_destroy(ptr noundef) #2

declare ptr @aws_string_new_from_buf(ptr noundef, ptr noundef) #2

declare void @aws_tls_connection_options_clean_up(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_timestamp_convert(i64 noundef %timestamp, i32 noundef %convert_from, i32 noundef %convert_to, ptr noundef %remainder) #5 {
entry:
  %timestamp.addr = alloca i64, align 8
  %convert_from.addr = alloca i32, align 4
  %convert_to.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %timestamp, ptr %timestamp.addr, align 8, !tbaa !27
  store i32 %convert_from, ptr %convert_from.addr, align 4, !tbaa !74
  store i32 %convert_to, ptr %convert_to.addr, align 4, !tbaa !74
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !4
  %0 = load i64, ptr %timestamp.addr, align 8, !tbaa !27
  %1 = load i32, ptr %convert_from.addr, align 4, !tbaa !74
  %conv = zext i32 %1 to i64
  %2 = load i32, ptr %convert_to.addr, align 4, !tbaa !74
  %conv1 = zext i32 %2 to i64
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  %call = call i64 @aws_timestamp_convert_u64(i64 noundef %0, i64 noundef %conv, i64 noundef %conv1, ptr noundef %3)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_timestamp_convert_u64(i64 noundef %ticks, i64 noundef %old_frequency, i64 noundef %new_frequency, ptr noundef %remainder) #5 {
entry:
  %ticks.addr = alloca i64, align 8
  %old_frequency.addr = alloca i64, align 8
  %new_frequency.addr = alloca i64, align 8
  %remainder.addr = alloca ptr, align 8
  %frequency_remainder = alloca i64, align 8
  %frequency_ratio = alloca i64, align 8
  %old_seconds_elapsed = alloca i64, align 8
  %old_remainder = alloca i64, align 8
  %new_ticks_whole_part = alloca i64, align 8
  %new_ticks_remainder_part = alloca i64, align 8
  store i64 %ticks, ptr %ticks.addr, align 8, !tbaa !27
  store i64 %old_frequency, ptr %old_frequency.addr, align 8, !tbaa !27
  store i64 %new_frequency, ptr %new_frequency.addr, align 8, !tbaa !27
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %old_frequency.addr, align 8, !tbaa !27
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, ptr %new_frequency.addr, align 8, !tbaa !27
  %cmp1 = icmp ugt i64 %1, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %do.body
  call void @aws_fatal_assert(ptr noundef @.str.45, ptr noundef @.str.46, i32 noundef 24) #10
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %do.end
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  store i64 0, ptr %3, align 8, !tbaa !27
  %4 = load i64, ptr %new_frequency.addr, align 8, !tbaa !27
  %5 = load i64, ptr %old_frequency.addr, align 8, !tbaa !27
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_remainder) #9
  %6 = load i64, ptr %old_frequency.addr, align 8, !tbaa !27
  %7 = load i64, ptr %new_frequency.addr, align 8, !tbaa !27
  %rem = urem i64 %6, %7
  store i64 %rem, ptr %frequency_remainder, align 8, !tbaa !27
  %8 = load i64, ptr %frequency_remainder, align 8, !tbaa !27
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_ratio) #9
  %9 = load i64, ptr %old_frequency.addr, align 8, !tbaa !27
  %10 = load i64, ptr %new_frequency.addr, align 8, !tbaa !27
  %div = udiv i64 %9, %10
  store i64 %div, ptr %frequency_ratio, align 8, !tbaa !27
  %11 = load i64, ptr %ticks.addr, align 8, !tbaa !27
  %12 = load i64, ptr %frequency_ratio, align 8, !tbaa !27
  %rem8 = urem i64 %11, %12
  %13 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  store i64 %rem8, ptr %13, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_ratio) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_remainder) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then3
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_seconds_elapsed) #9
  %14 = load i64, ptr %ticks.addr, align 8, !tbaa !27
  %15 = load i64, ptr %old_frequency.addr, align 8, !tbaa !27
  %div12 = udiv i64 %14, %15
  store i64 %div12, ptr %old_seconds_elapsed, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_remainder) #9
  %16 = load i64, ptr %ticks.addr, align 8, !tbaa !27
  %17 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !27
  %18 = load i64, ptr %old_frequency.addr, align 8, !tbaa !27
  %mul = mul i64 %17, %18
  %sub = sub i64 %16, %mul
  store i64 %sub, ptr %old_remainder, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_whole_part) #9
  %19 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !27
  %20 = load i64, ptr %new_frequency.addr, align 8, !tbaa !27
  %call = call i64 @aws_mul_u64_saturating(i64 noundef %19, i64 noundef %20)
  store i64 %call, ptr %new_ticks_whole_part, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_remainder_part) #9
  %21 = load i64, ptr %old_remainder, align 8, !tbaa !27
  %22 = load i64, ptr %new_frequency.addr, align 8, !tbaa !27
  %call13 = call i64 @aws_mul_u64_saturating(i64 noundef %21, i64 noundef %22)
  %23 = load i64, ptr %old_frequency.addr, align 8, !tbaa !27
  %div14 = udiv i64 %call13, %23
  store i64 %div14, ptr %new_ticks_remainder_part, align 8, !tbaa !27
  %24 = load i64, ptr %new_ticks_whole_part, align 8, !tbaa !27
  %25 = load i64, ptr %new_ticks_remainder_part, align 8, !tbaa !27
  %call15 = call i64 @aws_add_u64_saturating(i64 noundef %24, i64 noundef %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_remainder_part) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_whole_part) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_remainder) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_seconds_elapsed) #9
  ret i64 %call15
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_mul_u64_saturating(i64 noundef %a, i64 noundef %b) #5 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_add_u64_saturating(i64 noundef %a, i64 noundef %b) #5 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !27
  store i64 %b, ptr %b.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !27
  %1 = load i64, ptr %b.addr, align 8, !tbaa !27
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal ptr @s_aws_mqtt_adapter_disconnect_task_new(ptr noundef %allocator, ptr noundef %adapter, ptr noundef %on_disconnect, ptr noundef %on_disconnect_user_data) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %on_disconnect.addr = alloca ptr, align 8
  %on_disconnect_user_data.addr = alloca ptr, align 8
  %disconnect_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %on_disconnect, ptr %on_disconnect.addr, align 8, !tbaa !4
  store ptr %on_disconnect_user_data, ptr %on_disconnect_user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %disconnect_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 96)
  store ptr %call, ptr %disconnect_task, align 8, !tbaa !4
  %1 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_adapter_disconnect_task_fn, ptr noundef %2, ptr noundef @.str.49)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !364
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 8
  %call3 = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  %7 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %adapter4 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %7, i32 0, i32 2
  store ptr %call3, ptr %adapter4, align 8, !tbaa !366
  %8 = load ptr, ptr %on_disconnect.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect5 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %9, i32 0, i32 3
  store ptr %8, ptr %on_disconnect5, align 8, !tbaa !367
  %10 = load ptr, ptr %on_disconnect_user_data.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect_user_data6 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %11, i32 0, i32 4
  store ptr %10, ptr %on_disconnect_user_data6, align 8, !tbaa !368
  %12 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %disconnect_task) #9
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @s_adapter_disconnect_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %disconnect_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %disconnect_task) #9
  %1 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %1, ptr %disconnect_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %2 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %adapter1 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %adapter1, align 8, !tbaa !366
  store ptr %3, ptr %adapter, align 8, !tbaa !4
  %4 = load i32, ptr %status.addr, align 4, !tbaa !74
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %adapter, align 8, !tbaa !4
  %6 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %call = call i32 @s_aws_mqtt5_adapter_perform_safe_callback(ptr noundef %5, i1 noundef zeroext false, ptr noundef @s_aws_mqtt5_to_mqtt3_adapter_safe_disconnect_handler, ptr noundef %6)
  br label %done

done:                                             ; preds = %if.end, %if.then
  %7 = load ptr, ptr %adapter, align 8, !tbaa !4
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %7, i32 0, i32 8
  %call2 = call i64 @aws_ref_count_release(ptr noundef %internal_refs)
  %8 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %allocator, align 8, !tbaa !364
  %10 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %9, ptr noundef %10)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %disconnect_task) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt5_to_mqtt3_adapter_safe_disconnect_handler(ptr noundef %adapter, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %disconnect_task = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  %invoke_callbacks = alloca i8, align 1
  %logger30 = alloca ptr, align 8
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %disconnect_task) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %disconnect_task, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %synced_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 10
  %terminated = getelementptr inbounds %struct.anon, ptr %synced_data, i32 0, i32 0
  %2 = load i8, ptr %terminated, align 8, !tbaa !190, !range !34, !noundef !35
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %6(ptr noundef %7, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable4, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !103
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %adapter_state, align 4, !tbaa !189
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.50, ptr noundef %12, i32 noundef %14)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state7 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %adapter_state7, align 4, !tbaa !189
  %cmp8 = icmp eq i32 %16, 2
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %do.end
  %17 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %on_disconnect, align 8, !tbaa !367
  %tobool10 = icmp ne ptr %18, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %19 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect12 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %on_disconnect12, align 8, !tbaa !367
  %21 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect_user_data = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %on_disconnect_user_data, align 8, !tbaa !368
  call void %20(ptr noundef %base, ptr noundef %23)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %24 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state15 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %adapter_state15, align 4, !tbaa !189
  %cmp16 = icmp eq i32 %25, 0
  br i1 %cmp16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end14
  %26 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %26, i32 0, i32 31
  %27 = load ptr, ptr %on_connection_complete, align 8, !tbaa !353
  %cmp18 = icmp ne ptr %27, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then17
  %28 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete20 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %28, i32 0, i32 31
  %29 = load ptr, ptr %on_connection_complete20, align 8, !tbaa !353
  %30 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base21 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %31, i32 0, i32 32
  %32 = load ptr, ptr %on_connection_complete_user_data, align 8, !tbaa !354
  call void %29(ptr noundef %base21, i32 noundef 5135, i32 noundef 0, i1 noundef zeroext false, ptr noundef %32)
  %33 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete22 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %33, i32 0, i32 31
  store ptr null, ptr %on_connection_complete22, align 8, !tbaa !353
  %34 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete_user_data23 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %34, i32 0, i32 32
  store ptr null, ptr %on_connection_complete_user_data23, align 8, !tbaa !354
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then17
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  %35 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state26 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %35, i32 0, i32 6
  store i32 2, ptr %adapter_state26, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 1, ptr %invoke_callbacks) #9
  store i8 1, ptr %invoke_callbacks, align 1, !tbaa !220
  %36 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %client, align 8, !tbaa !50
  %desired_state = getelementptr inbounds %struct.aws_mqtt5_client, ptr %37, i32 0, i32 11
  %38 = load i32, ptr %desired_state, align 8, !tbaa !369
  %cmp27 = icmp ne i32 %38, 0
  br i1 %cmp27, label %if.then28, label %if.end50

if.then28:                                        ; preds = %if.end25
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger30) #9
  %call31 = call ptr @aws_logger_get()
  store ptr %call31, ptr %logger30, align 8, !tbaa !4
  %39 = load ptr, ptr %logger30, align 8, !tbaa !4
  %cmp32 = icmp ne ptr %39, null
  br i1 %cmp32, label %land.lhs.true33, label %if.end42

land.lhs.true33:                                  ; preds = %do.body29
  %40 = load ptr, ptr %logger30, align 8, !tbaa !4
  %vtable34 = getelementptr inbounds %struct.aws_logger, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %vtable34, align 8, !tbaa !99
  %get_log_level35 = getelementptr inbounds %struct.aws_logger_vtable, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %get_log_level35, align 8, !tbaa !101
  %43 = load ptr, ptr %logger30, align 8, !tbaa !4
  %call36 = call i32 %42(ptr noundef %43, i32 noundef 5126)
  %cmp37 = icmp uge i32 %call36, 5
  br i1 %cmp37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %land.lhs.true33
  %44 = load ptr, ptr %logger30, align 8, !tbaa !4
  %vtable39 = getelementptr inbounds %struct.aws_logger, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %vtable39, align 8, !tbaa !99
  %log40 = getelementptr inbounds %struct.aws_logger_vtable, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %log40, align 8, !tbaa !103
  %47 = load ptr, ptr %logger30, align 8, !tbaa !4
  %48 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call41 = call i32 (ptr, i32, i32, ptr, ...) %46(ptr noundef %47, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.51, ptr noundef %48)
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %land.lhs.true33, %do.body29
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger30) #9
  br label %do.cond43

do.cond43:                                        ; preds = %if.end42
  br label %do.end44

do.end44:                                         ; preds = %do.cond43
  %49 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %client45 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %client45, align 8, !tbaa !50
  call void @aws_mqtt5_client_change_desired_state(ptr noundef %50, i32 noundef 0, ptr noundef null)
  %51 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect46 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %on_disconnect46, align 8, !tbaa !367
  %53 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect47 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %53, i32 0, i32 29
  store ptr %52, ptr %on_disconnect47, align 8, !tbaa !351
  %54 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect_user_data48 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %54, i32 0, i32 4
  %55 = load ptr, ptr %on_disconnect_user_data48, align 8, !tbaa !368
  %56 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect_user_data49 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %56, i32 0, i32 30
  store ptr %55, ptr %on_disconnect_user_data49, align 8, !tbaa !352
  store i8 0, ptr %invoke_callbacks, align 1, !tbaa !220
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end25
  %57 = load i8, ptr %invoke_callbacks, align 1, !tbaa !220, !range !34, !noundef !35
  %tobool51 = trunc i8 %57 to i1
  br i1 %tobool51, label %if.then52, label %if.end65

if.then52:                                        ; preds = %if.end50
  %58 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect53 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %on_disconnect53, align 8, !tbaa !367
  %cmp54 = icmp ne ptr %59, null
  br i1 %cmp54, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.then52
  %60 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect56 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %on_disconnect56, align 8, !tbaa !367
  %62 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base57 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %disconnect_task, align 8, !tbaa !4
  %on_disconnect_user_data58 = getelementptr inbounds %struct.aws_mqtt_adapter_disconnect_task, ptr %63, i32 0, i32 4
  %64 = load ptr, ptr %on_disconnect_user_data58, align 8, !tbaa !368
  call void %61(ptr noundef %base57, ptr noundef %64)
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then52
  %65 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_closed = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %65, i32 0, i32 17
  %66 = load ptr, ptr %on_closed, align 8, !tbaa !318
  %tobool60 = icmp ne ptr %66, null
  br i1 %tobool60, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end59
  %67 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_closed62 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %67, i32 0, i32 17
  %68 = load ptr, ptr %on_closed62, align 8, !tbaa !318
  %69 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base63 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_closed_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %70, i32 0, i32 18
  %71 = load ptr, ptr %on_closed_user_data, align 8, !tbaa !319
  call void %68(ptr noundef %base63, ptr noundef null, ptr noundef %71)
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end59
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %invoke_callbacks) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %disconnect_task) #9
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt5_to_mqtt3_adapter_operation_acquire_cross_thread_refs(ptr noundef %operation) #0 {
entry:
  %operation.addr = alloca ptr, align 8
  store ptr %operation, ptr %operation.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %holding_adapter_ref = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %holding_adapter_ref, align 8, !tbaa !77, !range !34, !noundef !35
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %holding_adapter_ref1 = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %2, i32 0, i32 4
  store i8 1, ptr %holding_adapter_ref1, align 8, !tbaa !77
  %3 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %adapter = getelementptr inbounds %struct.aws_mqtt5_to_mqtt3_adapter_operation_base, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %adapter, align 8, !tbaa !78
  %internal_refs = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %4, i32 0, i32 8
  %call = call ptr @aws_ref_count_acquire(ptr noundef %internal_refs)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %operation.addr, align 8, !tbaa !4
  %call2 = call ptr @aws_mqtt5_to_mqtt3_adapter_operation_acquire(ptr noundef %5)
  ret void
}

declare void @aws_mqtt5_client_get_stats(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_decref_for_shutdown(ptr noundef %adapter, ptr noundef %context) #0 {
entry:
  %adapter.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %synced_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 10
  %terminated = getelementptr inbounds %struct.anon, ptr %synced_data, i32 0, i32 0
  store i8 1, ptr %terminated, align 8, !tbaa !190
  ret i32 0
}

declare ptr @aws_mqtt5_listener_release(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_mqtt_adapter_final_destroy(ptr noundef %adapter) #0 {
entry:
  %adapter.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %error_code = alloca i32, align 4
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #9
  %0 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %allocator, align 8, !tbaa !184
  %2 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %call = call ptr @s_aws_mqtt_adapter_final_destroy_task_new(ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %task, align 8, !tbaa !4
  %3 = load ptr, ptr %task, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_code) #9
  %call1 = call i32 @aws_last_error()
  store i32 %call1, ptr %error_code, align 4, !tbaa !75
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %7(ptr noundef %8, i32 noundef 5126)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable7, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !103
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %13 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %14 = load i32, ptr %error_code, align 4, !tbaa !75
  %15 = load i32, ptr %error_code, align 4, !tbaa !75
  %call8 = call ptr @aws_error_debug_str(i32 noundef %15)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 5126, ptr noundef @.str.76, ptr noundef %13, i32 noundef %14, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_code) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %16 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %loop = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %loop, align 8, !tbaa !188
  %18 = load ptr, ptr %task, align 8, !tbaa !4
  %task11 = getelementptr inbounds %struct.aws_mqtt_adapter_final_destroy_task, ptr %18, i32 0, i32 0
  call void @aws_event_loop_schedule_task_now(ptr noundef %17, ptr noundef %task11)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #9
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
define internal ptr @s_aws_mqtt_adapter_final_destroy_task_new(ptr noundef %allocator, ptr noundef %adapter) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %adapter.addr = alloca ptr, align 8
  %destroy_task = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %destroy_task) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 80)
  store ptr %call, ptr %destroy_task, align 8, !tbaa !4
  %1 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  %task = getelementptr inbounds %struct.aws_mqtt_adapter_final_destroy_task, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %task, ptr noundef @s_mqtt_adapter_final_destroy_task_fn, ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !184
  %5 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_mqtt_adapter_final_destroy_task, ptr %5, i32 0, i32 1
  store ptr %4, ptr %allocator2, align 8, !tbaa !370
  %6 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.aws_mqtt_adapter_final_destroy_task, ptr %7, i32 0, i32 2
  store ptr %base, ptr %connection, align 8, !tbaa !372
  %8 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %destroy_task) #9
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @s_mqtt_adapter_final_destroy_task_fn(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %destroy_task = alloca ptr, align 8
  %adapter = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !74
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %1 = load i32, ptr %status.addr, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %destroy_task) #9
  %2 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %2, ptr %destroy_task, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #9
  %3 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.aws_mqtt_adapter_final_destroy_task, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %connection, align 8, !tbaa !372
  %impl = getelementptr inbounds %struct.aws_mqtt_client_connection, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %impl, align 8, !tbaa !373
  store ptr %5, ptr %adapter, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %9(ptr noundef %10, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable3, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %log, align 8, !tbaa !103
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %15 = load ptr, ptr %adapter, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %13(ptr noundef %14, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.78, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %client, align 8, !tbaa !50
  %config = getelementptr inbounds %struct.aws_mqtt5_client, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %config, align 8, !tbaa !236
  %websocket_handshake_transform_user_data = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %websocket_handshake_transform_user_data, align 8, !tbaa !265
  %20 = load ptr, ptr %adapter, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %19, %20
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %do.end
  %21 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client7 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %client7, align 8, !tbaa !50
  %config8 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %config8, align 8, !tbaa !236
  %websocket_handshake_transform = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %23, i32 0, i32 9
  store ptr null, ptr %websocket_handshake_transform, align 8, !tbaa !264
  %24 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client9 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %client9, align 8, !tbaa !50
  %config10 = getelementptr inbounds %struct.aws_mqtt5_client, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %config10, align 8, !tbaa !236
  %websocket_handshake_transform_user_data11 = getelementptr inbounds %struct.aws_mqtt5_client_options_storage, ptr %26, i32 0, i32 10
  store ptr null, ptr %websocket_handshake_transform_user_data11, align 8, !tbaa !265
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %do.end
  %27 = load ptr, ptr %adapter, align 8, !tbaa !4
  %subscriptions = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %subscriptions, align 8, !tbaa !132
  call void @aws_mqtt_subscription_set_destroy(ptr noundef %28)
  %29 = load ptr, ptr %adapter, align 8, !tbaa !4
  %operational_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %29, i32 0, i32 11
  call void @aws_mqtt5_to_mqtt3_adapter_operation_table_clean_up(ptr noundef %operational_state)
  %30 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client13 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %client13, align 8, !tbaa !50
  %call14 = call ptr @aws_mqtt5_client_release(ptr noundef %31)
  %32 = load ptr, ptr %adapter, align 8, !tbaa !4
  %client15 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %32, i32 0, i32 2
  store ptr %call14, ptr %client15, align 8, !tbaa !50
  %33 = load ptr, ptr %adapter, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %33, i32 0, i32 9
  call void @aws_rw_lock_clean_up(ptr noundef %lock)
  %34 = load ptr, ptr %adapter, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %allocator, align 8, !tbaa !184
  %36 = load ptr, ptr %adapter, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %35, ptr noundef %36)
  %37 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  %allocator16 = getelementptr inbounds %struct.aws_mqtt_adapter_final_destroy_task, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %allocator16, align 8, !tbaa !370
  %39 = load ptr, ptr %destroy_task, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %38, ptr noundef %39)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %destroy_task) #9
  ret void
}

declare void @aws_mqtt_subscription_set_destroy(ptr noundef) #2

declare ptr @aws_mqtt5_client_release(ptr noundef) #2

declare void @aws_rw_lock_clean_up(ptr noundef) #2

declare void @aws_mqtt_subscription_set_on_publish_received(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_mqtt5_to_mqtt3_adapter_safe_lifecycle_handler(ptr noundef %adapter, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  %logger45 = alloca ptr, align 8
  %mqtt311_error_code = alloca i32, align 4
  %logger92 = alloca ptr, align 8
  %logger124 = alloca ptr, align 8
  store ptr %adapter, ptr %adapter.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #9
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  store ptr %0, ptr %event, align 8, !tbaa !4
  %1 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %synced_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %1, i32 0, i32 10
  %terminated = getelementptr inbounds %struct.anon, ptr %synced_data, i32 0, i32 0
  %2 = load i8, ptr %terminated, align 8, !tbaa !190, !range !34, !noundef !35
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %event, align 8, !tbaa !4
  %event_type = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %event_type, align 8, !tbaa !374
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb43
    i32 3, label %sw.bb90
    i32 4, label %sw.bb122
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable, align 8, !tbaa !99
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %get_log_level, align 8, !tbaa !101
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %8(ptr noundef %9, i32 noundef 5126)
  %cmp2 = icmp uge i32 %call1, 5
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable4, align 8, !tbaa !99
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %log, align 8, !tbaa !103
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %14 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %adapter_state, align 4, !tbaa !189
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %12(ptr noundef %13, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.79, ptr noundef %14, i32 noundef %16)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state7 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %adapter_state7, align 4, !tbaa !189
  %cmp8 = icmp ne i32 %18, 2
  br i1 %cmp8, label %if.then9, label %if.end42

if.then9:                                         ; preds = %do.end
  %19 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_success = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %19, i32 0, i32 19
  %20 = load ptr, ptr %on_connection_success, align 8, !tbaa !309
  %cmp10 = icmp ne ptr %20, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then9
  %21 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_success12 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %21, i32 0, i32 19
  %22 = load ptr, ptr %on_connection_success12, align 8, !tbaa !309
  %23 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %event, align 8, !tbaa !4
  %settings = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %settings, align 8, !tbaa !375
  %rejoined_session = getelementptr inbounds %struct.aws_mqtt5_negotiated_settings, ptr %25, i32 0, i32 11
  %26 = load i8, ptr %rejoined_session, align 2, !tbaa !376, !range !34, !noundef !35
  %tobool13 = trunc i8 %26 to i1
  %27 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_success_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %27, i32 0, i32 20
  %28 = load ptr, ptr %on_connection_success_user_data, align 8, !tbaa !310
  call void %22(ptr noundef %base, i32 noundef 0, i1 noundef zeroext %tobool13, ptr noundef %28)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then9
  %29 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state15 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %29, i32 0, i32 6
  %30 = load i32, ptr %adapter_state15, align 4, !tbaa !189
  %cmp16 = icmp eq i32 %30, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %31 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %31, i32 0, i32 31
  %32 = load ptr, ptr %on_connection_complete, align 8, !tbaa !353
  %cmp18 = icmp ne ptr %32, null
  br i1 %cmp18, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.then17
  %33 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete20 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %33, i32 0, i32 31
  %34 = load ptr, ptr %on_connection_complete20, align 8, !tbaa !353
  %35 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base21 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %event, align 8, !tbaa !4
  %error_code = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %error_code, align 8, !tbaa !377
  %38 = load ptr, ptr %event, align 8, !tbaa !4
  %settings22 = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %settings22, align 8, !tbaa !375
  %rejoined_session23 = getelementptr inbounds %struct.aws_mqtt5_negotiated_settings, ptr %39, i32 0, i32 11
  %40 = load i8, ptr %rejoined_session23, align 2, !tbaa !376, !range !34, !noundef !35
  %tobool24 = trunc i8 %40 to i1
  %41 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %41, i32 0, i32 32
  %42 = load ptr, ptr %on_connection_complete_user_data, align 8, !tbaa !354
  call void %34(ptr noundef %base21, i32 noundef %37, i32 noundef 0, i1 noundef zeroext %tobool24, ptr noundef %42)
  %43 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete25 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %43, i32 0, i32 31
  store ptr null, ptr %on_connection_complete25, align 8, !tbaa !353
  %44 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete_user_data26 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %44, i32 0, i32 32
  store ptr null, ptr %on_connection_complete_user_data26, align 8, !tbaa !354
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.then17
  %45 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state28 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %45, i32 0, i32 6
  store i32 1, ptr %adapter_state28, align 4, !tbaa !189
  br label %if.end41

if.else:                                          ; preds = %if.end14
  %46 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state29 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %46, i32 0, i32 6
  %47 = load i32, ptr %adapter_state29, align 4, !tbaa !189
  %cmp30 = icmp eq i32 %47, 1
  br i1 %cmp30, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.else
  %48 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_resumed = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %48, i32 0, i32 15
  %49 = load ptr, ptr %on_resumed, align 8, !tbaa !300
  %cmp32 = icmp ne ptr %49, null
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.then31
  %50 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_resumed34 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %50, i32 0, i32 15
  %51 = load ptr, ptr %on_resumed34, align 8, !tbaa !300
  %52 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base35 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %event, align 8, !tbaa !4
  %settings36 = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %53, i32 0, i32 5
  %54 = load ptr, ptr %settings36, align 8, !tbaa !375
  %rejoined_session37 = getelementptr inbounds %struct.aws_mqtt5_negotiated_settings, ptr %54, i32 0, i32 11
  %55 = load i8, ptr %rejoined_session37, align 2, !tbaa !376, !range !34, !noundef !35
  %tobool38 = trunc i8 %55 to i1
  %56 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_resumed_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %56, i32 0, i32 16
  %57 = load ptr, ptr %on_resumed_user_data, align 8, !tbaa !301
  call void %51(ptr noundef %base35, i32 noundef 0, i1 noundef zeroext %tobool38, ptr noundef %57)
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.then31
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %do.end
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end
  br label %do.body44

do.body44:                                        ; preds = %sw.bb43
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger45) #9
  %call46 = call ptr @aws_logger_get()
  store ptr %call46, ptr %logger45, align 8, !tbaa !4
  %58 = load ptr, ptr %logger45, align 8, !tbaa !4
  %cmp47 = icmp ne ptr %58, null
  br i1 %cmp47, label %land.lhs.true48, label %if.end58

land.lhs.true48:                                  ; preds = %do.body44
  %59 = load ptr, ptr %logger45, align 8, !tbaa !4
  %vtable49 = getelementptr inbounds %struct.aws_logger, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %vtable49, align 8, !tbaa !99
  %get_log_level50 = getelementptr inbounds %struct.aws_logger_vtable, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %get_log_level50, align 8, !tbaa !101
  %62 = load ptr, ptr %logger45, align 8, !tbaa !4
  %call51 = call i32 %61(ptr noundef %62, i32 noundef 5126)
  %cmp52 = icmp uge i32 %call51, 5
  br i1 %cmp52, label %if.then53, label %if.end58

if.then53:                                        ; preds = %land.lhs.true48
  %63 = load ptr, ptr %logger45, align 8, !tbaa !4
  %vtable54 = getelementptr inbounds %struct.aws_logger, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %vtable54, align 8, !tbaa !99
  %log55 = getelementptr inbounds %struct.aws_logger_vtable, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %log55, align 8, !tbaa !103
  %66 = load ptr, ptr %logger45, align 8, !tbaa !4
  %67 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state56 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %68, i32 0, i32 6
  %69 = load i32, ptr %adapter_state56, align 4, !tbaa !189
  %call57 = call i32 (ptr, i32, i32, ptr, ...) %65(ptr noundef %66, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.80, ptr noundef %67, i32 noundef %69)
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %land.lhs.true48, %do.body44
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger45) #9
  br label %do.cond59

do.cond59:                                        ; preds = %if.end58
  br label %do.end60

do.end60:                                         ; preds = %do.cond59
  %70 = load ptr, ptr %event, align 8, !tbaa !4
  %error_code61 = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %error_code61, align 8, !tbaa !377
  %cmp62 = icmp ne i32 %71, 5162
  br i1 %cmp62, label %if.then63, label %if.end89

if.then63:                                        ; preds = %do.end60
  %72 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state64 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %72, i32 0, i32 6
  %73 = load i32, ptr %adapter_state64, align 4, !tbaa !189
  %cmp65 = icmp ne i32 %73, 2
  br i1 %cmp65, label %if.then66, label %if.end88

if.then66:                                        ; preds = %if.then63
  call void @llvm.lifetime.start.p0(i64 4, ptr %mqtt311_error_code) #9
  %74 = load ptr, ptr %event, align 8, !tbaa !4
  %error_code67 = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %error_code67, align 8, !tbaa !377
  %call68 = call i32 @s_translate_mqtt5_error_code_to_mqtt311(i32 noundef %75)
  store i32 %call68, ptr %mqtt311_error_code, align 4, !tbaa !75
  %76 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_failure = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %76, i32 0, i32 21
  %77 = load ptr, ptr %on_connection_failure, align 8, !tbaa !311
  %cmp69 = icmp ne ptr %77, null
  br i1 %cmp69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.then66
  %78 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_failure71 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %78, i32 0, i32 21
  %79 = load ptr, ptr %on_connection_failure71, align 8, !tbaa !311
  %80 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base72 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %80, i32 0, i32 1
  %81 = load i32, ptr %mqtt311_error_code, align 4, !tbaa !75
  %82 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_failure_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %82, i32 0, i32 22
  %83 = load ptr, ptr %on_connection_failure_user_data, align 8, !tbaa !312
  call void %79(ptr noundef %base72, i32 noundef %81, ptr noundef %83)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.then66
  %84 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state74 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %84, i32 0, i32 6
  %85 = load i32, ptr %adapter_state74, align 4, !tbaa !189
  %cmp75 = icmp eq i32 %85, 0
  br i1 %cmp75, label %if.then76, label %if.end87

if.then76:                                        ; preds = %if.end73
  %86 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete77 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %86, i32 0, i32 31
  %87 = load ptr, ptr %on_connection_complete77, align 8, !tbaa !353
  %cmp78 = icmp ne ptr %87, null
  br i1 %cmp78, label %if.then79, label %if.end85

if.then79:                                        ; preds = %if.then76
  %88 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete80 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %88, i32 0, i32 31
  %89 = load ptr, ptr %on_connection_complete80, align 8, !tbaa !353
  %90 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base81 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %mqtt311_error_code, align 4, !tbaa !75
  %92 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete_user_data82 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %92, i32 0, i32 32
  %93 = load ptr, ptr %on_connection_complete_user_data82, align 8, !tbaa !354
  call void %89(ptr noundef %base81, i32 noundef %91, i32 noundef 0, i1 noundef zeroext false, ptr noundef %93)
  %94 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete83 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %94, i32 0, i32 31
  store ptr null, ptr %on_connection_complete83, align 8, !tbaa !353
  %95 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_connection_complete_user_data84 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %95, i32 0, i32 32
  store ptr null, ptr %on_connection_complete_user_data84, align 8, !tbaa !354
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.then76
  %96 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state86 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %96, i32 0, i32 6
  store i32 2, ptr %adapter_state86, align 4, !tbaa !189
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end73
  call void @llvm.lifetime.end.p0(i64 4, ptr %mqtt311_error_code) #9
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then63
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %do.end60
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end
  br label %do.body91

do.body91:                                        ; preds = %sw.bb90
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger92) #9
  %call93 = call ptr @aws_logger_get()
  store ptr %call93, ptr %logger92, align 8, !tbaa !4
  %97 = load ptr, ptr %logger92, align 8, !tbaa !4
  %cmp94 = icmp ne ptr %97, null
  br i1 %cmp94, label %land.lhs.true95, label %if.end106

land.lhs.true95:                                  ; preds = %do.body91
  %98 = load ptr, ptr %logger92, align 8, !tbaa !4
  %vtable96 = getelementptr inbounds %struct.aws_logger, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %vtable96, align 8, !tbaa !99
  %get_log_level97 = getelementptr inbounds %struct.aws_logger_vtable, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %get_log_level97, align 8, !tbaa !101
  %101 = load ptr, ptr %logger92, align 8, !tbaa !4
  %call98 = call i32 %100(ptr noundef %101, i32 noundef 5126)
  %cmp99 = icmp uge i32 %call98, 5
  br i1 %cmp99, label %if.then100, label %if.end106

if.then100:                                       ; preds = %land.lhs.true95
  %102 = load ptr, ptr %logger92, align 8, !tbaa !4
  %vtable101 = getelementptr inbounds %struct.aws_logger, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %vtable101, align 8, !tbaa !99
  %log102 = getelementptr inbounds %struct.aws_logger_vtable, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %log102, align 8, !tbaa !103
  %105 = load ptr, ptr %logger92, align 8, !tbaa !4
  %106 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %107 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state103 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %107, i32 0, i32 6
  %108 = load i32, ptr %adapter_state103, align 4, !tbaa !189
  %109 = load ptr, ptr %event, align 8, !tbaa !4
  %error_code104 = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %109, i32 0, i32 2
  %110 = load i32, ptr %error_code104, align 8, !tbaa !377
  %call105 = call i32 (ptr, i32, i32, ptr, ...) %104(ptr noundef %105, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.81, ptr noundef %106, i32 noundef %108, i32 noundef %110)
  br label %if.end106

if.end106:                                        ; preds = %if.then100, %land.lhs.true95, %do.body91
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger92) #9
  br label %do.cond107

do.cond107:                                       ; preds = %if.end106
  br label %do.end108

do.end108:                                        ; preds = %do.cond107
  %111 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_interrupted = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %111, i32 0, i32 13
  %112 = load ptr, ptr %on_interrupted, align 8, !tbaa !298
  %cmp109 = icmp ne ptr %112, null
  br i1 %cmp109, label %land.lhs.true110, label %if.end121

land.lhs.true110:                                 ; preds = %do.end108
  %113 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state111 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %113, i32 0, i32 6
  %114 = load i32, ptr %adapter_state111, align 4, !tbaa !189
  %cmp112 = icmp eq i32 %114, 1
  br i1 %cmp112, label %land.lhs.true113, label %if.end121

land.lhs.true113:                                 ; preds = %land.lhs.true110
  %115 = load ptr, ptr %event, align 8, !tbaa !4
  %error_code114 = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %115, i32 0, i32 2
  %116 = load i32, ptr %error_code114, align 8, !tbaa !377
  %cmp115 = icmp ne i32 %116, 5162
  br i1 %cmp115, label %if.then116, label %if.end121

if.then116:                                       ; preds = %land.lhs.true113
  %117 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_interrupted117 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %117, i32 0, i32 13
  %118 = load ptr, ptr %on_interrupted117, align 8, !tbaa !298
  %119 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base118 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %event, align 8, !tbaa !4
  %error_code119 = getelementptr inbounds %struct.aws_mqtt5_client_lifecycle_event, ptr %120, i32 0, i32 2
  %121 = load i32, ptr %error_code119, align 8, !tbaa !377
  %call120 = call i32 @s_translate_mqtt5_error_code_to_mqtt311(i32 noundef %121)
  %122 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_interrupted_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %122, i32 0, i32 14
  %123 = load ptr, ptr %on_interrupted_user_data, align 8, !tbaa !299
  call void %118(ptr noundef %base118, i32 noundef %call120, ptr noundef %123)
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %land.lhs.true113, %land.lhs.true110, %do.end108
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end
  br label %do.body123

do.body123:                                       ; preds = %sw.bb122
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger124) #9
  %call125 = call ptr @aws_logger_get()
  store ptr %call125, ptr %logger124, align 8, !tbaa !4
  %124 = load ptr, ptr %logger124, align 8, !tbaa !4
  %cmp126 = icmp ne ptr %124, null
  br i1 %cmp126, label %land.lhs.true127, label %if.end137

land.lhs.true127:                                 ; preds = %do.body123
  %125 = load ptr, ptr %logger124, align 8, !tbaa !4
  %vtable128 = getelementptr inbounds %struct.aws_logger, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %vtable128, align 8, !tbaa !99
  %get_log_level129 = getelementptr inbounds %struct.aws_logger_vtable, ptr %126, i32 0, i32 1
  %127 = load ptr, ptr %get_log_level129, align 8, !tbaa !101
  %128 = load ptr, ptr %logger124, align 8, !tbaa !4
  %call130 = call i32 %127(ptr noundef %128, i32 noundef 5126)
  %cmp131 = icmp uge i32 %call130, 5
  br i1 %cmp131, label %if.then132, label %if.end137

if.then132:                                       ; preds = %land.lhs.true127
  %129 = load ptr, ptr %logger124, align 8, !tbaa !4
  %vtable133 = getelementptr inbounds %struct.aws_logger, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %vtable133, align 8, !tbaa !99
  %log134 = getelementptr inbounds %struct.aws_logger_vtable, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %log134, align 8, !tbaa !103
  %132 = load ptr, ptr %logger124, align 8, !tbaa !4
  %133 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %134 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state135 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %134, i32 0, i32 6
  %135 = load i32, ptr %adapter_state135, align 4, !tbaa !189
  %call136 = call i32 (ptr, i32, i32, ptr, ...) %131(ptr noundef %132, i32 noundef 5, i32 noundef 5126, ptr noundef @.str.82, ptr noundef %133, i32 noundef %135)
  br label %if.end137

if.end137:                                        ; preds = %if.then132, %land.lhs.true127, %do.body123
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger124) #9
  br label %do.cond138

do.cond138:                                       ; preds = %if.end137
  br label %do.end139

do.end139:                                        ; preds = %do.cond138
  %136 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %136, i32 0, i32 29
  %137 = load ptr, ptr %on_disconnect, align 8, !tbaa !351
  %tobool140 = icmp ne ptr %137, null
  br i1 %tobool140, label %if.then141, label %if.end146

if.then141:                                       ; preds = %do.end139
  %138 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect142 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %138, i32 0, i32 29
  %139 = load ptr, ptr %on_disconnect142, align 8, !tbaa !351
  %140 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base143 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %141, i32 0, i32 30
  %142 = load ptr, ptr %on_disconnect_user_data, align 8, !tbaa !352
  call void %139(ptr noundef %base143, ptr noundef %142)
  %143 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect144 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %143, i32 0, i32 29
  store ptr null, ptr %on_disconnect144, align 8, !tbaa !351
  %144 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_disconnect_user_data145 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %144, i32 0, i32 30
  store ptr null, ptr %on_disconnect_user_data145, align 8, !tbaa !352
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %do.end139
  %145 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_closed = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %145, i32 0, i32 17
  %146 = load ptr, ptr %on_closed, align 8, !tbaa !318
  %tobool147 = icmp ne ptr %146, null
  br i1 %tobool147, label %if.then148, label %if.end151

if.then148:                                       ; preds = %if.end146
  %147 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_closed149 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %147, i32 0, i32 17
  %148 = load ptr, ptr %on_closed149, align 8, !tbaa !318
  %149 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %base150 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %149, i32 0, i32 1
  %150 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %on_closed_user_data = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %150, i32 0, i32 18
  %151 = load ptr, ptr %on_closed_user_data, align 8, !tbaa !319
  call void %148(ptr noundef %base150, ptr noundef null, ptr noundef %151)
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end146
  %152 = load ptr, ptr %adapter.addr, align 8, !tbaa !4
  %adapter_state152 = getelementptr inbounds %struct.aws_mqtt_client_connection_5_impl, ptr %152, i32 0, i32 6
  store i32 2, ptr %adapter_state152, align 4, !tbaa !189
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end151, %if.end121, %if.end89, %if.end42
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #9
  %153 = load i32, ptr %retval, align 4
  ret i32 %153
}

declare void @aws_raise_error_private(i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!9 = !{!"aws_mqtt5_to_mqtt3_adapter_operation_publish", !10, i64 0, !5, i64 128, !5, i64 136, !5, i64 144}
!10 = !{!"aws_mqtt5_to_mqtt3_adapter_operation_base", !5, i64 0, !11, i64 8, !5, i64 32, !5, i64 40, !13, i64 48, !14, i64 56, !6, i64 120, !18, i64 124}
!11 = !{!"aws_ref_count", !12, i64 0, !5, i64 8, !5, i64 16}
!12 = !{!"aws_atomic_var", !5, i64 0}
!13 = !{!"_Bool", !6, i64 0}
!14 = !{!"aws_task", !5, i64 0, !5, i64 8, !15, i64 16, !16, i64 24, !17, i64 40, !5, i64 48, !6, i64 56}
!15 = !{!"long", !6, i64 0}
!16 = !{!"aws_linked_list_node", !5, i64 0, !5, i64 8}
!17 = !{!"aws_priority_queue_node", !15, i64 0}
!18 = !{!"short", !6, i64 0}
!19 = !{!9, !5, i64 32}
!20 = !{!9, !6, i64 120}
!21 = !{!22, !5, i64 0}
!22 = !{!"aws_mqtt5_to_mqtt3_adapter_publish_options", !5, i64 0, !23, i64 8, !6, i64 24, !13, i64 28, !23, i64 32, !5, i64 48, !5, i64 56}
!23 = !{!"aws_byte_cursor", !15, i64 0, !5, i64 8}
!24 = !{!9, !5, i64 40}
!25 = !{!9, !13, i64 48}
!26 = !{i64 0, i64 8, !27, i64 8, i64 8, !4}
!27 = !{!15, !15, i64 0}
!28 = !{!29, !18, i64 16}
!29 = !{!"aws_mqtt5_packet_publish_view", !23, i64 0, !18, i64 16, !6, i64 20, !13, i64 24, !13, i64 25, !23, i64 32, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !15, i64 88, !5, i64 96, !5, i64 104, !15, i64 112, !5, i64 120}
!30 = !{!22, !6, i64 24}
!31 = !{!29, !6, i64 20}
!32 = !{!29, !13, i64 24}
!33 = !{!22, !13, i64 28}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!29, !13, i64 25}
!37 = !{!29, !5, i64 48}
!38 = !{!29, !5, i64 56}
!39 = !{!29, !5, i64 64}
!40 = !{!29, !5, i64 72}
!41 = !{!29, !5, i64 80}
!42 = !{!29, !15, i64 88}
!43 = !{!29, !5, i64 96}
!44 = !{!29, !5, i64 104}
!45 = !{!29, !15, i64 112}
!46 = !{!29, !5, i64 120}
!47 = !{!48, !5, i64 0}
!48 = !{!"aws_mqtt5_publish_completion_options", !5, i64 0, !5, i64 8}
!49 = !{!48, !5, i64 8}
!50 = !{!51, !5, i64 24}
!51 = !{!"aws_mqtt_client_connection_5_impl", !5, i64 0, !52, i64 8, !5, i64 24, !5, i64 32, !5, i64 40, !13, i64 48, !6, i64 52, !11, i64 56, !11, i64 80, !53, i64 104, !54, i64 160, !55, i64 168, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384, !5, i64 392}
!52 = !{!"aws_mqtt_client_connection", !5, i64 0, !5, i64 8}
!53 = !{!"aws_rw_lock", !6, i64 0}
!54 = !{!"", !13, i64 0}
!55 = !{!"aws_mqtt5_to_mqtt3_adapter_operation_table", !56, i64 0, !57, i64 48, !18, i64 56}
!56 = !{!"aws_mutex", !6, i64 0, !13, i64 40}
!57 = !{!"aws_hash_table", !5, i64 0}
!58 = !{!9, !5, i64 128}
!59 = !{!22, !5, i64 48}
!60 = !{!9, !5, i64 136}
!61 = !{!22, !5, i64 56}
!62 = !{!9, !5, i64 144}
!63 = !{!10, !5, i64 32}
!64 = !{!65, !5, i64 408}
!65 = !{!"aws_mqtt5_operation_publish", !66, i64 0, !5, i64 96, !67, i64 104, !48, i64 408}
!66 = !{!"aws_mqtt5_operation", !5, i64 0, !11, i64 8, !15, i64 32, !16, i64 40, !6, i64 56, !5, i64 64, !6, i64 72, !15, i64 80, !5, i64 88}
!67 = !{!"aws_mqtt5_packet_publish_storage", !29, i64 0, !6, i64 128, !68, i64 132, !18, i64 136, !23, i64 144, !23, i64 160, !23, i64 176, !69, i64 192, !70, i64 232, !71, i64 272}
!68 = !{!"int", !6, i64 0}
!69 = !{!"aws_mqtt5_user_property_set", !70, i64 0}
!70 = !{!"aws_array_list", !5, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !5, i64 32}
!71 = !{!"aws_byte_buf", !15, i64 0, !5, i64 8, !15, i64 16, !5, i64 24}
!72 = !{!65, !5, i64 416}
!73 = !{!10, !5, i64 0}
!74 = !{!6, !6, i64 0}
!75 = !{!68, !68, i64 0}
!76 = !{!9, !18, i64 124}
!77 = !{!10, !13, i64 48}
!78 = !{!10, !5, i64 40}
!79 = !{!80, !15, i64 16}
!80 = !{!"aws_mqtt5_to_mqtt3_adapter_subscribe_options", !5, i64 0, !5, i64 8, !15, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!81 = !{!80, !5, i64 8}
!82 = !{!83, !5, i64 0}
!83 = !{!"aws_mqtt5_to_mqtt3_adapter_operation_subscribe", !10, i64 0, !5, i64 128, !70, i64 136, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200}
!84 = !{!83, !5, i64 32}
!85 = !{!83, !6, i64 120}
!86 = !{!80, !5, i64 0}
!87 = !{!83, !5, i64 40}
!88 = !{!83, !13, i64 48}
!89 = !{!80, !5, i64 24}
!90 = !{!83, !5, i64 176}
!91 = !{!80, !5, i64 32}
!92 = !{!83, !5, i64 184}
!93 = !{!80, !5, i64 40}
!94 = !{!83, !5, i64 192}
!95 = !{!80, !5, i64 48}
!96 = !{!83, !5, i64 200}
!97 = !{!98, !6, i64 16}
!98 = !{!"aws_mqtt_topic_subscription", !23, i64 0, !6, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!99 = !{!100, !5, i64 0}
!100 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!101 = !{!102, !5, i64 8}
!102 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!103 = !{!102, !5, i64 0}
!104 = !{!83, !5, i64 128}
!105 = !{!106, !5, i64 272}
!106 = !{!"aws_mqtt5_operation_subscribe", !66, i64 0, !5, i64 96, !107, i64 104, !109, i64 272}
!107 = !{!"aws_mqtt5_packet_subscribe_storage", !108, i64 0, !68, i64 48, !70, i64 56, !69, i64 96, !71, i64 136}
!108 = !{!"aws_mqtt5_packet_subscribe_view", !18, i64 0, !15, i64 8, !5, i64 16, !5, i64 24, !15, i64 32, !5, i64 40}
!109 = !{!"aws_mqtt5_subscribe_completion_options", !5, i64 0, !5, i64 8}
!110 = !{!106, !5, i64 280}
!111 = !{!112, !6, i64 16}
!112 = !{!"aws_mqtt_subscription_set_subscription_options", !23, i64 0, !6, i64 16, !13, i64 20, !13, i64 21, !6, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!113 = !{!112, !13, i64 20}
!114 = !{!112, !13, i64 21}
!115 = !{!112, !6, i64 24}
!116 = !{!98, !5, i64 24}
!117 = !{!112, !5, i64 32}
!118 = !{!98, !5, i64 32}
!119 = !{!112, !5, i64 40}
!120 = !{!98, !5, i64 40}
!121 = !{!112, !5, i64 48}
!122 = !{!123, !6, i64 16}
!123 = !{!"aws_mqtt5_subscription_view", !23, i64 0, !6, i64 16, !13, i64 20, !13, i64 21, !6, i64 24}
!124 = !{!108, !18, i64 0}
!125 = !{!108, !15, i64 8}
!126 = !{!108, !5, i64 16}
!127 = !{!108, !5, i64 24}
!128 = !{!108, !15, i64 32}
!129 = !{!108, !5, i64 40}
!130 = !{!109, !5, i64 0}
!131 = !{!109, !5, i64 8}
!132 = !{!51, !5, i64 232}
!133 = !{!83, !18, i64 124}
!134 = !{!70, !15, i64 16}
!135 = !{!70, !5, i64 32}
!136 = !{!18, !18, i64 0}
!137 = !{!138, !5, i64 8}
!138 = !{!"aws_hash_element", !5, i64 0, !5, i64 8}
!139 = !{!70, !15, i64 24}
!140 = !{!70, !5, i64 0}
!141 = !{!142, !5, i64 0}
!142 = !{!"aws_mqtt5_to_mqtt3_adapter_operation_unsubscribe", !10, i64 0, !5, i64 128, !71, i64 136, !5, i64 168, !5, i64 176}
!143 = !{!142, !5, i64 32}
!144 = !{!142, !6, i64 120}
!145 = !{!146, !5, i64 0}
!146 = !{!"aws_mqtt5_to_mqtt3_adapter_unsubscribe_options", !5, i64 0, !23, i64 8, !5, i64 24, !5, i64 32}
!147 = !{!142, !5, i64 40}
!148 = !{!142, !13, i64 48}
!149 = !{!150, !18, i64 0}
!150 = !{!"aws_mqtt5_packet_unsubscribe_view", !18, i64 0, !15, i64 8, !5, i64 16, !15, i64 24, !5, i64 32}
!151 = !{!150, !15, i64 8}
!152 = !{!150, !5, i64 16}
!153 = !{!150, !15, i64 24}
!154 = !{!150, !5, i64 32}
!155 = !{!156, !5, i64 0}
!156 = !{!"aws_mqtt5_unsubscribe_completion_options", !5, i64 0, !5, i64 8}
!157 = !{!156, !5, i64 8}
!158 = !{!142, !5, i64 128}
!159 = !{!146, !5, i64 24}
!160 = !{!142, !5, i64 168}
!161 = !{!146, !5, i64 32}
!162 = !{!142, !5, i64 176}
!163 = !{!164, !5, i64 256}
!164 = !{!"aws_mqtt5_operation_unsubscribe", !66, i64 0, !5, i64 96, !165, i64 104, !156, i64 256}
!165 = !{!"aws_mqtt5_packet_unsubscribe_storage", !150, i64 0, !70, i64 40, !69, i64 80, !71, i64 120}
!166 = !{!164, !5, i64 264}
!167 = !{!142, !18, i64 124}
!168 = !{!169, !5, i64 0}
!169 = !{!"aws_mqtt5_client", !5, i64 0, !11, i64 8, !5, i64 32, !5, i64 40, !14, i64 48, !15, i64 112, !13, i64 120, !170, i64 128, !5, i64 192, !171, i64 200, !5, i64 232, !6, i64 240, !6, i64 244, !6, i64 248, !172, i64 256, !174, i64 328, !176, i64 432, !5, i64 480, !68, i64 488, !5, i64 496, !177, i64 504, !179, i64 640, !180, i64 672, !183, i64 808, !15, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !15, i64 888, !15, i64 896, !15, i64 904, !13, i64 912, !13, i64 913}
!170 = !{!"aws_mqtt5_negotiated_settings", !6, i64 0, !68, i64 4, !18, i64 8, !68, i64 12, !18, i64 16, !18, i64 18, !18, i64 20, !13, i64 22, !13, i64 23, !13, i64 24, !13, i64 25, !13, i64 26, !71, i64 32}
!171 = !{!"aws_channel_handler", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!172 = !{!"aws_mqtt5_encoder", !173, i64 0, !70, i64 16, !15, i64 56, !5, i64 64}
!173 = !{!"aws_mqtt5_encoder_options", !5, i64 0, !5, i64 8}
!174 = !{!"aws_mqtt5_decoder", !5, i64 0, !175, i64 8, !6, i64 32, !71, i64 40, !6, i64 72, !68, i64 76, !23, i64 80, !5, i64 96}
!175 = !{!"aws_mqtt5_decoder_options", !5, i64 0, !5, i64 8, !5, i64 16}
!176 = !{!"aws_mqtt5_inbound_topic_alias_resolver", !5, i64 0, !70, i64 8}
!177 = !{!"aws_mqtt5_client_operational_state", !5, i64 0, !18, i64 8, !178, i64 16, !5, i64 48, !57, i64 56, !178, i64 64, !178, i64 96, !13, i64 128}
!178 = !{!"aws_linked_list", !16, i64 0, !16, i64 16}
!179 = !{!"aws_mqtt5_client_operation_statistics_impl", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!180 = !{!"aws_mqtt5_client_flow_control_state", !68, i64 0, !181, i64 8, !181, i64 72}
!181 = !{!"aws_rate_limiter_token_bucket", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !182, i64 32}
!182 = !{!"aws_rate_limiter_token_bucket_options", !5, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!183 = !{!"aws_mqtt5_callback_set_manager", !5, i64 0, !178, i64 8, !15, i64 40}
!184 = !{!51, !5, i64 0}
!185 = !{!51, !5, i64 8}
!186 = !{!51, !5, i64 16}
!187 = !{!169, !5, i64 192}
!188 = !{!51, !5, i64 40}
!189 = !{!51, !6, i64 52}
!190 = !{!51, !13, i64 160}
!191 = !{!192, !5, i64 0}
!192 = !{!"aws_mqtt5_listener_config", !5, i64 0, !193, i64 8, !5, i64 40, !5, i64 48}
!193 = !{!"aws_mqtt5_callback_set", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!194 = !{!193, !5, i64 0}
!195 = !{!193, !5, i64 8}
!196 = !{!193, !5, i64 16}
!197 = !{!193, !5, i64 24}
!198 = !{!192, !5, i64 40}
!199 = !{!192, !5, i64 48}
!200 = !{!51, !5, i64 32}
!201 = !{!55, !18, i64 56}
!202 = !{!203, !5, i64 0}
!203 = !{!"aws_mqtt_subscription_set_publish_received_options", !5, i64 0, !23, i64 8, !6, i64 24, !13, i64 28, !13, i64 29, !23, i64 32}
!204 = !{!203, !6, i64 24}
!205 = !{!203, !13, i64 28}
!206 = !{!203, !13, i64 29}
!207 = !{!51, !5, i64 320}
!208 = !{!51, !5, i64 328}
!209 = !{!210, !5, i64 24}
!210 = !{!"aws_mqtt5_client_lifecycle_event", !6, i64 0, !5, i64 8, !68, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!211 = !{!10, !18, i64 124}
!212 = !{!70, !15, i64 8}
!213 = !{!214, !15, i64 32}
!214 = !{!"aws_mqtt5_packet_suback_view", !18, i64 0, !5, i64 8, !15, i64 16, !5, i64 24, !15, i64 32, !5, i64 40}
!215 = !{!214, !5, i64 40}
!216 = !{!217, !5, i64 72}
!217 = !{!"aws_mqtt_subscription_set_subscription_record", !5, i64 0, !71, i64 8, !112, i64 40}
!218 = !{!217, !5, i64 88}
!219 = !{!217, !5, i64 80}
!220 = !{!13, !13, i64 0}
!221 = !{!222, !15, i64 0}
!222 = !{!"aws_mqtt5_client_operation_statistics", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!223 = !{!224, !15, i64 0}
!224 = !{!"aws_mqtt_connection_operation_statistics", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!225 = !{!222, !15, i64 8}
!226 = !{!224, !15, i64 8}
!227 = !{!222, !15, i64 16}
!228 = !{!224, !15, i64 16}
!229 = !{!222, !15, i64 24}
!230 = !{!224, !15, i64 24}
!231 = !{!232, !5, i64 64}
!232 = !{!"aws_mqtt_set_will_task", !14, i64 0, !5, i64 64, !5, i64 72, !71, i64 80, !6, i64 112, !13, i64 116, !71, i64 120}
!233 = !{!232, !5, i64 72}
!234 = !{!232, !6, i64 112}
!235 = !{!232, !13, i64 116}
!236 = !{!169, !5, i64 40}
!237 = !{!238, !5, i64 328}
!238 = !{!"aws_mqtt5_client_options_storage", !5, i64 0, !5, i64 8, !18, i64 16, !5, i64 24, !239, i64 32, !240, i64 56, !5, i64 120, !241, i64 128, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !68, i64 304, !68, i64 308, !242, i64 312, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !243, i64 368}
!239 = !{!"aws_socket_options", !6, i64 0, !6, i64 4, !68, i64 8, !18, i64 12, !18, i64 14, !18, i64 16, !13, i64 18}
!240 = !{!"aws_tls_connection_options", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !13, i64 56, !68, i64 60}
!241 = !{!"aws_http_proxy_options", !6, i64 0, !23, i64 8, !18, i64 24, !5, i64 32, !5, i64 40, !6, i64 48, !23, i64 56, !23, i64 72}
!242 = !{!"aws_mqtt5_client_topic_alias_options", !6, i64 0, !18, i64 4, !6, i64 8, !18, i64 12}
!243 = !{!"aws_host_resolution_config", !5, i64 0, !15, i64 8, !5, i64 16, !15, i64 24}
!244 = !{!245, !5, i64 200}
!245 = !{!"aws_mqtt5_packet_connect_storage", !5, i64 0, !246, i64 8, !23, i64 152, !23, i64 168, !68, i64 184, !6, i64 188, !6, i64 189, !18, i64 190, !18, i64 192, !68, i64 196, !5, i64 200, !68, i64 208, !69, i64 216, !23, i64 256, !23, i64 272, !71, i64 288}
!246 = !{!"aws_mqtt5_packet_connect_view", !18, i64 0, !23, i64 8, !5, i64 24, !5, i64 32, !13, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !15, i64 112, !5, i64 120, !5, i64 128, !5, i64 136}
!247 = !{!245, !5, i64 0}
!248 = !{!245, !5, i64 112}
!249 = !{!250, !5, i64 64}
!250 = !{!"aws_mqtt_set_login_task", !14, i64 0, !5, i64 64, !5, i64 72, !71, i64 80, !71, i64 112}
!251 = !{!250, !5, i64 72}
!252 = !{i64 0, i64 2, !136, i64 8, i64 8, !27, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4, i64 40, i64 1, !220, i64 48, i64 8, !4, i64 56, i64 8, !4, i64 64, i64 8, !4, i64 72, i64 8, !4, i64 80, i64 8, !4, i64 88, i64 8, !4, i64 96, i64 8, !4, i64 104, i64 8, !4, i64 112, i64 8, !27, i64 120, i64 8, !4, i64 128, i64 8, !4, i64 136, i64 8, !4}
!253 = !{!250, !15, i64 80}
!254 = !{!246, !5, i64 24}
!255 = !{!250, !15, i64 112}
!256 = !{!246, !5, i64 32}
!257 = !{!258, !5, i64 64}
!258 = !{!"aws_mqtt_set_use_websockets_task", !14, i64 0, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!259 = !{!258, !5, i64 72}
!260 = !{!258, !5, i64 80}
!261 = !{!258, !5, i64 88}
!262 = !{!51, !5, i64 336}
!263 = !{!51, !5, i64 344}
!264 = !{!238, !5, i64 224}
!265 = !{!238, !5, i64 232}
!266 = !{!267, !5, i64 8}
!267 = !{!"aws_mqtt5_adapter_websocket_handshake_args", !13, i64 0, !5, i64 8, !5, i64 16, !68, i64 24}
!268 = !{!267, !13, i64 0}
!269 = !{!51, !5, i64 352}
!270 = !{!51, !5, i64 360}
!271 = !{!267, !5, i64 16}
!272 = !{!267, !68, i64 24}
!273 = !{!51, !13, i64 48}
!274 = !{!275, !5, i64 64}
!275 = !{!"aws_mqtt_set_http_proxy_options_task", !14, i64 0, !5, i64 64, !5, i64 72, !5, i64 80}
!276 = !{!275, !5, i64 72}
!277 = !{!275, !5, i64 80}
!278 = !{!238, !5, i64 216}
!279 = !{!280, !5, i64 64}
!280 = !{!"aws_mqtt_set_host_resolution_task", !14, i64 0, !5, i64 64, !5, i64 72, !243, i64 80}
!281 = !{!280, !5, i64 72}
!282 = !{i64 0, i64 8, !4, i64 8, i64 8, !27, i64 16, i64 8, !4, i64 24, i64 8, !27}
!283 = !{!284, !5, i64 64}
!284 = !{!"aws_mqtt_set_reconnect_timeout_task", !14, i64 0, !5, i64 64, !5, i64 72, !15, i64 80, !15, i64 88}
!285 = !{!284, !5, i64 72}
!286 = !{!284, !15, i64 80}
!287 = !{!284, !15, i64 88}
!288 = !{!238, !15, i64 272}
!289 = !{!238, !15, i64 280}
!290 = !{!169, !15, i64 888}
!291 = !{!292, !5, i64 64}
!292 = !{!"aws_mqtt_set_interruption_handlers_task", !14, i64 0, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104}
!293 = !{!292, !5, i64 72}
!294 = !{!292, !5, i64 80}
!295 = !{!292, !5, i64 88}
!296 = !{!292, !5, i64 96}
!297 = !{!292, !5, i64 104}
!298 = !{!51, !5, i64 240}
!299 = !{!51, !5, i64 248}
!300 = !{!51, !5, i64 256}
!301 = !{!51, !5, i64 264}
!302 = !{!303, !5, i64 64}
!303 = !{!"aws_mqtt_set_connection_result_handlers_task", !14, i64 0, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104}
!304 = !{!303, !5, i64 72}
!305 = !{!303, !5, i64 80}
!306 = !{!303, !5, i64 88}
!307 = !{!303, !5, i64 96}
!308 = !{!303, !5, i64 104}
!309 = !{!51, !5, i64 288}
!310 = !{!51, !5, i64 296}
!311 = !{!51, !5, i64 304}
!312 = !{!51, !5, i64 312}
!313 = !{!314, !5, i64 64}
!314 = !{!"aws_mqtt_set_on_closed_handler_task", !14, i64 0, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!315 = !{!314, !5, i64 72}
!316 = !{!314, !5, i64 80}
!317 = !{!314, !5, i64 88}
!318 = !{!51, !5, i64 272}
!319 = !{!51, !5, i64 280}
!320 = !{!321, !5, i64 64}
!321 = !{!"aws_mqtt_set_on_any_publish_handler_task", !14, i64 0, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!322 = !{!321, !5, i64 72}
!323 = !{!321, !5, i64 80}
!324 = !{!321, !5, i64 88}
!325 = !{!326, !15, i64 0}
!326 = !{!"aws_mqtt_connection_options", !23, i64 0, !18, i64 16, !5, i64 24, !5, i64 32, !23, i64 40, !18, i64 56, !68, i64 60, !68, i64 64, !5, i64 72, !5, i64 80, !13, i64 88}
!327 = !{!326, !5, i64 24}
!328 = !{!239, !6, i64 0}
!329 = !{!239, !68, i64 8}
!330 = !{!326, !18, i64 56}
!331 = !{!326, !68, i64 60}
!332 = !{!333, !5, i64 64}
!333 = !{!"aws_mqtt_adapter_connect_task", !14, i64 0, !5, i64 64, !5, i64 72, !71, i64 80, !18, i64 112, !239, i64 116, !5, i64 136, !240, i64 144, !71, i64 208, !18, i64 240, !68, i64 244, !68, i64 248, !5, i64 256, !5, i64 264, !13, i64 272}
!334 = !{!326, !18, i64 16}
!335 = !{!333, !18, i64 112}
!336 = !{i64 0, i64 4, !74, i64 4, i64 4, !74, i64 8, i64 4, !75, i64 12, i64 2, !136, i64 14, i64 2, !136, i64 16, i64 2, !136, i64 18, i64 1, !220}
!337 = !{!326, !5, i64 32}
!338 = !{!333, !5, i64 136}
!339 = !{!333, !5, i64 152}
!340 = !{!333, !5, i64 72}
!341 = !{!333, !18, i64 240}
!342 = !{!333, !68, i64 244}
!343 = !{!326, !68, i64 64}
!344 = !{!333, !68, i64 248}
!345 = !{!326, !5, i64 72}
!346 = !{!333, !5, i64 256}
!347 = !{!326, !5, i64 80}
!348 = !{!333, !5, i64 264}
!349 = !{!326, !13, i64 88}
!350 = !{!333, !13, i64 272}
!351 = !{!51, !5, i64 368}
!352 = !{!51, !5, i64 376}
!353 = !{!51, !5, i64 384}
!354 = !{!51, !5, i64 392}
!355 = !{!238, !5, i64 8}
!356 = !{!238, !18, i64 16}
!357 = !{!238, !5, i64 120}
!358 = !{!245, !18, i64 8}
!359 = !{!238, !68, i64 304}
!360 = !{!238, !15, i64 296}
!361 = !{!238, !6, i64 256}
!362 = !{!245, !5, i64 56}
!363 = !{!245, !68, i64 184}
!364 = !{!365, !5, i64 64}
!365 = !{!"aws_mqtt_adapter_disconnect_task", !14, i64 0, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!366 = !{!365, !5, i64 72}
!367 = !{!365, !5, i64 80}
!368 = !{!365, !5, i64 88}
!369 = !{!169, !6, i64 240}
!370 = !{!371, !5, i64 64}
!371 = !{!"aws_mqtt_adapter_final_destroy_task", !14, i64 0, !5, i64 64, !5, i64 72}
!372 = !{!371, !5, i64 72}
!373 = !{!52, !5, i64 8}
!374 = !{!210, !6, i64 0}
!375 = !{!210, !5, i64 40}
!376 = !{!170, !13, i64 26}
!377 = !{!210, !68, i64 16}

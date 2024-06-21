; ModuleID = 'samples/756.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-auth/source/credentials_provider_sts_web_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_credentials_provider_vtable = type { ptr, ptr }
%struct.anon = type { ptr, i64, [19 x i8] }
%struct.anon.0 = type { ptr, i64, [13 x i8] }
%struct.anon.1 = type { ptr, i64, [22 x i8] }
%struct.anon.2 = type { ptr, i64, [28 x i8] }
%struct.anon.3 = type { ptr, i64, [7 x i8] }
%struct.anon.4 = type { ptr, i64, [9 x i8] }
%struct.anon.5 = type { ptr, i64, [18 x i8] }
%struct.anon.6 = type { ptr, i64, [24 x i8] }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.anon.7 = type { ptr, i64, [4 x i8] }
%struct.aws_http_header = type { %struct.aws_byte_cursor, %struct.aws_byte_cursor, i32 }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_string = type { ptr, i64, [1 x i8] }
%struct.aws_tls_connection_options = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.aws_socket_options = type { i32, i32, i32, i16, i16, i16, i8 }
%struct.aws_http_connection_manager_options = type { ptr, i64, ptr, ptr, i8, ptr, %struct.aws_byte_cursor, i16, ptr, i64, i64, i8, ptr, ptr, i64, ptr, ptr, i8, i64 }
%struct.aws_credentials_provider_sts_web_identity_options = type { %struct.aws_credentials_provider_shutdown_options, ptr, ptr, ptr, ptr }
%struct.aws_credentials_provider_shutdown_options = type { ptr, ptr }
%struct.sts_web_identity_parameters = type { ptr, %struct.aws_byte_buf, %struct.aws_byte_buf, %struct.aws_byte_buf, %struct.aws_byte_buf }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.aws_credentials_provider_sts_web_identity_impl = type { ptr, ptr, ptr, ptr, ptr }
%struct.aws_auth_http_system_vtable = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aws_credentials_provider = type { ptr, ptr, %struct.aws_credentials_provider_shutdown_options, ptr, %struct.aws_atomic_var }
%struct.aws_atomic_var = type { ptr }
%struct.aws_uuid = type { [16 x i8] }
%struct.sts_web_identity_user_data = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.aws_byte_buf, ptr, ptr, ptr, i64, %struct.aws_byte_buf, i32, i32, i32 }
%struct.aws_xml_parser_options = type { %struct.aws_byte_cursor, i64, ptr, ptr }
%struct.aws_date_time = type { i64, i16, [6 x i8], %struct.tm, %struct.tm, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.aws_http_make_request_options = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@.str = private unnamed_addr constant [87 x i8] c"Failed to resolve config file path during sts web identity provider initialization: %s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Successfully built config profile collection from file at (%s)\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Failed to build config profile collection from file at (%s) : %s\00", align 1
@s_aws_credentials_provider_sts_web_identity_vtable = internal global %struct.aws_credentials_provider_vtable { ptr @s_credentials_provider_sts_web_identity_get_credentials_async, ptr @s_credentials_provider_sts_web_identity_destroy }, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"a TLS context must be provided to the STS web identity credentials provider\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"(id=%p): failed to create a tls connection options with error %s\00", align 1
@g_aws_credentials_provider_http_function_table = external global ptr, align 8
@s_region_env = internal global ptr @s_region_env_s, align 8
@s_role_arn_env = internal global ptr @s_role_arn_env_s, align 8
@s_role_session_name_env = internal global ptr @s_role_session_name_env_s, align 8
@s_token_file_path_env = internal global ptr @s_token_file_path_env_s, align 8
@.str.5 = private unnamed_addr constant [110 x i8] c"Failed to resolve either region, role arn or token file path during sts web identity provider initialization.\00", align 1
@s_region_config = internal global ptr @s_region_config_s, align 8
@s_role_arn_config = internal global ptr @s_role_arn_config_s, align 8
@s_role_session_name_config = internal global ptr @s_role_session_name_config_s, align 8
@s_token_file_path_config = internal global ptr @s_token_file_path_config_s, align 8
@s_sts_service_name = internal global ptr @s_sts_service_name_s, align 8
@.str.6 = private unnamed_addr constant [67 x i8] c"Failed to construct sts endpoint with, probably region is missing.\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"Failed to resolve role arn during sts web identity provider initialization.\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"Failed to resolve token file path during sts web identity provider initialization.\00", align 1
@.str.9 = private unnamed_addr constant [87 x i8] c"Successfully loaded all required parameters for sts web identity credentials provider.\00", align 1
@s_region_env_s = internal constant %struct.anon { ptr null, i64 18, [19 x i8] c"AWS_DEFAULT_REGION\00" }, align 8
@s_role_arn_env_s = internal constant %struct.anon.0 { ptr null, i64 12, [13 x i8] c"AWS_ROLE_ARN\00" }, align 8
@s_role_session_name_env_s = internal constant %struct.anon.1 { ptr null, i64 21, [22 x i8] c"AWS_ROLE_SESSION_NAME\00" }, align 8
@s_token_file_path_env_s = internal constant %struct.anon.2 { ptr null, i64 27, [28 x i8] c"AWS_WEB_IDENTITY_TOKEN_FILE\00" }, align 8
@s_region_config_s = internal constant %struct.anon.3 { ptr null, i64 6, [7 x i8] c"region\00" }, align 8
@s_role_arn_config_s = internal constant %struct.anon.4 { ptr null, i64 8, [9 x i8] c"role_arn\00" }, align 8
@s_role_session_name_config_s = internal constant %struct.anon.5 { ptr null, i64 17, [18 x i8] c"role_session_name\00" }, align 8
@s_token_file_path_config_s = internal constant %struct.anon.6 { ptr null, i64 23, [24 x i8] c"web_identity_token_file\00" }, align 8
@s_dot_cursor = internal global %struct.aws_byte_cursor { i64 1, ptr @.str.12 }, align 8
@s_amazonaws_cursor = internal global %struct.aws_byte_cursor { i64 14, ptr @.str.13 }, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"cn-north-1\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"cn-northwest-1\00", align 1
@s_cn_cursor = internal global %struct.aws_byte_cursor { i64 3, ptr @.str.14 }, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c".amazonaws.com\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c".cn\00", align 1
@s_sts_service_name_s = internal constant %struct.anon.7 { ptr null, i64 3, [4 x i8] c"sts\00" }, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"Failed to initiate an uuid struct: %s\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Failed to stringify uuid: %s\00", align 1
@.str.17 = private unnamed_addr constant [89 x i8] c"Failed to generate role session name during sts web identity provider initialization: %s\00", align 1
@.str.18 = private unnamed_addr constant [83 x i8] c"id=%p: STS_WEB_IDENTITY provider failed to acquire a connection, error code %d(%s)\00", align 1
@.str.19 = private unnamed_addr constant [79 x i8] c"(id=%p) STS_WEB_IDENTITY credentials provider successfully queried credentials\00", align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"(id=%p) STS_WEB_IDENTITY credentials provider failed to query credentials\00", align 1
@.str.21 = private unnamed_addr constant [94 x i8] c"Failed to get sys clock for sts web identity credentials provider to parse error information.\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"Failed to parse xml response for sts web identity with error: %s\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"STS web identity not found in XML response.\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Failed to create credentials for sts web identity\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"AssumeRoleWithWebIdentityResponse\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"AssumeRoleWithWebIdentityResult\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Credentials\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"AccessKeyId\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"SecretAccessKey\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"SessionToken\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Expiration\00", align 1
@.str.32 = private unnamed_addr constant [67 x i8] c"Failed to parse time string from sts web identity xml response: %s\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"user_data->connection\00", align 1
@.str.34 = private unnamed_addr constant [225 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-auth/source/credentials_provider_sts_web_identity.c\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"Action=AssumeRoleWithWebIdentity&Version=2011-06-15&RoleArn=\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"&RoleSessionName=\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"&WebIdentityToken=\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@s_content_length = internal global %struct.aws_byte_cursor { i64 14, ptr @.str.39 }, align 8
@s_content_type_header = internal global %struct.aws_http_header { %struct.aws_byte_cursor { i64 12, ptr @.str.40 }, %struct.aws_byte_cursor { i64 33, ptr @.str.41 }, i32 0 }, align 8
@s_host_header = internal global %struct.aws_http_header { %struct.aws_byte_cursor { i64 4, ptr @.str.42 }, %struct.aws_byte_cursor { i64 17, ptr @.str.43 }, i32 0 }, align 8
@s_api_version_header = internal global %struct.aws_http_header { %struct.aws_byte_cursor { i64 17, ptr @.str.44 }, %struct.aws_byte_cursor { i64 10, ptr @.str.45 }, i32 0 }, align 8
@s_accept_header = internal global %struct.aws_http_header { %struct.aws_byte_cursor { i64 6, ptr @.str.46 }, %struct.aws_byte_cursor { i64 3, ptr @.str.47 }, i32 0 }, align 8
@s_user_agent_header = internal global %struct.aws_http_header { %struct.aws_byte_cursor { i64 10, ptr @.str.48 }, %struct.aws_byte_cursor { i64 49, ptr @.str.49 }, i32 0 }, align 8
@s_keep_alive_header = internal global %struct.aws_http_header { %struct.aws_byte_cursor { i64 10, ptr @.str.50 }, %struct.aws_byte_cursor { i64 10, ptr @.str.51 }, i32 0 }, align 8
@s_path = internal global %struct.aws_byte_cursor { i64 1, ptr @.str.52 }, align 8
@aws_http_method_post = external constant %struct.aws_byte_cursor, align 8
@.str.39 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"application/x-www-form-urlencoded\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"sts.amazonaws.com\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"x-amz-api-version\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"2011-06-15\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"*/*\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"aws-sdk-crt/sts-web-identity-credentials-provider\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.53 = private unnamed_addr constant [81 x i8] c"(id=%p) STS_WEB_IDENTITY credentials provider failed to get http status code: %s\00", align 1
@.str.54 = private unnamed_addr constant [81 x i8] c"(id=%p) STS_WEB_IDENTITY credentials provider query received http status code %d\00", align 1
@.str.55 = private unnamed_addr constant [74 x i8] c"(id=%p) STS_WEB_IDENTITY credentials provider received %zu response bytes\00", align 1
@.str.56 = private unnamed_addr constant [93 x i8] c"(id=%p) STS_WEB_IDENTITY credentials provider query response exceeded maximum allowed length\00", align 1
@.str.57 = private unnamed_addr constant [81 x i8] c"(id=%p) STS_WEB_IDENTITY credentials provider query error appending response: %s\00", align 1
@.str.58 = private unnamed_addr constant [70 x i8] c"Failed to parse xml error response for sts web identity with error %s\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Code\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"IDPCommunicationError\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"InvalidIdentityToken\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"old_frequency > 0 && new_frequency > 0\00", align 1
@.str.64 = private unnamed_addr constant [209 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/clock.inl\00", align 1

; Function Attrs: nounwind uwtable
define ptr @s_load_profile(ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config_profiles = alloca ptr, align 8
  %config_file_path = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger14 = alloca ptr, align 8
  %logger31 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %config_profiles) #9
  store ptr null, ptr %config_profiles, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %config_file_path) #9
  store ptr null, ptr %config_file_path, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_get_config_file_path(ptr noundef %0, ptr noundef null)
  store ptr %call, ptr %config_file_path, align 8, !tbaa !4
  %1 = load ptr, ptr %config_file_path, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
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
  %call2 = call i32 %5(ptr noundef %6, i32 noundef 6146)
  %cmp3 = icmp uge i32 %call2, 2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable5, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call6 = call i32 @aws_last_error()
  %call7 = call ptr @aws_error_str(i32 noundef %call6)
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 2, i32 noundef 6146, ptr noundef @.str, ptr noundef %call7)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end9:                                          ; preds = %entry
  %11 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %config_file_path, align 8, !tbaa !4
  %call10 = call ptr @aws_profile_collection_new_from_file(ptr noundef %11, ptr noundef %12, i32 noundef 1)
  store ptr %call10, ptr %config_profiles, align 8, !tbaa !4
  %13 = load ptr, ptr %config_profiles, align 8, !tbaa !4
  %cmp11 = icmp ne ptr %13, null
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger14) #9
  %call15 = call ptr @aws_logger_get()
  store ptr %call15, ptr %logger14, align 8, !tbaa !4
  %14 = load ptr, ptr %logger14, align 8, !tbaa !4
  %cmp16 = icmp ne ptr %14, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end27

land.lhs.true17:                                  ; preds = %do.body13
  %15 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable18, align 8, !tbaa !8
  %get_log_level19 = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %get_log_level19, align 8, !tbaa !10
  %18 = load ptr, ptr %logger14, align 8, !tbaa !4
  %call20 = call i32 %17(ptr noundef %18, i32 noundef 6146)
  %cmp21 = icmp uge i32 %call20, 5
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %land.lhs.true17
  %19 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable23, align 8, !tbaa !8
  %log24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %log24, align 8, !tbaa !12
  %22 = load ptr, ptr %logger14, align 8, !tbaa !4
  %23 = load ptr, ptr %config_file_path, align 8, !tbaa !4
  %call25 = call ptr @aws_string_c_str(ptr noundef %23)
  %call26 = call i32 (ptr, i32, i32, ptr, ...) %21(ptr noundef %22, i32 noundef 5, i32 noundef 6146, ptr noundef @.str.1, ptr noundef %call25)
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %land.lhs.true17, %do.body13
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger14) #9
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %if.end49

if.else:                                          ; preds = %if.end9
  br label %do.body30

do.body30:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger31) #9
  %call32 = call ptr @aws_logger_get()
  store ptr %call32, ptr %logger31, align 8, !tbaa !4
  %24 = load ptr, ptr %logger31, align 8, !tbaa !4
  %cmp33 = icmp ne ptr %24, null
  br i1 %cmp33, label %land.lhs.true34, label %if.end46

land.lhs.true34:                                  ; preds = %do.body30
  %25 = load ptr, ptr %logger31, align 8, !tbaa !4
  %vtable35 = getelementptr inbounds %struct.aws_logger, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %vtable35, align 8, !tbaa !8
  %get_log_level36 = getelementptr inbounds %struct.aws_logger_vtable, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %get_log_level36, align 8, !tbaa !10
  %28 = load ptr, ptr %logger31, align 8, !tbaa !4
  %call37 = call i32 %27(ptr noundef %28, i32 noundef 6146)
  %cmp38 = icmp uge i32 %call37, 2
  br i1 %cmp38, label %if.then39, label %if.end46

if.then39:                                        ; preds = %land.lhs.true34
  %29 = load ptr, ptr %logger31, align 8, !tbaa !4
  %vtable40 = getelementptr inbounds %struct.aws_logger, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %vtable40, align 8, !tbaa !8
  %log41 = getelementptr inbounds %struct.aws_logger_vtable, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %log41, align 8, !tbaa !12
  %32 = load ptr, ptr %logger31, align 8, !tbaa !4
  %33 = load ptr, ptr %config_file_path, align 8, !tbaa !4
  %call42 = call ptr @aws_string_c_str(ptr noundef %33)
  %call43 = call i32 @aws_last_error()
  %call44 = call ptr @aws_error_str(i32 noundef %call43)
  %call45 = call i32 (ptr, i32, i32, ptr, ...) %31(ptr noundef %32, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.2, ptr noundef %call42, ptr noundef %call44)
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %land.lhs.true34, %do.body30
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger31) #9
  br label %do.cond47

do.cond47:                                        ; preds = %if.end46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %on_error

if.end49:                                         ; preds = %do.end29
  %34 = load ptr, ptr %config_file_path, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %34)
  %35 = load ptr, ptr %config_profiles, align 8, !tbaa !4
  store ptr %35, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %do.end48, %do.end
  %36 = load ptr, ptr %config_file_path, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %36)
  %37 = load ptr, ptr %config_profiles, align 8, !tbaa !4
  call void @aws_profile_collection_destroy(ptr noundef %37)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end49
  call void @llvm.lifetime.end.p0(i64 8, ptr %config_file_path) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %config_profiles) #9
  %38 = load ptr, ptr %retval, align 8
  ret ptr %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @aws_get_config_file_path(ptr noundef, ptr noundef) #2

declare ptr @aws_logger_get() #2

declare ptr @aws_error_str(i32 noundef) #2

declare i32 @aws_last_error() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @aws_profile_collection_new_from_file(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @aws_string_c_str(ptr noundef %str) #3 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %bytes = getelementptr inbounds %struct.aws_string, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], ptr %bytes, i64 0, i64 0
  ret ptr %arraydecay
}

declare void @aws_string_destroy(ptr noundef) #2

declare void @aws_profile_collection_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_credentials_provider_new_sts_web_identity(ptr noundef %allocator, ptr noundef %options) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %parameters = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tls_connection_options = alloca %struct.aws_tls_connection_options, align 8
  %provider = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %host = alloca %struct.aws_byte_cursor, align 8
  %logger31 = alloca ptr, align 8
  %socket_options = alloca %struct.aws_socket_options, align 4
  %manager_options = alloca %struct.aws_http_connection_manager_options, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %parameters) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %config_profile_collection_cached = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_options, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %config_profile_collection_cached, align 8, !tbaa !13
  %call = call ptr @s_parameters_new(ptr noundef %0, ptr noundef %2)
  store ptr %call, ptr %parameters, align 8, !tbaa !4
  %3 = load ptr, ptr %parameters, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup105

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr %tls_connection_options) #9
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %tls_connection_options, i8 0, i64 64, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %provider) #9
  store ptr null, ptr %provider, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  store ptr null, ptr %impl, align 8, !tbaa !4
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call1 = call ptr (ptr, i64, ...) @aws_mem_acquire_many(ptr noundef %4, i64 noundef 2, ptr noundef %provider, i64 noundef 48, ptr noundef %impl, i64 noundef 40)
  %5 = load ptr, ptr %provider, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.end
  br label %on_error

if.end4:                                          ; preds = %do.end
  br label %do.body5

do.body5:                                         ; preds = %if.end4
  %6 = load ptr, ptr %provider, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 48, i1 false)
  br label %do.cond6

do.cond6:                                         ; preds = %do.body5
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  %7 = load ptr, ptr %impl, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 40, i1 false)
  br label %do.cond9

do.cond9:                                         ; preds = %do.body8
  br label %do.end10

do.end10:                                         ; preds = %do.cond9
  %8 = load ptr, ptr %provider, align 8, !tbaa !4
  %9 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %impl, align 8, !tbaa !4
  call void @aws_credentials_provider_init_base(ptr noundef %8, ptr noundef %9, ptr noundef @s_aws_credentials_provider_sts_web_identity_vtable, ptr noundef %10)
  %11 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %tls_ctx = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_options, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %tls_ctx, align 8, !tbaa !16
  %tobool11 = icmp ne ptr %12, null
  br i1 %tobool11, label %if.end24, label %if.then12

if.then12:                                        ; preds = %do.end10
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call14 = call ptr @aws_logger_get()
  store ptr %call14, ptr %logger, align 8, !tbaa !4
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %13, null
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %do.body13
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %17 = load ptr, ptr %logger, align 8, !tbaa !4
  %call15 = call i32 %16(ptr noundef %17, i32 noundef 6146)
  %cmp16 = icmp uge i32 %call15, 2
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vtable18, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %log, align 8, !tbaa !12
  %21 = load ptr, ptr %logger, align 8, !tbaa !4
  %call19 = call i32 (ptr, i32, i32, ptr, ...) %20(ptr noundef %21, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.3)
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true, %do.body13
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond21

do.cond21:                                        ; preds = %if.end20
  br label %do.end22

do.end22:                                         ; preds = %do.cond21
  %call23 = call i32 @aws_raise_error(i32 noundef 34)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %do.end10
  %22 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %tls_ctx25 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_options, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %tls_ctx25, align 8, !tbaa !16
  call void @aws_tls_connection_options_init_from_ctx(ptr noundef %tls_connection_options, ptr noundef %23)
  %24 = load ptr, ptr %parameters, align 8, !tbaa !4
  %endpoint = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %24, i32 0, i32 1
  %call26 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %endpoint)
  %25 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 0
  %26 = extractvalue { i64, ptr } %call26, 0
  store i64 %26, ptr %25, align 8
  %27 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 1
  %28 = extractvalue { i64, ptr } %call26, 1
  store ptr %28, ptr %27, align 8
  %29 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call27 = call i32 @aws_tls_connection_options_set_server_name(ptr noundef %tls_connection_options, ptr noundef %29, ptr noundef %host)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end48

if.then29:                                        ; preds = %if.end24
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger31) #9
  %call32 = call ptr @aws_logger_get()
  store ptr %call32, ptr %logger31, align 8, !tbaa !4
  %30 = load ptr, ptr %logger31, align 8, !tbaa !4
  %cmp33 = icmp ne ptr %30, null
  br i1 %cmp33, label %land.lhs.true34, label %if.end45

land.lhs.true34:                                  ; preds = %do.body30
  %31 = load ptr, ptr %logger31, align 8, !tbaa !4
  %vtable35 = getelementptr inbounds %struct.aws_logger, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %vtable35, align 8, !tbaa !8
  %get_log_level36 = getelementptr inbounds %struct.aws_logger_vtable, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %get_log_level36, align 8, !tbaa !10
  %34 = load ptr, ptr %logger31, align 8, !tbaa !4
  %call37 = call i32 %33(ptr noundef %34, i32 noundef 6146)
  %cmp38 = icmp uge i32 %call37, 2
  br i1 %cmp38, label %if.then39, label %if.end45

if.then39:                                        ; preds = %land.lhs.true34
  %35 = load ptr, ptr %logger31, align 8, !tbaa !4
  %vtable40 = getelementptr inbounds %struct.aws_logger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vtable40, align 8, !tbaa !8
  %log41 = getelementptr inbounds %struct.aws_logger_vtable, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %log41, align 8, !tbaa !12
  %38 = load ptr, ptr %logger31, align 8, !tbaa !4
  %39 = load ptr, ptr %provider, align 8, !tbaa !4
  %call42 = call i32 @aws_last_error()
  %call43 = call ptr @aws_error_str(i32 noundef %call42)
  %call44 = call i32 (ptr, i32, i32, ptr, ...) %37(ptr noundef %38, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.4, ptr noundef %39, ptr noundef %call43)
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %land.lhs.true34, %do.body30
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger31) #9
  br label %do.cond46

do.cond46:                                        ; preds = %if.end45
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  br label %on_error

if.end48:                                         ; preds = %if.end24
  br label %do.body49

do.body49:                                        ; preds = %if.end48
  call void @llvm.memset.p0.i64(ptr align 4 %socket_options, i8 0, i64 20, i1 false)
  br label %do.cond50

do.cond50:                                        ; preds = %do.body49
  br label %do.end51

do.end51:                                         ; preds = %do.cond50
  %type = getelementptr inbounds %struct.aws_socket_options, ptr %socket_options, i32 0, i32 0
  store i32 0, ptr %type, align 4, !tbaa !17
  %domain = getelementptr inbounds %struct.aws_socket_options, ptr %socket_options, i32 0, i32 1
  store i32 0, ptr %domain, align 4, !tbaa !22
  %call52 = call i64 @aws_timestamp_convert(i64 noundef 2, i32 noundef 1, i32 noundef 1000, ptr noundef null)
  %conv = trunc i64 %call52 to i32
  %connect_timeout_ms = getelementptr inbounds %struct.aws_socket_options, ptr %socket_options, i32 0, i32 2
  store i32 %conv, ptr %connect_timeout_ms, align 4, !tbaa !23
  br label %do.body53

do.body53:                                        ; preds = %do.end51
  call void @llvm.memset.p0.i64(ptr align 8 %manager_options, i8 0, i64 160, i1 false)
  br label %do.cond54

do.cond54:                                        ; preds = %do.body53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  %40 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %bootstrap = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_options, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %bootstrap, align 8, !tbaa !24
  %bootstrap56 = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 0
  store ptr %41, ptr %bootstrap56, align 8, !tbaa !25
  %initial_window_size = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 1
  store i64 10000, ptr %initial_window_size, align 8, !tbaa !29
  %socket_options57 = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 2
  store ptr %socket_options, ptr %socket_options57, align 8, !tbaa !30
  %host58 = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %host58, ptr align 8 %host, i64 16, i1 false), !tbaa.struct !31
  %port = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 7
  store i16 443, ptr %port, align 8, !tbaa !33
  %max_connections = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 14
  store i64 2, ptr %max_connections, align 8, !tbaa !34
  %shutdown_complete_callback = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 16
  store ptr @s_on_connection_manager_shutdown, ptr %shutdown_complete_callback, align 8, !tbaa !35
  %42 = load ptr, ptr %provider, align 8, !tbaa !4
  %shutdown_complete_user_data = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 15
  store ptr %42, ptr %shutdown_complete_user_data, align 8, !tbaa !36
  %tls_connection_options59 = getelementptr inbounds %struct.aws_http_connection_manager_options, ptr %manager_options, i32 0, i32 3
  store ptr %tls_connection_options, ptr %tls_connection_options59, align 8, !tbaa !37
  %43 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_options, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %function_table, align 8, !tbaa !38
  %45 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table60 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %45, i32 0, i32 1
  store ptr %44, ptr %function_table60, align 8, !tbaa !39
  %46 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table61 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %function_table61, align 8, !tbaa !39
  %cmp62 = icmp eq ptr %47, null
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %do.end55
  %48 = load ptr, ptr @g_aws_credentials_provider_http_function_table, align 8, !tbaa !4
  %49 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table65 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %49, i32 0, i32 1
  store ptr %48, ptr %function_table65, align 8, !tbaa !39
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %do.end55
  %50 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table67 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %function_table67, align 8, !tbaa !39
  %aws_http_connection_manager_new = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %aws_http_connection_manager_new, align 8, !tbaa !41
  %53 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call68 = call ptr %52(ptr noundef %53, ptr noundef %manager_options)
  %54 = load ptr, ptr %impl, align 8, !tbaa !4
  %connection_manager = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %54, i32 0, i32 0
  store ptr %call68, ptr %connection_manager, align 8, !tbaa !43
  %55 = load ptr, ptr %impl, align 8, !tbaa !4
  %connection_manager69 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %connection_manager69, align 8, !tbaa !43
  %cmp70 = icmp eq ptr %56, null
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end66
  br label %on_error

if.end73:                                         ; preds = %if.end66
  %57 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %parameters, align 8, !tbaa !4
  %role_arn = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %58, i32 0, i32 2
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %role_arn, i32 0, i32 1
  %59 = load ptr, ptr %buffer, align 8, !tbaa !44
  %60 = load ptr, ptr %parameters, align 8, !tbaa !4
  %role_arn74 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %60, i32 0, i32 2
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %role_arn74, i32 0, i32 0
  %61 = load i64, ptr %len, align 8, !tbaa !47
  %call75 = call ptr @aws_string_new_from_array(ptr noundef %57, ptr noundef %59, i64 noundef %61)
  %62 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_arn76 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %62, i32 0, i32 2
  store ptr %call75, ptr %role_arn76, align 8, !tbaa !48
  %63 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_arn77 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %role_arn77, align 8, !tbaa !48
  %cmp78 = icmp eq ptr %64, null
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end73
  br label %on_error

if.end81:                                         ; preds = %if.end73
  %65 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %parameters, align 8, !tbaa !4
  %role_session_name = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %66, i32 0, i32 3
  %buffer82 = getelementptr inbounds %struct.aws_byte_buf, ptr %role_session_name, i32 0, i32 1
  %67 = load ptr, ptr %buffer82, align 8, !tbaa !49
  %68 = load ptr, ptr %parameters, align 8, !tbaa !4
  %role_session_name83 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %68, i32 0, i32 3
  %len84 = getelementptr inbounds %struct.aws_byte_buf, ptr %role_session_name83, i32 0, i32 0
  %69 = load i64, ptr %len84, align 8, !tbaa !50
  %call85 = call ptr @aws_string_new_from_array(ptr noundef %65, ptr noundef %67, i64 noundef %69)
  %70 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_session_name86 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %70, i32 0, i32 3
  store ptr %call85, ptr %role_session_name86, align 8, !tbaa !51
  %71 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_session_name87 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %71, i32 0, i32 3
  %72 = load ptr, ptr %role_session_name87, align 8, !tbaa !51
  %cmp88 = icmp eq ptr %72, null
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end81
  br label %on_error

if.end91:                                         ; preds = %if.end81
  %73 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %parameters, align 8, !tbaa !4
  %token_file_path = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %74, i32 0, i32 4
  %buffer92 = getelementptr inbounds %struct.aws_byte_buf, ptr %token_file_path, i32 0, i32 1
  %75 = load ptr, ptr %buffer92, align 8, !tbaa !52
  %76 = load ptr, ptr %parameters, align 8, !tbaa !4
  %token_file_path93 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %76, i32 0, i32 4
  %len94 = getelementptr inbounds %struct.aws_byte_buf, ptr %token_file_path93, i32 0, i32 0
  %77 = load i64, ptr %len94, align 8, !tbaa !53
  %call95 = call ptr @aws_string_new_from_array(ptr noundef %73, ptr noundef %75, i64 noundef %77)
  %78 = load ptr, ptr %impl, align 8, !tbaa !4
  %token_file_path96 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %78, i32 0, i32 4
  store ptr %call95, ptr %token_file_path96, align 8, !tbaa !54
  %79 = load ptr, ptr %impl, align 8, !tbaa !4
  %token_file_path97 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %79, i32 0, i32 4
  %80 = load ptr, ptr %token_file_path97, align 8, !tbaa !54
  %cmp98 = icmp eq ptr %80, null
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end91
  br label %on_error

if.end101:                                        ; preds = %if.end91
  %81 = load ptr, ptr %provider, align 8, !tbaa !4
  %shutdown_options = getelementptr inbounds %struct.aws_credentials_provider, ptr %81, i32 0, i32 2
  %82 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %shutdown_options102 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_options, ptr %82, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %shutdown_options, ptr align 8 %shutdown_options102, i64 16, i1 false), !tbaa.struct !55
  %83 = load ptr, ptr %parameters, align 8, !tbaa !4
  call void @s_parameters_destroy(ptr noundef %83)
  call void @aws_tls_connection_options_clean_up(ptr noundef %tls_connection_options)
  %84 = load ptr, ptr %provider, align 8, !tbaa !4
  store ptr %84, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then100, %if.then90, %if.then80, %if.then72, %do.end47, %if.then3
  %85 = load ptr, ptr %provider, align 8, !tbaa !4
  call void @aws_credentials_provider_destroy(ptr noundef %85)
  %86 = load ptr, ptr %parameters, align 8, !tbaa !4
  call void @s_parameters_destroy(ptr noundef %86)
  call void @aws_tls_connection_options_clean_up(ptr noundef %tls_connection_options)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end101, %do.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %provider) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr %tls_connection_options) #9
  br label %cleanup105

cleanup105:                                       ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parameters) #9
  %87 = load ptr, ptr %retval, align 8
  ret ptr %87
}

; Function Attrs: nounwind uwtable
define internal ptr @s_parameters_new(ptr noundef %allocator, ptr noundef %config_profile_collection_cached) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %config_profile_collection_cached.addr = alloca ptr, align 8
  %parameters = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %success = alloca i8, align 1
  %region = alloca ptr, align 8
  %role_arn = alloca ptr, align 8
  %role_session_name = alloca ptr, align 8
  %token_file_path = alloca ptr, align 8
  %config_profile = alloca ptr, align 8
  %profile_name = alloca ptr, align 8
  %profile = alloca ptr, align 8
  %get_all_parameters = alloca i8, align 1
  %logger = alloca ptr, align 8
  %logger49 = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  %logger75 = alloca ptr, align 8
  %agg.tmp97 = alloca %struct.aws_byte_cursor, align 8
  %logger103 = alloca ptr, align 8
  %agg.tmp125 = alloca %struct.aws_byte_cursor, align 8
  %logger139 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %config_profile_collection_cached, ptr %config_profile_collection_cached.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %parameters) #9
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 136)
  store ptr %call, ptr %parameters, align 8, !tbaa !4
  %1 = load ptr, ptr %parameters, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %parameters, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %3, i32 0, i32 0
  store ptr %2, ptr %allocator1, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9
  store i8 0, ptr %success, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #9
  store ptr null, ptr %region, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %role_arn) #9
  store ptr null, ptr %role_arn, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %role_session_name) #9
  store ptr null, ptr %role_session_name, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %token_file_path) #9
  store ptr null, ptr %token_file_path, align 8, !tbaa !4
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr @s_region_env, align 8, !tbaa !4
  %call2 = call i32 @aws_get_environment_value(ptr noundef %4, ptr noundef %5, ptr noundef %region)
  %6 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %7 = load ptr, ptr @s_role_arn_env, align 8, !tbaa !4
  %call3 = call i32 @aws_get_environment_value(ptr noundef %6, ptr noundef %7, ptr noundef %role_arn)
  %8 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %9 = load ptr, ptr @s_role_session_name_env, align 8, !tbaa !4
  %call4 = call i32 @aws_get_environment_value(ptr noundef %8, ptr noundef %9, ptr noundef %role_session_name)
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %11 = load ptr, ptr @s_token_file_path_env, align 8, !tbaa !4
  %call5 = call i32 @aws_get_environment_value(ptr noundef %10, ptr noundef %11, ptr noundef %token_file_path)
  call void @llvm.lifetime.start.p0(i64 8, ptr %config_profile) #9
  store ptr null, ptr %config_profile, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %profile_name) #9
  store ptr null, ptr %profile_name, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %profile) #9
  store ptr null, ptr %profile, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %get_all_parameters) #9
  %12 = load ptr, ptr %region, align 8, !tbaa !4
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %region, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_string, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %len, align 8, !tbaa !58
  %tobool6 = icmp ne i64 %14, 0
  br i1 %tobool6, label %land.lhs.true7, label %land.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %role_arn, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %15, null
  br i1 %tobool8, label %land.lhs.true9, label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %16 = load ptr, ptr %role_arn, align 8, !tbaa !4
  %len10 = getelementptr inbounds %struct.aws_string, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %len10, align 8, !tbaa !58
  %tobool11 = icmp ne i64 %17, 0
  br i1 %tobool11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %18 = load ptr, ptr %token_file_path, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %18, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true12
  %19 = load ptr, ptr %token_file_path, align 8, !tbaa !4
  %len14 = getelementptr inbounds %struct.aws_string, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %len14, align 8, !tbaa !58
  %tobool15 = icmp ne i64 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true12, %land.lhs.true9, %land.lhs.true7, %land.lhs.true, %if.end
  %21 = phi i1 [ false, %land.lhs.true12 ], [ false, %land.lhs.true9 ], [ false, %land.lhs.true7 ], [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool15, %land.rhs ]
  %frombool = zext i1 %21 to i8
  store i8 %frombool, ptr %get_all_parameters, align 1, !tbaa !57
  %22 = load i8, ptr %get_all_parameters, align 1, !tbaa !57, !range !60, !noundef !61
  %tobool16 = trunc i8 %22 to i1
  br i1 %tobool16, label %if.end44, label %if.then17

if.then17:                                        ; preds = %land.end
  %23 = load ptr, ptr %config_profile_collection_cached.addr, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %23, null
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  %24 = load ptr, ptr %config_profile_collection_cached.addr, align 8, !tbaa !4
  %call20 = call ptr @aws_profile_collection_acquire(ptr noundef %24)
  store ptr %call20, ptr %config_profile, align 8, !tbaa !4
  br label %if.end25

if.else:                                          ; preds = %if.then17
  %25 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call21 = call ptr @s_load_profile(ptr noundef %25)
  store ptr %call21, ptr %config_profile, align 8, !tbaa !4
  %26 = load ptr, ptr %config_profile, align 8, !tbaa !4
  %tobool22 = icmp ne ptr %26, null
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.else
  br label %on_finish

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then19
  %27 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call26 = call ptr @aws_get_profile_name(ptr noundef %27, ptr noundef null)
  store ptr %call26, ptr %profile_name, align 8, !tbaa !4
  %28 = load ptr, ptr %profile_name, align 8, !tbaa !4
  %tobool27 = icmp ne ptr %28, null
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %29 = load ptr, ptr %config_profile, align 8, !tbaa !4
  %30 = load ptr, ptr %profile_name, align 8, !tbaa !4
  %call29 = call ptr @aws_profile_collection_get_profile(ptr noundef %29, ptr noundef %30)
  store ptr %call29, ptr %profile, align 8, !tbaa !4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %31 = load ptr, ptr %profile, align 8, !tbaa !4
  %tobool31 = icmp ne ptr %31, null
  br i1 %tobool31, label %if.else42, label %if.then32

if.then32:                                        ; preds = %if.end30
  br label %do.body

do.body:                                          ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call33 = call ptr @aws_logger_get()
  store ptr %call33, ptr %logger, align 8, !tbaa !4
  %32 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp34 = icmp ne ptr %32, null
  br i1 %cmp34, label %land.lhs.true35, label %if.end41

land.lhs.true35:                                  ; preds = %do.body
  %33 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %36 = load ptr, ptr %logger, align 8, !tbaa !4
  %call36 = call i32 %35(ptr noundef %36, i32 noundef 6146)
  %cmp37 = icmp uge i32 %call36, 2
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %land.lhs.true35
  %37 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable39 = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable39, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %log, align 8, !tbaa !12
  %40 = load ptr, ptr %logger, align 8, !tbaa !4
  %call40 = call i32 (ptr, i32, i32, ptr, ...) %39(ptr noundef %40, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.5)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %land.lhs.true35, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end41
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_finish

if.else42:                                        ; preds = %if.end30
  %41 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %profile, align 8, !tbaa !4
  %43 = load ptr, ptr @s_region_config, align 8, !tbaa !4
  call void @s_check_or_get_with_profile_config(ptr noundef %41, ptr noundef %42, ptr noundef %region, ptr noundef %43)
  %44 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %profile, align 8, !tbaa !4
  %46 = load ptr, ptr @s_role_arn_config, align 8, !tbaa !4
  call void @s_check_or_get_with_profile_config(ptr noundef %44, ptr noundef %45, ptr noundef %role_arn, ptr noundef %46)
  %47 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %profile, align 8, !tbaa !4
  %49 = load ptr, ptr @s_role_session_name_config, align 8, !tbaa !4
  call void @s_check_or_get_with_profile_config(ptr noundef %47, ptr noundef %48, ptr noundef %role_session_name, ptr noundef %49)
  %50 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %profile, align 8, !tbaa !4
  %52 = load ptr, ptr @s_token_file_path_config, align 8, !tbaa !4
  call void @s_check_or_get_with_profile_config(ptr noundef %50, ptr noundef %51, ptr noundef %token_file_path, ptr noundef %52)
  br label %if.end43

if.end43:                                         ; preds = %if.else42
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %land.end
  %53 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %parameters, align 8, !tbaa !4
  %endpoint = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %region, align 8, !tbaa !4
  %56 = load ptr, ptr @s_sts_service_name, align 8, !tbaa !4
  %call45 = call i32 @s_construct_endpoint(ptr noundef %53, ptr noundef %endpoint, ptr noundef %55, ptr noundef %56)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end64

if.then47:                                        ; preds = %if.end44
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger49) #9
  %call50 = call ptr @aws_logger_get()
  store ptr %call50, ptr %logger49, align 8, !tbaa !4
  %57 = load ptr, ptr %logger49, align 8, !tbaa !4
  %cmp51 = icmp ne ptr %57, null
  br i1 %cmp51, label %land.lhs.true52, label %if.end61

land.lhs.true52:                                  ; preds = %do.body48
  %58 = load ptr, ptr %logger49, align 8, !tbaa !4
  %vtable53 = getelementptr inbounds %struct.aws_logger, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %vtable53, align 8, !tbaa !8
  %get_log_level54 = getelementptr inbounds %struct.aws_logger_vtable, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %get_log_level54, align 8, !tbaa !10
  %61 = load ptr, ptr %logger49, align 8, !tbaa !4
  %call55 = call i32 %60(ptr noundef %61, i32 noundef 6146)
  %cmp56 = icmp uge i32 %call55, 2
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %land.lhs.true52
  %62 = load ptr, ptr %logger49, align 8, !tbaa !4
  %vtable58 = getelementptr inbounds %struct.aws_logger, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %vtable58, align 8, !tbaa !8
  %log59 = getelementptr inbounds %struct.aws_logger_vtable, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %log59, align 8, !tbaa !12
  %65 = load ptr, ptr %logger49, align 8, !tbaa !4
  %call60 = call i32 (ptr, i32, i32, ptr, ...) %64(ptr noundef %65, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.6)
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true52, %do.body48
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger49) #9
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  br label %on_finish

if.end64:                                         ; preds = %if.end44
  %66 = load ptr, ptr %role_arn, align 8, !tbaa !4
  %tobool65 = icmp ne ptr %66, null
  br i1 %tobool65, label %lor.lhs.false, label %if.then73

lor.lhs.false:                                    ; preds = %if.end64
  %67 = load ptr, ptr %role_arn, align 8, !tbaa !4
  %len66 = getelementptr inbounds %struct.aws_string, ptr %67, i32 0, i32 1
  %68 = load i64, ptr %len66, align 8, !tbaa !58
  %tobool67 = icmp ne i64 %68, 0
  br i1 %tobool67, label %lor.lhs.false68, label %if.then73

lor.lhs.false68:                                  ; preds = %lor.lhs.false
  %69 = load ptr, ptr %parameters, align 8, !tbaa !4
  %role_arn69 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %69, i32 0, i32 2
  %70 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #9
  %71 = load ptr, ptr %role_arn, align 8, !tbaa !4
  %call70 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %71)
  %72 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %73 = extractvalue { i64, ptr } %call70, 0
  store i64 %73, ptr %72, align 8
  %74 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %75 = extractvalue { i64, ptr } %call70, 1
  store ptr %75, ptr %74, align 8
  %76 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8
  %call71 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %role_arn69, ptr noundef %70, i64 %77, ptr %79)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #9
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end90

if.then73:                                        ; preds = %lor.lhs.false68, %lor.lhs.false, %if.end64
  br label %do.body74

do.body74:                                        ; preds = %if.then73
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger75) #9
  %call76 = call ptr @aws_logger_get()
  store ptr %call76, ptr %logger75, align 8, !tbaa !4
  %80 = load ptr, ptr %logger75, align 8, !tbaa !4
  %cmp77 = icmp ne ptr %80, null
  br i1 %cmp77, label %land.lhs.true78, label %if.end87

land.lhs.true78:                                  ; preds = %do.body74
  %81 = load ptr, ptr %logger75, align 8, !tbaa !4
  %vtable79 = getelementptr inbounds %struct.aws_logger, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %vtable79, align 8, !tbaa !8
  %get_log_level80 = getelementptr inbounds %struct.aws_logger_vtable, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %get_log_level80, align 8, !tbaa !10
  %84 = load ptr, ptr %logger75, align 8, !tbaa !4
  %call81 = call i32 %83(ptr noundef %84, i32 noundef 6146)
  %cmp82 = icmp uge i32 %call81, 2
  br i1 %cmp82, label %if.then83, label %if.end87

if.then83:                                        ; preds = %land.lhs.true78
  %85 = load ptr, ptr %logger75, align 8, !tbaa !4
  %vtable84 = getelementptr inbounds %struct.aws_logger, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %vtable84, align 8, !tbaa !8
  %log85 = getelementptr inbounds %struct.aws_logger_vtable, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %log85, align 8, !tbaa !12
  %88 = load ptr, ptr %logger75, align 8, !tbaa !4
  %call86 = call i32 (ptr, i32, i32, ptr, ...) %87(ptr noundef %88, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.7)
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %land.lhs.true78, %do.body74
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger75) #9
  br label %do.cond88

do.cond88:                                        ; preds = %if.end87
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  br label %on_finish

if.end90:                                         ; preds = %lor.lhs.false68
  %89 = load ptr, ptr %token_file_path, align 8, !tbaa !4
  %tobool91 = icmp ne ptr %89, null
  br i1 %tobool91, label %lor.lhs.false92, label %if.then101

lor.lhs.false92:                                  ; preds = %if.end90
  %90 = load ptr, ptr %token_file_path, align 8, !tbaa !4
  %len93 = getelementptr inbounds %struct.aws_string, ptr %90, i32 0, i32 1
  %91 = load i64, ptr %len93, align 8, !tbaa !58
  %tobool94 = icmp ne i64 %91, 0
  br i1 %tobool94, label %lor.lhs.false95, label %if.then101

lor.lhs.false95:                                  ; preds = %lor.lhs.false92
  %92 = load ptr, ptr %parameters, align 8, !tbaa !4
  %token_file_path96 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %92, i32 0, i32 4
  %93 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp97) #9
  %94 = load ptr, ptr %token_file_path, align 8, !tbaa !4
  %call98 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %94)
  %95 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp97, i32 0, i32 0
  %96 = extractvalue { i64, ptr } %call98, 0
  store i64 %96, ptr %95, align 8
  %97 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp97, i32 0, i32 1
  %98 = extractvalue { i64, ptr } %call98, 1
  store ptr %98, ptr %97, align 8
  %99 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp97, i32 0, i32 0
  %100 = load i64, ptr %99, align 8
  %101 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp97, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  %call99 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %token_file_path96, ptr noundef %93, i64 %100, ptr %102)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp97) #9
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.end118

if.then101:                                       ; preds = %lor.lhs.false95, %lor.lhs.false92, %if.end90
  br label %do.body102

do.body102:                                       ; preds = %if.then101
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger103) #9
  %call104 = call ptr @aws_logger_get()
  store ptr %call104, ptr %logger103, align 8, !tbaa !4
  %103 = load ptr, ptr %logger103, align 8, !tbaa !4
  %cmp105 = icmp ne ptr %103, null
  br i1 %cmp105, label %land.lhs.true106, label %if.end115

land.lhs.true106:                                 ; preds = %do.body102
  %104 = load ptr, ptr %logger103, align 8, !tbaa !4
  %vtable107 = getelementptr inbounds %struct.aws_logger, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %vtable107, align 8, !tbaa !8
  %get_log_level108 = getelementptr inbounds %struct.aws_logger_vtable, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %get_log_level108, align 8, !tbaa !10
  %107 = load ptr, ptr %logger103, align 8, !tbaa !4
  %call109 = call i32 %106(ptr noundef %107, i32 noundef 6146)
  %cmp110 = icmp uge i32 %call109, 2
  br i1 %cmp110, label %if.then111, label %if.end115

if.then111:                                       ; preds = %land.lhs.true106
  %108 = load ptr, ptr %logger103, align 8, !tbaa !4
  %vtable112 = getelementptr inbounds %struct.aws_logger, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %vtable112, align 8, !tbaa !8
  %log113 = getelementptr inbounds %struct.aws_logger_vtable, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %log113, align 8, !tbaa !12
  %111 = load ptr, ptr %logger103, align 8, !tbaa !4
  %call114 = call i32 (ptr, i32, i32, ptr, ...) %110(ptr noundef %111, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.8)
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %land.lhs.true106, %do.body102
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger103) #9
  br label %do.cond116

do.cond116:                                       ; preds = %if.end115
  br label %do.end117

do.end117:                                        ; preds = %do.cond116
  br label %on_finish

if.end118:                                        ; preds = %lor.lhs.false95
  %112 = load ptr, ptr %role_session_name, align 8, !tbaa !4
  %tobool119 = icmp ne ptr %112, null
  br i1 %tobool119, label %land.lhs.true120, label %if.else131

land.lhs.true120:                                 ; preds = %if.end118
  %113 = load ptr, ptr %role_session_name, align 8, !tbaa !4
  %len121 = getelementptr inbounds %struct.aws_string, ptr %113, i32 0, i32 1
  %114 = load i64, ptr %len121, align 8, !tbaa !58
  %tobool122 = icmp ne i64 %114, 0
  br i1 %tobool122, label %if.then123, label %if.else131

if.then123:                                       ; preds = %land.lhs.true120
  %115 = load ptr, ptr %parameters, align 8, !tbaa !4
  %role_session_name124 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %115, i32 0, i32 3
  %116 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp125) #9
  %117 = load ptr, ptr %role_session_name, align 8, !tbaa !4
  %call126 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %117)
  %118 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp125, i32 0, i32 0
  %119 = extractvalue { i64, ptr } %call126, 0
  store i64 %119, ptr %118, align 8
  %120 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp125, i32 0, i32 1
  %121 = extractvalue { i64, ptr } %call126, 1
  store ptr %121, ptr %120, align 8
  %122 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp125, i32 0, i32 0
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp125, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8
  %call127 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %role_session_name124, ptr noundef %116, i64 %123, ptr %125)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp125) #9
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.then123
  br label %on_finish

if.end130:                                        ; preds = %if.then123
  br label %if.end137

if.else131:                                       ; preds = %land.lhs.true120, %if.end118
  %126 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %parameters, align 8, !tbaa !4
  %role_session_name132 = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %127, i32 0, i32 3
  %call133 = call i32 @s_generate_uuid_to_buf(ptr noundef %126, ptr noundef %role_session_name132)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.else131
  br label %on_finish

if.end136:                                        ; preds = %if.else131
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end130
  br label %do.body138

do.body138:                                       ; preds = %if.end137
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger139) #9
  %call140 = call ptr @aws_logger_get()
  store ptr %call140, ptr %logger139, align 8, !tbaa !4
  %128 = load ptr, ptr %logger139, align 8, !tbaa !4
  %cmp141 = icmp ne ptr %128, null
  br i1 %cmp141, label %land.lhs.true142, label %if.end151

land.lhs.true142:                                 ; preds = %do.body138
  %129 = load ptr, ptr %logger139, align 8, !tbaa !4
  %vtable143 = getelementptr inbounds %struct.aws_logger, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %vtable143, align 8, !tbaa !8
  %get_log_level144 = getelementptr inbounds %struct.aws_logger_vtable, ptr %130, i32 0, i32 1
  %131 = load ptr, ptr %get_log_level144, align 8, !tbaa !10
  %132 = load ptr, ptr %logger139, align 8, !tbaa !4
  %call145 = call i32 %131(ptr noundef %132, i32 noundef 6146)
  %cmp146 = icmp uge i32 %call145, 5
  br i1 %cmp146, label %if.then147, label %if.end151

if.then147:                                       ; preds = %land.lhs.true142
  %133 = load ptr, ptr %logger139, align 8, !tbaa !4
  %vtable148 = getelementptr inbounds %struct.aws_logger, ptr %133, i32 0, i32 0
  %134 = load ptr, ptr %vtable148, align 8, !tbaa !8
  %log149 = getelementptr inbounds %struct.aws_logger_vtable, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %log149, align 8, !tbaa !12
  %136 = load ptr, ptr %logger139, align 8, !tbaa !4
  %call150 = call i32 (ptr, i32, i32, ptr, ...) %135(ptr noundef %136, i32 noundef 5, i32 noundef 6146, ptr noundef @.str.9)
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %land.lhs.true142, %do.body138
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger139) #9
  br label %do.cond152

do.cond152:                                       ; preds = %if.end151
  br label %do.end153

do.end153:                                        ; preds = %do.cond152
  store i8 1, ptr %success, align 1, !tbaa !57
  br label %on_finish

on_finish:                                        ; preds = %do.end153, %if.then135, %if.then129, %do.end117, %do.end89, %do.end63, %do.end, %if.then23
  %137 = load ptr, ptr %region, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %137)
  %138 = load ptr, ptr %role_arn, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %138)
  %139 = load ptr, ptr %role_session_name, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %139)
  %140 = load ptr, ptr %token_file_path, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %140)
  %141 = load ptr, ptr %profile_name, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %141)
  %142 = load ptr, ptr %config_profile, align 8, !tbaa !4
  %call154 = call ptr @aws_profile_collection_release(ptr noundef %142)
  %143 = load i8, ptr %success, align 1, !tbaa !57, !range !60, !noundef !61
  %tobool155 = trunc i8 %143 to i1
  br i1 %tobool155, label %if.end157, label %if.then156

if.then156:                                       ; preds = %on_finish
  %144 = load ptr, ptr %parameters, align 8, !tbaa !4
  call void @s_parameters_destroy(ptr noundef %144)
  store ptr null, ptr %parameters, align 8, !tbaa !4
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %on_finish
  %145 = load ptr, ptr %parameters, align 8, !tbaa !4
  store ptr %145, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %get_all_parameters) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %profile) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %profile_name) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %config_profile) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %token_file_path) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %role_session_name) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %role_arn) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parameters) #9
  %146 = load ptr, ptr %retval, align 8
  ret ptr %146
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @aws_mem_acquire_many(ptr noundef, i64 noundef, ...) #2

declare void @aws_credentials_provider_init_base(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #3 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !62
  %0 = load i32, ptr %err.addr, align 4, !tbaa !62
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare void @aws_tls_connection_options_init_from_ctx(ptr noundef, ptr noundef) #2

declare { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef) #2

declare i32 @aws_tls_connection_options_set_server_name(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_timestamp_convert(i64 noundef %timestamp, i32 noundef %convert_from, i32 noundef %convert_to, ptr noundef %remainder) #3 {
entry:
  %timestamp.addr = alloca i64, align 8
  %convert_from.addr = alloca i32, align 4
  %convert_to.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %timestamp, ptr %timestamp.addr, align 8, !tbaa !32
  store i32 %convert_from, ptr %convert_from.addr, align 4, !tbaa !63
  store i32 %convert_to, ptr %convert_to.addr, align 4, !tbaa !63
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !4
  %0 = load i64, ptr %timestamp.addr, align 8, !tbaa !32
  %1 = load i32, ptr %convert_from.addr, align 4, !tbaa !63
  %conv = zext i32 %1 to i64
  %2 = load i32, ptr %convert_to.addr, align 4, !tbaa !63
  %conv1 = zext i32 %2 to i64
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  %call = call i64 @aws_timestamp_convert_u64(i64 noundef %0, i64 noundef %conv, i64 noundef %conv1, ptr noundef %3)
  ret i64 %call
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal void @s_on_connection_manager_shutdown(ptr noundef %user_data) #0 {
entry:
  %user_data.addr = alloca ptr, align 8
  %provider = alloca ptr, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %provider) #9
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %provider, align 8, !tbaa !4
  %1 = load ptr, ptr %provider, align 8, !tbaa !4
  call void @aws_credentials_provider_invoke_shutdown_callback(ptr noundef %1)
  %2 = load ptr, ptr %provider, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_credentials_provider, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %allocator, align 8, !tbaa !64
  %4 = load ptr, ptr %provider, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %provider) #9
  ret void
}

declare ptr @aws_string_new_from_array(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_parameters_destroy(ptr noundef %parameters) #0 {
entry:
  %parameters.addr = alloca ptr, align 8
  store ptr %parameters, ptr %parameters.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %endpoint = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %1, i32 0, i32 1
  call void @aws_byte_buf_clean_up(ptr noundef %endpoint)
  %2 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %role_arn = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %2, i32 0, i32 2
  call void @aws_byte_buf_clean_up(ptr noundef %role_arn)
  %3 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %role_session_name = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %3, i32 0, i32 3
  call void @aws_byte_buf_clean_up(ptr noundef %role_session_name)
  %4 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %token_file_path = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %4, i32 0, i32 4
  call void @aws_byte_buf_clean_up(ptr noundef %token_file_path)
  %5 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.sts_web_identity_parameters, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %allocator, align 8, !tbaa !56
  %7 = load ptr, ptr %parameters.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %6, ptr noundef %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @aws_tls_connection_options_clean_up(ptr noundef) #2

declare void @aws_credentials_provider_destroy(ptr noundef) #2

declare ptr @aws_mem_calloc(ptr noundef, i64 noundef, i64 noundef) #2

declare i32 @aws_get_environment_value(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @aws_profile_collection_acquire(ptr noundef) #2

declare ptr @aws_get_profile_name(ptr noundef, ptr noundef) #2

declare ptr @aws_profile_collection_get_profile(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_check_or_get_with_profile_config(ptr noundef %allocator, ptr noundef %profile, ptr noundef %target, ptr noundef %config_key) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %profile.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %config_key.addr = alloca ptr, align 8
  %property = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %profile, ptr %profile.addr, align 8, !tbaa !4
  store ptr %target, ptr %target.addr, align 8, !tbaa !4
  store ptr %config_key, ptr %config_key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %profile.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %config_key.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end16

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %target.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %3, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %lor.lhs.false5, label %if.then7

lor.lhs.false5:                                   ; preds = %if.end
  %5 = load ptr, ptr %target.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %5, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_string, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %len, align 8, !tbaa !58
  %tobool6 = icmp ne i64 %7, 0
  br i1 %tobool6, label %if.end16, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  %8 = load ptr, ptr %target.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %8, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %9, null
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  %10 = load ptr, ptr %target.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %10, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %11)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %property) #9
  %12 = load ptr, ptr %profile.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %config_key.addr, align 8, !tbaa !4
  %call = call ptr @aws_profile_get_property(ptr noundef %12, ptr noundef %13)
  store ptr %call, ptr %property, align 8, !tbaa !4
  %14 = load ptr, ptr %property, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %14, null
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %15 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %property, align 8, !tbaa !4
  %call13 = call ptr @aws_profile_property_get_value(ptr noundef %16)
  %call14 = call ptr @aws_string_new_from_string(ptr noundef %15, ptr noundef %call13)
  %17 = load ptr, ptr %target.addr, align 8, !tbaa !4
  store ptr %call14, ptr %17, align 8, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %property) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.end15, %lor.lhs.false5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_construct_endpoint(ptr noundef %allocator, ptr noundef %endpoint, ptr noundef %region, ptr noundef %service_name) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %endpoint.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %service_name.addr = alloca ptr, align 8
  %service_cursor = alloca %struct.aws_byte_cursor, align 8
  %region_cursor = alloca %struct.aws_byte_cursor, align 8
  %tmp = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %endpoint, ptr %endpoint.addr, align 8, !tbaa !4
  store ptr %region, ptr %region.addr, align 8, !tbaa !4
  store ptr %service_name, ptr %service_name.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %region.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %service_name.addr, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %3, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 34, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %4 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  call void @aws_byte_buf_clean_up(ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr %service_cursor) #9
  %5 = load ptr, ptr %service_name.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %5)
  %6 = getelementptr inbounds { i64, ptr }, ptr %service_cursor, i32 0, i32 0
  %7 = extractvalue { i64, ptr } %call, 0
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds { i64, ptr }, ptr %service_cursor, i32 0, i32 1
  %9 = extractvalue { i64, ptr } %call, 1
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %12 = getelementptr inbounds { i64, ptr }, ptr %service_cursor, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %service_cursor, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %call6 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %10, ptr noundef %11, i64 %13, ptr %15)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %on_error

if.end9:                                          ; preds = %if.end
  %16 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  %call10 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %16, ptr noundef @s_dot_cursor)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %on_error

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #9
  %17 = load ptr, ptr %region.addr, align 8, !tbaa !4
  %bytes = getelementptr inbounds %struct.aws_string, ptr %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], ptr %bytes, i64 0, i64 0
  %18 = load ptr, ptr %region.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_string, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %len, align 8, !tbaa !58
  %call14 = call { i64, ptr } @aws_byte_cursor_from_array(ptr noundef %arraydecay, i64 noundef %19)
  %20 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 0
  %21 = extractvalue { i64, ptr } %call14, 0
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 1
  %23 = extractvalue { i64, ptr } %call14, 1
  store ptr %23, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %region_cursor, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #9
  %24 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  %call15 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %24, ptr noundef %region_cursor)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  br label %on_error

if.end18:                                         ; preds = %if.end13
  %25 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  %call19 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %25, ptr noundef @s_amazonaws_cursor)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  br label %on_error

if.end22:                                         ; preds = %if.end18
  %26 = load ptr, ptr %region.addr, align 8, !tbaa !4
  %call23 = call zeroext i1 @aws_string_eq_c_str_ignore_case(ptr noundef %26, ptr noundef @.str.10)
  br i1 %call23, label %if.then26, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end22
  %27 = load ptr, ptr %region.addr, align 8, !tbaa !4
  %call25 = call zeroext i1 @aws_string_eq_c_str_ignore_case(ptr noundef %27, ptr noundef @.str.11)
  br i1 %call25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %lor.lhs.false24, %if.end22
  %28 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  %call27 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %28, ptr noundef @s_cn_cursor)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  br label %on_error

if.end30:                                         ; preds = %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %lor.lhs.false24
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then29, %if.then21, %if.then17, %if.then12, %if.then8
  %29 = load ptr, ptr %endpoint.addr, align 8, !tbaa !4
  call void @aws_byte_buf_clean_up(ptr noundef %29)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end31
  call void @llvm.lifetime.end.p0(i64 16, ptr %service_cursor) #9
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef, ptr noundef, i64, ptr) #2

declare { i64, ptr } @aws_byte_cursor_from_string(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_generate_uuid_to_buf(ptr noundef %allocator, ptr noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %uuid = alloca %struct.aws_uuid, align 1
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %uuid_str = alloca [37 x i8], align 16
  %uuid_buf = alloca %struct.aws_byte_buf, align 8
  %logger19 = alloca ptr, align 8
  %logger42 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 34, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 16, ptr %uuid) #9
  %call = call i32 @aws_uuid_init(ptr noundef %uuid)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call4 = call ptr @aws_logger_get()
  store ptr %call4, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %5(ptr noundef %6, i32 noundef 6146)
  %cmp6 = icmp uge i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable8, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call9 = call i32 @aws_last_error()
  %call10 = call ptr @aws_error_str(i32 noundef %call9)
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.15, ptr noundef %call10)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call13 = call i32 @aws_last_error()
  store i32 %call13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62

if.end14:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 37, ptr %uuid_str) #9
  call void @llvm.memset.p0.i64(ptr align 16 %uuid_str, i8 0, i64 37, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr %uuid_buf) #9
  %arraydecay = getelementptr inbounds [37 x i8], ptr %uuid_str, i64 0, i64 0
  call void @aws_byte_buf_from_array(ptr sret(%struct.aws_byte_buf) align 8 %uuid_buf, ptr noundef %arraydecay, i64 noundef 37)
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %uuid_buf, i32 0, i32 0
  store i64 0, ptr %len, align 8, !tbaa !67
  %call15 = call i32 @aws_uuid_to_str(ptr noundef %uuid, ptr noundef %uuid_buf)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end37

if.then17:                                        ; preds = %if.end14
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger19) #9
  %call20 = call ptr @aws_logger_get()
  store ptr %call20, ptr %logger19, align 8, !tbaa !4
  %11 = load ptr, ptr %logger19, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %11, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end33

land.lhs.true22:                                  ; preds = %do.body18
  %12 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable23, align 8, !tbaa !8
  %get_log_level24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %get_log_level24, align 8, !tbaa !10
  %15 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call25 = call i32 %14(ptr noundef %15, i32 noundef 6146)
  %cmp26 = icmp uge i32 %call25, 2
  br i1 %cmp26, label %if.then27, label %if.end33

if.then27:                                        ; preds = %land.lhs.true22
  %16 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable28 = getelementptr inbounds %struct.aws_logger, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %vtable28, align 8, !tbaa !8
  %log29 = getelementptr inbounds %struct.aws_logger_vtable, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %log29, align 8, !tbaa !12
  %19 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call30 = call i32 @aws_last_error()
  %call31 = call ptr @aws_error_str(i32 noundef %call30)
  %call32 = call i32 (ptr, i32, i32, ptr, ...) %18(ptr noundef %19, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.16, ptr noundef %call31)
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %land.lhs.true22, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger19) #9
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call i32 @aws_last_error()
  store i32 %call36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end14
  %20 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call38 = call i32 @aws_byte_buf_init_copy(ptr noundef %20, ptr noundef %21, ptr noundef %uuid_buf)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end60

if.then40:                                        ; preds = %if.end37
  br label %do.body41

do.body41:                                        ; preds = %if.then40
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger42) #9
  %call43 = call ptr @aws_logger_get()
  store ptr %call43, ptr %logger42, align 8, !tbaa !4
  %22 = load ptr, ptr %logger42, align 8, !tbaa !4
  %cmp44 = icmp ne ptr %22, null
  br i1 %cmp44, label %land.lhs.true45, label %if.end56

land.lhs.true45:                                  ; preds = %do.body41
  %23 = load ptr, ptr %logger42, align 8, !tbaa !4
  %vtable46 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable46, align 8, !tbaa !8
  %get_log_level47 = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %get_log_level47, align 8, !tbaa !10
  %26 = load ptr, ptr %logger42, align 8, !tbaa !4
  %call48 = call i32 %25(ptr noundef %26, i32 noundef 6146)
  %cmp49 = icmp uge i32 %call48, 2
  br i1 %cmp49, label %if.then50, label %if.end56

if.then50:                                        ; preds = %land.lhs.true45
  %27 = load ptr, ptr %logger42, align 8, !tbaa !4
  %vtable51 = getelementptr inbounds %struct.aws_logger, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %vtable51, align 8, !tbaa !8
  %log52 = getelementptr inbounds %struct.aws_logger_vtable, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %log52, align 8, !tbaa !12
  %30 = load ptr, ptr %logger42, align 8, !tbaa !4
  %call53 = call i32 @aws_last_error()
  %call54 = call ptr @aws_error_str(i32 noundef %call53)
  %call55 = call i32 (ptr, i32, i32, ptr, ...) %29(ptr noundef %30, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.17, ptr noundef %call54)
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %land.lhs.true45, %do.body41
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger42) #9
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %call59 = call i32 @aws_last_error()
  store i32 %call59, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end58, %do.end35
  call void @llvm.lifetime.end.p0(i64 32, ptr %uuid_buf) #9
  call void @llvm.lifetime.end.p0(i64 37, ptr %uuid_str) #9
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %uuid) #9
  br label %return

return:                                           ; preds = %cleanup62, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

declare ptr @aws_profile_collection_release(ptr noundef) #2

declare ptr @aws_profile_get_property(ptr noundef, ptr noundef) #2

declare ptr @aws_string_new_from_string(ptr noundef, ptr noundef) #2

declare ptr @aws_profile_property_get_value(ptr noundef) #2

declare void @aws_byte_buf_clean_up(ptr noundef) #2

declare i32 @aws_byte_buf_append_dynamic(ptr noundef, ptr noundef) #2

declare { i64, ptr } @aws_byte_cursor_from_array(ptr noundef, i64 noundef) #2

declare zeroext i1 @aws_string_eq_c_str_ignore_case(ptr noundef, ptr noundef) #2

declare i32 @aws_uuid_init(ptr noundef) #2

declare void @aws_byte_buf_from_array(ptr sret(%struct.aws_byte_buf) align 8, ptr noundef, i64 noundef) #2

declare i32 @aws_uuid_to_str(ptr noundef, ptr noundef) #2

declare i32 @aws_byte_buf_init_copy(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_credentials_provider_sts_web_identity_get_credentials_async(ptr noundef %provider, ptr noundef %callback, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %provider.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %wrapped_user_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %provider, ptr %provider.addr, align 8, !tbaa !4
  store ptr %callback, ptr %callback.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %0 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %impl1, align 8, !tbaa !68
  store ptr %1, ptr %impl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %wrapped_user_data) #9
  %2 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %callback.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call = call ptr @s_user_data_new(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store ptr %call, ptr %wrapped_user_data, align 8, !tbaa !4
  %5 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %function_table, align 8, !tbaa !39
  %aws_http_connection_manager_acquire_connection = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %aws_http_connection_manager_acquire_connection, align 8, !tbaa !69
  %9 = load ptr, ptr %impl, align 8, !tbaa !4
  %connection_manager = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %connection_manager, align 8, !tbaa !43
  %11 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  call void %8(ptr noundef %10, ptr noundef @s_on_acquire_connection, ptr noundef %11)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then
  %12 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  call void @s_user_data_destroy(ptr noundef %12)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %wrapped_user_data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @s_credentials_provider_sts_web_identity_destroy(ptr noundef %provider) #0 {
entry:
  %provider.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %provider, ptr %provider.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %0 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %impl1, align 8, !tbaa !68
  store ptr %1, ptr %impl, align 8, !tbaa !4
  %2 = load ptr, ptr %impl, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_arn = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %role_arn, align 8, !tbaa !48
  call void @aws_string_destroy(ptr noundef %4)
  %5 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_session_name = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %role_session_name, align 8, !tbaa !51
  call void @aws_string_destroy(ptr noundef %6)
  %7 = load ptr, ptr %impl, align 8, !tbaa !4
  %token_file_path = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %token_file_path, align 8, !tbaa !54
  call void @aws_string_destroy(ptr noundef %8)
  %9 = load ptr, ptr %impl, align 8, !tbaa !4
  %connection_manager = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %connection_manager, align 8, !tbaa !43
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %function_table, align 8, !tbaa !39
  %aws_http_connection_manager_release = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %aws_http_connection_manager_release, align 8, !tbaa !70
  %14 = load ptr, ptr %impl, align 8, !tbaa !4
  %connection_manager3 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %connection_manager3, align 8, !tbaa !43
  call void %13(ptr noundef %15)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  call void @s_on_connection_manager_shutdown(ptr noundef %16)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
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
define internal ptr @s_user_data_new(ptr noundef %sts_web_identity_provider, ptr noundef %callback, ptr noundef %user_data) #0 {
entry:
  %retval = alloca ptr, align 8
  %sts_web_identity_provider.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %wrapped_user_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sts_web_identity_provider, ptr %sts_web_identity_provider.addr, align 8, !tbaa !4
  store ptr %callback, ptr %callback.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %wrapped_user_data) #9
  %0 = load ptr, ptr %sts_web_identity_provider.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_credentials_provider, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %allocator, align 8, !tbaa !64
  %call = call ptr @aws_mem_calloc(ptr noundef %1, i64 noundef 1, i64 noundef 160)
  store ptr %call, ptr %wrapped_user_data, align 8, !tbaa !4
  %2 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %on_error

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sts_web_identity_provider.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !64
  %5 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %5, i32 0, i32 0
  store ptr %4, ptr %allocator2, align 8, !tbaa !71
  %6 = load ptr, ptr %sts_web_identity_provider.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %sts_web_identity_provider3 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %7, i32 0, i32 1
  store ptr %6, ptr %sts_web_identity_provider3, align 8, !tbaa !73
  %8 = load ptr, ptr %sts_web_identity_provider.addr, align 8, !tbaa !4
  %call4 = call ptr @aws_credentials_provider_acquire(ptr noundef %8)
  %9 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %original_user_data = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %10, i32 0, i32 3
  store ptr %9, ptr %original_user_data, align 8, !tbaa !74
  %11 = load ptr, ptr %callback.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %original_callback = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %12, i32 0, i32 2
  store ptr %11, ptr %original_callback, align 8, !tbaa !75
  %13 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %response = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %sts_web_identity_provider.addr, align 8, !tbaa !4
  %allocator5 = getelementptr inbounds %struct.aws_credentials_provider, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %allocator5, align 8, !tbaa !64
  %call6 = call i32 @aws_byte_buf_init(ptr noundef %response, ptr noundef %15, i64 noundef 2048)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %on_error

if.end8:                                          ; preds = %if.end
  %16 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %payload_buf = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %sts_web_identity_provider.addr, align 8, !tbaa !4
  %allocator9 = getelementptr inbounds %struct.aws_credentials_provider, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %allocator9, align 8, !tbaa !64
  %call10 = call i32 @aws_byte_buf_init(ptr noundef %payload_buf, ptr noundef %18, i64 noundef 1024)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %on_error

if.end13:                                         ; preds = %if.end8
  %19 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  store ptr %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then12, %if.then7, %if.then
  %20 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  call void @s_user_data_destroy(ptr noundef %20)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %wrapped_user_data) #9
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @s_on_acquire_connection(ptr noundef %connection, i32 noundef %error_code, ptr noundef %data) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %user_data = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !62
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_data) #9
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %user_data, align 8, !tbaa !4
  %1 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %5(ptr noundef %6, i32 noundef 6146)
  %cmp3 = icmp uge i32 %call2, 3
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable5, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %13 = load i32, ptr %error_code.addr, align 4, !tbaa !62
  %14 = load i32, ptr %error_code.addr, align 4, !tbaa !62
  %call6 = call ptr @aws_error_str(i32 noundef %14)
  %call7 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 3, i32 noundef 6146, ptr noundef @.str.18, ptr noundef %12, i32 noundef %13, ptr noundef %call6)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %user_data, align 8, !tbaa !4
  call void @s_finalize_get_credentials_query(ptr noundef %15)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %16 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %user_data, align 8, !tbaa !4
  %connection9 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %17, i32 0, i32 4
  store ptr %16, ptr %connection9, align 8, !tbaa !76
  %18 = load ptr, ptr %user_data, align 8, !tbaa !4
  call void @s_query_credentials(ptr noundef %18)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_data) #9
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
define internal void @s_user_data_destroy(ptr noundef %user_data) #0 {
entry:
  %user_data.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %impl1, align 8, !tbaa !68
  store ptr %3, ptr %impl, align 8, !tbaa !4
  %4 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %connection, align 8, !tbaa !76
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %function_table, align 8, !tbaa !39
  %aws_http_connection_manager_release_connection = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %aws_http_connection_manager_release_connection, align 8, !tbaa !77
  %9 = load ptr, ptr %impl, align 8, !tbaa !4
  %connection_manager = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %connection_manager, align 8, !tbaa !43
  %11 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %connection3 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %connection3, align 8, !tbaa !76
  %call = call i32 %8(ptr noundef %10, ptr noundef %12)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %13 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  call void @s_user_data_reset_request_and_response(ptr noundef %13)
  %14 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %response = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %14, i32 0, i32 6
  call void @aws_byte_buf_clean_up(ptr noundef %response)
  %15 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %access_key_id = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %access_key_id, align 8, !tbaa !78
  call void @aws_string_destroy(ptr noundef %16)
  %17 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %secret_access_key = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %secret_access_key, align 8, !tbaa !79
  call void @aws_string_destroy_secure(ptr noundef %18)
  %19 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %session_token = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %19, i32 0, i32 9
  %20 = load ptr, ptr %session_token, align 8, !tbaa !80
  call void @aws_string_destroy_secure(ptr noundef %20)
  %21 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %21, i32 0, i32 11
  call void @aws_byte_buf_clean_up(ptr noundef %payload_buf)
  %22 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %sts_web_identity_provider5 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %sts_web_identity_provider5, align 8, !tbaa !73
  %call6 = call ptr @aws_credentials_provider_release(ptr noundef %23)
  %24 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %allocator, align 8, !tbaa !71
  %26 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %25, ptr noundef %26)
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  br label %return

return:                                           ; preds = %if.end4, %if.then
  ret void
}

declare ptr @aws_credentials_provider_acquire(ptr noundef) #2

declare i32 @aws_byte_buf_init(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_finalize_get_credentials_query(ptr noundef %user_data) #0 {
entry:
  %user_data.addr = alloca ptr, align 8
  %credentials = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger12 = alloca ptr, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %credentials) #9
  store ptr null, ptr %credentials, align 8, !tbaa !4
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %status_code = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %status_code, align 8, !tbaa !81
  %cmp = icmp eq i32 %1, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %response = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %3, i32 0, i32 6
  %call = call ptr @s_parse_credentials_from_response(ptr noundef %2, ptr noundef %response)
  store ptr %call, ptr %credentials, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %credentials, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %8(ptr noundef %9, i32 noundef 6146)
  %cmp6 = icmp uge i32 %call5, 4
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable8, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %log, align 8, !tbaa !12
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %14 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %12(ptr noundef %13, i32 noundef 4, i32 noundef 6146, ptr noundef @.str.19, ptr noundef %15)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end32

if.else:                                          ; preds = %if.end
  br label %do.body11

do.body11:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger12) #9
  %call13 = call ptr @aws_logger_get()
  store ptr %call13, ptr %logger12, align 8, !tbaa !4
  %16 = load ptr, ptr %logger12, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %16, null
  br i1 %cmp14, label %land.lhs.true15, label %if.end25

land.lhs.true15:                                  ; preds = %do.body11
  %17 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable16 = getelementptr inbounds %struct.aws_logger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vtable16, align 8, !tbaa !8
  %get_log_level17 = getelementptr inbounds %struct.aws_logger_vtable, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %get_log_level17, align 8, !tbaa !10
  %20 = load ptr, ptr %logger12, align 8, !tbaa !4
  %call18 = call i32 %19(ptr noundef %20, i32 noundef 6146)
  %cmp19 = icmp uge i32 %call18, 3
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %land.lhs.true15
  %21 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable21 = getelementptr inbounds %struct.aws_logger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %vtable21, align 8, !tbaa !8
  %log22 = getelementptr inbounds %struct.aws_logger_vtable, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %log22, align 8, !tbaa !12
  %24 = load ptr, ptr %logger12, align 8, !tbaa !4
  %25 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %sts_web_identity_provider23 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %sts_web_identity_provider23, align 8, !tbaa !73
  %call24 = call i32 (ptr, i32, i32, ptr, ...) %23(ptr noundef %24, i32 noundef 3, i32 noundef 6146, ptr noundef @.str.20, ptr noundef %26)
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true15, %do.body11
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger12) #9
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  %27 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %error_code = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %27, i32 0, i32 13
  %28 = load i32, ptr %error_code, align 4, !tbaa !82
  %cmp28 = icmp eq i32 %28, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %do.end27
  %29 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %error_code30 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %29, i32 0, i32 13
  store i32 6160, ptr %error_code30, align 4, !tbaa !82
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.end27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %do.end
  %30 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %original_callback = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %original_callback, align 8, !tbaa !75
  %32 = load ptr, ptr %credentials, align 8, !tbaa !4
  %33 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %error_code33 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %33, i32 0, i32 13
  %34 = load i32, ptr %error_code33, align 4, !tbaa !82
  %35 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %original_user_data = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %35, i32 0, i32 3
  %36 = load ptr, ptr %original_user_data, align 8, !tbaa !74
  call void %31(ptr noundef %32, i32 noundef %34, ptr noundef %36)
  %37 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  call void @s_user_data_destroy(ptr noundef %37)
  %38 = load ptr, ptr %credentials, align 8, !tbaa !4
  call void @aws_credentials_release(ptr noundef %38)
  call void @llvm.lifetime.end.p0(i64 8, ptr %credentials) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_query_credentials(ptr noundef %user_data) #0 {
entry:
  %user_data.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %token_buf = alloca %struct.aws_byte_buf, align 8
  %success = alloca i8, align 1
  %work_cursor = alloca %struct.aws_byte_cursor, align 8
  %tmp = alloca %struct.aws_byte_cursor, align 8
  %tmp14 = alloca %struct.aws_byte_cursor, align 8
  %tmp21 = alloca %struct.aws_byte_cursor, align 8
  %tmp28 = alloca %struct.aws_byte_cursor, align 8
  %tmp40 = alloca %struct.aws_byte_cursor, align 8
  %body_cursor = alloca %struct.aws_byte_cursor, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %connection, align 8, !tbaa !76
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.33, ptr noundef @.str.34, i32 noundef 657) #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %2 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %impl1, align 8, !tbaa !68
  store ptr %4, ptr %impl, align 8, !tbaa !4
  %5 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  call void @s_user_data_reset_request_and_response(ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 32, ptr %token_buf) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9
  store i8 0, ptr %success, align 1, !tbaa !57
  br label %do.body2

do.body2:                                         ; preds = %do.end
  call void @llvm.memset.p0.i64(ptr align 8 %token_buf, i8 0, i64 32, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body2
  br label %do.end3

do.end3:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %work_cursor) #9
  %call = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.35)
  %6 = getelementptr inbounds { i64, ptr }, ptr %work_cursor, i32 0, i32 0
  %7 = extractvalue { i64, ptr } %call, 0
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds { i64, ptr }, ptr %work_cursor, i32 0, i32 1
  %9 = extractvalue { i64, ptr } %call, 1
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %10, i32 0, i32 11
  %call4 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %payload_buf, ptr noundef %work_cursor)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end3
  br label %on_finish

if.end7:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #9
  %11 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_arn = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %role_arn, align 8, !tbaa !48
  %call8 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %12)
  %13 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 0
  %14 = extractvalue { i64, ptr } %call8, 0
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 1
  %16 = extractvalue { i64, ptr } %call8, 1
  store ptr %16, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %work_cursor, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #9
  %17 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf9 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %17, i32 0, i32 11
  %call10 = call i32 @aws_byte_buf_append_encoding_uri_param(ptr noundef %payload_buf9, ptr noundef %work_cursor)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  br label %on_finish

if.end13:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp14) #9
  %call15 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.36)
  %18 = getelementptr inbounds { i64, ptr }, ptr %tmp14, i32 0, i32 0
  %19 = extractvalue { i64, ptr } %call15, 0
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds { i64, ptr }, ptr %tmp14, i32 0, i32 1
  %21 = extractvalue { i64, ptr } %call15, 1
  store ptr %21, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %work_cursor, ptr align 8 %tmp14, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp14) #9
  %22 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf16 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %22, i32 0, i32 11
  %call17 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %payload_buf16, ptr noundef %work_cursor)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  br label %on_finish

if.end20:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp21) #9
  %23 = load ptr, ptr %impl, align 8, !tbaa !4
  %role_session_name = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %role_session_name, align 8, !tbaa !51
  %call22 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %24)
  %25 = getelementptr inbounds { i64, ptr }, ptr %tmp21, i32 0, i32 0
  %26 = extractvalue { i64, ptr } %call22, 0
  store i64 %26, ptr %25, align 8
  %27 = getelementptr inbounds { i64, ptr }, ptr %tmp21, i32 0, i32 1
  %28 = extractvalue { i64, ptr } %call22, 1
  store ptr %28, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %work_cursor, ptr align 8 %tmp21, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp21) #9
  %29 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf23 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %29, i32 0, i32 11
  %call24 = call i32 @aws_byte_buf_append_encoding_uri_param(ptr noundef %payload_buf23, ptr noundef %work_cursor)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  br label %on_finish

if.end27:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp28) #9
  %call29 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.37)
  %30 = getelementptr inbounds { i64, ptr }, ptr %tmp28, i32 0, i32 0
  %31 = extractvalue { i64, ptr } %call29, 0
  store i64 %31, ptr %30, align 8
  %32 = getelementptr inbounds { i64, ptr }, ptr %tmp28, i32 0, i32 1
  %33 = extractvalue { i64, ptr } %call29, 1
  store ptr %33, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %work_cursor, ptr align 8 %tmp28, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp28) #9
  %34 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf30 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %34, i32 0, i32 11
  %call31 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %payload_buf30, ptr noundef %work_cursor)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  br label %on_finish

if.end34:                                         ; preds = %if.end27
  %35 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %allocator, align 8, !tbaa !71
  %37 = load ptr, ptr %impl, align 8, !tbaa !4
  %token_file_path = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %token_file_path, align 8, !tbaa !54
  %call35 = call ptr @aws_string_c_str(ptr noundef %38)
  %call36 = call i32 @aws_byte_buf_init_from_file(ptr noundef %token_buf, ptr noundef %36, ptr noundef %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  br label %on_finish

if.end39:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp40) #9
  %call41 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %token_buf)
  %39 = getelementptr inbounds { i64, ptr }, ptr %tmp40, i32 0, i32 0
  %40 = extractvalue { i64, ptr } %call41, 0
  store i64 %40, ptr %39, align 8
  %41 = getelementptr inbounds { i64, ptr }, ptr %tmp40, i32 0, i32 1
  %42 = extractvalue { i64, ptr } %call41, 1
  store ptr %42, ptr %41, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %work_cursor, ptr align 8 %tmp40, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp40) #9
  %43 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf42 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %43, i32 0, i32 11
  %call43 = call i32 @aws_byte_buf_append_encoding_uri_param(ptr noundef %payload_buf42, ptr noundef %work_cursor)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end39
  br label %on_finish

if.end46:                                         ; preds = %if.end39
  %44 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf47 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %44, i32 0, i32 11
  %call48 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %payload_buf47)
  %45 = getelementptr inbounds { i64, ptr }, ptr %body_cursor, i32 0, i32 0
  %46 = extractvalue { i64, ptr } %call48, 0
  store i64 %46, ptr %45, align 8
  %47 = getelementptr inbounds { i64, ptr }, ptr %body_cursor, i32 0, i32 1
  %48 = extractvalue { i64, ptr } %call48, 1
  store ptr %48, ptr %47, align 8
  %49 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call49 = call i32 @s_make_sts_web_identity_http_query(ptr noundef %49, ptr noundef %body_cursor)
  %cmp = icmp eq i32 %call49, -1
  br i1 %cmp, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  br label %on_finish

if.end51:                                         ; preds = %if.end46
  store i8 1, ptr %success, align 1, !tbaa !57
  br label %on_finish

on_finish:                                        ; preds = %if.end51, %if.then50, %if.then45, %if.then38, %if.then33, %if.then26, %if.then19, %if.then12, %if.then6
  call void @aws_byte_buf_clean_up(ptr noundef %token_buf)
  %50 = load i8, ptr %success, align 1, !tbaa !57, !range !60, !noundef !61
  %tobool52 = trunc i8 %50 to i1
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %on_finish
  %51 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  call void @s_finalize_get_credentials_query(ptr noundef %51)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %on_finish
  call void @llvm.lifetime.end.p0(i64 16, ptr %work_cursor) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %token_buf) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @s_parse_credentials_from_response(ptr noundef %query_user_data, ptr noundef %response) #0 {
entry:
  %query_user_data.addr = alloca ptr, align 8
  %response.addr = alloca ptr, align 8
  %credentials = alloca ptr, align 8
  %now = alloca i64, align 8
  %logger = alloca ptr, align 8
  %now_seconds = alloca i64, align 8
  %options = alloca %struct.aws_xml_parser_options, align 8
  %logger18 = alloca ptr, align 8
  %logger41 = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  %agg.tmp60 = alloca %struct.aws_byte_cursor, align 8
  %agg.tmp63 = alloca %struct.aws_byte_cursor, align 8
  %logger70 = alloca ptr, align 8
  store ptr %query_user_data, ptr %query_user_data.addr, align 8, !tbaa !4
  store ptr %response, ptr %response.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %credentials) #9
  store ptr null, ptr %credentials, align 8, !tbaa !4
  %0 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %len, align 8, !tbaa !67
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %on_finish

if.end:                                           ; preds = %lor.lhs.false
  store i64 -1, ptr %now, align 8, !tbaa !32
  %call = call i32 @aws_sys_clock_get_ticks(ptr noundef %now)
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end11

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
  %5 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %6(ptr noundef %7, i32 noundef 6146)
  %cmp6 = icmp uge i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable8, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !12
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.21)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_finish

if.end11:                                         ; preds = %if.end
  %12 = load i64, ptr %now, align 8, !tbaa !32
  %call12 = call i64 @aws_timestamp_convert(i64 noundef %12, i32 noundef 1000000000, i32 noundef 1, ptr noundef null)
  store i64 %call12, ptr %now_seconds, align 8, !tbaa !32
  %13 = load i64, ptr %now_seconds, align 8, !tbaa !32
  %add = add i64 %13, 900
  %14 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %expiration_timepoint_in_seconds = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %14, i32 0, i32 10
  store i64 %add, ptr %expiration_timepoint_in_seconds, align 8, !tbaa !83
  %doc = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 0
  %15 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %call13 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %15)
  %16 = getelementptr inbounds { i64, ptr }, ptr %doc, i32 0, i32 0
  %17 = extractvalue { i64, ptr } %call13, 0
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds { i64, ptr }, ptr %doc, i32 0, i32 1
  %19 = extractvalue { i64, ptr } %call13, 1
  store ptr %19, ptr %18, align 8
  %max_depth = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 1
  store i64 0, ptr %max_depth, align 8, !tbaa !84
  %on_root_encountered = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 2
  store ptr @s_stswebid_200_xml_on_root, ptr %on_root_encountered, align 8, !tbaa !86
  %user_data = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 3
  %20 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  store ptr %20, ptr %user_data, align 8, !tbaa !87
  %21 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %allocator, align 8, !tbaa !71
  %call14 = call i32 @aws_xml_parse(ptr noundef %22, ptr noundef %options)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end35

if.then16:                                        ; preds = %if.end11
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger18) #9
  %call19 = call ptr @aws_logger_get()
  store ptr %call19, ptr %logger18, align 8, !tbaa !4
  %23 = load ptr, ptr %logger18, align 8, !tbaa !4
  %cmp20 = icmp ne ptr %23, null
  br i1 %cmp20, label %land.lhs.true21, label %if.end32

land.lhs.true21:                                  ; preds = %do.body17
  %24 = load ptr, ptr %logger18, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable22, align 8, !tbaa !8
  %get_log_level23 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %get_log_level23, align 8, !tbaa !10
  %27 = load ptr, ptr %logger18, align 8, !tbaa !4
  %call24 = call i32 %26(ptr noundef %27, i32 noundef 6146)
  %cmp25 = icmp uge i32 %call24, 2
  br i1 %cmp25, label %if.then26, label %if.end32

if.then26:                                        ; preds = %land.lhs.true21
  %28 = load ptr, ptr %logger18, align 8, !tbaa !4
  %vtable27 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable27, align 8, !tbaa !8
  %log28 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %log28, align 8, !tbaa !12
  %31 = load ptr, ptr %logger18, align 8, !tbaa !4
  %call29 = call i32 @aws_last_error()
  %call30 = call ptr @aws_error_str(i32 noundef %call29)
  %call31 = call i32 (ptr, i32, i32, ptr, ...) %30(ptr noundef %31, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.22, ptr noundef %call30)
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %land.lhs.true21, %do.body17
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger18) #9
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %on_finish

if.end35:                                         ; preds = %if.end11
  %32 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %access_key_id = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %32, i32 0, i32 7
  %33 = load ptr, ptr %access_key_id, align 8, !tbaa !78
  %tobool36 = icmp ne ptr %33, null
  br i1 %tobool36, label %lor.lhs.false37, label %if.then39

lor.lhs.false37:                                  ; preds = %if.end35
  %34 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %secret_access_key = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %34, i32 0, i32 8
  %35 = load ptr, ptr %secret_access_key, align 8, !tbaa !79
  %tobool38 = icmp ne ptr %35, null
  br i1 %tobool38, label %if.end56, label %if.then39

if.then39:                                        ; preds = %lor.lhs.false37, %if.end35
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger41) #9
  %call42 = call ptr @aws_logger_get()
  store ptr %call42, ptr %logger41, align 8, !tbaa !4
  %36 = load ptr, ptr %logger41, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %36, null
  br i1 %cmp43, label %land.lhs.true44, label %if.end53

land.lhs.true44:                                  ; preds = %do.body40
  %37 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable45 = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable45, align 8, !tbaa !8
  %get_log_level46 = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %get_log_level46, align 8, !tbaa !10
  %40 = load ptr, ptr %logger41, align 8, !tbaa !4
  %call47 = call i32 %39(ptr noundef %40, i32 noundef 6146)
  %cmp48 = icmp uge i32 %call47, 2
  br i1 %cmp48, label %if.then49, label %if.end53

if.then49:                                        ; preds = %land.lhs.true44
  %41 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable50, align 8, !tbaa !8
  %log51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %log51, align 8, !tbaa !12
  %44 = load ptr, ptr %logger41, align 8, !tbaa !4
  %call52 = call i32 (ptr, i32, i32, ptr, ...) %43(ptr noundef %44, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.23)
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %land.lhs.true44, %do.body40
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger41) #9
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  br label %on_finish

if.end56:                                         ; preds = %lor.lhs.false37
  %45 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %allocator57 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %allocator57, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #9
  %47 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %access_key_id58 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %47, i32 0, i32 7
  %48 = load ptr, ptr %access_key_id58, align 8, !tbaa !78
  %call59 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %48)
  %49 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %50 = extractvalue { i64, ptr } %call59, 0
  store i64 %50, ptr %49, align 8
  %51 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %52 = extractvalue { i64, ptr } %call59, 1
  store ptr %52, ptr %51, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp60) #9
  %53 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %secret_access_key61 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %53, i32 0, i32 8
  %54 = load ptr, ptr %secret_access_key61, align 8, !tbaa !79
  %call62 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %54)
  %55 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp60, i32 0, i32 0
  %56 = extractvalue { i64, ptr } %call62, 0
  store i64 %56, ptr %55, align 8
  %57 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp60, i32 0, i32 1
  %58 = extractvalue { i64, ptr } %call62, 1
  store ptr %58, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp63) #9
  %59 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %session_token = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %59, i32 0, i32 9
  %60 = load ptr, ptr %session_token, align 8, !tbaa !80
  %call64 = call { i64, ptr } @aws_byte_cursor_from_string(ptr noundef %60)
  %61 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp63, i32 0, i32 0
  %62 = extractvalue { i64, ptr } %call64, 0
  store i64 %62, ptr %61, align 8
  %63 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp63, i32 0, i32 1
  %64 = extractvalue { i64, ptr } %call64, 1
  store ptr %64, ptr %63, align 8
  %65 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %expiration_timepoint_in_seconds65 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %65, i32 0, i32 10
  %66 = load i64, ptr %expiration_timepoint_in_seconds65, align 8, !tbaa !83
  %67 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp60, i32 0, i32 0
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp60, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %call66 = call ptr @aws_credentials_new(ptr noundef %46, i64 %68, ptr %70, i64 %72, ptr %74, ptr noundef byval(%struct.aws_byte_cursor) align 8 %agg.tmp63, i64 noundef %66)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp60) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp63) #9
  store ptr %call66, ptr %credentials, align 8, !tbaa !4
  %75 = load ptr, ptr %credentials, align 8, !tbaa !4
  %cmp67 = icmp eq ptr %75, null
  br i1 %cmp67, label %if.then68, label %if.end85

if.then68:                                        ; preds = %if.end56
  br label %do.body69

do.body69:                                        ; preds = %if.then68
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger70) #9
  %call71 = call ptr @aws_logger_get()
  store ptr %call71, ptr %logger70, align 8, !tbaa !4
  %76 = load ptr, ptr %logger70, align 8, !tbaa !4
  %cmp72 = icmp ne ptr %76, null
  br i1 %cmp72, label %land.lhs.true73, label %if.end82

land.lhs.true73:                                  ; preds = %do.body69
  %77 = load ptr, ptr %logger70, align 8, !tbaa !4
  %vtable74 = getelementptr inbounds %struct.aws_logger, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %vtable74, align 8, !tbaa !8
  %get_log_level75 = getelementptr inbounds %struct.aws_logger_vtable, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %get_log_level75, align 8, !tbaa !10
  %80 = load ptr, ptr %logger70, align 8, !tbaa !4
  %call76 = call i32 %79(ptr noundef %80, i32 noundef 6146)
  %cmp77 = icmp uge i32 %call76, 2
  br i1 %cmp77, label %if.then78, label %if.end82

if.then78:                                        ; preds = %land.lhs.true73
  %81 = load ptr, ptr %logger70, align 8, !tbaa !4
  %vtable79 = getelementptr inbounds %struct.aws_logger, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %vtable79, align 8, !tbaa !8
  %log80 = getelementptr inbounds %struct.aws_logger_vtable, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %log80, align 8, !tbaa !12
  %84 = load ptr, ptr %logger70, align 8, !tbaa !4
  %call81 = call i32 (ptr, i32, i32, ptr, ...) %83(ptr noundef %84, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.24)
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %land.lhs.true73, %do.body69
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger70) #9
  br label %do.cond83

do.cond83:                                        ; preds = %if.end82
  br label %do.end84

do.end84:                                         ; preds = %do.cond83
  br label %on_finish

if.end85:                                         ; preds = %if.end56
  br label %on_finish

on_finish:                                        ; preds = %if.end85, %do.end84, %do.end55, %do.end34, %do.end, %if.then
  %85 = load ptr, ptr %credentials, align 8, !tbaa !4
  %cmp86 = icmp eq ptr %85, null
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %on_finish
  %86 = load ptr, ptr %query_user_data.addr, align 8, !tbaa !4
  %error_code = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %86, i32 0, i32 13
  store i32 6160, ptr %error_code, align 4, !tbaa !82
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %on_finish
  %87 = load ptr, ptr %credentials, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %credentials) #9
  ret ptr %87
}

declare void @aws_credentials_release(ptr noundef) #2

declare i32 @aws_sys_clock_get_ticks(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_stswebid_200_xml_on_root(ptr noundef %node, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %node_name = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %node_name) #9
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_xml_node_get_name(ptr noundef %0)
  %1 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 0
  %2 = extractvalue { i64, ptr } %call, 0
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 1
  %4 = extractvalue { i64, ptr } %call, 1
  store ptr %4, ptr %3, align 8
  %call1 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.25)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_xml_node_traverse(ptr noundef %5, ptr noundef @s_stswebid_200_xml_on_AssumeRoleWithWebIdentityResponse_child, ptr noundef %6)
  store i32 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %node_name) #9
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @aws_xml_parse(ptr noundef, ptr noundef) #2

declare ptr @aws_credentials_new(ptr noundef, i64, ptr, i64, ptr, ptr noundef byval(%struct.aws_byte_cursor) align 8, i64 noundef) #2

declare { i64, ptr } @aws_xml_node_get_name(ptr noundef) #2

declare zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef, ptr noundef) #2

declare i32 @aws_xml_node_traverse(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_stswebid_200_xml_on_AssumeRoleWithWebIdentityResponse_child(ptr noundef %node, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %node_name = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %node_name) #9
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_xml_node_get_name(ptr noundef %0)
  %1 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 0
  %2 = extractvalue { i64, ptr } %call, 0
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 1
  %4 = extractvalue { i64, ptr } %call, 1
  store ptr %4, ptr %3, align 8
  %call1 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.26)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_xml_node_traverse(ptr noundef %5, ptr noundef @s_stswebid_200_xml_on_AssumeRoleWithWebIdentityResult_child, ptr noundef %6)
  store i32 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %node_name) #9
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @s_stswebid_200_xml_on_AssumeRoleWithWebIdentityResult_child(ptr noundef %node, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %node_name = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %node_name) #9
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_xml_node_get_name(ptr noundef %0)
  %1 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 0
  %2 = extractvalue { i64, ptr } %call, 0
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 1
  %4 = extractvalue { i64, ptr } %call, 1
  store ptr %4, ptr %3, align 8
  %call1 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.27)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_xml_node_traverse(ptr noundef %5, ptr noundef @s_stswebid_200_xml_on_Credentials_child, ptr noundef %6)
  store i32 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %node_name) #9
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @s_stswebid_200_xml_on_Credentials_child(ptr noundef %node, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %query_user_data = alloca ptr, align 8
  %node_name = alloca %struct.aws_byte_cursor, align 8
  %credential_data = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %expiration = alloca %struct.aws_date_time, align 8
  %logger = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %query_user_data) #9
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %query_user_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %node_name) #9
  %1 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_xml_node_get_name(ptr noundef %1)
  %2 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 0
  %3 = extractvalue { i64, ptr } %call, 0
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 1
  %5 = extractvalue { i64, ptr } %call, 1
  store ptr %5, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %credential_data) #9
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %credential_data, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call1 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.28)
  br i1 %call1, label %if.then, label %if.end5

if.then:                                          ; preds = %do.end
  %6 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_xml_node_as_body(ptr noundef %6, ptr noundef %credential_data)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %query_user_data, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %allocator, align 8, !tbaa !71
  %call4 = call ptr @aws_string_new_from_cursor(ptr noundef %8, ptr noundef %credential_data)
  %9 = load ptr, ptr %query_user_data, align 8, !tbaa !4
  %access_key_id = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %9, i32 0, i32 7
  store ptr %call4, ptr %access_key_id, align 8, !tbaa !78
  br label %if.end5

if.end5:                                          ; preds = %if.end, %do.end
  %call6 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.29)
  br i1 %call6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call8 = call i32 @aws_xml_node_as_body(ptr noundef %10, ptr noundef %credential_data)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

if.end11:                                         ; preds = %if.then7
  %11 = load ptr, ptr %query_user_data, align 8, !tbaa !4
  %allocator12 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %allocator12, align 8, !tbaa !71
  %call13 = call ptr @aws_string_new_from_cursor(ptr noundef %12, ptr noundef %credential_data)
  %13 = load ptr, ptr %query_user_data, align 8, !tbaa !4
  %secret_access_key = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %13, i32 0, i32 8
  store ptr %call13, ptr %secret_access_key, align 8, !tbaa !79
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end5
  %call15 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.30)
  br i1 %call15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end14
  %14 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call17 = call i32 @aws_xml_node_as_body(ptr noundef %14, ptr noundef %credential_data)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

if.end20:                                         ; preds = %if.then16
  %15 = load ptr, ptr %query_user_data, align 8, !tbaa !4
  %allocator21 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %allocator21, align 8, !tbaa !71
  %call22 = call ptr @aws_string_new_from_cursor(ptr noundef %16, ptr noundef %credential_data)
  %17 = load ptr, ptr %query_user_data, align 8, !tbaa !4
  %session_token = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %17, i32 0, i32 9
  store ptr %call22, ptr %session_token, align 8, !tbaa !80
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end14
  %call24 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.31)
  br i1 %call24, label %if.then25, label %if.end52

if.then25:                                        ; preds = %if.end23
  %18 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call26 = call i32 @aws_xml_node_as_body(ptr noundef %18, ptr noundef %credential_data)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

if.end29:                                         ; preds = %if.then25
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %credential_data, i32 0, i32 0
  %19 = load i64, ptr %len, align 8, !tbaa !88
  %cmp = icmp ne i64 %19, 0
  br i1 %cmp, label %if.then30, label %if.end51

if.then30:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 136, ptr %expiration) #9
  %call31 = call i32 @aws_date_time_init_from_str_cursor(ptr noundef %expiration, ptr noundef %credential_data, i32 noundef 1)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then30
  %call34 = call double @aws_date_time_as_epoch_secs(ptr noundef %expiration)
  %conv = fptoui double %call34 to i64
  %20 = load ptr, ptr %query_user_data, align 8, !tbaa !4
  %expiration_timepoint_in_seconds = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %20, i32 0, i32 10
  store i64 %conv, ptr %expiration_timepoint_in_seconds, align 8, !tbaa !83
  br label %if.end50

if.else:                                          ; preds = %if.then30
  br label %do.body35

do.body35:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call36 = call ptr @aws_logger_get()
  store ptr %call36, ptr %logger, align 8, !tbaa !4
  %21 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp37 = icmp ne ptr %21, null
  br i1 %cmp37, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %do.body35
  %22 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %25 = load ptr, ptr %logger, align 8, !tbaa !4
  %call39 = call i32 %24(ptr noundef %25, i32 noundef 6146)
  %cmp40 = icmp uge i32 %call39, 2
  br i1 %cmp40, label %if.then42, label %if.end47

if.then42:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable43 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable43, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %log, align 8, !tbaa !12
  %29 = load ptr, ptr %logger, align 8, !tbaa !4
  %call44 = call i32 @aws_last_error()
  %call45 = call ptr @aws_error_str(i32 noundef %call44)
  %call46 = call i32 (ptr, i32, i32, ptr, ...) %28(ptr noundef %29, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.32, ptr noundef %call45)
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %land.lhs.true, %do.body35
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.then33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end49
  call void @llvm.lifetime.end.p0(i64 136, ptr %expiration) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end51

if.end51:                                         ; preds = %cleanup.cont, %if.end29
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end23
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

cleanup53:                                        ; preds = %if.end52, %cleanup, %if.then28, %if.then19, %if.then10, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr %credential_data) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %node_name) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %query_user_data) #9
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare i32 @aws_xml_node_as_body(ptr noundef, ptr noundef) #2

declare ptr @aws_string_new_from_cursor(ptr noundef, ptr noundef) #2

declare i32 @aws_date_time_init_from_str_cursor(ptr noundef, ptr noundef, i32 noundef) #2

declare double @aws_date_time_as_epoch_secs(ptr noundef) #2

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: nounwind uwtable
define internal void @s_user_data_reset_request_and_response(ptr noundef %user_data) #0 {
entry:
  %user_data.addr = alloca ptr, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %response = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %0, i32 0, i32 6
  call void @aws_byte_buf_reset(ptr noundef %response, i1 noundef zeroext true)
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %payload_buf = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %1, i32 0, i32 11
  call void @aws_byte_buf_reset(ptr noundef %payload_buf, i1 noundef zeroext true)
  %2 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %status_code = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %2, i32 0, i32 12
  store i32 0, ptr %status_code, align 8, !tbaa !81
  %3 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %request = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %request, align 8, !tbaa !89
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %request1 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %request1, align 8, !tbaa !89
  %call = call ptr @aws_http_message_get_body_stream(ptr noundef %6)
  call void @aws_input_stream_destroy(ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %request2 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %request2, align 8, !tbaa !89
  call void @aws_http_message_destroy(ptr noundef %8)
  %9 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %request3 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %9, i32 0, i32 5
  store ptr null, ptr %request3, align 8, !tbaa !89
  %10 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %access_key_id = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %access_key_id, align 8, !tbaa !78
  call void @aws_string_destroy(ptr noundef %11)
  %12 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %access_key_id4 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %12, i32 0, i32 7
  store ptr null, ptr %access_key_id4, align 8, !tbaa !78
  %13 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %secret_access_key = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %secret_access_key, align 8, !tbaa !79
  call void @aws_string_destroy_secure(ptr noundef %14)
  %15 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %secret_access_key5 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %15, i32 0, i32 8
  store ptr null, ptr %secret_access_key5, align 8, !tbaa !79
  %16 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %session_token = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %session_token, align 8, !tbaa !80
  call void @aws_string_destroy_secure(ptr noundef %17)
  %18 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %session_token6 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %18, i32 0, i32 9
  store ptr null, ptr %session_token6, align 8, !tbaa !80
  ret void
}

declare { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef) #2

declare i32 @aws_byte_buf_append_encoding_uri_param(ptr noundef, ptr noundef) #2

declare i32 @aws_byte_buf_init_from_file(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_make_sts_web_identity_http_query(ptr noundef %user_data, ptr noundef %body_cursor) #0 {
entry:
  %retval = alloca i32, align 4
  %user_data.addr = alloca ptr, align 8
  %body_cursor.addr = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %input_stream = alloca ptr, align 8
  %request = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %impl = alloca ptr, align 8
  %content_length = alloca [21 x i8], align 16
  %content_len_header = alloca %struct.aws_http_header, align 8
  %request_options = alloca %struct.aws_http_make_request_options, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %body_cursor, ptr %body_cursor.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %connection, align 8, !tbaa !76
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.33, ptr noundef @.str.34, i32 noundef 561) #10
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #9
  store ptr null, ptr %stream, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_stream) #9
  store ptr null, ptr %input_stream, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #9
  %2 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !71
  %call = call ptr @aws_http_message_new_request(ptr noundef %3)
  store ptr %call, ptr %request, align 8, !tbaa !4
  %4 = load ptr, ptr %request, align 8, !tbaa !4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end2:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %5 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %impl3 = getelementptr inbounds %struct.aws_credentials_provider, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %impl3, align 8, !tbaa !68
  store ptr %7, ptr %impl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 21, ptr %content_length) #9
  %arraydecay = getelementptr inbounds [21 x i8], ptr %content_length, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 21, i1 false)
  %arraydecay4 = getelementptr inbounds [21 x i8], ptr %content_length, i64 0, i64 0
  %8 = load ptr, ptr %body_cursor.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %len, align 8, !tbaa !88
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay4, i64 noundef 21, ptr noundef @.str.38, i64 noundef %9) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr %content_len_header) #9
  %name = getelementptr inbounds %struct.aws_http_header, ptr %content_len_header, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name, ptr align 8 @s_content_length, i64 16, i1 false), !tbaa.struct !31
  %value = getelementptr inbounds %struct.aws_http_header, ptr %content_len_header, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [21 x i8], ptr %content_length, i64 0, i64 0
  %call7 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef %arraydecay6)
  %10 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %11 = extractvalue { i64, ptr } %call7, 0
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %13 = extractvalue { i64, ptr } %call7, 1
  store ptr %13, ptr %12, align 8
  %compression = getelementptr inbounds %struct.aws_http_header, ptr %content_len_header, i32 0, i32 2
  store i32 0, ptr %compression, align 8, !tbaa !90
  %14 = load ptr, ptr %request, align 8, !tbaa !4
  %call8 = call i32 @aws_http_message_add_header(ptr noundef %14, ptr noundef byval(%struct.aws_http_header) align 8 %content_len_header)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end2
  br label %on_error

if.end11:                                         ; preds = %if.end2
  %15 = load ptr, ptr %request, align 8, !tbaa !4
  %call12 = call i32 @aws_http_message_add_header(ptr noundef %15, ptr noundef byval(%struct.aws_http_header) align 8 @s_content_type_header)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %on_error

if.end15:                                         ; preds = %if.end11
  %16 = load ptr, ptr %request, align 8, !tbaa !4
  %call16 = call i32 @aws_http_message_add_header(ptr noundef %16, ptr noundef byval(%struct.aws_http_header) align 8 @s_host_header)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  br label %on_error

if.end19:                                         ; preds = %if.end15
  %17 = load ptr, ptr %request, align 8, !tbaa !4
  %call20 = call i32 @aws_http_message_add_header(ptr noundef %17, ptr noundef byval(%struct.aws_http_header) align 8 @s_api_version_header)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  br label %on_error

if.end23:                                         ; preds = %if.end19
  %18 = load ptr, ptr %request, align 8, !tbaa !4
  %call24 = call i32 @aws_http_message_add_header(ptr noundef %18, ptr noundef byval(%struct.aws_http_header) align 8 @s_accept_header)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  br label %on_error

if.end27:                                         ; preds = %if.end23
  %19 = load ptr, ptr %request, align 8, !tbaa !4
  %call28 = call i32 @aws_http_message_add_header(ptr noundef %19, ptr noundef byval(%struct.aws_http_header) align 8 @s_user_agent_header)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  br label %on_error

if.end31:                                         ; preds = %if.end27
  %20 = load ptr, ptr %request, align 8, !tbaa !4
  %call32 = call i32 @aws_http_message_add_header(ptr noundef %20, ptr noundef byval(%struct.aws_http_header) align 8 @s_keep_alive_header)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  br label %on_error

if.end35:                                         ; preds = %if.end31
  %21 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %allocator36 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %allocator36, align 8, !tbaa !71
  %23 = load ptr, ptr %body_cursor.addr, align 8, !tbaa !4
  %call37 = call ptr @aws_input_stream_new_from_cursor(ptr noundef %22, ptr noundef %23)
  store ptr %call37, ptr %input_stream, align 8, !tbaa !4
  %24 = load ptr, ptr %input_stream, align 8, !tbaa !4
  %tobool38 = icmp ne ptr %24, null
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end35
  br label %on_error

if.end40:                                         ; preds = %if.end35
  %25 = load ptr, ptr %request, align 8, !tbaa !4
  %26 = load ptr, ptr %input_stream, align 8, !tbaa !4
  call void @aws_http_message_set_body_stream(ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %request, align 8, !tbaa !4
  %28 = load i64, ptr @s_path, align 8
  %29 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @s_path, i32 0, i32 1), align 8
  %call41 = call i32 @aws_http_message_set_request_path(ptr noundef %27, i64 %28, ptr %29)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  br label %on_error

if.end44:                                         ; preds = %if.end40
  %30 = load ptr, ptr %request, align 8, !tbaa !4
  %31 = load i64, ptr @aws_http_method_post, align 8
  %32 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @aws_http_method_post, i32 0, i32 1), align 8
  %call45 = call i32 @aws_http_message_set_request_method(ptr noundef %30, i64 %31, ptr %32)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  br label %on_error

if.end48:                                         ; preds = %if.end44
  %33 = load ptr, ptr %request, align 8, !tbaa !4
  %34 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %request49 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %34, i32 0, i32 5
  store ptr %33, ptr %request49, align 8, !tbaa !89
  %self_size = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 0
  store i64 80, ptr %self_size, align 8, !tbaa !92
  %request50 = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 1
  %35 = load ptr, ptr %request, align 8, !tbaa !4
  store ptr %35, ptr %request50, align 8, !tbaa !94
  %user_data51 = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 2
  %36 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %36, ptr %user_data51, align 8, !tbaa !95
  %on_response_headers = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 3
  store ptr @s_on_incoming_headers_fn, ptr %on_response_headers, align 8, !tbaa !96
  %on_response_header_block_done = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 4
  store ptr null, ptr %on_response_header_block_done, align 8, !tbaa !97
  %on_response_body = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 5
  store ptr @s_on_incoming_body_fn, ptr %on_response_body, align 8, !tbaa !98
  %on_metrics = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 6
  store ptr null, ptr %on_metrics, align 8, !tbaa !99
  %on_complete = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 7
  store ptr @s_on_stream_complete_fn, ptr %on_complete, align 8, !tbaa !100
  %on_destroy = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 8
  store ptr null, ptr %on_destroy, align 8, !tbaa !101
  %http2_use_manual_data_writes = getelementptr inbounds %struct.aws_http_make_request_options, ptr %request_options, i32 0, i32 9
  store i8 0, ptr %http2_use_manual_data_writes, align 8, !tbaa !102
  %37 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %function_table, align 8, !tbaa !39
  %aws_http_connection_make_request = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %aws_http_connection_make_request, align 8, !tbaa !103
  %40 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %connection52 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %connection52, align 8, !tbaa !76
  %call53 = call ptr %39(ptr noundef %41, ptr noundef %request_options)
  store ptr %call53, ptr %stream, align 8, !tbaa !4
  %42 = load ptr, ptr %stream, align 8, !tbaa !4
  %tobool54 = icmp ne ptr %42, null
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end48
  br label %on_error

if.end56:                                         ; preds = %if.end48
  %43 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table57 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %function_table57, align 8, !tbaa !39
  %aws_http_stream_activate = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %44, i32 0, i32 5
  %45 = load ptr, ptr %aws_http_stream_activate, align 8, !tbaa !104
  %46 = load ptr, ptr %stream, align 8, !tbaa !4
  %call58 = call i32 %45(ptr noundef %46)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  br label %on_error

if.end61:                                         ; preds = %if.end56
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then60, %if.then55, %if.then47, %if.then43, %if.then39, %if.then34, %if.then30, %if.then26, %if.then22, %if.then18, %if.then14, %if.then10
  %47 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table62 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %function_table62, align 8, !tbaa !39
  %aws_http_stream_release = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %48, i32 0, i32 8
  %49 = load ptr, ptr %aws_http_stream_release, align 8, !tbaa !105
  %50 = load ptr, ptr %stream, align 8, !tbaa !4
  call void %49(ptr noundef %50)
  %51 = load ptr, ptr %input_stream, align 8, !tbaa !4
  call void @aws_input_stream_destroy(ptr noundef %51)
  %52 = load ptr, ptr %request, align 8, !tbaa !4
  call void @aws_http_message_destroy(ptr noundef %52)
  %53 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %request63 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %53, i32 0, i32 5
  store ptr null, ptr %request63, align 8, !tbaa !89
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end61
  call void @llvm.lifetime.end.p0(i64 40, ptr %content_len_header) #9
  call void @llvm.lifetime.end.p0(i64 21, ptr %content_length) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_stream) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #9
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

declare void @aws_byte_buf_reset(ptr noundef, i1 noundef zeroext) #2

declare void @aws_input_stream_destroy(ptr noundef) #2

declare ptr @aws_http_message_get_body_stream(ptr noundef) #2

declare void @aws_http_message_destroy(ptr noundef) #2

declare void @aws_string_destroy_secure(ptr noundef) #2

declare ptr @aws_http_message_new_request(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #7

declare i32 @aws_http_message_add_header(ptr noundef, ptr noundef byval(%struct.aws_http_header) align 8) #2

declare ptr @aws_input_stream_new_from_cursor(ptr noundef, ptr noundef) #2

declare void @aws_http_message_set_body_stream(ptr noundef, ptr noundef) #2

declare i32 @aws_http_message_set_request_path(ptr noundef, i64, ptr) #2

declare i32 @aws_http_message_set_request_method(ptr noundef, i64, ptr) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_on_incoming_headers_fn(ptr noundef %stream, i32 noundef %header_block, ptr noundef %header_array, i64 noundef %num_headers, ptr noundef %wrapped_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %header_block.addr = alloca i32, align 4
  %header_array.addr = alloca ptr, align 8
  %num_headers.addr = alloca i64, align 8
  %wrapped_user_data.addr = alloca ptr, align 8
  %user_data = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger21 = alloca ptr, align 8
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %header_block, ptr %header_block.addr, align 4, !tbaa !63
  store ptr %header_array, ptr %header_array.addr, align 8, !tbaa !4
  store i64 %num_headers, ptr %num_headers.addr, align 8, !tbaa !32
  store ptr %wrapped_user_data, ptr %wrapped_user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %header_array.addr, align 8, !tbaa !4
  %1 = load i64, ptr %num_headers.addr, align 8, !tbaa !32
  %2 = load i32, ptr %header_block.addr, align 4, !tbaa !63
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_data) #9
  %3 = load ptr, ptr %wrapped_user_data.addr, align 8, !tbaa !4
  store ptr %3, ptr %user_data, align 8, !tbaa !4
  %4 = load i32, ptr %header_block.addr, align 4, !tbaa !63
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end39

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %user_data, align 8, !tbaa !4
  %status_code = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %5, i32 0, i32 12
  %6 = load i32, ptr %status_code, align 8, !tbaa !81
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end38

if.then4:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %7 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %impl5 = getelementptr inbounds %struct.aws_credentials_provider, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %impl5, align 8, !tbaa !68
  store ptr %9, ptr %impl, align 8, !tbaa !4
  %10 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %function_table, align 8, !tbaa !39
  %aws_http_stream_get_incoming_response_status = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %aws_http_stream_get_incoming_response_status, align 8, !tbaa !106
  %13 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %user_data, align 8, !tbaa !4
  %status_code6 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %14, i32 0, i32 12
  %call = call i32 %12(ptr noundef %13, ptr noundef %status_code6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.then4
  br label %do.body

do.body:                                          ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call8 = call ptr @aws_logger_get()
  store ptr %call8, ptr %logger, align 8, !tbaa !4
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %15, null
  br i1 %cmp9, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %do.body
  %16 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %19 = load ptr, ptr %logger, align 8, !tbaa !4
  %call10 = call i32 %18(ptr noundef %19, i32 noundef 6146)
  %cmp11 = icmp uge i32 %call10, 2
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable13 = getelementptr inbounds %struct.aws_logger, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %vtable13, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %log, align 8, !tbaa !12
  %23 = load ptr, ptr %logger, align 8, !tbaa !4
  %24 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider14 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %sts_web_identity_provider14, align 8, !tbaa !73
  %call15 = call i32 @aws_last_error()
  %call16 = call ptr @aws_error_str(i32 noundef %call15)
  %call17 = call i32 (ptr, i32, i32, ptr, ...) %22(ptr noundef %23, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.53, ptr noundef %25, ptr noundef %call16)
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end18
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then4
  br label %do.body20

do.body20:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger21) #9
  %call22 = call ptr @aws_logger_get()
  store ptr %call22, ptr %logger21, align 8, !tbaa !4
  %26 = load ptr, ptr %logger21, align 8, !tbaa !4
  %cmp23 = icmp ne ptr %26, null
  br i1 %cmp23, label %land.lhs.true24, label %if.end35

land.lhs.true24:                                  ; preds = %do.body20
  %27 = load ptr, ptr %logger21, align 8, !tbaa !4
  %vtable25 = getelementptr inbounds %struct.aws_logger, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %vtable25, align 8, !tbaa !8
  %get_log_level26 = getelementptr inbounds %struct.aws_logger_vtable, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %get_log_level26, align 8, !tbaa !10
  %30 = load ptr, ptr %logger21, align 8, !tbaa !4
  %call27 = call i32 %29(ptr noundef %30, i32 noundef 6146)
  %cmp28 = icmp uge i32 %call27, 5
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %land.lhs.true24
  %31 = load ptr, ptr %logger21, align 8, !tbaa !4
  %vtable30 = getelementptr inbounds %struct.aws_logger, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %vtable30, align 8, !tbaa !8
  %log31 = getelementptr inbounds %struct.aws_logger_vtable, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %log31, align 8, !tbaa !12
  %34 = load ptr, ptr %logger21, align 8, !tbaa !4
  %35 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider32 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %sts_web_identity_provider32, align 8, !tbaa !73
  %37 = load ptr, ptr %user_data, align 8, !tbaa !4
  %status_code33 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %37, i32 0, i32 12
  %38 = load i32, ptr %status_code33, align 8, !tbaa !81
  %call34 = call i32 (ptr, i32, i32, ptr, ...) %33(ptr noundef %34, i32 noundef 5, i32 noundef 6146, ptr noundef @.str.54, ptr noundef %36, i32 noundef %38)
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %land.lhs.true24, %do.body20
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger21) #9
  br label %do.cond36

do.cond36:                                        ; preds = %if.end35
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup40 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end38

if.end38:                                         ; preds = %cleanup.cont, %if.then2
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40

cleanup40:                                        ; preds = %if.end39, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_data) #9
  br label %return

return:                                           ; preds = %cleanup40, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @s_on_incoming_body_fn(ptr noundef %stream, ptr noundef %body, ptr noundef %wrapped_user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %body.addr = alloca ptr, align 8
  %wrapped_user_data.addr = alloca ptr, align 8
  %user_data = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger12 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger37 = alloca ptr, align 8
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store ptr %body, ptr %body.addr, align 8, !tbaa !4
  store ptr %wrapped_user_data, ptr %wrapped_user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_data) #9
  %1 = load ptr, ptr %wrapped_user_data.addr, align 8, !tbaa !4
  store ptr %1, ptr %user_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %2 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %impl1, align 8, !tbaa !68
  store ptr %4, ptr %impl, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
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
  %call2 = call i32 %8(ptr noundef %9, i32 noundef 6146)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable4, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %log, align 8, !tbaa !12
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %14 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider5 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %sts_web_identity_provider5, align 8, !tbaa !73
  %16 = load ptr, ptr %body.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len, align 8, !tbaa !88
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %12(ptr noundef %13, i32 noundef 6, i32 noundef 6146, ptr noundef @.str.55, ptr noundef %15, i64 noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %body.addr, align 8, !tbaa !4
  %len7 = getelementptr inbounds %struct.aws_byte_cursor, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %len7, align 8, !tbaa !88
  %20 = load ptr, ptr %user_data, align 8, !tbaa !4
  %response = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %20, i32 0, i32 6
  %len8 = getelementptr inbounds %struct.aws_byte_buf, ptr %response, i32 0, i32 0
  %21 = load i64, ptr %len8, align 8, !tbaa !107
  %add = add i64 %19, %21
  %cmp9 = icmp ugt i64 %add, 10000
  br i1 %cmp9, label %if.then10, label %if.end29

if.then10:                                        ; preds = %do.end
  %22 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %function_table, align 8, !tbaa !39
  %aws_http_connection_close = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %aws_http_connection_close, align 8, !tbaa !108
  %25 = load ptr, ptr %user_data, align 8, !tbaa !4
  %connection = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %connection, align 8, !tbaa !76
  call void %24(ptr noundef %26)
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger12) #9
  %call13 = call ptr @aws_logger_get()
  store ptr %call13, ptr %logger12, align 8, !tbaa !4
  %27 = load ptr, ptr %logger12, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %27, null
  br i1 %cmp14, label %land.lhs.true15, label %if.end25

land.lhs.true15:                                  ; preds = %do.body11
  %28 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable16 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable16, align 8, !tbaa !8
  %get_log_level17 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %get_log_level17, align 8, !tbaa !10
  %31 = load ptr, ptr %logger12, align 8, !tbaa !4
  %call18 = call i32 %30(ptr noundef %31, i32 noundef 6146)
  %cmp19 = icmp uge i32 %call18, 2
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %land.lhs.true15
  %32 = load ptr, ptr %logger12, align 8, !tbaa !4
  %vtable21 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable21, align 8, !tbaa !8
  %log22 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %log22, align 8, !tbaa !12
  %35 = load ptr, ptr %logger12, align 8, !tbaa !4
  %36 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider23 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %sts_web_identity_provider23, align 8, !tbaa !73
  %call24 = call i32 (ptr, i32, i32, ptr, ...) %34(ptr noundef %35, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.56, ptr noundef %37)
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true15, %do.body11
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger12) #9
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  %call28 = call i32 @aws_raise_error(i32 noundef 4)
  store i32 %call28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %do.end
  %38 = load ptr, ptr %user_data, align 8, !tbaa !4
  %response30 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %body.addr, align 8, !tbaa !4
  %call31 = call i32 @aws_byte_buf_append_dynamic(ptr noundef %response30, ptr noundef %39)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.then32, label %if.end55

if.then32:                                        ; preds = %if.end29
  %40 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table33 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %function_table33, align 8, !tbaa !39
  %aws_http_connection_close34 = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %41, i32 0, i32 9
  %42 = load ptr, ptr %aws_http_connection_close34, align 8, !tbaa !108
  %43 = load ptr, ptr %user_data, align 8, !tbaa !4
  %connection35 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %connection35, align 8, !tbaa !76
  call void %42(ptr noundef %44)
  br label %do.body36

do.body36:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger37) #9
  %call38 = call ptr @aws_logger_get()
  store ptr %call38, ptr %logger37, align 8, !tbaa !4
  %45 = load ptr, ptr %logger37, align 8, !tbaa !4
  %cmp39 = icmp ne ptr %45, null
  br i1 %cmp39, label %land.lhs.true40, label %if.end52

land.lhs.true40:                                  ; preds = %do.body36
  %46 = load ptr, ptr %logger37, align 8, !tbaa !4
  %vtable41 = getelementptr inbounds %struct.aws_logger, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %vtable41, align 8, !tbaa !8
  %get_log_level42 = getelementptr inbounds %struct.aws_logger_vtable, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %get_log_level42, align 8, !tbaa !10
  %49 = load ptr, ptr %logger37, align 8, !tbaa !4
  %call43 = call i32 %48(ptr noundef %49, i32 noundef 6146)
  %cmp44 = icmp uge i32 %call43, 2
  br i1 %cmp44, label %if.then45, label %if.end52

if.then45:                                        ; preds = %land.lhs.true40
  %50 = load ptr, ptr %logger37, align 8, !tbaa !4
  %vtable46 = getelementptr inbounds %struct.aws_logger, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %vtable46, align 8, !tbaa !8
  %log47 = getelementptr inbounds %struct.aws_logger_vtable, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %log47, align 8, !tbaa !12
  %53 = load ptr, ptr %logger37, align 8, !tbaa !4
  %54 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider48 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %sts_web_identity_provider48, align 8, !tbaa !73
  %call49 = call i32 @aws_last_error()
  %call50 = call ptr @aws_error_str(i32 noundef %call49)
  %call51 = call i32 (ptr, i32, i32, ptr, ...) %52(ptr noundef %53, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.57, ptr noundef %55, ptr noundef %call50)
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %land.lhs.true40, %do.body36
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger37) #9
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end29
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end54, %do.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_data) #9
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @s_on_stream_complete_fn(ptr noundef %stream, i32 noundef %error_code, ptr noundef %data) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %user_data = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %connection = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !62
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_data) #9
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %user_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #9
  %1 = load ptr, ptr %user_data, align 8, !tbaa !4
  %sts_web_identity_provider = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %sts_web_identity_provider, align 8, !tbaa !73
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %impl1, align 8, !tbaa !68
  store ptr %3, ptr %impl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %connection) #9
  %4 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %function_table, align 8, !tbaa !39
  %aws_http_stream_get_connection = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %aws_http_stream_get_connection, align 8, !tbaa !109
  %7 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %call = call ptr %6(ptr noundef %7)
  store ptr %call, ptr %connection, align 8, !tbaa !4
  %8 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table2 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %function_table2, align 8, !tbaa !39
  %aws_http_stream_release = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %aws_http_stream_release, align 8, !tbaa !105
  %11 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void %10(ptr noundef %11)
  %12 = load ptr, ptr %impl, align 8, !tbaa !4
  %function_table3 = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %function_table3, align 8, !tbaa !39
  %aws_http_connection_manager_release_connection = getelementptr inbounds %struct.aws_auth_http_system_vtable, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %aws_http_connection_manager_release_connection, align 8, !tbaa !77
  %15 = load ptr, ptr %impl, align 8, !tbaa !4
  %connection_manager = getelementptr inbounds %struct.aws_credentials_provider_sts_web_identity_impl, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %connection_manager, align 8, !tbaa !43
  %17 = load ptr, ptr %connection, align 8, !tbaa !4
  %call4 = call i32 %14(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %user_data, align 8, !tbaa !4
  %status_code = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %18, i32 0, i32 12
  %19 = load i32, ptr %status_code, align 8, !tbaa !81
  %cmp = icmp ne i32 %19, 200
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %20 = load i32, ptr %error_code.addr, align 4, !tbaa !62
  %cmp5 = icmp ne i32 %20, 0
  br i1 %cmp5, label %if.then, label %if.end12

if.then:                                          ; preds = %lor.lhs.false, %entry
  %21 = load ptr, ptr %user_data, align 8, !tbaa !4
  %attempt_count = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %21, i32 0, i32 14
  %22 = load i32, ptr %attempt_count, align 8, !tbaa !110
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %attempt_count, align 8, !tbaa !110
  %cmp6 = icmp slt i32 %inc, 3
  br i1 %cmp6, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %23 = load ptr, ptr %user_data, align 8, !tbaa !4
  %response = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %23, i32 0, i32 6
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %response, i32 0, i32 0
  %24 = load i64, ptr %len, align 8, !tbaa !107
  %tobool = icmp ne i64 %24, 0
  br i1 %tobool, label %if.then7, label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  %25 = load ptr, ptr %user_data, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %allocator, align 8, !tbaa !71
  %27 = load ptr, ptr %user_data, align 8, !tbaa !4
  %response8 = getelementptr inbounds %struct.sts_web_identity_user_data, ptr %27, i32 0, i32 6
  %call9 = call zeroext i1 @s_parse_retryable_error_from_response(ptr noundef %26, ptr noundef %response8)
  br i1 %call9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then7
  %28 = load ptr, ptr %user_data, align 8, !tbaa !4
  call void @s_query_credentials(ptr noundef %28)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %lor.lhs.false
  %29 = load ptr, ptr %user_data, align 8, !tbaa !4
  call void @s_finalize_get_credentials_query(ptr noundef %29)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %connection) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_data) #9
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
define internal zeroext i1 @s_parse_retryable_error_from_response(ptr noundef %allocator, ptr noundef %response) #0 {
entry:
  %retval = alloca i1, align 1
  %allocator.addr = alloca ptr, align 8
  %response.addr = alloca ptr, align 8
  %get_retryable_error = alloca i8, align 1
  %options = alloca %struct.aws_xml_parser_options, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %response, ptr %response.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %get_retryable_error) #9
  store i8 0, ptr %get_retryable_error, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 40, ptr %options) #9
  %doc = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 0
  %0 = load ptr, ptr %response.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %0)
  %1 = getelementptr inbounds { i64, ptr }, ptr %doc, i32 0, i32 0
  %2 = extractvalue { i64, ptr } %call, 0
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %doc, i32 0, i32 1
  %4 = extractvalue { i64, ptr } %call, 1
  store ptr %4, ptr %3, align 8
  %max_depth = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 1
  store i64 0, ptr %max_depth, align 8, !tbaa !84
  %on_root_encountered = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 2
  store ptr @s_stswebid_error_xml_on_root, ptr %on_root_encountered, align 8, !tbaa !86
  %user_data = getelementptr inbounds %struct.aws_xml_parser_options, ptr %options, i32 0, i32 3
  store ptr %get_retryable_error, ptr %user_data, align 8, !tbaa !87
  %5 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call1 = call i32 @aws_xml_parse(ptr noundef %5, ptr noundef %options)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #9
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %call3 = call i32 %9(ptr noundef %10, i32 noundef 6146)
  %cmp4 = icmp uge i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable6 = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable6, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %log, align 8, !tbaa !12
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %call7 = call i32 @aws_last_error()
  %call8 = call ptr @aws_error_str(i32 noundef %call7)
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %13(ptr noundef %14, i32 noundef 2, i32 noundef 6146, ptr noundef @.str.58, ptr noundef %call8)
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %entry
  %15 = load i8, ptr %get_retryable_error, align 1, !tbaa !57, !range !60, !noundef !61
  %tobool11 = trunc i8 %15 to i1
  store i1 %tobool11, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr %options) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %get_retryable_error) #9
  %16 = load i1, ptr %retval, align 1
  ret i1 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @s_stswebid_error_xml_on_root(ptr noundef %node, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %node_name = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %node_name) #9
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_xml_node_get_name(ptr noundef %0)
  %1 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 0
  %2 = extractvalue { i64, ptr } %call, 0
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 1
  %4 = extractvalue { i64, ptr } %call, 1
  store ptr %4, ptr %3, align 8
  %call1 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.59)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_xml_node_traverse(ptr noundef %5, ptr noundef @s_stswebid_error_xml_on_Error_child, ptr noundef %6)
  store i32 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %node_name) #9
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @s_stswebid_error_xml_on_Error_child(ptr noundef %node, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %get_retryable_error = alloca ptr, align 8
  %node_name = alloca %struct.aws_byte_cursor, align 8
  %data_cursor = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %get_retryable_error) #9
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %get_retryable_error, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %node_name) #9
  %1 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_xml_node_get_name(ptr noundef %1)
  %2 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 0
  %3 = extractvalue { i64, ptr } %call, 0
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %node_name, i32 0, i32 1
  %5 = extractvalue { i64, ptr } %call, 1
  store ptr %5, ptr %4, align 8
  %call1 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %node_name, ptr noundef @.str.60)
  br i1 %call1, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %data_cursor) #9
  call void @llvm.memset.p0.i64(ptr align 8 %data_cursor, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_xml_node_as_body(ptr noundef %6, ptr noundef %data_cursor)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %data_cursor, ptr noundef @.str.61)
  br i1 %call4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %data_cursor, ptr noundef @.str.62)
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %get_retryable_error, align 8, !tbaa !4
  store i8 1, ptr %7, align 1, !tbaa !57
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr %data_cursor) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8

if.end8:                                          ; preds = %cleanup.cont, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

cleanup9:                                         ; preds = %if.end8, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %node_name) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %get_retryable_error) #9
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare ptr @aws_credentials_provider_release(ptr noundef) #2

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

declare void @aws_raise_error_private(i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_timestamp_convert_u64(i64 noundef %ticks, i64 noundef %old_frequency, i64 noundef %new_frequency, ptr noundef %remainder) #3 {
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
  store i64 %ticks, ptr %ticks.addr, align 8, !tbaa !32
  store i64 %old_frequency, ptr %old_frequency.addr, align 8, !tbaa !32
  store i64 %new_frequency, ptr %new_frequency.addr, align 8, !tbaa !32
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %old_frequency.addr, align 8, !tbaa !32
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, ptr %new_frequency.addr, align 8, !tbaa !32
  %cmp1 = icmp ugt i64 %1, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %do.body
  call void @aws_fatal_assert(ptr noundef @.str.63, ptr noundef @.str.64, i32 noundef 24) #10
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %do.end
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  store i64 0, ptr %3, align 8, !tbaa !32
  %4 = load i64, ptr %new_frequency.addr, align 8, !tbaa !32
  %5 = load i64, ptr %old_frequency.addr, align 8, !tbaa !32
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_remainder) #9
  %6 = load i64, ptr %old_frequency.addr, align 8, !tbaa !32
  %7 = load i64, ptr %new_frequency.addr, align 8, !tbaa !32
  %rem = urem i64 %6, %7
  store i64 %rem, ptr %frequency_remainder, align 8, !tbaa !32
  %8 = load i64, ptr %frequency_remainder, align 8, !tbaa !32
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_ratio) #9
  %9 = load i64, ptr %old_frequency.addr, align 8, !tbaa !32
  %10 = load i64, ptr %new_frequency.addr, align 8, !tbaa !32
  %div = udiv i64 %9, %10
  store i64 %div, ptr %frequency_ratio, align 8, !tbaa !32
  %11 = load i64, ptr %ticks.addr, align 8, !tbaa !32
  %12 = load i64, ptr %frequency_ratio, align 8, !tbaa !32
  %rem8 = urem i64 %11, %12
  %13 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  store i64 %rem8, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_ratio) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_remainder) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then3
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_seconds_elapsed) #9
  %14 = load i64, ptr %ticks.addr, align 8, !tbaa !32
  %15 = load i64, ptr %old_frequency.addr, align 8, !tbaa !32
  %div12 = udiv i64 %14, %15
  store i64 %div12, ptr %old_seconds_elapsed, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_remainder) #9
  %16 = load i64, ptr %ticks.addr, align 8, !tbaa !32
  %17 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !32
  %18 = load i64, ptr %old_frequency.addr, align 8, !tbaa !32
  %mul = mul i64 %17, %18
  %sub = sub i64 %16, %mul
  store i64 %sub, ptr %old_remainder, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_whole_part) #9
  %19 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !32
  %20 = load i64, ptr %new_frequency.addr, align 8, !tbaa !32
  %call = call i64 @aws_mul_u64_saturating(i64 noundef %19, i64 noundef %20)
  store i64 %call, ptr %new_ticks_whole_part, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_remainder_part) #9
  %21 = load i64, ptr %old_remainder, align 8, !tbaa !32
  %22 = load i64, ptr %new_frequency.addr, align 8, !tbaa !32
  %call13 = call i64 @aws_mul_u64_saturating(i64 noundef %21, i64 noundef %22)
  %23 = load i64, ptr %old_frequency.addr, align 8, !tbaa !32
  %div14 = udiv i64 %call13, %23
  store i64 %div14, ptr %new_ticks_remainder_part, align 8, !tbaa !32
  %24 = load i64, ptr %new_ticks_whole_part, align 8, !tbaa !32
  %25 = load i64, ptr %new_ticks_remainder_part, align 8, !tbaa !32
  %call15 = call i64 @aws_add_u64_saturating(i64 noundef %24, i64 noundef %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_remainder_part) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_whole_part) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_remainder) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_seconds_elapsed) #9
  ret i64 %call15
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_mul_u64_saturating(i64 noundef %a, i64 noundef %b) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !32
  store i64 %b, ptr %b.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !32
  %1 = load i64, ptr %b.addr, align 8, !tbaa !32
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_add_u64_saturating(i64 noundef %a, i64 noundef %b) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !32
  store i64 %b, ptr %b.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !32
  %1 = load i64, ptr %b.addr, align 8, !tbaa !32
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #9
  ret i64 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

declare void @aws_credentials_provider_invoke_shutdown_callback(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !5, i64 8}
!11 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!12 = !{!11, !5, i64 0}
!13 = !{!14, !5, i64 24}
!14 = !{!"aws_credentials_provider_sts_web_identity_options", !15, i64 0, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!15 = !{!"aws_credentials_provider_shutdown_options", !5, i64 0, !5, i64 8}
!16 = !{!14, !5, i64 32}
!17 = !{!18, !6, i64 0}
!18 = !{!"aws_socket_options", !6, i64 0, !6, i64 4, !19, i64 8, !20, i64 12, !20, i64 14, !20, i64 16, !21, i64 18}
!19 = !{!"int", !6, i64 0}
!20 = !{!"short", !6, i64 0}
!21 = !{!"_Bool", !6, i64 0}
!22 = !{!18, !6, i64 4}
!23 = !{!18, !19, i64 8}
!24 = !{!14, !5, i64 16}
!25 = !{!26, !5, i64 0}
!26 = !{!"aws_http_connection_manager_options", !5, i64 0, !27, i64 8, !5, i64 16, !5, i64 24, !21, i64 32, !5, i64 40, !28, i64 48, !20, i64 64, !5, i64 72, !27, i64 80, !27, i64 88, !21, i64 96, !5, i64 104, !5, i64 112, !27, i64 120, !5, i64 128, !5, i64 136, !21, i64 144, !27, i64 152}
!27 = !{!"long", !6, i64 0}
!28 = !{!"aws_byte_cursor", !27, i64 0, !5, i64 8}
!29 = !{!26, !27, i64 8}
!30 = !{!26, !5, i64 16}
!31 = !{i64 0, i64 8, !32, i64 8, i64 8, !4}
!32 = !{!27, !27, i64 0}
!33 = !{!26, !20, i64 64}
!34 = !{!26, !27, i64 120}
!35 = !{!26, !5, i64 136}
!36 = !{!26, !5, i64 128}
!37 = !{!26, !5, i64 24}
!38 = !{!14, !5, i64 40}
!39 = !{!40, !5, i64 8}
!40 = !{!"aws_credentials_provider_sts_web_identity_impl", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!41 = !{!42, !5, i64 0}
!42 = !{!"aws_auth_http_system_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!43 = !{!40, !5, i64 0}
!44 = !{!45, !5, i64 48}
!45 = !{!"sts_web_identity_parameters", !5, i64 0, !46, i64 8, !46, i64 40, !46, i64 72, !46, i64 104}
!46 = !{!"aws_byte_buf", !27, i64 0, !5, i64 8, !27, i64 16, !5, i64 24}
!47 = !{!45, !27, i64 40}
!48 = !{!40, !5, i64 16}
!49 = !{!45, !5, i64 80}
!50 = !{!45, !27, i64 72}
!51 = !{!40, !5, i64 24}
!52 = !{!45, !5, i64 112}
!53 = !{!45, !27, i64 104}
!54 = !{!40, !5, i64 32}
!55 = !{i64 0, i64 8, !4, i64 8, i64 8, !4}
!56 = !{!45, !5, i64 0}
!57 = !{!21, !21, i64 0}
!58 = !{!59, !27, i64 8}
!59 = !{!"aws_string", !5, i64 0, !27, i64 8, !6, i64 16}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!19, !19, i64 0}
!63 = !{!6, !6, i64 0}
!64 = !{!65, !5, i64 8}
!65 = !{!"aws_credentials_provider", !5, i64 0, !5, i64 8, !15, i64 16, !5, i64 32, !66, i64 40}
!66 = !{!"aws_atomic_var", !5, i64 0}
!67 = !{!46, !27, i64 0}
!68 = !{!65, !5, i64 32}
!69 = !{!42, !5, i64 16}
!70 = !{!42, !5, i64 8}
!71 = !{!72, !5, i64 0}
!72 = !{!"sts_web_identity_user_data", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !46, i64 48, !5, i64 80, !5, i64 88, !5, i64 96, !27, i64 104, !46, i64 112, !19, i64 144, !19, i64 148, !19, i64 152}
!73 = !{!72, !5, i64 8}
!74 = !{!72, !5, i64 24}
!75 = !{!72, !5, i64 16}
!76 = !{!72, !5, i64 32}
!77 = !{!42, !5, i64 24}
!78 = !{!72, !5, i64 80}
!79 = !{!72, !5, i64 88}
!80 = !{!72, !5, i64 96}
!81 = !{!72, !19, i64 144}
!82 = !{!72, !19, i64 148}
!83 = !{!72, !27, i64 104}
!84 = !{!85, !27, i64 16}
!85 = !{!"aws_xml_parser_options", !28, i64 0, !27, i64 16, !5, i64 24, !5, i64 32}
!86 = !{!85, !5, i64 24}
!87 = !{!85, !5, i64 32}
!88 = !{!28, !27, i64 0}
!89 = !{!72, !5, i64 40}
!90 = !{!91, !6, i64 32}
!91 = !{!"aws_http_header", !28, i64 0, !28, i64 16, !6, i64 32}
!92 = !{!93, !27, i64 0}
!93 = !{!"aws_http_make_request_options", !27, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !21, i64 72}
!94 = !{!93, !5, i64 8}
!95 = !{!93, !5, i64 16}
!96 = !{!93, !5, i64 24}
!97 = !{!93, !5, i64 32}
!98 = !{!93, !5, i64 40}
!99 = !{!93, !5, i64 48}
!100 = !{!93, !5, i64 56}
!101 = !{!93, !5, i64 64}
!102 = !{!93, !21, i64 72}
!103 = !{!42, !5, i64 32}
!104 = !{!42, !5, i64 40}
!105 = !{!42, !5, i64 64}
!106 = !{!42, !5, i64 56}
!107 = !{!72, !27, i64 48}
!108 = !{!42, !5, i64 72}
!109 = !{!42, !5, i64 48}
!110 = !{!72, !19, i64 152}

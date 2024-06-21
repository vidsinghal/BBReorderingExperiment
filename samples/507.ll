; ModuleID = 'samples/507.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/endpoints_standard_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_endpoints_value = type { i32, %union.anon }
%union.anon = type { %struct.aws_array_list }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_owning_cursor = type { %struct.aws_byte_cursor, ptr }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.aws_uri = type { i64, ptr, %struct.aws_byte_buf, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor, i16, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor }
%struct.aws_endpoints_resolution_scope = type { %struct.aws_hash_table, %struct.aws_array_list, i64, ptr, ptr }
%struct.aws_hash_table = type { ptr }
%struct.aws_partitions_config = type { ptr, %struct.aws_ref_count, ptr, %struct.aws_hash_table, ptr }
%struct.aws_ref_count = type { %struct.aws_atomic_var, ptr, ptr }
%struct.aws_atomic_var = type { ptr }
%struct.aws_hash_element = type { ptr, ptr }
%struct.aws_partition_info = type { ptr, %struct.aws_byte_cursor, i8, ptr }
%struct.aws_resource_name = type { %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_byte_cursor }

@s_resolve_fn_vt = internal global [12 x ptr] [ptr @s_resolve_fn_is_set, ptr @s_resolve_fn_not, ptr @s_resolve_fn_get_attr, ptr @s_resolve_fn_substring, ptr @s_resolve_fn_string_equals, ptr @s_resolve_fn_boolean_equals, ptr @s_resolve_fn_uri_encode, ptr @s_resolve_fn_parse_url, ptr @s_resolve_is_valid_host_label, ptr @s_resolve_fn_aws_partition, ptr @s_resolve_fn_aws_parse_arn, ptr @s_resolve_is_virtual_hostable_s3_bucket], align 16
@.str = private unnamed_addr constant [34 x i8] c"Failed to resolve args for isSet.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.2 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to resolve args for not.\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to resolve args for get attr.\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to path through object.\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to path through array.\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Invalid value type for pathing through.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to resolve args for substring.\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to resolve stringEquals.\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to resolve booleanEquals.\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Failed to resolve parameter to uri encode.\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to uri encode value.\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Failed to resolve args for parse url.\00", align 1
@s_scheme_http = internal global %struct.aws_byte_cursor { i64 4, ptr @.str.26 }, align 8
@s_scheme_https = internal global %struct.aws_byte_cursor { i64 5, ptr @.str.27 }, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to add scheme to object.\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"authority\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Failed to add authority to object.\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Failed to add path to object.\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"normalizedPath\00", align 1
@__const.s_resolve_fn_parse_url.normalized_path_cur = private unnamed_addr constant %struct.aws_byte_cursor { i64 14, ptr @.str.20 }, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"Failed to normalize path.\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"isIp\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Failed to add isIp to object.\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Failed init buffer for parseUrl return.\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Failed to create JSON object.\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Failed to resolve not.\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"Failed to resolve arguments for partitions.\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Failed to find partition info. %.*s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"aws\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Failed to resolve parseArn.\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"Failed to init object for parseArn.\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Failed to add resource id element\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"accountId\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"resourceId\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Failed to add elements to object for parseArn.\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Failed to create string from json.\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"Failed to resolve args for isVirtualHostableS3Bucket.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_dispatch_standard_lib_fn_resolve(i32 noundef %type, ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %type.addr = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  %0 = load i32, ptr %type.addr, align 4, !tbaa !4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [12 x ptr], ptr @s_resolve_fn_vt, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !7
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %4 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %call = call i32 %1(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_is_set(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 0, ptr noundef %argv_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !7
  %4 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %call4 = call i32 %7(ptr noundef %8, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !15
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 15363, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call9 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call9, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end10:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %13, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !16
  %type11 = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 0
  %14 = load i32, ptr %type11, align 8, !tbaa !16
  %cmp12 = icmp ne i32 %14, 1
  %15 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %15, i32 0, i32 1
  %frombool = zext i1 %cmp12 to i8
  store i8 %frombool, ptr %v, align 8, !tbaa !4
  br label %on_done

on_done:                                          ; preds = %if.end10, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  %16 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_not(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 3, ptr noundef %argv_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !7
  %4 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %call4 = call i32 %7(ptr noundef %8, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !15
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call9 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call9, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end10:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %13, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !16
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 1
  %14 = load i8, ptr %v, align 8, !tbaa !4, !range !18, !noundef !19
  %tobool11 = trunc i8 %14 to i1
  %lnot = xor i1 %tobool11, true
  %15 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v12 = getelementptr inbounds %struct.aws_endpoints_value, ptr %15, i32 0, i32 1
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, ptr %v12, align 8, !tbaa !4
  br label %on_done

on_done:                                          ; preds = %if.end10, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  %16 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_get_attr(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %argv_path = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %path_cur = alloca %struct.aws_byte_cursor, align 8
  %logger20 = alloca ptr, align 8
  %logger44 = alloca ptr, align 8
  %logger63 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_path) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_path, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 0, ptr noundef %argv_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call3 = call i32 @aws_endpoints_argv_expect(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1, i32 noundef 2, ptr noundef %argv_path)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end13

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !7
  %7 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !7
  %call7 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp8 = icmp uge i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable10 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable10, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !7
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call12 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call12, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end13:                                         ; preds = %lor.lhs.false2
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_path, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %path_cur, ptr align 8 %cur, i64 16, i1 false), !tbaa.struct !20
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 0
  %16 = load i32, ptr %type, align 8, !tbaa !16
  %cmp14 = icmp eq i32 %16, 4
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %18 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %19 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 0
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %call16 = call i32 @aws_endpoints_path_through_object(ptr noundef %17, ptr noundef %argv_value, i64 %20, ptr %22, ptr noundef %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end36

if.then18:                                        ; preds = %if.then15
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger20) #7
  %call21 = call ptr @aws_logger_get()
  store ptr %call21, ptr %logger20, align 8, !tbaa !7
  %23 = load ptr, ptr %logger20, align 8, !tbaa !7
  %cmp22 = icmp ne ptr %23, null
  br i1 %cmp22, label %land.lhs.true23, label %if.end32

land.lhs.true23:                                  ; preds = %do.body19
  %24 = load ptr, ptr %logger20, align 8, !tbaa !7
  %vtable24 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable24, align 8, !tbaa !11
  %get_log_level25 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %get_log_level25, align 8, !tbaa !13
  %27 = load ptr, ptr %logger20, align 8, !tbaa !7
  %call26 = call i32 %26(ptr noundef %27, i32 noundef 15363)
  %cmp27 = icmp uge i32 %call26, 2
  br i1 %cmp27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %land.lhs.true23
  %28 = load ptr, ptr %logger20, align 8, !tbaa !7
  %vtable29 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable29, align 8, !tbaa !11
  %log30 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %log30, align 8, !tbaa !15
  %31 = load ptr, ptr %logger20, align 8, !tbaa !7
  %call31 = call i32 (ptr, i32, i32, ptr, ...) %30(ptr noundef %31, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.5)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true23, %do.body19
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger20) #7
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  %call35 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call35, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end36:                                         ; preds = %if.then15
  br label %if.end80

if.else:                                          ; preds = %if.end13
  %type37 = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 0
  %32 = load i32, ptr %type37, align 8, !tbaa !16
  %cmp38 = icmp eq i32 %32, 6
  br i1 %cmp38, label %if.then39, label %if.else61

if.then39:                                        ; preds = %if.else
  %33 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %34 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %35 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %36 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 0
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %call40 = call i32 @aws_endpoints_path_through_array(ptr noundef %33, ptr noundef %34, ptr noundef %argv_value, i64 %37, ptr %39, ptr noundef %35)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end60

if.then42:                                        ; preds = %if.then39
  br label %do.body43

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger44) #7
  %call45 = call ptr @aws_logger_get()
  store ptr %call45, ptr %logger44, align 8, !tbaa !7
  %40 = load ptr, ptr %logger44, align 8, !tbaa !7
  %cmp46 = icmp ne ptr %40, null
  br i1 %cmp46, label %land.lhs.true47, label %if.end56

land.lhs.true47:                                  ; preds = %do.body43
  %41 = load ptr, ptr %logger44, align 8, !tbaa !7
  %vtable48 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable48, align 8, !tbaa !11
  %get_log_level49 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %get_log_level49, align 8, !tbaa !13
  %44 = load ptr, ptr %logger44, align 8, !tbaa !7
  %call50 = call i32 %43(ptr noundef %44, i32 noundef 15363)
  %cmp51 = icmp uge i32 %call50, 2
  br i1 %cmp51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %land.lhs.true47
  %45 = load ptr, ptr %logger44, align 8, !tbaa !7
  %vtable53 = getelementptr inbounds %struct.aws_logger, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %vtable53, align 8, !tbaa !11
  %log54 = getelementptr inbounds %struct.aws_logger_vtable, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %log54, align 8, !tbaa !15
  %48 = load ptr, ptr %logger44, align 8, !tbaa !7
  %call55 = call i32 (ptr, i32, i32, ptr, ...) %47(ptr noundef %48, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.6)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %land.lhs.true47, %do.body43
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger44) #7
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %call59 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call59, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end60:                                         ; preds = %if.then39
  br label %if.end79

if.else61:                                        ; preds = %if.else
  br label %do.body62

do.body62:                                        ; preds = %if.else61
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger63) #7
  %call64 = call ptr @aws_logger_get()
  store ptr %call64, ptr %logger63, align 8, !tbaa !7
  %49 = load ptr, ptr %logger63, align 8, !tbaa !7
  %cmp65 = icmp ne ptr %49, null
  br i1 %cmp65, label %land.lhs.true66, label %if.end75

land.lhs.true66:                                  ; preds = %do.body62
  %50 = load ptr, ptr %logger63, align 8, !tbaa !7
  %vtable67 = getelementptr inbounds %struct.aws_logger, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %vtable67, align 8, !tbaa !11
  %get_log_level68 = getelementptr inbounds %struct.aws_logger_vtable, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %get_log_level68, align 8, !tbaa !13
  %53 = load ptr, ptr %logger63, align 8, !tbaa !7
  %call69 = call i32 %52(ptr noundef %53, i32 noundef 15363)
  %cmp70 = icmp uge i32 %call69, 2
  br i1 %cmp70, label %if.then71, label %if.end75

if.then71:                                        ; preds = %land.lhs.true66
  %54 = load ptr, ptr %logger63, align 8, !tbaa !7
  %vtable72 = getelementptr inbounds %struct.aws_logger, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %vtable72, align 8, !tbaa !11
  %log73 = getelementptr inbounds %struct.aws_logger_vtable, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %log73, align 8, !tbaa !15
  %57 = load ptr, ptr %logger63, align 8, !tbaa !7
  %call74 = call i32 (ptr, i32, i32, ptr, ...) %56(ptr noundef %57, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.7)
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %land.lhs.true66, %do.body62
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger63) #7
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call78, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end79:                                         ; preds = %if.end60
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end36
  br label %on_done

on_done:                                          ; preds = %if.end80, %do.end77, %do.end58, %do.end34, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_path)
  %58 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_path) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_substring(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %input_value = alloca %struct.aws_endpoints_value, align 8
  %start_value = alloca %struct.aws_endpoints_value, align 8
  %stop_value = alloca %struct.aws_endpoints_value, align 8
  %reverse_value = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %substring = alloca %struct.aws_byte_cursor, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %r_start = alloca i64, align 8
  %r_stop = alloca i64, align 8
  %substring68 = alloca %struct.aws_byte_cursor, align 8
  %tmp78 = alloca %struct.aws_owning_cursor, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %input_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %input_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %start_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %start_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %stop_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %stop_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %reverse_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %reverse_value, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %input_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call3 = call i32 @aws_endpoints_argv_expect(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1, i32 noundef 5, ptr noundef %start_value)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %7 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %8 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %9 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call6 = call i32 @aws_endpoints_argv_expect(ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef 2, i32 noundef 5, ptr noundef %stop_value)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %11 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %12 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call9 = call i32 @aws_endpoints_argv_expect(ptr noundef %10, ptr noundef %11, ptr noundef %12, i64 noundef 3, i32 noundef 3, ptr noundef %reverse_value)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end19

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call11 = call ptr @aws_logger_get()
  store ptr %call11, ptr %logger, align 8, !tbaa !7
  %13 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp12 = icmp ne ptr %13, null
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %14 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %17 = load ptr, ptr %logger, align 8, !tbaa !7
  %call13 = call i32 %16(ptr noundef %17, i32 noundef 15363)
  %cmp14 = icmp uge i32 %call13, 2
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable16 = getelementptr inbounds %struct.aws_logger, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vtable16, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %log, align 8, !tbaa !15
  %21 = load ptr, ptr %logger, align 8, !tbaa !7
  %call17 = call i32 (ptr, i32, i32, ptr, ...) %20(ptr noundef %21, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.8)
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call18 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call18, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end19:                                         ; preds = %lor.lhs.false8
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %start_value, i32 0, i32 1
  %22 = load double, ptr %v, align 8, !tbaa !4
  %v20 = getelementptr inbounds %struct.aws_endpoints_value, ptr %stop_value, i32 0, i32 1
  %23 = load double, ptr %v20, align 8, !tbaa !4
  %cmp21 = fcmp oge double %22, %23
  br i1 %cmp21, label %if.then27, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end19
  %v23 = getelementptr inbounds %struct.aws_endpoints_value, ptr %input_value, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v23, i32 0, i32 0
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur, i32 0, i32 0
  %24 = load i64, ptr %len, align 8, !tbaa !4
  %conv = uitofp i64 %24 to double
  %v24 = getelementptr inbounds %struct.aws_endpoints_value, ptr %stop_value, i32 0, i32 1
  %25 = load double, ptr %v24, align 8, !tbaa !4
  %cmp25 = fcmp olt double %conv, %25
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false22, %if.end19
  %26 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %26, i32 0, i32 0
  store i32 1, ptr %type, align 8, !tbaa !16
  br label %on_done

if.end28:                                         ; preds = %lor.lhs.false22
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7
  store i64 0, ptr %idx, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %27 = load i64, ptr %idx, align 8, !tbaa !21
  %v29 = getelementptr inbounds %struct.aws_endpoints_value, ptr %input_value, i32 0, i32 1
  %cur30 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v29, i32 0, i32 0
  %len31 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur30, i32 0, i32 0
  %28 = load i64, ptr %len31, align 8, !tbaa !4
  %cmp32 = icmp ult i64 %27, %28
  br i1 %cmp32, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %v34 = getelementptr inbounds %struct.aws_endpoints_value, ptr %input_value, i32 0, i32 1
  %cur35 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v34, i32 0, i32 0
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur35, i32 0, i32 1
  %29 = load ptr, ptr %ptr, align 8, !tbaa !4
  %30 = load i64, ptr %idx, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 %30
  %31 = load i8, ptr %arrayidx, align 1, !tbaa !4
  %conv36 = zext i8 %31 to i32
  %cmp37 = icmp sgt i32 %conv36, 127
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %for.body
  %32 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type40 = getelementptr inbounds %struct.aws_endpoints_value, ptr %32, i32 0, i32 0
  store i32 1, ptr %type40, align 8, !tbaa !16
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end41
  %33 = load i64, ptr %idx, align 8, !tbaa !21
  %inc = add i64 %33, 1
  store i64 %inc, ptr %idx, align 8, !tbaa !21
  br label %for.cond

cleanup:                                          ; preds = %if.then39, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 5, label %for.end
    i32 4, label %on_done
  ]

for.end:                                          ; preds = %cleanup
  %v42 = getelementptr inbounds %struct.aws_endpoints_value, ptr %reverse_value, i32 0, i32 1
  %34 = load i8, ptr %v42, align 8, !tbaa !4, !range !18, !noundef !19
  %tobool43 = trunc i8 %34 to i1
  br i1 %tobool43, label %if.else, label %if.then44

if.then44:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7
  %v45 = getelementptr inbounds %struct.aws_endpoints_value, ptr %start_value, i32 0, i32 1
  %35 = load double, ptr %v45, align 8, !tbaa !4
  %conv46 = fptoui double %35 to i64
  store i64 %conv46, ptr %start, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7
  %v47 = getelementptr inbounds %struct.aws_endpoints_value, ptr %stop_value, i32 0, i32 1
  %36 = load double, ptr %v47, align 8, !tbaa !4
  %conv48 = fptoui double %36 to i64
  store i64 %conv48, ptr %end, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr %substring) #7
  %len49 = getelementptr inbounds %struct.aws_byte_cursor, ptr %substring, i32 0, i32 0
  %37 = load i64, ptr %end, align 8, !tbaa !21
  %38 = load i64, ptr %start, align 8, !tbaa !21
  %sub = sub i64 %37, %38
  store i64 %sub, ptr %len49, align 8, !tbaa !23
  %ptr50 = getelementptr inbounds %struct.aws_byte_cursor, ptr %substring, i32 0, i32 1
  %v51 = getelementptr inbounds %struct.aws_endpoints_value, ptr %input_value, i32 0, i32 1
  %cur52 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v51, i32 0, i32 0
  %ptr53 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur52, i32 0, i32 1
  %39 = load ptr, ptr %ptr53, align 8, !tbaa !4
  %40 = load i64, ptr %start, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 %40
  store ptr %add.ptr, ptr %ptr50, align 8, !tbaa !25
  %41 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type54 = getelementptr inbounds %struct.aws_endpoints_value, ptr %41, i32 0, i32 0
  store i32 2, ptr %type54, align 8, !tbaa !16
  %42 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v55 = getelementptr inbounds %struct.aws_endpoints_value, ptr %42, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #7
  %43 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %44 = getelementptr inbounds { i64, ptr }, ptr %substring, i32 0, i32 0
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds { i64, ptr }, ptr %substring, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  call void @aws_endpoints_owning_cursor_from_cursor(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %43, i64 %45, ptr %47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v55, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %substring) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7
  br label %if.end79

if.else:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_start) #7
  %v56 = getelementptr inbounds %struct.aws_endpoints_value, ptr %input_value, i32 0, i32 1
  %cur57 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v56, i32 0, i32 0
  %len58 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur57, i32 0, i32 0
  %48 = load i64, ptr %len58, align 8, !tbaa !4
  %v59 = getelementptr inbounds %struct.aws_endpoints_value, ptr %stop_value, i32 0, i32 1
  %49 = load double, ptr %v59, align 8, !tbaa !4
  %conv60 = fptoui double %49 to i64
  %sub61 = sub i64 %48, %conv60
  store i64 %sub61, ptr %r_start, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_stop) #7
  %v62 = getelementptr inbounds %struct.aws_endpoints_value, ptr %input_value, i32 0, i32 1
  %cur63 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v62, i32 0, i32 0
  %len64 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur63, i32 0, i32 0
  %50 = load i64, ptr %len64, align 8, !tbaa !4
  %v65 = getelementptr inbounds %struct.aws_endpoints_value, ptr %start_value, i32 0, i32 1
  %51 = load double, ptr %v65, align 8, !tbaa !4
  %conv66 = fptoui double %51 to i64
  %sub67 = sub i64 %50, %conv66
  store i64 %sub67, ptr %r_stop, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr %substring68) #7
  %len69 = getelementptr inbounds %struct.aws_byte_cursor, ptr %substring68, i32 0, i32 0
  %52 = load i64, ptr %r_stop, align 8, !tbaa !21
  %53 = load i64, ptr %r_start, align 8, !tbaa !21
  %sub70 = sub i64 %52, %53
  store i64 %sub70, ptr %len69, align 8, !tbaa !23
  %ptr71 = getelementptr inbounds %struct.aws_byte_cursor, ptr %substring68, i32 0, i32 1
  %v72 = getelementptr inbounds %struct.aws_endpoints_value, ptr %input_value, i32 0, i32 1
  %cur73 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v72, i32 0, i32 0
  %ptr74 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur73, i32 0, i32 1
  %54 = load ptr, ptr %ptr74, align 8, !tbaa !4
  %55 = load i64, ptr %r_start, align 8, !tbaa !21
  %add.ptr75 = getelementptr inbounds i8, ptr %54, i64 %55
  store ptr %add.ptr75, ptr %ptr71, align 8, !tbaa !25
  %56 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type76 = getelementptr inbounds %struct.aws_endpoints_value, ptr %56, i32 0, i32 0
  store i32 2, ptr %type76, align 8, !tbaa !16
  %57 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v77 = getelementptr inbounds %struct.aws_endpoints_value, ptr %57, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp78) #7
  %58 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %59 = getelementptr inbounds { i64, ptr }, ptr %substring68, i32 0, i32 0
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds { i64, ptr }, ptr %substring68, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  call void @aws_endpoints_owning_cursor_from_cursor(ptr sret(%struct.aws_owning_cursor) align 8 %tmp78, ptr noundef %58, i64 %60, ptr %62)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v77, ptr align 8 %tmp78, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp78) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %substring68) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_stop) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_start) #7
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then44
  br label %on_done

on_done:                                          ; preds = %if.end79, %cleanup, %if.then27, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %input_value)
  call void @aws_endpoints_value_clean_up(ptr noundef %start_value)
  call void @aws_endpoints_value_clean_up(ptr noundef %stop_value)
  call void @aws_endpoints_value_clean_up(ptr noundef %reverse_value)
  %63 = load i32, ptr %result, align 4, !tbaa !9
  store i32 %63, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %on_done, %cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr %reverse_value) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %stop_value) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %start_value) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %input_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_string_equals(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %argv_value_1 = alloca %struct.aws_endpoints_value, align 8
  %argv_value_2 = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value_1) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value_1, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value_2) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value_2, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %argv_value_1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call3 = call i32 @aws_endpoints_argv_expect(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1, i32 noundef 2, ptr noundef %argv_value_2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end13

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !7
  %7 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !7
  %call7 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp8 = icmp uge i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable10 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable10, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !7
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call12 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call12, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end13:                                         ; preds = %lor.lhs.false2
  %16 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %16, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !16
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value_1, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %v14 = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value_2, i32 0, i32 1
  %cur15 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v14, i32 0, i32 0
  %call16 = call zeroext i1 @aws_byte_cursor_eq(ptr noundef %cur, ptr noundef %cur15)
  %17 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v17 = getelementptr inbounds %struct.aws_endpoints_value, ptr %17, i32 0, i32 1
  %frombool = zext i1 %call16 to i8
  store i8 %frombool, ptr %v17, align 8, !tbaa !4
  br label %on_done

on_done:                                          ; preds = %if.end13, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value_1)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value_2)
  %18 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value_2) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value_1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_boolean_equals(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %argv_value_1 = alloca %struct.aws_endpoints_value, align 8
  %argv_value_2 = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value_1) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value_1, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value_2) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value_2, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 3, ptr noundef %argv_value_1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call3 = call i32 @aws_endpoints_argv_expect(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1, i32 noundef 3, ptr noundef %argv_value_2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end13

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !7
  %7 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !7
  %call7 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp8 = icmp uge i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable10 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable10, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !7
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call12 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call12, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end13:                                         ; preds = %lor.lhs.false2
  %16 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %16, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !16
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value_1, i32 0, i32 1
  %17 = load i8, ptr %v, align 8, !tbaa !4, !range !18, !noundef !19
  %tobool14 = trunc i8 %17 to i1
  %conv = zext i1 %tobool14 to i32
  %v15 = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value_2, i32 0, i32 1
  %18 = load i8, ptr %v15, align 8, !tbaa !4, !range !18, !noundef !19
  %tobool16 = trunc i8 %18 to i1
  %conv17 = zext i1 %tobool16 to i32
  %cmp18 = icmp eq i32 %conv, %conv17
  %19 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v20 = getelementptr inbounds %struct.aws_endpoints_value, ptr %19, i32 0, i32 1
  %frombool = zext i1 %cmp18 to i8
  store i8 %frombool, ptr %v20, align 8, !tbaa !4
  br label %on_done

on_done:                                          ; preds = %if.end13, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value_1)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value_2)
  %20 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value_2) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value_1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_uri_encode(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %buf = alloca %struct.aws_byte_buf, align 8
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %logger15 = alloca ptr, align 8
  %logger36 = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #7
  call void @llvm.memset.p0.i64(ptr align 8 %buf, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %argv_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !7
  %4 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %call4 = call i32 %7(ptr noundef %8, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !15
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.11)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call9 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call9, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end10:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %call11 = call i32 @aws_byte_buf_init(ptr noundef %buf, ptr noundef %13, i64 noundef 10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end31

if.then13:                                        ; preds = %if.end10
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger15) #7
  %call16 = call ptr @aws_logger_get()
  store ptr %call16, ptr %logger15, align 8, !tbaa !7
  %14 = load ptr, ptr %logger15, align 8, !tbaa !7
  %cmp17 = icmp ne ptr %14, null
  br i1 %cmp17, label %land.lhs.true18, label %if.end27

land.lhs.true18:                                  ; preds = %do.body14
  %15 = load ptr, ptr %logger15, align 8, !tbaa !7
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable19, align 8, !tbaa !11
  %get_log_level20 = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %get_log_level20, align 8, !tbaa !13
  %18 = load ptr, ptr %logger15, align 8, !tbaa !7
  %call21 = call i32 %17(ptr noundef %18, i32 noundef 15363)
  %cmp22 = icmp uge i32 %call21, 2
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %land.lhs.true18
  %19 = load ptr, ptr %logger15, align 8, !tbaa !7
  %vtable24 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable24, align 8, !tbaa !11
  %log25 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %log25, align 8, !tbaa !15
  %22 = load ptr, ptr %logger15, align 8, !tbaa !7
  %call26 = call i32 (ptr, i32, i32, ptr, ...) %21(ptr noundef %22, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.11)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true18, %do.body14
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger15) #7
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  %call30 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call30, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end31:                                         ; preds = %if.end10
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %call32 = call i32 @aws_byte_buf_append_encoding_uri_param(ptr noundef %buf, ptr noundef %cur)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end52

if.then34:                                        ; preds = %if.end31
  br label %do.body35

do.body35:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger36) #7
  %call37 = call ptr @aws_logger_get()
  store ptr %call37, ptr %logger36, align 8, !tbaa !7
  %23 = load ptr, ptr %logger36, align 8, !tbaa !7
  %cmp38 = icmp ne ptr %23, null
  br i1 %cmp38, label %land.lhs.true39, label %if.end48

land.lhs.true39:                                  ; preds = %do.body35
  %24 = load ptr, ptr %logger36, align 8, !tbaa !7
  %vtable40 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable40, align 8, !tbaa !11
  %get_log_level41 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %get_log_level41, align 8, !tbaa !13
  %27 = load ptr, ptr %logger36, align 8, !tbaa !7
  %call42 = call i32 %26(ptr noundef %27, i32 noundef 15363)
  %cmp43 = icmp uge i32 %call42, 2
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %land.lhs.true39
  %28 = load ptr, ptr %logger36, align 8, !tbaa !7
  %vtable45 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable45, align 8, !tbaa !11
  %log46 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %log46, align 8, !tbaa !15
  %31 = load ptr, ptr %logger36, align 8, !tbaa !7
  %call47 = call i32 (ptr, i32, i32, ptr, ...) %30(ptr noundef %31, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.12)
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %land.lhs.true39, %do.body35
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger36) #7
  br label %do.cond49

do.cond49:                                        ; preds = %if.end48
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  call void @aws_byte_buf_clean_up(ptr noundef %buf)
  %call51 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call51, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end52:                                         ; preds = %if.end31
  %32 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %32, i32 0, i32 0
  store i32 2, ptr %type, align 8, !tbaa !16
  %33 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v53 = getelementptr inbounds %struct.aws_endpoints_value, ptr %33, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #7
  %34 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %call54 = call ptr @aws_string_new_from_buf(ptr noundef %34, ptr noundef %buf)
  call void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %call54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v53, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #7
  br label %on_done

on_done:                                          ; preds = %if.end52, %do.end50, %do.end29, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  call void @aws_byte_buf_clean_up(ptr noundef %buf)
  %35 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_parse_url(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %uri = alloca %struct.aws_uri, align 8
  %root = alloca ptr, align 8
  %argv_url = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %scheme = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  %logger39 = alloca ptr, align 8
  %authority = alloca ptr, align 8
  %agg.tmp62 = alloca %struct.aws_byte_cursor, align 8
  %logger69 = alloca ptr, align 8
  %path = alloca ptr, align 8
  %agg.tmp86 = alloca %struct.aws_byte_cursor, align 8
  %logger93 = alloca ptr, align 8
  %normalized_path_cur = alloca %struct.aws_byte_cursor, align 8
  %normalized_path_buf = alloca %struct.aws_byte_buf, align 8
  %agg.tmp113 = alloca %struct.aws_byte_cursor, align 8
  %logger120 = alloca ptr, align 8
  %host_name = alloca ptr, align 8
  %is_ip = alloca i8, align 1
  %agg.tmp139 = alloca %struct.aws_byte_cursor, align 8
  %logger147 = alloca ptr, align 8
  %buf = alloca %struct.aws_byte_buf, align 8
  %logger168 = alloca ptr, align 8
  %logger189 = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 200, ptr %uri) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #7
  store ptr null, ptr %root, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_url) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_url, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %argv_url)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !7
  %4 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %call4 = call i32 %7(ptr noundef %8, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !15
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.13)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call9 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call9, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end10:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_url, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %call11 = call i32 @aws_uri_init_parse(ptr noundef %uri, ptr noundef %13, ptr noundef %cur)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %14 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %14, i32 0, i32 0
  store i32 1, ptr %type, align 8, !tbaa !16
  call void @aws_reset_error()
  br label %on_done

if.end14:                                         ; preds = %if.end10
  %call15 = call ptr @aws_uri_query_string(ptr noundef %uri)
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %call15, i32 0, i32 0
  %15 = load i64, ptr %len, align 8, !tbaa !23
  %cmp16 = icmp ugt i64 %15, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %16 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type18 = getelementptr inbounds %struct.aws_endpoints_value, ptr %16, i32 0, i32 0
  store i32 1, ptr %type18, align 8, !tbaa !16
  br label %on_done

if.end19:                                         ; preds = %if.end14
  %call20 = call ptr @aws_uri_scheme(ptr noundef %uri)
  store ptr %call20, ptr %scheme, align 8, !tbaa !7
  %17 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %call21 = call ptr @aws_json_value_new_object(ptr noundef %17)
  store ptr %call21, ptr %root, align 8, !tbaa !7
  %18 = load ptr, ptr %scheme, align 8, !tbaa !7
  %len22 = getelementptr inbounds %struct.aws_byte_cursor, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %len22, align 8, !tbaa !23
  %cmp23 = icmp eq i64 %19, 0
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  %20 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type25 = getelementptr inbounds %struct.aws_endpoints_value, ptr %20, i32 0, i32 0
  store i32 1, ptr %type25, align 8, !tbaa !16
  br label %on_done

if.end26:                                         ; preds = %if.end19
  %21 = load ptr, ptr %scheme, align 8, !tbaa !7
  %call27 = call zeroext i1 @aws_byte_cursor_eq(ptr noundef %21, ptr noundef @s_scheme_http)
  br i1 %call27, label %if.end32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end26
  %22 = load ptr, ptr %scheme, align 8, !tbaa !7
  %call29 = call zeroext i1 @aws_byte_cursor_eq(ptr noundef %22, ptr noundef @s_scheme_https)
  br i1 %call29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false28
  %23 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type31 = getelementptr inbounds %struct.aws_endpoints_value, ptr %23, i32 0, i32 0
  store i32 1, ptr %type31, align 8, !tbaa !16
  br label %on_done

if.end32:                                         ; preds = %lor.lhs.false28, %if.end26
  %24 = load ptr, ptr %root, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #7
  %call33 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.14)
  %25 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %26 = extractvalue { i64, ptr } %call33, 0
  store i64 %26, ptr %25, align 8
  %27 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %28 = extractvalue { i64, ptr } %call33, 1
  store ptr %28, ptr %27, align 8
  %29 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %30 = load ptr, ptr %scheme, align 8, !tbaa !7
  %31 = getelementptr inbounds { i64, ptr }, ptr %30, i32 0, i32 0
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds { i64, ptr }, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %call34 = call ptr @aws_json_value_new_string(ptr noundef %29, i64 %32, ptr %34)
  %35 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %call35 = call i32 @aws_json_value_add_to_object(ptr noundef %24, i64 %36, ptr %38, ptr noundef %call34)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #7
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.end55

if.then37:                                        ; preds = %if.end32
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger39) #7
  %call40 = call ptr @aws_logger_get()
  store ptr %call40, ptr %logger39, align 8, !tbaa !7
  %39 = load ptr, ptr %logger39, align 8, !tbaa !7
  %cmp41 = icmp ne ptr %39, null
  br i1 %cmp41, label %land.lhs.true42, label %if.end51

land.lhs.true42:                                  ; preds = %do.body38
  %40 = load ptr, ptr %logger39, align 8, !tbaa !7
  %vtable43 = getelementptr inbounds %struct.aws_logger, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %vtable43, align 8, !tbaa !11
  %get_log_level44 = getelementptr inbounds %struct.aws_logger_vtable, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %get_log_level44, align 8, !tbaa !13
  %43 = load ptr, ptr %logger39, align 8, !tbaa !7
  %call45 = call i32 %42(ptr noundef %43, i32 noundef 15363)
  %cmp46 = icmp uge i32 %call45, 2
  br i1 %cmp46, label %if.then47, label %if.end51

if.then47:                                        ; preds = %land.lhs.true42
  %44 = load ptr, ptr %logger39, align 8, !tbaa !7
  %vtable48 = getelementptr inbounds %struct.aws_logger, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %vtable48, align 8, !tbaa !11
  %log49 = getelementptr inbounds %struct.aws_logger_vtable, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %log49, align 8, !tbaa !15
  %47 = load ptr, ptr %logger39, align 8, !tbaa !7
  %call50 = call i32 (ptr, i32, i32, ptr, ...) %46(ptr noundef %47, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.15)
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %land.lhs.true42, %do.body38
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger39) #7
  br label %do.cond52

do.cond52:                                        ; preds = %if.end51
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  %call54 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call54, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end55:                                         ; preds = %if.end32
  %call56 = call ptr @aws_uri_authority(ptr noundef %uri)
  store ptr %call56, ptr %authority, align 8, !tbaa !7
  %48 = load ptr, ptr %authority, align 8, !tbaa !7
  %len57 = getelementptr inbounds %struct.aws_byte_cursor, ptr %48, i32 0, i32 0
  %49 = load i64, ptr %len57, align 8, !tbaa !23
  %cmp58 = icmp eq i64 %49, 0
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end55
  %50 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type60 = getelementptr inbounds %struct.aws_endpoints_value, ptr %50, i32 0, i32 0
  store i32 1, ptr %type60, align 8, !tbaa !16
  br label %on_done

if.end61:                                         ; preds = %if.end55
  %51 = load ptr, ptr %root, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp62) #7
  %call63 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.16)
  %52 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp62, i32 0, i32 0
  %53 = extractvalue { i64, ptr } %call63, 0
  store i64 %53, ptr %52, align 8
  %54 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp62, i32 0, i32 1
  %55 = extractvalue { i64, ptr } %call63, 1
  store ptr %55, ptr %54, align 8
  %56 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %57 = load ptr, ptr %authority, align 8, !tbaa !7
  %58 = getelementptr inbounds { i64, ptr }, ptr %57, i32 0, i32 0
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds { i64, ptr }, ptr %57, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %call64 = call ptr @aws_json_value_new_string(ptr noundef %56, i64 %59, ptr %61)
  %62 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp62, i32 0, i32 0
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp62, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %call65 = call i32 @aws_json_value_add_to_object(ptr noundef %51, i64 %63, ptr %65, ptr noundef %call64)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp62) #7
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end84

if.then67:                                        ; preds = %if.end61
  br label %do.body68

do.body68:                                        ; preds = %if.then67
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger69) #7
  %call70 = call ptr @aws_logger_get()
  store ptr %call70, ptr %logger69, align 8, !tbaa !7
  %66 = load ptr, ptr %logger69, align 8, !tbaa !7
  %cmp71 = icmp ne ptr %66, null
  br i1 %cmp71, label %land.lhs.true72, label %if.end81

land.lhs.true72:                                  ; preds = %do.body68
  %67 = load ptr, ptr %logger69, align 8, !tbaa !7
  %vtable73 = getelementptr inbounds %struct.aws_logger, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %vtable73, align 8, !tbaa !11
  %get_log_level74 = getelementptr inbounds %struct.aws_logger_vtable, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %get_log_level74, align 8, !tbaa !13
  %70 = load ptr, ptr %logger69, align 8, !tbaa !7
  %call75 = call i32 %69(ptr noundef %70, i32 noundef 15363)
  %cmp76 = icmp uge i32 %call75, 2
  br i1 %cmp76, label %if.then77, label %if.end81

if.then77:                                        ; preds = %land.lhs.true72
  %71 = load ptr, ptr %logger69, align 8, !tbaa !7
  %vtable78 = getelementptr inbounds %struct.aws_logger, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %vtable78, align 8, !tbaa !11
  %log79 = getelementptr inbounds %struct.aws_logger_vtable, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %log79, align 8, !tbaa !15
  %74 = load ptr, ptr %logger69, align 8, !tbaa !7
  %call80 = call i32 (ptr, i32, i32, ptr, ...) %73(ptr noundef %74, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.17)
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %land.lhs.true72, %do.body68
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger69) #7
  br label %do.cond82

do.cond82:                                        ; preds = %if.end81
  br label %do.end83

do.end83:                                         ; preds = %do.cond82
  br label %on_done

if.end84:                                         ; preds = %if.end61
  %call85 = call ptr @aws_uri_path(ptr noundef %uri)
  store ptr %call85, ptr %path, align 8, !tbaa !7
  %75 = load ptr, ptr %root, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp86) #7
  %call87 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.18)
  %76 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp86, i32 0, i32 0
  %77 = extractvalue { i64, ptr } %call87, 0
  store i64 %77, ptr %76, align 8
  %78 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp86, i32 0, i32 1
  %79 = extractvalue { i64, ptr } %call87, 1
  store ptr %79, ptr %78, align 8
  %80 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %81 = load ptr, ptr %path, align 8, !tbaa !7
  %82 = getelementptr inbounds { i64, ptr }, ptr %81, i32 0, i32 0
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds { i64, ptr }, ptr %81, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  %call88 = call ptr @aws_json_value_new_string(ptr noundef %80, i64 %83, ptr %85)
  %86 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp86, i32 0, i32 0
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp86, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  %call89 = call i32 @aws_json_value_add_to_object(ptr noundef %75, i64 %87, ptr %89, ptr noundef %call88)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp86) #7
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then91, label %if.end109

if.then91:                                        ; preds = %if.end84
  br label %do.body92

do.body92:                                        ; preds = %if.then91
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger93) #7
  %call94 = call ptr @aws_logger_get()
  store ptr %call94, ptr %logger93, align 8, !tbaa !7
  %90 = load ptr, ptr %logger93, align 8, !tbaa !7
  %cmp95 = icmp ne ptr %90, null
  br i1 %cmp95, label %land.lhs.true96, label %if.end105

land.lhs.true96:                                  ; preds = %do.body92
  %91 = load ptr, ptr %logger93, align 8, !tbaa !7
  %vtable97 = getelementptr inbounds %struct.aws_logger, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %vtable97, align 8, !tbaa !11
  %get_log_level98 = getelementptr inbounds %struct.aws_logger_vtable, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %get_log_level98, align 8, !tbaa !13
  %94 = load ptr, ptr %logger93, align 8, !tbaa !7
  %call99 = call i32 %93(ptr noundef %94, i32 noundef 15363)
  %cmp100 = icmp uge i32 %call99, 2
  br i1 %cmp100, label %if.then101, label %if.end105

if.then101:                                       ; preds = %land.lhs.true96
  %95 = load ptr, ptr %logger93, align 8, !tbaa !7
  %vtable102 = getelementptr inbounds %struct.aws_logger, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %vtable102, align 8, !tbaa !11
  %log103 = getelementptr inbounds %struct.aws_logger_vtable, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %log103, align 8, !tbaa !15
  %98 = load ptr, ptr %logger93, align 8, !tbaa !7
  %call104 = call i32 (ptr, i32, i32, ptr, ...) %97(ptr noundef %98, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.19)
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %land.lhs.true96, %do.body92
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger93) #7
  br label %do.cond106

do.cond106:                                       ; preds = %if.end105
  br label %do.end107

do.end107:                                        ; preds = %do.cond106
  %call108 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call108, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end109:                                        ; preds = %if.end84
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %normalized_path_cur, ptr align 8 @__const.s_resolve_fn_parse_url.normalized_path_cur, i64 16, i1 false)
  %99 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %100 = load ptr, ptr %path, align 8, !tbaa !7
  %101 = getelementptr inbounds { i64, ptr }, ptr %100, i32 0, i32 0
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds { i64, ptr }, ptr %100, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8
  %call110 = call i32 @aws_byte_buf_init_from_normalized_uri_path(ptr noundef %99, i64 %102, ptr %104, ptr noundef %normalized_path_buf)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then118, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %if.end109
  %105 = load ptr, ptr %root, align 8, !tbaa !7
  %106 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp113) #7
  %call114 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %normalized_path_buf)
  %107 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp113, i32 0, i32 0
  %108 = extractvalue { i64, ptr } %call114, 0
  store i64 %108, ptr %107, align 8
  %109 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp113, i32 0, i32 1
  %110 = extractvalue { i64, ptr } %call114, 1
  store ptr %110, ptr %109, align 8
  %111 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp113, i32 0, i32 0
  %112 = load i64, ptr %111, align 8
  %113 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp113, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8
  %call115 = call ptr @aws_json_value_new_string(ptr noundef %106, i64 %112, ptr %114)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp113) #7
  %115 = getelementptr inbounds { i64, ptr }, ptr %normalized_path_cur, i32 0, i32 0
  %116 = load i64, ptr %115, align 8
  %117 = getelementptr inbounds { i64, ptr }, ptr %normalized_path_cur, i32 0, i32 1
  %118 = load ptr, ptr %117, align 8
  %call116 = call i32 @aws_json_value_add_to_object(ptr noundef %105, i64 %116, ptr %118, ptr noundef %call115)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end136

if.then118:                                       ; preds = %lor.lhs.false112, %if.end109
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger120) #7
  %call121 = call ptr @aws_logger_get()
  store ptr %call121, ptr %logger120, align 8, !tbaa !7
  %119 = load ptr, ptr %logger120, align 8, !tbaa !7
  %cmp122 = icmp ne ptr %119, null
  br i1 %cmp122, label %land.lhs.true123, label %if.end132

land.lhs.true123:                                 ; preds = %do.body119
  %120 = load ptr, ptr %logger120, align 8, !tbaa !7
  %vtable124 = getelementptr inbounds %struct.aws_logger, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %vtable124, align 8, !tbaa !11
  %get_log_level125 = getelementptr inbounds %struct.aws_logger_vtable, ptr %121, i32 0, i32 1
  %122 = load ptr, ptr %get_log_level125, align 8, !tbaa !13
  %123 = load ptr, ptr %logger120, align 8, !tbaa !7
  %call126 = call i32 %122(ptr noundef %123, i32 noundef 15363)
  %cmp127 = icmp uge i32 %call126, 2
  br i1 %cmp127, label %if.then128, label %if.end132

if.then128:                                       ; preds = %land.lhs.true123
  %124 = load ptr, ptr %logger120, align 8, !tbaa !7
  %vtable129 = getelementptr inbounds %struct.aws_logger, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %vtable129, align 8, !tbaa !11
  %log130 = getelementptr inbounds %struct.aws_logger_vtable, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %log130, align 8, !tbaa !15
  %127 = load ptr, ptr %logger120, align 8, !tbaa !7
  %call131 = call i32 (ptr, i32, i32, ptr, ...) %126(ptr noundef %127, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.21)
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %land.lhs.true123, %do.body119
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger120) #7
  br label %do.cond133

do.cond133:                                       ; preds = %if.end132
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  call void @aws_byte_buf_clean_up(ptr noundef %normalized_path_buf)
  %call135 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call135, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end136:                                        ; preds = %lor.lhs.false112
  call void @aws_byte_buf_clean_up(ptr noundef %normalized_path_buf)
  %call137 = call ptr @aws_uri_host_name(ptr noundef %uri)
  store ptr %call137, ptr %host_name, align 8, !tbaa !7
  %128 = load ptr, ptr %host_name, align 8, !tbaa !7
  %129 = getelementptr inbounds { i64, ptr }, ptr %128, i32 0, i32 0
  %130 = load i64, ptr %129, align 8
  %131 = getelementptr inbounds { i64, ptr }, ptr %128, i32 0, i32 1
  %132 = load ptr, ptr %131, align 8
  %call138 = call zeroext i1 @s_is_uri_ip(i64 %130, ptr %132, i1 noundef zeroext true)
  %frombool = zext i1 %call138 to i8
  store i8 %frombool, ptr %is_ip, align 1, !tbaa !27
  %133 = load ptr, ptr %root, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp139) #7
  %call140 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.22)
  %134 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp139, i32 0, i32 0
  %135 = extractvalue { i64, ptr } %call140, 0
  store i64 %135, ptr %134, align 8
  %136 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp139, i32 0, i32 1
  %137 = extractvalue { i64, ptr } %call140, 1
  store ptr %137, ptr %136, align 8
  %138 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %139 = load i8, ptr %is_ip, align 1, !tbaa !27, !range !18, !noundef !19
  %tobool141 = trunc i8 %139 to i1
  %call142 = call ptr @aws_json_value_new_boolean(ptr noundef %138, i1 noundef zeroext %tobool141)
  %140 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp139, i32 0, i32 0
  %141 = load i64, ptr %140, align 8
  %142 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp139, i32 0, i32 1
  %143 = load ptr, ptr %142, align 8
  %call143 = call i32 @aws_json_value_add_to_object(ptr noundef %133, i64 %141, ptr %143, ptr noundef %call142)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp139) #7
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then145, label %if.end163

if.then145:                                       ; preds = %if.end136
  br label %do.body146

do.body146:                                       ; preds = %if.then145
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger147) #7
  %call148 = call ptr @aws_logger_get()
  store ptr %call148, ptr %logger147, align 8, !tbaa !7
  %144 = load ptr, ptr %logger147, align 8, !tbaa !7
  %cmp149 = icmp ne ptr %144, null
  br i1 %cmp149, label %land.lhs.true150, label %if.end159

land.lhs.true150:                                 ; preds = %do.body146
  %145 = load ptr, ptr %logger147, align 8, !tbaa !7
  %vtable151 = getelementptr inbounds %struct.aws_logger, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %vtable151, align 8, !tbaa !11
  %get_log_level152 = getelementptr inbounds %struct.aws_logger_vtable, ptr %146, i32 0, i32 1
  %147 = load ptr, ptr %get_log_level152, align 8, !tbaa !13
  %148 = load ptr, ptr %logger147, align 8, !tbaa !7
  %call153 = call i32 %147(ptr noundef %148, i32 noundef 15363)
  %cmp154 = icmp uge i32 %call153, 2
  br i1 %cmp154, label %if.then155, label %if.end159

if.then155:                                       ; preds = %land.lhs.true150
  %149 = load ptr, ptr %logger147, align 8, !tbaa !7
  %vtable156 = getelementptr inbounds %struct.aws_logger, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %vtable156, align 8, !tbaa !11
  %log157 = getelementptr inbounds %struct.aws_logger_vtable, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %log157, align 8, !tbaa !15
  %152 = load ptr, ptr %logger147, align 8, !tbaa !7
  %call158 = call i32 (ptr, i32, i32, ptr, ...) %151(ptr noundef %152, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.23)
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %land.lhs.true150, %do.body146
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger147) #7
  br label %do.cond160

do.cond160:                                       ; preds = %if.end159
  br label %do.end161

do.end161:                                        ; preds = %do.cond160
  %call162 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call162, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end163:                                        ; preds = %if.end136
  %153 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %call164 = call i32 @aws_byte_buf_init(ptr noundef %buf, ptr noundef %153, i64 noundef 0)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then166, label %if.end184

if.then166:                                       ; preds = %if.end163
  br label %do.body167

do.body167:                                       ; preds = %if.then166
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger168) #7
  %call169 = call ptr @aws_logger_get()
  store ptr %call169, ptr %logger168, align 8, !tbaa !7
  %154 = load ptr, ptr %logger168, align 8, !tbaa !7
  %cmp170 = icmp ne ptr %154, null
  br i1 %cmp170, label %land.lhs.true171, label %if.end180

land.lhs.true171:                                 ; preds = %do.body167
  %155 = load ptr, ptr %logger168, align 8, !tbaa !7
  %vtable172 = getelementptr inbounds %struct.aws_logger, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %vtable172, align 8, !tbaa !11
  %get_log_level173 = getelementptr inbounds %struct.aws_logger_vtable, ptr %156, i32 0, i32 1
  %157 = load ptr, ptr %get_log_level173, align 8, !tbaa !13
  %158 = load ptr, ptr %logger168, align 8, !tbaa !7
  %call174 = call i32 %157(ptr noundef %158, i32 noundef 15363)
  %cmp175 = icmp uge i32 %call174, 2
  br i1 %cmp175, label %if.then176, label %if.end180

if.then176:                                       ; preds = %land.lhs.true171
  %159 = load ptr, ptr %logger168, align 8, !tbaa !7
  %vtable177 = getelementptr inbounds %struct.aws_logger, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %vtable177, align 8, !tbaa !11
  %log178 = getelementptr inbounds %struct.aws_logger_vtable, ptr %160, i32 0, i32 0
  %161 = load ptr, ptr %log178, align 8, !tbaa !15
  %162 = load ptr, ptr %logger168, align 8, !tbaa !7
  %call179 = call i32 (ptr, i32, i32, ptr, ...) %161(ptr noundef %162, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.24)
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %land.lhs.true171, %do.body167
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger168) #7
  br label %do.cond181

do.cond181:                                       ; preds = %if.end180
  br label %do.end182

do.end182:                                        ; preds = %do.cond181
  %call183 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call183, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end184:                                        ; preds = %if.end163
  %163 = load ptr, ptr %root, align 8, !tbaa !7
  %call185 = call i32 @aws_byte_buf_append_json_string(ptr noundef %163, ptr noundef %buf)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then187, label %if.end205

if.then187:                                       ; preds = %if.end184
  br label %do.body188

do.body188:                                       ; preds = %if.then187
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger189) #7
  %call190 = call ptr @aws_logger_get()
  store ptr %call190, ptr %logger189, align 8, !tbaa !7
  %164 = load ptr, ptr %logger189, align 8, !tbaa !7
  %cmp191 = icmp ne ptr %164, null
  br i1 %cmp191, label %land.lhs.true192, label %if.end201

land.lhs.true192:                                 ; preds = %do.body188
  %165 = load ptr, ptr %logger189, align 8, !tbaa !7
  %vtable193 = getelementptr inbounds %struct.aws_logger, ptr %165, i32 0, i32 0
  %166 = load ptr, ptr %vtable193, align 8, !tbaa !11
  %get_log_level194 = getelementptr inbounds %struct.aws_logger_vtable, ptr %166, i32 0, i32 1
  %167 = load ptr, ptr %get_log_level194, align 8, !tbaa !13
  %168 = load ptr, ptr %logger189, align 8, !tbaa !7
  %call195 = call i32 %167(ptr noundef %168, i32 noundef 15363)
  %cmp196 = icmp uge i32 %call195, 2
  br i1 %cmp196, label %if.then197, label %if.end201

if.then197:                                       ; preds = %land.lhs.true192
  %169 = load ptr, ptr %logger189, align 8, !tbaa !7
  %vtable198 = getelementptr inbounds %struct.aws_logger, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %vtable198, align 8, !tbaa !11
  %log199 = getelementptr inbounds %struct.aws_logger_vtable, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %log199, align 8, !tbaa !15
  %172 = load ptr, ptr %logger189, align 8, !tbaa !7
  %call200 = call i32 (ptr, i32, i32, ptr, ...) %171(ptr noundef %172, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.25)
  br label %if.end201

if.end201:                                        ; preds = %if.then197, %land.lhs.true192, %do.body188
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger189) #7
  br label %do.cond202

do.cond202:                                       ; preds = %if.end201
  br label %do.end203

do.end203:                                        ; preds = %do.cond202
  call void @aws_byte_buf_clean_up(ptr noundef %buf)
  %call204 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call204, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end205:                                        ; preds = %if.end184
  %173 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type206 = getelementptr inbounds %struct.aws_endpoints_value, ptr %173, i32 0, i32 0
  store i32 4, ptr %type206, align 8, !tbaa !16
  %174 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v207 = getelementptr inbounds %struct.aws_endpoints_value, ptr %174, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #7
  %175 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %call208 = call ptr @aws_string_new_from_buf(ptr noundef %175, ptr noundef %buf)
  call void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %call208)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v207, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #7
  call void @aws_byte_buf_clean_up(ptr noundef %buf)
  br label %on_done

on_done:                                          ; preds = %if.end205, %do.end203, %do.end182, %do.end161, %do.end134, %do.end107, %do.end83, %if.then59, %do.end53, %if.then30, %if.then24, %if.then17, %if.then13, %do.end
  call void @aws_uri_clean_up(ptr noundef %uri)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_url)
  %176 = load ptr, ptr %root, align 8, !tbaa !7
  call void @aws_json_value_destroy(ptr noundef %176)
  %177 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_url) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #7
  call void @llvm.lifetime.end.p0(i64 200, ptr %uri) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %177
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_is_valid_host_label(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %argv_allow_subdomains = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_allow_subdomains) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_allow_subdomains, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %argv_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call3 = call i32 @aws_endpoints_argv_expect(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1, i32 noundef 3, ptr noundef %argv_allow_subdomains)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end12

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !7
  %7 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !7
  %call7 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp8 = icmp uge i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable10 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable10, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !7
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.28)
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end12:                                         ; preds = %lor.lhs.false2
  %16 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %16, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !16
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %v13 = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_allow_subdomains, i32 0, i32 1
  %17 = load i8, ptr %v13, align 8, !tbaa !4, !range !18, !noundef !19
  %tobool14 = trunc i8 %17 to i1
  %18 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 0
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %call15 = call zeroext i1 @aws_is_valid_host_label(i64 %19, ptr %21, i1 noundef zeroext %tobool14)
  %22 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v16 = getelementptr inbounds %struct.aws_endpoints_value, ptr %22, i32 0, i32 1
  %frombool = zext i1 %call15 to i8
  store i8 %frombool, ptr %v16, align 8, !tbaa !4
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_allow_subdomains)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_allow_subdomains)
  %call17 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end12
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_allow_subdomains) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #7
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_aws_partition(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %argv_region = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %element = alloca ptr, align 8
  %key = alloca %struct.aws_byte_cursor, align 8
  %logger15 = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %tmp41 = alloca %struct.aws_byte_cursor, align 8
  %tmp47 = alloca %struct.aws_byte_cursor, align 8
  %logger59 = alloca ptr, align 8
  %tmp91 = alloca %struct.aws_owning_cursor, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_region) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_region, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %argv_region)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !7
  %4 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %call4 = call i32 %7(ptr noundef %8, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !15
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.29)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call9 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call9, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end10:                                         ; preds = %lor.lhs.false
  store ptr null, ptr %element, align 8, !tbaa !7
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_region, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %cur, i64 16, i1 false), !tbaa.struct !20
  %13 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %partitions = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %partitions, align 8, !tbaa !29
  %region_to_partition_info = getelementptr inbounds %struct.aws_partitions_config, ptr %14, i32 0, i32 3
  %call11 = call i32 @aws_hash_table_find(ptr noundef %region_to_partition_info, ptr noundef %key, ptr noundef %element)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end35

if.then13:                                        ; preds = %if.end10
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger15) #7
  %call16 = call ptr @aws_logger_get()
  store ptr %call16, ptr %logger15, align 8, !tbaa !7
  %15 = load ptr, ptr %logger15, align 8, !tbaa !7
  %cmp17 = icmp ne ptr %15, null
  br i1 %cmp17, label %land.lhs.true18, label %if.end31

land.lhs.true18:                                  ; preds = %do.body14
  %16 = load ptr, ptr %logger15, align 8, !tbaa !7
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %vtable19, align 8, !tbaa !11
  %get_log_level20 = getelementptr inbounds %struct.aws_logger_vtable, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %get_log_level20, align 8, !tbaa !13
  %19 = load ptr, ptr %logger15, align 8, !tbaa !7
  %call21 = call i32 %18(ptr noundef %19, i32 noundef 15363)
  %cmp22 = icmp uge i32 %call21, 2
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true18
  %20 = load ptr, ptr %logger15, align 8, !tbaa !7
  %vtable24 = getelementptr inbounds %struct.aws_logger, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %vtable24, align 8, !tbaa !11
  %log25 = getelementptr inbounds %struct.aws_logger_vtable, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %log25, align 8, !tbaa !15
  %23 = load ptr, ptr %logger15, align 8, !tbaa !7
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 0
  %24 = load i64, ptr %len, align 8, !tbaa !23
  %conv = trunc i64 %24 to i32
  %cmp26 = icmp slt i32 %conv, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then23
  br label %cond.end

cond.false:                                       ; preds = %if.then23
  %len28 = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 0
  %25 = load i64, ptr %len28, align 8, !tbaa !23
  %conv29 = trunc i64 %25 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv29, %cond.false ]
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 1
  %26 = load ptr, ptr %ptr, align 8, !tbaa !25
  %call30 = call i32 (ptr, i32, i32, ptr, ...) %22(ptr noundef %23, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.30, i32 noundef %cond, ptr noundef %26)
  br label %if.end31

if.end31:                                         ; preds = %cond.end, %land.lhs.true18, %do.body14
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger15) #7
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  %call34 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call34, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end35:                                         ; preds = %if.end10
  %27 = load ptr, ptr %element, align 8, !tbaa !7
  %cmp36 = icmp ne ptr %27, null
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  %28 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %28, i32 0, i32 0
  store i32 4, ptr %type, align 8, !tbaa !16
  %29 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v39 = getelementptr inbounds %struct.aws_endpoints_value, ptr %29, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #7
  %30 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %31 = load ptr, ptr %element, align 8, !tbaa !7
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %value, align 8, !tbaa !33
  %info = getelementptr inbounds %struct.aws_partition_info, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %info, align 8, !tbaa !35
  call void @aws_endpoints_owning_cursor_create(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %30, ptr noundef %33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v39, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #7
  br label %on_done

if.end40:                                         ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp41) #7
  %34 = getelementptr inbounds { i64, ptr }, ptr %key, i32 0, i32 0
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds { i64, ptr }, ptr %key, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %call42 = call { i64, ptr } @aws_map_region_to_partition(i64 %35, ptr %37)
  %38 = getelementptr inbounds { i64, ptr }, ptr %tmp41, i32 0, i32 0
  %39 = extractvalue { i64, ptr } %call42, 0
  store i64 %39, ptr %38, align 8
  %40 = getelementptr inbounds { i64, ptr }, ptr %tmp41, i32 0, i32 1
  %41 = extractvalue { i64, ptr } %call42, 1
  store ptr %41, ptr %40, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %tmp41, i64 16, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp41) #7
  %len43 = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 0
  %42 = load i64, ptr %len43, align 8, !tbaa !23
  %cmp44 = icmp eq i64 %42, 0
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp47) #7
  %call48 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.31)
  %43 = getelementptr inbounds { i64, ptr }, ptr %tmp47, i32 0, i32 0
  %44 = extractvalue { i64, ptr } %call48, 0
  store i64 %44, ptr %43, align 8
  %45 = getelementptr inbounds { i64, ptr }, ptr %tmp47, i32 0, i32 1
  %46 = extractvalue { i64, ptr } %call48, 1
  store ptr %46, ptr %45, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %tmp47, i64 16, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp47) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end40
  %47 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %partitions50 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %partitions50, align 8, !tbaa !29
  %region_to_partition_info51 = getelementptr inbounds %struct.aws_partitions_config, ptr %48, i32 0, i32 3
  %call52 = call i32 @aws_hash_table_find(ptr noundef %region_to_partition_info51, ptr noundef %key, ptr noundef %element)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then57, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.end49
  %49 = load ptr, ptr %element, align 8, !tbaa !7
  %cmp55 = icmp eq ptr %49, null
  br i1 %cmp55, label %if.then57, label %if.end88

if.then57:                                        ; preds = %lor.lhs.false54, %if.end49
  br label %do.body58

do.body58:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger59) #7
  %call60 = call ptr @aws_logger_get()
  store ptr %call60, ptr %logger59, align 8, !tbaa !7
  %50 = load ptr, ptr %logger59, align 8, !tbaa !7
  %cmp61 = icmp ne ptr %50, null
  br i1 %cmp61, label %land.lhs.true63, label %if.end84

land.lhs.true63:                                  ; preds = %do.body58
  %51 = load ptr, ptr %logger59, align 8, !tbaa !7
  %vtable64 = getelementptr inbounds %struct.aws_logger, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %vtable64, align 8, !tbaa !11
  %get_log_level65 = getelementptr inbounds %struct.aws_logger_vtable, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %get_log_level65, align 8, !tbaa !13
  %54 = load ptr, ptr %logger59, align 8, !tbaa !7
  %call66 = call i32 %53(ptr noundef %54, i32 noundef 15363)
  %cmp67 = icmp uge i32 %call66, 2
  br i1 %cmp67, label %if.then69, label %if.end84

if.then69:                                        ; preds = %land.lhs.true63
  %55 = load ptr, ptr %logger59, align 8, !tbaa !7
  %vtable70 = getelementptr inbounds %struct.aws_logger, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %vtable70, align 8, !tbaa !11
  %log71 = getelementptr inbounds %struct.aws_logger_vtable, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %log71, align 8, !tbaa !15
  %58 = load ptr, ptr %logger59, align 8, !tbaa !7
  %len72 = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 0
  %59 = load i64, ptr %len72, align 8, !tbaa !23
  %conv73 = trunc i64 %59 to i32
  %cmp74 = icmp slt i32 %conv73, 0
  br i1 %cmp74, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %if.then69
  br label %cond.end80

cond.false77:                                     ; preds = %if.then69
  %len78 = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 0
  %60 = load i64, ptr %len78, align 8, !tbaa !23
  %conv79 = trunc i64 %60 to i32
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false77, %cond.true76
  %cond81 = phi i32 [ 0, %cond.true76 ], [ %conv79, %cond.false77 ]
  %ptr82 = getelementptr inbounds %struct.aws_byte_cursor, ptr %key, i32 0, i32 1
  %61 = load ptr, ptr %ptr82, align 8, !tbaa !25
  %call83 = call i32 (ptr, i32, i32, ptr, ...) %57(ptr noundef %58, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.30, i32 noundef %cond81, ptr noundef %61)
  br label %if.end84

if.end84:                                         ; preds = %cond.end80, %land.lhs.true63, %do.body58
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger59) #7
  br label %do.cond85

do.cond85:                                        ; preds = %if.end84
  br label %do.end86

do.end86:                                         ; preds = %do.cond85
  %call87 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call87, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end88:                                         ; preds = %lor.lhs.false54
  %62 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type89 = getelementptr inbounds %struct.aws_endpoints_value, ptr %62, i32 0, i32 0
  store i32 4, ptr %type89, align 8, !tbaa !16
  %63 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v90 = getelementptr inbounds %struct.aws_endpoints_value, ptr %63, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp91) #7
  %64 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %65 = load ptr, ptr %element, align 8, !tbaa !7
  %value92 = getelementptr inbounds %struct.aws_hash_element, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %value92, align 8, !tbaa !33
  %info93 = getelementptr inbounds %struct.aws_partition_info, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %info93, align 8, !tbaa !35
  call void @aws_endpoints_owning_cursor_create(ptr sret(%struct.aws_owning_cursor) align 8 %tmp91, ptr noundef %64, ptr noundef %67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v90, ptr align 8 %tmp91, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp91) #7
  br label %on_done

on_done:                                          ; preds = %if.end88, %do.end86, %if.then38, %do.end33, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_region)
  %68 = load i32, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_region) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_fn_aws_parse_arn(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %object = alloca ptr, align 8
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %arn = alloca %struct.aws_resource_name, align 8
  %logger19 = alloca ptr, align 8
  %resource_id_node = alloca ptr, align 8
  %start = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cur61 = alloca %struct.aws_byte_cursor, align 8
  %element = alloca ptr, align 8
  %logger74 = alloca ptr, align 8
  %cur102 = alloca %struct.aws_byte_cursor, align 8
  %element111 = alloca ptr, align 8
  %logger120 = alloca ptr, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  %agg.tmp150 = alloca %struct.aws_byte_cursor, align 8
  %agg.tmp157 = alloca %struct.aws_byte_cursor, align 8
  %agg.tmp163 = alloca %struct.aws_byte_cursor, align 8
  %agg.tmp169 = alloca %struct.aws_byte_cursor, align 8
  %logger175 = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %logger204 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #7
  store ptr null, ptr %object, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %argv_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !7
  %4 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %call4 = call i32 %7(ptr noundef %8, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !15
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.32)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call9 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call9, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end10:                                         ; preds = %lor.lhs.false
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %call11 = call i32 @aws_resource_name_init_from_cur(ptr noundef %arn, ptr noundef %cur)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %13 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %13, i32 0, i32 0
  store i32 1, ptr %type, align 8, !tbaa !16
  br label %on_done

if.end14:                                         ; preds = %if.end10
  %14 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %call15 = call ptr @aws_json_value_new_object(ptr noundef %14)
  store ptr %call15, ptr %object, align 8, !tbaa !7
  %15 = load ptr, ptr %object, align 8, !tbaa !7
  %cmp16 = icmp eq ptr %15, null
  br i1 %cmp16, label %if.then17, label %if.end35

if.then17:                                        ; preds = %if.end14
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger19) #7
  %call20 = call ptr @aws_logger_get()
  store ptr %call20, ptr %logger19, align 8, !tbaa !7
  %16 = load ptr, ptr %logger19, align 8, !tbaa !7
  %cmp21 = icmp ne ptr %16, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %do.body18
  %17 = load ptr, ptr %logger19, align 8, !tbaa !7
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vtable23, align 8, !tbaa !11
  %get_log_level24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %get_log_level24, align 8, !tbaa !13
  %20 = load ptr, ptr %logger19, align 8, !tbaa !7
  %call25 = call i32 %19(ptr noundef %20, i32 noundef 15363)
  %cmp26 = icmp uge i32 %call25, 2
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %land.lhs.true22
  %21 = load ptr, ptr %logger19, align 8, !tbaa !7
  %vtable28 = getelementptr inbounds %struct.aws_logger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %vtable28, align 8, !tbaa !11
  %log29 = getelementptr inbounds %struct.aws_logger_vtable, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %log29, align 8, !tbaa !15
  %24 = load ptr, ptr %logger19, align 8, !tbaa !7
  %call30 = call i32 (ptr, i32, i32, ptr, ...) %23(ptr noundef %24, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.33)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true22, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger19) #7
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  %call34 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call34, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end35:                                         ; preds = %if.end14
  %partition = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 0
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %partition, i32 0, i32 0
  %25 = load i64, ptr %len, align 8, !tbaa !37
  %cmp36 = icmp eq i64 %25, 0
  br i1 %cmp36, label %if.then43, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end35
  %resource_id = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %len38 = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id, i32 0, i32 0
  %26 = load i64, ptr %len38, align 8, !tbaa !39
  %cmp39 = icmp eq i64 %26, 0
  br i1 %cmp39, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %service = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 1
  %len41 = getelementptr inbounds %struct.aws_byte_cursor, ptr %service, i32 0, i32 0
  %27 = load i64, ptr %len41, align 8, !tbaa !40
  %cmp42 = icmp eq i64 %27, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %lor.lhs.false40, %lor.lhs.false37, %if.end35
  %28 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type44 = getelementptr inbounds %struct.aws_endpoints_value, ptr %28, i32 0, i32 0
  store i32 1, ptr %type44, align 8, !tbaa !16
  br label %on_done

if.end45:                                         ; preds = %lor.lhs.false40
  %29 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %call46 = call ptr @aws_json_value_new_array(ptr noundef %29)
  store ptr %call46, ptr %resource_id_node, align 8, !tbaa !7
  store i64 0, ptr %start, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  store i64 0, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end45
  %30 = load i64, ptr %i, align 8, !tbaa !21
  %resource_id47 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %len48 = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id47, i32 0, i32 0
  %31 = load i64, ptr %len48, align 8, !tbaa !39
  %cmp49 = icmp ult i64 %30, %31
  br i1 %cmp49, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

for.body:                                         ; preds = %for.cond
  %resource_id50 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id50, i32 0, i32 1
  %32 = load ptr, ptr %ptr, align 8, !tbaa !41
  %33 = load i64, ptr %i, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8, ptr %32, i64 %33
  %34 = load i8, ptr %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %34 to i32
  %cmp51 = icmp eq i32 %conv, 47
  br i1 %cmp51, label %if.then60, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %for.body
  %resource_id54 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %ptr55 = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id54, i32 0, i32 1
  %35 = load ptr, ptr %ptr55, align 8, !tbaa !41
  %36 = load i64, ptr %i, align 8, !tbaa !21
  %arrayidx56 = getelementptr inbounds i8, ptr %35, i64 %36
  %37 = load i8, ptr %arrayidx56, align 1, !tbaa !4
  %conv57 = zext i8 %37 to i32
  %cmp58 = icmp eq i32 %conv57, 58
  br i1 %cmp58, label %if.then60, label %if.end94

if.then60:                                        ; preds = %lor.lhs.false53, %for.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %cur61) #7
  %len62 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur61, i32 0, i32 0
  %38 = load i64, ptr %i, align 8, !tbaa !21
  %39 = load i64, ptr %start, align 8, !tbaa !21
  %sub = sub i64 %38, %39
  store i64 %sub, ptr %len62, align 8, !tbaa !23
  %ptr63 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur61, i32 0, i32 1
  %resource_id64 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %ptr65 = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id64, i32 0, i32 1
  %40 = load ptr, ptr %ptr65, align 8, !tbaa !41
  %41 = load i64, ptr %start, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %41
  store ptr %add.ptr, ptr %ptr63, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #7
  %42 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %43 = getelementptr inbounds { i64, ptr }, ptr %cur61, i32 0, i32 0
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, ptr }, ptr %cur61, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %call66 = call ptr @aws_json_value_new_string(ptr noundef %42, i64 %44, ptr %46)
  store ptr %call66, ptr %element, align 8, !tbaa !7
  %47 = load ptr, ptr %element, align 8, !tbaa !7
  %cmp67 = icmp eq ptr %47, null
  br i1 %cmp67, label %if.then72, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.then60
  %48 = load ptr, ptr %resource_id_node, align 8, !tbaa !7
  %49 = load ptr, ptr %element, align 8, !tbaa !7
  %call70 = call i32 @aws_json_value_add_array_element(ptr noundef %48, ptr noundef %49)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then72, label %if.end92

if.then72:                                        ; preds = %lor.lhs.false69, %if.then60
  br label %do.body73

do.body73:                                        ; preds = %if.then72
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger74) #7
  %call75 = call ptr @aws_logger_get()
  store ptr %call75, ptr %logger74, align 8, !tbaa !7
  %50 = load ptr, ptr %logger74, align 8, !tbaa !7
  %cmp76 = icmp ne ptr %50, null
  br i1 %cmp76, label %land.lhs.true78, label %if.end88

land.lhs.true78:                                  ; preds = %do.body73
  %51 = load ptr, ptr %logger74, align 8, !tbaa !7
  %vtable79 = getelementptr inbounds %struct.aws_logger, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %vtable79, align 8, !tbaa !11
  %get_log_level80 = getelementptr inbounds %struct.aws_logger_vtable, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %get_log_level80, align 8, !tbaa !13
  %54 = load ptr, ptr %logger74, align 8, !tbaa !7
  %call81 = call i32 %53(ptr noundef %54, i32 noundef 15363)
  %cmp82 = icmp uge i32 %call81, 2
  br i1 %cmp82, label %if.then84, label %if.end88

if.then84:                                        ; preds = %land.lhs.true78
  %55 = load ptr, ptr %logger74, align 8, !tbaa !7
  %vtable85 = getelementptr inbounds %struct.aws_logger, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %vtable85, align 8, !tbaa !11
  %log86 = getelementptr inbounds %struct.aws_logger_vtable, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %log86, align 8, !tbaa !15
  %58 = load ptr, ptr %logger74, align 8, !tbaa !7
  %call87 = call i32 (ptr, i32, i32, ptr, ...) %57(ptr noundef %58, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.34)
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %land.lhs.true78, %do.body73
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger74) #7
  br label %do.cond89

do.cond89:                                        ; preds = %if.end88
  br label %do.end90

do.end90:                                         ; preds = %do.cond89
  %call91 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call91, ptr %result, align 4, !tbaa !9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false69
  %59 = load i64, ptr %i, align 8, !tbaa !21
  %add = add i64 %59, 1
  store i64 %add, ptr %start, align 8, !tbaa !21
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.end92
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %cur61) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup95 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end94

if.end94:                                         ; preds = %cleanup.cont, %lor.lhs.false53
  br label %for.inc

for.inc:                                          ; preds = %if.end94
  %60 = load i64, ptr %i, align 8, !tbaa !21
  %inc = add i64 %60, 1
  store i64 %inc, ptr %i, align 8, !tbaa !21
  br label %for.cond

cleanup95:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  %cleanup.dest96 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest96, label %cleanup223 [
    i32 7, label %for.end
    i32 4, label %on_done
  ]

for.end:                                          ; preds = %cleanup95
  %61 = load i64, ptr %start, align 8, !tbaa !21
  %resource_id97 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %len98 = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id97, i32 0, i32 0
  %62 = load i64, ptr %len98, align 8, !tbaa !39
  %cmp99 = icmp ule i64 %61, %62
  br i1 %cmp99, label %if.then101, label %if.end143

if.then101:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %cur102) #7
  %len103 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur102, i32 0, i32 0
  %resource_id104 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %len105 = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id104, i32 0, i32 0
  %63 = load i64, ptr %len105, align 8, !tbaa !39
  %64 = load i64, ptr %start, align 8, !tbaa !21
  %sub106 = sub i64 %63, %64
  store i64 %sub106, ptr %len103, align 8, !tbaa !23
  %ptr107 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur102, i32 0, i32 1
  %resource_id108 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 4
  %ptr109 = getelementptr inbounds %struct.aws_byte_cursor, ptr %resource_id108, i32 0, i32 1
  %65 = load ptr, ptr %ptr109, align 8, !tbaa !41
  %66 = load i64, ptr %start, align 8, !tbaa !21
  %add.ptr110 = getelementptr inbounds i8, ptr %65, i64 %66
  store ptr %add.ptr110, ptr %ptr107, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %element111) #7
  %67 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %68 = getelementptr inbounds { i64, ptr }, ptr %cur102, i32 0, i32 0
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds { i64, ptr }, ptr %cur102, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8
  %call112 = call ptr @aws_json_value_new_string(ptr noundef %67, i64 %69, ptr %71)
  store ptr %call112, ptr %element111, align 8, !tbaa !7
  %72 = load ptr, ptr %element111, align 8, !tbaa !7
  %cmp113 = icmp eq ptr %72, null
  br i1 %cmp113, label %if.then118, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %if.then101
  %73 = load ptr, ptr %resource_id_node, align 8, !tbaa !7
  %74 = load ptr, ptr %element111, align 8, !tbaa !7
  %call116 = call i32 @aws_json_value_add_array_element(ptr noundef %73, ptr noundef %74)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end138

if.then118:                                       ; preds = %lor.lhs.false115, %if.then101
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger120) #7
  %call121 = call ptr @aws_logger_get()
  store ptr %call121, ptr %logger120, align 8, !tbaa !7
  %75 = load ptr, ptr %logger120, align 8, !tbaa !7
  %cmp122 = icmp ne ptr %75, null
  br i1 %cmp122, label %land.lhs.true124, label %if.end134

land.lhs.true124:                                 ; preds = %do.body119
  %76 = load ptr, ptr %logger120, align 8, !tbaa !7
  %vtable125 = getelementptr inbounds %struct.aws_logger, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %vtable125, align 8, !tbaa !11
  %get_log_level126 = getelementptr inbounds %struct.aws_logger_vtable, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %get_log_level126, align 8, !tbaa !13
  %79 = load ptr, ptr %logger120, align 8, !tbaa !7
  %call127 = call i32 %78(ptr noundef %79, i32 noundef 15363)
  %cmp128 = icmp uge i32 %call127, 2
  br i1 %cmp128, label %if.then130, label %if.end134

if.then130:                                       ; preds = %land.lhs.true124
  %80 = load ptr, ptr %logger120, align 8, !tbaa !7
  %vtable131 = getelementptr inbounds %struct.aws_logger, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %vtable131, align 8, !tbaa !11
  %log132 = getelementptr inbounds %struct.aws_logger_vtable, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %log132, align 8, !tbaa !15
  %83 = load ptr, ptr %logger120, align 8, !tbaa !7
  %call133 = call i32 (ptr, i32, i32, ptr, ...) %82(ptr noundef %83, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.34)
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %land.lhs.true124, %do.body119
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger120) #7
  br label %do.cond135

do.cond135:                                       ; preds = %if.end134
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  %call137 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call137, ptr %result, align 4, !tbaa !9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup139

if.end138:                                        ; preds = %lor.lhs.false115
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup139

cleanup139:                                       ; preds = %do.end136, %if.end138
  call void @llvm.lifetime.end.p0(i64 8, ptr %element111) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %cur102) #7
  %cleanup.dest141 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest141, label %cleanup223 [
    i32 0, label %cleanup.cont142
    i32 4, label %on_done
  ]

cleanup.cont142:                                  ; preds = %cleanup139
  br label %if.end143

if.end143:                                        ; preds = %cleanup.cont142, %for.end
  %84 = load ptr, ptr %object, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #7
  %call144 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.35)
  %85 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %86 = extractvalue { i64, ptr } %call144, 0
  store i64 %86, ptr %85, align 8
  %87 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %88 = extractvalue { i64, ptr } %call144, 1
  store ptr %88, ptr %87, align 8
  %89 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %partition145 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 0
  %90 = getelementptr inbounds { i64, ptr }, ptr %partition145, i32 0, i32 0
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds { i64, ptr }, ptr %partition145, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %call146 = call ptr @aws_json_value_new_string(ptr noundef %89, i64 %91, ptr %93)
  %94 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  %call147 = call i32 @aws_json_value_add_to_object(ptr noundef %84, i64 %95, ptr %97, ptr noundef %call146)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #7
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then173, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %if.end143
  %98 = load ptr, ptr %object, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp150) #7
  %call151 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.36)
  %99 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp150, i32 0, i32 0
  %100 = extractvalue { i64, ptr } %call151, 0
  store i64 %100, ptr %99, align 8
  %101 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp150, i32 0, i32 1
  %102 = extractvalue { i64, ptr } %call151, 1
  store ptr %102, ptr %101, align 8
  %103 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %service152 = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 1
  %104 = getelementptr inbounds { i64, ptr }, ptr %service152, i32 0, i32 0
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds { i64, ptr }, ptr %service152, i32 0, i32 1
  %107 = load ptr, ptr %106, align 8
  %call153 = call ptr @aws_json_value_new_string(ptr noundef %103, i64 %105, ptr %107)
  %108 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp150, i32 0, i32 0
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp150, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8
  %call154 = call i32 @aws_json_value_add_to_object(ptr noundef %98, i64 %109, ptr %111, ptr noundef %call153)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp150) #7
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then173, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false149
  %112 = load ptr, ptr %object, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp157) #7
  %call158 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.37)
  %113 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp157, i32 0, i32 0
  %114 = extractvalue { i64, ptr } %call158, 0
  store i64 %114, ptr %113, align 8
  %115 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp157, i32 0, i32 1
  %116 = extractvalue { i64, ptr } %call158, 1
  store ptr %116, ptr %115, align 8
  %117 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %region = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 2
  %118 = getelementptr inbounds { i64, ptr }, ptr %region, i32 0, i32 0
  %119 = load i64, ptr %118, align 8
  %120 = getelementptr inbounds { i64, ptr }, ptr %region, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8
  %call159 = call ptr @aws_json_value_new_string(ptr noundef %117, i64 %119, ptr %121)
  %122 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp157, i32 0, i32 0
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp157, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8
  %call160 = call i32 @aws_json_value_add_to_object(ptr noundef %112, i64 %123, ptr %125, ptr noundef %call159)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp157) #7
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then173, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false156
  %126 = load ptr, ptr %object, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp163) #7
  %call164 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.38)
  %127 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp163, i32 0, i32 0
  %128 = extractvalue { i64, ptr } %call164, 0
  store i64 %128, ptr %127, align 8
  %129 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp163, i32 0, i32 1
  %130 = extractvalue { i64, ptr } %call164, 1
  store ptr %130, ptr %129, align 8
  %131 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %account_id = getelementptr inbounds %struct.aws_resource_name, ptr %arn, i32 0, i32 3
  %132 = getelementptr inbounds { i64, ptr }, ptr %account_id, i32 0, i32 0
  %133 = load i64, ptr %132, align 8
  %134 = getelementptr inbounds { i64, ptr }, ptr %account_id, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8
  %call165 = call ptr @aws_json_value_new_string(ptr noundef %131, i64 %133, ptr %135)
  %136 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp163, i32 0, i32 0
  %137 = load i64, ptr %136, align 8
  %138 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp163, i32 0, i32 1
  %139 = load ptr, ptr %138, align 8
  %call166 = call i32 @aws_json_value_add_to_object(ptr noundef %126, i64 %137, ptr %139, ptr noundef %call165)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp163) #7
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then173, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false162
  %140 = load ptr, ptr %object, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp169) #7
  %call170 = call { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef @.str.39)
  %141 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp169, i32 0, i32 0
  %142 = extractvalue { i64, ptr } %call170, 0
  store i64 %142, ptr %141, align 8
  %143 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp169, i32 0, i32 1
  %144 = extractvalue { i64, ptr } %call170, 1
  store ptr %144, ptr %143, align 8
  %145 = load ptr, ptr %resource_id_node, align 8, !tbaa !7
  %146 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp169, i32 0, i32 0
  %147 = load i64, ptr %146, align 8
  %148 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp169, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8
  %call171 = call i32 @aws_json_value_add_to_object(ptr noundef %140, i64 %147, ptr %149, ptr noundef %145)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp169) #7
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then173, label %if.end193

if.then173:                                       ; preds = %lor.lhs.false168, %lor.lhs.false162, %lor.lhs.false156, %lor.lhs.false149, %if.end143
  br label %do.body174

do.body174:                                       ; preds = %if.then173
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger175) #7
  %call176 = call ptr @aws_logger_get()
  store ptr %call176, ptr %logger175, align 8, !tbaa !7
  %150 = load ptr, ptr %logger175, align 8, !tbaa !7
  %cmp177 = icmp ne ptr %150, null
  br i1 %cmp177, label %land.lhs.true179, label %if.end189

land.lhs.true179:                                 ; preds = %do.body174
  %151 = load ptr, ptr %logger175, align 8, !tbaa !7
  %vtable180 = getelementptr inbounds %struct.aws_logger, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %vtable180, align 8, !tbaa !11
  %get_log_level181 = getelementptr inbounds %struct.aws_logger_vtable, ptr %152, i32 0, i32 1
  %153 = load ptr, ptr %get_log_level181, align 8, !tbaa !13
  %154 = load ptr, ptr %logger175, align 8, !tbaa !7
  %call182 = call i32 %153(ptr noundef %154, i32 noundef 15363)
  %cmp183 = icmp uge i32 %call182, 2
  br i1 %cmp183, label %if.then185, label %if.end189

if.then185:                                       ; preds = %land.lhs.true179
  %155 = load ptr, ptr %logger175, align 8, !tbaa !7
  %vtable186 = getelementptr inbounds %struct.aws_logger, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %vtable186, align 8, !tbaa !11
  %log187 = getelementptr inbounds %struct.aws_logger_vtable, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %log187, align 8, !tbaa !15
  %158 = load ptr, ptr %logger175, align 8, !tbaa !7
  %call188 = call i32 (ptr, i32, i32, ptr, ...) %157(ptr noundef %158, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.40)
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %land.lhs.true179, %do.body174
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger175) #7
  br label %do.cond190

do.cond190:                                       ; preds = %if.end189
  br label %do.end191

do.end191:                                        ; preds = %do.cond190
  %call192 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call192, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end193:                                        ; preds = %lor.lhs.false168
  %159 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type194 = getelementptr inbounds %struct.aws_endpoints_value, ptr %159, i32 0, i32 0
  store i32 4, ptr %type194, align 8, !tbaa !16
  %160 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v195 = getelementptr inbounds %struct.aws_endpoints_value, ptr %160, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #7
  %161 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %162 = load ptr, ptr %object, align 8, !tbaa !7
  %call196 = call ptr @aws_string_new_from_json(ptr noundef %161, ptr noundef %162)
  call void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %call196)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v195, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #7
  %163 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v197 = getelementptr inbounds %struct.aws_endpoints_value, ptr %163, i32 0, i32 1
  %cur198 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v197, i32 0, i32 0
  %len199 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cur198, i32 0, i32 0
  %164 = load i64, ptr %len199, align 8, !tbaa !4
  %cmp200 = icmp eq i64 %164, 0
  br i1 %cmp200, label %if.then202, label %if.end222

if.then202:                                       ; preds = %if.end193
  br label %do.body203

do.body203:                                       ; preds = %if.then202
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger204) #7
  %call205 = call ptr @aws_logger_get()
  store ptr %call205, ptr %logger204, align 8, !tbaa !7
  %165 = load ptr, ptr %logger204, align 8, !tbaa !7
  %cmp206 = icmp ne ptr %165, null
  br i1 %cmp206, label %land.lhs.true208, label %if.end218

land.lhs.true208:                                 ; preds = %do.body203
  %166 = load ptr, ptr %logger204, align 8, !tbaa !7
  %vtable209 = getelementptr inbounds %struct.aws_logger, ptr %166, i32 0, i32 0
  %167 = load ptr, ptr %vtable209, align 8, !tbaa !11
  %get_log_level210 = getelementptr inbounds %struct.aws_logger_vtable, ptr %167, i32 0, i32 1
  %168 = load ptr, ptr %get_log_level210, align 8, !tbaa !13
  %169 = load ptr, ptr %logger204, align 8, !tbaa !7
  %call211 = call i32 %168(ptr noundef %169, i32 noundef 15363)
  %cmp212 = icmp uge i32 %call211, 2
  br i1 %cmp212, label %if.then214, label %if.end218

if.then214:                                       ; preds = %land.lhs.true208
  %170 = load ptr, ptr %logger204, align 8, !tbaa !7
  %vtable215 = getelementptr inbounds %struct.aws_logger, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %vtable215, align 8, !tbaa !11
  %log216 = getelementptr inbounds %struct.aws_logger_vtable, ptr %171, i32 0, i32 0
  %172 = load ptr, ptr %log216, align 8, !tbaa !15
  %173 = load ptr, ptr %logger204, align 8, !tbaa !7
  %call217 = call i32 (ptr, i32, i32, ptr, ...) %172(ptr noundef %173, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.41)
  br label %if.end218

if.end218:                                        ; preds = %if.then214, %land.lhs.true208, %do.body203
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger204) #7
  br label %do.cond219

do.cond219:                                       ; preds = %if.end218
  br label %do.end220

do.end220:                                        ; preds = %do.cond219
  %call221 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call221, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end222:                                        ; preds = %if.end193
  br label %on_done

on_done:                                          ; preds = %if.end222, %cleanup139, %cleanup95, %do.end220, %do.end191, %if.then43, %do.end33, %if.then13, %do.end
  %174 = load ptr, ptr %object, align 8, !tbaa !7
  call void @aws_json_value_destroy(ptr noundef %174)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  %175 = load i32, ptr %result, align 4, !tbaa !9
  store i32 %175, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup223

cleanup223:                                       ; preds = %on_done, %cleanup139, %cleanup95
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  %176 = load i32, ptr %retval, align 4
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_is_virtual_hostable_s3_bucket(ptr noundef %allocator, ptr noundef %argv, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %argv_allow_subdomains = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %label_cur = alloca %struct.aws_byte_cursor, align 8
  %has_uppercase_chars = alloca i8, align 1
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !7
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !7
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !7
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  store i32 0, ptr %result, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_allow_subdomains) #7
  call void @llvm.memset.p0.i64(ptr align 8 %argv_allow_subdomains, i8 0, i64 48, i1 false)
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ne i64 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call1 = call i32 @aws_endpoints_argv_expect(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 2, ptr noundef %argv_value)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %scope.addr, align 8, !tbaa !7
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !7
  %call3 = call i32 @aws_endpoints_argv_expect(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1, i32 noundef 3, ptr noundef %argv_allow_subdomains)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end13

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #7
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !7
  %7 = load ptr, ptr %logger, align 8, !tbaa !7
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !7
  %call7 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp8 = icmp uge i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !7
  %vtable10 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable10, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !7
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.42)
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call12 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call12, ptr %result, align 4, !tbaa !9
  br label %on_done

if.end13:                                         ; preds = %lor.lhs.false2
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %label_cur, ptr align 8 %cur, i64 16, i1 false), !tbaa.struct !20
  store i8 0, ptr %has_uppercase_chars, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  store i64 0, ptr %i, align 8, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %16 = load i64, ptr %i, align 8, !tbaa !21
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %label_cur, i32 0, i32 0
  %17 = load i64, ptr %len, align 8, !tbaa !23
  %cmp14 = icmp ult i64 %16, %17
  br i1 %cmp14, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %label_cur, i32 0, i32 1
  %18 = load ptr, ptr %ptr, align 8, !tbaa !25
  %19 = load i64, ptr %i, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %19
  %20 = load i8, ptr %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %20 to i32
  %cmp15 = icmp sge i32 %conv, 65
  br i1 %cmp15, label %land.lhs.true17, label %if.end24

land.lhs.true17:                                  ; preds = %for.body
  %ptr18 = getelementptr inbounds %struct.aws_byte_cursor, ptr %label_cur, i32 0, i32 1
  %21 = load ptr, ptr %ptr18, align 8, !tbaa !25
  %22 = load i64, ptr %i, align 8, !tbaa !21
  %arrayidx19 = getelementptr inbounds i8, ptr %21, i64 %22
  %23 = load i8, ptr %arrayidx19, align 1, !tbaa !4
  %conv20 = zext i8 %23 to i32
  %cmp21 = icmp sle i32 %conv20, 90
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true17
  store i8 1, ptr %has_uppercase_chars, align 1, !tbaa !27
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %24 = load i64, ptr %i, align 8, !tbaa !21
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !21
  br label %for.cond

cleanup:                                          ; preds = %if.then23, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  br label %for.end

for.end:                                          ; preds = %cleanup
  %25 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %25, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !16
  %len25 = getelementptr inbounds %struct.aws_byte_cursor, ptr %label_cur, i32 0, i32 0
  %26 = load i64, ptr %len25, align 8, !tbaa !23
  %cmp26 = icmp uge i64 %26, 3
  br i1 %cmp26, label %land.lhs.true28, label %land.end

land.lhs.true28:                                  ; preds = %for.end
  %len29 = getelementptr inbounds %struct.aws_byte_cursor, ptr %label_cur, i32 0, i32 0
  %27 = load i64, ptr %len29, align 8, !tbaa !23
  %cmp30 = icmp ule i64 %27, 63
  br i1 %cmp30, label %land.lhs.true32, label %land.end

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %28 = load i8, ptr %has_uppercase_chars, align 1, !tbaa !27, !range !18, !noundef !19
  %tobool33 = trunc i8 %28 to i1
  br i1 %tobool33, label %land.end, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true32
  %v35 = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_allow_subdomains, i32 0, i32 1
  %29 = load i8, ptr %v35, align 8, !tbaa !4, !range !18, !noundef !19
  %tobool36 = trunc i8 %29 to i1
  %30 = getelementptr inbounds { i64, ptr }, ptr %label_cur, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds { i64, ptr }, ptr %label_cur, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %call37 = call zeroext i1 @aws_is_valid_host_label(i64 %31, ptr %33, i1 noundef zeroext %tobool36)
  br i1 %call37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true34
  %34 = getelementptr inbounds { i64, ptr }, ptr %label_cur, i32 0, i32 0
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds { i64, ptr }, ptr %label_cur, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %call39 = call zeroext i1 @aws_is_ipv4(i64 %35, ptr %37)
  %lnot = xor i1 %call39, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true34, %land.lhs.true32, %land.lhs.true28, %for.end
  %38 = phi i1 [ false, %land.lhs.true34 ], [ false, %land.lhs.true32 ], [ false, %land.lhs.true28 ], [ false, %for.end ], [ %lnot, %land.rhs ]
  %39 = load ptr, ptr %out_value.addr, align 8, !tbaa !7
  %v40 = getelementptr inbounds %struct.aws_endpoints_value, ptr %39, i32 0, i32 1
  %frombool = zext i1 %38 to i8
  store i8 %frombool, ptr %v40, align 8, !tbaa !4
  br label %on_done

on_done:                                          ; preds = %land.end, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_allow_subdomains)
  %40 = load i32, ptr %result, align 4, !tbaa !9
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_allow_subdomains) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_array_list_length(ptr noalias noundef %list) #3 {
entry:
  %list.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !7
  %length = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %length, align 8, !tbaa !42
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !7
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !43
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 342) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !7
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !42
  store i64 %5, ptr %len, align 8, !tbaa !21
  %6 = load i64, ptr %len, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7
  ret i64 %6
}

declare i32 @aws_endpoints_argv_expect(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #4

declare ptr @aws_logger_get() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #3 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !9
  %0 = load i32, ptr %err.addr, align 4, !tbaa !9
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare void @aws_endpoints_value_clean_up(ptr noundef) #4

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #5

declare void @aws_raise_error_private(i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @aws_endpoints_path_through_object(ptr noundef, ptr noundef, i64, ptr, ptr noundef) #4

declare i32 @aws_endpoints_path_through_array(ptr noundef, ptr noundef, ptr noundef, i64, ptr, ptr noundef) #4

declare void @aws_endpoints_owning_cursor_from_cursor(ptr sret(%struct.aws_owning_cursor) align 8, ptr noundef, i64, ptr) #4

declare zeroext i1 @aws_byte_cursor_eq(ptr noundef, ptr noundef) #4

declare i32 @aws_byte_buf_init(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @aws_byte_buf_append_encoding_uri_param(ptr noundef, ptr noundef) #4

declare void @aws_byte_buf_clean_up(ptr noundef) #4

declare void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8, ptr noundef) #4

declare ptr @aws_string_new_from_buf(ptr noundef, ptr noundef) #4

declare i32 @aws_uri_init_parse(ptr noundef, ptr noundef, ptr noundef) #4

declare void @aws_reset_error() #4

declare ptr @aws_uri_query_string(ptr noundef) #4

declare ptr @aws_uri_scheme(ptr noundef) #4

declare ptr @aws_json_value_new_object(ptr noundef) #4

declare i32 @aws_json_value_add_to_object(ptr noundef, i64, ptr, ptr noundef) #4

declare { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef) #4

declare ptr @aws_json_value_new_string(ptr noundef, i64, ptr) #4

declare ptr @aws_uri_authority(ptr noundef) #4

declare ptr @aws_uri_path(ptr noundef) #4

declare i32 @aws_byte_buf_init_from_normalized_uri_path(ptr noundef, i64, ptr, ptr noundef) #4

declare { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef) #4

declare ptr @aws_uri_host_name(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s_is_uri_ip(i64 %host.coerce0, ptr %host.coerce1, i1 noundef zeroext %is_uri_encoded) #0 {
entry:
  %host = alloca %struct.aws_byte_cursor, align 8
  %is_uri_encoded.addr = alloca i8, align 1
  %0 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 0
  store i64 %host.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 1
  store ptr %host.coerce1, ptr %1, align 8
  %frombool = zext i1 %is_uri_encoded to i8
  store i8 %frombool, ptr %is_uri_encoded.addr, align 1, !tbaa !27
  %2 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 0
  %3 = load i64, ptr %2, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %call = call zeroext i1 @aws_is_ipv4(i64 %3, ptr %5)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %6 = load i8, ptr %is_uri_encoded.addr, align 1, !tbaa !27, !range !18, !noundef !19
  %tobool = trunc i8 %6 to i1
  %7 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %host, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %call1 = call zeroext i1 @aws_is_ipv6(i64 %8, ptr %10, i1 noundef zeroext %tobool)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %11 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %11
}

declare ptr @aws_json_value_new_boolean(ptr noundef, i1 noundef zeroext) #4

declare i32 @aws_byte_buf_append_json_string(ptr noundef, ptr noundef) #4

declare void @aws_uri_clean_up(ptr noundef) #4

declare void @aws_json_value_destroy(ptr noundef) #4

declare zeroext i1 @aws_is_ipv4(i64, ptr) #4

declare zeroext i1 @aws_is_ipv6(i64, ptr, i1 noundef zeroext) #4

declare zeroext i1 @aws_is_valid_host_label(i64, ptr, i1 noundef zeroext) #4

declare i32 @aws_hash_table_find(ptr noundef, ptr noundef, ptr noundef) #4

declare void @aws_endpoints_owning_cursor_create(ptr sret(%struct.aws_owning_cursor) align 8, ptr noundef, ptr noundef) #4

declare { i64, ptr } @aws_map_region_to_partition(i64, ptr) #4

declare i32 @aws_resource_name_init_from_cur(ptr noundef, ptr noundef) #4

declare ptr @aws_json_value_new_array(ptr noundef) #4

declare i32 @aws_json_value_add_array_element(ptr noundef, ptr noundef) #4

declare ptr @aws_string_new_from_json(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !8, i64 0}
!12 = !{!"aws_logger", !8, i64 0, !8, i64 8, !8, i64 16}
!13 = !{!14, !8, i64 8}
!14 = !{!"aws_logger_vtable", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!15 = !{!14, !8, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"aws_endpoints_value", !5, i64 0, !5, i64 8}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{i64 0, i64 8, !21, i64 8, i64 8, !7}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!24, !22, i64 0}
!24 = !{!"aws_byte_cursor", !22, i64 0, !8, i64 8}
!25 = !{!24, !8, i64 8}
!26 = !{i64 0, i64 8, !21, i64 8, i64 8, !7, i64 16, i64 8, !7}
!27 = !{!28, !28, i64 0}
!28 = !{!"_Bool", !5, i64 0}
!29 = !{!30, !8, i64 64}
!30 = !{!"aws_endpoints_resolution_scope", !31, i64 0, !32, i64 8, !22, i64 48, !8, i64 56, !8, i64 64}
!31 = !{!"aws_hash_table", !8, i64 0}
!32 = !{!"aws_array_list", !8, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !8, i64 32}
!33 = !{!34, !8, i64 8}
!34 = !{!"aws_hash_element", !8, i64 0, !8, i64 8}
!35 = !{!36, !8, i64 32}
!36 = !{!"aws_partition_info", !8, i64 0, !24, i64 8, !28, i64 24, !8, i64 32}
!37 = !{!38, !22, i64 0}
!38 = !{!"aws_resource_name", !24, i64 0, !24, i64 16, !24, i64 32, !24, i64 48, !24, i64 64}
!39 = !{!38, !22, i64 64}
!40 = !{!38, !22, i64 16}
!41 = !{!38, !8, i64 72}
!42 = !{!32, !22, i64 16}
!43 = !{!32, !8, i64 32}

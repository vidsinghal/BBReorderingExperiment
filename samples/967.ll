; ModuleID = 'samples/967.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-sdkutils/source/endpoints_rule_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_endpoints_value = type { i32, %union.anon }
%union.anon = type { %struct.aws_array_list }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_endpoints_expr = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.aws_endpoints_function }
%struct.aws_endpoints_function = type { i32, %struct.aws_array_list }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.resolve_template_callback_data = type { ptr, ptr }
%struct.aws_owning_cursor = type { %struct.aws_byte_cursor, ptr }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_endpoints_resolution_scope = type { %struct.aws_hash_table, %struct.aws_array_list, i64, ptr, ptr }
%struct.aws_hash_table = type { ptr }
%struct.aws_hash_element = type { ptr, ptr }
%struct.aws_endpoints_scope_value = type { ptr, %struct.aws_owning_cursor, %struct.aws_endpoints_value }
%struct.aws_endpoints_request_context = type { ptr, %struct.aws_ref_count, %struct.aws_hash_table }
%struct.aws_ref_count = type { %struct.aws_atomic_var, ptr, ptr }
%struct.aws_atomic_var = type { ptr }
%struct.aws_endpoints_resolved_endpoint = type { ptr, %struct.aws_ref_count, i32, %union.anon.1 }
%union.anon.1 = type { %struct.resolved_endpoint }
%struct.resolved_endpoint = type { %struct.aws_byte_buf, %struct.aws_byte_buf, %struct.aws_hash_table }
%struct.aws_endpoints_rule_engine = type { ptr, %struct.aws_ref_count, ptr, ptr }
%struct.aws_endpoints_ruleset = type { ptr, %struct.aws_ref_count, ptr, %struct.aws_array_list, %struct.aws_byte_cursor, %struct.aws_byte_cursor, %struct.aws_hash_table }
%struct.aws_endpoints_rule = type { %struct.aws_array_list, %struct.aws_byte_cursor, i32, %union.anon.2 }
%union.anon.2 = type { %struct.aws_endpoints_rule_data_endpoint }
%struct.aws_endpoints_rule_data_endpoint = type { ptr, %struct.aws_endpoints_expr, %struct.aws_byte_buf, %struct.aws_hash_table }
%struct.aws_endpoints_rule_data_error = type { %struct.aws_endpoints_expr }
%struct.aws_endpoints_rule_data_tree = type { %struct.aws_array_list }
%struct.aws_hash_iter = type { ptr, %struct.aws_hash_element, i64, i64, i32, i32, ptr, ptr }
%struct.aws_endpoints_parameter = type { ptr, %struct.aws_byte_cursor, i32, %struct.aws_byte_cursor, i8, %union.anon.3, i8, %struct.aws_byte_cursor, i8, %struct.aws_byte_cursor, %struct.aws_byte_cursor }
%union.anon.3 = type { %struct.aws_byte_cursor }
%struct.aws_endpoints_condition = type { %struct.aws_endpoints_expr, %struct.aws_byte_cursor }

@.str = private unnamed_addr constant [21 x i8] c"Failed to parse argv\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to resolve argv.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unexpected arg type actual: %u expected %u.\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Could not parse index from template string.\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to index into resolved value\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to resolve val.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to path through json.\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Could not parse string from node.\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to extract properties.\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Could not parse boolean from node.\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Could not parse number from node.\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Failed to init request context values.\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Failed to retrieve value.\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Failed to get rule.\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to resolve conditions.\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Failed to resolve templated url.\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Failed to resolve templated properties.\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Failed to resolve templated headers.\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Unexpected rule type.\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"All rules have been exhausted.\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Resolved endpoint with status %d\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Failed to resolve templated string.\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Failed to deref.\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.24 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Failed to init added keys.\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"No value or default for required parameter.\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Unexpected parameter type.\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Failed to add value to top level scope.\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Failed to deep copy value.\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Failed to add deep copy to scope.\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"list != ((void*)0)\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"alloc != ((void*)0)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"item_size > 0\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"list->current_size == 0 || list->data\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Failed to retrieve condition.\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Failed to resolve condition.\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Failed to resolve expr.\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"Failed to update key at given scope.\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Failed to set assigned variable.\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"Assigned variable shadows existing one.\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Failed to resolve template value.\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Invalid value in template string.\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Templated value does not exist: %.*s\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"Unexpected type: must be string if pathing is not provided\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Failed to path through object.\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Failed to path through array.\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"Invalid value type for pathing through.\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"Templated string didn't resolve to string\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Failed to init table for resolved headers\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Failed to get header.\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"Failed to resolve header expr.\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"Failed to add resolved header to result.\00", align 1

; Function Attrs: nounwind uwtable
define void @s_scope_value_destroy_cb(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %value, align 8, !tbaa !4
  %1 = load ptr, ptr %value, align 8, !tbaa !4
  call void @aws_endpoints_scope_value_destroy(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @aws_endpoints_scope_value_destroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_argv_expect(ptr noundef %allocator, ptr noundef %scope, ptr noundef %argv, i64 noundef %idx, i32 noundef %expected_type, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %expected_type.addr = alloca i32, align 4
  %out_value.addr = alloca ptr, align 8
  %argv_value = alloca %struct.aws_endpoints_value, align 8
  %argv_expr = alloca %struct.aws_endpoints_expr, align 8
  %logger = alloca ptr, align 8
  %logger14 = alloca ptr, align 8
  %logger35 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !4
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !8
  store i32 %expected_type, ptr %expected_type.addr, align 4, !tbaa !10
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 48, ptr %argv_value) #8
  call void @llvm.memset.p0.i64(ptr align 8 %argv_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr %argv_expr) #8
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !4
  %2 = load i64, ptr %idx.addr, align 8, !tbaa !8
  %call = call i32 @aws_array_list_get_at(ptr noundef %1, ptr noundef %argv_expr, i64 noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body1
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call3 = call i32 %6(ptr noundef %7, i32 noundef 15363)
  %cmp4 = icmp uge i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable6 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable6, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !15
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call7 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 15363, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %do.body1
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end8

do.end8:                                          ; preds = %do.cond
  br label %on_error

if.end9:                                          ; preds = %do.end
  %12 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %call10 = call i32 @s_resolve_expr(ptr noundef %12, ptr noundef %argv_expr, ptr noundef %13, ptr noundef %argv_value)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end29

if.then12:                                        ; preds = %if.end9
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger14) #8
  %call15 = call ptr @aws_logger_get()
  store ptr %call15, ptr %logger14, align 8, !tbaa !4
  %14 = load ptr, ptr %logger14, align 8, !tbaa !4
  %cmp16 = icmp ne ptr %14, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end26

land.lhs.true17:                                  ; preds = %do.body13
  %15 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable18, align 8, !tbaa !11
  %get_log_level19 = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %get_log_level19, align 8, !tbaa !13
  %18 = load ptr, ptr %logger14, align 8, !tbaa !4
  %call20 = call i32 %17(ptr noundef %18, i32 noundef 15363)
  %cmp21 = icmp uge i32 %call20, 2
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %land.lhs.true17
  %19 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable23, align 8, !tbaa !11
  %log24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %log24, align 8, !tbaa !15
  %22 = load ptr, ptr %logger14, align 8, !tbaa !4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) %21(ptr noundef %22, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.1)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true17, %do.body13
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger14) #8
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %on_error

if.end29:                                         ; preds = %if.end9
  %23 = load i32, ptr %expected_type.addr, align 4, !tbaa !10
  %cmp30 = icmp ne i32 %23, 0
  br i1 %cmp30, label %land.lhs.true31, label %if.end51

land.lhs.true31:                                  ; preds = %if.end29
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 0
  %24 = load i32, ptr %type, align 8, !tbaa !16
  %25 = load i32, ptr %expected_type.addr, align 4, !tbaa !10
  %cmp32 = icmp ne i32 %24, %25
  br i1 %cmp32, label %if.then33, label %if.end51

if.then33:                                        ; preds = %land.lhs.true31
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger35) #8
  %call36 = call ptr @aws_logger_get()
  store ptr %call36, ptr %logger35, align 8, !tbaa !4
  %26 = load ptr, ptr %logger35, align 8, !tbaa !4
  %cmp37 = icmp ne ptr %26, null
  br i1 %cmp37, label %land.lhs.true38, label %if.end48

land.lhs.true38:                                  ; preds = %do.body34
  %27 = load ptr, ptr %logger35, align 8, !tbaa !4
  %vtable39 = getelementptr inbounds %struct.aws_logger, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %vtable39, align 8, !tbaa !11
  %get_log_level40 = getelementptr inbounds %struct.aws_logger_vtable, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %get_log_level40, align 8, !tbaa !13
  %30 = load ptr, ptr %logger35, align 8, !tbaa !4
  %call41 = call i32 %29(ptr noundef %30, i32 noundef 15363)
  %cmp42 = icmp uge i32 %call41, 2
  br i1 %cmp42, label %if.then43, label %if.end48

if.then43:                                        ; preds = %land.lhs.true38
  %31 = load ptr, ptr %logger35, align 8, !tbaa !4
  %vtable44 = getelementptr inbounds %struct.aws_logger, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %vtable44, align 8, !tbaa !11
  %log45 = getelementptr inbounds %struct.aws_logger_vtable, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %log45, align 8, !tbaa !15
  %34 = load ptr, ptr %logger35, align 8, !tbaa !4
  %type46 = getelementptr inbounds %struct.aws_endpoints_value, ptr %argv_value, i32 0, i32 0
  %35 = load i32, ptr %type46, align 8, !tbaa !16
  %36 = load i32, ptr %expected_type.addr, align 4, !tbaa !10
  %call47 = call i32 (ptr, i32, i32, ptr, ...) %33(ptr noundef %34, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.2, i32 noundef %35, i32 noundef %36)
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %land.lhs.true38, %do.body34
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger35) #8
  br label %do.cond49

do.cond49:                                        ; preds = %if.end48
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  br label %on_error

if.end51:                                         ; preds = %land.lhs.true31, %if.end29
  %37 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %argv_value, i64 48, i1 false), !tbaa.struct !18
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %do.end50, %do.end28, %do.end8
  call void @aws_endpoints_value_clean_up(ptr noundef %argv_value)
  %call52 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end51
  call void @llvm.lifetime.end.p0(i64 56, ptr %argv_expr) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %argv_value) #8
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_get_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %data, align 8, !tbaa !23
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %item_size, align 8, !tbaa !25
  %7 = load i64, ptr %index.addr, align 8, !tbaa !8
  %mul = mul i64 %6, %7
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size1 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size1, align 8, !tbaa !25
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

declare ptr @aws_logger_get() #2

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_expr(ptr noundef %allocator, ptr noundef %expr, ptr noundef %scope, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %expr.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %buf = alloca %struct.aws_byte_buf, align 8
  %data = alloca %struct.resolve_template_callback_data, align 8
  %logger = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %element = alloca ptr, align 8
  %logger34 = alloca ptr, align 8
  %aws_endpoints_scope_value = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %expr, ptr %expr.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_expr, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %type, align 8, !tbaa !26
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb15
    i32 1, label %sw.bb20
    i32 3, label %sw.bb24
    i32 4, label %sw.bb28
    i32 5, label %sw.bb71
  ]

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %allocator1 = getelementptr inbounds %struct.resolve_template_callback_data, ptr %data, i32 0, i32 0
  %3 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %3, ptr %allocator1, align 8, !tbaa !28
  %scope2 = getelementptr inbounds %struct.resolve_template_callback_data, ptr %data, i32 0, i32 1
  %4 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  store ptr %4, ptr %scope2, align 8, !tbaa !30
  %5 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.aws_endpoints_expr, ptr %6, i32 0, i32 1
  %7 = getelementptr inbounds { i64, ptr }, ptr %e, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %e, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %call = call i32 @aws_byte_buf_init_from_resolved_templated_string(ptr noundef %5, ptr noundef %buf, i64 %8, ptr %10, ptr noundef @s_resolve_template, ptr noundef %data, i1 noundef zeroext false)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %sw.bb
  br label %do.body3

do.body3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call4 = call ptr @aws_logger_get()
  store ptr %call4, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %11, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body3
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %14(ptr noundef %15, i32 noundef 15363)
  %cmp6 = icmp uge i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %vtable8, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %log, align 8, !tbaa !15
  %19 = load ptr, ptr %logger, align 8, !tbaa !4
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %18(ptr noundef %19, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.21)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %do.body3
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end10

do.end10:                                         ; preds = %do.cond
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  %20 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type12 = getelementptr inbounds %struct.aws_endpoints_value, ptr %20, i32 0, i32 0
  store i32 2, ptr %type12, align 8, !tbaa !16
  %21 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %21, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #8
  %22 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call13 = call ptr @aws_string_new_from_buf(ptr noundef %22, ptr noundef %buf)
  call void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %call13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #8
  call void @aws_byte_buf_clean_up(ptr noundef %buf)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end11
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 4, label %sw.epilog
    i32 7, label %on_error
  ]

sw.bb15:                                          ; preds = %do.end
  %23 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type16 = getelementptr inbounds %struct.aws_endpoints_value, ptr %23, i32 0, i32 0
  store i32 3, ptr %type16, align 8, !tbaa !16
  %24 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %e17 = getelementptr inbounds %struct.aws_endpoints_expr, ptr %24, i32 0, i32 1
  %25 = load i8, ptr %e17, align 8, !tbaa !10, !range !32, !noundef !33
  %tobool18 = trunc i8 %25 to i1
  %26 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v19 = getelementptr inbounds %struct.aws_endpoints_value, ptr %26, i32 0, i32 1
  %frombool = zext i1 %tobool18 to i8
  store i8 %frombool, ptr %v19, align 8, !tbaa !10
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end
  %27 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type21 = getelementptr inbounds %struct.aws_endpoints_value, ptr %27, i32 0, i32 0
  store i32 5, ptr %type21, align 8, !tbaa !16
  %28 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %e22 = getelementptr inbounds %struct.aws_endpoints_expr, ptr %28, i32 0, i32 1
  %29 = load double, ptr %e22, align 8, !tbaa !10
  %30 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v23 = getelementptr inbounds %struct.aws_endpoints_value, ptr %30, i32 0, i32 1
  store double %29, ptr %v23, align 8, !tbaa !10
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end
  %31 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type25 = getelementptr inbounds %struct.aws_endpoints_value, ptr %31, i32 0, i32 0
  store i32 6, ptr %type25, align 8, !tbaa !16
  %32 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v26 = getelementptr inbounds %struct.aws_endpoints_value, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %e27 = getelementptr inbounds %struct.aws_endpoints_expr, ptr %33, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v26, ptr align 8 %e27, i64 40, i1 false), !tbaa.struct !34
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #8
  %34 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %e29 = getelementptr inbounds %struct.aws_endpoints_expr, ptr %35, i32 0, i32 1
  %call30 = call i32 @aws_hash_table_find(ptr noundef %values, ptr noundef %e29, ptr noundef %element)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end49

if.then32:                                        ; preds = %sw.bb28
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger34) #8
  %call35 = call ptr @aws_logger_get()
  store ptr %call35, ptr %logger34, align 8, !tbaa !4
  %36 = load ptr, ptr %logger34, align 8, !tbaa !4
  %cmp36 = icmp ne ptr %36, null
  br i1 %cmp36, label %land.lhs.true37, label %if.end46

land.lhs.true37:                                  ; preds = %do.body33
  %37 = load ptr, ptr %logger34, align 8, !tbaa !4
  %vtable38 = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable38, align 8, !tbaa !11
  %get_log_level39 = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %get_log_level39, align 8, !tbaa !13
  %40 = load ptr, ptr %logger34, align 8, !tbaa !4
  %call40 = call i32 %39(ptr noundef %40, i32 noundef 15363)
  %cmp41 = icmp uge i32 %call40, 2
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %land.lhs.true37
  %41 = load ptr, ptr %logger34, align 8, !tbaa !4
  %vtable43 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable43, align 8, !tbaa !11
  %log44 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %log44, align 8, !tbaa !15
  %44 = load ptr, ptr %logger34, align 8, !tbaa !4
  %call45 = call i32 (ptr, i32, i32, ptr, ...) %43(ptr noundef %44, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.22)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %land.lhs.true37, %do.body33
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger34) #8
  br label %do.cond47

do.cond47:                                        ; preds = %if.end46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

if.end49:                                         ; preds = %sw.bb28
  %45 = load ptr, ptr %element, align 8, !tbaa !4
  %cmp50 = icmp eq ptr %45, null
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end49
  %46 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type52 = getelementptr inbounds %struct.aws_endpoints_value, ptr %46, i32 0, i32 0
  store i32 1, ptr %type52, align 8, !tbaa !16
  br label %if.end68

if.else:                                          ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %aws_endpoints_scope_value) #8
  %47 = load ptr, ptr %element, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %value, align 8, !tbaa !35
  store ptr %48, ptr %aws_endpoints_scope_value, align 8, !tbaa !4
  %49 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %aws_endpoints_scope_value, align 8, !tbaa !4
  %value53 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %50, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %value53, i64 48, i1 false), !tbaa.struct !18
  %51 = load ptr, ptr %aws_endpoints_scope_value, align 8, !tbaa !4
  %value54 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %51, i32 0, i32 2
  %type55 = getelementptr inbounds %struct.aws_endpoints_value, ptr %value54, i32 0, i32 0
  %52 = load i32, ptr %type55, align 8, !tbaa !37
  %cmp56 = icmp eq i32 %52, 2
  br i1 %cmp56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.else
  %53 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v58 = getelementptr inbounds %struct.aws_endpoints_value, ptr %53, i32 0, i32 1
  %string = getelementptr inbounds %struct.aws_owning_cursor, ptr %v58, i32 0, i32 1
  store ptr null, ptr %string, align 8, !tbaa !10
  br label %if.end67

if.else59:                                        ; preds = %if.else
  %54 = load ptr, ptr %aws_endpoints_scope_value, align 8, !tbaa !4
  %value60 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %54, i32 0, i32 2
  %type61 = getelementptr inbounds %struct.aws_endpoints_value, ptr %value60, i32 0, i32 0
  %55 = load i32, ptr %type61, align 8, !tbaa !37
  %cmp62 = icmp eq i32 %55, 4
  br i1 %cmp62, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.else59
  %56 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v64 = getelementptr inbounds %struct.aws_endpoints_value, ptr %56, i32 0, i32 1
  %string65 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v64, i32 0, i32 1
  store ptr null, ptr %string65, align 8, !tbaa !10
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.else59
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then57
  call void @llvm.lifetime.end.p0(i64 8, ptr %aws_endpoints_scope_value) #8
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then51
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %do.end48, %if.end68
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #8
  %cleanup.dest70 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest70, label %unreachable [
    i32 4, label %sw.epilog
    i32 7, label %on_error
  ]

sw.bb71:                                          ; preds = %do.end
  %57 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %e72 = getelementptr inbounds %struct.aws_endpoints_expr, ptr %57, i32 0, i32 1
  %fn = getelementptr inbounds %struct.aws_endpoints_function, ptr %e72, i32 0, i32 0
  %58 = load i32, ptr %fn, align 8, !tbaa !10
  %59 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %expr.addr, align 8, !tbaa !4
  %e73 = getelementptr inbounds %struct.aws_endpoints_expr, ptr %60, i32 0, i32 1
  %argv = getelementptr inbounds %struct.aws_endpoints_function, ptr %e73, i32 0, i32 1
  %61 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %call74 = call i32 @aws_endpoints_dispatch_standard_lib_fn_resolve(i32 noundef %58, ptr noundef %59, ptr noundef %argv, ptr noundef %61, ptr noundef %62)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %sw.bb71
  br label %on_error

if.end77:                                         ; preds = %sw.bb71
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end77, %cleanup69, %sw.bb24, %sw.bb20, %sw.bb15, %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

on_error:                                         ; preds = %if.then76, %cleanup69, %cleanup
  %call78 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call78, ptr %retval, align 4
  br label %return

return:                                           ; preds = %on_error, %sw.epilog
  %63 = load i32, ptr %retval, align 4
  ret i32 %63

unreachable:                                      ; preds = %cleanup69, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @aws_endpoints_value_clean_up(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #4 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !41
  %0 = load i32, ptr %err.addr, align 4, !tbaa !41
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_path_through_array(ptr noundef %allocator, ptr noundef %scope, ptr noundef %value, i64 %path_cur.coerce0, ptr %path_cur.coerce1, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %path_cur = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %index = alloca i64, align 8
  %split = alloca %struct.aws_byte_cursor, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %expr = alloca ptr, align 8
  %logger22 = alloca ptr, align 8
  %val = alloca %struct.aws_endpoints_value, align 8
  %logger42 = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 0
  store i64 %path_cur.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 1
  store ptr %path_cur.coerce1, ptr %1, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %split) #8
  call void @llvm.memset.p0.i64(ptr align 8 %split, i8 0, i64 16, i1 false)
  %call = call zeroext i1 @aws_byte_cursor_next_split(ptr noundef %path_cur, i8 noundef signext 91, ptr noundef %split)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %split, i32 0, i32 0
  %2 = load i64, ptr %len, align 8, !tbaa !43
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %call2 = call zeroext i1 @aws_byte_cursor_next_split(ptr noundef %path_cur, i8 noundef signext 93, ptr noundef %split)
  br i1 %call2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = getelementptr inbounds { i64, ptr }, ptr %split, i32 0, i32 0
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds { i64, ptr }, ptr %split, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %call4 = call i32 @aws_byte_cursor_utf8_parse_u64(i64 %4, ptr %6, ptr noundef %index)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call7 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp8 = icmp uge i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable10 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable10, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end12:                                         ; preds = %lor.lhs.false3
  %16 = load i64, ptr %index, align 8, !tbaa !8
  %17 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %17, i32 0, i32 1
  %call13 = call i64 @aws_array_list_length(ptr noundef %v)
  %cmp14 = icmp ult i64 %16, %call13
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %18 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %18, i32 0, i32 0
  store i32 1, ptr %type, align 8, !tbaa !16
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  store ptr null, ptr %expr, align 8, !tbaa !4
  %19 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %v17 = getelementptr inbounds %struct.aws_endpoints_value, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %index, align 8, !tbaa !8
  %call18 = call i32 @aws_array_list_get_at_ptr(ptr noundef %v17, ptr noundef %expr, i64 noundef %20)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end37

if.then20:                                        ; preds = %if.end16
  br label %do.body21

do.body21:                                        ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger22) #8
  %call23 = call ptr @aws_logger_get()
  store ptr %call23, ptr %logger22, align 8, !tbaa !4
  %21 = load ptr, ptr %logger22, align 8, !tbaa !4
  %cmp24 = icmp ne ptr %21, null
  br i1 %cmp24, label %land.lhs.true25, label %if.end34

land.lhs.true25:                                  ; preds = %do.body21
  %22 = load ptr, ptr %logger22, align 8, !tbaa !4
  %vtable26 = getelementptr inbounds %struct.aws_logger, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %vtable26, align 8, !tbaa !11
  %get_log_level27 = getelementptr inbounds %struct.aws_logger_vtable, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %get_log_level27, align 8, !tbaa !13
  %25 = load ptr, ptr %logger22, align 8, !tbaa !4
  %call28 = call i32 %24(ptr noundef %25, i32 noundef 15363)
  %cmp29 = icmp uge i32 %call28, 2
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %land.lhs.true25
  %26 = load ptr, ptr %logger22, align 8, !tbaa !4
  %vtable31 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable31, align 8, !tbaa !11
  %log32 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %log32, align 8, !tbaa !15
  %29 = load ptr, ptr %logger22, align 8, !tbaa !4
  %call33 = call i32 (ptr, i32, i32, ptr, ...) %28(ptr noundef %29, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.4)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true25, %do.body21
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger22) #8
  br label %do.cond35

do.cond35:                                        ; preds = %if.end34
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  br label %on_error

if.end37:                                         ; preds = %if.end16
  %30 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %expr, align 8, !tbaa !4
  %32 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %call38 = call i32 @s_resolve_expr(ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %val)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end57

if.then40:                                        ; preds = %if.end37
  br label %do.body41

do.body41:                                        ; preds = %if.then40
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger42) #8
  %call43 = call ptr @aws_logger_get()
  store ptr %call43, ptr %logger42, align 8, !tbaa !4
  %33 = load ptr, ptr %logger42, align 8, !tbaa !4
  %cmp44 = icmp ne ptr %33, null
  br i1 %cmp44, label %land.lhs.true45, label %if.end54

land.lhs.true45:                                  ; preds = %do.body41
  %34 = load ptr, ptr %logger42, align 8, !tbaa !4
  %vtable46 = getelementptr inbounds %struct.aws_logger, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %vtable46, align 8, !tbaa !11
  %get_log_level47 = getelementptr inbounds %struct.aws_logger_vtable, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %get_log_level47, align 8, !tbaa !13
  %37 = load ptr, ptr %logger42, align 8, !tbaa !4
  %call48 = call i32 %36(ptr noundef %37, i32 noundef 15363)
  %cmp49 = icmp uge i32 %call48, 2
  br i1 %cmp49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %land.lhs.true45
  %38 = load ptr, ptr %logger42, align 8, !tbaa !4
  %vtable51 = getelementptr inbounds %struct.aws_logger, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %vtable51, align 8, !tbaa !11
  %log52 = getelementptr inbounds %struct.aws_logger_vtable, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %log52, align 8, !tbaa !15
  %41 = load ptr, ptr %logger42, align 8, !tbaa !4
  %call53 = call i32 (ptr, i32, i32, ptr, ...) %40(ptr noundef %41, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.5)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %land.lhs.true45, %do.body41
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger42) #8
  br label %do.cond55

do.cond55:                                        ; preds = %if.end54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  call void @aws_endpoints_value_clean_up(ptr noundef %val)
  br label %on_error

if.end57:                                         ; preds = %if.end37
  %42 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %42, ptr align 8 %val, i64 48, i1 false), !tbaa.struct !18
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %do.end56, %do.end36, %do.end
  %call58 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call58, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end57, %if.then15
  call void @llvm.lifetime.end.p0(i64 16, ptr %split) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #8
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

declare zeroext i1 @aws_byte_cursor_next_split(ptr noundef, i8 noundef signext, ptr noundef) #2

declare i32 @aws_byte_cursor_utf8_parse_u64(i64, ptr, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_array_list_length(ptr noalias noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %length, align 8, !tbaa !44
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !23
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.23, ptr noundef @.str.24, i32 noundef 342) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !44
  store i64 %5, ptr %len, align 8, !tbaa !8
  %6 = load i64, ptr %len, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8
  ret i64 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_get_at_ptr(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !23
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %item_size, align 8, !tbaa !25
  %6 = load i64, ptr %index.addr, align 8, !tbaa !8
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

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_path_through_object(ptr noundef %allocator, ptr noundef %value, i64 %path_cur.coerce0, ptr %path_cur.coerce1, ptr noundef %out_value) #0 {
entry:
  %retval = alloca i32, align 4
  %path_cur = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %root_node = alloca ptr, align 8
  %value_cur = alloca %struct.aws_byte_cursor, align 8
  %result = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %final = alloca %struct.aws_byte_cursor, align 8
  %logger23 = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %json_blob = alloca %struct.aws_byte_buf, align 8
  %logger50 = alloca ptr, align 8
  %tmp68 = alloca %struct.aws_owning_cursor, align 8
  %logger81 = alloca ptr, align 8
  %logger106 = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 0
  store i64 %path_cur.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 1
  store ptr %path_cur.coerce1, ptr %1, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 48, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_node) #8
  store ptr null, ptr %root_node, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %value_cur) #8
  %3 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type, align 8, !tbaa !16
  %cmp = icmp ne i32 %4, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %5 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %5, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value_cur, ptr align 8 %cur, i64 16, i1 false), !tbaa.struct !45
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %6 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %v1 = getelementptr inbounds %struct.aws_endpoints_value, ptr %6, i32 0, i32 1
  %cur2 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value_cur, ptr align 8 %cur2, i64 16, i1 false), !tbaa.struct !45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %7 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %8 = getelementptr inbounds { i64, ptr }, ptr %value_cur, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds { i64, ptr }, ptr %value_cur, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %call = call ptr @aws_json_value_new_from_string(ptr noundef %7, i64 %9, ptr %11)
  store ptr %call, ptr %root_node, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #8
  %12 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %root_node, align 8, !tbaa !4
  %14 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds { i64, ptr }, ptr %path_cur, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %call3 = call i32 @aws_path_through_json(ptr noundef %12, ptr noundef %13, i64 %15, ptr %17, ptr noundef %result)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %cond.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !4
  %18 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp6 = icmp ne ptr %18, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body4
  %19 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %22 = load ptr, ptr %logger, align 8, !tbaa !4
  %call7 = call i32 %21(ptr noundef %22, i32 noundef 15363)
  %cmp8 = icmp uge i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %23 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable10 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable10, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %log, align 8, !tbaa !15
  %26 = load ptr, ptr %logger, align 8, !tbaa !4
  %call11 = call i32 (ptr, i32, i32, ptr, ...) %25(ptr noundef %26, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %do.body4
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end12

do.end12:                                         ; preds = %do.cond
  br label %on_error

if.end13:                                         ; preds = %cond.end
  %27 = load ptr, ptr %result, align 8, !tbaa !4
  %cmp14 = icmp eq ptr %27, null
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %28 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type16 = getelementptr inbounds %struct.aws_endpoints_value, ptr %28, i32 0, i32 0
  store i32 1, ptr %type16, align 8, !tbaa !16
  br label %if.end127

if.else:                                          ; preds = %if.end13
  %29 = load ptr, ptr %result, align 8, !tbaa !4
  %call17 = call zeroext i1 @aws_json_value_is_string(ptr noundef %29)
  br i1 %call17, label %if.then18, label %if.else41

if.then18:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr %final) #8
  %30 = load ptr, ptr %result, align 8, !tbaa !4
  %call19 = call i32 @aws_json_value_get_string(ptr noundef %30, ptr noundef %final)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end38

if.then21:                                        ; preds = %if.then18
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger23) #8
  %call24 = call ptr @aws_logger_get()
  store ptr %call24, ptr %logger23, align 8, !tbaa !4
  %31 = load ptr, ptr %logger23, align 8, !tbaa !4
  %cmp25 = icmp ne ptr %31, null
  br i1 %cmp25, label %land.lhs.true26, label %if.end35

land.lhs.true26:                                  ; preds = %do.body22
  %32 = load ptr, ptr %logger23, align 8, !tbaa !4
  %vtable27 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable27, align 8, !tbaa !11
  %get_log_level28 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %get_log_level28, align 8, !tbaa !13
  %35 = load ptr, ptr %logger23, align 8, !tbaa !4
  %call29 = call i32 %34(ptr noundef %35, i32 noundef 15363)
  %cmp30 = icmp uge i32 %call29, 2
  br i1 %cmp30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %land.lhs.true26
  %36 = load ptr, ptr %logger23, align 8, !tbaa !4
  %vtable32 = getelementptr inbounds %struct.aws_logger, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %vtable32, align 8, !tbaa !11
  %log33 = getelementptr inbounds %struct.aws_logger_vtable, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %log33, align 8, !tbaa !15
  %39 = load ptr, ptr %logger23, align 8, !tbaa !4
  %call34 = call i32 (ptr, i32, i32, ptr, ...) %38(ptr noundef %39, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.7)
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %land.lhs.true26, %do.body22
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger23) #8
  br label %do.cond36

do.cond36:                                        ; preds = %if.end35
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.then18
  %40 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type39 = getelementptr inbounds %struct.aws_endpoints_value, ptr %40, i32 0, i32 0
  store i32 2, ptr %type39, align 8, !tbaa !16
  %41 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v40 = getelementptr inbounds %struct.aws_endpoints_value, ptr %41, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #8
  %42 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %43 = getelementptr inbounds { i64, ptr }, ptr %final, i32 0, i32 0
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, ptr }, ptr %final, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  call void @aws_endpoints_owning_cursor_from_cursor(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %42, i64 %44, ptr %46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v40, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end38
  call void @llvm.lifetime.end.p0(i64 16, ptr %final) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup129 [
    i32 0, label %cleanup.cont
    i32 6, label %on_error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end126

if.else41:                                        ; preds = %if.else
  %47 = load ptr, ptr %result, align 8, !tbaa !4
  %call42 = call zeroext i1 @aws_json_value_is_array(ptr noundef %47)
  br i1 %call42, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else41
  %48 = load ptr, ptr %result, align 8, !tbaa !4
  %call43 = call zeroext i1 @aws_json_value_is_object(ptr noundef %48)
  br i1 %call43, label %if.then44, label %if.else73

if.then44:                                        ; preds = %lor.lhs.false, %if.else41
  call void @llvm.lifetime.start.p0(i64 32, ptr %json_blob) #8
  %49 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call45 = call i32 @aws_byte_buf_init(ptr noundef %json_blob, ptr noundef %49, i64 noundef 0)
  %50 = load ptr, ptr %result, align 8, !tbaa !4
  %call46 = call i32 @aws_byte_buf_append_json_string(ptr noundef %50, ptr noundef %json_blob)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.end65

if.then48:                                        ; preds = %if.then44
  call void @aws_byte_buf_clean_up(ptr noundef %json_blob)
  br label %do.body49

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger50) #8
  %call51 = call ptr @aws_logger_get()
  store ptr %call51, ptr %logger50, align 8, !tbaa !4
  %51 = load ptr, ptr %logger50, align 8, !tbaa !4
  %cmp52 = icmp ne ptr %51, null
  br i1 %cmp52, label %land.lhs.true53, label %if.end62

land.lhs.true53:                                  ; preds = %do.body49
  %52 = load ptr, ptr %logger50, align 8, !tbaa !4
  %vtable54 = getelementptr inbounds %struct.aws_logger, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %vtable54, align 8, !tbaa !11
  %get_log_level55 = getelementptr inbounds %struct.aws_logger_vtable, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %get_log_level55, align 8, !tbaa !13
  %55 = load ptr, ptr %logger50, align 8, !tbaa !4
  %call56 = call i32 %54(ptr noundef %55, i32 noundef 15363)
  %cmp57 = icmp uge i32 %call56, 2
  br i1 %cmp57, label %if.then58, label %if.end62

if.then58:                                        ; preds = %land.lhs.true53
  %56 = load ptr, ptr %logger50, align 8, !tbaa !4
  %vtable59 = getelementptr inbounds %struct.aws_logger, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %vtable59, align 8, !tbaa !11
  %log60 = getelementptr inbounds %struct.aws_logger_vtable, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %log60, align 8, !tbaa !15
  %59 = load ptr, ptr %logger50, align 8, !tbaa !4
  %call61 = call i32 (ptr, i32, i32, ptr, ...) %58(ptr noundef %59, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.8)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %land.lhs.true53, %do.body49
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger50) #8
  br label %do.cond63

do.cond63:                                        ; preds = %if.end62
  br label %do.end64

do.end64:                                         ; preds = %do.cond63
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup70

if.end65:                                         ; preds = %if.then44
  call void @aws_byte_buf_clean_up(ptr noundef %json_blob)
  %60 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type66 = getelementptr inbounds %struct.aws_endpoints_value, ptr %60, i32 0, i32 0
  store i32 4, ptr %type66, align 8, !tbaa !16
  %61 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v67 = getelementptr inbounds %struct.aws_endpoints_value, ptr %61, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp68) #8
  %62 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call69 = call ptr @aws_string_new_from_buf(ptr noundef %62, ptr noundef %json_blob)
  call void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8 %tmp68, ptr noundef %call69)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v67, ptr align 8 %tmp68, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp68) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %do.end64, %if.end65
  call void @llvm.lifetime.end.p0(i64 32, ptr %json_blob) #8
  %cleanup.dest71 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest71, label %cleanup129 [
    i32 0, label %cleanup.cont72
    i32 6, label %on_error
  ]

cleanup.cont72:                                   ; preds = %cleanup70
  br label %if.end125

if.else73:                                        ; preds = %lor.lhs.false
  %63 = load ptr, ptr %result, align 8, !tbaa !4
  %call74 = call zeroext i1 @aws_json_value_is_boolean(ptr noundef %63)
  br i1 %call74, label %if.then75, label %if.else98

if.then75:                                        ; preds = %if.else73
  %64 = load ptr, ptr %result, align 8, !tbaa !4
  %65 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v76 = getelementptr inbounds %struct.aws_endpoints_value, ptr %65, i32 0, i32 1
  %call77 = call i32 @aws_json_value_get_boolean(ptr noundef %64, ptr noundef %v76)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end96

if.then79:                                        ; preds = %if.then75
  br label %do.body80

do.body80:                                        ; preds = %if.then79
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger81) #8
  %call82 = call ptr @aws_logger_get()
  store ptr %call82, ptr %logger81, align 8, !tbaa !4
  %66 = load ptr, ptr %logger81, align 8, !tbaa !4
  %cmp83 = icmp ne ptr %66, null
  br i1 %cmp83, label %land.lhs.true84, label %if.end93

land.lhs.true84:                                  ; preds = %do.body80
  %67 = load ptr, ptr %logger81, align 8, !tbaa !4
  %vtable85 = getelementptr inbounds %struct.aws_logger, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %vtable85, align 8, !tbaa !11
  %get_log_level86 = getelementptr inbounds %struct.aws_logger_vtable, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %get_log_level86, align 8, !tbaa !13
  %70 = load ptr, ptr %logger81, align 8, !tbaa !4
  %call87 = call i32 %69(ptr noundef %70, i32 noundef 15363)
  %cmp88 = icmp uge i32 %call87, 2
  br i1 %cmp88, label %if.then89, label %if.end93

if.then89:                                        ; preds = %land.lhs.true84
  %71 = load ptr, ptr %logger81, align 8, !tbaa !4
  %vtable90 = getelementptr inbounds %struct.aws_logger, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %vtable90, align 8, !tbaa !11
  %log91 = getelementptr inbounds %struct.aws_logger_vtable, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %log91, align 8, !tbaa !15
  %74 = load ptr, ptr %logger81, align 8, !tbaa !4
  %call92 = call i32 (ptr, i32, i32, ptr, ...) %73(ptr noundef %74, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.9)
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %land.lhs.true84, %do.body80
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger81) #8
  br label %do.cond94

do.cond94:                                        ; preds = %if.end93
  br label %do.end95

do.end95:                                         ; preds = %do.cond94
  br label %on_error

if.end96:                                         ; preds = %if.then75
  %75 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type97 = getelementptr inbounds %struct.aws_endpoints_value, ptr %75, i32 0, i32 0
  store i32 3, ptr %type97, align 8, !tbaa !16
  br label %if.end124

if.else98:                                        ; preds = %if.else73
  %76 = load ptr, ptr %result, align 8, !tbaa !4
  %call99 = call zeroext i1 @aws_json_value_is_number(ptr noundef %76)
  br i1 %call99, label %if.then100, label %if.end123

if.then100:                                       ; preds = %if.else98
  %77 = load ptr, ptr %result, align 8, !tbaa !4
  %78 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %v101 = getelementptr inbounds %struct.aws_endpoints_value, ptr %78, i32 0, i32 1
  %call102 = call i32 @aws_json_value_get_number(ptr noundef %77, ptr noundef %v101)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.end121

if.then104:                                       ; preds = %if.then100
  br label %do.body105

do.body105:                                       ; preds = %if.then104
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger106) #8
  %call107 = call ptr @aws_logger_get()
  store ptr %call107, ptr %logger106, align 8, !tbaa !4
  %79 = load ptr, ptr %logger106, align 8, !tbaa !4
  %cmp108 = icmp ne ptr %79, null
  br i1 %cmp108, label %land.lhs.true109, label %if.end118

land.lhs.true109:                                 ; preds = %do.body105
  %80 = load ptr, ptr %logger106, align 8, !tbaa !4
  %vtable110 = getelementptr inbounds %struct.aws_logger, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %vtable110, align 8, !tbaa !11
  %get_log_level111 = getelementptr inbounds %struct.aws_logger_vtable, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %get_log_level111, align 8, !tbaa !13
  %83 = load ptr, ptr %logger106, align 8, !tbaa !4
  %call112 = call i32 %82(ptr noundef %83, i32 noundef 15363)
  %cmp113 = icmp uge i32 %call112, 2
  br i1 %cmp113, label %if.then114, label %if.end118

if.then114:                                       ; preds = %land.lhs.true109
  %84 = load ptr, ptr %logger106, align 8, !tbaa !4
  %vtable115 = getelementptr inbounds %struct.aws_logger, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %vtable115, align 8, !tbaa !11
  %log116 = getelementptr inbounds %struct.aws_logger_vtable, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %log116, align 8, !tbaa !15
  %87 = load ptr, ptr %logger106, align 8, !tbaa !4
  %call117 = call i32 (ptr, i32, i32, ptr, ...) %86(ptr noundef %87, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.10)
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %land.lhs.true109, %do.body105
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger106) #8
  br label %do.cond119

do.cond119:                                       ; preds = %if.end118
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  br label %on_error

if.end121:                                        ; preds = %if.then100
  %88 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  %type122 = getelementptr inbounds %struct.aws_endpoints_value, ptr %88, i32 0, i32 0
  store i32 5, ptr %type122, align 8, !tbaa !16
  br label %if.end123

if.end123:                                        ; preds = %if.end121, %if.else98
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end96
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %cleanup.cont72
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %cleanup.cont
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then15
  %89 = load ptr, ptr %root_node, align 8, !tbaa !4
  call void @aws_json_value_destroy(ptr noundef %89)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129

on_error:                                         ; preds = %cleanup70, %cleanup, %do.end120, %do.end95, %do.end12
  %90 = load ptr, ptr %root_node, align 8, !tbaa !4
  call void @aws_json_value_destroy(ptr noundef %90)
  %call128 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call128, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129

cleanup129:                                       ; preds = %on_error, %if.end127, %cleanup70, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %value_cur) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_node) #8
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

declare ptr @aws_json_value_new_from_string(ptr noundef, i64, ptr) #2

declare i32 @aws_path_through_json(ptr noundef, ptr noundef, i64, ptr, ptr noundef) #2

declare zeroext i1 @aws_json_value_is_string(ptr noundef) #2

declare i32 @aws_json_value_get_string(ptr noundef, ptr noundef) #2

declare void @aws_endpoints_owning_cursor_from_cursor(ptr sret(%struct.aws_owning_cursor) align 8, ptr noundef, i64, ptr) #2

declare zeroext i1 @aws_json_value_is_array(ptr noundef) #2

declare zeroext i1 @aws_json_value_is_object(ptr noundef) #2

declare i32 @aws_byte_buf_init(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @aws_byte_buf_append_json_string(ptr noundef, ptr noundef) #2

declare void @aws_byte_buf_clean_up(ptr noundef) #2

declare void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8, ptr noundef) #2

declare ptr @aws_string_new_from_buf(ptr noundef, ptr noundef) #2

declare zeroext i1 @aws_json_value_is_boolean(ptr noundef) #2

declare i32 @aws_json_value_get_boolean(ptr noundef, ptr noundef) #2

declare zeroext i1 @aws_json_value_is_number(ptr noundef) #2

declare i32 @aws_json_value_get_number(ptr noundef, ptr noundef) #2

declare void @aws_json_value_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_request_context_new(ptr noundef %allocator) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %context = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #8
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 40)
  store ptr %call, ptr %context, align 8, !tbaa !4
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %context, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %2, i32 0, i32 0
  store ptr %1, ptr %allocator1, align 8, !tbaa !46
  %3 = load ptr, ptr %context, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %context, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %4, ptr noundef @s_endpoints_request_context_destroy)
  %5 = load ptr, ptr %context, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_hash_table_init(ptr noundef %values, ptr noundef %6, i64 noundef 0, ptr noundef @aws_hash_byte_cursor_ptr, ptr noundef @aws_endpoints_byte_cursor_eq, ptr noundef null, ptr noundef @s_scope_value_destroy_cb)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.11)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end9:                                          ; preds = %entry
  %16 = load ptr, ptr %context, align 8, !tbaa !4
  store ptr %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %do.end
  %17 = load ptr, ptr %context, align 8, !tbaa !4
  call void @s_endpoints_request_context_destroy(ptr noundef %17)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #8
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

declare ptr @aws_mem_calloc(ptr noundef, i64 noundef, i64 noundef) #2

declare void @aws_ref_count_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_endpoints_request_context_destroy(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %context = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #8
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %1, ptr %context, align 8, !tbaa !4
  %2 = load ptr, ptr %context, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %2, i32 0, i32 2
  call void @aws_hash_table_clean_up(ptr noundef %values)
  %3 = load ptr, ptr %context, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator, align 8, !tbaa !46
  %5 = load ptr, ptr %context, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @aws_hash_table_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @aws_hash_byte_cursor_ptr(ptr noundef) #2

declare zeroext i1 @aws_endpoints_byte_cursor_eq(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_request_context_acquire(ptr noundef %request_context) #0 {
entry:
  %request_context.addr = alloca ptr, align 8
  store ptr %request_context, ptr %request_context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %request_context.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %request_context.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %1, i32 0, i32 1
  %call = call ptr @aws_ref_count_acquire(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %request_context.addr, align 8, !tbaa !4
  ret ptr %2
}

declare ptr @aws_ref_count_acquire(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_request_context_release(ptr noundef %request_context) #0 {
entry:
  %request_context.addr = alloca ptr, align 8
  store ptr %request_context, ptr %request_context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %request_context.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %request_context.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %1, i32 0, i32 1
  %call = call i64 @aws_ref_count_release(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr null
}

declare i64 @aws_ref_count_release(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_request_context_add_string(ptr noundef %allocator, ptr noundef %context, i64 %name.coerce0, ptr %name.coerce1, i64 %value.coerce0, ptr %value.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %name = alloca %struct.aws_byte_cursor, align 8
  %value = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %val = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  store i64 %name.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  store ptr %name.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  store i64 %value.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  store ptr %value.coerce1, ptr %3, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %call = call ptr @aws_endpoints_scope_value_new(ptr noundef %4, i64 %6, ptr %8)
  store ptr %call, ptr %val, align 8, !tbaa !4
  %9 = load ptr, ptr %val, align 8, !tbaa !4
  %value1 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %9, i32 0, i32 2
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %value1, i32 0, i32 0
  store i32 2, ptr %type, align 8, !tbaa !37
  %10 = load ptr, ptr %val, align 8, !tbaa !4
  %value2 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %10, i32 0, i32 2
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %value2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #8
  %11 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %12 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, ptr }, ptr %value, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  call void @aws_endpoints_owning_cursor_from_cursor(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, ptr noundef %11, i64 %13, ptr %15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #8
  %16 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %val, align 8, !tbaa !4
  %name3 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %17, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %name3, i32 0, i32 0
  %18 = load ptr, ptr %val, align 8, !tbaa !4
  %call4 = call i32 @aws_hash_table_put(ptr noundef %values, ptr noundef %cur, ptr noundef %18, ptr noundef null)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %val, align 8, !tbaa !4
  call void @aws_endpoints_scope_value_destroy(ptr noundef %19)
  %call5 = call i32 @aws_raise_error(i32 noundef 15365)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare ptr @aws_endpoints_scope_value_new(ptr noundef, i64, ptr) #2

declare i32 @aws_hash_table_put(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_request_context_add_boolean(ptr noundef %allocator, ptr noundef %context, i64 %name.coerce0, ptr %name.coerce1, i1 noundef zeroext %value) #0 {
entry:
  %retval = alloca i32, align 4
  %name = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  %val = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  store i64 %name.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  store ptr %name.coerce1, ptr %1, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %frombool = zext i1 %value to i8
  store i8 %frombool, ptr %value.addr, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %3 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 0
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds { i64, ptr }, ptr %name, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %call = call ptr @aws_endpoints_scope_value_new(ptr noundef %2, i64 %4, ptr %6)
  store ptr %call, ptr %val, align 8, !tbaa !4
  %7 = load ptr, ptr %val, align 8, !tbaa !4
  %value1 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %7, i32 0, i32 2
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %value1, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !37
  %8 = load i8, ptr %value.addr, align 1, !tbaa !19, !range !32, !noundef !33
  %tobool = trunc i8 %8 to i1
  %9 = load ptr, ptr %val, align 8, !tbaa !4
  %value2 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %9, i32 0, i32 2
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %value2, i32 0, i32 1
  %frombool3 = zext i1 %tobool to i8
  store i8 %frombool3, ptr %v, align 8, !tbaa !10
  %10 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %val, align 8, !tbaa !4
  %name4 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %11, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %name4, i32 0, i32 0
  %12 = load ptr, ptr %val, align 8, !tbaa !4
  %call5 = call i32 @aws_hash_table_put(ptr noundef %values, ptr noundef %cur, ptr noundef %12, ptr noundef null)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %val, align 8, !tbaa !4
  call void @aws_endpoints_scope_value_destroy(ptr noundef %13)
  %call7 = call i32 @aws_raise_error(i32 noundef 15365)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define ptr @s_endpoints_resolved_endpoint_new(ptr noundef %allocator) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %resolved = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %resolved) #8
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 112)
  store ptr %call, ptr %resolved, align 8, !tbaa !4
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %resolved, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %2, i32 0, i32 0
  store ptr %1, ptr %allocator1, align 8, !tbaa !51
  %3 = load ptr, ptr %resolved, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %resolved, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %4, ptr noundef @s_endpoints_resolved_endpoint_destroy)
  %5 = load ptr, ptr %resolved, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %resolved) #8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal void @s_endpoints_resolved_endpoint_destroy(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %resolved = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %resolved) #8
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %1, ptr %resolved, align 8, !tbaa !4
  %2 = load ptr, ptr %resolved, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %type, align 8, !tbaa !53
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %resolved, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %4, i32 0, i32 3
  %url = getelementptr inbounds %struct.resolved_endpoint, ptr %r, i32 0, i32 0
  call void @aws_byte_buf_clean_up(ptr noundef %url)
  %5 = load ptr, ptr %resolved, align 8, !tbaa !4
  %r3 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %5, i32 0, i32 3
  %properties = getelementptr inbounds %struct.resolved_endpoint, ptr %r3, i32 0, i32 1
  call void @aws_byte_buf_clean_up(ptr noundef %properties)
  %6 = load ptr, ptr %resolved, align 8, !tbaa !4
  %r4 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %6, i32 0, i32 3
  %headers = getelementptr inbounds %struct.resolved_endpoint, ptr %r4, i32 0, i32 2
  call void @aws_hash_table_clean_up(ptr noundef %headers)
  br label %if.end10

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %resolved, align 8, !tbaa !4
  %type5 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %type5, align 8, !tbaa !53
  %cmp6 = icmp eq i32 %8, 1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.else
  %9 = load ptr, ptr %resolved, align 8, !tbaa !4
  %r8 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %9, i32 0, i32 3
  call void @aws_byte_buf_clean_up(ptr noundef %r8)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  %10 = load ptr, ptr %resolved, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %allocator, align 8, !tbaa !51
  %12 = load ptr, ptr %resolved, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %11, ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 8, ptr %resolved) #8
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_resolved_endpoint_acquire(ptr noundef %resolved_endpoint) #0 {
entry:
  %resolved_endpoint.addr = alloca ptr, align 8
  store ptr %resolved_endpoint, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %1, i32 0, i32 1
  %call = call ptr @aws_ref_count_acquire(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_resolved_endpoint_release(ptr noundef %resolved_endpoint) #0 {
entry:
  %resolved_endpoint.addr = alloca ptr, align 8
  store ptr %resolved_endpoint, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %1, i32 0, i32 1
  %call = call i64 @aws_ref_count_release(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr null
}

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_resolved_endpoint_get_type(ptr noundef %resolved_endpoint) #0 {
entry:
  %resolved_endpoint.addr = alloca ptr, align 8
  store ptr %resolved_endpoint, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %type, align 8, !tbaa !53
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_resolved_endpoint_get_url(ptr noundef %resolved_endpoint, ptr noundef %out_url) #0 {
entry:
  %retval = alloca i32, align 4
  %resolved_endpoint.addr = alloca ptr, align 8
  %out_url.addr = alloca ptr, align 8
  %tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %resolved_endpoint, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  store ptr %out_url, ptr %out_url.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %type, align 8, !tbaa !53
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %out_url.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8
  %3 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %3, i32 0, i32 3
  %url = getelementptr inbounds %struct.resolved_endpoint, ptr %r, i32 0, i32 0
  %call1 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %url)
  %4 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 0
  %5 = extractvalue { i64, ptr } %call1, 0
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 1
  %7 = extractvalue { i64, ptr } %call1, 1
  store ptr %7, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_resolved_endpoint_get_properties(ptr noundef %resolved_endpoint, ptr noundef %out_properties) #0 {
entry:
  %retval = alloca i32, align 4
  %resolved_endpoint.addr = alloca ptr, align 8
  %out_properties.addr = alloca ptr, align 8
  %tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %resolved_endpoint, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  store ptr %out_properties, ptr %out_properties.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %type, align 8, !tbaa !53
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %out_properties.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8
  %3 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %3, i32 0, i32 3
  %properties = getelementptr inbounds %struct.resolved_endpoint, ptr %r, i32 0, i32 1
  %call1 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %properties)
  %4 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 0
  %5 = extractvalue { i64, ptr } %call1, 0
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 1
  %7 = extractvalue { i64, ptr } %call1, 1
  store ptr %7, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_resolved_endpoint_get_headers(ptr noundef %resolved_endpoint, ptr noundef %out_headers) #0 {
entry:
  %retval = alloca i32, align 4
  %resolved_endpoint.addr = alloca ptr, align 8
  %out_headers.addr = alloca ptr, align 8
  store ptr %resolved_endpoint, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  store ptr %out_headers, ptr %out_headers.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %type, align 8, !tbaa !53
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %2, i32 0, i32 3
  %headers = getelementptr inbounds %struct.resolved_endpoint, ptr %r, i32 0, i32 2
  %3 = load ptr, ptr %out_headers.addr, align 8, !tbaa !4
  store ptr %headers, ptr %3, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_resolved_endpoint_get_error(ptr noundef %resolved_endpoint, ptr noundef %out_error) #0 {
entry:
  %retval = alloca i32, align 4
  %resolved_endpoint.addr = alloca ptr, align 8
  %out_error.addr = alloca ptr, align 8
  %tmp = alloca %struct.aws_byte_cursor, align 8
  store ptr %resolved_endpoint, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  store ptr %out_error, ptr %out_error.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %type, align 8, !tbaa !53
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %out_error.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8
  %3 = load ptr, ptr %resolved_endpoint.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %3, i32 0, i32 3
  %call1 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %r)
  %4 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 0
  %5 = extractvalue { i64, ptr } %call1, 0
  store i64 %5, ptr %4, align 8
  %6 = getelementptr inbounds { i64, ptr }, ptr %tmp, i32 0, i32 1
  %7 = extractvalue { i64, ptr } %call1, 1
  store ptr %7, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_rule_engine_new(ptr noundef %allocator, ptr noundef %ruleset, ptr noundef %partitions_config) #0 {
entry:
  %allocator.addr = alloca ptr, align 8
  %ruleset.addr = alloca ptr, align 8
  %partitions_config.addr = alloca ptr, align 8
  %engine = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %ruleset, ptr %ruleset.addr, align 8, !tbaa !4
  store ptr %partitions_config, ptr %partitions_config.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #8
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 48)
  store ptr %call, ptr %engine, align 8, !tbaa !4
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %engine, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %2, i32 0, i32 0
  store ptr %1, ptr %allocator1, align 8, !tbaa !54
  %3 = load ptr, ptr %ruleset.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %engine, align 8, !tbaa !4
  %ruleset2 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %4, i32 0, i32 2
  store ptr %3, ptr %ruleset2, align 8, !tbaa !56
  %5 = load ptr, ptr %partitions_config.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %engine, align 8, !tbaa !4
  %partitions_config3 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %6, i32 0, i32 3
  store ptr %5, ptr %partitions_config3, align 8, !tbaa !57
  %7 = load ptr, ptr %ruleset.addr, align 8, !tbaa !4
  %call4 = call ptr @aws_endpoints_ruleset_acquire(ptr noundef %7)
  %8 = load ptr, ptr %partitions_config.addr, align 8, !tbaa !4
  %call5 = call ptr @aws_partitions_config_acquire(ptr noundef %8)
  %9 = load ptr, ptr %engine, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %engine, align 8, !tbaa !4
  call void @aws_ref_count_init(ptr noundef %ref_count, ptr noundef %10, ptr noundef @s_endpoints_rule_engine_destroy)
  %11 = load ptr, ptr %engine, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #8
  ret ptr %11
}

declare ptr @aws_endpoints_ruleset_acquire(ptr noundef) #2

declare ptr @aws_partitions_config_acquire(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_endpoints_rule_engine_destroy(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %engine = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #8
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %1, ptr %engine, align 8, !tbaa !4
  %2 = load ptr, ptr %engine, align 8, !tbaa !4
  %ruleset = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %ruleset, align 8, !tbaa !56
  %call = call ptr @aws_endpoints_ruleset_release(ptr noundef %3)
  %4 = load ptr, ptr %engine, align 8, !tbaa !4
  %partitions_config = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %partitions_config, align 8, !tbaa !57
  %call1 = call ptr @aws_partitions_config_release(ptr noundef %5)
  %6 = load ptr, ptr %engine, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %allocator, align 8, !tbaa !54
  %8 = load ptr, ptr %engine, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_rule_engine_acquire(ptr noundef %rule_engine) #0 {
entry:
  %rule_engine.addr = alloca ptr, align 8
  store ptr %rule_engine, ptr %rule_engine.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %rule_engine.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rule_engine.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %1, i32 0, i32 1
  %call = call ptr @aws_ref_count_acquire(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %rule_engine.addr, align 8, !tbaa !4
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @aws_endpoints_rule_engine_release(ptr noundef %rule_engine) #0 {
entry:
  %rule_engine.addr = alloca ptr, align 8
  store ptr %rule_engine, ptr %rule_engine.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %rule_engine.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rule_engine.addr, align 8, !tbaa !4
  %ref_count = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %1, i32 0, i32 1
  %call = call i64 @aws_ref_count_release(ptr noundef %ref_count)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr null
}

; Function Attrs: nounwind uwtable
define i32 @s_revert_scope(ptr noundef %scope) #0 {
entry:
  %retval = alloca i32, align 4
  %scope.addr = alloca ptr, align 8
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cur = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #8
  store i64 0, ptr %idx, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %idx, align 8, !tbaa !8
  %1 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %added_keys = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %1, i32 0, i32 1
  %call = call i64 @aws_array_list_length(ptr noundef %added_keys)
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #8
  store ptr null, ptr %cur, align 8, !tbaa !4
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %added_keys1 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %idx, align 8, !tbaa !8
  %call2 = call i32 @aws_array_list_get_at_ptr(ptr noundef %added_keys1, ptr noundef %cur, i64 noundef %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %4, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %7(ptr noundef %8, i32 noundef 15363)
  %cmp6 = icmp uge i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable8, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !15
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %call9 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.12)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call10 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %13 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %cur, align 8, !tbaa !4
  %call12 = call i32 @aws_hash_table_remove(ptr noundef %values, ptr noundef %14, ptr noundef null, ptr noundef null)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %15 = load i64, ptr %idx, align 8, !tbaa !8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %idx, align 8, !tbaa !8
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #8
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  %16 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %added_keys15 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %16, i32 0, i32 1
  call void @aws_array_list_clear(ptr noundef %added_keys15)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %17 = load i32, ptr %retval, align 4
  ret i32 %17

unreachable:                                      ; preds = %cleanup13
  unreachable
}

declare i32 @aws_hash_table_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_clear(ptr noalias noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %data, align 8, !tbaa !23
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 2
  store i64 0, ptr %length, align 8, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_endpoints_rule_engine_resolve(ptr noundef %engine, ptr noundef %context, ptr noundef %out_resolved_endpoint) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %out_resolved_endpoint.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %scope = alloca %struct.aws_endpoints_resolution_scope, align 8
  %rule = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %is_truthy = alloca i8, align 1
  %logger28 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %endpoint = alloca ptr, align 8
  %val = alloca %struct.aws_endpoints_value, align 8
  %logger64 = alloca ptr, align 8
  %data = alloca %struct.resolve_template_callback_data, align 8
  %agg.tmp = alloca %struct.aws_byte_cursor, align 8
  %logger96 = alloca ptr, align 8
  %logger120 = alloca ptr, align 8
  %error = alloca ptr, align 8
  %val142 = alloca %struct.aws_endpoints_value, align 8
  %logger160 = alloca ptr, align 8
  %logger184 = alloca ptr, align 8
  %logger203 = alloca ptr, align 8
  %logger220 = alloca ptr, align 8
  store ptr %engine, ptr %engine.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %out_resolved_endpoint, ptr %out_resolved_endpoint.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %ruleset = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ruleset, align 8, !tbaa !56
  %rules = getelementptr inbounds %struct.aws_endpoints_ruleset, ptr %1, i32 0, i32 3
  %call = call i64 @aws_array_list_length(ptr noundef %rules)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 15367)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  store i32 0, ptr %result, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 72, ptr %scope) #8
  %2 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %allocator, align 8, !tbaa !54
  %4 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %ruleset2 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %ruleset2, align 8, !tbaa !56
  %7 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %partitions_config = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %partitions_config, align 8, !tbaa !57
  %call3 = call i32 @s_init_top_level_scope(ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %8, ptr noundef %scope)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %result, align 4, !tbaa !41
  br label %on_done

if.end5:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %cleanup201, %if.end5
  %rule_idx = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 2
  %9 = load i64, ptr %rule_idx, align 8, !tbaa !58
  %rules6 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 3
  %10 = load ptr, ptr %rules6, align 8, !tbaa !60
  %call7 = call i64 @aws_array_list_length(ptr noundef %10)
  %cmp8 = icmp ult i64 %9, %call7
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rule) #8
  store ptr null, ptr %rule, align 8, !tbaa !4
  %rules9 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 3
  %11 = load ptr, ptr %rules9, align 8, !tbaa !60
  %rule_idx10 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 2
  %12 = load i64, ptr %rule_idx10, align 8, !tbaa !58
  %call11 = call i32 @aws_array_list_get_at_ptr(ptr noundef %11, ptr noundef %rule, i64 noundef %12)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end22

if.then13:                                        ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call14 = call ptr @aws_logger_get()
  store ptr %call14, ptr %logger, align 8, !tbaa !4
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp15 = icmp ne ptr %13, null
  br i1 %cmp15, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %do.body
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %17 = load ptr, ptr %logger, align 8, !tbaa !4
  %call16 = call i32 %16(ptr noundef %17, i32 noundef 15363)
  %cmp17 = icmp uge i32 %call16, 2
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vtable19, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %log, align 8, !tbaa !15
  %21 = load ptr, ptr %logger, align 8, !tbaa !4
  %call20 = call i32 (ptr, i32, i32, ptr, ...) %20(ptr noundef %21, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.13)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end21
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %result, align 4, !tbaa !41
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup201

if.end22:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_truthy) #8
  store i8 0, ptr %is_truthy, align 1, !tbaa !19
  %22 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator23 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %allocator23, align 8, !tbaa !54
  %24 = load ptr, ptr %rule, align 8, !tbaa !4
  %conditions = getelementptr inbounds %struct.aws_endpoints_rule, ptr %24, i32 0, i32 0
  %call24 = call i32 @s_resolve_conditions(ptr noundef %23, ptr noundef %conditions, ptr noundef %scope, ptr noundef %is_truthy)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end43

if.then26:                                        ; preds = %if.end22
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger28) #8
  %call29 = call ptr @aws_logger_get()
  store ptr %call29, ptr %logger28, align 8, !tbaa !4
  %25 = load ptr, ptr %logger28, align 8, !tbaa !4
  %cmp30 = icmp ne ptr %25, null
  br i1 %cmp30, label %land.lhs.true31, label %if.end40

land.lhs.true31:                                  ; preds = %do.body27
  %26 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable32 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable32, align 8, !tbaa !11
  %get_log_level33 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %get_log_level33, align 8, !tbaa !13
  %29 = load ptr, ptr %logger28, align 8, !tbaa !4
  %call34 = call i32 %28(ptr noundef %29, i32 noundef 15363)
  %cmp35 = icmp uge i32 %call34, 2
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %land.lhs.true31
  %30 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable37 = getelementptr inbounds %struct.aws_logger, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %vtable37, align 8, !tbaa !11
  %log38 = getelementptr inbounds %struct.aws_logger_vtable, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %log38, align 8, !tbaa !15
  %33 = load ptr, ptr %logger28, align 8, !tbaa !4
  %call39 = call i32 (ptr, i32, i32, ptr, ...) %32(ptr noundef %33, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.14)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %land.lhs.true31, %do.body27
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger28) #8
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  store i32 -1, ptr %result, align 4, !tbaa !41
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup200

if.end43:                                         ; preds = %if.end22
  %34 = load i8, ptr %is_truthy, align 1, !tbaa !19, !range !32, !noundef !33
  %tobool44 = trunc i8 %34 to i1
  br i1 %tobool44, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end43
  %call46 = call i32 @s_revert_scope(ptr noundef %scope)
  %rule_idx47 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 2
  %35 = load i64, ptr %rule_idx47, align 8, !tbaa !58
  %inc = add i64 %35, 1
  store i64 %inc, ptr %rule_idx47, align 8, !tbaa !58
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup200

if.end48:                                         ; preds = %if.end43
  %36 = load ptr, ptr %rule, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_rule, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %type, align 8, !tbaa !61
  switch i32 %37, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb138
    i32 2, label %sw.bb178
  ]

sw.bb:                                            ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %endpoint) #8
  %38 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator49 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %allocator49, align 8, !tbaa !54
  %call50 = call ptr @s_endpoints_resolved_endpoint_new(ptr noundef %39)
  store ptr %call50, ptr %endpoint, align 8, !tbaa !4
  %40 = load ptr, ptr %endpoint, align 8, !tbaa !4
  %type51 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %40, i32 0, i32 2
  store i32 0, ptr %type51, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 48, ptr %val) #8
  %41 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator52 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %allocator52, align 8, !tbaa !54
  %43 = load ptr, ptr %rule, align 8, !tbaa !4
  %rule_data = getelementptr inbounds %struct.aws_endpoints_rule, ptr %43, i32 0, i32 3
  %url = getelementptr inbounds %struct.aws_endpoints_rule_data_endpoint, ptr %rule_data, i32 0, i32 1
  %call53 = call i32 @s_resolve_expr(ptr noundef %42, ptr noundef %url, ptr noundef %scope, ptr noundef %val)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %type55 = getelementptr inbounds %struct.aws_endpoints_value, ptr %val, i32 0, i32 0
  %44 = load i32, ptr %type55, align 8, !tbaa !16
  %cmp56 = icmp ne i32 %44, 2
  br i1 %cmp56, label %if.then62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %45 = load ptr, ptr %endpoint, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %45, i32 0, i32 3
  %url58 = getelementptr inbounds %struct.resolved_endpoint, ptr %r, i32 0, i32 0
  %46 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator59 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %allocator59, align 8, !tbaa !54
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %val, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %48 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 0
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %call60 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %url58, ptr noundef %47, i64 %49, ptr %51)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.end79

if.then62:                                        ; preds = %lor.lhs.false57, %lor.lhs.false, %sw.bb
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger64) #8
  %call65 = call ptr @aws_logger_get()
  store ptr %call65, ptr %logger64, align 8, !tbaa !4
  %52 = load ptr, ptr %logger64, align 8, !tbaa !4
  %cmp66 = icmp ne ptr %52, null
  br i1 %cmp66, label %land.lhs.true67, label %if.end76

land.lhs.true67:                                  ; preds = %do.body63
  %53 = load ptr, ptr %logger64, align 8, !tbaa !4
  %vtable68 = getelementptr inbounds %struct.aws_logger, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %vtable68, align 8, !tbaa !11
  %get_log_level69 = getelementptr inbounds %struct.aws_logger_vtable, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %get_log_level69, align 8, !tbaa !13
  %56 = load ptr, ptr %logger64, align 8, !tbaa !4
  %call70 = call i32 %55(ptr noundef %56, i32 noundef 15363)
  %cmp71 = icmp uge i32 %call70, 2
  br i1 %cmp71, label %if.then72, label %if.end76

if.then72:                                        ; preds = %land.lhs.true67
  %57 = load ptr, ptr %logger64, align 8, !tbaa !4
  %vtable73 = getelementptr inbounds %struct.aws_logger, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %vtable73, align 8, !tbaa !11
  %log74 = getelementptr inbounds %struct.aws_logger_vtable, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %log74, align 8, !tbaa !15
  %60 = load ptr, ptr %logger64, align 8, !tbaa !4
  %call75 = call i32 (ptr, i32, i32, ptr, ...) %59(ptr noundef %60, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.15)
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %land.lhs.true67, %do.body63
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger64) #8
  br label %do.cond77

do.cond77:                                        ; preds = %if.end76
  br label %do.end78

do.end78:                                         ; preds = %do.cond77
  store i32 -1, ptr %result, align 4, !tbaa !41
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup136

if.end79:                                         ; preds = %lor.lhs.false57
  call void @aws_endpoints_value_clean_up(ptr noundef %val)
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8
  %allocator80 = getelementptr inbounds %struct.resolve_template_callback_data, ptr %data, i32 0, i32 0
  %61 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator81 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %allocator81, align 8, !tbaa !54
  store ptr %62, ptr %allocator80, align 8, !tbaa !28
  %scope82 = getelementptr inbounds %struct.resolve_template_callback_data, ptr %data, i32 0, i32 1
  store ptr %scope, ptr %scope82, align 8, !tbaa !30
  %63 = load ptr, ptr %rule, align 8, !tbaa !4
  %rule_data83 = getelementptr inbounds %struct.aws_endpoints_rule, ptr %63, i32 0, i32 3
  %properties = getelementptr inbounds %struct.aws_endpoints_rule_data_endpoint, ptr %rule_data83, i32 0, i32 2
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %properties, i32 0, i32 0
  %64 = load i64, ptr %len, align 8, !tbaa !10
  %cmp84 = icmp ugt i64 %64, 0
  br i1 %cmp84, label %land.lhs.true85, label %if.end111

land.lhs.true85:                                  ; preds = %if.end79
  %65 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator86 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %allocator86, align 8, !tbaa !54
  %67 = load ptr, ptr %endpoint, align 8, !tbaa !4
  %r87 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %67, i32 0, i32 3
  %properties88 = getelementptr inbounds %struct.resolved_endpoint, ptr %r87, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #8
  %68 = load ptr, ptr %rule, align 8, !tbaa !4
  %rule_data89 = getelementptr inbounds %struct.aws_endpoints_rule, ptr %68, i32 0, i32 3
  %properties90 = getelementptr inbounds %struct.aws_endpoints_rule_data_endpoint, ptr %rule_data89, i32 0, i32 2
  %call91 = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %properties90)
  %69 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %70 = extractvalue { i64, ptr } %call91, 0
  store i64 %70, ptr %69, align 8
  %71 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %72 = extractvalue { i64, ptr } %call91, 1
  store ptr %72, ptr %71, align 8
  %73 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 0
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds { i64, ptr }, ptr %agg.tmp, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  %call92 = call i32 @aws_byte_buf_init_from_resolved_templated_string(ptr noundef %66, ptr noundef %properties88, i64 %74, ptr %76, ptr noundef @s_resolve_template, ptr noundef %data, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #8
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end111

if.then94:                                        ; preds = %land.lhs.true85
  br label %do.body95

do.body95:                                        ; preds = %if.then94
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger96) #8
  %call97 = call ptr @aws_logger_get()
  store ptr %call97, ptr %logger96, align 8, !tbaa !4
  %77 = load ptr, ptr %logger96, align 8, !tbaa !4
  %cmp98 = icmp ne ptr %77, null
  br i1 %cmp98, label %land.lhs.true99, label %if.end108

land.lhs.true99:                                  ; preds = %do.body95
  %78 = load ptr, ptr %logger96, align 8, !tbaa !4
  %vtable100 = getelementptr inbounds %struct.aws_logger, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %vtable100, align 8, !tbaa !11
  %get_log_level101 = getelementptr inbounds %struct.aws_logger_vtable, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %get_log_level101, align 8, !tbaa !13
  %81 = load ptr, ptr %logger96, align 8, !tbaa !4
  %call102 = call i32 %80(ptr noundef %81, i32 noundef 15363)
  %cmp103 = icmp uge i32 %call102, 2
  br i1 %cmp103, label %if.then104, label %if.end108

if.then104:                                       ; preds = %land.lhs.true99
  %82 = load ptr, ptr %logger96, align 8, !tbaa !4
  %vtable105 = getelementptr inbounds %struct.aws_logger, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %vtable105, align 8, !tbaa !11
  %log106 = getelementptr inbounds %struct.aws_logger_vtable, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %log106, align 8, !tbaa !15
  %85 = load ptr, ptr %logger96, align 8, !tbaa !4
  %call107 = call i32 (ptr, i32, i32, ptr, ...) %84(ptr noundef %85, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.16)
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %land.lhs.true99, %do.body95
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger96) #8
  br label %do.cond109

do.cond109:                                       ; preds = %if.end108
  br label %do.end110

do.end110:                                        ; preds = %do.cond109
  store i32 -1, ptr %result, align 4, !tbaa !41
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end111:                                        ; preds = %land.lhs.true85, %if.end79
  %86 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator112 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %allocator112, align 8, !tbaa !54
  %88 = load ptr, ptr %rule, align 8, !tbaa !4
  %rule_data113 = getelementptr inbounds %struct.aws_endpoints_rule, ptr %88, i32 0, i32 3
  %headers = getelementptr inbounds %struct.aws_endpoints_rule_data_endpoint, ptr %rule_data113, i32 0, i32 3
  %89 = load ptr, ptr %endpoint, align 8, !tbaa !4
  %r114 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %89, i32 0, i32 3
  %headers115 = getelementptr inbounds %struct.resolved_endpoint, ptr %r114, i32 0, i32 2
  %call116 = call i32 @s_resolve_headers(ptr noundef %87, ptr noundef %scope, ptr noundef %headers, ptr noundef %headers115)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end135

if.then118:                                       ; preds = %if.end111
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger120) #8
  %call121 = call ptr @aws_logger_get()
  store ptr %call121, ptr %logger120, align 8, !tbaa !4
  %90 = load ptr, ptr %logger120, align 8, !tbaa !4
  %cmp122 = icmp ne ptr %90, null
  br i1 %cmp122, label %land.lhs.true123, label %if.end132

land.lhs.true123:                                 ; preds = %do.body119
  %91 = load ptr, ptr %logger120, align 8, !tbaa !4
  %vtable124 = getelementptr inbounds %struct.aws_logger, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %vtable124, align 8, !tbaa !11
  %get_log_level125 = getelementptr inbounds %struct.aws_logger_vtable, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %get_log_level125, align 8, !tbaa !13
  %94 = load ptr, ptr %logger120, align 8, !tbaa !4
  %call126 = call i32 %93(ptr noundef %94, i32 noundef 15363)
  %cmp127 = icmp uge i32 %call126, 2
  br i1 %cmp127, label %if.then128, label %if.end132

if.then128:                                       ; preds = %land.lhs.true123
  %95 = load ptr, ptr %logger120, align 8, !tbaa !4
  %vtable129 = getelementptr inbounds %struct.aws_logger, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %vtable129, align 8, !tbaa !11
  %log130 = getelementptr inbounds %struct.aws_logger_vtable, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %log130, align 8, !tbaa !15
  %98 = load ptr, ptr %logger120, align 8, !tbaa !4
  %call131 = call i32 (ptr, i32, i32, ptr, ...) %97(ptr noundef %98, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.17)
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %land.lhs.true123, %do.body119
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger120) #8
  br label %do.cond133

do.cond133:                                       ; preds = %if.end132
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  store i32 -1, ptr %result, align 4, !tbaa !41
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end135:                                        ; preds = %if.end111
  %99 = load ptr, ptr %endpoint, align 8, !tbaa !4
  %100 = load ptr, ptr %out_resolved_endpoint.addr, align 8, !tbaa !4
  store ptr %99, ptr %100, align 8, !tbaa !4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %do.end134, %do.end110
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8
  br label %cleanup136

cleanup136:                                       ; preds = %do.end78, %cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr %val) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %endpoint) #8
  br label %cleanup200

sw.bb138:                                         ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %error) #8
  %101 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator139 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %allocator139, align 8, !tbaa !54
  %call140 = call ptr @s_endpoints_resolved_endpoint_new(ptr noundef %102)
  store ptr %call140, ptr %error, align 8, !tbaa !4
  %103 = load ptr, ptr %error, align 8, !tbaa !4
  %type141 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %103, i32 0, i32 2
  store i32 1, ptr %type141, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 48, ptr %val142) #8
  %104 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator143 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %allocator143, align 8, !tbaa !54
  %106 = load ptr, ptr %rule, align 8, !tbaa !4
  %rule_data144 = getelementptr inbounds %struct.aws_endpoints_rule, ptr %106, i32 0, i32 3
  %error145 = getelementptr inbounds %struct.aws_endpoints_rule_data_error, ptr %rule_data144, i32 0, i32 0
  %call146 = call i32 @s_resolve_expr(ptr noundef %105, ptr noundef %error145, ptr noundef %scope, ptr noundef %val142)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then158, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %sw.bb138
  %type149 = getelementptr inbounds %struct.aws_endpoints_value, ptr %val142, i32 0, i32 0
  %107 = load i32, ptr %type149, align 8, !tbaa !16
  %cmp150 = icmp ne i32 %107, 2
  br i1 %cmp150, label %if.then158, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false148
  %108 = load ptr, ptr %error, align 8, !tbaa !4
  %r152 = getelementptr inbounds %struct.aws_endpoints_resolved_endpoint, ptr %108, i32 0, i32 3
  %109 = load ptr, ptr %engine.addr, align 8, !tbaa !4
  %allocator153 = getelementptr inbounds %struct.aws_endpoints_rule_engine, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %allocator153, align 8, !tbaa !54
  %v154 = getelementptr inbounds %struct.aws_endpoints_value, ptr %val142, i32 0, i32 1
  %cur155 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v154, i32 0, i32 0
  %111 = getelementptr inbounds { i64, ptr }, ptr %cur155, i32 0, i32 0
  %112 = load i64, ptr %111, align 8
  %113 = getelementptr inbounds { i64, ptr }, ptr %cur155, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8
  %call156 = call i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %r152, ptr noundef %110, i64 %112, ptr %114)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then158, label %if.end175

if.then158:                                       ; preds = %lor.lhs.false151, %lor.lhs.false148, %sw.bb138
  call void @aws_endpoints_value_clean_up(ptr noundef %val142)
  br label %do.body159

do.body159:                                       ; preds = %if.then158
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger160) #8
  %call161 = call ptr @aws_logger_get()
  store ptr %call161, ptr %logger160, align 8, !tbaa !4
  %115 = load ptr, ptr %logger160, align 8, !tbaa !4
  %cmp162 = icmp ne ptr %115, null
  br i1 %cmp162, label %land.lhs.true163, label %if.end172

land.lhs.true163:                                 ; preds = %do.body159
  %116 = load ptr, ptr %logger160, align 8, !tbaa !4
  %vtable164 = getelementptr inbounds %struct.aws_logger, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %vtable164, align 8, !tbaa !11
  %get_log_level165 = getelementptr inbounds %struct.aws_logger_vtable, ptr %117, i32 0, i32 1
  %118 = load ptr, ptr %get_log_level165, align 8, !tbaa !13
  %119 = load ptr, ptr %logger160, align 8, !tbaa !4
  %call166 = call i32 %118(ptr noundef %119, i32 noundef 15363)
  %cmp167 = icmp uge i32 %call166, 2
  br i1 %cmp167, label %if.then168, label %if.end172

if.then168:                                       ; preds = %land.lhs.true163
  %120 = load ptr, ptr %logger160, align 8, !tbaa !4
  %vtable169 = getelementptr inbounds %struct.aws_logger, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %vtable169, align 8, !tbaa !11
  %log170 = getelementptr inbounds %struct.aws_logger_vtable, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %log170, align 8, !tbaa !15
  %123 = load ptr, ptr %logger160, align 8, !tbaa !4
  %call171 = call i32 (ptr, i32, i32, ptr, ...) %122(ptr noundef %123, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.15)
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %land.lhs.true163, %do.body159
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger160) #8
  br label %do.cond173

do.cond173:                                       ; preds = %if.end172
  br label %do.end174

do.end174:                                        ; preds = %do.cond173
  store i32 -1, ptr %result, align 4, !tbaa !41
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup176

if.end175:                                        ; preds = %lor.lhs.false151
  call void @aws_endpoints_value_clean_up(ptr noundef %val142)
  %124 = load ptr, ptr %error, align 8, !tbaa !4
  %125 = load ptr, ptr %out_resolved_endpoint.addr, align 8, !tbaa !4
  store ptr %124, ptr %125, align 8, !tbaa !4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup176

cleanup176:                                       ; preds = %if.end175, %do.end174
  call void @llvm.lifetime.end.p0(i64 48, ptr %val142) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %error) #8
  br label %cleanup200

sw.bb178:                                         ; preds = %if.end48
  %added_keys = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 1
  call void @aws_array_list_clear(ptr noundef %added_keys)
  %rule_idx179 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 2
  store i64 0, ptr %rule_idx179, align 8, !tbaa !58
  %126 = load ptr, ptr %rule, align 8, !tbaa !4
  %rule_data180 = getelementptr inbounds %struct.aws_endpoints_rule, ptr %126, i32 0, i32 3
  %rules181 = getelementptr inbounds %struct.aws_endpoints_rule_data_tree, ptr %rule_data180, i32 0, i32 0
  %rules182 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %scope, i32 0, i32 3
  store ptr %rules181, ptr %rules182, align 8, !tbaa !60
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup200

sw.default:                                       ; preds = %if.end48
  br label %do.body183

do.body183:                                       ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger184) #8
  %call185 = call ptr @aws_logger_get()
  store ptr %call185, ptr %logger184, align 8, !tbaa !4
  %127 = load ptr, ptr %logger184, align 8, !tbaa !4
  %cmp186 = icmp ne ptr %127, null
  br i1 %cmp186, label %land.lhs.true187, label %if.end196

land.lhs.true187:                                 ; preds = %do.body183
  %128 = load ptr, ptr %logger184, align 8, !tbaa !4
  %vtable188 = getelementptr inbounds %struct.aws_logger, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %vtable188, align 8, !tbaa !11
  %get_log_level189 = getelementptr inbounds %struct.aws_logger_vtable, ptr %129, i32 0, i32 1
  %130 = load ptr, ptr %get_log_level189, align 8, !tbaa !13
  %131 = load ptr, ptr %logger184, align 8, !tbaa !4
  %call190 = call i32 %130(ptr noundef %131, i32 noundef 15363)
  %cmp191 = icmp uge i32 %call190, 2
  br i1 %cmp191, label %if.then192, label %if.end196

if.then192:                                       ; preds = %land.lhs.true187
  %132 = load ptr, ptr %logger184, align 8, !tbaa !4
  %vtable193 = getelementptr inbounds %struct.aws_logger, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %vtable193, align 8, !tbaa !11
  %log194 = getelementptr inbounds %struct.aws_logger_vtable, ptr %133, i32 0, i32 0
  %134 = load ptr, ptr %log194, align 8, !tbaa !15
  %135 = load ptr, ptr %logger184, align 8, !tbaa !4
  %call195 = call i32 (ptr, i32, i32, ptr, ...) %134(ptr noundef %135, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.18)
  br label %if.end196

if.end196:                                        ; preds = %if.then192, %land.lhs.true187, %do.body183
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger184) #8
  br label %do.cond197

do.cond197:                                       ; preds = %if.end196
  br label %do.end198

do.end198:                                        ; preds = %do.cond197
  %call199 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call199, ptr %result, align 4, !tbaa !41
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup200

cleanup200:                                       ; preds = %do.end198, %do.end42, %sw.bb178, %cleanup176, %cleanup136, %if.then45
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_truthy) #8
  br label %cleanup201

cleanup201:                                       ; preds = %do.end, %cleanup200
  call void @llvm.lifetime.end.p0(i64 8, ptr %rule) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup235 [
    i32 3, label %while.cond
    i32 2, label %on_done
  ]

while.end:                                        ; preds = %while.cond
  br label %do.body202

do.body202:                                       ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger203) #8
  %call204 = call ptr @aws_logger_get()
  store ptr %call204, ptr %logger203, align 8, !tbaa !4
  %136 = load ptr, ptr %logger203, align 8, !tbaa !4
  %cmp205 = icmp ne ptr %136, null
  br i1 %cmp205, label %land.lhs.true206, label %if.end215

land.lhs.true206:                                 ; preds = %do.body202
  %137 = load ptr, ptr %logger203, align 8, !tbaa !4
  %vtable207 = getelementptr inbounds %struct.aws_logger, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %vtable207, align 8, !tbaa !11
  %get_log_level208 = getelementptr inbounds %struct.aws_logger_vtable, ptr %138, i32 0, i32 1
  %139 = load ptr, ptr %get_log_level208, align 8, !tbaa !13
  %140 = load ptr, ptr %logger203, align 8, !tbaa !4
  %call209 = call i32 %139(ptr noundef %140, i32 noundef 15363)
  %cmp210 = icmp uge i32 %call209, 2
  br i1 %cmp210, label %if.then211, label %if.end215

if.then211:                                       ; preds = %land.lhs.true206
  %141 = load ptr, ptr %logger203, align 8, !tbaa !4
  %vtable212 = getelementptr inbounds %struct.aws_logger, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %vtable212, align 8, !tbaa !11
  %log213 = getelementptr inbounds %struct.aws_logger_vtable, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %log213, align 8, !tbaa !15
  %144 = load ptr, ptr %logger203, align 8, !tbaa !4
  %call214 = call i32 (ptr, i32, i32, ptr, ...) %143(ptr noundef %144, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.19)
  br label %if.end215

if.end215:                                        ; preds = %if.then211, %land.lhs.true206, %do.body202
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger203) #8
  br label %do.cond216

do.cond216:                                       ; preds = %if.end215
  br label %do.end217

do.end217:                                        ; preds = %do.cond216
  %call218 = call i32 @aws_raise_error(i32 noundef 15368)
  store i32 %call218, ptr %result, align 4, !tbaa !41
  br label %on_done

on_done:                                          ; preds = %do.end217, %cleanup201, %if.then4
  br label %do.body219

do.body219:                                       ; preds = %on_done
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger220) #8
  %call221 = call ptr @aws_logger_get()
  store ptr %call221, ptr %logger220, align 8, !tbaa !4
  %145 = load ptr, ptr %logger220, align 8, !tbaa !4
  %cmp222 = icmp ne ptr %145, null
  br i1 %cmp222, label %land.lhs.true223, label %if.end232

land.lhs.true223:                                 ; preds = %do.body219
  %146 = load ptr, ptr %logger220, align 8, !tbaa !4
  %vtable224 = getelementptr inbounds %struct.aws_logger, ptr %146, i32 0, i32 0
  %147 = load ptr, ptr %vtable224, align 8, !tbaa !11
  %get_log_level225 = getelementptr inbounds %struct.aws_logger_vtable, ptr %147, i32 0, i32 1
  %148 = load ptr, ptr %get_log_level225, align 8, !tbaa !13
  %149 = load ptr, ptr %logger220, align 8, !tbaa !4
  %call226 = call i32 %148(ptr noundef %149, i32 noundef 15363)
  %cmp227 = icmp uge i32 %call226, 5
  br i1 %cmp227, label %if.then228, label %if.end232

if.then228:                                       ; preds = %land.lhs.true223
  %150 = load ptr, ptr %logger220, align 8, !tbaa !4
  %vtable229 = getelementptr inbounds %struct.aws_logger, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %vtable229, align 8, !tbaa !11
  %log230 = getelementptr inbounds %struct.aws_logger_vtable, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %log230, align 8, !tbaa !15
  %153 = load ptr, ptr %logger220, align 8, !tbaa !4
  %154 = load i32, ptr %result, align 4, !tbaa !41
  %call231 = call i32 (ptr, i32, i32, ptr, ...) %152(ptr noundef %153, i32 noundef 5, i32 noundef 15363, ptr noundef @.str.20, i32 noundef %154)
  br label %if.end232

if.end232:                                        ; preds = %if.then228, %land.lhs.true223, %do.body219
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger220) #8
  br label %do.cond233

do.cond233:                                       ; preds = %if.end232
  br label %do.end234

do.end234:                                        ; preds = %do.cond233
  call void @s_scope_clean_up(ptr noundef %scope)
  %155 = load i32, ptr %result, align 4, !tbaa !41
  store i32 %155, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup235

cleanup235:                                       ; preds = %do.end234, %cleanup201
  call void @llvm.lifetime.end.p0(i64 72, ptr %scope) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  br label %return

return:                                           ; preds = %cleanup235, %if.then
  %156 = load i32, ptr %retval, align 4
  ret i32 %156
}

; Function Attrs: nounwind uwtable
define internal i32 @s_init_top_level_scope(ptr noundef %allocator, ptr noundef %context, ptr noundef %ruleset, ptr noundef %partitions, ptr noundef %scope) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %ruleset.addr = alloca ptr, align 8
  %partitions.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %val = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger18 = alloca ptr, align 8
  %iter = alloca %struct.aws_hash_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %key = alloca %struct.aws_byte_cursor, align 8
  %value = alloca ptr, align 8
  %existing = alloca ptr, align 8
  %logger46 = alloca ptr, align 8
  %logger68 = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %logger96 = alloca ptr, align 8
  %logger116 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %ruleset, ptr %ruleset.addr, align 8, !tbaa !4
  store ptr %partitions, ptr %partitions.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8
  store ptr null, ptr %val, align 8, !tbaa !4
  %0 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %rule_idx = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %0, i32 0, i32 2
  store i64 0, ptr %rule_idx, align 8, !tbaa !58
  %1 = load ptr, ptr %ruleset.addr, align 8, !tbaa !4
  %rules = getelementptr inbounds %struct.aws_endpoints_ruleset, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %rules1 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %2, i32 0, i32 3
  store ptr %rules, ptr %rules1, align 8, !tbaa !60
  %3 = load ptr, ptr %partitions.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %partitions2 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %4, i32 0, i32 4
  store ptr %3, ptr %partitions2, align 8, !tbaa !63
  %5 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call i32 @aws_hash_table_init(ptr noundef %values, ptr noundef %6, i64 noundef 0, ptr noundef @aws_hash_byte_cursor_ptr, ptr noundef @aws_endpoints_byte_cursor_eq, ptr noundef null, ptr noundef @s_scope_value_destroy_cb)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %10(ptr noundef %11, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %log, align 8, !tbaa !15
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.11)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end9:                                          ; preds = %entry
  %16 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %call10 = call i32 @s_deep_copy_context_to_scope(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %on_error

if.end13:                                         ; preds = %if.end9
  %19 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %added_keys = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call14 = call i32 @aws_array_list_init_dynamic(ptr noundef %added_keys, ptr noundef %20, i64 noundef 10, i64 noundef 16)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end33

if.then16:                                        ; preds = %if.end13
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger18) #8
  %call19 = call ptr @aws_logger_get()
  store ptr %call19, ptr %logger18, align 8, !tbaa !4
  %21 = load ptr, ptr %logger18, align 8, !tbaa !4
  %cmp20 = icmp ne ptr %21, null
  br i1 %cmp20, label %land.lhs.true21, label %if.end30

land.lhs.true21:                                  ; preds = %do.body17
  %22 = load ptr, ptr %logger18, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %vtable22, align 8, !tbaa !11
  %get_log_level23 = getelementptr inbounds %struct.aws_logger_vtable, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %get_log_level23, align 8, !tbaa !13
  %25 = load ptr, ptr %logger18, align 8, !tbaa !4
  %call24 = call i32 %24(ptr noundef %25, i32 noundef 15363)
  %cmp25 = icmp uge i32 %call24, 2
  br i1 %cmp25, label %if.then26, label %if.end30

if.then26:                                        ; preds = %land.lhs.true21
  %26 = load ptr, ptr %logger18, align 8, !tbaa !4
  %vtable27 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable27, align 8, !tbaa !11
  %log28 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %log28, align 8, !tbaa !15
  %29 = load ptr, ptr %logger18, align 8, !tbaa !4
  %call29 = call i32 (ptr, i32, i32, ptr, ...) %28(ptr noundef %29, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.25)
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true21, %do.body17
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger18) #8
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  br label %on_error

if.end33:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 64, ptr %iter) #8
  %30 = load ptr, ptr %ruleset.addr, align 8, !tbaa !4
  %parameters = getelementptr inbounds %struct.aws_endpoints_ruleset, ptr %30, i32 0, i32 6
  call void @aws_hash_iter_begin(ptr sret(%struct.aws_hash_iter) align 8 %iter, ptr noundef %parameters)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %call34 = call zeroext i1 @aws_hash_iter_done(ptr noundef %iter)
  %lnot = xor i1 %call34, true
  br i1 %lnot, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup135

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #8
  %element = getelementptr inbounds %struct.aws_hash_iter, ptr %iter, i32 0, i32 1
  %key35 = getelementptr inbounds %struct.aws_hash_element, ptr %element, i32 0, i32 0
  %31 = load ptr, ptr %key35, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %31, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8
  %element36 = getelementptr inbounds %struct.aws_hash_iter, ptr %iter, i32 0, i32 1
  %value37 = getelementptr inbounds %struct.aws_hash_element, ptr %element36, i32 0, i32 1
  %32 = load ptr, ptr %value37, align 8, !tbaa !66
  store ptr %32, ptr %value, align 8, !tbaa !4
  %33 = load ptr, ptr %value, align 8, !tbaa !4
  %is_required = getelementptr inbounds %struct.aws_endpoints_parameter, ptr %33, i32 0, i32 6
  %34 = load i8, ptr %is_required, align 8, !tbaa !67, !range !32, !noundef !33
  %tobool38 = trunc i8 %34 to i1
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.body
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

if.end40:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %existing) #8
  store ptr null, ptr %existing, align 8, !tbaa !4
  %35 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values41 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %35, i32 0, i32 0
  %call42 = call i32 @aws_hash_table_find(ptr noundef %values41, ptr noundef %key, ptr noundef %existing)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end62

if.then44:                                        ; preds = %if.end40
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger46) #8
  %call47 = call ptr @aws_logger_get()
  store ptr %call47, ptr %logger46, align 8, !tbaa !4
  %36 = load ptr, ptr %logger46, align 8, !tbaa !4
  %cmp48 = icmp ne ptr %36, null
  br i1 %cmp48, label %land.lhs.true49, label %if.end58

land.lhs.true49:                                  ; preds = %do.body45
  %37 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable50, align 8, !tbaa !11
  %get_log_level51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %get_log_level51, align 8, !tbaa !13
  %40 = load ptr, ptr %logger46, align 8, !tbaa !4
  %call52 = call i32 %39(ptr noundef %40, i32 noundef 15363)
  %cmp53 = icmp uge i32 %call52, 2
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %land.lhs.true49
  %41 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable55 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable55, align 8, !tbaa !11
  %log56 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %log56, align 8, !tbaa !15
  %44 = load ptr, ptr %logger46, align 8, !tbaa !4
  %call57 = call i32 (ptr, i32, i32, ptr, ...) %43(ptr noundef %44, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.11)
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %land.lhs.true49, %do.body45
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger46) #8
  br label %do.cond59

do.cond59:                                        ; preds = %if.end58
  br label %do.end60

do.end60:                                         ; preds = %do.cond59
  %call61 = call i32 @aws_raise_error(i32 noundef 15365)
  store i32 %call61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end40
  %45 = load ptr, ptr %existing, align 8, !tbaa !4
  %cmp63 = icmp eq ptr %45, null
  br i1 %cmp63, label %if.then64, label %if.end132

if.then64:                                        ; preds = %if.end62
  %46 = load ptr, ptr %value, align 8, !tbaa !4
  %has_default_value = getelementptr inbounds %struct.aws_endpoints_parameter, ptr %46, i32 0, i32 4
  %47 = load i8, ptr %has_default_value, align 8, !tbaa !69, !range !32, !noundef !33
  %tobool65 = trunc i8 %47 to i1
  br i1 %tobool65, label %if.end83, label %if.then66

if.then66:                                        ; preds = %if.then64
  br label %do.body67

do.body67:                                        ; preds = %if.then66
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger68) #8
  %call69 = call ptr @aws_logger_get()
  store ptr %call69, ptr %logger68, align 8, !tbaa !4
  %48 = load ptr, ptr %logger68, align 8, !tbaa !4
  %cmp70 = icmp ne ptr %48, null
  br i1 %cmp70, label %land.lhs.true71, label %if.end80

land.lhs.true71:                                  ; preds = %do.body67
  %49 = load ptr, ptr %logger68, align 8, !tbaa !4
  %vtable72 = getelementptr inbounds %struct.aws_logger, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %vtable72, align 8, !tbaa !11
  %get_log_level73 = getelementptr inbounds %struct.aws_logger_vtable, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %get_log_level73, align 8, !tbaa !13
  %52 = load ptr, ptr %logger68, align 8, !tbaa !4
  %call74 = call i32 %51(ptr noundef %52, i32 noundef 15363)
  %cmp75 = icmp uge i32 %call74, 2
  br i1 %cmp75, label %if.then76, label %if.end80

if.then76:                                        ; preds = %land.lhs.true71
  %53 = load ptr, ptr %logger68, align 8, !tbaa !4
  %vtable77 = getelementptr inbounds %struct.aws_logger, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %vtable77, align 8, !tbaa !11
  %log78 = getelementptr inbounds %struct.aws_logger_vtable, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %log78, align 8, !tbaa !15
  %56 = load ptr, ptr %logger68, align 8, !tbaa !4
  %call79 = call i32 (ptr, i32, i32, ptr, ...) %55(ptr noundef %56, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.26)
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %land.lhs.true71, %do.body67
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger68) #8
  br label %do.cond81

do.cond81:                                        ; preds = %if.end80
  br label %do.end82

do.end82:                                         ; preds = %do.cond81
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end83:                                         ; preds = %if.then64
  %57 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %58 = getelementptr inbounds { i64, ptr }, ptr %key, i32 0, i32 0
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds { i64, ptr }, ptr %key, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  %call84 = call ptr @aws_endpoints_scope_value_new(ptr noundef %57, i64 %59, ptr %61)
  store ptr %call84, ptr %val, align 8, !tbaa !4
  %62 = load ptr, ptr %value, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_parameter, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %type, align 8, !tbaa !70
  switch i32 %63, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb88
  ]

sw.bb:                                            ; preds = %if.end83
  %64 = load ptr, ptr %val, align 8, !tbaa !4
  %value85 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %64, i32 0, i32 2
  %type86 = getelementptr inbounds %struct.aws_endpoints_value, ptr %value85, i32 0, i32 0
  store i32 2, ptr %type86, align 8, !tbaa !37
  %65 = load ptr, ptr %val, align 8, !tbaa !4
  %value87 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %65, i32 0, i32 2
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %value87, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #8
  %66 = load ptr, ptr %value, align 8, !tbaa !4
  %default_value = getelementptr inbounds %struct.aws_endpoints_parameter, ptr %66, i32 0, i32 5
  %67 = getelementptr inbounds { i64, ptr }, ptr %default_value, i32 0, i32 0
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds { i64, ptr }, ptr %default_value, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  call void @aws_endpoints_non_owning_cursor_create(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, i64 %68, ptr %70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #8
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end83
  %71 = load ptr, ptr %val, align 8, !tbaa !4
  %value89 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %71, i32 0, i32 2
  %type90 = getelementptr inbounds %struct.aws_endpoints_value, ptr %value89, i32 0, i32 0
  store i32 3, ptr %type90, align 8, !tbaa !37
  %72 = load ptr, ptr %value, align 8, !tbaa !4
  %default_value91 = getelementptr inbounds %struct.aws_endpoints_parameter, ptr %72, i32 0, i32 5
  %73 = load i8, ptr %default_value91, align 8, !tbaa !10, !range !32, !noundef !33
  %tobool92 = trunc i8 %73 to i1
  %74 = load ptr, ptr %val, align 8, !tbaa !4
  %value93 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %74, i32 0, i32 2
  %v94 = getelementptr inbounds %struct.aws_endpoints_value, ptr %value93, i32 0, i32 1
  %frombool = zext i1 %tobool92 to i8
  store i8 %frombool, ptr %v94, align 8, !tbaa !10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end83
  br label %do.body95

do.body95:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger96) #8
  %call97 = call ptr @aws_logger_get()
  store ptr %call97, ptr %logger96, align 8, !tbaa !4
  %75 = load ptr, ptr %logger96, align 8, !tbaa !4
  %cmp98 = icmp ne ptr %75, null
  br i1 %cmp98, label %land.lhs.true99, label %if.end108

land.lhs.true99:                                  ; preds = %do.body95
  %76 = load ptr, ptr %logger96, align 8, !tbaa !4
  %vtable100 = getelementptr inbounds %struct.aws_logger, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %vtable100, align 8, !tbaa !11
  %get_log_level101 = getelementptr inbounds %struct.aws_logger_vtable, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %get_log_level101, align 8, !tbaa !13
  %79 = load ptr, ptr %logger96, align 8, !tbaa !4
  %call102 = call i32 %78(ptr noundef %79, i32 noundef 15363)
  %cmp103 = icmp uge i32 %call102, 2
  br i1 %cmp103, label %if.then104, label %if.end108

if.then104:                                       ; preds = %land.lhs.true99
  %80 = load ptr, ptr %logger96, align 8, !tbaa !4
  %vtable105 = getelementptr inbounds %struct.aws_logger, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %vtable105, align 8, !tbaa !11
  %log106 = getelementptr inbounds %struct.aws_logger_vtable, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %log106, align 8, !tbaa !15
  %83 = load ptr, ptr %logger96, align 8, !tbaa !4
  %call107 = call i32 (ptr, i32, i32, ptr, ...) %82(ptr noundef %83, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.27)
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %land.lhs.true99, %do.body95
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger96) #8
  br label %do.cond109

do.cond109:                                       ; preds = %if.end108
  br label %do.end110

do.end110:                                        ; preds = %do.cond109
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb88, %sw.bb
  %84 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values111 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %val, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %85, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %name, i32 0, i32 0
  %86 = load ptr, ptr %val, align 8, !tbaa !4
  %call112 = call i32 @aws_hash_table_put(ptr noundef %values111, ptr noundef %cur, ptr noundef %86, ptr noundef null)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then114, label %if.end131

if.then114:                                       ; preds = %sw.epilog
  br label %do.body115

do.body115:                                       ; preds = %if.then114
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger116) #8
  %call117 = call ptr @aws_logger_get()
  store ptr %call117, ptr %logger116, align 8, !tbaa !4
  %87 = load ptr, ptr %logger116, align 8, !tbaa !4
  %cmp118 = icmp ne ptr %87, null
  br i1 %cmp118, label %land.lhs.true119, label %if.end128

land.lhs.true119:                                 ; preds = %do.body115
  %88 = load ptr, ptr %logger116, align 8, !tbaa !4
  %vtable120 = getelementptr inbounds %struct.aws_logger, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %vtable120, align 8, !tbaa !11
  %get_log_level121 = getelementptr inbounds %struct.aws_logger_vtable, ptr %89, i32 0, i32 1
  %90 = load ptr, ptr %get_log_level121, align 8, !tbaa !13
  %91 = load ptr, ptr %logger116, align 8, !tbaa !4
  %call122 = call i32 %90(ptr noundef %91, i32 noundef 15363)
  %cmp123 = icmp uge i32 %call122, 2
  br i1 %cmp123, label %if.then124, label %if.end128

if.then124:                                       ; preds = %land.lhs.true119
  %92 = load ptr, ptr %logger116, align 8, !tbaa !4
  %vtable125 = getelementptr inbounds %struct.aws_logger, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %vtable125, align 8, !tbaa !11
  %log126 = getelementptr inbounds %struct.aws_logger_vtable, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %log126, align 8, !tbaa !15
  %95 = load ptr, ptr %logger116, align 8, !tbaa !4
  %call127 = call i32 (ptr, i32, i32, ptr, ...) %94(ptr noundef %95, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.28)
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %land.lhs.true119, %do.body115
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger116) #8
  br label %do.cond129

do.cond129:                                       ; preds = %if.end128
  br label %do.end130

do.end130:                                        ; preds = %do.cond129
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end131:                                        ; preds = %sw.epilog
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end62
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end130, %do.end110, %do.end82, %if.end132, %do.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %existing) #8
  br label %cleanup133

cleanup133:                                       ; preds = %cleanup, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup135 [
    i32 0, label %cleanup.cont
    i32 9, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup133
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup133
  call void @aws_hash_iter_next(ptr noundef %iter)
  br label %for.cond

cleanup135:                                       ; preds = %cleanup133, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 64, ptr %iter) #8
  %cleanup.dest136 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest136, label %cleanup138 [
    i32 7, label %for.end
    i32 4, label %on_error
  ]

for.end:                                          ; preds = %cleanup135
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138

on_error:                                         ; preds = %cleanup135, %do.end32, %if.then12, %do.end
  %96 = load ptr, ptr %val, align 8, !tbaa !4
  call void @aws_endpoints_scope_value_destroy(ptr noundef %96)
  %call137 = call i32 @aws_raise_error(i32 noundef 15365)
  store i32 %call137, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138

cleanup138:                                       ; preds = %on_error, %for.end, %cleanup135
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_conditions(ptr noundef %allocator, ptr noundef %conditions, ptr noundef %scope, ptr noundef %out_is_truthy) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %conditions.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_is_truthy.addr = alloca ptr, align 8
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %condition = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger14 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %conditions, ptr %conditions.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  store ptr %out_is_truthy, ptr %out_is_truthy.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out_is_truthy.addr, align 8, !tbaa !4
  store i8 1, ptr %0, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #8
  store i64 0, ptr %idx, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %idx, align 8, !tbaa !8
  %2 = load ptr, ptr %conditions.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %2)
  %cmp = icmp ult i64 %1, %call
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %condition) #8
  store ptr null, ptr %condition, align 8, !tbaa !4
  %3 = load ptr, ptr %conditions.addr, align 8, !tbaa !4
  %4 = load i64, ptr %idx, align 8, !tbaa !8
  %call1 = call i32 @aws_array_list_get_at_ptr(ptr noundef %3, ptr noundef %condition, i64 noundef %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %5, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %call4 = call i32 %8(ptr noundef %9, i32 noundef 15363)
  %cmp5 = icmp uge i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable7 = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable7, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %log, align 8, !tbaa !15
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %call8 = call i32 (ptr, i32, i32, ptr, ...) %12(ptr noundef %13, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.35)
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %14 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %condition, align 8, !tbaa !4
  %16 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %out_is_truthy.addr, align 8, !tbaa !4
  %call10 = call i32 @s_resolve_one_condition(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end29

if.then12:                                        ; preds = %if.end9
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger14) #8
  %call15 = call ptr @aws_logger_get()
  store ptr %call15, ptr %logger14, align 8, !tbaa !4
  %18 = load ptr, ptr %logger14, align 8, !tbaa !4
  %cmp16 = icmp ne ptr %18, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end26

land.lhs.true17:                                  ; preds = %do.body13
  %19 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable18, align 8, !tbaa !11
  %get_log_level19 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %get_log_level19, align 8, !tbaa !13
  %22 = load ptr, ptr %logger14, align 8, !tbaa !4
  %call20 = call i32 %21(ptr noundef %22, i32 noundef 15363)
  %cmp21 = icmp uge i32 %call20, 2
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %land.lhs.true17
  %23 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable23, align 8, !tbaa !11
  %log24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %log24, align 8, !tbaa !15
  %26 = load ptr, ptr %logger14, align 8, !tbaa !4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) %25(ptr noundef %26, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.36)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true17, %do.body13
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger14) #8
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end9
  %27 = load ptr, ptr %out_is_truthy.addr, align 8, !tbaa !4
  %28 = load i8, ptr %27, align 1, !tbaa !19, !range !32, !noundef !33
  %tobool30 = trunc i8 %28 to i1
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end29
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end, %if.end32, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %condition) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %29 = load i64, ptr %idx, align 8, !tbaa !8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %idx, align 8, !tbaa !8
  br label %for.cond

cleanup33:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #8
  %cleanup.dest34 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest34, label %unreachable [
    i32 2, label %for.end
    i32 7, label %on_error
  ]

for.end:                                          ; preds = %cleanup33
  store i32 0, ptr %retval, align 4
  br label %return

on_error:                                         ; preds = %cleanup33
  %30 = load ptr, ptr %out_is_truthy.addr, align 8, !tbaa !4
  store i8 0, ptr %30, align 1, !tbaa !19
  %call35 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call35, ptr %retval, align 4
  br label %return

return:                                           ; preds = %on_error, %for.end
  %31 = load i32, ptr %retval, align 4
  ret i32 %31

unreachable:                                      ; preds = %cleanup33
  unreachable
}

declare i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef, ptr noundef, i64, ptr) #2

declare i32 @aws_byte_buf_init_from_resolved_templated_string(ptr noundef, ptr noundef, i64, ptr, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_template(i64 %template.coerce0, ptr %template.coerce1, ptr noundef %user_data, ptr noundef %out_cursor) #0 {
entry:
  %retval = alloca i32, align 4
  %template = alloca %struct.aws_byte_cursor, align 8
  %user_data.addr = alloca ptr, align 8
  %out_cursor.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, ptr }, ptr %template, i32 0, i32 0
  store i64 %template.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %template, i32 0, i32 1
  store ptr %template.coerce1, ptr %1, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %out_cursor, ptr %out_cursor.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8
  %2 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %2, ptr %data, align 8, !tbaa !4
  %3 = load ptr, ptr %data, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.resolve_template_callback_data, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator, align 8, !tbaa !28
  %5 = load ptr, ptr %data, align 8, !tbaa !4
  %scope = getelementptr inbounds %struct.resolve_template_callback_data, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %scope, align 8, !tbaa !30
  %7 = load ptr, ptr %out_cursor.addr, align 8, !tbaa !4
  %8 = getelementptr inbounds { i64, ptr }, ptr %template, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds { i64, ptr }, ptr %template, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %call = call i32 @s_resolve_templated_value_with_pathing(ptr noundef %4, ptr noundef %6, i64 %9, ptr %11, ptr noundef %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %12, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %16 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %15(ptr noundef %16, i32 noundef 15363)
  %cmp3 = icmp uge i32 %call2, 2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %17 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vtable5, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %log, align 8, !tbaa !15
  %20 = load ptr, ptr %logger, align 8, !tbaa !4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %19(ptr noundef %20, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.42)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call7 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_headers(ptr noundef %allocator, ptr noundef %scope, ptr noundef %headers, ptr noundef %out_headers) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %headers.addr = alloca ptr, align 8
  %out_headers.addr = alloca ptr, align 8
  %value = alloca %struct.aws_endpoints_value, align 8
  %resolved_headers = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %iter = alloca %struct.aws_hash_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %key = alloca ptr, align 8
  %header_list = alloca ptr, align 8
  %i = alloca i64, align 8
  %expr = alloca ptr, align 8
  %logger25 = alloca ptr, align 8
  %logger46 = alloca ptr, align 8
  %str = alloca ptr, align 8
  %logger67 = alloca ptr, align 8
  %logger91 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !4
  store ptr %out_headers, ptr %out_headers.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %value) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %resolved_headers) #8
  store ptr null, ptr %resolved_headers, align 8, !tbaa !4
  %0 = load ptr, ptr %out_headers.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %headers.addr, align 8, !tbaa !4
  %call = call i64 @aws_hash_table_get_entry_count(ptr noundef %2)
  %call1 = call i32 @aws_hash_table_init(ptr noundef %0, ptr noundef %1, i64 noundef %call, ptr noundef @aws_hash_string, ptr noundef @aws_hash_callback_string_eq, ptr noundef @aws_hash_callback_string_destroy, ptr noundef @s_callback_headers_destroy)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call2 = call ptr @aws_logger_get()
  store ptr %call2, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call3 = call i32 %6(ptr noundef %7, i32 noundef 15363)
  %cmp4 = icmp uge i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable6 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable6, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !15
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call7 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.50)
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end8:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr %iter) #8
  %12 = load ptr, ptr %headers.addr, align 8, !tbaa !4
  call void @aws_hash_iter_begin(ptr sret(%struct.aws_hash_iter) align 8 %iter, ptr noundef %12)
  br label %for.cond

for.cond:                                         ; preds = %for.inc111, %if.end8
  %call9 = call zeroext i1 @aws_hash_iter_done(ptr noundef %iter)
  %lnot = xor i1 %call9, true
  br i1 %lnot, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup112

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #8
  %element = getelementptr inbounds %struct.aws_hash_iter, ptr %iter, i32 0, i32 1
  %key10 = getelementptr inbounds %struct.aws_hash_element, ptr %element, i32 0, i32 0
  %13 = load ptr, ptr %key10, align 8, !tbaa !64
  store ptr %13, ptr %key, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %header_list) #8
  %element11 = getelementptr inbounds %struct.aws_hash_iter, ptr %iter, i32 0, i32 1
  %value12 = getelementptr inbounds %struct.aws_hash_element, ptr %element11, i32 0, i32 1
  %14 = load ptr, ptr %value12, align 8, !tbaa !66
  store ptr %14, ptr %header_list, align 8, !tbaa !4
  %15 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call13 = call ptr @aws_mem_calloc(ptr noundef %15, i64 noundef 1, i64 noundef 40)
  store ptr %call13, ptr %resolved_headers, align 8, !tbaa !4
  %16 = load ptr, ptr %resolved_headers, align 8, !tbaa !4
  %17 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %header_list, align 8, !tbaa !4
  %call14 = call i64 @aws_array_list_length(ptr noundef %18)
  %call15 = call i32 @aws_array_list_init_dynamic(ptr noundef %16, ptr noundef %17, i64 noundef %call14, i64 noundef 8)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %for.body
  %19 = load i64, ptr %i, align 8, !tbaa !8
  %20 = load ptr, ptr %header_list, align 8, !tbaa !4
  %call17 = call i64 @aws_array_list_length(ptr noundef %20)
  %cmp18 = icmp ult i64 %19, %call17
  br i1 %cmp18, label %for.body20, label %for.cond.cleanup19

for.cond.cleanup19:                               ; preds = %for.cond16
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup84

for.body20:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 8, ptr %expr) #8
  store ptr null, ptr %expr, align 8, !tbaa !4
  %21 = load ptr, ptr %header_list, align 8, !tbaa !4
  %22 = load i64, ptr %i, align 8, !tbaa !8
  %call21 = call i32 @aws_array_list_get_at_ptr(ptr noundef %21, ptr noundef %expr, i64 noundef %22)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end40

if.then23:                                        ; preds = %for.body20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger25) #8
  %call26 = call ptr @aws_logger_get()
  store ptr %call26, ptr %logger25, align 8, !tbaa !4
  %23 = load ptr, ptr %logger25, align 8, !tbaa !4
  %cmp27 = icmp ne ptr %23, null
  br i1 %cmp27, label %land.lhs.true28, label %if.end37

land.lhs.true28:                                  ; preds = %do.body24
  %24 = load ptr, ptr %logger25, align 8, !tbaa !4
  %vtable29 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable29, align 8, !tbaa !11
  %get_log_level30 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %get_log_level30, align 8, !tbaa !13
  %27 = load ptr, ptr %logger25, align 8, !tbaa !4
  %call31 = call i32 %26(ptr noundef %27, i32 noundef 15363)
  %cmp32 = icmp uge i32 %call31, 2
  br i1 %cmp32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %land.lhs.true28
  %28 = load ptr, ptr %logger25, align 8, !tbaa !4
  %vtable34 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable34, align 8, !tbaa !11
  %log35 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %log35, align 8, !tbaa !15
  %31 = load ptr, ptr %logger25, align 8, !tbaa !4
  %call36 = call i32 (ptr, i32, i32, ptr, ...) %30(ptr noundef %31, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.51)
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %land.lhs.true28, %do.body24
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger25) #8
  br label %do.cond38

do.cond38:                                        ; preds = %if.end37
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

if.end40:                                         ; preds = %for.body20
  %32 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %expr, align 8, !tbaa !4
  %34 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %call41 = call i32 @s_resolve_expr(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %value)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end40
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %value, i32 0, i32 0
  %35 = load i32, ptr %type, align 8, !tbaa !16
  %cmp43 = icmp ne i32 %35, 2
  br i1 %cmp43, label %if.then44, label %if.end61

if.then44:                                        ; preds = %lor.lhs.false, %if.end40
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger46) #8
  %call47 = call ptr @aws_logger_get()
  store ptr %call47, ptr %logger46, align 8, !tbaa !4
  %36 = load ptr, ptr %logger46, align 8, !tbaa !4
  %cmp48 = icmp ne ptr %36, null
  br i1 %cmp48, label %land.lhs.true49, label %if.end58

land.lhs.true49:                                  ; preds = %do.body45
  %37 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %vtable50, align 8, !tbaa !11
  %get_log_level51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %get_log_level51, align 8, !tbaa !13
  %40 = load ptr, ptr %logger46, align 8, !tbaa !4
  %call52 = call i32 %39(ptr noundef %40, i32 noundef 15363)
  %cmp53 = icmp uge i32 %call52, 2
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %land.lhs.true49
  %41 = load ptr, ptr %logger46, align 8, !tbaa !4
  %vtable55 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable55, align 8, !tbaa !11
  %log56 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %log56, align 8, !tbaa !15
  %44 = load ptr, ptr %logger46, align 8, !tbaa !4
  %call57 = call i32 (ptr, i32, i32, ptr, ...) %43(ptr noundef %44, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.52)
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %land.lhs.true49, %do.body45
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger46) #8
  br label %do.cond59

do.cond59:                                        ; preds = %if.end58
  br label %do.end60

do.end60:                                         ; preds = %do.cond59
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

if.end61:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #8
  %45 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %value, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %call62 = call ptr @aws_string_new_from_cursor(ptr noundef %45, ptr noundef %cur)
  store ptr %call62, ptr %str, align 8, !tbaa !4
  %46 = load ptr, ptr %resolved_headers, align 8, !tbaa !4
  %call63 = call i32 @aws_array_list_push_back(ptr noundef %46, ptr noundef %str)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end82

if.then65:                                        ; preds = %if.end61
  %47 = load ptr, ptr %str, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %47)
  br label %do.body66

do.body66:                                        ; preds = %if.then65
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger67) #8
  %call68 = call ptr @aws_logger_get()
  store ptr %call68, ptr %logger67, align 8, !tbaa !4
  %48 = load ptr, ptr %logger67, align 8, !tbaa !4
  %cmp69 = icmp ne ptr %48, null
  br i1 %cmp69, label %land.lhs.true70, label %if.end79

land.lhs.true70:                                  ; preds = %do.body66
  %49 = load ptr, ptr %logger67, align 8, !tbaa !4
  %vtable71 = getelementptr inbounds %struct.aws_logger, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %vtable71, align 8, !tbaa !11
  %get_log_level72 = getelementptr inbounds %struct.aws_logger_vtable, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %get_log_level72, align 8, !tbaa !13
  %52 = load ptr, ptr %logger67, align 8, !tbaa !4
  %call73 = call i32 %51(ptr noundef %52, i32 noundef 15363)
  %cmp74 = icmp uge i32 %call73, 2
  br i1 %cmp74, label %if.then75, label %if.end79

if.then75:                                        ; preds = %land.lhs.true70
  %53 = load ptr, ptr %logger67, align 8, !tbaa !4
  %vtable76 = getelementptr inbounds %struct.aws_logger, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %vtable76, align 8, !tbaa !11
  %log77 = getelementptr inbounds %struct.aws_logger_vtable, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %log77, align 8, !tbaa !15
  %56 = load ptr, ptr %logger67, align 8, !tbaa !4
  %call78 = call i32 (ptr, i32, i32, ptr, ...) %55(ptr noundef %56, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.53)
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %land.lhs.true70, %do.body66
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger67) #8
  br label %do.cond80

do.cond80:                                        ; preds = %if.end79
  br label %do.end81

do.end81:                                         ; preds = %do.cond80
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %if.end61
  call void @aws_endpoints_value_clean_up(ptr noundef %value)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %if.end82
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #8
  br label %cleanup83

cleanup83:                                        ; preds = %do.end60, %do.end39, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %expr) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup83
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %57 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %57, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond16

cleanup84:                                        ; preds = %cleanup83, %for.cond.cleanup19
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %cleanup107 [
    i32 8, label %for.end
  ]

for.end:                                          ; preds = %cleanup84
  %58 = load ptr, ptr %out_headers.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %key, align 8, !tbaa !4
  %call86 = call ptr @aws_string_clone_or_reuse(ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %resolved_headers, align 8, !tbaa !4
  %call87 = call i32 @aws_hash_table_put(ptr noundef %58, ptr noundef %call86, ptr noundef %61, ptr noundef null)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end106

if.then89:                                        ; preds = %for.end
  br label %do.body90

do.body90:                                        ; preds = %if.then89
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger91) #8
  %call92 = call ptr @aws_logger_get()
  store ptr %call92, ptr %logger91, align 8, !tbaa !4
  %62 = load ptr, ptr %logger91, align 8, !tbaa !4
  %cmp93 = icmp ne ptr %62, null
  br i1 %cmp93, label %land.lhs.true94, label %if.end103

land.lhs.true94:                                  ; preds = %do.body90
  %63 = load ptr, ptr %logger91, align 8, !tbaa !4
  %vtable95 = getelementptr inbounds %struct.aws_logger, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %vtable95, align 8, !tbaa !11
  %get_log_level96 = getelementptr inbounds %struct.aws_logger_vtable, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %get_log_level96, align 8, !tbaa !13
  %66 = load ptr, ptr %logger91, align 8, !tbaa !4
  %call97 = call i32 %65(ptr noundef %66, i32 noundef 15363)
  %cmp98 = icmp uge i32 %call97, 2
  br i1 %cmp98, label %if.then99, label %if.end103

if.then99:                                        ; preds = %land.lhs.true94
  %67 = load ptr, ptr %logger91, align 8, !tbaa !4
  %vtable100 = getelementptr inbounds %struct.aws_logger, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %vtable100, align 8, !tbaa !11
  %log101 = getelementptr inbounds %struct.aws_logger_vtable, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %log101, align 8, !tbaa !15
  %70 = load ptr, ptr %logger91, align 8, !tbaa !4
  %call102 = call i32 (ptr, i32, i32, ptr, ...) %69(ptr noundef %70, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.53)
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %land.lhs.true94, %do.body90
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger91) #8
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end106:                                        ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %do.end105, %if.end106, %cleanup84
  call void @llvm.lifetime.end.p0(i64 8, ptr %header_list) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #8
  %cleanup.dest109 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest109, label %cleanup112 [
    i32 0, label %cleanup.cont110
  ]

cleanup.cont110:                                  ; preds = %cleanup107
  br label %for.inc111

for.inc111:                                       ; preds = %cleanup.cont110
  call void @aws_hash_iter_next(ptr noundef %iter)
  br label %for.cond

cleanup112:                                       ; preds = %cleanup107, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 64, ptr %iter) #8
  %cleanup.dest113 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest113, label %cleanup119 [
    i32 5, label %for.end114
    i32 4, label %on_error
  ]

for.end114:                                       ; preds = %cleanup112
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119

on_error:                                         ; preds = %cleanup112, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %value)
  %71 = load ptr, ptr %resolved_headers, align 8, !tbaa !4
  %cmp115 = icmp ne ptr %71, null
  br i1 %cmp115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %on_error
  %72 = load ptr, ptr %resolved_headers, align 8, !tbaa !4
  call void @s_callback_headers_destroy(ptr noundef %72)
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %on_error
  %73 = load ptr, ptr %out_headers.addr, align 8, !tbaa !4
  call void @aws_hash_table_clean_up(ptr noundef %73)
  %call118 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call118, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119

cleanup119:                                       ; preds = %if.end117, %for.end114, %cleanup112
  call void @llvm.lifetime.end.p0(i64 8, ptr %resolved_headers) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %value) #8
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal void @s_scope_clean_up(ptr noundef %scope) #0 {
entry:
  %scope.addr = alloca ptr, align 8
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %0, i32 0, i32 0
  call void @aws_hash_table_clean_up(ptr noundef %values)
  %1 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %added_keys = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %1, i32 0, i32 1
  call void @aws_array_list_clean_up(ptr noundef %added_keys)
  ret void
}

declare void @aws_raise_error_private(i32 noundef) #2

declare i32 @aws_hash_table_find(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @aws_endpoints_dispatch_standard_lib_fn_resolve(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #6

declare void @aws_hash_table_clean_up(ptr noundef) #2

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

declare ptr @aws_endpoints_ruleset_release(ptr noundef) #2

declare ptr @aws_partitions_config_release(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_deep_copy_context_to_scope(ptr noundef %allocator, ptr noundef %context, ptr noundef %scope) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %new_value = alloca ptr, align 8
  %iter = alloca %struct.aws_hash_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %context_value = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger19 = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_value) #8
  store ptr null, ptr %new_value, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 64, ptr %iter) #8
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_request_context, ptr %0, i32 0, i32 2
  call void @aws_hash_iter_begin(ptr sret(%struct.aws_hash_iter) align 8 %iter, ptr noundef %values)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @aws_hash_iter_done(ptr noundef %iter)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %context_value) #8
  %element = getelementptr inbounds %struct.aws_hash_iter, ptr %iter, i32 0, i32 1
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %element, i32 0, i32 1
  %1 = load ptr, ptr %value, align 8, !tbaa !66
  store ptr %1, ptr %context_value, align 8, !tbaa !4
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %context_value, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %3, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %name, i32 0, i32 0
  %4 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %call1 = call ptr @aws_endpoints_scope_value_new(ptr noundef %2, i64 %5, ptr %7)
  store ptr %call1, ptr %new_value, align 8, !tbaa !4
  %8 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %context_value, align 8, !tbaa !4
  %value2 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %new_value, align 8, !tbaa !4
  %value3 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %10, i32 0, i32 2
  %call4 = call i32 @aws_endpoints_deep_copy_parameter_value(ptr noundef %8, ptr noundef %value2, ptr noundef %value3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call5 = call ptr @aws_logger_get()
  store ptr %call5, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %11, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %call6 = call i32 %14(ptr noundef %15, i32 noundef 15363)
  %cmp7 = icmp uge i32 %call6, 2
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable9 = getelementptr inbounds %struct.aws_logger, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %vtable9, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %log, align 8, !tbaa !15
  %19 = load ptr, ptr %logger, align 8, !tbaa !4
  %call10 = call i32 (ptr, i32, i32, ptr, ...) %18(ptr noundef %19, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.29)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %20 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values12 = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %new_value, align 8, !tbaa !4
  %name13 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %21, i32 0, i32 1
  %cur14 = getelementptr inbounds %struct.aws_owning_cursor, ptr %name13, i32 0, i32 0
  %22 = load ptr, ptr %new_value, align 8, !tbaa !4
  %call15 = call i32 @aws_hash_table_put(ptr noundef %values12, ptr noundef %cur14, ptr noundef %22, ptr noundef null)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end34

if.then17:                                        ; preds = %if.end11
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger19) #8
  %call20 = call ptr @aws_logger_get()
  store ptr %call20, ptr %logger19, align 8, !tbaa !4
  %23 = load ptr, ptr %logger19, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %23, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %do.body18
  %24 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vtable23, align 8, !tbaa !11
  %get_log_level24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %get_log_level24, align 8, !tbaa !13
  %27 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call25 = call i32 %26(ptr noundef %27, i32 noundef 15363)
  %cmp26 = icmp uge i32 %call25, 2
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %land.lhs.true22
  %28 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable28 = getelementptr inbounds %struct.aws_logger, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %vtable28, align 8, !tbaa !11
  %log29 = getelementptr inbounds %struct.aws_logger_vtable, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %log29, align 8, !tbaa !15
  %31 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call30 = call i32 (ptr, i32, i32, ptr, ...) %30(ptr noundef %31, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.30)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true22, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger19) #8
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end, %if.end34
  call void @llvm.lifetime.end.p0(i64 8, ptr %context_value) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  call void @aws_hash_iter_next(ptr noundef %iter)
  br label %for.cond

cleanup35:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 64, ptr %iter) #8
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %cleanup38 [
    i32 2, label %for.end
    i32 7, label %on_error
  ]

for.end:                                          ; preds = %cleanup35
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

on_error:                                         ; preds = %cleanup35
  %32 = load ptr, ptr %new_value, align 8, !tbaa !4
  call void @aws_endpoints_scope_value_destroy(ptr noundef %32)
  %call37 = call i32 @aws_raise_error(i32 noundef 15365)
  store i32 %call37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %on_error, %for.end, %cleanup35
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_value) #8
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_init_dynamic(ptr noalias noundef %list, ptr noundef %alloc, i64 noundef %initial_item_allocation, i64 noundef %item_size) #4 {
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
  store i64 %initial_item_allocation, ptr %initial_item_allocation.addr, align 8, !tbaa !8
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.31, ptr noundef @.str.24, i32 noundef 24) #9
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
  call void @aws_fatal_assert(ptr noundef @.str.32, ptr noundef @.str.24, i32 noundef 25) #9
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_size.addr, align 8, !tbaa !8
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.33, ptr noundef @.str.24, i32 noundef 26) #9
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
  store i64 0, ptr %allocation_size, align 8, !tbaa !8
  %4 = load i64, ptr %initial_item_allocation.addr, align 8, !tbaa !8
  %5 = load i64, ptr %item_size.addr, align 8, !tbaa !8
  %call = call i32 @aws_mul_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %allocation_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end12
  br label %error

if.end14:                                         ; preds = %do.end12
  %6 = load i64, ptr %allocation_size, align 8, !tbaa !8
  %cmp15 = icmp ugt i64 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %7 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %8 = load i64, ptr %allocation_size, align 8, !tbaa !8
  %call17 = call ptr @aws_mem_acquire(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  store ptr %call17, ptr %data, align 8, !tbaa !23
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data18 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data18, align 8, !tbaa !23
  %tobool19 = icmp ne ptr %11, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then16
  br label %error

if.end21:                                         ; preds = %if.then16
  %12 = load i64, ptr %allocation_size, align 8, !tbaa !8
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 1
  store i64 %12, ptr %current_size, align 8, !tbaa !71
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %14 = load i64, ptr %item_size.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size23 = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 3
  store i64 %14, ptr %item_size23, align 8, !tbaa !25
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc24 = getelementptr inbounds %struct.aws_array_list, ptr %17, i32 0, i32 0
  store ptr %16, ptr %alloc24, align 8, !tbaa !72
  br label %do.body25

do.body25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size26 = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %current_size26, align 8, !tbaa !71
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body25
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data28 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data28, align 8, !tbaa !23
  %tobool29 = icmp ne ptr %21, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.34, ptr noundef @.str.24, i32 noundef 49) #9
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

declare void @aws_hash_iter_begin(ptr sret(%struct.aws_hash_iter) align 8, ptr noundef) #2

declare zeroext i1 @aws_hash_iter_done(ptr noundef) #2

declare void @aws_endpoints_non_owning_cursor_create(ptr sret(%struct.aws_owning_cursor) align 8, i64, ptr) #2

declare void @aws_hash_iter_next(ptr noundef) #2

declare i32 @aws_endpoints_deep_copy_parameter_value(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_mul_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
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

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_one_condition(ptr noundef %allocator, ptr noundef %condition, ptr noundef %scope, ptr noundef %out_is_truthy) #0 {
entry:
  %retval = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %condition.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_is_truthy.addr = alloca ptr, align 8
  %scope_value = alloca ptr, align 8
  %val = alloca %struct.aws_endpoints_value, align 8
  %logger = alloca ptr, align 8
  %logger19 = alloca ptr, align 8
  %was_created = alloca i32, align 4
  %logger41 = alloca ptr, align 8
  %logger60 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %condition, ptr %condition.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  store ptr %out_is_truthy, ptr %out_is_truthy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope_value) #8
  store ptr null, ptr %scope_value, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %val) #8
  %0 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %condition.addr, align 8, !tbaa !4
  %expr = getelementptr inbounds %struct.aws_endpoints_condition, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %call = call i32 @s_resolve_expr(ptr noundef %0, ptr noundef %expr, ptr noundef %2, ptr noundef %val)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %6(ptr noundef %7, i32 noundef 15363)
  %cmp3 = icmp uge i32 %call2, 2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable5, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !15
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.37)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end7:                                          ; preds = %entry
  %call8 = call zeroext i1 @is_value_truthy(ptr noundef %val)
  %12 = load ptr, ptr %out_is_truthy.addr, align 8, !tbaa !4
  %frombool = zext i1 %call8 to i8
  store i8 %frombool, ptr %12, align 1, !tbaa !19
  %13 = load ptr, ptr %out_is_truthy.addr, align 8, !tbaa !4
  %14 = load i8, ptr %13, align 1, !tbaa !19, !range !32, !noundef !33
  %tobool9 = trunc i8 %14 to i1
  br i1 %tobool9, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %if.end7
  %15 = load ptr, ptr %condition.addr, align 8, !tbaa !4
  %assign = getelementptr inbounds %struct.aws_endpoints_condition, ptr %15, i32 0, i32 1
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %assign, i32 0, i32 0
  %16 = load i64, ptr %len, align 8, !tbaa !73
  %cmp11 = icmp ugt i64 %16, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true10
  %17 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %condition.addr, align 8, !tbaa !4
  %assign13 = getelementptr inbounds %struct.aws_endpoints_condition, ptr %18, i32 0, i32 1
  %19 = getelementptr inbounds { i64, ptr }, ptr %assign13, i32 0, i32 0
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds { i64, ptr }, ptr %assign13, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %call14 = call ptr @aws_endpoints_scope_value_new(ptr noundef %17, i64 %20, ptr %22)
  store ptr %call14, ptr %scope_value, align 8, !tbaa !4
  %23 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %23, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %val, i64 48, i1 false), !tbaa.struct !18
  %24 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %added_keys = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %25, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %name, i32 0, i32 0
  %call15 = call i32 @aws_array_list_push_back(ptr noundef %added_keys, ptr noundef %cur)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end34

if.then17:                                        ; preds = %if.then12
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger19) #8
  %call20 = call ptr @aws_logger_get()
  store ptr %call20, ptr %logger19, align 8, !tbaa !4
  %26 = load ptr, ptr %logger19, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %26, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %do.body18
  %27 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %vtable23, align 8, !tbaa !11
  %get_log_level24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %get_log_level24, align 8, !tbaa !13
  %30 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call25 = call i32 %29(ptr noundef %30, i32 noundef 15363)
  %cmp26 = icmp uge i32 %call25, 2
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %land.lhs.true22
  %31 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable28 = getelementptr inbounds %struct.aws_logger, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %vtable28, align 8, !tbaa !11
  %log29 = getelementptr inbounds %struct.aws_logger_vtable, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %log29, align 8, !tbaa !15
  %34 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call30 = call i32 (ptr, i32, i32, ptr, ...) %33(ptr noundef %34, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.38)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true22, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger19) #8
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %on_error

if.end34:                                         ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %was_created) #8
  store i32 1, ptr %was_created, align 4, !tbaa !41
  %35 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %name35 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %36, i32 0, i32 1
  %cur36 = getelementptr inbounds %struct.aws_owning_cursor, ptr %name35, i32 0, i32 0
  %37 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %call37 = call i32 @aws_hash_table_put(ptr noundef %values, ptr noundef %cur36, ptr noundef %37, ptr noundef %was_created)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end56

if.then39:                                        ; preds = %if.end34
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger41) #8
  %call42 = call ptr @aws_logger_get()
  store ptr %call42, ptr %logger41, align 8, !tbaa !4
  %38 = load ptr, ptr %logger41, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %38, null
  br i1 %cmp43, label %land.lhs.true44, label %if.end53

land.lhs.true44:                                  ; preds = %do.body40
  %39 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable45 = getelementptr inbounds %struct.aws_logger, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %vtable45, align 8, !tbaa !11
  %get_log_level46 = getelementptr inbounds %struct.aws_logger_vtable, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %get_log_level46, align 8, !tbaa !13
  %42 = load ptr, ptr %logger41, align 8, !tbaa !4
  %call47 = call i32 %41(ptr noundef %42, i32 noundef 15363)
  %cmp48 = icmp uge i32 %call47, 2
  br i1 %cmp48, label %if.then49, label %if.end53

if.then49:                                        ; preds = %land.lhs.true44
  %43 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %vtable50, align 8, !tbaa !11
  %log51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %log51, align 8, !tbaa !15
  %46 = load ptr, ptr %logger41, align 8, !tbaa !4
  %call52 = call i32 (ptr, i32, i32, ptr, ...) %45(ptr noundef %46, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.39)
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %land.lhs.true44, %do.body40
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger41) #8
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end34
  %47 = load i32, ptr %was_created, align 4, !tbaa !41
  %tobool57 = icmp ne i32 %47, 0
  br i1 %tobool57, label %if.end75, label %if.then58

if.then58:                                        ; preds = %if.end56
  br label %do.body59

do.body59:                                        ; preds = %if.then58
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger60) #8
  %call61 = call ptr @aws_logger_get()
  store ptr %call61, ptr %logger60, align 8, !tbaa !4
  %48 = load ptr, ptr %logger60, align 8, !tbaa !4
  %cmp62 = icmp ne ptr %48, null
  br i1 %cmp62, label %land.lhs.true63, label %if.end72

land.lhs.true63:                                  ; preds = %do.body59
  %49 = load ptr, ptr %logger60, align 8, !tbaa !4
  %vtable64 = getelementptr inbounds %struct.aws_logger, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %vtable64, align 8, !tbaa !11
  %get_log_level65 = getelementptr inbounds %struct.aws_logger_vtable, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %get_log_level65, align 8, !tbaa !13
  %52 = load ptr, ptr %logger60, align 8, !tbaa !4
  %call66 = call i32 %51(ptr noundef %52, i32 noundef 15363)
  %cmp67 = icmp uge i32 %call66, 2
  br i1 %cmp67, label %if.then68, label %if.end72

if.then68:                                        ; preds = %land.lhs.true63
  %53 = load ptr, ptr %logger60, align 8, !tbaa !4
  %vtable69 = getelementptr inbounds %struct.aws_logger, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %vtable69, align 8, !tbaa !11
  %log70 = getelementptr inbounds %struct.aws_logger_vtable, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %log70, align 8, !tbaa !15
  %56 = load ptr, ptr %logger60, align 8, !tbaa !4
  %call71 = call i32 (ptr, i32, i32, ptr, ...) %55(ptr noundef %56, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.40)
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %land.lhs.true63, %do.body59
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger60) #8
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %if.end56
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %do.end55, %if.end75
  call void @llvm.lifetime.end.p0(i64 4, ptr %was_created) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup81 [
    i32 0, label %cleanup.cont
    i32 4, label %on_error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end76

if.else:                                          ; preds = %land.lhs.true10, %if.end7
  call void @aws_endpoints_value_clean_up(ptr noundef %val)
  br label %if.end76

if.end76:                                         ; preds = %if.else, %cleanup.cont
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

on_error:                                         ; preds = %cleanup, %do.end33, %do.end
  %57 = load ptr, ptr %scope_value, align 8, !tbaa !4
  call void @aws_endpoints_scope_value_destroy(ptr noundef %57)
  %58 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %cmp77 = icmp eq ptr %58, null
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %on_error
  call void @aws_endpoints_value_clean_up(ptr noundef %val)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %on_error
  %59 = load ptr, ptr %out_is_truthy.addr, align 8, !tbaa !4
  store i8 0, ptr %59, align 1, !tbaa !19
  %call80 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call80, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %if.end79, %if.end76, %cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr %val) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope_value) #8
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_value_truthy(ptr noundef %value) #0 {
entry:
  %retval = alloca i1, align 1
  %value.addr = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %type, align 8, !tbaa !16
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 6, label %sw.bb2
    i32 2, label %sw.bb2
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %v, align 8, !tbaa !10, !range !32, !noundef !33
  %tobool = trunc i8 %3 to i1
  store i1 %tobool, ptr %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %entry, %entry, %entry
  store i1 true, ptr %retval, align 1
  br label %return

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %v4 = getelementptr inbounds %struct.aws_endpoints_value, ptr %4, i32 0, i32 1
  %5 = load double, ptr %v4, align 8, !tbaa !10
  %cmp = fcmp une double %5, 0.000000e+00
  store i1 %cmp, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %6 = load i1, ptr %retval, align 1
  ret i1 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_push_back(ptr noalias noundef %list, ptr noundef %val) #4 {
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
  store i32 %call1, ptr %err_code, align 4, !tbaa !41
  %3 = load i32, ptr %err_code, align 4, !tbaa !41
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !72
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !41
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #8
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load i64, ptr %index.addr, align 8, !tbaa !8
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
  %3 = load ptr, ptr %data, align 8, !tbaa !23
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.41, ptr noundef @.str.24, i32 noundef 389) #9
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !23
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !25
  %8 = load i64, ptr %index.addr, align 8, !tbaa !8
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %11, i1 false)
  %12 = load i64, ptr %index.addr, align 8, !tbaa !8
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call6 = call i64 @aws_array_list_length(ptr noundef %13)
  %cmp = icmp uge i64 %12, %call6
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %14 = load i64, ptr %index.addr, align 8, !tbaa !8
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

declare i32 @aws_last_error() #2

declare i32 @aws_array_list_ensure_capacity(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_add_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
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

; Function Attrs: nounwind uwtable
define internal i32 @s_resolve_templated_value_with_pathing(ptr noundef %allocator, ptr noundef %scope, i64 %template_cur.coerce0, ptr %template_cur.coerce1, ptr noundef %out_owning_cursor) #0 {
entry:
  %retval = alloca i32, align 4
  %template_cur = alloca %struct.aws_byte_cursor, align 8
  %allocator.addr = alloca ptr, align 8
  %scope.addr = alloca ptr, align 8
  %out_owning_cursor.addr = alloca ptr, align 8
  %resolved_value = alloca %struct.aws_endpoints_value, align 8
  %split = alloca %struct.aws_byte_cursor, align 8
  %logger = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %logger14 = alloca ptr, align 8
  %scope_value = alloca ptr, align 8
  %logger42 = alloca ptr, align 8
  %tmp = alloca %struct.aws_owning_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger72 = alloca ptr, align 8
  %logger100 = alloca ptr, align 8
  %logger120 = alloca ptr, align 8
  %logger144 = alloca ptr, align 8
  %tmp166 = alloca %struct.aws_owning_cursor, align 8
  %tmp172 = alloca %struct.aws_owning_cursor, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %template_cur, i32 0, i32 0
  store i64 %template_cur.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %template_cur, i32 0, i32 1
  store ptr %template_cur.coerce1, ptr %1, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %scope, ptr %scope.addr, align 8, !tbaa !4
  store ptr %out_owning_cursor, ptr %out_owning_cursor.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 48, ptr %resolved_value) #8
  call void @llvm.memset.p0.i64(ptr align 8 %resolved_value, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %split) #8
  call void @llvm.memset.p0.i64(ptr align 8 %split, i8 0, i64 16, i1 false)
  %call = call zeroext i1 @aws_byte_cursor_next_split(ptr noundef %template_cur, i8 noundef signext 35, ptr noundef %split)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %split, i32 0, i32 0
  %2 = load i64, ptr %len, align 8, !tbaa !43
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !11
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !13
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call3 = call i32 %6(ptr noundef %7, i32 noundef 15363)
  %cmp4 = icmp uge i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable6 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable6, align 8, !tbaa !11
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !15
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %call7 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.43)
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_error

if.end8:                                          ; preds = %lor.lhs.false
  store ptr null, ptr %elem, align 8, !tbaa !4
  %12 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.aws_endpoints_resolution_scope, ptr %12, i32 0, i32 0
  %call9 = call i32 @aws_hash_table_find(ptr noundef %values, ptr noundef %split, ptr noundef %elem)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end8
  %13 = load ptr, ptr %elem, align 8, !tbaa !4
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then12, label %if.end34

if.then12:                                        ; preds = %lor.lhs.false10, %if.end8
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger14) #8
  %call15 = call ptr @aws_logger_get()
  store ptr %call15, ptr %logger14, align 8, !tbaa !4
  %14 = load ptr, ptr %logger14, align 8, !tbaa !4
  %cmp16 = icmp ne ptr %14, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end31

land.lhs.true17:                                  ; preds = %do.body13
  %15 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable18 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable18, align 8, !tbaa !11
  %get_log_level19 = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %get_log_level19, align 8, !tbaa !13
  %18 = load ptr, ptr %logger14, align 8, !tbaa !4
  %call20 = call i32 %17(ptr noundef %18, i32 noundef 15363)
  %cmp21 = icmp uge i32 %call20, 2
  br i1 %cmp21, label %if.then22, label %if.end31

if.then22:                                        ; preds = %land.lhs.true17
  %19 = load ptr, ptr %logger14, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable23, align 8, !tbaa !11
  %log24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %log24, align 8, !tbaa !15
  %22 = load ptr, ptr %logger14, align 8, !tbaa !4
  %len25 = getelementptr inbounds %struct.aws_byte_cursor, ptr %split, i32 0, i32 0
  %23 = load i64, ptr %len25, align 8, !tbaa !43
  %conv = trunc i64 %23 to i32
  %cmp26 = icmp slt i32 %conv, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then22
  br label %cond.end

cond.false:                                       ; preds = %if.then22
  %len28 = getelementptr inbounds %struct.aws_byte_cursor, ptr %split, i32 0, i32 0
  %24 = load i64, ptr %len28, align 8, !tbaa !43
  %conv29 = trunc i64 %24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv29, %cond.false ]
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %split, i32 0, i32 1
  %25 = load ptr, ptr %ptr, align 8, !tbaa !75
  %call30 = call i32 (ptr, i32, i32, ptr, ...) %21(ptr noundef %22, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.44, i32 noundef %cond, ptr noundef %25)
  br label %if.end31

if.end31:                                         ; preds = %cond.end, %land.lhs.true17, %do.body13
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger14) #8
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %on_error

if.end34:                                         ; preds = %lor.lhs.false10
  %26 = load ptr, ptr %elem, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %value, align 8, !tbaa !35
  store ptr %27, ptr %scope_value, align 8, !tbaa !4
  %call35 = call zeroext i1 @aws_byte_cursor_next_split(ptr noundef %template_cur, i8 noundef signext 35, ptr noundef %split)
  br i1 %call35, label %if.end61, label %if.then36

if.then36:                                        ; preds = %if.end34
  %28 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %value37 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %28, i32 0, i32 2
  %type = getelementptr inbounds %struct.aws_endpoints_value, ptr %value37, i32 0, i32 0
  %29 = load i32, ptr %type, align 8, !tbaa !37
  %cmp38 = icmp ne i32 %29, 2
  br i1 %cmp38, label %if.then40, label %if.end59

if.then40:                                        ; preds = %if.then36
  br label %do.body41

do.body41:                                        ; preds = %if.then40
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger42) #8
  %call43 = call ptr @aws_logger_get()
  store ptr %call43, ptr %logger42, align 8, !tbaa !4
  %30 = load ptr, ptr %logger42, align 8, !tbaa !4
  %cmp44 = icmp ne ptr %30, null
  br i1 %cmp44, label %land.lhs.true46, label %if.end56

land.lhs.true46:                                  ; preds = %do.body41
  %31 = load ptr, ptr %logger42, align 8, !tbaa !4
  %vtable47 = getelementptr inbounds %struct.aws_logger, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %vtable47, align 8, !tbaa !11
  %get_log_level48 = getelementptr inbounds %struct.aws_logger_vtable, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %get_log_level48, align 8, !tbaa !13
  %34 = load ptr, ptr %logger42, align 8, !tbaa !4
  %call49 = call i32 %33(ptr noundef %34, i32 noundef 15363)
  %cmp50 = icmp uge i32 %call49, 2
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %land.lhs.true46
  %35 = load ptr, ptr %logger42, align 8, !tbaa !4
  %vtable53 = getelementptr inbounds %struct.aws_logger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vtable53, align 8, !tbaa !11
  %log54 = getelementptr inbounds %struct.aws_logger_vtable, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %log54, align 8, !tbaa !15
  %38 = load ptr, ptr %logger42, align 8, !tbaa !4
  %call55 = call i32 (ptr, i32, i32, ptr, ...) %37(ptr noundef %38, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.45)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %land.lhs.true46, %do.body41
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger42) #8
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  br label %on_error

if.end59:                                         ; preds = %if.then36
  %39 = load ptr, ptr %out_owning_cursor.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #8
  %40 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %value60 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %40, i32 0, i32 2
  %v = getelementptr inbounds %struct.aws_endpoints_value, ptr %value60, i32 0, i32 1
  %cur = getelementptr inbounds %struct.aws_owning_cursor, ptr %v, i32 0, i32 0
  %41 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 0
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds { i64, ptr }, ptr %cur, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  call void @aws_endpoints_non_owning_cursor_create(ptr sret(%struct.aws_owning_cursor) align 8 %tmp, i64 %42, ptr %44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end34
  %45 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %value62 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %45, i32 0, i32 2
  %type63 = getelementptr inbounds %struct.aws_endpoints_value, ptr %value62, i32 0, i32 0
  %46 = load i32, ptr %type63, align 8, !tbaa !37
  %cmp64 = icmp eq i32 %46, 4
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end61
  %47 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %value67 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %48, i32 0, i32 2
  %49 = getelementptr inbounds { i64, ptr }, ptr %split, i32 0, i32 0
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds { i64, ptr }, ptr %split, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %call68 = call i32 @aws_endpoints_path_through_object(ptr noundef %47, ptr noundef %value67, i64 %50, ptr %52, ptr noundef %resolved_value)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.end89

if.then70:                                        ; preds = %if.then66
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger72) #8
  %call73 = call ptr @aws_logger_get()
  store ptr %call73, ptr %logger72, align 8, !tbaa !4
  %53 = load ptr, ptr %logger72, align 8, !tbaa !4
  %cmp74 = icmp ne ptr %53, null
  br i1 %cmp74, label %land.lhs.true76, label %if.end86

land.lhs.true76:                                  ; preds = %do.body71
  %54 = load ptr, ptr %logger72, align 8, !tbaa !4
  %vtable77 = getelementptr inbounds %struct.aws_logger, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %vtable77, align 8, !tbaa !11
  %get_log_level78 = getelementptr inbounds %struct.aws_logger_vtable, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %get_log_level78, align 8, !tbaa !13
  %57 = load ptr, ptr %logger72, align 8, !tbaa !4
  %call79 = call i32 %56(ptr noundef %57, i32 noundef 15363)
  %cmp80 = icmp uge i32 %call79, 2
  br i1 %cmp80, label %if.then82, label %if.end86

if.then82:                                        ; preds = %land.lhs.true76
  %58 = load ptr, ptr %logger72, align 8, !tbaa !4
  %vtable83 = getelementptr inbounds %struct.aws_logger, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %vtable83, align 8, !tbaa !11
  %log84 = getelementptr inbounds %struct.aws_logger_vtable, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %log84, align 8, !tbaa !15
  %61 = load ptr, ptr %logger72, align 8, !tbaa !4
  %call85 = call i32 (ptr, i32, i32, ptr, ...) %60(ptr noundef %61, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.46)
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %land.lhs.true76, %do.body71
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger72) #8
  br label %do.cond87

do.cond87:                                        ; preds = %if.end86
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  br label %on_error

if.end89:                                         ; preds = %if.then66
  br label %if.end138

if.else:                                          ; preds = %if.end61
  %62 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %value90 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %62, i32 0, i32 2
  %type91 = getelementptr inbounds %struct.aws_endpoints_value, ptr %value90, i32 0, i32 0
  %63 = load i32, ptr %type91, align 8, !tbaa !37
  %cmp92 = icmp eq i32 %63, 6
  br i1 %cmp92, label %if.then94, label %if.else118

if.then94:                                        ; preds = %if.else
  %64 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %scope.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %scope_value, align 8, !tbaa !4
  %value95 = getelementptr inbounds %struct.aws_endpoints_scope_value, ptr %66, i32 0, i32 2
  %67 = getelementptr inbounds { i64, ptr }, ptr %split, i32 0, i32 0
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds { i64, ptr }, ptr %split, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %call96 = call i32 @aws_endpoints_path_through_array(ptr noundef %64, ptr noundef %65, ptr noundef %value95, i64 %68, ptr %70, ptr noundef %resolved_value)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then98, label %if.end117

if.then98:                                        ; preds = %if.then94
  br label %do.body99

do.body99:                                        ; preds = %if.then98
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger100) #8
  %call101 = call ptr @aws_logger_get()
  store ptr %call101, ptr %logger100, align 8, !tbaa !4
  %71 = load ptr, ptr %logger100, align 8, !tbaa !4
  %cmp102 = icmp ne ptr %71, null
  br i1 %cmp102, label %land.lhs.true104, label %if.end114

land.lhs.true104:                                 ; preds = %do.body99
  %72 = load ptr, ptr %logger100, align 8, !tbaa !4
  %vtable105 = getelementptr inbounds %struct.aws_logger, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %vtable105, align 8, !tbaa !11
  %get_log_level106 = getelementptr inbounds %struct.aws_logger_vtable, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %get_log_level106, align 8, !tbaa !13
  %75 = load ptr, ptr %logger100, align 8, !tbaa !4
  %call107 = call i32 %74(ptr noundef %75, i32 noundef 15363)
  %cmp108 = icmp uge i32 %call107, 2
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %land.lhs.true104
  %76 = load ptr, ptr %logger100, align 8, !tbaa !4
  %vtable111 = getelementptr inbounds %struct.aws_logger, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %vtable111, align 8, !tbaa !11
  %log112 = getelementptr inbounds %struct.aws_logger_vtable, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %log112, align 8, !tbaa !15
  %79 = load ptr, ptr %logger100, align 8, !tbaa !4
  %call113 = call i32 (ptr, i32, i32, ptr, ...) %78(ptr noundef %79, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.47)
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %land.lhs.true104, %do.body99
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger100) #8
  br label %do.cond115

do.cond115:                                       ; preds = %if.end114
  br label %do.end116

do.end116:                                        ; preds = %do.cond115
  br label %on_error

if.end117:                                        ; preds = %if.then94
  br label %if.end137

if.else118:                                       ; preds = %if.else
  br label %do.body119

do.body119:                                       ; preds = %if.else118
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger120) #8
  %call121 = call ptr @aws_logger_get()
  store ptr %call121, ptr %logger120, align 8, !tbaa !4
  %80 = load ptr, ptr %logger120, align 8, !tbaa !4
  %cmp122 = icmp ne ptr %80, null
  br i1 %cmp122, label %land.lhs.true124, label %if.end134

land.lhs.true124:                                 ; preds = %do.body119
  %81 = load ptr, ptr %logger120, align 8, !tbaa !4
  %vtable125 = getelementptr inbounds %struct.aws_logger, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %vtable125, align 8, !tbaa !11
  %get_log_level126 = getelementptr inbounds %struct.aws_logger_vtable, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %get_log_level126, align 8, !tbaa !13
  %84 = load ptr, ptr %logger120, align 8, !tbaa !4
  %call127 = call i32 %83(ptr noundef %84, i32 noundef 15363)
  %cmp128 = icmp uge i32 %call127, 2
  br i1 %cmp128, label %if.then130, label %if.end134

if.then130:                                       ; preds = %land.lhs.true124
  %85 = load ptr, ptr %logger120, align 8, !tbaa !4
  %vtable131 = getelementptr inbounds %struct.aws_logger, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %vtable131, align 8, !tbaa !11
  %log132 = getelementptr inbounds %struct.aws_logger_vtable, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %log132, align 8, !tbaa !15
  %88 = load ptr, ptr %logger120, align 8, !tbaa !4
  %call133 = call i32 (ptr, i32, i32, ptr, ...) %87(ptr noundef %88, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.48)
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %land.lhs.true124, %do.body119
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger120) #8
  br label %do.cond135

do.cond135:                                       ; preds = %if.end134
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  br label %on_error

if.end137:                                        ; preds = %if.end117
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end89
  %type139 = getelementptr inbounds %struct.aws_endpoints_value, ptr %resolved_value, i32 0, i32 0
  %89 = load i32, ptr %type139, align 8, !tbaa !16
  %cmp140 = icmp ne i32 %89, 2
  br i1 %cmp140, label %if.then142, label %if.end161

if.then142:                                       ; preds = %if.end138
  br label %do.body143

do.body143:                                       ; preds = %if.then142
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger144) #8
  %call145 = call ptr @aws_logger_get()
  store ptr %call145, ptr %logger144, align 8, !tbaa !4
  %90 = load ptr, ptr %logger144, align 8, !tbaa !4
  %cmp146 = icmp ne ptr %90, null
  br i1 %cmp146, label %land.lhs.true148, label %if.end158

land.lhs.true148:                                 ; preds = %do.body143
  %91 = load ptr, ptr %logger144, align 8, !tbaa !4
  %vtable149 = getelementptr inbounds %struct.aws_logger, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %vtable149, align 8, !tbaa !11
  %get_log_level150 = getelementptr inbounds %struct.aws_logger_vtable, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %get_log_level150, align 8, !tbaa !13
  %94 = load ptr, ptr %logger144, align 8, !tbaa !4
  %call151 = call i32 %93(ptr noundef %94, i32 noundef 15363)
  %cmp152 = icmp uge i32 %call151, 2
  br i1 %cmp152, label %if.then154, label %if.end158

if.then154:                                       ; preds = %land.lhs.true148
  %95 = load ptr, ptr %logger144, align 8, !tbaa !4
  %vtable155 = getelementptr inbounds %struct.aws_logger, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %vtable155, align 8, !tbaa !11
  %log156 = getelementptr inbounds %struct.aws_logger_vtable, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %log156, align 8, !tbaa !15
  %98 = load ptr, ptr %logger144, align 8, !tbaa !4
  %call157 = call i32 (ptr, i32, i32, ptr, ...) %97(ptr noundef %98, i32 noundef 2, i32 noundef 15363, ptr noundef @.str.49)
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %land.lhs.true148, %do.body143
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger144) #8
  br label %do.cond159

do.cond159:                                       ; preds = %if.end158
  br label %do.end160

do.end160:                                        ; preds = %do.cond159
  br label %on_error

if.end161:                                        ; preds = %if.end138
  %v162 = getelementptr inbounds %struct.aws_endpoints_value, ptr %resolved_value, i32 0, i32 1
  %string = getelementptr inbounds %struct.aws_owning_cursor, ptr %v162, i32 0, i32 1
  %99 = load ptr, ptr %string, align 8, !tbaa !10
  %cmp163 = icmp ne ptr %99, null
  br i1 %cmp163, label %if.then165, label %if.else171

if.then165:                                       ; preds = %if.end161
  %100 = load ptr, ptr %out_owning_cursor.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp166) #8
  %v167 = getelementptr inbounds %struct.aws_endpoints_value, ptr %resolved_value, i32 0, i32 1
  %string168 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v167, i32 0, i32 1
  %101 = load ptr, ptr %string168, align 8, !tbaa !10
  call void @aws_endpoints_owning_cursor_from_string(ptr sret(%struct.aws_owning_cursor) align 8 %tmp166, ptr noundef %101)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %100, ptr align 8 %tmp166, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp166) #8
  %v169 = getelementptr inbounds %struct.aws_endpoints_value, ptr %resolved_value, i32 0, i32 1
  %string170 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v169, i32 0, i32 1
  store ptr null, ptr %string170, align 8, !tbaa !10
  br label %if.end175

if.else171:                                       ; preds = %if.end161
  %102 = load ptr, ptr %out_owning_cursor.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp172) #8
  %v173 = getelementptr inbounds %struct.aws_endpoints_value, ptr %resolved_value, i32 0, i32 1
  %cur174 = getelementptr inbounds %struct.aws_owning_cursor, ptr %v173, i32 0, i32 0
  %103 = getelementptr inbounds { i64, ptr }, ptr %cur174, i32 0, i32 0
  %104 = load i64, ptr %103, align 8
  %105 = getelementptr inbounds { i64, ptr }, ptr %cur174, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8
  call void @aws_endpoints_non_owning_cursor_create(ptr sret(%struct.aws_owning_cursor) align 8 %tmp172, i64 %104, ptr %106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %102, ptr align 8 %tmp172, i64 24, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp172) #8
  br label %if.end175

if.end175:                                        ; preds = %if.else171, %if.then165
  call void @aws_endpoints_value_clean_up(ptr noundef %resolved_value)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %do.end160, %do.end136, %do.end116, %do.end88, %do.end58, %do.end33, %do.end
  call void @aws_endpoints_value_clean_up(ptr noundef %resolved_value)
  %call176 = call i32 @aws_raise_error(i32 noundef 15366)
  store i32 %call176, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end175, %if.end59
  call void @llvm.lifetime.end.p0(i64 16, ptr %split) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr %resolved_value) #8
  %107 = load i32, ptr %retval, align 4
  ret i32 %107
}

declare i64 @aws_hash_table_get_entry_count(ptr noundef) #2

declare i64 @aws_hash_string(ptr noundef) #2

declare zeroext i1 @aws_hash_callback_string_eq(ptr noundef, ptr noundef) #2

declare void @aws_hash_callback_string_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_callback_headers_destroy(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %array = alloca ptr, align 8
  %alloc = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #8
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %array, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc) #8
  %1 = load ptr, ptr %array, align 8, !tbaa !4
  %alloc1 = getelementptr inbounds %struct.aws_array_list, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc1, align 8, !tbaa !72
  store ptr %2, ptr %alloc, align 8, !tbaa !4
  %3 = load ptr, ptr %array, align 8, !tbaa !4
  call void @aws_array_list_deep_clean_up(ptr noundef %3, ptr noundef @s_on_string_array_element_destroy)
  %4 = load ptr, ptr %alloc, align 8, !tbaa !4
  %5 = load ptr, ptr %array, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #8
  ret void
}

declare ptr @aws_string_new_from_cursor(ptr noundef, ptr noundef) #2

declare void @aws_string_destroy(ptr noundef) #2

declare ptr @aws_string_clone_or_reuse(ptr noundef, ptr noundef) #2

declare void @aws_array_list_deep_clean_up(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_on_string_array_element_destroy(ptr noundef %element) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #8
  %0 = load ptr, ptr %element.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  store ptr %1, ptr %str, align 8, !tbaa !4
  %2 = load ptr, ptr %str, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_clean_up(ptr noalias noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !72
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !23
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc2, align 8, !tbaa !72
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !23
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!13 = !{!14, !5, i64 8}
!14 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!15 = !{!14, !5, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"aws_endpoints_value", !6, i64 0, !6, i64 8}
!18 = !{i64 0, i64 4, !10, i64 8, i64 8, !8, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 8, i64 1, !19, i64 8, i64 8, !8, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 8, i64 8, !21, i64 8, i64 8, !4, i64 16, i64 8, !8, i64 24, i64 8, !8, i64 32, i64 8, !8, i64 40, i64 8, !4}
!19 = !{!20, !20, i64 0}
!20 = !{!"_Bool", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !6, i64 0}
!23 = !{!24, !5, i64 32}
!24 = !{!"aws_array_list", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32}
!25 = !{!24, !9, i64 24}
!26 = !{!27, !6, i64 0}
!27 = !{!"aws_endpoints_expr", !6, i64 0, !6, i64 8}
!28 = !{!29, !5, i64 0}
!29 = !{!"resolve_template_callback_data", !5, i64 0, !5, i64 8}
!30 = !{!29, !5, i64 8}
!31 = !{i64 0, i64 8, !8, i64 8, i64 8, !4, i64 16, i64 8, !4}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{i64 0, i64 8, !4, i64 8, i64 8, !8, i64 16, i64 8, !8, i64 24, i64 8, !8, i64 32, i64 8, !4}
!35 = !{!36, !5, i64 8}
!36 = !{!"aws_hash_element", !5, i64 0, !5, i64 8}
!37 = !{!38, !6, i64 32}
!38 = !{!"aws_endpoints_scope_value", !5, i64 0, !39, i64 8, !17, i64 32}
!39 = !{!"aws_owning_cursor", !40, i64 0, !5, i64 16}
!40 = !{!"aws_byte_cursor", !9, i64 0, !5, i64 8}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !6, i64 0}
!43 = !{!40, !9, i64 0}
!44 = !{!24, !9, i64 16}
!45 = !{i64 0, i64 8, !8, i64 8, i64 8, !4}
!46 = !{!47, !5, i64 0}
!47 = !{!"aws_endpoints_request_context", !5, i64 0, !48, i64 8, !50, i64 32}
!48 = !{!"aws_ref_count", !49, i64 0, !5, i64 8, !5, i64 16}
!49 = !{!"aws_atomic_var", !5, i64 0}
!50 = !{!"aws_hash_table", !5, i64 0}
!51 = !{!52, !5, i64 0}
!52 = !{!"aws_endpoints_resolved_endpoint", !5, i64 0, !48, i64 8, !6, i64 32, !6, i64 40}
!53 = !{!52, !6, i64 32}
!54 = !{!55, !5, i64 0}
!55 = !{!"aws_endpoints_rule_engine", !5, i64 0, !48, i64 8, !5, i64 32, !5, i64 40}
!56 = !{!55, !5, i64 32}
!57 = !{!55, !5, i64 40}
!58 = !{!59, !9, i64 48}
!59 = !{!"aws_endpoints_resolution_scope", !50, i64 0, !24, i64 8, !9, i64 48, !5, i64 56, !5, i64 64}
!60 = !{!59, !5, i64 56}
!61 = !{!62, !6, i64 56}
!62 = !{!"aws_endpoints_rule", !24, i64 0, !40, i64 40, !6, i64 56, !6, i64 64}
!63 = !{!59, !5, i64 64}
!64 = !{!65, !5, i64 8}
!65 = !{!"aws_hash_iter", !5, i64 0, !36, i64 8, !9, i64 24, !9, i64 32, !6, i64 40, !42, i64 44, !5, i64 48, !5, i64 56}
!66 = !{!65, !5, i64 16}
!67 = !{!68, !20, i64 72}
!68 = !{!"aws_endpoints_parameter", !5, i64 0, !40, i64 8, !6, i64 24, !40, i64 32, !20, i64 48, !6, i64 56, !20, i64 72, !40, i64 80, !20, i64 96, !40, i64 104, !40, i64 120}
!69 = !{!68, !20, i64 48}
!70 = !{!68, !6, i64 24}
!71 = !{!24, !9, i64 8}
!72 = !{!24, !5, i64 0}
!73 = !{!74, !9, i64 56}
!74 = !{!"aws_endpoints_condition", !27, i64 0, !40, i64 56}
!75 = !{!40, !5, i64 8}

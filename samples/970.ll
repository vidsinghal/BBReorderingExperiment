; ModuleID = 'samples/970.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-auth/source/credentials_provider_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_credentials_provider_vtable = type { ptr, ptr }
%struct.aws_credentials_provider_chain_options = type { %struct.aws_credentials_provider_shutdown_options, ptr, i64 }
%struct.aws_credentials_provider_shutdown_options = type { ptr, ptr }
%struct.aws_credentials_provider_chain_impl = type { %struct.aws_array_list }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_credentials_provider = type { ptr, ptr, %struct.aws_credentials_provider_shutdown_options, ptr, %struct.aws_atomic_var }
%struct.aws_atomic_var = type { ptr }
%struct.aws_credentials_provider_chain_user_data = type { ptr, ptr, i64, ptr, ptr }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }

@s_aws_credentials_provider_chain_vtable = internal global %struct.aws_credentials_provider_vtable { ptr @s_credentials_provider_chain_get_credentials_async, ptr @s_credentials_provider_chain_destroy }, align 8
@.str = private unnamed_addr constant [60 x i8] c"(id=%p) Credentials provider chain get credentials dispatch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.2 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"(id=%p) Credentials provider chain callback terminating on index %zu, with %s credentials and error code %d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.6 = private unnamed_addr constant [94 x i8] c"(id=%p) Credentials provider chain callback %zu invoked with %s credentials and error code %d\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"(id=%p) Credentials provider chain invoking chain member #%zu\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"list != ((void*)0)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"alloc != ((void*)0)\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"item_size > 0\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"list->current_size == 0 || list->data\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1

; Function Attrs: nounwind uwtable
define ptr @aws_credentials_provider_new_chain(ptr noundef %allocator, ptr noundef %options) #0 {
entry:
  %retval = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %provider = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %sub_provider = alloca ptr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %provider_count = getelementptr inbounds %struct.aws_credentials_provider_chain_options, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %provider_count, align 8, !tbaa !8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %provider) #8
  store ptr null, ptr %provider, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #8
  store ptr null, ptr %impl, align 8, !tbaa !4
  %2 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call ptr (ptr, i64, ...) @aws_mem_acquire_many(ptr noundef %2, i64 noundef 2, ptr noundef %provider, i64 noundef 48, ptr noundef %impl, i64 noundef 40)
  %3 = load ptr, ptr %provider, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

if.end2:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end2
  %4 = load ptr, ptr %provider, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 48, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %5 = load ptr, ptr %impl, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 40, i1 false)
  br label %do.cond4

do.cond4:                                         ; preds = %do.body3
  br label %do.end5

do.end5:                                          ; preds = %do.cond4
  %6 = load ptr, ptr %provider, align 8, !tbaa !4
  %7 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %impl, align 8, !tbaa !4
  call void @aws_credentials_provider_init_base(ptr noundef %6, ptr noundef %7, ptr noundef @s_aws_credentials_provider_chain_vtable, ptr noundef %8)
  %9 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %provider_count6 = getelementptr inbounds %struct.aws_credentials_provider_chain_options, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %provider_count6, align 8, !tbaa !8
  %call7 = call i32 @aws_array_list_init_dynamic(ptr noundef %providers, ptr noundef %10, i64 noundef %12, i64 noundef 8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end5
  br label %on_error

if.end10:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %13 = load i64, ptr %i, align 8, !tbaa !12
  %14 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %provider_count11 = getelementptr inbounds %struct.aws_credentials_provider_chain_options, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %provider_count11, align 8, !tbaa !8
  %cmp12 = icmp ult i64 %13, %15
  br i1 %cmp12, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_provider) #8
  %16 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %providers13 = getelementptr inbounds %struct.aws_credentials_provider_chain_options, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %providers13, align 8, !tbaa !13
  %18 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds ptr, ptr %17, i64 %18
  %19 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %19, ptr %sub_provider, align 8, !tbaa !4
  %20 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers14 = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %20, i32 0, i32 0
  %call15 = call i32 @aws_array_list_push_back(ptr noundef %providers14, ptr noundef %sub_provider)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %21 = load ptr, ptr %sub_provider, align 8, !tbaa !4
  %call19 = call ptr @aws_credentials_provider_acquire(ptr noundef %21)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_provider) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup20 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i64, ptr %i, align 8, !tbaa !12
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !12
  br label %for.cond

cleanup20:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest21 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest21, label %cleanup23 [
    i32 7, label %for.end
    i32 6, label %on_error
  ]

for.end:                                          ; preds = %cleanup20
  %23 = load ptr, ptr %provider, align 8, !tbaa !4
  %shutdown_options = getelementptr inbounds %struct.aws_credentials_provider, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %shutdown_options22 = getelementptr inbounds %struct.aws_credentials_provider_chain_options, ptr %24, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %shutdown_options, ptr align 8 %shutdown_options22, i64 16, i1 false), !tbaa.struct !14
  %25 = load ptr, ptr %provider, align 8, !tbaa !4
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

on_error:                                         ; preds = %cleanup20, %if.then9
  %26 = load ptr, ptr %provider, align 8, !tbaa !4
  call void @aws_credentials_provider_destroy(ptr noundef %26)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %on_error, %for.end, %cleanup20, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %provider) #8
  br label %return

return:                                           ; preds = %cleanup23, %if.then
  %27 = load ptr, ptr %retval, align 8
  ret ptr %27
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @aws_mem_acquire_many(ptr noundef, i64 noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @aws_credentials_provider_init_base(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
  store i64 %initial_item_allocation, ptr %initial_item_allocation.addr, align 8, !tbaa !12
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !12
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 24) #9
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
  call void @aws_fatal_assert(ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 25) #9
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_size.addr, align 8, !tbaa !12
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 26) #9
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
  store i64 0, ptr %allocation_size, align 8, !tbaa !12
  %4 = load i64, ptr %initial_item_allocation.addr, align 8, !tbaa !12
  %5 = load i64, ptr %item_size.addr, align 8, !tbaa !12
  %call = call i32 @aws_mul_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %allocation_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end12
  br label %error

if.end14:                                         ; preds = %do.end12
  %6 = load i64, ptr %allocation_size, align 8, !tbaa !12
  %cmp15 = icmp ugt i64 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %7 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %8 = load i64, ptr %allocation_size, align 8, !tbaa !12
  %call17 = call ptr @aws_mem_acquire(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  store ptr %call17, ptr %data, align 8, !tbaa !15
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data18 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data18, align 8, !tbaa !15
  %tobool19 = icmp ne ptr %11, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then16
  br label %error

if.end21:                                         ; preds = %if.then16
  %12 = load i64, ptr %allocation_size, align 8, !tbaa !12
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 1
  store i64 %12, ptr %current_size, align 8, !tbaa !17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %14 = load i64, ptr %item_size.addr, align 8, !tbaa !12
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size23 = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 3
  store i64 %14, ptr %item_size23, align 8, !tbaa !18
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc24 = getelementptr inbounds %struct.aws_array_list, ptr %17, i32 0, i32 0
  store ptr %16, ptr %alloc24, align 8, !tbaa !19
  br label %do.body25

do.body25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size26 = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %current_size26, align 8, !tbaa !17
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body25
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data28 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data28, align 8, !tbaa !15
  %tobool29 = icmp ne ptr %21, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.11, ptr noundef @.str.2, i32 noundef 49) #9
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
  store i32 %call1, ptr %err_code, align 4, !tbaa !20
  %3 = load i32, ptr %err_code, align 4, !tbaa !20
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !19
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !20
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #8
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare ptr @aws_credentials_provider_acquire(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @aws_credentials_provider_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_credentials_provider_chain_get_credentials_async(ptr noundef %provider, ptr noundef %callback, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %provider.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %first_provider = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %wrapped_user_data = alloca ptr, align 8
  %logger = alloca ptr, align 8
  store ptr %provider, ptr %provider.addr, align 8, !tbaa !4
  store ptr %callback, ptr %callback.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #8
  %0 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %impl1, align 8, !tbaa !22
  store ptr %1, ptr %impl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_provider) #8
  store ptr null, ptr %first_provider, align 8, !tbaa !4
  %2 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %2, i32 0, i32 0
  %call = call i32 @aws_array_list_get_at(ptr noundef %providers, ptr noundef %first_provider, i64 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %wrapped_user_data) #8
  %3 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_credentials_provider, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %allocator, align 8, !tbaa !25
  %call2 = call ptr @aws_mem_acquire(ptr noundef %4, i64 noundef 40)
  store ptr %call2, ptr %wrapped_user_data, align 8, !tbaa !4
  %5 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end4
  %6 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 40, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %allocator5 = getelementptr inbounds %struct.aws_credentials_provider, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %allocator5, align 8, !tbaa !25
  %9 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %allocator6 = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %9, i32 0, i32 0
  store ptr %8, ptr %allocator6, align 8, !tbaa !26
  %10 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %provider_chain = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %11, i32 0, i32 1
  store ptr %10, ptr %provider_chain, align 8, !tbaa !28
  %12 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %current_provider_index = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %12, i32 0, i32 2
  store i64 0, ptr %current_provider_index, align 8, !tbaa !29
  %13 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %original_user_data = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %14, i32 0, i32 4
  store ptr %13, ptr %original_user_data, align 8, !tbaa !30
  %15 = load ptr, ptr %callback.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %original_callback = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %16, i32 0, i32 3
  store ptr %15, ptr %original_callback, align 8, !tbaa !31
  %17 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %call7 = call ptr @aws_credentials_provider_acquire(ptr noundef %17)
  br label %do.body8

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call9 = call ptr @aws_logger_get()
  store ptr %call9, ptr %logger, align 8, !tbaa !4
  %18 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %18, null
  br i1 %cmp10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %do.body8
  %19 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable, align 8, !tbaa !32
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %get_log_level, align 8, !tbaa !34
  %22 = load ptr, ptr %logger, align 8, !tbaa !4
  %call11 = call i32 %21(ptr noundef %22, i32 noundef 6146)
  %cmp12 = icmp uge i32 %call11, 5
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable14 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable14, align 8, !tbaa !32
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %log, align 8, !tbaa !36
  %26 = load ptr, ptr %logger, align 8, !tbaa !4
  %27 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %call15 = call i32 (ptr, i32, i32, ptr, ...) %25(ptr noundef %26, i32 noundef 5, i32 noundef 6146, ptr noundef @.str, ptr noundef %27)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true, %do.body8
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond17

do.cond17:                                        ; preds = %if.end16
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  %28 = load ptr, ptr %first_provider, align 8, !tbaa !4
  %29 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %call19 = call i32 @aws_credentials_provider_get_credentials(ptr noundef %28, ptr noundef @s_aws_provider_chain_member_callback, ptr noundef %29)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %wrapped_user_data) #8
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_provider) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #8
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @s_credentials_provider_chain_destroy(ptr noundef %provider) #0 {
entry:
  %provider.addr = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %provider_count = alloca i64, align 8
  %i = alloca i64, align 8
  %chain_member = alloca ptr, align 8
  store ptr %provider, ptr %provider.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #8
  %0 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %impl1, align 8, !tbaa !22
  store ptr %1, ptr %impl, align 8, !tbaa !4
  %2 = load ptr, ptr %impl, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %provider_count) #8
  %3 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %3, i32 0, i32 0
  %call = call i64 @aws_array_list_length(ptr noundef %providers)
  store i64 %call, ptr %provider_count, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !tbaa !12
  %5 = load i64, ptr %provider_count, align 8, !tbaa !12
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain_member) #8
  store ptr null, ptr %chain_member, align 8, !tbaa !4
  %6 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers3 = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %i, align 8, !tbaa !12
  %call4 = call i32 @aws_array_list_get_at(ptr noundef %providers3, ptr noundef %chain_member, i64 noundef %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %8 = load ptr, ptr %chain_member, align 8, !tbaa !4
  %call7 = call ptr @aws_credentials_provider_release(ptr noundef %8)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain_member) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %9 = load i64, ptr %i, align 8, !tbaa !12
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %10 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  call void @aws_credentials_provider_invoke_shutdown_callback(ptr noundef %10)
  %11 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers9 = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %11, i32 0, i32 0
  call void @aws_array_list_clean_up(ptr noundef %providers9)
  %12 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_credentials_provider, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %allocator, align 8, !tbaa !25
  %14 = load ptr, ptr %provider.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %13, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %provider_count) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #8
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %unreachable [
    i32 0, label %cleanup.cont12
    i32 1, label %cleanup.cont12
  ]

cleanup.cont12:                                   ; preds = %cleanup10, %cleanup10
  ret void

unreachable:                                      ; preds = %cleanup10, %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_get_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !12
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %data, align 8, !tbaa !15
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %item_size, align 8, !tbaa !18
  %7 = load i64, ptr %index.addr, align 8, !tbaa !12
  %mul = mul i64 %6, %7
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size1 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size1, align 8, !tbaa !18
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

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #2

declare ptr @aws_logger_get() #2

declare i32 @aws_credentials_provider_get_credentials(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_provider_chain_member_callback(ptr noundef %credentials, i32 noundef %error_code, ptr noundef %user_data) #0 {
entry:
  %credentials.addr = alloca ptr, align 8
  %error_code.addr = alloca i32, align 4
  %user_data.addr = alloca ptr, align 8
  %wrapped_user_data = alloca ptr, align 8
  %provider = alloca ptr, align 8
  %impl = alloca ptr, align 8
  %provider_count = alloca i64, align 8
  %logger = alloca ptr, align 8
  %logger15 = alloca ptr, align 8
  %next_provider = alloca ptr, align 8
  %logger41 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %credentials, ptr %credentials.addr, align 8, !tbaa !4
  store i32 %error_code, ptr %error_code.addr, align 4, !tbaa !20
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %wrapped_user_data) #8
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %wrapped_user_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %provider) #8
  %1 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %provider_chain = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %provider_chain, align 8, !tbaa !28
  store ptr %2, ptr %provider, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %impl) #8
  %3 = load ptr, ptr %provider, align 8, !tbaa !4
  %impl1 = getelementptr inbounds %struct.aws_credentials_provider, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %impl1, align 8, !tbaa !22
  store ptr %4, ptr %impl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %provider_count) #8
  %5 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %5, i32 0, i32 0
  %call = call i64 @aws_array_list_length(ptr noundef %providers)
  store i64 %call, ptr %provider_count, align 8, !tbaa !12
  %6 = load ptr, ptr %credentials.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %current_provider_index = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %current_provider_index, align 8, !tbaa !29
  %add = add i64 %8, 1
  %9 = load i64, ptr %provider_count, align 8, !tbaa !12
  %cmp2 = icmp uge i64 %add, %9
  br i1 %cmp2, label %if.then, label %if.end13

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #8
  %call3 = call ptr @aws_logger_get()
  store ptr %call3, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %10, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vtable, align 8, !tbaa !32
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %get_log_level, align 8, !tbaa !34
  %14 = load ptr, ptr %logger, align 8, !tbaa !4
  %call5 = call i32 %13(ptr noundef %14, i32 noundef 6146)
  %cmp6 = icmp uge i32 %call5, 4
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable8 = getelementptr inbounds %struct.aws_logger, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vtable8, align 8, !tbaa !32
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %log, align 8, !tbaa !36
  %18 = load ptr, ptr %logger, align 8, !tbaa !4
  %19 = load ptr, ptr %provider, align 8, !tbaa !4
  %20 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %current_provider_index9 = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %current_provider_index9, align 8, !tbaa !29
  %add10 = add i64 %21, 1
  %22 = load ptr, ptr %credentials.addr, align 8, !tbaa !4
  %cmp11 = icmp ne ptr %22, null
  %23 = zext i1 %cmp11 to i64
  %cond = select i1 %cmp11, ptr @.str.4, ptr @.str.5
  %24 = load i32, ptr %error_code.addr, align 4, !tbaa !20
  %call12 = call i32 (ptr, i32, i32, ptr, ...) %17(ptr noundef %18, i32 noundef 4, i32 noundef 6146, ptr noundef @.str.3, ptr noundef %19, i64 noundef %add10, ptr noundef %cond, i32 noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %on_terminate_chain

if.end13:                                         ; preds = %lor.lhs.false
  br label %do.body14

do.body14:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger15) #8
  %call16 = call ptr @aws_logger_get()
  store ptr %call16, ptr %logger15, align 8, !tbaa !4
  %25 = load ptr, ptr %logger15, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %25, null
  br i1 %cmp17, label %land.lhs.true18, label %if.end31

land.lhs.true18:                                  ; preds = %do.body14
  %26 = load ptr, ptr %logger15, align 8, !tbaa !4
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable19, align 8, !tbaa !32
  %get_log_level20 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %get_log_level20, align 8, !tbaa !34
  %29 = load ptr, ptr %logger15, align 8, !tbaa !4
  %call21 = call i32 %28(ptr noundef %29, i32 noundef 6146)
  %cmp22 = icmp uge i32 %call21, 5
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %land.lhs.true18
  %30 = load ptr, ptr %logger15, align 8, !tbaa !4
  %vtable24 = getelementptr inbounds %struct.aws_logger, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %vtable24, align 8, !tbaa !32
  %log25 = getelementptr inbounds %struct.aws_logger_vtable, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %log25, align 8, !tbaa !36
  %33 = load ptr, ptr %logger15, align 8, !tbaa !4
  %34 = load ptr, ptr %provider, align 8, !tbaa !4
  %35 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %current_provider_index26 = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %35, i32 0, i32 2
  %36 = load i64, ptr %current_provider_index26, align 8, !tbaa !29
  %add27 = add i64 %36, 1
  %37 = load ptr, ptr %credentials.addr, align 8, !tbaa !4
  %cmp28 = icmp ne ptr %37, null
  %38 = zext i1 %cmp28 to i64
  %cond29 = select i1 %cmp28, ptr @.str.4, ptr @.str.5
  %39 = load i32, ptr %error_code.addr, align 4, !tbaa !20
  %call30 = call i32 (ptr, i32, i32, ptr, ...) %32(ptr noundef %33, i32 noundef 5, i32 noundef 6146, ptr noundef @.str.6, ptr noundef %34, i64 noundef %add27, ptr noundef %cond29, i32 noundef %39)
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %land.lhs.true18, %do.body14
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger15) #8
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  %40 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %current_provider_index34 = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %40, i32 0, i32 2
  %41 = load i64, ptr %current_provider_index34, align 8, !tbaa !29
  %inc = add i64 %41, 1
  store i64 %inc, ptr %current_provider_index34, align 8, !tbaa !29
  store ptr null, ptr %next_provider, align 8, !tbaa !4
  %42 = load ptr, ptr %impl, align 8, !tbaa !4
  %providers35 = getelementptr inbounds %struct.aws_credentials_provider_chain_impl, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %current_provider_index36 = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %43, i32 0, i32 2
  %44 = load i64, ptr %current_provider_index36, align 8, !tbaa !29
  %call37 = call i32 @aws_array_list_get_at(ptr noundef %providers35, ptr noundef %next_provider, i64 noundef %44)
  %tobool = icmp ne i32 %call37, 0
  br i1 %tobool, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.end33
  br label %on_terminate_chain

if.end39:                                         ; preds = %do.end33
  br label %do.body40

do.body40:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger41) #8
  %call42 = call ptr @aws_logger_get()
  store ptr %call42, ptr %logger41, align 8, !tbaa !4
  %45 = load ptr, ptr %logger41, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %45, null
  br i1 %cmp43, label %land.lhs.true44, label %if.end54

land.lhs.true44:                                  ; preds = %do.body40
  %46 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable45 = getelementptr inbounds %struct.aws_logger, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %vtable45, align 8, !tbaa !32
  %get_log_level46 = getelementptr inbounds %struct.aws_logger_vtable, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %get_log_level46, align 8, !tbaa !34
  %49 = load ptr, ptr %logger41, align 8, !tbaa !4
  %call47 = call i32 %48(ptr noundef %49, i32 noundef 6146)
  %cmp48 = icmp uge i32 %call47, 5
  br i1 %cmp48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %land.lhs.true44
  %50 = load ptr, ptr %logger41, align 8, !tbaa !4
  %vtable50 = getelementptr inbounds %struct.aws_logger, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %vtable50, align 8, !tbaa !32
  %log51 = getelementptr inbounds %struct.aws_logger_vtable, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %log51, align 8, !tbaa !36
  %53 = load ptr, ptr %logger41, align 8, !tbaa !4
  %54 = load ptr, ptr %provider, align 8, !tbaa !4
  %55 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %current_provider_index52 = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %55, i32 0, i32 2
  %56 = load i64, ptr %current_provider_index52, align 8, !tbaa !29
  %call53 = call i32 (ptr, i32, i32, ptr, ...) %52(ptr noundef %53, i32 noundef 5, i32 noundef 6146, ptr noundef @.str.7, ptr noundef %54, i64 noundef %56)
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %land.lhs.true44, %do.body40
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger41) #8
  br label %do.cond55

do.cond55:                                        ; preds = %if.end54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  %57 = load ptr, ptr %next_provider, align 8, !tbaa !4
  %58 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %call57 = call i32 @aws_credentials_provider_get_credentials(ptr noundef %57, ptr noundef @s_aws_provider_chain_member_callback, ptr noundef %58)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_terminate_chain:                               ; preds = %if.then38, %do.end
  %59 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %original_callback = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %original_callback, align 8, !tbaa !31
  %61 = load ptr, ptr %credentials.addr, align 8, !tbaa !4
  %62 = load i32, ptr %error_code.addr, align 4, !tbaa !20
  %63 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %original_user_data = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %63, i32 0, i32 4
  %64 = load ptr, ptr %original_user_data, align 8, !tbaa !30
  call void %60(ptr noundef %61, i32 noundef %62, ptr noundef %64)
  %65 = load ptr, ptr %provider, align 8, !tbaa !4
  %call58 = call ptr @aws_credentials_provider_release(ptr noundef %65)
  %66 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_credentials_provider_chain_user_data, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %allocator, align 8, !tbaa !26
  %68 = load ptr, ptr %wrapped_user_data, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %67, ptr noundef %68)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_terminate_chain, %do.end56
  call void @llvm.lifetime.end.p0(i64 8, ptr %provider_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %impl) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %provider) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %wrapped_user_data) #8
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
  %1 = load i64, ptr %length, align 8, !tbaa !37
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !15
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 342) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !37
  store i64 %5, ptr %len, align 8, !tbaa !12
  %6 = load i64, ptr %len, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8
  ret i64 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #4 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !20
  %0 = load i32, ptr %err.addr, align 4, !tbaa !20
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #6

declare void @aws_raise_error_private(i32 noundef) #2

declare ptr @aws_credentials_provider_release(ptr noundef) #2

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

declare void @aws_credentials_provider_invoke_shutdown_callback(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_clean_up(ptr noalias noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !19
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !15
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc2, align 8, !tbaa !19
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !15
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !12
  store i64 %b, ptr %b.addr, align 8, !tbaa !12
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !12
  %1 = load i64, ptr %b.addr, align 8, !tbaa !12
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_mul_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !12
  store i64 %b, ptr %b.addr, align 8, !tbaa !12
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !12
  %1 = load i64, ptr %b.addr, align 8, !tbaa !12
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
define internal i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load i64, ptr %index.addr, align 8, !tbaa !12
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
  %3 = load ptr, ptr %data, align 8, !tbaa !15
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 389) #9
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !15
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !18
  %8 = load i64, ptr %index.addr, align 8, !tbaa !12
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %11, i1 false)
  %12 = load i64, ptr %index.addr, align 8, !tbaa !12
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call6 = call i64 @aws_array_list_length(ptr noundef %13)
  %cmp = icmp uge i64 %12, %call6
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %14 = load i64, ptr %index.addr, align 8, !tbaa !12
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
  store i64 %a, ptr %a.addr, align 8, !tbaa !12
  store i64 %b, ptr %b.addr, align 8, !tbaa !12
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !12
  %1 = load i64, ptr %b.addr, align 8, !tbaa !12
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
  store i64 %a, ptr %a.addr, align 8, !tbaa !12
  store i64 %b, ptr %b.addr, align 8, !tbaa !12
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !12
  %1 = load i64, ptr %b.addr, align 8, !tbaa !12
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
!8 = !{!9, !11, i64 24}
!9 = !{!"aws_credentials_provider_chain_options", !10, i64 0, !5, i64 16, !11, i64 24}
!10 = !{!"aws_credentials_provider_shutdown_options", !5, i64 0, !5, i64 8}
!11 = !{!"long", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!9, !5, i64 16}
!14 = !{i64 0, i64 8, !4, i64 8, i64 8, !4}
!15 = !{!16, !5, i64 32}
!16 = !{!"aws_array_list", !5, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !5, i64 32}
!17 = !{!16, !11, i64 8}
!18 = !{!16, !11, i64 24}
!19 = !{!16, !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !6, i64 0}
!22 = !{!23, !5, i64 32}
!23 = !{!"aws_credentials_provider", !5, i64 0, !5, i64 8, !10, i64 16, !5, i64 32, !24, i64 40}
!24 = !{!"aws_atomic_var", !5, i64 0}
!25 = !{!23, !5, i64 8}
!26 = !{!27, !5, i64 0}
!27 = !{!"aws_credentials_provider_chain_user_data", !5, i64 0, !5, i64 8, !11, i64 16, !5, i64 24, !5, i64 32}
!28 = !{!27, !5, i64 8}
!29 = !{!27, !11, i64 16}
!30 = !{!27, !5, i64 32}
!31 = !{!27, !5, i64 24}
!32 = !{!33, !5, i64 0}
!33 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!34 = !{!35, !5, i64 8}
!35 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!36 = !{!35, !5, i64 0}
!37 = !{!16, !11, i64 16}

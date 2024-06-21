; ModuleID = 'samples/861.bc'
source_filename = "cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_cipher_definition_t = type { i32, ptr }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, ptr, i32, i32, i32, ptr }
%struct.mbedtls_cipher_base_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mbedtls_cipher_context_t = type { ptr, i32, i32, ptr, ptr, [16 x i8], i64, [16 x i8], i64, ptr, ptr }

@supported_init = internal global i32 0, align 4
@mbedtls_cipher_definitions = external constant [0 x %struct.mbedtls_cipher_definition_t], align 8
@mbedtls_cipher_supported = external global [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @mbedtls_cipher_list() #0 {
entry:
  %def = alloca ptr, align 8
  %type = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %def) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #8
  %0 = load i32, ptr @supported_init, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr @mbedtls_cipher_definitions, ptr %def, align 8, !tbaa !9
  store ptr @mbedtls_cipher_supported, ptr %type, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load ptr, ptr %def, align 8, !tbaa !9
  %type1 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %type1, align 8, !tbaa !11
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %def, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %def, align 8, !tbaa !9
  %type2 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type2, align 8, !tbaa !11
  %5 = load ptr, ptr %type, align 8, !tbaa !9
  %incdec.ptr3 = getelementptr inbounds i32, ptr %5, i32 1
  store ptr %incdec.ptr3, ptr %type, align 8, !tbaa !9
  store i32 %4, ptr %5, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %type, align 8, !tbaa !9
  store i32 0, ptr %6, align 4, !tbaa !5
  store i32 1, ptr @supported_init, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %def) #8
  ret ptr @mbedtls_cipher_supported
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @mbedtls_cipher_info_from_type(i32 noundef %cipher_type) #0 {
entry:
  %retval = alloca ptr, align 8
  %cipher_type.addr = alloca i32, align 4
  %def = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cipher_type, ptr %cipher_type.addr, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %def) #8
  store ptr @mbedtls_cipher_definitions, ptr %def, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %def, align 8, !tbaa !9
  %info = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %info, align 8, !tbaa !16
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %def, align 8, !tbaa !9
  %type = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %type, align 8, !tbaa !11
  %4 = load i32, ptr %cipher_type.addr, align 4, !tbaa !15
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %def, align 8, !tbaa !9
  %info2 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %info2, align 8, !tbaa !16
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %def, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %def, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %def) #8
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mbedtls_cipher_info_from_string(ptr noundef %cipher_name) #0 {
entry:
  %retval = alloca ptr, align 8
  %cipher_name.addr = alloca ptr, align 8
  %def = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cipher_name, ptr %cipher_name.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %def) #8
  %0 = load ptr, ptr %cipher_name.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr @mbedtls_cipher_definitions, ptr %def, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %def, align 8, !tbaa !9
  %info = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %info, align 8, !tbaa !16
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %def, align 8, !tbaa !9
  %info2 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %info2, align 8, !tbaa !16
  %name = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %name, align 8, !tbaa !18
  %6 = load ptr, ptr %cipher_name.addr, align 8, !tbaa !9
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef %6) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %for.body
  %7 = load ptr, ptr %def, align 8, !tbaa !9
  %info4 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %info4, align 8, !tbaa !16
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %9 = load ptr, ptr %def, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %def, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %def) #8
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mbedtls_cipher_info_from_values(i32 noundef %cipher_id, i32 noundef %key_bitlen, i32 noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %cipher_id.addr = alloca i32, align 4
  %key_bitlen.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %def = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cipher_id, ptr %cipher_id.addr, align 4, !tbaa !15
  store i32 %key_bitlen, ptr %key_bitlen.addr, align 4, !tbaa !5
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %def) #8
  store ptr @mbedtls_cipher_definitions, ptr %def, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %def, align 8, !tbaa !9
  %info = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %info, align 8, !tbaa !16
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %def, align 8, !tbaa !9
  %info1 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %info1, align 8, !tbaa !16
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %base, align 8, !tbaa !21
  %cipher = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %cipher, align 8, !tbaa !22
  %6 = load i32, ptr %cipher_id.addr, align 4, !tbaa !15
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %def, align 8, !tbaa !9
  %info3 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %info3, align 8, !tbaa !16
  %key_bitlen4 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %key_bitlen4, align 8, !tbaa !24
  %10 = load i32, ptr %key_bitlen.addr, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %def, align 8, !tbaa !9
  %info7 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %info7, align 8, !tbaa !16
  %mode8 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %mode8, align 4, !tbaa !25
  %14 = load i32, ptr %mode.addr, align 4, !tbaa !15
  %cmp9 = icmp eq i32 %13, %14
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  %15 = load ptr, ptr %def, align 8, !tbaa !9
  %info10 = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %info10, align 8, !tbaa !16
  store ptr %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load ptr, ptr %def, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_cipher_definition_t, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %def, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %def) #8
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_cipher_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_cipher_free(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cmac_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %cmac_ctx, align 8, !tbaa !27
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cmac_ctx2 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %cmac_ctx2, align 8, !tbaa !27
  call void @mbedtls_platform_zeroize(ptr noundef %4, i64 noundef 40)
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cmac_ctx3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %cmac_ctx3, align 8, !tbaa !27
  call void @free(ptr noundef %6) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %tobool5 = icmp ne ptr %8, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %base, align 8, !tbaa !21
  %ctx_free_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %ctx_free_func, align 8, !tbaa !32
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %cipher_ctx7, align 8, !tbaa !30
  call void %12(ptr noundef %14)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  call void @mbedtls_platform_zeroize(ptr noundef %15, i64 noundef 96)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_setup(ptr noundef %ctx, ptr noundef %cipher_info) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %cipher_info.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %cipher_info, ptr %cipher_info.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cipher_info.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 96, i1 false)
  %2 = load ptr, ptr %cipher_info.addr, align 8, !tbaa !9
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %base, align 8, !tbaa !21
  %ctx_alloc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %ctx_alloc_func, align 8, !tbaa !33
  %call = call ptr %4()
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %5, i32 0, i32 9
  store ptr %call, ptr %cipher_ctx, align 8, !tbaa !30
  %cmp1 = icmp eq ptr null, %call
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24960, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %cipher_info.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info4 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %7, i32 0, i32 0
  store ptr %6, ptr %cipher_info4, align 8, !tbaa !31
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call5 = call i32 @mbedtls_cipher_set_padding_mode(ptr noundef %8, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_set_padding_mode(ptr noundef %ctx, i32 noundef %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !15
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr null, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cipher_info1, align 8, !tbaa !31
  %mode2 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %mode2, align 4, !tbaa !25
  %cmp3 = icmp ne i32 2, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %mode.addr, align 4, !tbaa !15
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
    i32 4, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %6, i32 0, i32 3
  store ptr @add_pkcs_padding, ptr %add_padding, align 8, !tbaa !34
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %get_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %7, i32 0, i32 4
  store ptr @get_pkcs_padding, ptr %get_padding, align 8, !tbaa !35
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %8, i32 0, i32 3
  store ptr @add_one_and_zeros_padding, ptr %add_padding5, align 8, !tbaa !34
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %get_padding6 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %9, i32 0, i32 4
  store ptr @get_one_and_zeros_padding, ptr %get_padding6, align 8, !tbaa !35
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %10, i32 0, i32 3
  store ptr @add_zeros_and_len_padding, ptr %add_padding8, align 8, !tbaa !34
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %get_padding9 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %11, i32 0, i32 4
  store ptr @get_zeros_and_len_padding, ptr %get_padding9, align 8, !tbaa !35
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %12, i32 0, i32 3
  store ptr @add_zeros_padding, ptr %add_padding11, align 8, !tbaa !34
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %get_padding12 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %13, i32 0, i32 4
  store ptr @get_zeros_padding, ptr %get_padding12, align 8, !tbaa !35
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding14 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %14, i32 0, i32 3
  store ptr null, ptr %add_padding14, align 8, !tbaa !34
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %get_padding15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %15, i32 0, i32 4
  store ptr @get_no_padding, ptr %get_padding15, align 8, !tbaa !35
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -24704, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_setkey(ptr noundef %ctx, ptr noundef %key, i32 noundef %key_bitlen, i32 noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %key_bitlen.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %key, ptr %key.addr, align 8, !tbaa !9
  store i32 %key_bitlen, ptr %key_bitlen.addr, align 4, !tbaa !5
  store i32 %operation, ptr %operation.addr, align 4, !tbaa !15
  %0 = load i32, ptr %operation.addr, align 4, !tbaa !15
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %operation.addr, align 4, !tbaa !15
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %cipher_info5, align 8, !tbaa !31
  %flags = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %flags, align 4, !tbaa !36
  %and = and i32 %6, 2
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %if.end4
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %cipher_info8, align 8, !tbaa !31
  %key_bitlen9 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %key_bitlen9, align 8, !tbaa !24
  %10 = load i32, ptr %key_bitlen.addr, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %9, %10
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true7
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true7, %if.end4
  %11 = load i32, ptr %key_bitlen.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %key_bitlen13 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %12, i32 0, i32 1
  store i32 %11, ptr %key_bitlen13, align 8, !tbaa !37
  %13 = load i32, ptr %operation.addr, align 4, !tbaa !15
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation14 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %14, i32 0, i32 2
  store i32 %13, ptr %operation14, align 4, !tbaa !38
  %15 = load i32, ptr %operation.addr, align 4, !tbaa !15
  %cmp15 = icmp eq i32 1, %15
  br i1 %cmp15, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info16 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %cipher_info16, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp17 = icmp eq i32 3, %18
  br i1 %cmp17, label %if.then26, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info19 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %cipher_info19, align 8, !tbaa !31
  %mode20 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %mode20, align 4, !tbaa !25
  %cmp21 = icmp eq i32 4, %21
  br i1 %cmp21, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info23 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %cipher_info23, align 8, !tbaa !31
  %mode24 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %mode24, align 4, !tbaa !25
  %cmp25 = icmp eq i32 5, %24
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %lor.lhs.false22, %lor.lhs.false18, %lor.lhs.false, %if.end12
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info27 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %cipher_info27, align 8, !tbaa !31
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %26, i32 0, i32 7
  %27 = load ptr, ptr %base, align 8, !tbaa !21
  %setkey_enc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %27, i32 0, i32 8
  %28 = load ptr, ptr %setkey_enc_func, align 8, !tbaa !39
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %31 = load ptr, ptr %key.addr, align 8, !tbaa !9
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %key_bitlen28 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %key_bitlen28, align 8, !tbaa !37
  %call = call i32 %28(ptr noundef %30, ptr noundef %31, i32 noundef %33)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %lor.lhs.false22
  %34 = load i32, ptr %operation.addr, align 4, !tbaa !15
  %cmp30 = icmp eq i32 0, %34
  br i1 %cmp30, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end29
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info32 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %cipher_info32, align 8, !tbaa !31
  %base33 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %base33, align 8, !tbaa !21
  %setkey_dec_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %37, i32 0, i32 9
  %38 = load ptr, ptr %setkey_dec_func, align 8, !tbaa !40
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx34 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %39, i32 0, i32 9
  %40 = load ptr, ptr %cipher_ctx34, align 8, !tbaa !30
  %41 = load ptr, ptr %key.addr, align 8, !tbaa !9
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %key_bitlen35 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %key_bitlen35, align 8, !tbaa !37
  %call36 = call i32 %38(ptr noundef %40, ptr noundef %41, i32 noundef %43)
  store i32 %call36, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end29
  store i32 -24832, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then31, %if.then26, %if.then11, %if.then3, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_set_iv(ptr noundef %ctx, ptr noundef %iv, i64 noundef %iv_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %iv_len.addr = alloca i64, align 8
  %actual_iv_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %set_lengths_result = alloca i32, align 4
  %ccm_star_mode = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !9
  store i64 %iv_len, ptr %iv_len.addr, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %actual_iv_size) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %cmp1 = icmp ugt i64 %2, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24704, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info4 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %cipher_info4, align 8, !tbaa !31
  %flags = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %flags, align 4, !tbaa !36
  %and = and i32 %5, 1
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %6 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  store i64 %6, ptr %actual_iv_size, align 8, !tbaa !41
  br label %if.end12

if.else:                                          ; preds = %if.end3
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %cipher_info7, align 8, !tbaa !31
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %iv_size, align 8, !tbaa !42
  %conv = zext i32 %9 to i64
  store i64 %conv, ptr %actual_iv_size, align 8, !tbaa !41
  %10 = load i64, ptr %actual_iv_size, align 8, !tbaa !41
  %11 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %cmp8 = icmp ugt i64 %10, %11
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then6
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info13 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %cipher_info13, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %type, align 8, !tbaa !43
  %cmp14 = icmp eq i32 %14, 76
  br i1 %cmp14, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.end12
  %15 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %cmp17 = icmp ne i64 %15, 12
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end20:                                         ; preds = %if.then16
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %18 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %call = call i32 @mbedtls_chacha20_starts(ptr noundef %17, ptr noundef %18, i32 noundef 0)
  %cmp21 = icmp ne i32 0, %call
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end24:                                         ; preds = %if.end20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end12
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info26 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %cipher_info26, align 8, !tbaa !31
  %type27 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %type27, align 8, !tbaa !43
  %cmp28 = icmp eq i32 %21, 77
  br i1 %cmp28, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end25
  %22 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %cmp30 = icmp ne i64 %22, 12
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end33:                                         ; preds = %land.lhs.true, %if.end25
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info34 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %cipher_info34, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp35 = icmp eq i32 6, %25
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx38 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %cipher_ctx38, align 8, !tbaa !30
  %28 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %operation, align 4, !tbaa !38
  %30 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %31 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %call39 = call i32 @mbedtls_gcm_starts(ptr noundef %27, i32 noundef %29, ptr noundef %30, i64 noundef %31)
  store i32 %call39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end40:                                         ; preds = %if.end33
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info41 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %cipher_info41, align 8, !tbaa !31
  %mode42 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %mode42, align 4, !tbaa !25
  %cmp43 = icmp eq i32 9, %34
  br i1 %cmp43, label %if.then45, label %if.end67

if.then45:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %set_lengths_result) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ccm_star_mode) #8
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx46 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %35, i32 0, i32 9
  %36 = load ptr, ptr %cipher_ctx46, align 8, !tbaa !30
  %call47 = call i32 @mbedtls_ccm_set_lengths(ptr noundef %36, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  store i32 %call47, ptr %set_lengths_result, align 4, !tbaa !5
  %37 = load i32, ptr %set_lengths_result, align 4, !tbaa !5
  %cmp48 = icmp ne i32 %37, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then45
  %38 = load i32, ptr %set_lengths_result, align 4, !tbaa !5
  store i32 %38, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.then45
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation52 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %operation52, align 4, !tbaa !38
  %cmp53 = icmp eq i32 %40, 0
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.end51
  store i32 2, ptr %ccm_star_mode, align 4, !tbaa !5
  br label %if.end63

if.else56:                                        ; preds = %if.end51
  %41 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation57 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %operation57, align 4, !tbaa !38
  %cmp58 = icmp eq i32 %42, 1
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.else56
  store i32 3, ptr %ccm_star_mode, align 4, !tbaa !5
  br label %if.end62

if.else61:                                        ; preds = %if.else56
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.then60
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then55
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx64 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %43, i32 0, i32 9
  %44 = load ptr, ptr %cipher_ctx64, align 8, !tbaa !30
  %45 = load i32, ptr %ccm_star_mode, align 4, !tbaa !5
  %46 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %47 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %call65 = call i32 @mbedtls_ccm_starts(ptr noundef %44, i32 noundef %45, ptr noundef %46, i64 noundef %47)
  store i32 %call65, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.else61, %if.then50
  call void @llvm.lifetime.end.p0(i64 4, ptr %ccm_star_mode) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %set_lengths_result) #8
  br label %cleanup74

if.end67:                                         ; preds = %if.end40
  %48 = load i64, ptr %actual_iv_size, align 8, !tbaa !41
  %cmp68 = icmp ne i64 %48, 0
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end67
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv71 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %49, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], ptr %iv71, i64 0, i64 0
  %50 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %51 = load i64, ptr %actual_iv_size, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 %50, i64 %51, i1 false)
  %52 = load i64, ptr %actual_iv_size, align 8, !tbaa !41
  %53 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv_size72 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %53, i32 0, i32 8
  store i64 %52, ptr %iv_size72, align 8, !tbaa !44
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end67
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

cleanup74:                                        ; preds = %if.end73, %cleanup, %if.then37, %if.then32, %if.then23, %if.then19, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %actual_iv_size) #8
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

declare i32 @mbedtls_chacha20_starts(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @mbedtls_gcm_starts(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #4

declare i32 @mbedtls_ccm_set_lengths(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #4

declare i32 @mbedtls_ccm_starts(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_reset(ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 6
  store i64 0, ptr %unprocessed_len, align 8, !tbaa !45
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_update_ad(ptr noundef %ctx, ptr noundef %ad, i64 noundef %ad_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %ad.addr = alloca ptr, align 8
  %ad_len.addr = alloca i64, align 8
  %result = alloca i32, align 4
  %mode8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %ad, ptr %ad.addr, align 8, !tbaa !9
  store i64 %ad_len, ptr %ad_len.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cipher_info1, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp2 = icmp eq i32 6, %4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %7 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %8 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %call = call i32 @mbedtls_gcm_update_ad(ptr noundef %6, ptr noundef %7, i64 noundef %8)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %cipher_info5, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %type, align 8, !tbaa !43
  %cmp6 = icmp eq i32 77, %11
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode8) #8
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %operation, align 4, !tbaa !38
  %cmp9 = icmp eq i32 %13, 1
  %14 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 0, i32 1
  store i32 %cond, ptr %mode8, align 4, !tbaa !15
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx10 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %cipher_ctx10, align 8, !tbaa !30
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %17, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  %18 = load i32, ptr %mode8, align 4, !tbaa !15
  %call11 = call i32 @mbedtls_chachapoly_starts(ptr noundef %16, ptr noundef %arraydecay, i32 noundef %18)
  store i32 %call11, ptr %result, align 4, !tbaa !5
  %19 = load i32, ptr %result, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %19, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then7
  %20 = load i32, ptr %result, align 4, !tbaa !5
  store i32 %20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then7
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %cipher_ctx15, align 8, !tbaa !30
  %23 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %24 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %call16 = call i32 @mbedtls_chachapoly_update_aad(ptr noundef %22, ptr noundef %23, i64 noundef %24)
  store i32 %call16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8
  br label %return

if.end18:                                         ; preds = %if.end4
  store i32 -24704, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %cleanup, %if.then3, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare i32 @mbedtls_gcm_update_ad(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @mbedtls_chachapoly_starts(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @mbedtls_chachapoly_update_aad(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_update(ptr noundef %ctx, ptr noundef %input, i64 noundef %ilen, ptr noundef %output, ptr noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %olen.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %block_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %copy_len = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !41
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_size) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !41
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call = call i32 @mbedtls_cipher_get_block_size(ptr noundef %3)
  %conv = zext i32 %call to i64
  store i64 %conv, ptr %block_size, align 8, !tbaa !41
  %4 = load i64, ptr %block_size, align 8, !tbaa !41
  %cmp1 = icmp eq i64 0, %4
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -25472, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %cipher_info5, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp6 = icmp eq i32 %7, 1
  br i1 %cmp6, label %if.then8, label %if.end19

if.then8:                                         ; preds = %if.end4
  %8 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %9 = load i64, ptr %block_size, align 8, !tbaa !41
  %cmp9 = icmp ne i64 %8, %9
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  store i32 -25216, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end12:                                         ; preds = %if.then8
  %10 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %11 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %10, ptr %11, align 8, !tbaa !41
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info13 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %cipher_info13, align 8, !tbaa !31
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %base, align 8, !tbaa !21
  %ecb_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %ecb_func, align 8, !tbaa !46
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %operation, align 4, !tbaa !38
  %20 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call14 = call i32 %15(ptr noundef %17, i32 noundef %19, ptr noundef %20, ptr noundef %21)
  store i32 %call14, ptr %ret, align 4, !tbaa !5
  %cmp15 = icmp ne i32 0, %call14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %22 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end18:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end19:                                         ; preds = %if.end4
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info20 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %cipher_info20, align 8, !tbaa !31
  %mode21 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %mode21, align 4, !tbaa !25
  %cmp22 = icmp eq i32 %25, 6
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end19
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx25 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %cipher_ctx25, align 8, !tbaa !30
  %28 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %29 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %30 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %31 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %32 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %call26 = call i32 @mbedtls_gcm_update(ptr noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  store i32 %call26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end27:                                         ; preds = %if.end19
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info28 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %cipher_info28, align 8, !tbaa !31
  %mode29 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %mode29, align 4, !tbaa !25
  %cmp30 = icmp eq i32 %35, 9
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end27
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx33 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %cipher_ctx33, align 8, !tbaa !30
  %38 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %39 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %40 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %41 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %42 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %call34 = call i32 @mbedtls_ccm_update(ptr noundef %37, ptr noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42)
  store i32 %call34, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end35:                                         ; preds = %if.end27
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info36 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %cipher_info36, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %type, align 8, !tbaa !43
  %cmp37 = icmp eq i32 %45, 77
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  %46 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %47 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %46, ptr %47, align 8, !tbaa !41
  %48 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx40 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %48, i32 0, i32 9
  %49 = load ptr, ptr %cipher_ctx40, align 8, !tbaa !30
  %50 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %51 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %52 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call41 = call i32 @mbedtls_chachapoly_update(ptr noundef %49, i64 noundef %50, ptr noundef %51, ptr noundef %52)
  store i32 %call41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end42:                                         ; preds = %if.end35
  %53 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %54 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %cmp43 = icmp eq ptr %53, %54
  br i1 %cmp43, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %if.end42
  %55 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %55, i32 0, i32 6
  %56 = load i64, ptr %unprocessed_len, align 8, !tbaa !45
  %cmp45 = icmp ne i64 %56, 0
  br i1 %cmp45, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %57 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %58 = load i64, ptr %block_size, align 8, !tbaa !41
  %rem = urem i64 %57, %58
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end48:                                         ; preds = %lor.lhs.false, %if.end42
  %59 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info49 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %cipher_info49, align 8, !tbaa !31
  %mode50 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %mode50, align 4, !tbaa !25
  %cmp51 = icmp eq i32 %61, 2
  br i1 %cmp51, label %if.then53, label %if.end155

if.then53:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy_len) #8
  store i64 0, ptr %copy_len, align 8, !tbaa !41
  %62 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation54 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %operation54, align 4, !tbaa !38
  %cmp55 = icmp eq i32 %63, 0
  br i1 %cmp55, label %land.lhs.true57, label %lor.lhs.false64

land.lhs.true57:                                  ; preds = %if.then53
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %add_padding, align 8, !tbaa !34
  %cmp58 = icmp ne ptr null, %65
  br i1 %cmp58, label %land.lhs.true60, label %lor.lhs.false64

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %66 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %67 = load i64, ptr %block_size, align 8, !tbaa !41
  %68 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len61 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %68, i32 0, i32 6
  %69 = load i64, ptr %unprocessed_len61, align 8, !tbaa !45
  %sub = sub i64 %67, %69
  %cmp62 = icmp ule i64 %66, %sub
  br i1 %cmp62, label %if.then86, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %land.lhs.true60, %land.lhs.true57, %if.then53
  %70 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation65 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %operation65, align 4, !tbaa !38
  %cmp66 = icmp eq i32 %71, 0
  br i1 %cmp66, label %land.lhs.true68, label %lor.lhs.false77

land.lhs.true68:                                  ; preds = %lor.lhs.false64
  %72 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding69 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %72, i32 0, i32 3
  %73 = load ptr, ptr %add_padding69, align 8, !tbaa !34
  %cmp70 = icmp eq ptr null, %73
  br i1 %cmp70, label %land.lhs.true72, label %lor.lhs.false77

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %74 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %75 = load i64, ptr %block_size, align 8, !tbaa !41
  %76 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len73 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %76, i32 0, i32 6
  %77 = load i64, ptr %unprocessed_len73, align 8, !tbaa !45
  %sub74 = sub i64 %75, %77
  %cmp75 = icmp ult i64 %74, %sub74
  br i1 %cmp75, label %if.then86, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %land.lhs.true72, %land.lhs.true68, %lor.lhs.false64
  %78 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation78 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %78, i32 0, i32 2
  %79 = load i32, ptr %operation78, align 4, !tbaa !38
  %cmp79 = icmp eq i32 %79, 1
  br i1 %cmp79, label %land.lhs.true81, label %if.end89

land.lhs.true81:                                  ; preds = %lor.lhs.false77
  %80 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %81 = load i64, ptr %block_size, align 8, !tbaa !41
  %82 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len82 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %82, i32 0, i32 6
  %83 = load i64, ptr %unprocessed_len82, align 8, !tbaa !45
  %sub83 = sub i64 %81, %83
  %cmp84 = icmp ult i64 %80, %sub83
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %land.lhs.true81, %land.lhs.true72, %land.lhs.true60
  %84 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_data = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %84, i32 0, i32 5
  %85 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len87 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %85, i32 0, i32 6
  %86 = load i64, ptr %unprocessed_len87, align 8, !tbaa !45
  %arrayidx = getelementptr inbounds [16 x i8], ptr %unprocessed_data, i64 0, i64 %86
  %87 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %88 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %87, i64 %88, i1 false)
  %89 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %90 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len88 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %90, i32 0, i32 6
  %91 = load i64, ptr %unprocessed_len88, align 8, !tbaa !45
  %add = add i64 %91, %89
  store i64 %add, ptr %unprocessed_len88, align 8, !tbaa !45
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %land.lhs.true81, %lor.lhs.false77
  %92 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len90 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %92, i32 0, i32 6
  %93 = load i64, ptr %unprocessed_len90, align 8, !tbaa !45
  %cmp91 = icmp ne i64 0, %93
  br i1 %cmp91, label %if.then93, label %if.end114

if.then93:                                        ; preds = %if.end89
  %94 = load i64, ptr %block_size, align 8, !tbaa !41
  %95 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len94 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %95, i32 0, i32 6
  %96 = load i64, ptr %unprocessed_len94, align 8, !tbaa !45
  %sub95 = sub i64 %94, %96
  store i64 %sub95, ptr %copy_len, align 8, !tbaa !41
  %97 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_data96 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %97, i32 0, i32 5
  %98 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len97 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %98, i32 0, i32 6
  %99 = load i64, ptr %unprocessed_len97, align 8, !tbaa !45
  %arrayidx98 = getelementptr inbounds [16 x i8], ptr %unprocessed_data96, i64 0, i64 %99
  %100 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %101 = load i64, ptr %copy_len, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx98, ptr align 1 %100, i64 %101, i1 false)
  %102 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info99 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %cipher_info99, align 8, !tbaa !31
  %base100 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %103, i32 0, i32 7
  %104 = load ptr, ptr %base100, align 8, !tbaa !21
  %cbc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %104, i32 0, i32 2
  %105 = load ptr, ptr %cbc_func, align 8, !tbaa !47
  %106 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx101 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %106, i32 0, i32 9
  %107 = load ptr, ptr %cipher_ctx101, align 8, !tbaa !30
  %108 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation102 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %operation102, align 4, !tbaa !38
  %110 = load i64, ptr %block_size, align 8, !tbaa !41
  %111 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %111, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  %112 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_data103 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %112, i32 0, i32 5
  %arraydecay104 = getelementptr inbounds [16 x i8], ptr %unprocessed_data103, i64 0, i64 0
  %113 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call105 = call i32 %105(ptr noundef %107, i32 noundef %109, i64 noundef %110, ptr noundef %arraydecay, ptr noundef %arraydecay104, ptr noundef %113)
  store i32 %call105, ptr %ret, align 4, !tbaa !5
  %cmp106 = icmp ne i32 0, %call105
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.then93
  %114 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %114, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.then93
  %115 = load i64, ptr %block_size, align 8, !tbaa !41
  %116 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %117 = load i64, ptr %116, align 8, !tbaa !41
  %add110 = add i64 %117, %115
  store i64 %add110, ptr %116, align 8, !tbaa !41
  %118 = load i64, ptr %block_size, align 8, !tbaa !41
  %119 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %119, i64 %118
  store ptr %add.ptr, ptr %output.addr, align 8, !tbaa !9
  %120 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len111 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %120, i32 0, i32 6
  store i64 0, ptr %unprocessed_len111, align 8, !tbaa !45
  %121 = load i64, ptr %copy_len, align 8, !tbaa !41
  %122 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr112 = getelementptr inbounds i8, ptr %122, i64 %121
  store ptr %add.ptr112, ptr %input.addr, align 8, !tbaa !9
  %123 = load i64, ptr %copy_len, align 8, !tbaa !41
  %124 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %sub113 = sub i64 %124, %123
  store i64 %sub113, ptr %ilen.addr, align 8, !tbaa !41
  br label %if.end114

if.end114:                                        ; preds = %if.end109, %if.end89
  %125 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %cmp115 = icmp ne i64 0, %125
  br i1 %cmp115, label %if.then117, label %if.end138

if.then117:                                       ; preds = %if.end114
  %126 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %127 = load i64, ptr %block_size, align 8, !tbaa !41
  %rem118 = urem i64 %126, %127
  store i64 %rem118, ptr %copy_len, align 8, !tbaa !41
  %128 = load i64, ptr %copy_len, align 8, !tbaa !41
  %cmp119 = icmp eq i64 %128, 0
  br i1 %cmp119, label %land.lhs.true121, label %if.end130

land.lhs.true121:                                 ; preds = %if.then117
  %129 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation122 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %129, i32 0, i32 2
  %130 = load i32, ptr %operation122, align 4, !tbaa !38
  %cmp123 = icmp eq i32 %130, 0
  br i1 %cmp123, label %land.lhs.true125, label %if.end130

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %131 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding126 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %131, i32 0, i32 3
  %132 = load ptr, ptr %add_padding126, align 8, !tbaa !34
  %cmp127 = icmp ne ptr null, %132
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %land.lhs.true125
  %133 = load i64, ptr %block_size, align 8, !tbaa !41
  store i64 %133, ptr %copy_len, align 8, !tbaa !41
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %land.lhs.true125, %land.lhs.true121, %if.then117
  %134 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_data131 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %134, i32 0, i32 5
  %arraydecay132 = getelementptr inbounds [16 x i8], ptr %unprocessed_data131, i64 0, i64 0
  %135 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %136 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %137 = load i64, ptr %copy_len, align 8, !tbaa !41
  %sub133 = sub i64 %136, %137
  %arrayidx134 = getelementptr inbounds i8, ptr %135, i64 %sub133
  %138 = load i64, ptr %copy_len, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay132, ptr align 1 %arrayidx134, i64 %138, i1 false)
  %139 = load i64, ptr %copy_len, align 8, !tbaa !41
  %140 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len135 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %140, i32 0, i32 6
  %141 = load i64, ptr %unprocessed_len135, align 8, !tbaa !45
  %add136 = add i64 %141, %139
  store i64 %add136, ptr %unprocessed_len135, align 8, !tbaa !45
  %142 = load i64, ptr %copy_len, align 8, !tbaa !41
  %143 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %sub137 = sub i64 %143, %142
  store i64 %sub137, ptr %ilen.addr, align 8, !tbaa !41
  br label %if.end138

if.end138:                                        ; preds = %if.end130, %if.end114
  %144 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %tobool139 = icmp ne i64 %144, 0
  br i1 %tobool139, label %if.then140, label %if.end154

if.then140:                                       ; preds = %if.end138
  %145 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info141 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %cipher_info141, align 8, !tbaa !31
  %base142 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %146, i32 0, i32 7
  %147 = load ptr, ptr %base142, align 8, !tbaa !21
  %cbc_func143 = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %147, i32 0, i32 2
  %148 = load ptr, ptr %cbc_func143, align 8, !tbaa !47
  %149 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx144 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %149, i32 0, i32 9
  %150 = load ptr, ptr %cipher_ctx144, align 8, !tbaa !30
  %151 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation145 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %151, i32 0, i32 2
  %152 = load i32, ptr %operation145, align 4, !tbaa !38
  %153 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %154 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv146 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %154, i32 0, i32 7
  %arraydecay147 = getelementptr inbounds [16 x i8], ptr %iv146, i64 0, i64 0
  %155 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %156 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call148 = call i32 %148(ptr noundef %150, i32 noundef %152, i64 noundef %153, ptr noundef %arraydecay147, ptr noundef %155, ptr noundef %156)
  store i32 %call148, ptr %ret, align 4, !tbaa !5
  %cmp149 = icmp ne i32 0, %call148
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.then140
  %157 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %157, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end152:                                        ; preds = %if.then140
  %158 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %159 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %160 = load i64, ptr %159, align 8, !tbaa !41
  %add153 = add i64 %160, %158
  store i64 %add153, ptr %159, align 8, !tbaa !41
  br label %if.end154

if.end154:                                        ; preds = %if.end152, %if.end138
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end154, %if.then151, %if.then108, %if.then86
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy_len) #8
  br label %cleanup246

if.end155:                                        ; preds = %if.end48
  %161 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info156 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %cipher_info156, align 8, !tbaa !31
  %mode157 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %162, i32 0, i32 1
  %163 = load i32, ptr %mode157, align 4, !tbaa !25
  %cmp158 = icmp eq i32 %163, 3
  br i1 %cmp158, label %if.then160, label %if.end173

if.then160:                                       ; preds = %if.end155
  %164 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info161 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %cipher_info161, align 8, !tbaa !31
  %base162 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %165, i32 0, i32 7
  %166 = load ptr, ptr %base162, align 8, !tbaa !21
  %cfb_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %166, i32 0, i32 3
  %167 = load ptr, ptr %cfb_func, align 8, !tbaa !48
  %168 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx163 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %168, i32 0, i32 9
  %169 = load ptr, ptr %cipher_ctx163, align 8, !tbaa !30
  %170 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation164 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %170, i32 0, i32 2
  %171 = load i32, ptr %operation164, align 4, !tbaa !38
  %172 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %173 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len165 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %173, i32 0, i32 6
  %174 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv166 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %174, i32 0, i32 7
  %arraydecay167 = getelementptr inbounds [16 x i8], ptr %iv166, i64 0, i64 0
  %175 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %176 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call168 = call i32 %167(ptr noundef %169, i32 noundef %171, i64 noundef %172, ptr noundef %unprocessed_len165, ptr noundef %arraydecay167, ptr noundef %175, ptr noundef %176)
  store i32 %call168, ptr %ret, align 4, !tbaa !5
  %cmp169 = icmp ne i32 0, %call168
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.then160
  %177 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %177, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end172:                                        ; preds = %if.then160
  %178 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %179 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %178, ptr %179, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end173:                                        ; preds = %if.end155
  %180 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info174 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %180, i32 0, i32 0
  %181 = load ptr, ptr %cipher_info174, align 8, !tbaa !31
  %mode175 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %181, i32 0, i32 1
  %182 = load i32, ptr %mode175, align 4, !tbaa !25
  %cmp176 = icmp eq i32 %182, 4
  br i1 %cmp176, label %if.then178, label %if.end190

if.then178:                                       ; preds = %if.end173
  %183 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info179 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %183, i32 0, i32 0
  %184 = load ptr, ptr %cipher_info179, align 8, !tbaa !31
  %base180 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %184, i32 0, i32 7
  %185 = load ptr, ptr %base180, align 8, !tbaa !21
  %ofb_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %185, i32 0, i32 4
  %186 = load ptr, ptr %ofb_func, align 8, !tbaa !49
  %187 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx181 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %187, i32 0, i32 9
  %188 = load ptr, ptr %cipher_ctx181, align 8, !tbaa !30
  %189 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %190 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len182 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %190, i32 0, i32 6
  %191 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv183 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %191, i32 0, i32 7
  %arraydecay184 = getelementptr inbounds [16 x i8], ptr %iv183, i64 0, i64 0
  %192 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %193 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call185 = call i32 %186(ptr noundef %188, i64 noundef %189, ptr noundef %unprocessed_len182, ptr noundef %arraydecay184, ptr noundef %192, ptr noundef %193)
  store i32 %call185, ptr %ret, align 4, !tbaa !5
  %cmp186 = icmp ne i32 0, %call185
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.then178
  %194 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %194, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end189:                                        ; preds = %if.then178
  %195 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %196 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %195, ptr %196, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end190:                                        ; preds = %if.end173
  %197 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info191 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %197, i32 0, i32 0
  %198 = load ptr, ptr %cipher_info191, align 8, !tbaa !31
  %mode192 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %198, i32 0, i32 1
  %199 = load i32, ptr %mode192, align 4, !tbaa !25
  %cmp193 = icmp eq i32 %199, 5
  br i1 %cmp193, label %if.then195, label %if.end209

if.then195:                                       ; preds = %if.end190
  %200 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info196 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %200, i32 0, i32 0
  %201 = load ptr, ptr %cipher_info196, align 8, !tbaa !31
  %base197 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %201, i32 0, i32 7
  %202 = load ptr, ptr %base197, align 8, !tbaa !21
  %ctr_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %202, i32 0, i32 5
  %203 = load ptr, ptr %ctr_func, align 8, !tbaa !50
  %204 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx198 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %204, i32 0, i32 9
  %205 = load ptr, ptr %cipher_ctx198, align 8, !tbaa !30
  %206 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %207 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len199 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %207, i32 0, i32 6
  %208 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv200 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %208, i32 0, i32 7
  %arraydecay201 = getelementptr inbounds [16 x i8], ptr %iv200, i64 0, i64 0
  %209 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_data202 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %209, i32 0, i32 5
  %arraydecay203 = getelementptr inbounds [16 x i8], ptr %unprocessed_data202, i64 0, i64 0
  %210 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %211 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call204 = call i32 %203(ptr noundef %205, i64 noundef %206, ptr noundef %unprocessed_len199, ptr noundef %arraydecay201, ptr noundef %arraydecay203, ptr noundef %210, ptr noundef %211)
  store i32 %call204, ptr %ret, align 4, !tbaa !5
  %cmp205 = icmp ne i32 0, %call204
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.then195
  %212 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %212, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end208:                                        ; preds = %if.then195
  %213 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %214 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %213, ptr %214, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end209:                                        ; preds = %if.end190
  %215 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info210 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %215, i32 0, i32 0
  %216 = load ptr, ptr %cipher_info210, align 8, !tbaa !31
  %mode211 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %216, i32 0, i32 1
  %217 = load i32, ptr %mode211, align 4, !tbaa !25
  %cmp212 = icmp eq i32 %217, 10
  br i1 %cmp212, label %if.then214, label %if.end231

if.then214:                                       ; preds = %if.end209
  %218 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len215 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %218, i32 0, i32 6
  %219 = load i64, ptr %unprocessed_len215, align 8, !tbaa !45
  %cmp216 = icmp ugt i64 %219, 0
  br i1 %cmp216, label %if.then218, label %if.end219

if.then218:                                       ; preds = %if.then214
  store i32 -24704, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end219:                                        ; preds = %if.then214
  %220 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info220 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %220, i32 0, i32 0
  %221 = load ptr, ptr %cipher_info220, align 8, !tbaa !31
  %base221 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %221, i32 0, i32 7
  %222 = load ptr, ptr %base221, align 8, !tbaa !21
  %xts_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %222, i32 0, i32 6
  %223 = load ptr, ptr %xts_func, align 8, !tbaa !51
  %224 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx222 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %224, i32 0, i32 9
  %225 = load ptr, ptr %cipher_ctx222, align 8, !tbaa !30
  %226 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation223 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %226, i32 0, i32 2
  %227 = load i32, ptr %operation223, align 4, !tbaa !38
  %228 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %229 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv224 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %229, i32 0, i32 7
  %arraydecay225 = getelementptr inbounds [16 x i8], ptr %iv224, i64 0, i64 0
  %230 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %231 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call226 = call i32 %223(ptr noundef %225, i32 noundef %227, i64 noundef %228, ptr noundef %arraydecay225, ptr noundef %230, ptr noundef %231)
  store i32 %call226, ptr %ret, align 4, !tbaa !5
  %232 = load i32, ptr %ret, align 4, !tbaa !5
  %cmp227 = icmp ne i32 %232, 0
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.end219
  %233 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %233, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end230:                                        ; preds = %if.end219
  %234 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %235 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %234, ptr %235, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end231:                                        ; preds = %if.end209
  %236 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info232 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %236, i32 0, i32 0
  %237 = load ptr, ptr %cipher_info232, align 8, !tbaa !31
  %mode233 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %237, i32 0, i32 1
  %238 = load i32, ptr %mode233, align 4, !tbaa !25
  %cmp234 = icmp eq i32 %238, 7
  br i1 %cmp234, label %if.then236, label %if.end245

if.then236:                                       ; preds = %if.end231
  %239 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info237 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %239, i32 0, i32 0
  %240 = load ptr, ptr %cipher_info237, align 8, !tbaa !31
  %base238 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %240, i32 0, i32 7
  %241 = load ptr, ptr %base238, align 8, !tbaa !21
  %stream_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %241, i32 0, i32 7
  %242 = load ptr, ptr %stream_func, align 8, !tbaa !52
  %243 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx239 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %243, i32 0, i32 9
  %244 = load ptr, ptr %cipher_ctx239, align 8, !tbaa !30
  %245 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %246 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %247 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call240 = call i32 %242(ptr noundef %244, i64 noundef %245, ptr noundef %246, ptr noundef %247)
  store i32 %call240, ptr %ret, align 4, !tbaa !5
  %cmp241 = icmp ne i32 0, %call240
  br i1 %cmp241, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.then236
  %248 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %248, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end244:                                        ; preds = %if.then236
  %249 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %250 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %249, ptr %250, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

if.end245:                                        ; preds = %if.end231
  store i32 -24704, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

cleanup246:                                       ; preds = %if.end245, %if.end244, %if.then243, %if.end230, %if.then229, %if.then218, %if.end208, %if.then207, %if.end189, %if.then188, %if.end172, %if.then171, %cleanup, %if.then47, %if.then39, %if.then32, %if.then24, %if.end18, %if.then17, %if.then11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %251 = load i32, ptr %retval, align 4
  ret i32 %251
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mbedtls_cipher_get_block_size(ptr noundef %ctx) #7 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %cipher_info1, align 8, !tbaa !31
  %block_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %block_size, align 8, !tbaa !53
  store i32 %4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare i32 @mbedtls_gcm_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare i32 @mbedtls_ccm_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare i32 @mbedtls_chachapoly_update(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_finish(ptr noundef %ctx, ptr noundef %output, ptr noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %olen.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !41
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %cipher_info1, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp2 = icmp eq i32 3, %5
  br i1 %cmp2, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %cipher_info3, align 8, !tbaa !31
  %mode4 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %mode4, align 4, !tbaa !25
  %cmp5 = icmp eq i32 4, %8
  br i1 %cmp5, label %if.then26, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info7 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %cipher_info7, align 8, !tbaa !31
  %mode8 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %mode8, align 4, !tbaa !25
  %cmp9 = icmp eq i32 5, %11
  br i1 %cmp9, label %if.then26, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %cipher_info11, align 8, !tbaa !31
  %mode12 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %mode12, align 4, !tbaa !25
  %cmp13 = icmp eq i32 6, %14
  br i1 %cmp13, label %if.then26, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %cipher_info15, align 8, !tbaa !31
  %mode16 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %mode16, align 4, !tbaa !25
  %cmp17 = icmp eq i32 9, %17
  br i1 %cmp17, label %if.then26, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info19 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %cipher_info19, align 8, !tbaa !31
  %mode20 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %mode20, align 4, !tbaa !25
  %cmp21 = icmp eq i32 10, %20
  br i1 %cmp21, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info23 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %cipher_info23, align 8, !tbaa !31
  %mode24 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %mode24, align 4, !tbaa !25
  %cmp25 = icmp eq i32 7, %23
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false22, %lor.lhs.false18, %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %lor.lhs.false22
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info28 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %cipher_info28, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %type, align 8, !tbaa !43
  %cmp29 = icmp eq i32 76, %26
  br i1 %cmp29, label %if.then34, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info31 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %cipher_info31, align 8, !tbaa !31
  %type32 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %type32, align 8, !tbaa !43
  %cmp33 = icmp eq i32 77, %29
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false30, %if.end27
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false30
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info36 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %cipher_info36, align 8, !tbaa !31
  %mode37 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %mode37, align 4, !tbaa !25
  %cmp38 = icmp eq i32 1, %32
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end35
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %33, i32 0, i32 6
  %34 = load i64, ptr %unprocessed_len, align 8, !tbaa !45
  %cmp40 = icmp ne i64 %34, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then39
  store i32 -25216, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then39
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end35
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info44 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %cipher_info44, align 8, !tbaa !31
  %mode45 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %mode45, align 4, !tbaa !25
  %cmp46 = icmp eq i32 2, %37
  br i1 %cmp46, label %if.then47, label %if.end97

if.then47:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 0, ptr %ret, align 4, !tbaa !5
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %operation, align 4, !tbaa !38
  %cmp48 = icmp eq i32 1, %39
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.then47
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %40, i32 0, i32 3
  %41 = load ptr, ptr %add_padding, align 8, !tbaa !34
  %cmp50 = icmp eq ptr null, %41
  br i1 %cmp50, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.then49
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len52 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %42, i32 0, i32 6
  %43 = load i64, ptr %unprocessed_len52, align 8, !tbaa !45
  %cmp53 = icmp ne i64 0, %43
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  store i32 -25216, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.then49
  %44 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding57 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %add_padding57, align 8, !tbaa !34
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_data = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %46, i32 0, i32 5
  %arraydecay = getelementptr inbounds [16 x i8], ptr %unprocessed_data, i64 0, i64 0
  %47 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call = call i32 @mbedtls_cipher_get_iv_size(ptr noundef %47)
  %conv = sext i32 %call to i64
  %48 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len58 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %48, i32 0, i32 6
  %49 = load i64, ptr %unprocessed_len58, align 8, !tbaa !45
  call void %45(ptr noundef %arraydecay, i64 noundef %conv, i64 noundef %49)
  br label %if.end74

if.else:                                          ; preds = %if.then47
  %50 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call59 = call i32 @mbedtls_cipher_get_block_size(ptr noundef %50)
  %conv60 = zext i32 %call59 to i64
  %51 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len61 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %51, i32 0, i32 6
  %52 = load i64, ptr %unprocessed_len61, align 8, !tbaa !45
  %cmp62 = icmp ne i64 %conv60, %52
  br i1 %cmp62, label %if.then64, label %if.end73

if.then64:                                        ; preds = %if.else
  %53 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %add_padding65 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %add_padding65, align 8, !tbaa !34
  %cmp66 = icmp eq ptr null, %54
  br i1 %cmp66, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %if.then64
  %55 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_len68 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %55, i32 0, i32 6
  %56 = load i64, ptr %unprocessed_len68, align 8, !tbaa !45
  %cmp69 = icmp eq i64 0, %56
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %land.lhs.true, %if.then64
  store i32 -25216, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %if.else
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end56
  %57 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info75 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %cipher_info75, align 8, !tbaa !31
  %base = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %58, i32 0, i32 7
  %59 = load ptr, ptr %base, align 8, !tbaa !21
  %cbc_func = getelementptr inbounds %struct.mbedtls_cipher_base_t, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %cbc_func, align 8, !tbaa !47
  %61 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %61, i32 0, i32 9
  %62 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %63 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation76 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %operation76, align 4, !tbaa !38
  %65 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call77 = call i32 @mbedtls_cipher_get_block_size(ptr noundef %65)
  %conv78 = zext i32 %call77 to i64
  %66 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %66, i32 0, i32 7
  %arraydecay79 = getelementptr inbounds [16 x i8], ptr %iv, i64 0, i64 0
  %67 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %unprocessed_data80 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %67, i32 0, i32 5
  %arraydecay81 = getelementptr inbounds [16 x i8], ptr %unprocessed_data80, i64 0, i64 0
  %68 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call82 = call i32 %60(ptr noundef %62, i32 noundef %64, i64 noundef %conv78, ptr noundef %arraydecay79, ptr noundef %arraydecay81, ptr noundef %68)
  store i32 %call82, ptr %ret, align 4, !tbaa !5
  %cmp83 = icmp ne i32 0, %call82
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end74
  %69 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %69, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end86:                                         ; preds = %if.end74
  %70 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation87 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %operation87, align 4, !tbaa !38
  %cmp88 = icmp eq i32 0, %71
  br i1 %cmp88, label %if.then90, label %if.end94

if.then90:                                        ; preds = %if.end86
  %72 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %get_padding = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %72, i32 0, i32 4
  %73 = load ptr, ptr %get_padding, align 8, !tbaa !35
  %74 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %75 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call91 = call i32 @mbedtls_cipher_get_block_size(ptr noundef %75)
  %conv92 = zext i32 %call91 to i64
  %76 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %call93 = call i32 %73(ptr noundef %74, i64 noundef %conv92, ptr noundef %76)
  store i32 %call93, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.end86
  %77 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call95 = call i32 @mbedtls_cipher_get_block_size(ptr noundef %77)
  %conv96 = zext i32 %call95 to i64
  %78 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %conv96, ptr %78, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then90, %if.then85, %if.end72, %if.then71, %if.end55, %if.then54
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  br label %return

if.end97:                                         ; preds = %if.end43
  store i32 -24704, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end97, %cleanup, %if.end42, %if.then41, %if.then34, %if.then26, %if.then
  %79 = load i32, ptr %retval, align 4
  ret i32 %79
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mbedtls_cipher_get_iv_size(ptr noundef %ctx) #7 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 8
  %3 = load i64, ptr %iv_size, align 8, !tbaa !44
  %cmp1 = icmp ne i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %iv_size3 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %4, i32 0, i32 8
  %5 = load i64, ptr %iv_size3, align 8, !tbaa !44
  %conv = trunc i64 %5 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %cipher_info5, align 8, !tbaa !31
  %iv_size6 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %iv_size6, align 8, !tbaa !42
  store i32 %8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal void @add_pkcs_padding(ptr noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %padding_len = alloca i64, align 8
  %i = alloca i8, align 1
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !41
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %padding_len) #8
  %0 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %1 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  %sub = sub i64 %0, %1
  store i64 %sub, ptr %padding_len, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 1, ptr %i) #8
  store i8 0, ptr %i, align 1, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, ptr %i, align 1, !tbaa !15
  %conv = zext i8 %2 to i64
  %3 = load i64, ptr %padding_len, align 8, !tbaa !41
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %padding_len, align 8, !tbaa !41
  %conv2 = trunc i64 %4 to i8
  %5 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %6 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  %7 = load i8, ptr %i, align 1, !tbaa !15
  %conv3 = zext i8 %7 to i64
  %add = add i64 %6, %conv3
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %add
  store i8 %conv2, ptr %arrayidx, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8, ptr %i, align 1, !tbaa !15
  %inc = add i8 %8, 1
  store i8 %inc, ptr %i, align 1, !tbaa !15
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %padding_len) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_pkcs_padding(ptr noundef %input, i64 noundef %input_len, ptr noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %pad_idx = alloca i64, align 8
  %padding_len = alloca i8, align 1
  %bad = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %input_len, ptr %input_len.addr, align 8, !tbaa !41
  store ptr %data_len, ptr %data_len.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pad_idx) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %padding_len) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %bad) #8
  store i8 0, ptr %bad, align 1, !tbaa !15
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  %cmp1 = icmp eq ptr null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %3 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %sub
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !15
  store i8 %4, ptr %padding_len, align 1, !tbaa !15
  %5 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %6 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv = zext i8 %6 to i64
  %sub2 = sub i64 %5, %conv
  %7 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  store i64 %sub2, ptr %7, align 8, !tbaa !41
  %8 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv3 = zext i8 %8 to i64
  %9 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %cmp4 = icmp ugt i64 %conv3, %9
  %conv5 = zext i1 %cmp4 to i32
  %10 = load i8, ptr %bad, align 1, !tbaa !15
  %conv6 = zext i8 %10 to i32
  %or = or i32 %conv6, %conv5
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, ptr %bad, align 1, !tbaa !15
  %11 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  %conv10 = zext i1 %cmp9 to i32
  %12 = load i8, ptr %bad, align 1, !tbaa !15
  %conv11 = zext i8 %12 to i32
  %or12 = or i32 %conv11, %conv10
  %conv13 = trunc i32 %or12 to i8
  store i8 %conv13, ptr %bad, align 1, !tbaa !15
  %13 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %14 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv14 = zext i8 %14 to i64
  %sub15 = sub i64 %13, %conv14
  store i64 %sub15, ptr %pad_idx, align 8, !tbaa !41
  store i64 0, ptr %i, align 8, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i64, ptr %i, align 8, !tbaa !41
  %16 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %cmp16 = icmp ult i64 %15, %16
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !41
  %arrayidx18 = getelementptr inbounds i8, ptr %17, i64 %18
  %19 = load i8, ptr %arrayidx18, align 1, !tbaa !15
  %conv19 = zext i8 %19 to i32
  %20 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv20 = zext i8 %20 to i32
  %xor = xor i32 %conv19, %conv20
  %21 = load i64, ptr %i, align 8, !tbaa !41
  %22 = load i64, ptr %pad_idx, align 8, !tbaa !41
  %cmp21 = icmp uge i64 %21, %22
  %conv22 = zext i1 %cmp21 to i32
  %mul = mul nsw i32 %xor, %conv22
  %23 = load i8, ptr %bad, align 1, !tbaa !15
  %conv23 = zext i8 %23 to i32
  %or24 = or i32 %conv23, %mul
  %conv25 = trunc i32 %or24 to i8
  store i8 %conv25, ptr %bad, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %i, align 8, !tbaa !41
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !41
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %25 = load i8, ptr %bad, align 1, !tbaa !15
  %conv26 = zext i8 %25 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  %conv28 = zext i1 %cmp27 to i32
  %mul29 = mul nsw i32 -25088, %conv28
  store i32 %mul29, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %bad) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %padding_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pad_idx) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @add_one_and_zeros_padding(ptr noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %padding_len = alloca i64, align 8
  %i = alloca i8, align 1
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !41
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %padding_len) #8
  %0 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %1 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  %sub = sub i64 %0, %1
  store i64 %sub, ptr %padding_len, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 1, ptr %i) #8
  store i8 0, ptr %i, align 1, !tbaa !15
  %2 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %3 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3
  store i8 -128, ptr %arrayidx, align 1, !tbaa !15
  store i8 1, ptr %i, align 1, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8, ptr %i, align 1, !tbaa !15
  %conv = zext i8 %4 to i64
  %5 = load i64, ptr %padding_len, align 8, !tbaa !41
  %cmp = icmp ult i64 %conv, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %7 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  %8 = load i8, ptr %i, align 1, !tbaa !15
  %conv2 = zext i8 %8 to i64
  %add = add i64 %7, %conv2
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %add
  store i8 0, ptr %arrayidx3, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8, ptr %i, align 1, !tbaa !15
  %inc = add i8 %9, 1
  store i8 %inc, ptr %i, align 1, !tbaa !15
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %padding_len) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_one_and_zeros_padding(ptr noundef %input, i64 noundef %input_len, ptr noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %done = alloca i8, align 1
  %prev_done = alloca i8, align 1
  %bad = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %input_len, ptr %input_len.addr, align 8, !tbaa !41
  store ptr %data_len, ptr %data_len.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  store i8 0, ptr %done, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 1, ptr %prev_done) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %bad) #8
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  %cmp1 = icmp eq ptr null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i8 -128, ptr %bad, align 1, !tbaa !15
  %2 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !41
  %3 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  store i64 %3, ptr %i, align 8, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !tbaa !41
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8, ptr %done, align 1, !tbaa !15
  store i8 %5, ptr %prev_done, align 1, !tbaa !15
  %6 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %7 = load i64, ptr %i, align 8, !tbaa !41
  %sub = sub i64 %7, 1
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %sub
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 0
  %conv4 = zext i1 %cmp3 to i32
  %9 = load i8, ptr %done, align 1, !tbaa !15
  %conv5 = zext i8 %9 to i32
  %or = or i32 %conv5, %conv4
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, ptr %done, align 1, !tbaa !15
  %10 = load i64, ptr %i, align 8, !tbaa !41
  %sub7 = sub i64 %10, 1
  %11 = load i8, ptr %done, align 1, !tbaa !15
  %conv8 = zext i8 %11 to i32
  %12 = load i8, ptr %prev_done, align 1, !tbaa !15
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv8, %conv9
  %conv11 = zext i1 %cmp10 to i32
  %conv12 = sext i32 %conv11 to i64
  %mul = mul i64 %sub7, %conv12
  %13 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  %14 = load i64, ptr %13, align 8, !tbaa !41
  %or13 = or i64 %14, %mul
  store i64 %or13, ptr %13, align 8, !tbaa !41
  %15 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %16 = load i64, ptr %i, align 8, !tbaa !41
  %sub14 = sub i64 %16, 1
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 %sub14
  %17 = load i8, ptr %arrayidx15, align 1, !tbaa !15
  %conv16 = zext i8 %17 to i32
  %18 = load i8, ptr %done, align 1, !tbaa !15
  %conv17 = zext i8 %18 to i32
  %19 = load i8, ptr %prev_done, align 1, !tbaa !15
  %conv18 = zext i8 %19 to i32
  %cmp19 = icmp ne i32 %conv17, %conv18
  %conv20 = zext i1 %cmp19 to i32
  %mul21 = mul nsw i32 %conv16, %conv20
  %20 = load i8, ptr %bad, align 1, !tbaa !15
  %conv22 = zext i8 %20 to i32
  %xor = xor i32 %conv22, %mul21
  %conv23 = trunc i32 %xor to i8
  store i8 %conv23, ptr %bad, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, ptr %i, align 8, !tbaa !41
  %dec = add i64 %21, -1
  store i64 %dec, ptr %i, align 8, !tbaa !41
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %22 = load i8, ptr %bad, align 1, !tbaa !15
  %conv24 = zext i8 %22 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  %conv26 = zext i1 %cmp25 to i32
  %mul27 = mul nsw i32 -25088, %conv26
  store i32 %mul27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %bad) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %prev_done) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @add_zeros_and_len_padding(ptr noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %padding_len = alloca i64, align 8
  %i = alloca i8, align 1
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !41
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %padding_len) #8
  %0 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %1 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  %sub = sub i64 %0, %1
  store i64 %sub, ptr %padding_len, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 1, ptr %i) #8
  store i8 0, ptr %i, align 1, !tbaa !15
  store i8 1, ptr %i, align 1, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, ptr %i, align 1, !tbaa !15
  %conv = zext i8 %2 to i64
  %3 = load i64, ptr %padding_len, align 8, !tbaa !41
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %5 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  %6 = load i8, ptr %i, align 1, !tbaa !15
  %conv2 = zext i8 %6 to i64
  %add = add i64 %5, %conv2
  %sub3 = sub i64 %add, 1
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %sub3
  store i8 0, ptr %arrayidx, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8, ptr %i, align 1, !tbaa !15
  %inc = add i8 %7, 1
  store i8 %inc, ptr %i, align 1, !tbaa !15
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  %8 = load i64, ptr %padding_len, align 8, !tbaa !41
  %conv4 = trunc i64 %8 to i8
  %9 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %10 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %sub5 = sub i64 %10, 1
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 %sub5
  store i8 %conv4, ptr %arrayidx6, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 1, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %padding_len) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_zeros_and_len_padding(ptr noundef %input, i64 noundef %input_len, ptr noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %pad_idx = alloca i64, align 8
  %padding_len = alloca i8, align 1
  %bad = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %input_len, ptr %input_len.addr, align 8, !tbaa !41
  store ptr %data_len, ptr %data_len.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pad_idx) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %padding_len) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %bad) #8
  store i8 0, ptr %bad, align 1, !tbaa !15
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  %cmp1 = icmp eq ptr null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %3 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %sub
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !15
  store i8 %4, ptr %padding_len, align 1, !tbaa !15
  %5 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %6 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv = zext i8 %6 to i64
  %sub2 = sub i64 %5, %conv
  %7 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  store i64 %sub2, ptr %7, align 8, !tbaa !41
  %8 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv3 = zext i8 %8 to i64
  %9 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %cmp4 = icmp ugt i64 %conv3, %9
  %conv5 = zext i1 %cmp4 to i32
  %10 = load i8, ptr %bad, align 1, !tbaa !15
  %conv6 = zext i8 %10 to i32
  %or = or i32 %conv6, %conv5
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, ptr %bad, align 1, !tbaa !15
  %11 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  %conv10 = zext i1 %cmp9 to i32
  %12 = load i8, ptr %bad, align 1, !tbaa !15
  %conv11 = zext i8 %12 to i32
  %or12 = or i32 %conv11, %conv10
  %conv13 = trunc i32 %or12 to i8
  store i8 %conv13, ptr %bad, align 1, !tbaa !15
  %13 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %14 = load i8, ptr %padding_len, align 1, !tbaa !15
  %conv14 = zext i8 %14 to i64
  %sub15 = sub i64 %13, %conv14
  store i64 %sub15, ptr %pad_idx, align 8, !tbaa !41
  store i64 0, ptr %i, align 8, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i64, ptr %i, align 8, !tbaa !41
  %16 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %sub16 = sub i64 %16, 1
  %cmp17 = icmp ult i64 %15, %sub16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !41
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 %18
  %19 = load i8, ptr %arrayidx19, align 1, !tbaa !15
  %conv20 = zext i8 %19 to i32
  %20 = load i64, ptr %i, align 8, !tbaa !41
  %21 = load i64, ptr %pad_idx, align 8, !tbaa !41
  %cmp21 = icmp uge i64 %20, %21
  %conv22 = zext i1 %cmp21 to i32
  %mul = mul nsw i32 %conv20, %conv22
  %22 = load i8, ptr %bad, align 1, !tbaa !15
  %conv23 = zext i8 %22 to i32
  %or24 = or i32 %conv23, %mul
  %conv25 = trunc i32 %or24 to i8
  store i8 %conv25, ptr %bad, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, ptr %i, align 8, !tbaa !41
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8, !tbaa !41
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  %24 = load i8, ptr %bad, align 1, !tbaa !15
  %conv26 = zext i8 %24 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  %conv28 = zext i1 %cmp27 to i32
  %mul29 = mul nsw i32 -25088, %conv28
  store i32 %mul29, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %bad) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %padding_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pad_idx) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal void @add_zeros_padding(ptr noundef %output, i64 noundef %output_len, i64 noundef %data_len) #0 {
entry:
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %data_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !41
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  %0 = load i64, ptr %data_len.addr, align 8, !tbaa !41
  store i64 %0, ptr %i, align 8, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !41
  %2 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %4 = load i64, ptr %i, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
  store i8 0, ptr %arrayidx, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8, !tbaa !41
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !41
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_zeros_padding(ptr noundef %input, i64 noundef %input_len, ptr noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %done = alloca i8, align 1
  %prev_done = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %input_len, ptr %input_len.addr, align 8, !tbaa !41
  store ptr %data_len, ptr %data_len.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %done) #8
  store i8 0, ptr %done, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 1, ptr %prev_done) #8
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  %cmp1 = icmp eq ptr null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !41
  %3 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  store i64 %3, ptr %i, align 8, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !tbaa !41
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8, ptr %done, align 1, !tbaa !15
  store i8 %5, ptr %prev_done, align 1, !tbaa !15
  %6 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %7 = load i64, ptr %i, align 8, !tbaa !41
  %sub = sub i64 %7, 1
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %sub
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 0
  %conv4 = zext i1 %cmp3 to i32
  %9 = load i8, ptr %done, align 1, !tbaa !15
  %conv5 = zext i8 %9 to i32
  %or = or i32 %conv5, %conv4
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, ptr %done, align 1, !tbaa !15
  %10 = load i64, ptr %i, align 8, !tbaa !41
  %11 = load i8, ptr %done, align 1, !tbaa !15
  %conv7 = zext i8 %11 to i32
  %12 = load i8, ptr %prev_done, align 1, !tbaa !15
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %mul = mul i64 %10, %conv11
  %13 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  %14 = load i64, ptr %13, align 8, !tbaa !41
  %or12 = or i64 %14, %mul
  store i64 %or12, ptr %13, align 8, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, ptr %i, align 8, !tbaa !41
  %dec = add i64 %15, -1
  store i64 %dec, ptr %i, align 8, !tbaa !41
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %prev_done) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %done) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @get_no_padding(ptr noundef %input, i64 noundef %input_len, ptr noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i64, align 8
  %data_len.addr = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %input_len, ptr %input_len.addr, align 8, !tbaa !41
  store ptr %data_len, ptr %data_len.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  %cmp1 = icmp eq ptr null, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %input_len.addr, align 8, !tbaa !41
  %3 = load ptr, ptr %data_len.addr, align 8, !tbaa !9
  store i64 %2, ptr %3, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_write_tag(ptr noundef %ctx, ptr noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %tag_len.addr = alloca i64, align 8
  %output_length = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !9
  store i64 %tag_len, ptr %tag_len.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %operation, align 4, !tbaa !38
  %cmp1 = icmp ne i32 1, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info4 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %cipher_info4, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp5 = icmp eq i32 6, %6
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_length) #8
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %9 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %10 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call = call i32 @mbedtls_gcm_finish(ptr noundef %8, ptr noundef null, i64 noundef 0, ptr noundef %output_length, ptr noundef %9, i64 noundef %10)
  store i32 %call, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_length) #8
  br label %return

if.end7:                                          ; preds = %if.end3
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %cipher_info8, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %type, align 8, !tbaa !43
  %cmp9 = icmp eq i32 77, %13
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end7
  %14 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp11 = icmp ne i64 %14, 16
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then10
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then10
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx14 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %cipher_ctx14, align 8, !tbaa !30
  %17 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %call15 = call i32 @mbedtls_chachapoly_finish(ptr noundef %16, ptr noundef %17)
  store i32 %call15, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end7
  store i32 -24704, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.end13, %if.then12, %if.then6, %if.then2, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare i32 @mbedtls_gcm_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @mbedtls_chachapoly_finish(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_check_tag(ptr noundef %ctx, ptr noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %tag_len.addr = alloca i64, align 8
  %check_tag = alloca [16 x i8], align 16
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %output_length = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !9
  store i64 %tag_len, ptr %tag_len.addr, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 16, ptr %check_tag) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %operation = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %operation, align 4, !tbaa !38
  %cmp1 = icmp ne i32 0, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

if.end3:                                          ; preds = %if.end
  store i32 -24704, ptr %ret, align 4, !tbaa !5
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info4 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %cipher_info4, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp5 = icmp eq i32 6, %6
  br i1 %cmp5, label %if.then6, label %if.end18

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_length) #8
  %7 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp7 = icmp ugt i64 %7, 16
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %arraydecay = getelementptr inbounds [16 x i8], ptr %check_tag, i64 0, i64 0
  %10 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call = call i32 @mbedtls_gcm_finish(ptr noundef %9, ptr noundef null, i64 noundef 0, ptr noundef %output_length, ptr noundef %arraydecay, i64 noundef %10)
  store i32 %call, ptr %ret, align 4, !tbaa !5
  %cmp10 = icmp ne i32 0, %call
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %11 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %12 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %arraydecay13 = getelementptr inbounds [16 x i8], ptr %check_tag, i64 0, i64 0
  %13 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call14 = call i32 @mbedtls_ct_memcmp(ptr noundef %12, ptr noundef %arraydecay13, i64 noundef %13)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  store i32 -25344, ptr %ret, align 4, !tbaa !5
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end17, %if.then11, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_length) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup38 [
    i32 0, label %cleanup.cont
    i32 2, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18

if.end18:                                         ; preds = %cleanup.cont, %if.end3
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info19 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %cipher_info19, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %type, align 8, !tbaa !43
  %cmp20 = icmp eq i32 77, %16
  br i1 %cmp20, label %if.then21, label %if.end36

if.then21:                                        ; preds = %if.end18
  %17 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp22 = icmp ne i64 %17, 16
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

if.end24:                                         ; preds = %if.then21
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx25 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %cipher_ctx25, align 8, !tbaa !30
  %arraydecay26 = getelementptr inbounds [16 x i8], ptr %check_tag, i64 0, i64 0
  %call27 = call i32 @mbedtls_chachapoly_finish(ptr noundef %19, ptr noundef %arraydecay26)
  store i32 %call27, ptr %ret, align 4, !tbaa !5
  %20 = load i32, ptr %ret, align 4, !tbaa !5
  %cmp28 = icmp ne i32 %20, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  %21 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

if.end30:                                         ; preds = %if.end24
  %22 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %arraydecay31 = getelementptr inbounds [16 x i8], ptr %check_tag, i64 0, i64 0
  %23 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call32 = call i32 @mbedtls_ct_memcmp(ptr noundef %22, ptr noundef %arraydecay31, i64 noundef %23)
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  store i32 -25344, ptr %ret, align 4, !tbaa !5
  br label %exit

if.end35:                                         ; preds = %if.end30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end18
  br label %exit

exit:                                             ; preds = %if.end36, %cleanup, %if.then34
  %arraydecay37 = getelementptr inbounds [16 x i8], ptr %check_tag, i64 0, i64 0
  %24 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay37, i64 noundef %24)
  %25 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %exit, %if.then29, %if.then23, %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %check_tag) #8
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

declare i32 @mbedtls_ct_memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_crypt(ptr noundef %ctx, ptr noundef %iv, i64 noundef %iv_len, ptr noundef %input, i64 noundef %ilen, ptr noundef %output, ptr noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %iv_len.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %olen.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %finish_olen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !9
  store i64 %iv_len, ptr %iv_len.addr, align 8, !tbaa !41
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !41
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %finish_olen) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %1 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %2 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %call = call i32 @mbedtls_cipher_set_iv(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %call1 = call i32 @mbedtls_cipher_reset(ptr noundef %4)
  store i32 %call1, ptr %ret, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %8 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %9 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %call5 = call i32 @mbedtls_cipher_update(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 %call5, ptr %ret, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %11 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %14 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %15
  %call9 = call i32 @mbedtls_cipher_finish(ptr noundef %12, ptr noundef %add.ptr, ptr noundef %finish_olen)
  store i32 %call9, ptr %ret, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %16 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %17 = load i64, ptr %finish_olen, align 8, !tbaa !41
  %18 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %19 = load i64, ptr %18, align 8, !tbaa !41
  %add = add i64 %19, %17
  store i64 %add, ptr %18, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %finish_olen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_auth_encrypt_ext(ptr noundef %ctx, ptr noundef %iv, i64 noundef %iv_len, ptr noundef %ad, i64 noundef %ad_len, ptr noundef %input, i64 noundef %ilen, ptr noundef %output, i64 noundef %output_len, ptr noundef %olen, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca ptr, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %olen.addr = alloca ptr, align 8
  %tag_len.addr = alloca i64, align 8
  %mode4 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !9
  store i64 %iv_len, ptr %iv_len.addr, align 8, !tbaa !41
  store ptr %ad, ptr %ad.addr, align 8, !tbaa !9
  store i64 %ad_len, ptr %ad_len.addr, align 8, !tbaa !41
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !41
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !41
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !9
  store i64 %tag_len, ptr %tag_len.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp = icmp eq i32 12, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %cipher_info1, align 8, !tbaa !31
  %mode2 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %mode2, align 4, !tbaa !25
  %cmp3 = icmp eq i32 13, %5
  br i1 %cmp3, label %if.then, label %if.end14

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode4) #8
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %cipher_info5, align 8, !tbaa !31
  %mode6 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %mode6, align 4, !tbaa !25
  %cmp7 = icmp eq i32 12, %8
  %9 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 0, i32 1
  store i32 %cond, ptr %mode4, align 4, !tbaa !15
  %10 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %cmp8 = icmp ne i64 %10, 0
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.then
  %11 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp10 = icmp ne i64 %11, 0
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %12 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %cmp12 = icmp ne i64 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %if.then
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %13 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %14 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %17 = load i32, ptr %mode4, align 4, !tbaa !15
  %18 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %19 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %20 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %22 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %call = call i32 @mbedtls_nist_kw_wrap(ptr noundef %16, i32 noundef %17, ptr noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode4) #8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %23 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %24 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %25 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %add = add i64 %24, %25
  %cmp15 = icmp ult i64 %23, %add
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %27 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %28 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %29 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %30 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %31 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %32 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %33 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %34 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %35 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %36 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %36
  %37 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call18 = call i32 @mbedtls_cipher_aead_encrypt(ptr noundef %26, ptr noundef %27, i64 noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %add.ptr, i64 noundef %37)
  store i32 %call18, ptr %ret, align 4, !tbaa !5
  %38 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %39 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %40 = load i64, ptr %39, align 8, !tbaa !41
  %add19 = add i64 %40, %38
  store i64 %add19, ptr %39, align 8, !tbaa !41
  %41 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %cleanup
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare i32 @mbedtls_nist_kw_wrap(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @mbedtls_cipher_aead_encrypt(ptr noundef %ctx, ptr noundef %iv, i64 noundef %iv_len, ptr noundef %ad, i64 noundef %ad_len, ptr noundef %input, i64 noundef %ilen, ptr noundef %output, ptr noundef %olen, ptr noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca ptr, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %olen.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %tag_len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !9
  store i64 %iv_len, ptr %iv_len.addr, align 8, !tbaa !41
  store ptr %ad, ptr %ad.addr, align 8, !tbaa !9
  store i64 %ad_len, ptr %ad_len.addr, align 8, !tbaa !41
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !41
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !9
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !9
  store i64 %tag_len, ptr %tag_len.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp = icmp eq i32 6, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %4 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %3, ptr %4, align 8, !tbaa !41
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %7 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %8 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %9 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %10 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %11 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %12 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %14 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %15 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %call = call i32 @mbedtls_gcm_crypt_and_tag(ptr noundef %6, i32 noundef 1, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %cipher_info1, align 8, !tbaa !31
  %mode2 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %mode2, align 4, !tbaa !25
  %cmp3 = icmp eq i32 8, %18
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %19 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %20 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %19, ptr %20, align 8, !tbaa !41
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %cipher_ctx5, align 8, !tbaa !30
  %23 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %24 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %25 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %26 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %27 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %28 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %30 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %31 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call6 = call i32 @mbedtls_ccm_encrypt_and_tag(ptr noundef %22, i64 noundef %23, ptr noundef %24, i64 noundef %25, ptr noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i64 noundef %31)
  store i32 %call6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info8 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %cipher_info8, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %type, align 8, !tbaa !43
  %cmp9 = icmp eq i32 77, %34
  br i1 %cmp9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.end7
  %35 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info11 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %cipher_info11, align 8, !tbaa !31
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %37, i32 0, i32 4
  %38 = load i32, ptr %iv_size, align 8, !tbaa !42
  %conv = zext i32 %38 to i64
  %cmp12 = icmp ne i64 %35, %conv
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then10
  %39 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp14 = icmp ne i64 %39, 16
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.then10
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %40 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %41 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %40, ptr %41, align 8, !tbaa !41
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx18 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %42, i32 0, i32 9
  %43 = load ptr, ptr %cipher_ctx18, align 8, !tbaa !30
  %44 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %45 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %46 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %47 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %48 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %49 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %50 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %call19 = call i32 @mbedtls_chachapoly_encrypt_and_tag(ptr noundef %43, i64 noundef %44, ptr noundef %45, ptr noundef %46, i64 noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50)
  store i32 %call19, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end7
  store i32 -24704, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.end17, %if.then16, %if.then4, %if.then
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_cipher_auth_decrypt_ext(ptr noundef %ctx, ptr noundef %iv, i64 noundef %iv_len, ptr noundef %ad, i64 noundef %ad_len, ptr noundef %input, i64 noundef %ilen, ptr noundef %output, i64 noundef %output_len, ptr noundef %olen, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca ptr, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %olen.addr = alloca ptr, align 8
  %tag_len.addr = alloca i64, align 8
  %mode4 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !9
  store i64 %iv_len, ptr %iv_len.addr, align 8, !tbaa !41
  store ptr %ad, ptr %ad.addr, align 8, !tbaa !9
  store i64 %ad_len, ptr %ad_len.addr, align 8, !tbaa !41
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !41
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !41
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !9
  store i64 %tag_len, ptr %tag_len.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp = icmp eq i32 12, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info1 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %cipher_info1, align 8, !tbaa !31
  %mode2 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %mode2, align 4, !tbaa !25
  %cmp3 = icmp eq i32 13, %5
  br i1 %cmp3, label %if.then, label %if.end14

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode4) #8
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info5 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %cipher_info5, align 8, !tbaa !31
  %mode6 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %mode6, align 4, !tbaa !25
  %cmp7 = icmp eq i32 12, %8
  %9 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 0, i32 1
  store i32 %cond, ptr %mode4, align 4, !tbaa !15
  %10 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %cmp8 = icmp ne i64 %10, 0
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.then
  %11 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp10 = icmp ne i64 %11, 0
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %12 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %cmp12 = icmp ne i64 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %if.then
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %13 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %14 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %17 = load i32, ptr %mode4, align 4, !tbaa !15
  %18 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %19 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %20 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %22 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %call = call i32 @mbedtls_nist_kw_unwrap(ptr noundef %16, i32 noundef %17, ptr noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode4) #8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %23 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %24 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp15 = icmp ult i64 %23, %24
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end14
  %25 = load i64, ptr %output_len.addr, align 8, !tbaa !41
  %26 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %27 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %sub = sub i64 %26, %27
  %cmp17 = icmp ult i64 %25, %sub
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false16, %if.end14
  store i32 -24832, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false16
  %28 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %30 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %31 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %32 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %33 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %34 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %35 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %sub20 = sub i64 %34, %35
  %36 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %37 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  %38 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %39 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %add.ptr = getelementptr inbounds i8, ptr %38, i64 %39
  %40 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %idx.neg = sub i64 0, %40
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %41 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call22 = call i32 @mbedtls_cipher_aead_decrypt(ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33, i64 noundef %sub20, ptr noundef %36, ptr noundef %37, ptr noundef %add.ptr21, i64 noundef %41)
  store i32 %call22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %cleanup
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare i32 @mbedtls_nist_kw_unwrap(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @mbedtls_cipher_aead_decrypt(ptr noundef %ctx, ptr noundef %iv, i64 noundef %iv_len, ptr noundef %ad, i64 noundef %ad_len, ptr noundef %input, i64 noundef %ilen, ptr noundef %output, ptr noundef %olen, ptr noundef %tag, i64 noundef %tag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %iv_len.addr = alloca i64, align 8
  %ad.addr = alloca ptr, align 8
  %ad_len.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %olen.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %tag_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ret8 = alloca i32, align 4
  %ret18 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !9
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !9
  store i64 %iv_len, ptr %iv_len.addr, align 8, !tbaa !41
  store ptr %ad, ptr %ad.addr, align 8, !tbaa !9
  store i64 %ad_len, ptr %ad_len.addr, align 8, !tbaa !41
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !41
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !9
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !9
  store i64 %tag_len, ptr %tag_len.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cipher_info, align 8, !tbaa !31
  %mode = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %mode, align 4, !tbaa !25
  %cmp = icmp eq i32 6, %2
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !5
  %3 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %4 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %3, ptr %4, align 8, !tbaa !41
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %cipher_ctx, align 8, !tbaa !30
  %7 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %8 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %9 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %10 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %11 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %12 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %13 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %14 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %15 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call = call i32 @mbedtls_gcm_auth_decrypt(ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call, ptr %ret, align 4, !tbaa !5
  %16 = load i32, ptr %ret, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %16, -18
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -25344, ptr %ret, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %17 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %17, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  br label %return

if.end3:                                          ; preds = %entry
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info4 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %cipher_info4, align 8, !tbaa !31
  %mode5 = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %mode5, align 4, !tbaa !25
  %cmp6 = icmp eq i32 8, %20
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret8) #8
  store i32 -110, ptr %ret8, align 4, !tbaa !5
  %21 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %22 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %21, ptr %22, align 8, !tbaa !41
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx9 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %cipher_ctx9, align 8, !tbaa !30
  %25 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %26 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %27 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %28 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %29 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %30 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %32 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %33 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %call10 = call i32 @mbedtls_ccm_auth_decrypt(ptr noundef %24, i64 noundef %25, ptr noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, i64 noundef %33)
  store i32 %call10, ptr %ret8, align 4, !tbaa !5
  %34 = load i32, ptr %ret8, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %34, -15
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then7
  store i32 -25344, ptr %ret8, align 4, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then7
  %35 = load i32, ptr %ret8, align 4, !tbaa !5
  store i32 %35, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret8) #8
  br label %return

if.end14:                                         ; preds = %if.end3
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info15 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %cipher_info15, align 8, !tbaa !31
  %type = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %type, align 8, !tbaa !43
  %cmp16 = icmp eq i32 77, %38
  br i1 %cmp16, label %if.then17, label %if.end32

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret18) #8
  store i32 -110, ptr %ret18, align 4, !tbaa !5
  %39 = load i64, ptr %iv_len.addr, align 8, !tbaa !41
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_info19 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %cipher_info19, align 8, !tbaa !31
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, ptr %41, i32 0, i32 4
  %42 = load i32, ptr %iv_size, align 8, !tbaa !42
  %conv = zext i32 %42 to i64
  %cmp20 = icmp ne i64 %39, %conv
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then17
  %43 = load i64, ptr %tag_len.addr, align 8, !tbaa !41
  %cmp22 = icmp ne i64 %43, 16
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false, %if.then17
  store i32 -24832, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %44 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %45 = load ptr, ptr %olen.addr, align 8, !tbaa !9
  store i64 %44, ptr %45, align 8, !tbaa !41
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !9
  %cipher_ctx26 = getelementptr inbounds %struct.mbedtls_cipher_context_t, ptr %46, i32 0, i32 9
  %47 = load ptr, ptr %cipher_ctx26, align 8, !tbaa !30
  %48 = load i64, ptr %ilen.addr, align 8, !tbaa !41
  %49 = load ptr, ptr %iv.addr, align 8, !tbaa !9
  %50 = load ptr, ptr %ad.addr, align 8, !tbaa !9
  %51 = load i64, ptr %ad_len.addr, align 8, !tbaa !41
  %52 = load ptr, ptr %tag.addr, align 8, !tbaa !9
  %53 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %54 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %call27 = call i32 @mbedtls_chachapoly_auth_decrypt(ptr noundef %47, i64 noundef %48, ptr noundef %49, ptr noundef %50, i64 noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54)
  store i32 %call27, ptr %ret18, align 4, !tbaa !5
  %55 = load i32, ptr %ret18, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %55, -86
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  store i32 -25344, ptr %ret18, align 4, !tbaa !5
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25
  %56 = load i32, ptr %ret18, align 4, !tbaa !5
  store i32 %56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret18) #8
  br label %return

if.end32:                                         ; preds = %if.end14
  store i32 -24704, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %cleanup, %if.end13, %if.end
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

declare i32 @mbedtls_gcm_crypt_and_tag(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare i32 @mbedtls_ccm_encrypt_and_tag(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @mbedtls_chachapoly_encrypt_and_tag(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @mbedtls_gcm_auth_decrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

declare i32 @mbedtls_ccm_auth_decrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @mbedtls_chachapoly_auth_decrypt(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"", !7, i64 0, !10, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!7, !7, i64 0}
!16 = !{!12, !10, i64 8}
!17 = distinct !{!17, !14}
!18 = !{!19, !10, i64 16}
!19 = !{!"mbedtls_cipher_info_t", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40}
!20 = distinct !{!20, !14}
!21 = !{!19, !10, i64 40}
!22 = !{!23, !7, i64 0}
!23 = !{!"mbedtls_cipher_base_t", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!24 = !{!19, !6, i64 8}
!25 = !{!19, !7, i64 4}
!26 = distinct !{!26, !14}
!27 = !{!28, !10, i64 88}
!28 = !{!"mbedtls_cipher_context_t", !10, i64 0, !6, i64 8, !7, i64 12, !10, i64 16, !10, i64 24, !7, i64 32, !29, i64 48, !7, i64 56, !29, i64 72, !10, i64 80, !10, i64 88}
!29 = !{!"long", !7, i64 0}
!30 = !{!28, !10, i64 80}
!31 = !{!28, !10, i64 0}
!32 = !{!23, !10, i64 88}
!33 = !{!23, !10, i64 80}
!34 = !{!28, !10, i64 16}
!35 = !{!28, !10, i64 24}
!36 = !{!19, !6, i64 28}
!37 = !{!28, !6, i64 8}
!38 = !{!28, !7, i64 12}
!39 = !{!23, !10, i64 64}
!40 = !{!23, !10, i64 72}
!41 = !{!29, !29, i64 0}
!42 = !{!19, !6, i64 24}
!43 = !{!19, !7, i64 0}
!44 = !{!28, !29, i64 72}
!45 = !{!28, !29, i64 48}
!46 = !{!23, !10, i64 8}
!47 = !{!23, !10, i64 16}
!48 = !{!23, !10, i64 24}
!49 = !{!23, !10, i64 32}
!50 = !{!23, !10, i64 40}
!51 = !{!23, !10, i64 48}
!52 = !{!23, !10, i64 56}
!53 = !{!19, !6, i64 32}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}

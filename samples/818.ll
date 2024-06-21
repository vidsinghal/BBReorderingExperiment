; ModuleID = 'samples/818.bc'
source_filename = "/local-ssd/kvtree-qnto4ijh2zsf6hnb6vhykgwju2avahh6-build/aidengro/spack-stage-kvtree-1.4.0-qnto4ijh2zsf6hnb6vhykgwju2avahh6/spack-src/src/kvtree_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %#x\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s %lld\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %f\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %p\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%p\00", align 1

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_bytecount(ptr noundef %hash, ptr noundef %key, i64 noundef %count) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %count, ptr %count.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load i64, ptr %count.addr, align 8, !tbaa !8
  %call1 = call ptr (ptr, ptr, ptr, ...) @kvtree_setf(ptr noundef %2, ptr noundef null, ptr noundef @.str, ptr noundef %3, i64 noundef %4)
  ret i32 0
}

declare i32 @kvtree_unset(ptr noundef, ptr noundef) #1

declare ptr @kvtree_setf(ptr noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_crc32(ptr noundef %hash, ptr noundef %key, i64 noundef %crc) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %crc.addr = alloca i64, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %crc, ptr %crc.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load i64, ptr %crc.addr, align 8, !tbaa !8
  %conv = trunc i64 %4 to i32
  %call1 = call ptr (ptr, ptr, ptr, ...) @kvtree_setf(ptr noundef %2, ptr noundef null, ptr noundef @.str.1, ptr noundef %3, i32 noundef %conv)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_int(ptr noundef %hash, ptr noundef %key, i32 noundef %value) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i32 %value, ptr %value.addr, align 4, !tbaa !10
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load i32, ptr %value.addr, align 4, !tbaa !10
  %call1 = call ptr @kvtree_set_kv_int(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret i32 0
}

declare ptr @kvtree_set_kv_int(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_unsigned_long(ptr noundef %hash, ptr noundef %key, i64 noundef %value) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %value, ptr %value.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load i64, ptr %value.addr, align 8, !tbaa !8
  %call1 = call ptr (ptr, ptr, ptr, ...) @kvtree_setf(ptr noundef %2, ptr noundef null, ptr noundef @.str, ptr noundef %3, i64 noundef %4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_str(ptr noundef %hash, ptr noundef %key, ptr noundef %value) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call1 = call ptr @kvtree_set_kv(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

declare ptr @kvtree_set_kv(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_int64(ptr noundef %hash, ptr noundef %key, i64 noundef %value) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %value, ptr %value.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load i64, ptr %value.addr, align 8, !tbaa !8
  %call1 = call ptr (ptr, ptr, ptr, ...) @kvtree_setf(ptr noundef %2, ptr noundef null, ptr noundef @.str.2, ptr noundef %3, i64 noundef %4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_double(ptr noundef %hash, ptr noundef %key, double noundef %value) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca double, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store double %value, ptr %value.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load double, ptr %value.addr, align 8, !tbaa !12
  %call1 = call ptr (ptr, ptr, ptr, ...) @kvtree_setf(ptr noundef %2, ptr noundef null, ptr noundef @.str.3, ptr noundef %3, double noundef %4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_set_ptr(ptr noundef %hash, ptr noundef %key, ptr noundef %value) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @kvtree_unset(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call1 = call ptr (ptr, ptr, ptr, ...) @kvtree_setf(ptr noundef %2, ptr noundef null, ptr noundef @.str.4, ptr noundef %3, ptr noundef %4)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_bytecount(ptr noundef %hash, ptr noundef %key, ptr noundef %val) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_get_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %call1 = call i64 @strtoul(ptr noundef %3, ptr noundef null, i32 noundef 0) #5
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %call1, ptr %4, align 8, !tbaa !8
  store i32 0, ptr %rc, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @kvtree_get_val(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_crc32(ptr noundef %hash, ptr noundef %key, ptr noundef %val) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_get_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %call1 = call i64 @strtoul(ptr noundef %3, ptr noundef null, i32 noundef 0) #5
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %call1, ptr %4, align 8, !tbaa !8
  store i32 0, ptr %rc, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_int(ptr noundef %hash, ptr noundef %key, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_elem_get_first_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %call1 = call i32 @atoi(ptr noundef %3) #6
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  store i32 %call1, ptr %4, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %rc, align 4, !tbaa !10
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare ptr @kvtree_elem_get_first_val(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #4 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !4
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #5
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_unsigned_long(ptr noundef %hash, ptr noundef %key, ptr noundef %val) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_get_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %call1 = call i64 @strtoul(ptr noundef %3, ptr noundef null, i32 noundef 0) #5
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %call1, ptr %4, align 8, !tbaa !8
  store i32 0, ptr %rc, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_str(ptr noundef %hash, ptr noundef %key, ptr noundef %val) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_get_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store ptr %3, ptr %4, align 8, !tbaa !4
  store i32 0, ptr %rc, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_int64(ptr noundef %hash, ptr noundef %key, ptr noundef %val) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_get_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %call1 = call i64 @strtoll(ptr noundef %3, ptr noundef null, i32 noundef 0) #5
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %call1, ptr %4, align 8, !tbaa !8
  store i32 0, ptr %rc, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @strtoll(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_double(ptr noundef %hash, ptr noundef %key, ptr noundef %val) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  %val_tmp = alloca double, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_get_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_tmp) #5
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %call1 = call i32 @kvtree_atod(ptr noundef %3, ptr noundef %val_tmp)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load double, ptr %val_tmp, align 8, !tbaa !12
  %5 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store double %4, ptr %5, align 8, !tbaa !12
  store i32 0, ptr %rc, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_tmp) #5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load i32, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  ret i32 %6
}

declare i32 @kvtree_atod(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @kvtree_util_get_ptr(ptr noundef %hash, ptr noundef %key, ptr noundef %val) #0 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %val_str = alloca ptr, align 8
  %val_tmp = alloca ptr, align 8
  %sscanf_rc = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5
  store i32 1, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_str) #5
  %0 = load ptr, ptr %hash.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @kvtree_get_val(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %val_str, align 8, !tbaa !4
  %2 = load ptr, ptr %val_str, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_tmp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sscanf_rc) #5
  %3 = load ptr, ptr %val_str, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %3, ptr noundef @.str.5, ptr noundef %val_tmp) #5
  store i32 %call1, ptr %sscanf_rc, align 4, !tbaa !10
  %4 = load i32, ptr %sscanf_rc, align 4, !tbaa !10
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %val_tmp, align 8, !tbaa !4
  %6 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store ptr %5, ptr %6, align 8, !tbaa !4
  store i32 0, ptr %rc, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sscanf_rc) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_tmp) #5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %7 = load i32, ptr %rc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5
  ret i32 %7
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}

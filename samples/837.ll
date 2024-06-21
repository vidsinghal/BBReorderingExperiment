; ModuleID = 'samples/837.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/source/codegen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_atomic_var = type { ptr }
%struct.aws_linked_list = type { %struct.aws_linked_list_node, %struct.aws_linked_list_node }
%struct.aws_linked_list_node = type { ptr, ptr }
%struct.aws_ring_buffer = type { ptr, ptr, %struct.aws_atomic_var, %struct.aws_atomic_var, ptr }
%struct.aws_string = type { ptr, i64, [1 x i8] }

@.str = private unnamed_addr constant [19 x i8] c"list != ((void*)0)\00", align 1
@.str.1 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"alloc != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"item_size > 0\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"list->current_size == 0 || list->data\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"raw_array != ((void*)0)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"item_count > 0\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"no_overflow\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"list_a->alloc\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"list_a->alloc == list_b->alloc\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"list_a->item_size == list_b->item_size\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"list_a != list_b\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"list->item_size\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"old_frequency > 0 && new_frequency > 0\00", align 1
@.str.16 = private unnamed_addr constant [209 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/clock.inl\00", align 1
@aws_text_detect_encoding.UTF_8_BOM = internal global ptr @.str.17, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@aws_text_detect_encoding.UTF_16_BE_BOM = internal global ptr @.str.18, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"\FE\FF\00", align 1
@aws_text_detect_encoding.UTF_16_LE_BOM = internal global ptr @.str.19, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@aws_text_detect_encoding.UTF_32_BE_BOM = internal global ptr @.str.20, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"\00\00\FE\FF\00", align 1
@aws_text_detect_encoding.UTF_32_LE_BOM = internal global ptr @.str.21, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"\FF\FE\00\00\00", align 1

; Function Attrs: nounwind uwtable
define i32 @aws_raise_error(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !4
  %0 = load i32, ptr %err.addr, align 4, !tbaa !4
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare void @aws_raise_error_private(i32 noundef) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_is_mem_zeroed(ptr noundef %buf, i64 noundef %bufsize) #0 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %bufsize.addr = alloca i64, align 8
  %buf_u64 = alloca ptr, align 8
  %num_u64_checks = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %buf_u8 = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !8
  store i64 %bufsize, ptr %bufsize.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_u64) #10
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !8
  store ptr %0, ptr %buf_u64, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_u64_checks) #10
  %1 = load i64, ptr %bufsize.addr, align 8, !tbaa !10
  %div = udiv i64 %1, 8
  store i64 %div, ptr %num_u64_checks, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !10
  %3 = load i64, ptr %num_u64_checks, align 8, !tbaa !10
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %buf_u64, align 8, !tbaa !8
  %5 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %5
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !10
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %i, align 8, !tbaa !10
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %buf_u64, align 8, !tbaa !8
  %9 = load i64, ptr %num_u64_checks, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i64, ptr %8, i64 %9
  store ptr %add.ptr, ptr %buf.addr, align 8, !tbaa !8
  %10 = load i64, ptr %bufsize.addr, align 8, !tbaa !10
  %rem = urem i64 %10, 8
  store i64 %rem, ptr %bufsize.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_u8) #10
  %11 = load ptr, ptr %buf.addr, align 8, !tbaa !8
  store ptr %11, ptr %buf_u8, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.end
  %12 = load i64, ptr %i, align 8, !tbaa !10
  %13 = load i64, ptr %bufsize.addr, align 8, !tbaa !10
  %cmp2 = icmp ult i64 %12, %13
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  %14 = load ptr, ptr %buf_u8, align 8, !tbaa !8
  %15 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds i8, ptr %14, i64 %15
  %16 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %tobool5 = icmp ne i8 %16, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body3
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.body3
  br label %for.inc8

for.inc8:                                         ; preds = %if.end7
  %17 = load i64, ptr %i, align 8, !tbaa !10
  %inc9 = add i64 %17, 1
  store i64 %inc9, ptr %i, align 8, !tbaa !10
  br label %for.cond1

for.end10:                                        ; preds = %for.cond1
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end10, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_u8) #10
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_u64_checks) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_u64) #10
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i64 @aws_mul_u64_saturating(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10
  ret i64 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind uwtable
define i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !8
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

; Function Attrs: nounwind uwtable
define i32 @aws_mul_u32_saturating(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %2 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  store i32 %4, ptr %res, align 4
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %res, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %res, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @aws_mul_u32_checked(i32 noundef %a, i32 noundef %b, ptr noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !8
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 %1)
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  store i32 %5, ptr %2, align 4
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

; Function Attrs: nounwind uwtable
define i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !8
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
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind uwtable
define i64 @aws_add_u64_saturating(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i32 @aws_add_u32_checked(i32 noundef %a, i32 noundef %b, ptr noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !8
  %3 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 %1)
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  store i32 %5, ptr %2, align 4
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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @aws_add_u32_saturating(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %2 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  store i32 %4, ptr %res, align 4
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %res, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %res, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i64 @aws_clz_u32(i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !4
  %0 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 32, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !4
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i64 @aws_clz_i32(i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !4
  %0 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 32, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !4
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @aws_clz_u64(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 64, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %conv = sext i32 %cast to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i64 @aws_clz_i64(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 64, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %conv = sext i32 %cast to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @aws_clz_size(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_clz_u64(i64 noundef %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_ctz_u32(i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !4
  %0 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 32, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !4
  %conv = zext i32 %1 to i64
  %2 = call i64 @llvm.cttz.i64(i64 %conv, i1 true)
  %cast = trunc i64 %2 to i32
  %conv1 = sext i32 %cast to i64
  store i64 %conv1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i64 @aws_ctz_i32(i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !4
  %0 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 32, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !4
  %2 = call i32 @llvm.cttz.i32(i32 %1, i1 true)
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i64 @aws_ctz_u64(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 64, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %2 = call i64 @llvm.cttz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %conv = sext i32 %cast to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @aws_ctz_i64(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 64, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %2 = call i64 @llvm.cttz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %conv = sext i32 %cast to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @aws_ctz_size(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_ctz_u64(i64 noundef %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_sub_u64_saturating(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  %sub = sub i64 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_sub_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  %sub = sub i64 %2, %3
  %4 = load ptr, ptr %r.addr, align 8, !tbaa !8
  store i64 %sub, ptr %4, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @aws_sub_u32_saturating(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  %sub = sub i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_sub_u32_checked(i32 noundef %a, i32 noundef %b, ptr noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  %sub = sub i32 %2, %3
  %4 = load ptr, ptr %r.addr, align 8, !tbaa !8
  store i32 %sub, ptr %4, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i64 @aws_mul_size_saturating(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %call = call i64 @aws_mul_u64_saturating(i64 noundef %0, i64 noundef %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_mul_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !8
  %call = call i32 @aws_mul_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_add_size_saturating(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %call = call i64 @aws_add_u64_saturating(i64 noundef %0, i64 noundef %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !8
  %call = call i32 @aws_add_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_sub_size_saturating(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %call = call i64 @aws_sub_u64_saturating(i64 noundef %0, i64 noundef %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_sub_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  store ptr %r, ptr %r.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !8
  %call = call i32 @aws_sub_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_is_power_of_two(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !10
  %0 = load i64, ptr %x.addr, align 8, !tbaa !10
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %x.addr, align 8, !tbaa !10
  %2 = load i64, ptr %x.addr, align 8, !tbaa !10
  %sub = sub i64 %2, 1
  %and = and i64 %1, %sub
  %tobool1 = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %3
}

; Function Attrs: nounwind uwtable
define i32 @aws_round_up_to_power_of_two(i64 noundef %n, ptr noundef %result) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %result.addr = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store ptr %result, ptr %result.addr, align 8, !tbaa !8
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %result.addr, align 8, !tbaa !8
  store i64 1, ptr %1, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  %cmp1 = icmp ugt i64 %2, -9223372036854775808
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i64, ptr %n.addr, align 8, !tbaa !10
  %dec = add i64 %3, -1
  store i64 %dec, ptr %n.addr, align 8, !tbaa !10
  %4 = load i64, ptr %n.addr, align 8, !tbaa !10
  %shr = lshr i64 %4, 1
  %5 = load i64, ptr %n.addr, align 8, !tbaa !10
  %or = or i64 %5, %shr
  store i64 %or, ptr %n.addr, align 8, !tbaa !10
  %6 = load i64, ptr %n.addr, align 8, !tbaa !10
  %shr4 = lshr i64 %6, 2
  %7 = load i64, ptr %n.addr, align 8, !tbaa !10
  %or5 = or i64 %7, %shr4
  store i64 %or5, ptr %n.addr, align 8, !tbaa !10
  %8 = load i64, ptr %n.addr, align 8, !tbaa !10
  %shr6 = lshr i64 %8, 4
  %9 = load i64, ptr %n.addr, align 8, !tbaa !10
  %or7 = or i64 %9, %shr6
  store i64 %or7, ptr %n.addr, align 8, !tbaa !10
  %10 = load i64, ptr %n.addr, align 8, !tbaa !10
  %shr8 = lshr i64 %10, 8
  %11 = load i64, ptr %n.addr, align 8, !tbaa !10
  %or9 = or i64 %11, %shr8
  store i64 %or9, ptr %n.addr, align 8, !tbaa !10
  %12 = load i64, ptr %n.addr, align 8, !tbaa !10
  %shr10 = lshr i64 %12, 16
  %13 = load i64, ptr %n.addr, align 8, !tbaa !10
  %or11 = or i64 %13, %shr10
  store i64 %or11, ptr %n.addr, align 8, !tbaa !10
  %14 = load i64, ptr %n.addr, align 8, !tbaa !10
  %shr12 = lshr i64 %14, 32
  %15 = load i64, ptr %n.addr, align 8, !tbaa !10
  %or13 = or i64 %15, %shr12
  store i64 %or13, ptr %n.addr, align 8, !tbaa !10
  %16 = load i64, ptr %n.addr, align 8, !tbaa !10
  %inc = add i64 %16, 1
  store i64 %inc, ptr %n.addr, align 8, !tbaa !10
  %17 = load i64, ptr %n.addr, align 8, !tbaa !10
  %18 = load ptr, ptr %result.addr, align 8, !tbaa !8
  store i64 %17, ptr %18, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define zeroext i8 @aws_min_u8(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1, !tbaa !12
  store i8 %b, ptr %b.addr, align 1, !tbaa !12
  %0 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv1 = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv3 = zext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv4 = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: nounwind uwtable
define zeroext i8 @aws_max_u8(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1, !tbaa !12
  store i8 %b, ptr %b.addr, align 1, !tbaa !12
  %0 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv1 = zext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv3 = zext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv4 = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: nounwind uwtable
define signext i8 @aws_min_i8(i8 noundef signext %a, i8 noundef signext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1, !tbaa !12
  store i8 %b, ptr %b.addr, align 1, !tbaa !12
  %0 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv1 = sext i8 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv3 = sext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv4 = sext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: nounwind uwtable
define signext i8 @aws_max_i8(i8 noundef signext %a, i8 noundef signext %b) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1, !tbaa !12
  store i8 %b, ptr %b.addr, align 1, !tbaa !12
  %0 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv1 = sext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, ptr %a.addr, align 1, !tbaa !12
  %conv3 = sext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8, ptr %b.addr, align 1, !tbaa !12
  %conv4 = sext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: nounwind uwtable
define zeroext i16 @aws_min_u16(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2, !tbaa !13
  store i16 %b, ptr %b.addr, align 2, !tbaa !13
  %0 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv = zext i16 %0 to i32
  %1 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv1 = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv3 = zext i16 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv4 = zext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  ret i16 %conv5
}

; Function Attrs: nounwind uwtable
define zeroext i16 @aws_max_u16(i16 noundef zeroext %a, i16 noundef zeroext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2, !tbaa !13
  store i16 %b, ptr %b.addr, align 2, !tbaa !13
  %0 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv = zext i16 %0 to i32
  %1 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv1 = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv3 = zext i16 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv4 = zext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  ret i16 %conv5
}

; Function Attrs: nounwind uwtable
define signext i16 @aws_min_i16(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2, !tbaa !13
  store i16 %b, ptr %b.addr, align 2, !tbaa !13
  %0 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv1 = sext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv3 = sext i16 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv4 = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  ret i16 %conv5
}

; Function Attrs: nounwind uwtable
define signext i16 @aws_max_i16(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2, !tbaa !13
  store i16 %b, ptr %b.addr, align 2, !tbaa !13
  %0 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv1 = sext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i16, ptr %a.addr, align 2, !tbaa !13
  %conv3 = sext i16 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i16, ptr %b.addr, align 2, !tbaa !13
  %conv4 = sext i16 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  ret i16 %conv5
}

; Function Attrs: nounwind uwtable
define i32 @aws_min_u32(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_max_u32(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_min_i32(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_max_i32(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i64 @aws_min_u64(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @aws_max_u64(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @aws_min_i64(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @aws_max_i64(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp sgt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @aws_min_size(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @aws_max_size(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !10
  store i64 %b, ptr %b.addr, align 8, !tbaa !10
  %0 = load i64, ptr %a.addr, align 8, !tbaa !10
  %1 = load i64, ptr %b.addr, align 8, !tbaa !10
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_min_int(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_max_int(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !4
  store i32 %b, ptr %b.addr, align 4, !tbaa !4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !4
  %1 = load i32, ptr %b.addr, align 4, !tbaa !4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define float @aws_min_float(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !15
  store float %b, ptr %b.addr, align 4, !tbaa !15
  %0 = load float, ptr %a.addr, align 4, !tbaa !15
  %1 = load float, ptr %b.addr, align 4, !tbaa !15
  %cmp = fcmp olt float %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: nounwind uwtable
define float @aws_max_float(float noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !15
  store float %b, ptr %b.addr, align 4, !tbaa !15
  %0 = load float, ptr %a.addr, align 4, !tbaa !15
  %1 = load float, ptr %b.addr, align 4, !tbaa !15
  %cmp = fcmp ogt float %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: nounwind uwtable
define double @aws_min_double(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !17
  store double %b, ptr %b.addr, align 8, !tbaa !17
  %0 = load double, ptr %a.addr, align 8, !tbaa !17
  %1 = load double, ptr %b.addr, align 8, !tbaa !17
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, ptr %a.addr, align 8, !tbaa !17
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, ptr %b.addr, align 8, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %3, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define double @aws_max_double(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !17
  store double %b, ptr %b.addr, align 8, !tbaa !17
  %0 = load double, ptr %a.addr, align 8, !tbaa !17
  %1 = load double, ptr %b.addr, align 8, !tbaa !17
  %cmp = fcmp ogt double %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, ptr %a.addr, align 8, !tbaa !17
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, ptr %b.addr, align 8, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %3, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_init_dynamic(ptr noalias noundef %list, ptr noundef %alloc, i64 noundef %initial_item_allocation, i64 noundef %item_size) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %alloc.addr = alloca ptr, align 8
  %initial_item_allocation.addr = alloca i64, align 8
  %item_size.addr = alloca i64, align 8
  %allocation_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %alloc, ptr %alloc.addr, align 8, !tbaa !8
  store i64 %initial_item_allocation, ptr %initial_item_allocation.addr, align 8, !tbaa !10
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 24) #11
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load ptr, ptr %alloc.addr, align 8, !tbaa !8
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.body1
  call void @aws_fatal_assert(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 25) #11
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_size.addr, align 8, !tbaa !10
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 26) #11
  unreachable

if.end9:                                          ; preds = %do.body6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 40, i1 false)
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocation_size) #10
  store i64 0, ptr %allocation_size, align 8, !tbaa !10
  %4 = load i64, ptr %initial_item_allocation.addr, align 8, !tbaa !10
  %5 = load i64, ptr %item_size.addr, align 8, !tbaa !10
  %call = call i32 @aws_mul_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %allocation_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end12
  br label %error

if.end14:                                         ; preds = %do.end12
  %6 = load i64, ptr %allocation_size, align 8, !tbaa !10
  %cmp15 = icmp ugt i64 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %7 = load ptr, ptr %alloc.addr, align 8, !tbaa !8
  %8 = load i64, ptr %allocation_size, align 8, !tbaa !10
  %call17 = call ptr @aws_mem_acquire(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  store ptr %call17, ptr %data, align 8, !tbaa !19
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data18 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data18, align 8, !tbaa !19
  %tobool19 = icmp ne ptr %11, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then16
  br label %error

if.end21:                                         ; preds = %if.then16
  %12 = load i64, ptr %allocation_size, align 8, !tbaa !10
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 1
  store i64 %12, ptr %current_size, align 8, !tbaa !21
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %14 = load i64, ptr %item_size.addr, align 8, !tbaa !10
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size23 = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 3
  store i64 %14, ptr %item_size23, align 8, !tbaa !22
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !8
  %17 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc24 = getelementptr inbounds %struct.aws_array_list, ptr %17, i32 0, i32 0
  store ptr %16, ptr %alloc24, align 8, !tbaa !23
  br label %do.body25

do.body25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size26 = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %current_size26, align 8, !tbaa !21
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body25
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data28 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data28, align 8, !tbaa !19
  %tobool29 = icmp ne ptr %21, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 49) #11
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

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @aws_array_list_init_static(ptr noalias noundef %list, ptr noundef %raw_array, i64 noundef %item_count, i64 noundef %item_size) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %raw_array.addr = alloca ptr, align 8
  %item_count.addr = alloca i64, align 8
  %item_size.addr = alloca i64, align 8
  %current_size = alloca i64, align 8
  %no_overflow = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %raw_array, ptr %raw_array.addr, align 8, !tbaa !8
  store i64 %item_count, ptr %item_count.addr, align 8, !tbaa !10
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 65) #11
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load ptr, ptr %raw_array.addr, align 8, !tbaa !8
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.body1
  call void @aws_fatal_assert(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 66) #11
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_count.addr, align 8, !tbaa !10
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 67) #11
  unreachable

if.end9:                                          ; preds = %do.body6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %3 = load i64, ptr %item_size.addr, align 8, !tbaa !10
  %cmp12 = icmp ugt i64 %3, 0
  br i1 %cmp12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %do.body11
  call void @aws_fatal_assert(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 68) #11
  unreachable

if.end14:                                         ; preds = %do.body11
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 40, i1 false)
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 0
  store ptr null, ptr %alloc, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_size) #10
  store i64 0, ptr %current_size, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_overflow) #10
  %6 = load i64, ptr %item_count.addr, align 8, !tbaa !10
  %7 = load i64, ptr %item_size.addr, align 8, !tbaa !10
  %call = call i32 @aws_mul_size_checked(i64 noundef %6, i64 noundef %7, ptr noundef %current_size)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %no_overflow, align 4, !tbaa !4
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %8 = load i32, ptr %no_overflow, align 4, !tbaa !4
  %tobool19 = icmp ne i32 %8, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %do.body18
  call void @aws_fatal_assert(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 75) #11
  unreachable

if.end21:                                         ; preds = %do.body18
  br label %do.cond

do.cond:                                          ; preds = %if.end21
  br label %do.end22

do.end22:                                         ; preds = %do.cond
  %9 = load i64, ptr %current_size, align 8, !tbaa !10
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size23 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 1
  store i64 %9, ptr %current_size23, align 8, !tbaa !21
  %11 = load i64, ptr %item_size.addr, align 8, !tbaa !10
  %12 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size24 = getelementptr inbounds %struct.aws_array_list, ptr %12, i32 0, i32 3
  store i64 %11, ptr %item_size24, align 8, !tbaa !22
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 2
  store i64 0, ptr %length, align 8, !tbaa !24
  %14 = load ptr, ptr %raw_array.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 4
  store ptr %14, ptr %data, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_overflow) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_size) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_array_list_init_static_from_initialized(ptr noalias noundef %list, ptr noundef %raw_array, i64 noundef %item_count, i64 noundef %item_size) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %raw_array.addr = alloca ptr, align 8
  %item_count.addr = alloca i64, align 8
  %item_size.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %raw_array, ptr %raw_array.addr, align 8, !tbaa !8
  store i64 %item_count, ptr %item_count.addr, align 8, !tbaa !10
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %raw_array.addr, align 8, !tbaa !8
  %2 = load i64, ptr %item_count.addr, align 8, !tbaa !10
  %3 = load i64, ptr %item_size.addr, align 8, !tbaa !10
  call void @aws_array_list_init_static(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  %4 = load i64, ptr %item_count.addr, align 8, !tbaa !10
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 2
  store i64 %4, ptr %length, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_array_list_is_valid(ptr noalias noundef %list) #0 {
entry:
  %retval = alloca i1, align 1
  %list.addr = alloca ptr, align 8
  %required_size = alloca i64, align 8
  %required_size_is_valid = alloca i8, align 1
  %current_size_is_valid = alloca i8, align 1
  %data_is_valid = alloca i8, align 1
  %item_size_is_valid = alloca i8, align 1
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %required_size) #10
  store i64 0, ptr %required_size, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %required_size_is_valid) #10
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %length, align 8, !tbaa !24
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %item_size, align 8, !tbaa !22
  %call = call i32 @aws_mul_size_checked(i64 noundef %2, i64 noundef %4, ptr noundef %required_size)
  %cmp = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %required_size_is_valid, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %current_size_is_valid) #10
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %current_size, align 8, !tbaa !21
  %7 = load i64, ptr %required_size, align 8, !tbaa !10
  %cmp1 = icmp uge i64 %6, %7
  %frombool2 = zext i1 %cmp1 to i8
  store i8 %frombool2, ptr %current_size_is_valid, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %data_is_valid) #10
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size3 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %current_size3, align 8, !tbaa !21
  %cmp4 = icmp eq i64 %9, 0
  br i1 %cmp4, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data, align 8, !tbaa !19
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size6 = getelementptr inbounds %struct.aws_array_list, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %current_size6, align 8, !tbaa !21
  %cmp7 = icmp ne i64 %13, 0
  br i1 %cmp7, label %lor.rhs, label %lor.end13

lor.rhs:                                          ; preds = %land.rhs
  %14 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size8 = getelementptr inbounds %struct.aws_array_list, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %current_size8, align 8, !tbaa !21
  %cmp9 = icmp eq i64 %15, 0
  br i1 %cmp9, label %lor.end, label %lor.rhs10

lor.rhs10:                                        ; preds = %lor.rhs
  %16 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data11 = getelementptr inbounds %struct.aws_array_list, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %data11, align 8, !tbaa !19
  %tobool12 = icmp ne ptr %17, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs10, %lor.rhs
  %18 = phi i1 [ true, %lor.rhs ], [ %tobool12, %lor.rhs10 ]
  br label %lor.end13

lor.end13:                                        ; preds = %lor.end, %land.rhs
  %19 = phi i1 [ true, %land.rhs ], [ %18, %lor.end ]
  br label %land.end

land.end:                                         ; preds = %lor.end13, %lor.lhs.false
  %20 = phi i1 [ false, %lor.lhs.false ], [ %19, %lor.end13 ]
  %frombool14 = zext i1 %20 to i8
  store i8 %frombool14, ptr %data_is_valid, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %item_size_is_valid) #10
  %21 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size15 = getelementptr inbounds %struct.aws_array_list, ptr %21, i32 0, i32 3
  %22 = load i64, ptr %item_size15, align 8, !tbaa !22
  %cmp16 = icmp ne i64 %22, 0
  %frombool17 = zext i1 %cmp16 to i8
  store i8 %frombool17, ptr %item_size_is_valid, align 1, !tbaa !25
  %23 = load i8, ptr %required_size_is_valid, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool18 = trunc i8 %23 to i1
  br i1 %tobool18, label %land.lhs.true, label %land.end24

land.lhs.true:                                    ; preds = %land.end
  %24 = load i8, ptr %current_size_is_valid, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool19 = trunc i8 %24 to i1
  br i1 %tobool19, label %land.lhs.true20, label %land.end24

land.lhs.true20:                                  ; preds = %land.lhs.true
  %25 = load i8, ptr %data_is_valid, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool21 = trunc i8 %25 to i1
  br i1 %tobool21, label %land.rhs22, label %land.end24

land.rhs22:                                       ; preds = %land.lhs.true20
  %26 = load i8, ptr %item_size_is_valid, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool23 = trunc i8 %26 to i1
  br label %land.end24

land.end24:                                       ; preds = %land.rhs22, %land.lhs.true20, %land.lhs.true, %land.end
  %27 = phi i1 [ false, %land.lhs.true20 ], [ false, %land.lhs.true ], [ false, %land.end ], [ %tobool23, %land.rhs22 ]
  store i1 %27, ptr %retval, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %item_size_is_valid) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %data_is_valid) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %current_size_is_valid) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %required_size_is_valid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %required_size) #10
  br label %return

return:                                           ; preds = %land.end24, %if.then
  %28 = load i1, ptr %retval, align 1
  ret i1 %28
}

; Function Attrs: nounwind uwtable
define void @aws_array_list_clean_up(ptr noalias noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !23
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !19
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc2, align 8, !tbaa !23
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !19
  call void @aws_mem_release(ptr noundef %5, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 40, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @aws_mem_release(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @aws_array_list_clean_up_secure(ptr noalias noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !23
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !19
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data2, align 8, !tbaa !19
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %current_size, align 8, !tbaa !21
  call void @aws_secure_zero(ptr noundef %5, i64 noundef %7)
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc3 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %alloc3, align 8, !tbaa !23
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data4, align 8, !tbaa !19
  call void @aws_mem_release(ptr noundef %9, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load ptr, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 40, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @aws_secure_zero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_push_back(ptr noalias noundef %list, ptr noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %err_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %val, ptr %val.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_code) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %2)
  %call1 = call i32 @aws_array_list_set_at(ptr noundef %0, ptr noundef %1, i64 noundef %call)
  store i32 %call1, ptr %err_code, align 4, !tbaa !4
  %3 = load i32, ptr %err_code, align 4, !tbaa !4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !23
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !4
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #10
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %val, ptr %val.addr, align 8, !tbaa !8
  store i64 %index, ptr %index.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %1 = load i64, ptr %index.addr, align 8, !tbaa !10
  %call = call i32 @aws_array_list_ensure_capacity(ptr noundef %0, i64 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !19
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 389) #11
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !19
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !22
  %8 = load i64, ptr %index.addr, align 8, !tbaa !10
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !8
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %11, i1 false)
  %12 = load i64, ptr %index.addr, align 8, !tbaa !10
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call6 = call i64 @aws_array_list_length(ptr noundef %13)
  %cmp = icmp uge i64 %12, %call6
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %14 = load i64, ptr %index.addr, align 8, !tbaa !10
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !8
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

; Function Attrs: nounwind uwtable
define i64 @aws_array_list_length(ptr noalias noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %length, align 8, !tbaa !24
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !19
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef 342) #11
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !24
  store i64 %5, ptr %len, align 8, !tbaa !10
  %6 = load i64, ptr %len, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10
  ret i64 %6
}

declare i32 @aws_last_error() #1

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_front(ptr noalias noundef %list, ptr noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %val, ptr %val.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ugt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !19
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %item_size, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %5, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 25)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_push_front(ptr noalias noundef %list, ptr noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %orig_len = alloca i64, align 8
  %err_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %val, ptr %val.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_len) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  store i64 %call, ptr %orig_len, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_code) #10
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %2 = load i64, ptr %orig_len, align 8, !tbaa !10
  %call1 = call i32 @aws_array_list_ensure_capacity(ptr noundef %1, i64 noundef %2)
  store i32 %call1, ptr %err_code, align 4, !tbaa !4
  %3 = load i32, ptr %err_code, align 4, !tbaa !4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !23
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %7 = load i32, ptr %err_code, align 4, !tbaa !4
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end
  %8 = load i64, ptr %orig_len, align 8, !tbaa !10
  %tobool9 = icmp ne i64 %8, 0
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %data, align 8, !tbaa !19
  %11 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %11, i32 0, i32 3
  %12 = load i64, ptr %item_size, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %12
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data11 = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %data11, align 8, !tbaa !19
  %15 = load i64, ptr %orig_len, align 8, !tbaa !10
  %16 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size12 = getelementptr inbounds %struct.aws_array_list, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %item_size12, align 8, !tbaa !22
  %mul = mul i64 %15, %17
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %14, i64 %mul, i1 false)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %length, align 8, !tbaa !24
  %inc = add i64 %19, 1
  store i64 %inc, ptr %length, align 8, !tbaa !24
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data14 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data14, align 8, !tbaa !19
  %22 = load ptr, ptr %val.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size15 = getelementptr inbounds %struct.aws_array_list, ptr %23, i32 0, i32 3
  %24 = load i64, ptr %item_size15, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %24, i1 false)
  %25 = load i32, ptr %err_code, align 4, !tbaa !4
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_len) #10
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

declare i32 @aws_array_list_ensure_capacity(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_pop_front(ptr noalias noundef %list) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ugt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  call void @aws_array_list_pop_front_n(ptr noundef %1, i64 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 25)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @aws_array_list_pop_front_n(ptr noalias noundef %list, i64 noundef %n) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %popping_bytes = alloca i64, align 8
  %remaining_items = alloca i64, align 8
  %remaining_bytes = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %1)
  %cmp = icmp uge i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  call void @aws_array_list_clear(ptr noundef %2)
  br label %if.end7

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %n.addr, align 8, !tbaa !10
  %cmp1 = icmp ugt i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %popping_bytes) #10
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %item_size, align 8, !tbaa !22
  %6 = load i64, ptr %n.addr, align 8, !tbaa !10
  %mul = mul i64 %5, %6
  store i64 %mul, ptr %popping_bytes, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining_items) #10
  %7 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call3 = call i64 @aws_array_list_length(ptr noundef %7)
  %8 = load i64, ptr %n.addr, align 8, !tbaa !10
  %sub = sub i64 %call3, %8
  store i64 %sub, ptr %remaining_items, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining_bytes) #10
  %9 = load i64, ptr %remaining_items, align 8, !tbaa !10
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size4 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size4, align 8, !tbaa !22
  %mul5 = mul i64 %9, %11
  store i64 %mul5, ptr %remaining_bytes, align 8, !tbaa !10
  %12 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %data, align 8, !tbaa !19
  %14 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data6 = getelementptr inbounds %struct.aws_array_list, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %data6, align 8, !tbaa !19
  %16 = load i64, ptr %popping_bytes, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %16
  %17 = load i64, ptr %remaining_bytes, align 8, !tbaa !10
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %13, ptr align 1 %add.ptr, i64 %17, i1 false)
  %18 = load i64, ptr %remaining_items, align 8, !tbaa !10
  %19 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %19, i32 0, i32 2
  store i64 %18, ptr %length, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining_bytes) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining_items) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %popping_bytes) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_array_list_clear(ptr noalias noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %data, align 8, !tbaa !19
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 2
  store i64 0, ptr %length, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_erase(ptr noalias noundef %list, i64 noundef %index) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %item_ptr = alloca ptr, align 8
  %next_item_ptr = alloca ptr, align 8
  %trailing_items = alloca i64, align 8
  %trailing_bytes = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store i64 %index, ptr %index.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  store i64 %call, ptr %length, align 8, !tbaa !10
  %1 = load i64, ptr %index.addr, align 8, !tbaa !10
  %2 = load i64, ptr %length, align 8, !tbaa !10
  %cmp = icmp uge i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @aws_raise_error(i32 noundef 10)
  store i32 %call1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %index.addr, align 8, !tbaa !10
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call4 = call i32 @aws_array_list_pop_front(ptr noundef %4)
  br label %if.end17

if.else:                                          ; preds = %if.end
  %5 = load i64, ptr %index.addr, align 8, !tbaa !10
  %6 = load i64, ptr %length, align 8, !tbaa !10
  %sub = sub i64 %6, 1
  %cmp5 = icmp eq i64 %5, %sub
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %7 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call7 = call i32 @aws_array_list_pop_back(ptr noundef %7)
  br label %if.end16

if.else8:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %item_ptr) #10
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %data, align 8, !tbaa !19
  %10 = load i64, ptr %index.addr, align 8, !tbaa !10
  %11 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %11, i32 0, i32 3
  %12 = load i64, ptr %item_size, align 8, !tbaa !22
  %mul = mul i64 %10, %12
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %mul
  store ptr %add.ptr, ptr %item_ptr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_item_ptr) #10
  %13 = load ptr, ptr %item_ptr, align 8, !tbaa !8
  %14 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size9 = getelementptr inbounds %struct.aws_array_list, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %item_size9, align 8, !tbaa !22
  %add.ptr10 = getelementptr inbounds i8, ptr %13, i64 %15
  store ptr %add.ptr10, ptr %next_item_ptr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailing_items) #10
  %16 = load i64, ptr %length, align 8, !tbaa !10
  %17 = load i64, ptr %index.addr, align 8, !tbaa !10
  %sub11 = sub i64 %16, %17
  %sub12 = sub i64 %sub11, 1
  store i64 %sub12, ptr %trailing_items, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %trailing_bytes) #10
  %18 = load i64, ptr %trailing_items, align 8, !tbaa !10
  %19 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size13 = getelementptr inbounds %struct.aws_array_list, ptr %19, i32 0, i32 3
  %20 = load i64, ptr %item_size13, align 8, !tbaa !22
  %mul14 = mul i64 %18, %20
  store i64 %mul14, ptr %trailing_bytes, align 8, !tbaa !10
  %21 = load ptr, ptr %item_ptr, align 8, !tbaa !8
  %22 = load ptr, ptr %next_item_ptr, align 8, !tbaa !8
  %23 = load i64, ptr %trailing_bytes, align 8, !tbaa !10
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %23, i1 false)
  %24 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call15 = call i32 @aws_array_list_pop_back(ptr noundef %24)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailing_bytes) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %trailing_items) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_item_ptr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %item_ptr) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else8, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #10
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_pop_back(ptr noalias noundef %list) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %last_item_offset = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ugt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %data, align 8, !tbaa !19
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 283) #11
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_item_offset) #10
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %item_size, align 8, !tbaa !22
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call2 = call i64 @aws_array_list_length(ptr noundef %5)
  %sub = sub i64 %call2, 1
  %mul = mul i64 %4, %sub
  store i64 %mul, ptr %last_item_offset, align 8, !tbaa !10
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !19
  %8 = load i64, ptr %last_item_offset, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size4 = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %item_size4, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %10, i1 false)
  %11 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.aws_array_list, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %length, align 8, !tbaa !24
  %dec = add i64 %12, -1
  store i64 %dec, ptr %length, align 8, !tbaa !24
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_item_offset) #10
  br label %return

if.end5:                                          ; preds = %entry
  %call6 = call i32 @aws_raise_error(i32 noundef 25)
  store i32 %call6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %do.end
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_back(ptr noalias noundef %list, ptr noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %last_item_offset = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %val, ptr %val.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %cmp = icmp ugt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_item_offset) #10
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %item_size, align 8, !tbaa !22
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call1 = call i64 @aws_array_list_length(ptr noundef %3)
  %sub = sub i64 %call1, 1
  %mul = mul i64 %2, %sub
  store i64 %mul, ptr %last_item_offset, align 8, !tbaa !10
  %4 = load ptr, ptr %val.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %data, align 8, !tbaa !19
  %7 = load i64, ptr %last_item_offset, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size2 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size2, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %add.ptr, i64 %9, i1 false)
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_item_offset) #10
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i32 @aws_raise_error(i32 noundef 25)
  store i32 %call3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @aws_array_list_swap_contents(ptr noalias noundef %list_a, ptr noalias noundef %list_b) #0 {
entry:
  %list_a.addr = alloca ptr, align 8
  %list_b.addr = alloca ptr, align 8
  %tmp = alloca %struct.aws_array_list, align 8
  store ptr %list_a, ptr %list_a.addr, align 8, !tbaa !8
  store ptr %list_b, ptr %list_b.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list_a.addr, align 8, !tbaa !8
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !23
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 313) #11
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %list_a.addr, align 8, !tbaa !8
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %alloc2, align 8, !tbaa !23
  %4 = load ptr, ptr %list_b.addr, align 8, !tbaa !8
  %alloc3 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc3, align 8, !tbaa !23
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.end5, label %if.then4

if.then4:                                         ; preds = %do.body1
  call void @aws_fatal_assert(ptr noundef @.str.10, ptr noundef @.str.1, i32 noundef 314) #11
  unreachable

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %6 = load ptr, ptr %list_a.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !22
  %8 = load ptr, ptr %list_b.addr, align 8, !tbaa !8
  %item_size8 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size8, align 8, !tbaa !22
  %cmp9 = icmp eq i64 %7, %9
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.body7
  call void @aws_fatal_assert(ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 315) #11
  unreachable

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %10 = load ptr, ptr %list_a.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %list_b.addr, align 8, !tbaa !8
  %cmp14 = icmp ne ptr %10, %11
  br i1 %cmp14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body13
  call void @aws_fatal_assert(ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 316) #11
  unreachable

if.end16:                                         ; preds = %do.body13
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp) #10
  %12 = load ptr, ptr %list_a.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %12, i64 40, i1 false), !tbaa.struct !29
  %13 = load ptr, ptr %list_a.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %list_b.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 40, i1 false), !tbaa.struct !29
  %15 = load ptr, ptr %list_b.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %tmp, i64 40, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp) #10
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @aws_array_list_capacity(ptr noalias noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %capacity = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %item_size, align 8, !tbaa !22
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.13, ptr noundef @.str.1, i32 noundef 329) #11
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %capacity) #10
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %current_size, align 8, !tbaa !21
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size1 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %item_size1, align 8, !tbaa !22
  %div = udiv i64 %3, %5
  store i64 %div, ptr %capacity, align 8, !tbaa !10
  %6 = load i64, ptr %capacity, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %capacity) #10
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_get_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %val, ptr %val.addr, align 8, !tbaa !8
  store i64 %index, ptr %index.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !10
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %data, align 8, !tbaa !19
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %item_size, align 8, !tbaa !22
  %7 = load i64, ptr %index.addr, align 8, !tbaa !10
  %mul = mul i64 %6, %7
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size1 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size1, align 8, !tbaa !22
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

; Function Attrs: nounwind uwtable
define i32 @aws_array_list_get_at_ptr(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %val, ptr %val.addr, align 8, !tbaa !8
  store i64 %index, ptr %index.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !10
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !19
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %item_size, align 8, !tbaa !22
  %6 = load i64, ptr %index.addr, align 8, !tbaa !10
  %mul = mul i64 %5, %6
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %mul
  %7 = load ptr, ptr %val.addr, align 8, !tbaa !8
  store ptr %add.ptr, ptr %7, align 8, !tbaa !8
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
define i64 @aws_atomic_load_int(ptr noundef %var) #0 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %call = call i64 @aws_atomic_load_int_explicit(ptr noundef %0, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_load_int_explicit(ptr noundef %var, i32 noundef %memory_order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %memory_order.addr = alloca i32, align 4
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !12
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
  %5 = load i64, ptr %atomic-temp, align 8, !tbaa !10
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define ptr @aws_atomic_load_ptr(ptr noundef %var) #0 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %call = call ptr @aws_atomic_load_ptr_explicit(ptr noundef %0, i32 noundef 5)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define ptr @aws_atomic_load_ptr_explicit(ptr noundef %var, i32 noundef %memory_order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %memory_order.addr = alloca i32, align 4
  %atomic-temp = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %2 = load atomic volatile i64, ptr %value monotonic, align 8
  store i64 %2, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic volatile i64, ptr %value acquire, align 8
  store i64 %3, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %4 = load atomic volatile i64, ptr %value seq_cst, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load ptr, ptr %atomic-temp, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define void @aws_atomic_store_int(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  call void @aws_atomic_store_int_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_atomic_store_int_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %memory_order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %memory_order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !10
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

; Function Attrs: nounwind uwtable
define void @aws_atomic_store_ptr(ptr noundef %var, ptr noundef %p) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !8
  call void @aws_atomic_store_ptr_explicit(ptr noundef %0, ptr noundef %1, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_atomic_store_ptr_explicit(ptr noundef %var, ptr noundef %p, i32 noundef %memory_order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %memory_order.addr = alloca i32, align 4
  %.atomictmp = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !8
  store ptr %2, ptr %.atomictmp, align 8, !tbaa !8
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  store atomic volatile i64 %3, ptr %value monotonic, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %4 = load i64, ptr %.atomictmp, align 8
  store atomic volatile i64 %4, ptr %value release, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %5 = load i64, ptr %.atomictmp, align 8
  store atomic volatile i64 %5, ptr %value seq_cst, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_exchange_int(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_atomic_exchange_int_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_exchange_int_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %memory_order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %memory_order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !10
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  %4 = atomicrmw xchg ptr %0, i64 %3 monotonic, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %5 = load i64, ptr %.atomictmp, align 8
  %6 = atomicrmw xchg ptr %0, i64 %5 acquire, align 8
  store i64 %6, ptr %atomic-temp, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = atomicrmw xchg ptr %0, i64 %7 release, align 8
  store i64 %8, ptr %atomic-temp, align 8
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  %9 = load i64, ptr %.atomictmp, align 8
  %10 = atomicrmw xchg ptr %0, i64 %9 acq_rel, align 8
  store i64 %10, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %11 = load i64, ptr %.atomictmp, align 8
  %12 = atomicrmw xchg ptr %0, i64 %11 seq_cst, align 8
  store i64 %12, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !10
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define ptr @aws_atomic_exchange_ptr(ptr noundef %var, ptr noundef %p) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %call = call ptr @aws_atomic_exchange_ptr_explicit(ptr noundef %0, ptr noundef %1, i32 noundef 5)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define ptr @aws_atomic_exchange_ptr_explicit(ptr noundef %var, ptr noundef %p, i32 noundef %memory_order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %memory_order.addr = alloca i32, align 4
  %.atomictmp = alloca ptr, align 8
  %atomic-temp = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !8
  store ptr %2, ptr %.atomictmp, align 8, !tbaa !8
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  %4 = atomicrmw volatile xchg ptr %value, i64 %3 monotonic, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %5 = load i64, ptr %.atomictmp, align 8
  %6 = atomicrmw volatile xchg ptr %value, i64 %5 acquire, align 8
  store i64 %6, ptr %atomic-temp, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = atomicrmw volatile xchg ptr %value, i64 %7 release, align 8
  store i64 %8, ptr %atomic-temp, align 8
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  %9 = load i64, ptr %.atomictmp, align 8
  %10 = atomicrmw volatile xchg ptr %value, i64 %9 acq_rel, align 8
  store i64 %10, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %11 = load i64, ptr %.atomictmp, align 8
  %12 = atomicrmw volatile xchg ptr %value, i64 %11 seq_cst, align 8
  store i64 %12, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load ptr, ptr %atomic-temp, align 8, !tbaa !8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_atomic_compare_exchange_int(ptr noundef %var, ptr noundef %expected, i64 noundef %desired) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !8
  store i64 %desired, ptr %desired.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %expected.addr, align 8, !tbaa !8
  %2 = load i64, ptr %desired.addr, align 8, !tbaa !10
  %call = call zeroext i1 @aws_atomic_compare_exchange_int_explicit(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 5, i32 noundef 5)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_atomic_compare_exchange_int_explicit(ptr noundef %var, ptr noundef %expected, i64 noundef %desired, i32 noundef %order_success, i32 noundef %order_failure) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca i64, align 8
  %order_success.addr = alloca i32, align 4
  %order_failure.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %cmpxchg.bool = alloca i8, align 1
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !8
  store i64 %desired, ptr %desired.addr, align 8, !tbaa !10
  store i32 %order_success, ptr %order_success.addr, align 4, !tbaa !12
  store i32 %order_failure, ptr %order_failure.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %order_success.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load ptr, ptr %expected.addr, align 8, !tbaa !8
  %3 = load i64, ptr %desired.addr, align 8, !tbaa !10
  store i64 %3, ptr %.atomictmp, align 8, !tbaa !10
  %4 = load i32, ptr %order_failure.addr, align 4, !tbaa !12
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
  %5 = load i8, ptr %cmpxchg.bool, align 1, !tbaa !25, !range !27, !noundef !28
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
  store i8 %frombool, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue2

cmpxchg.store_expected3:                          ; preds = %acquire_fail
  store i64 %14, ptr %2, align 8
  br label %cmpxchg.continue4

cmpxchg.continue4:                                ; preds = %cmpxchg.store_expected3, %acquire_fail
  %frombool5 = zext i1 %15 to i8
  store i8 %frombool5, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue2

cmpxchg.store_expected6:                          ; preds = %seqcst_fail
  store i64 %19, ptr %2, align 8
  br label %cmpxchg.continue7

cmpxchg.continue7:                                ; preds = %cmpxchg.store_expected6, %seqcst_fail
  %frombool8 = zext i1 %20 to i8
  store i8 %frombool8, ptr %cmpxchg.bool, align 1, !tbaa !25
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
  store i8 %frombool15, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue12

cmpxchg.store_expected16:                         ; preds = %acquire_fail10
  store i64 %29, ptr %2, align 8
  br label %cmpxchg.continue17

cmpxchg.continue17:                               ; preds = %cmpxchg.store_expected16, %acquire_fail10
  %frombool18 = zext i1 %30 to i8
  store i8 %frombool18, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue12

cmpxchg.store_expected19:                         ; preds = %seqcst_fail11
  store i64 %34, ptr %2, align 8
  br label %cmpxchg.continue20

cmpxchg.continue20:                               ; preds = %cmpxchg.store_expected19, %seqcst_fail11
  %frombool21 = zext i1 %35 to i8
  store i8 %frombool21, ptr %cmpxchg.bool, align 1, !tbaa !25
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
  store i8 %frombool28, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue25

cmpxchg.store_expected29:                         ; preds = %acquire_fail23
  store i64 %44, ptr %2, align 8
  br label %cmpxchg.continue30

cmpxchg.continue30:                               ; preds = %cmpxchg.store_expected29, %acquire_fail23
  %frombool31 = zext i1 %45 to i8
  store i8 %frombool31, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue25

cmpxchg.store_expected32:                         ; preds = %seqcst_fail24
  store i64 %49, ptr %2, align 8
  br label %cmpxchg.continue33

cmpxchg.continue33:                               ; preds = %cmpxchg.store_expected32, %seqcst_fail24
  %frombool34 = zext i1 %50 to i8
  store i8 %frombool34, ptr %cmpxchg.bool, align 1, !tbaa !25
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
  store i8 %frombool41, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue38

cmpxchg.store_expected42:                         ; preds = %acquire_fail36
  store i64 %59, ptr %2, align 8
  br label %cmpxchg.continue43

cmpxchg.continue43:                               ; preds = %cmpxchg.store_expected42, %acquire_fail36
  %frombool44 = zext i1 %60 to i8
  store i8 %frombool44, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue38

cmpxchg.store_expected45:                         ; preds = %seqcst_fail37
  store i64 %64, ptr %2, align 8
  br label %cmpxchg.continue46

cmpxchg.continue46:                               ; preds = %cmpxchg.store_expected45, %seqcst_fail37
  %frombool47 = zext i1 %65 to i8
  store i8 %frombool47, ptr %cmpxchg.bool, align 1, !tbaa !25
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
  store i8 %frombool54, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue51

cmpxchg.store_expected55:                         ; preds = %acquire_fail49
  store i64 %74, ptr %2, align 8
  br label %cmpxchg.continue56

cmpxchg.continue56:                               ; preds = %cmpxchg.store_expected55, %acquire_fail49
  %frombool57 = zext i1 %75 to i8
  store i8 %frombool57, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue51

cmpxchg.store_expected58:                         ; preds = %seqcst_fail50
  store i64 %79, ptr %2, align 8
  br label %cmpxchg.continue59

cmpxchg.continue59:                               ; preds = %cmpxchg.store_expected58, %seqcst_fail50
  %frombool60 = zext i1 %80 to i8
  store i8 %frombool60, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue51
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_atomic_compare_exchange_ptr(ptr noundef %var, ptr noundef %expected, ptr noundef %desired) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !8
  store ptr %desired, ptr %desired.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %expected.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %desired.addr, align 8, !tbaa !8
  %call = call zeroext i1 @aws_atomic_compare_exchange_ptr_explicit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 5, i32 noundef 5)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_atomic_compare_exchange_ptr_explicit(ptr noundef %var, ptr noundef %expected, ptr noundef %desired, i32 noundef %order_success, i32 noundef %order_failure) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca ptr, align 8
  %order_success.addr = alloca i32, align 4
  %order_failure.addr = alloca i32, align 4
  %.atomictmp = alloca ptr, align 8
  %cmpxchg.bool = alloca i8, align 1
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !8
  store ptr %desired, ptr %desired.addr, align 8, !tbaa !8
  store i32 %order_success, ptr %order_success.addr, align 4, !tbaa !12
  store i32 %order_failure, ptr %order_failure.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %order_success.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load ptr, ptr %expected.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %desired.addr, align 8, !tbaa !8
  store ptr %3, ptr %.atomictmp, align 8, !tbaa !8
  %4 = load i32, ptr %order_failure.addr, align 4, !tbaa !12
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
  %5 = load i8, ptr %cmpxchg.bool, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool = trunc i8 %5 to i1
  ret i1 %tobool

monotonic_fail:                                   ; preds = %monotonic
  %6 = load i64, ptr %2, align 8
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = cmpxchg volatile ptr %value, i64 %6, i64 %7 monotonic monotonic, align 8
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  br i1 %10, label %cmpxchg.continue, label %cmpxchg.store_expected

acquire_fail:                                     ; preds = %monotonic, %monotonic
  %11 = load i64, ptr %2, align 8
  %12 = load i64, ptr %.atomictmp, align 8
  %13 = cmpxchg volatile ptr %value, i64 %11, i64 %12 monotonic acquire, align 8
  %14 = extractvalue { i64, i1 } %13, 0
  %15 = extractvalue { i64, i1 } %13, 1
  br i1 %15, label %cmpxchg.continue4, label %cmpxchg.store_expected3

seqcst_fail:                                      ; preds = %monotonic
  %16 = load i64, ptr %2, align 8
  %17 = load i64, ptr %.atomictmp, align 8
  %18 = cmpxchg volatile ptr %value, i64 %16, i64 %17 monotonic seq_cst, align 8
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
  store i8 %frombool, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue2

cmpxchg.store_expected3:                          ; preds = %acquire_fail
  store i64 %14, ptr %2, align 8
  br label %cmpxchg.continue4

cmpxchg.continue4:                                ; preds = %cmpxchg.store_expected3, %acquire_fail
  %frombool5 = zext i1 %15 to i8
  store i8 %frombool5, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue2

cmpxchg.store_expected6:                          ; preds = %seqcst_fail
  store i64 %19, ptr %2, align 8
  br label %cmpxchg.continue7

cmpxchg.continue7:                                ; preds = %cmpxchg.store_expected6, %seqcst_fail
  %frombool8 = zext i1 %20 to i8
  store i8 %frombool8, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue2

monotonic_fail9:                                  ; preds = %acquire
  %21 = load i64, ptr %2, align 8
  %22 = load i64, ptr %.atomictmp, align 8
  %23 = cmpxchg volatile ptr %value, i64 %21, i64 %22 acquire monotonic, align 8
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = extractvalue { i64, i1 } %23, 1
  br i1 %25, label %cmpxchg.continue14, label %cmpxchg.store_expected13

acquire_fail10:                                   ; preds = %acquire, %acquire
  %26 = load i64, ptr %2, align 8
  %27 = load i64, ptr %.atomictmp, align 8
  %28 = cmpxchg volatile ptr %value, i64 %26, i64 %27 acquire acquire, align 8
  %29 = extractvalue { i64, i1 } %28, 0
  %30 = extractvalue { i64, i1 } %28, 1
  br i1 %30, label %cmpxchg.continue17, label %cmpxchg.store_expected16

seqcst_fail11:                                    ; preds = %acquire
  %31 = load i64, ptr %2, align 8
  %32 = load i64, ptr %.atomictmp, align 8
  %33 = cmpxchg volatile ptr %value, i64 %31, i64 %32 acquire seq_cst, align 8
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
  store i8 %frombool15, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue12

cmpxchg.store_expected16:                         ; preds = %acquire_fail10
  store i64 %29, ptr %2, align 8
  br label %cmpxchg.continue17

cmpxchg.continue17:                               ; preds = %cmpxchg.store_expected16, %acquire_fail10
  %frombool18 = zext i1 %30 to i8
  store i8 %frombool18, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue12

cmpxchg.store_expected19:                         ; preds = %seqcst_fail11
  store i64 %34, ptr %2, align 8
  br label %cmpxchg.continue20

cmpxchg.continue20:                               ; preds = %cmpxchg.store_expected19, %seqcst_fail11
  %frombool21 = zext i1 %35 to i8
  store i8 %frombool21, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue12

monotonic_fail22:                                 ; preds = %release
  %36 = load i64, ptr %2, align 8
  %37 = load i64, ptr %.atomictmp, align 8
  %38 = cmpxchg volatile ptr %value, i64 %36, i64 %37 release monotonic, align 8
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  br i1 %40, label %cmpxchg.continue27, label %cmpxchg.store_expected26

acquire_fail23:                                   ; preds = %release, %release
  %41 = load i64, ptr %2, align 8
  %42 = load i64, ptr %.atomictmp, align 8
  %43 = cmpxchg volatile ptr %value, i64 %41, i64 %42 release acquire, align 8
  %44 = extractvalue { i64, i1 } %43, 0
  %45 = extractvalue { i64, i1 } %43, 1
  br i1 %45, label %cmpxchg.continue30, label %cmpxchg.store_expected29

seqcst_fail24:                                    ; preds = %release
  %46 = load i64, ptr %2, align 8
  %47 = load i64, ptr %.atomictmp, align 8
  %48 = cmpxchg volatile ptr %value, i64 %46, i64 %47 release seq_cst, align 8
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
  store i8 %frombool28, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue25

cmpxchg.store_expected29:                         ; preds = %acquire_fail23
  store i64 %44, ptr %2, align 8
  br label %cmpxchg.continue30

cmpxchg.continue30:                               ; preds = %cmpxchg.store_expected29, %acquire_fail23
  %frombool31 = zext i1 %45 to i8
  store i8 %frombool31, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue25

cmpxchg.store_expected32:                         ; preds = %seqcst_fail24
  store i64 %49, ptr %2, align 8
  br label %cmpxchg.continue33

cmpxchg.continue33:                               ; preds = %cmpxchg.store_expected32, %seqcst_fail24
  %frombool34 = zext i1 %50 to i8
  store i8 %frombool34, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue25

monotonic_fail35:                                 ; preds = %acqrel
  %51 = load i64, ptr %2, align 8
  %52 = load i64, ptr %.atomictmp, align 8
  %53 = cmpxchg volatile ptr %value, i64 %51, i64 %52 acq_rel monotonic, align 8
  %54 = extractvalue { i64, i1 } %53, 0
  %55 = extractvalue { i64, i1 } %53, 1
  br i1 %55, label %cmpxchg.continue40, label %cmpxchg.store_expected39

acquire_fail36:                                   ; preds = %acqrel, %acqrel
  %56 = load i64, ptr %2, align 8
  %57 = load i64, ptr %.atomictmp, align 8
  %58 = cmpxchg volatile ptr %value, i64 %56, i64 %57 acq_rel acquire, align 8
  %59 = extractvalue { i64, i1 } %58, 0
  %60 = extractvalue { i64, i1 } %58, 1
  br i1 %60, label %cmpxchg.continue43, label %cmpxchg.store_expected42

seqcst_fail37:                                    ; preds = %acqrel
  %61 = load i64, ptr %2, align 8
  %62 = load i64, ptr %.atomictmp, align 8
  %63 = cmpxchg volatile ptr %value, i64 %61, i64 %62 acq_rel seq_cst, align 8
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
  store i8 %frombool41, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue38

cmpxchg.store_expected42:                         ; preds = %acquire_fail36
  store i64 %59, ptr %2, align 8
  br label %cmpxchg.continue43

cmpxchg.continue43:                               ; preds = %cmpxchg.store_expected42, %acquire_fail36
  %frombool44 = zext i1 %60 to i8
  store i8 %frombool44, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue38

cmpxchg.store_expected45:                         ; preds = %seqcst_fail37
  store i64 %64, ptr %2, align 8
  br label %cmpxchg.continue46

cmpxchg.continue46:                               ; preds = %cmpxchg.store_expected45, %seqcst_fail37
  %frombool47 = zext i1 %65 to i8
  store i8 %frombool47, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue38

monotonic_fail48:                                 ; preds = %seqcst
  %66 = load i64, ptr %2, align 8
  %67 = load i64, ptr %.atomictmp, align 8
  %68 = cmpxchg volatile ptr %value, i64 %66, i64 %67 seq_cst monotonic, align 8
  %69 = extractvalue { i64, i1 } %68, 0
  %70 = extractvalue { i64, i1 } %68, 1
  br i1 %70, label %cmpxchg.continue53, label %cmpxchg.store_expected52

acquire_fail49:                                   ; preds = %seqcst, %seqcst
  %71 = load i64, ptr %2, align 8
  %72 = load i64, ptr %.atomictmp, align 8
  %73 = cmpxchg volatile ptr %value, i64 %71, i64 %72 seq_cst acquire, align 8
  %74 = extractvalue { i64, i1 } %73, 0
  %75 = extractvalue { i64, i1 } %73, 1
  br i1 %75, label %cmpxchg.continue56, label %cmpxchg.store_expected55

seqcst_fail50:                                    ; preds = %seqcst
  %76 = load i64, ptr %2, align 8
  %77 = load i64, ptr %.atomictmp, align 8
  %78 = cmpxchg volatile ptr %value, i64 %76, i64 %77 seq_cst seq_cst, align 8
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
  store i8 %frombool54, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue51

cmpxchg.store_expected55:                         ; preds = %acquire_fail49
  store i64 %74, ptr %2, align 8
  br label %cmpxchg.continue56

cmpxchg.continue56:                               ; preds = %cmpxchg.store_expected55, %acquire_fail49
  %frombool57 = zext i1 %75 to i8
  store i8 %frombool57, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue51

cmpxchg.store_expected58:                         ; preds = %seqcst_fail50
  store i64 %79, ptr %2, align 8
  br label %cmpxchg.continue59

cmpxchg.continue59:                               ; preds = %cmpxchg.store_expected58, %seqcst_fail50
  %frombool60 = zext i1 %80 to i8
  store i8 %frombool60, ptr %cmpxchg.bool, align 1, !tbaa !25
  br label %atomic.continue51
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_add(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_atomic_fetch_add_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_add_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store i32 %order, ptr %order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !10
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
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !10
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_sub(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_atomic_fetch_sub_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_sub_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store i32 %order, ptr %order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !10
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
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !10
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_and(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_atomic_fetch_and_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_and_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store i32 %order, ptr %order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !10
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  %4 = atomicrmw and ptr %0, i64 %3 monotonic, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %5 = load i64, ptr %.atomictmp, align 8
  %6 = atomicrmw and ptr %0, i64 %5 acquire, align 8
  store i64 %6, ptr %atomic-temp, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = atomicrmw and ptr %0, i64 %7 release, align 8
  store i64 %8, ptr %atomic-temp, align 8
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  %9 = load i64, ptr %.atomictmp, align 8
  %10 = atomicrmw and ptr %0, i64 %9 acq_rel, align 8
  store i64 %10, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %11 = load i64, ptr %.atomictmp, align 8
  %12 = atomicrmw and ptr %0, i64 %11 seq_cst, align 8
  store i64 %12, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !10
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_or(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_atomic_fetch_or_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_or_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store i32 %order, ptr %order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !10
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  %4 = atomicrmw or ptr %0, i64 %3 monotonic, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %5 = load i64, ptr %.atomictmp, align 8
  %6 = atomicrmw or ptr %0, i64 %5 acquire, align 8
  store i64 %6, ptr %atomic-temp, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = atomicrmw or ptr %0, i64 %7 release, align 8
  store i64 %8, ptr %atomic-temp, align 8
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  %9 = load i64, ptr %.atomictmp, align 8
  %10 = atomicrmw or ptr %0, i64 %9 acq_rel, align 8
  store i64 %10, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %11 = load i64, ptr %.atomictmp, align 8
  %12 = atomicrmw or ptr %0, i64 %11 seq_cst, align 8
  store i64 %12, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !10
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_xor(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !10
  %call = call i64 @aws_atomic_fetch_xor_explicit(ptr noundef %0, i64 noundef %1, i32 noundef 5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_atomic_fetch_xor_explicit(ptr noundef %var, i64 noundef %n, i32 noundef %order) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  store i32 %order, ptr %order.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %1 = load i32, ptr %order.addr, align 4, !tbaa !12
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !10
  store i64 %2, ptr %.atomictmp, align 8, !tbaa !10
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  %4 = atomicrmw xor ptr %0, i64 %3 monotonic, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %5 = load i64, ptr %.atomictmp, align 8
  %6 = atomicrmw xor ptr %0, i64 %5 acquire, align 8
  store i64 %6, ptr %atomic-temp, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = atomicrmw xor ptr %0, i64 %7 release, align 8
  store i64 %8, ptr %atomic-temp, align 8
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  %9 = load i64, ptr %.atomictmp, align 8
  %10 = atomicrmw xor ptr %0, i64 %9 acq_rel, align 8
  store i64 %10, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %11 = load i64, ptr %.atomictmp, align 8
  %12 = atomicrmw xor ptr %0, i64 %11 seq_cst, align 8
  store i64 %12, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i64, ptr %atomic-temp, align 8, !tbaa !10
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define void @aws_atomic_init_int(ptr noundef %var, i64 noundef %n) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !10
  %0 = load i64, ptr %n.addr, align 8, !tbaa !10
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !8
  store i64 %0, ptr %1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_atomic_init_ptr(ptr noundef %var, ptr noundef %p) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !8
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !8
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %1, i32 0, i32 0
  store volatile ptr %0, ptr %value, align 8, !tbaa !30
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_atomic_priv_xlate_order(i32 noundef %order) #7 {
entry:
  %retval = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !12
  %0 = load i32, ptr %order.addr, align 4, !tbaa !12
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

; Function Attrs: nounwind uwtable
define void @aws_atomic_thread_fence(i32 noundef %order) #0 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !12
  %0 = load i32, ptr %order.addr, align 4, !tbaa !12
  switch i32 %0, label %atomic.continue [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

acquire:                                          ; preds = %entry, %entry
  fence acquire
  br label %atomic.continue

release:                                          ; preds = %entry
  fence release
  br label %atomic.continue

acqrel:                                           ; preds = %entry
  fence acq_rel
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  fence seq_cst
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_is_big_endian() #0 {
entry:
  %z = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %z) #10
  store i16 256, ptr %z, align 2, !tbaa !13
  %0 = load i8, ptr %z, align 2, !tbaa !12
  %conv = zext i8 %0 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr %z) #10
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i64 @aws_hton64(i64 noundef %x) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %v = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !10
  %call = call i32 @aws_is_big_endian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %x.addr, align 8, !tbaa !10
  store i64 %0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #10
  %1 = load i64, ptr %x.addr, align 8, !tbaa !10
  %2 = call i64 asm "bswap ${0:q}", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !srcloc !32
  store i64 %2, ptr %v, align 8, !tbaa !10
  %3 = load i64, ptr %v, align 8, !tbaa !10
  store i64 %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @aws_ntoh64(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !10
  %0 = load i64, ptr %x.addr, align 8, !tbaa !10
  %call = call i64 @aws_hton64(i64 noundef %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_hton32(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !4
  %0 = load i32, ptr %x.addr, align 4, !tbaa !4
  %call = call i32 @__bswap_32(i32 noundef %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__bswap_32(i32 noundef %__bsx) #7 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, ptr %__bsx.addr, align 4, !tbaa !4
  %0 = load i32, ptr %__bsx.addr, align 4, !tbaa !4
  %and = and i32 %0, -16777216
  %shr = lshr i32 %and, 24
  %1 = load i32, ptr %__bsx.addr, align 4, !tbaa !4
  %and1 = and i32 %1, 16711680
  %shr2 = lshr i32 %and1, 8
  %or = or i32 %shr, %shr2
  %2 = load i32, ptr %__bsx.addr, align 4, !tbaa !4
  %and3 = and i32 %2, 65280
  %shl = shl i32 %and3, 8
  %or4 = or i32 %or, %shl
  %3 = load i32, ptr %__bsx.addr, align 4, !tbaa !4
  %and5 = and i32 %3, 255
  %shl6 = shl i32 %and5, 24
  %or7 = or i32 %or4, %shl6
  ret i32 %or7
}

; Function Attrs: nounwind uwtable
define float @aws_htonf32(float noundef %x) #0 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %f_storage = alloca ptr, align 8
  %ret_value = alloca float, align 4
  %ret_storage = alloca ptr, align 8
  store float %x, ptr %x.addr, align 4, !tbaa !15
  %call = call i32 @aws_is_big_endian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load float, ptr %x.addr, align 4, !tbaa !15
  store float %0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_storage) #10
  store ptr %x.addr, ptr %f_storage, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_storage) #10
  store ptr %ret_value, ptr %ret_storage, align 8, !tbaa !8
  %1 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 3
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %3 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  store i8 %2, ptr %arrayidx1, align 1, !tbaa !12
  %4 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx2, align 1, !tbaa !12
  %6 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %5, ptr %arrayidx3, align 1, !tbaa !12
  %7 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %9 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %8, ptr %arrayidx5, align 1, !tbaa !12
  %10 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx6, align 1, !tbaa !12
  %12 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 3
  store i8 %11, ptr %arrayidx7, align 1, !tbaa !12
  %13 = load float, ptr %ret_value, align 4, !tbaa !15
  store float %13, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_storage) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_storage) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load float, ptr %retval, align 4
  ret float %14
}

; Function Attrs: nounwind uwtable
define double @aws_htonf64(double noundef %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %f_storage = alloca ptr, align 8
  %ret_value = alloca double, align 8
  %ret_storage = alloca ptr, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !17
  %call = call i32 @aws_is_big_endian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load double, ptr %x.addr, align 8, !tbaa !17
  store double %0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_storage) #10
  store ptr %x.addr, ptr %f_storage, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_value) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_storage) #10
  store ptr %ret_value, ptr %ret_storage, align 8, !tbaa !8
  %1 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 7
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %3 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  store i8 %2, ptr %arrayidx1, align 1, !tbaa !12
  %4 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 6
  %5 = load i8, ptr %arrayidx2, align 1, !tbaa !12
  %6 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %5, ptr %arrayidx3, align 1, !tbaa !12
  %7 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 5
  %8 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %9 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %8, ptr %arrayidx5, align 1, !tbaa !12
  %10 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 4
  %11 = load i8, ptr %arrayidx6, align 1, !tbaa !12
  %12 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 3
  store i8 %11, ptr %arrayidx7, align 1, !tbaa !12
  %13 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 3
  %14 = load i8, ptr %arrayidx8, align 1, !tbaa !12
  %15 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx9 = getelementptr inbounds i8, ptr %15, i64 4
  store i8 %14, ptr %arrayidx9, align 1, !tbaa !12
  %16 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx10 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx10, align 1, !tbaa !12
  %18 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx11 = getelementptr inbounds i8, ptr %18, i64 5
  store i8 %17, ptr %arrayidx11, align 1, !tbaa !12
  %19 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i8, ptr %arrayidx12, align 1, !tbaa !12
  %21 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx13 = getelementptr inbounds i8, ptr %21, i64 6
  store i8 %20, ptr %arrayidx13, align 1, !tbaa !12
  %22 = load ptr, ptr %f_storage, align 8, !tbaa !8
  %arrayidx14 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx14, align 1, !tbaa !12
  %24 = load ptr, ptr %ret_storage, align 8, !tbaa !8
  %arrayidx15 = getelementptr inbounds i8, ptr %24, i64 7
  store i8 %23, ptr %arrayidx15, align 1, !tbaa !12
  %25 = load double, ptr %ret_value, align 8, !tbaa !17
  store double %25, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_storage) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_value) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_storage) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load double, ptr %retval, align 8
  ret double %26
}

; Function Attrs: nounwind uwtable
define i32 @aws_ntoh32(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !4
  %0 = load i32, ptr %x.addr, align 4, !tbaa !4
  %call = call i32 @__bswap_32(i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define float @aws_ntohf32(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4, !tbaa !15
  %0 = load float, ptr %x.addr, align 4, !tbaa !15
  %call = call float @aws_htonf32(float noundef %0)
  ret float %call
}

; Function Attrs: nounwind uwtable
define double @aws_ntohf64(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !17
  %0 = load double, ptr %x.addr, align 8, !tbaa !17
  %call = call double @aws_htonf64(double noundef %0)
  ret double %call
}

; Function Attrs: nounwind uwtable
define zeroext i16 @aws_hton16(i16 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2, !tbaa !13
  %0 = load i16, ptr %x.addr, align 2, !tbaa !13
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %0)
  ret i16 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #7 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, ptr %__bsx.addr, align 2, !tbaa !13
  %0 = load i16, ptr %__bsx.addr, align 2, !tbaa !13
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %1 = load i16, ptr %__bsx.addr, align 2, !tbaa !13
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 255
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define zeroext i16 @aws_ntoh16(i16 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2, !tbaa !13
  %0 = load i16, ptr %x.addr, align 2, !tbaa !13
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %0)
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define i64 @aws_timestamp_convert_u64(i64 noundef %ticks, i64 noundef %old_frequency, i64 noundef %new_frequency, ptr noundef %remainder) #0 {
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
  store i64 %ticks, ptr %ticks.addr, align 8, !tbaa !10
  store i64 %old_frequency, ptr %old_frequency.addr, align 8, !tbaa !10
  store i64 %new_frequency, ptr %new_frequency.addr, align 8, !tbaa !10
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %old_frequency.addr, align 8, !tbaa !10
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, ptr %new_frequency.addr, align 8, !tbaa !10
  %cmp1 = icmp ugt i64 %1, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %do.body
  call void @aws_fatal_assert(ptr noundef @.str.15, ptr noundef @.str.16, i32 noundef 24) #11
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %remainder.addr, align 8, !tbaa !8
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %do.end
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !8
  store i64 0, ptr %3, align 8, !tbaa !10
  %4 = load i64, ptr %new_frequency.addr, align 8, !tbaa !10
  %5 = load i64, ptr %old_frequency.addr, align 8, !tbaa !10
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_remainder) #10
  %6 = load i64, ptr %old_frequency.addr, align 8, !tbaa !10
  %7 = load i64, ptr %new_frequency.addr, align 8, !tbaa !10
  %rem = urem i64 %6, %7
  store i64 %rem, ptr %frequency_remainder, align 8, !tbaa !10
  %8 = load i64, ptr %frequency_remainder, align 8, !tbaa !10
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_ratio) #10
  %9 = load i64, ptr %old_frequency.addr, align 8, !tbaa !10
  %10 = load i64, ptr %new_frequency.addr, align 8, !tbaa !10
  %div = udiv i64 %9, %10
  store i64 %div, ptr %frequency_ratio, align 8, !tbaa !10
  %11 = load i64, ptr %ticks.addr, align 8, !tbaa !10
  %12 = load i64, ptr %frequency_ratio, align 8, !tbaa !10
  %rem8 = urem i64 %11, %12
  %13 = load ptr, ptr %remainder.addr, align 8, !tbaa !8
  store i64 %rem8, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_ratio) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_remainder) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then3
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_seconds_elapsed) #10
  %14 = load i64, ptr %ticks.addr, align 8, !tbaa !10
  %15 = load i64, ptr %old_frequency.addr, align 8, !tbaa !10
  %div12 = udiv i64 %14, %15
  store i64 %div12, ptr %old_seconds_elapsed, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_remainder) #10
  %16 = load i64, ptr %ticks.addr, align 8, !tbaa !10
  %17 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !10
  %18 = load i64, ptr %old_frequency.addr, align 8, !tbaa !10
  %mul = mul i64 %17, %18
  %sub = sub i64 %16, %mul
  store i64 %sub, ptr %old_remainder, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_whole_part) #10
  %19 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !10
  %20 = load i64, ptr %new_frequency.addr, align 8, !tbaa !10
  %call = call i64 @aws_mul_u64_saturating(i64 noundef %19, i64 noundef %20)
  store i64 %call, ptr %new_ticks_whole_part, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_remainder_part) #10
  %21 = load i64, ptr %old_remainder, align 8, !tbaa !10
  %22 = load i64, ptr %new_frequency.addr, align 8, !tbaa !10
  %call13 = call i64 @aws_mul_u64_saturating(i64 noundef %21, i64 noundef %22)
  %23 = load i64, ptr %old_frequency.addr, align 8, !tbaa !10
  %div14 = udiv i64 %call13, %23
  store i64 %div14, ptr %new_ticks_remainder_part, align 8, !tbaa !10
  %24 = load i64, ptr %new_ticks_whole_part, align 8, !tbaa !10
  %25 = load i64, ptr %new_ticks_remainder_part, align 8, !tbaa !10
  %call15 = call i64 @aws_add_u64_saturating(i64 noundef %24, i64 noundef %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_remainder_part) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_whole_part) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_remainder) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_seconds_elapsed) #10
  ret i64 %call15
}

; Function Attrs: nounwind uwtable
define i64 @aws_timestamp_convert(i64 noundef %timestamp, i32 noundef %convert_from, i32 noundef %convert_to, ptr noundef %remainder) #0 {
entry:
  %timestamp.addr = alloca i64, align 8
  %convert_from.addr = alloca i32, align 4
  %convert_to.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %timestamp, ptr %timestamp.addr, align 8, !tbaa !10
  store i32 %convert_from, ptr %convert_from.addr, align 4, !tbaa !12
  store i32 %convert_to, ptr %convert_to.addr, align 4, !tbaa !12
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !8
  %0 = load i64, ptr %timestamp.addr, align 8, !tbaa !10
  %1 = load i32, ptr %convert_from.addr, align 4, !tbaa !12
  %conv = zext i32 %1 to i64
  %2 = load i32, ptr %convert_to.addr, align 4, !tbaa !12
  %conv1 = zext i32 %2 to i64
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !8
  %call = call i64 @aws_timestamp_convert_u64(i64 noundef %0, i64 noundef %conv, i64 noundef %conv1, ptr noundef %3)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define void @aws_write_u64(i64 noundef %value, ptr noundef %buffer) #0 {
entry:
  %value.addr = alloca i64, align 8
  %buffer.addr = alloca ptr, align 8
  store i64 %value, ptr %value.addr, align 8, !tbaa !10
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  %0 = load i64, ptr %value.addr, align 8, !tbaa !10
  %call = call i64 @aws_hton64(i64 noundef %0)
  store i64 %call, ptr %value.addr, align 8, !tbaa !10
  %1 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 8 %value.addr, i64 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @aws_read_u64(ptr noundef %buffer) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %value = alloca i64, align 8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #10
  store i64 0, ptr %value, align 8, !tbaa !10
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 1 %0, i64 8, i1 false)
  %1 = load i64, ptr %value, align 8, !tbaa !10
  %call = call i64 @aws_ntoh64(i64 noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #10
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define void @aws_write_u32(i32 noundef %value, ptr noundef %buffer) #0 {
entry:
  %value.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  store i32 %value, ptr %value.addr, align 4, !tbaa !4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  %0 = load i32, ptr %value.addr, align 4, !tbaa !4
  %call = call i32 @aws_hton32(i32 noundef %0)
  store i32 %call, ptr %value.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %value.addr, i64 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_read_u32(ptr noundef %buffer) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %value = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #10
  store i32 0, ptr %value, align 4, !tbaa !4
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %value, ptr align 1 %0, i64 4, i1 false)
  %1 = load i32, ptr %value, align 4, !tbaa !4
  %call = call i32 @aws_ntoh32(i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #10
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @aws_write_u24(i32 noundef %value, ptr noundef %buffer) #0 {
entry:
  %value.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  store i32 %value, ptr %value.addr, align 4, !tbaa !4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  %0 = load i32, ptr %value.addr, align 4, !tbaa !4
  %call = call i32 @aws_hton32(i32 noundef %0)
  store i32 %call, ptr %value.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %value.addr, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %add.ptr, i64 3, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aws_read_u24(ptr noundef %buffer) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %value = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #10
  store i32 0, ptr %value, align 4, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %value, i64 1
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %0, i64 3, i1 false)
  %1 = load i32, ptr %value, align 4, !tbaa !4
  %call = call i32 @aws_ntoh32(i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #10
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @aws_write_u16(i16 noundef zeroext %value, ptr noundef %buffer) #0 {
entry:
  %value.addr = alloca i16, align 2
  %buffer.addr = alloca ptr, align 8
  store i16 %value, ptr %value.addr, align 2, !tbaa !13
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  %0 = load i16, ptr %value.addr, align 2, !tbaa !13
  %call = call zeroext i16 @aws_hton16(i16 noundef zeroext %0)
  store i16 %call, ptr %value.addr, align 2, !tbaa !13
  %1 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %value.addr, i64 2, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i16 @aws_read_u16(ptr noundef %buffer) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %value = alloca i16, align 2
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 2, ptr %value) #10
  store i16 0, ptr %value, align 2, !tbaa !13
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %value, ptr align 1 %0, i64 2, i1 false)
  %1 = load i16, ptr %value, align 2, !tbaa !13
  %call = call zeroext i16 @aws_ntoh16(i16 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(i64 2, ptr %value) #10
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_text_detect_encoding(ptr noundef %bytes, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %bytes.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bytes, ptr %bytes.addr, align 8, !tbaa !8
  store i64 %size, ptr %size.addr, align 8, !tbaa !10
  %0 = load i64, ptr %size.addr, align 8, !tbaa !10
  %cmp = icmp uge i64 %0, 3
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bytes.addr, align 8, !tbaa !8
  %2 = load ptr, ptr @aws_text_detect_encoding.UTF_8_BOM, align 8, !tbaa !8
  %call = call i32 @memcmp(ptr noundef %1, ptr noundef %2, i64 noundef 3) #14
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %3 = load i64, ptr %size.addr, align 8, !tbaa !10
  %cmp4 = icmp uge i64 %3, 4
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %bytes.addr, align 8, !tbaa !8
  %5 = load ptr, ptr @aws_text_detect_encoding.UTF_32_LE_BOM, align 8, !tbaa !8
  %call6 = call i32 @memcmp(ptr noundef %4, ptr noundef %5, i64 noundef 4) #14
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  store i32 3, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then5
  %6 = load ptr, ptr %bytes.addr, align 8, !tbaa !8
  %7 = load ptr, ptr @aws_text_detect_encoding.UTF_32_BE_BOM, align 8, !tbaa !8
  %call10 = call i32 @memcmp(ptr noundef %6, ptr noundef %7, i64 noundef 4) #14
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 3, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end3
  %8 = load i64, ptr %size.addr, align 8, !tbaa !10
  %cmp15 = icmp uge i64 %8, 2
  br i1 %cmp15, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.end14
  %9 = load ptr, ptr %bytes.addr, align 8, !tbaa !8
  %10 = load ptr, ptr @aws_text_detect_encoding.UTF_16_LE_BOM, align 8, !tbaa !8
  %call17 = call i32 @memcmp(ptr noundef %9, ptr noundef %10, i64 noundef 2) #14
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  store i32 2, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then16
  %11 = load ptr, ptr %bytes.addr, align 8, !tbaa !8
  %12 = load ptr, ptr @aws_text_detect_encoding.UTF_16_BE_BOM, align 8, !tbaa !8
  %call21 = call i32 @memcmp(ptr noundef %11, ptr noundef %12, i64 noundef 2) #14
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 2, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #10
  store i64 0, ptr %idx, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %13 = load i64, ptr %idx, align 8, !tbaa !10
  %14 = load i64, ptr %size.addr, align 8, !tbaa !10
  %cmp26 = icmp ult i64 %13, %14
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %bytes.addr, align 8, !tbaa !8
  %16 = load i64, ptr %idx, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 %16
  %17 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %17 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %18 = load i64, ptr %idx, align 8, !tbaa !10
  %inc = add i64 %18, 1
  store i64 %inc, ptr %idx, align 8, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #10
  br label %return

return:                                           ; preds = %cleanup, %if.then23, %if.then19, %if.then12, %if.then8, %if.then2
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_text_is_utf8(ptr noundef %bytes, i64 noundef %size) #0 {
entry:
  %bytes.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %encoding = alloca i32, align 4
  store ptr %bytes, ptr %bytes.addr, align 8, !tbaa !8
  store i64 %size, ptr %size.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %encoding) #10
  %0 = load ptr, ptr %bytes.addr, align 8, !tbaa !8
  %1 = load i64, ptr %size.addr, align 8, !tbaa !10
  %call = call i32 @aws_text_detect_encoding(ptr noundef %0, i64 noundef %1)
  store i32 %call, ptr %encoding, align 4, !tbaa !12
  %2 = load i32, ptr %encoding, align 4, !tbaa !12
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32, ptr %encoding, align 4, !tbaa !12
  %cmp1 = icmp eq i32 %3, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %encoding) #10
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_node_reset(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_linked_list_empty(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !33
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %2, i32 0, i32 1
  %cmp = icmp eq ptr %1, %tail
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_linked_list_is_valid(ptr noundef %list) #0 {
entry:
  %retval = alloca i1, align 1
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %1, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %2 = load ptr, ptr %next, align 8, !tbaa !33
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head3 = getelementptr inbounds %struct.aws_linked_list, ptr %3, i32 0, i32 0
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %head3, i32 0, i32 1
  %4 = load ptr, ptr %prev, align 8, !tbaa !36
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %5, i32 0, i32 1
  %prev5 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail, i32 0, i32 1
  %6 = load ptr, ptr %prev5, align 8, !tbaa !37
  %tobool6 = icmp ne ptr %6, null
  br i1 %tobool6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %7 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail8 = getelementptr inbounds %struct.aws_linked_list, ptr %7, i32 0, i32 1
  %next9 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail8, i32 0, i32 0
  %8 = load ptr, ptr %next9, align 8, !tbaa !38
  %cmp10 = icmp eq ptr %8, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true7
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, ptr %retval, align 1
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_linked_list_node_next_is_valid(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %next, align 8, !tbaa !39
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %next2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next2, align 8, !tbaa !39
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev, align 8, !tbaa !40
  %6 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_linked_list_node_prev_is_valid(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %prev, align 8, !tbaa !40
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %prev2, align 8, !tbaa !40
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %next, align 8, !tbaa !39
  %6 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_linked_list_is_valid_deep(ptr noundef %list) #0 {
entry:
  %retval = alloca i1, align 1
  %list.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %head_reaches_tail = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #10
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %1, i32 0, i32 0
  store ptr %head, ptr %temp, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %head_reaches_tail) #10
  store i8 0, ptr %head_reaches_tail, align 1, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %2 = load ptr, ptr %temp, align 8, !tbaa !8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %temp, align 8, !tbaa !8
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %4, i32 0, i32 1
  %cmp = icmp eq ptr %3, %tail
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %while.body
  store i8 1, ptr %head_reaches_tail, align 1, !tbaa !25
  br label %while.end

if.else:                                          ; preds = %while.body
  %5 = load ptr, ptr %temp, align 8, !tbaa !8
  %call = call zeroext i1 @aws_linked_list_node_next_is_valid(ptr noundef %5)
  br i1 %call, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.else
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end4
  %6 = load ptr, ptr %temp, align 8, !tbaa !8
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next, align 8, !tbaa !39
  store ptr %7, ptr %temp, align 8, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %if.then2, %while.cond
  %8 = load i8, ptr %head_reaches_tail, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool6 = trunc i8 %8 to i1
  store i1 %tobool6, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr %head_reaches_tail) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #10
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %9 = load i1, ptr %retval, align 1
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_init(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %1, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  store ptr %tail, ptr %next, align 8, !tbaa !33
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head1 = getelementptr inbounds %struct.aws_linked_list, ptr %2, i32 0, i32 0
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %head1, i32 0, i32 1
  store ptr null, ptr %prev, align 8, !tbaa !36
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head2 = getelementptr inbounds %struct.aws_linked_list, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail3 = getelementptr inbounds %struct.aws_linked_list, ptr %4, i32 0, i32 1
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail3, i32 0, i32 1
  store ptr %head2, ptr %prev4, align 8, !tbaa !37
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail5 = getelementptr inbounds %struct.aws_linked_list, ptr %5, i32 0, i32 1
  %next6 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail5, i32 0, i32 0
  store ptr null, ptr %next6, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_begin(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !33
  store ptr %1, ptr %rval, align 8, !tbaa !8
  %2 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_end(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 1
  store ptr %tail, ptr %rval, align 8, !tbaa !8
  %1 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_rbegin(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 1
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail, i32 0, i32 1
  %1 = load ptr, ptr %prev, align 8, !tbaa !37
  store ptr %1, ptr %rval, align 8, !tbaa !8
  %2 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_rend(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  store ptr %head, ptr %rval, align 8, !tbaa !8
  %1 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_next(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !39
  store ptr %1, ptr %rval, align 8, !tbaa !8
  %2 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_prev(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %prev, align 8, !tbaa !40
  store ptr %1, ptr %rval, align 8, !tbaa !8
  %2 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_insert_after(ptr noundef %after, ptr noundef %to_add) #0 {
entry:
  %after.addr = alloca ptr, align 8
  %to_add.addr = alloca ptr, align 8
  store ptr %after, ptr %after.addr, align 8, !tbaa !8
  store ptr %to_add, ptr %to_add.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %after.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %1, i32 0, i32 1
  store ptr %0, ptr %prev, align 8, !tbaa !40
  %2 = load ptr, ptr %after.addr, align 8, !tbaa !8
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next, align 8, !tbaa !39
  %4 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %next1 = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 0
  store ptr %3, ptr %next1, align 8, !tbaa !39
  %5 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %6 = load ptr, ptr %after.addr, align 8, !tbaa !8
  %next2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next2, align 8, !tbaa !39
  %prev3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %7, i32 0, i32 1
  store ptr %5, ptr %prev3, align 8, !tbaa !40
  %8 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %after.addr, align 8, !tbaa !8
  %next4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %9, i32 0, i32 0
  store ptr %8, ptr %next4, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_swap_nodes(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %tmp = alloca %struct.aws_linked_list_node, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store ptr %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #10
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %2, i64 16, i1 false), !tbaa.struct !41
  %3 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev, align 8, !tbaa !40
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %5, i32 0, i32 0
  store ptr %3, ptr %next, align 8, !tbaa !39
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %next1 = getelementptr inbounds %struct.aws_linked_list_node, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next1, align 8, !tbaa !39
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %8, i32 0, i32 1
  store ptr %6, ptr %prev2, align 8, !tbaa !40
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %prev3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tmp, i32 0, i32 1
  %10 = load ptr, ptr %prev3, align 8, !tbaa !40
  %next4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %10, i32 0, i32 0
  store ptr %9, ptr %next4, align 8, !tbaa !39
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %next5 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tmp, i32 0, i32 0
  %12 = load ptr, ptr %next5, align 8, !tbaa !39
  %prev6 = getelementptr inbounds %struct.aws_linked_list_node, ptr %12, i32 0, i32 1
  store ptr %11, ptr %prev6, align 8, !tbaa !40
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %13, i64 16, i1 false), !tbaa.struct !41
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %b.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %15, i64 16, i1 false), !tbaa.struct !41
  %16 = load ptr, ptr %b.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !41
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_insert_before(ptr noundef %before, ptr noundef %to_add) #0 {
entry:
  %before.addr = alloca ptr, align 8
  %to_add.addr = alloca ptr, align 8
  store ptr %before, ptr %before.addr, align 8, !tbaa !8
  store ptr %to_add, ptr %to_add.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %before.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %1, i32 0, i32 0
  store ptr %0, ptr %next, align 8, !tbaa !39
  %2 = load ptr, ptr %before.addr, align 8, !tbaa !8
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8, !tbaa !40
  %4 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %prev1 = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %prev1, align 8, !tbaa !40
  %5 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %6 = load ptr, ptr %before.addr, align 8, !tbaa !8
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %prev2, align 8, !tbaa !40
  %next3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %7, i32 0, i32 0
  store ptr %5, ptr %next3, align 8, !tbaa !39
  %8 = load ptr, ptr %to_add.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %before.addr, align 8, !tbaa !8
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %9, i32 0, i32 1
  store ptr %8, ptr %prev4, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_remove(ptr noundef %node) #0 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !39
  %2 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8, !tbaa !40
  %next1 = getelementptr inbounds %struct.aws_linked_list_node, ptr %3, i32 0, i32 0
  store ptr %1, ptr %next1, align 8, !tbaa !39
  %4 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev2, align 8, !tbaa !40
  %6 = load ptr, ptr %node.addr, align 8, !tbaa !8
  %next3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next3, align 8, !tbaa !39
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %7, i32 0, i32 1
  store ptr %5, ptr %prev4, align 8, !tbaa !40
  %8 = load ptr, ptr %node.addr, align 8, !tbaa !8
  call void @aws_linked_list_node_reset(ptr noundef %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_push_back(ptr noundef %list, ptr noundef %node) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %node.addr, align 8, !tbaa !8
  call void @aws_linked_list_insert_before(ptr noundef %tail, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_back(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 1
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail, i32 0, i32 1
  %1 = load ptr, ptr %prev, align 8, !tbaa !37
  store ptr %1, ptr %rval, align 8, !tbaa !8
  %2 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_pop_back(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %back = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %back) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call ptr @aws_linked_list_back(ptr noundef %0)
  store ptr %call, ptr %back, align 8, !tbaa !8
  %1 = load ptr, ptr %back, align 8, !tbaa !8
  call void @aws_linked_list_remove(ptr noundef %1)
  %2 = load ptr, ptr %back, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %back) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_push_front(ptr noundef %list, ptr noundef %node) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  store ptr %node, ptr %node.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !33
  %2 = load ptr, ptr %node.addr, align 8, !tbaa !8
  call void @aws_linked_list_insert_before(ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_front(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !33
  store ptr %1, ptr %rval, align 8, !tbaa !8
  %2 = load ptr, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define ptr @aws_linked_list_pop_front(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %front = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %front) #10
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !8
  %call = call ptr @aws_linked_list_front(ptr noundef %0)
  store ptr %call, ptr %front, align 8, !tbaa !8
  %1 = load ptr, ptr %front, align 8, !tbaa !8
  call void @aws_linked_list_remove(ptr noundef %1)
  %2 = load ptr, ptr %front, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %front) #10
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_swap_contents(ptr noalias noundef %a, ptr noalias noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a_first = alloca ptr, align 8
  %a_last = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store ptr %b, ptr %b.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_first) #10
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !33
  store ptr %1, ptr %a_first, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_last) #10
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %2, i32 0, i32 1
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8, !tbaa !37
  store ptr %3, ptr %a_last, align 8, !tbaa !8
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %call = call zeroext i1 @aws_linked_list_empty(ptr noundef %4)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !8
  call void @aws_linked_list_init(ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %head1 = getelementptr inbounds %struct.aws_linked_list, ptr %6, i32 0, i32 0
  %next2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head1, i32 0, i32 0
  %7 = load ptr, ptr %next2, align 8, !tbaa !33
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %head3 = getelementptr inbounds %struct.aws_linked_list, ptr %8, i32 0, i32 0
  %next4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head3, i32 0, i32 0
  store ptr %7, ptr %next4, align 8, !tbaa !33
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %head5 = getelementptr inbounds %struct.aws_linked_list, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %head6 = getelementptr inbounds %struct.aws_linked_list, ptr %10, i32 0, i32 0
  %next7 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head6, i32 0, i32 0
  %11 = load ptr, ptr %next7, align 8, !tbaa !33
  %prev8 = getelementptr inbounds %struct.aws_linked_list_node, ptr %11, i32 0, i32 1
  store ptr %head5, ptr %prev8, align 8, !tbaa !40
  %12 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %tail9 = getelementptr inbounds %struct.aws_linked_list, ptr %12, i32 0, i32 1
  %prev10 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail9, i32 0, i32 1
  %13 = load ptr, ptr %prev10, align 8, !tbaa !37
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %tail11 = getelementptr inbounds %struct.aws_linked_list, ptr %14, i32 0, i32 1
  %prev12 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail11, i32 0, i32 1
  store ptr %13, ptr %prev12, align 8, !tbaa !37
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %tail13 = getelementptr inbounds %struct.aws_linked_list, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %tail14 = getelementptr inbounds %struct.aws_linked_list, ptr %16, i32 0, i32 1
  %prev15 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail14, i32 0, i32 1
  %17 = load ptr, ptr %prev15, align 8, !tbaa !37
  %next16 = getelementptr inbounds %struct.aws_linked_list_node, ptr %17, i32 0, i32 0
  store ptr %tail13, ptr %next16, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %a_first, align 8, !tbaa !8
  %19 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %tail17 = getelementptr inbounds %struct.aws_linked_list, ptr %19, i32 0, i32 1
  %cmp = icmp eq ptr %18, %tail17
  br i1 %cmp, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !8
  call void @aws_linked_list_init(ptr noundef %20)
  br label %if.end32

if.else19:                                        ; preds = %if.end
  %21 = load ptr, ptr %a_first, align 8, !tbaa !8
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %head20 = getelementptr inbounds %struct.aws_linked_list, ptr %22, i32 0, i32 0
  %next21 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head20, i32 0, i32 0
  store ptr %21, ptr %next21, align 8, !tbaa !33
  %23 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %head22 = getelementptr inbounds %struct.aws_linked_list, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %head23 = getelementptr inbounds %struct.aws_linked_list, ptr %24, i32 0, i32 0
  %next24 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head23, i32 0, i32 0
  %25 = load ptr, ptr %next24, align 8, !tbaa !33
  %prev25 = getelementptr inbounds %struct.aws_linked_list_node, ptr %25, i32 0, i32 1
  store ptr %head22, ptr %prev25, align 8, !tbaa !40
  %26 = load ptr, ptr %a_last, align 8, !tbaa !8
  %27 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %tail26 = getelementptr inbounds %struct.aws_linked_list, ptr %27, i32 0, i32 1
  %prev27 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail26, i32 0, i32 1
  store ptr %26, ptr %prev27, align 8, !tbaa !37
  %28 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %tail28 = getelementptr inbounds %struct.aws_linked_list, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %tail29 = getelementptr inbounds %struct.aws_linked_list, ptr %29, i32 0, i32 1
  %prev30 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail29, i32 0, i32 1
  %30 = load ptr, ptr %prev30, align 8, !tbaa !37
  %next31 = getelementptr inbounds %struct.aws_linked_list_node, ptr %30, i32 0, i32 0
  store ptr %tail28, ptr %next31, align 8, !tbaa !39
  br label %if.end32

if.end32:                                         ; preds = %if.else19, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_last) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_first) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_move_all_back(ptr noalias noundef %dst, ptr noalias noundef %src) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst_back = alloca ptr, align 8
  %src_front = alloca ptr, align 8
  %src_back = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !8
  store ptr %src, ptr %src.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %call = call zeroext i1 @aws_linked_list_empty(ptr noundef %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_back) #10
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %1, i32 0, i32 1
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail, i32 0, i32 1
  %2 = load ptr, ptr %prev, align 8, !tbaa !37
  store ptr %2, ptr %dst_back, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_front) #10
  %3 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %3, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %4 = load ptr, ptr %next, align 8, !tbaa !33
  store ptr %4, ptr %src_front, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_back) #10
  %5 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %tail1 = getelementptr inbounds %struct.aws_linked_list, ptr %5, i32 0, i32 1
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail1, i32 0, i32 1
  %6 = load ptr, ptr %prev2, align 8, !tbaa !37
  store ptr %6, ptr %src_back, align 8, !tbaa !8
  %7 = load ptr, ptr %src_front, align 8, !tbaa !8
  %8 = load ptr, ptr %dst_back, align 8, !tbaa !8
  %next3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %8, i32 0, i32 0
  store ptr %7, ptr %next3, align 8, !tbaa !39
  %9 = load ptr, ptr %dst_back, align 8, !tbaa !8
  %10 = load ptr, ptr %src_front, align 8, !tbaa !8
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %10, i32 0, i32 1
  store ptr %9, ptr %prev4, align 8, !tbaa !40
  %11 = load ptr, ptr %src_back, align 8, !tbaa !8
  %12 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %tail5 = getelementptr inbounds %struct.aws_linked_list, ptr %12, i32 0, i32 1
  %prev6 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail5, i32 0, i32 1
  store ptr %11, ptr %prev6, align 8, !tbaa !37
  %13 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %tail7 = getelementptr inbounds %struct.aws_linked_list, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %src_back, align 8, !tbaa !8
  %next8 = getelementptr inbounds %struct.aws_linked_list_node, ptr %14, i32 0, i32 0
  store ptr %tail7, ptr %next8, align 8, !tbaa !39
  %15 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %tail9 = getelementptr inbounds %struct.aws_linked_list, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %head10 = getelementptr inbounds %struct.aws_linked_list, ptr %16, i32 0, i32 0
  %next11 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head10, i32 0, i32 0
  store ptr %tail9, ptr %next11, align 8, !tbaa !33
  %17 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %head12 = getelementptr inbounds %struct.aws_linked_list, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %tail13 = getelementptr inbounds %struct.aws_linked_list, ptr %18, i32 0, i32 1
  %prev14 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail13, i32 0, i32 1
  store ptr %head12, ptr %prev14, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_back) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_front) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_back) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_linked_list_move_all_front(ptr noalias noundef %dst, ptr noalias noundef %src) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %dst_front = alloca ptr, align 8
  %src_front = alloca ptr, align 8
  %src_back = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !8
  store ptr %src, ptr %src.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %call = call zeroext i1 @aws_linked_list_empty(ptr noundef %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_front) #10
  %1 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %1, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %2 = load ptr, ptr %next, align 8, !tbaa !33
  store ptr %2, ptr %dst_front, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_front) #10
  %3 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %head1 = getelementptr inbounds %struct.aws_linked_list, ptr %3, i32 0, i32 0
  %next2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head1, i32 0, i32 0
  %4 = load ptr, ptr %next2, align 8, !tbaa !33
  store ptr %4, ptr %src_front, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_back) #10
  %5 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %5, i32 0, i32 1
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail, i32 0, i32 1
  %6 = load ptr, ptr %prev, align 8, !tbaa !37
  store ptr %6, ptr %src_back, align 8, !tbaa !8
  %7 = load ptr, ptr %src_front, align 8, !tbaa !8
  %8 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %head3 = getelementptr inbounds %struct.aws_linked_list, ptr %8, i32 0, i32 0
  %next4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head3, i32 0, i32 0
  store ptr %7, ptr %next4, align 8, !tbaa !33
  %9 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %head5 = getelementptr inbounds %struct.aws_linked_list, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %src_front, align 8, !tbaa !8
  %prev6 = getelementptr inbounds %struct.aws_linked_list_node, ptr %10, i32 0, i32 1
  store ptr %head5, ptr %prev6, align 8, !tbaa !40
  %11 = load ptr, ptr %dst_front, align 8, !tbaa !8
  %12 = load ptr, ptr %src_back, align 8, !tbaa !8
  %next7 = getelementptr inbounds %struct.aws_linked_list_node, ptr %12, i32 0, i32 0
  store ptr %11, ptr %next7, align 8, !tbaa !39
  %13 = load ptr, ptr %src_back, align 8, !tbaa !8
  %14 = load ptr, ptr %dst_front, align 8, !tbaa !8
  %prev8 = getelementptr inbounds %struct.aws_linked_list_node, ptr %14, i32 0, i32 1
  store ptr %13, ptr %prev8, align 8, !tbaa !40
  %15 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %tail9 = getelementptr inbounds %struct.aws_linked_list, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %head10 = getelementptr inbounds %struct.aws_linked_list, ptr %16, i32 0, i32 0
  %next11 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head10, i32 0, i32 0
  store ptr %tail9, ptr %next11, align 8, !tbaa !33
  %17 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %head12 = getelementptr inbounds %struct.aws_linked_list, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %tail13 = getelementptr inbounds %struct.aws_linked_list, ptr %18, i32 0, i32 1
  %prev14 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail13, i32 0, i32 1
  store ptr %head12, ptr %prev14, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_back) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_front) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_front) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_ring_buffer_check_atomic_ptr(ptr noundef %ring_buf, ptr noundef %atomic_ptr) #0 {
entry:
  %ring_buf.addr = alloca ptr, align 8
  %atomic_ptr.addr = alloca ptr, align 8
  store ptr %ring_buf, ptr %ring_buf.addr, align 8, !tbaa !8
  store ptr %atomic_ptr, ptr %atomic_ptr.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %atomic_ptr.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.rhs, label %land.end4

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %atomic_ptr.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %allocation = getelementptr inbounds %struct.aws_ring_buffer, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %allocation, align 8, !tbaa !42
  %cmp1 = icmp uge ptr %1, %3
  br i1 %cmp1, label %land.rhs2, label %land.end

land.rhs2:                                        ; preds = %land.rhs
  %4 = load ptr, ptr %atomic_ptr.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %allocation_end = getelementptr inbounds %struct.aws_ring_buffer, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %allocation_end, align 8, !tbaa !44
  %cmp3 = icmp ule ptr %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs2, %land.rhs
  %7 = phi i1 [ false, %land.rhs ], [ %cmp3, %land.rhs2 ]
  br label %land.end4

land.end4:                                        ; preds = %land.end, %entry
  %8 = phi i1 [ false, %entry ], [ %7, %land.end ]
  ret i1 %8
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_ring_buffer_is_empty(ptr noundef %ring_buf) #0 {
entry:
  %ring_buf.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %tail = alloca ptr, align 8
  store ptr %ring_buf, ptr %ring_buf.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #10
  %0 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %head1 = getelementptr inbounds %struct.aws_ring_buffer, ptr %0, i32 0, i32 2
  %call = call ptr @aws_atomic_load_ptr(ptr noundef %head1)
  store ptr %call, ptr %head, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #10
  %1 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %tail2 = getelementptr inbounds %struct.aws_ring_buffer, ptr %1, i32 0, i32 3
  %call3 = call ptr @aws_atomic_load_ptr(ptr noundef %tail2)
  store ptr %call3, ptr %tail, align 8, !tbaa !8
  %2 = load ptr, ptr %head, align 8, !tbaa !8
  %3 = load ptr, ptr %tail, align 8, !tbaa !8
  %cmp = icmp eq ptr %2, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #10
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_ring_buffer_is_valid(ptr noundef %ring_buf) #0 {
entry:
  %ring_buf.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %tail = alloca ptr, align 8
  %head_in_range = alloca i8, align 1
  %tail_in_range = alloca i8, align 1
  %valid_head_tail = alloca i8, align 1
  store ptr %ring_buf, ptr %ring_buf.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #10
  %0 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %head1 = getelementptr inbounds %struct.aws_ring_buffer, ptr %0, i32 0, i32 2
  %call = call ptr @aws_atomic_load_ptr(ptr noundef %head1)
  store ptr %call, ptr %head, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #10
  %1 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %tail2 = getelementptr inbounds %struct.aws_ring_buffer, ptr %1, i32 0, i32 3
  %call3 = call ptr @aws_atomic_load_ptr(ptr noundef %tail2)
  store ptr %call3, ptr %tail, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %head_in_range) #10
  %2 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %head, align 8, !tbaa !8
  %call4 = call zeroext i1 @aws_ring_buffer_check_atomic_ptr(ptr noundef %2, ptr noundef %3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, ptr %head_in_range, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %tail_in_range) #10
  %4 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %tail, align 8, !tbaa !8
  %call5 = call zeroext i1 @aws_ring_buffer_check_atomic_ptr(ptr noundef %4, ptr noundef %5)
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, ptr %tail_in_range, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %valid_head_tail) #10
  %6 = load ptr, ptr %head, align 8, !tbaa !8
  %7 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %allocation = getelementptr inbounds %struct.aws_ring_buffer, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %allocation, align 8, !tbaa !42
  %cmp = icmp ne ptr %6, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %9 = load ptr, ptr %tail, align 8, !tbaa !8
  %10 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %allocation7 = getelementptr inbounds %struct.aws_ring_buffer, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %allocation7, align 8, !tbaa !42
  %cmp8 = icmp eq ptr %9, %11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %12 = phi i1 [ true, %entry ], [ %cmp8, %lor.rhs ]
  %frombool9 = zext i1 %12 to i8
  store i8 %frombool9, ptr %valid_head_tail, align 1, !tbaa !25
  %13 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.end
  %14 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %allocation10 = getelementptr inbounds %struct.aws_ring_buffer, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %allocation10, align 8, !tbaa !42
  %cmp11 = icmp ne ptr %15, null
  br i1 %cmp11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %16 = load i8, ptr %head_in_range, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool13 = trunc i8 %16 to i1
  br i1 %tobool13, label %land.lhs.true14, label %land.end

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %17 = load i8, ptr %tail_in_range, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool15 = trunc i8 %17 to i1
  br i1 %tobool15, label %land.lhs.true16, label %land.end

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %18 = load i8, ptr %valid_head_tail, align 1, !tbaa !25, !range !27, !noundef !28
  %tobool17 = trunc i8 %18 to i1
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true16
  %19 = load ptr, ptr %ring_buf.addr, align 8, !tbaa !8
  %allocator = getelementptr inbounds %struct.aws_ring_buffer, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %allocator, align 8, !tbaa !45
  %cmp18 = icmp ne ptr %20, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true, %lor.end
  %21 = phi i1 [ false, %land.lhs.true16 ], [ false, %land.lhs.true14 ], [ false, %land.lhs.true12 ], [ false, %land.lhs.true ], [ false, %lor.end ], [ %cmp18, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 1, ptr %valid_head_tail) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %tail_in_range) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %head_in_range) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #10
  ret i1 %21
}

; Function Attrs: nounwind uwtable
define ptr @aws_string_bytes(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %bytes = getelementptr inbounds %struct.aws_string, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], ptr %bytes, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define ptr @aws_string_c_str(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %bytes = getelementptr inbounds %struct.aws_string, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], ptr %bytes, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_string_is_valid(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.aws_string, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %len, align 8, !tbaa !46
  %add = add i64 %2, 1
  %cmp = icmp eq i64 %add, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %bytes = getelementptr inbounds %struct.aws_string, ptr %3, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i8], ptr %bytes, i64 0, i64 0
  %tobool1 = icmp ne ptr %arrayidx, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %bytes2 = getelementptr inbounds %struct.aws_string, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %len3 = getelementptr inbounds %struct.aws_string, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %len3, align 8, !tbaa !46
  %arrayidx4 = getelementptr inbounds [1 x i8], ptr %bytes2, i64 0, i64 %6
  %7 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %entry
  %8 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ %cmp5, %land.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_c_string_is_valid(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !tbaa !8
  %tobool1 = icmp ne ptr %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_char_is_space(i8 noundef zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1, !tbaa !12
  %0 = load i8, ptr %c.addr, align 1, !tbaa !12
  %call = call zeroext i1 @aws_isspace(i8 noundef zeroext %0)
  ret i1 %call
}

declare zeroext i1 @aws_isspace(i8 noundef zeroext) #1

; Function Attrs: noreturn nounwind
declare void @abort() #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind memory(none) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !6, i64 0}
!19 = !{!20, !9, i64 32}
!20 = !{!"aws_array_list", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32}
!21 = !{!20, !11, i64 8}
!22 = !{!20, !11, i64 24}
!23 = !{!20, !9, i64 0}
!24 = !{!20, !11, i64 16}
!25 = !{!26, !26, i64 0}
!26 = !{!"_Bool", !6, i64 0}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{i64 0, i64 8, !8, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !8}
!30 = !{!31, !9, i64 0}
!31 = !{!"aws_atomic_var", !9, i64 0}
!32 = !{i64 631051}
!33 = !{!34, !9, i64 0}
!34 = !{!"aws_linked_list", !35, i64 0, !35, i64 16}
!35 = !{!"aws_linked_list_node", !9, i64 0, !9, i64 8}
!36 = !{!34, !9, i64 8}
!37 = !{!34, !9, i64 24}
!38 = !{!34, !9, i64 16}
!39 = !{!35, !9, i64 0}
!40 = !{!35, !9, i64 8}
!41 = !{i64 0, i64 8, !8, i64 8, i64 8, !8}
!42 = !{!43, !9, i64 8}
!43 = !{!"aws_ring_buffer", !9, i64 0, !9, i64 8, !31, i64 16, !31, i64 24, !9, i64 32}
!44 = !{!43, !9, i64 32}
!45 = !{!43, !9, i64 0}
!46 = !{!47, !11, i64 8}
!47 = !{!"aws_string", !9, i64 0, !11, i64 8, !6, i64 16}

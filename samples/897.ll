; ModuleID = 'samples/897.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/source/byte_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_byte_buf = type { i64, ptr, i64, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@s_tolower_table = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@s_hex_to_num_table = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@s_null_terminator_cursor = internal global %struct.aws_byte_cursor { i64 1, ptr @.str.4 }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1
@.str.2 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_init(ptr noundef %buf, ptr noundef %allocator, i64 noundef %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %capacity.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store i64 %capacity, ptr %capacity.addr, align 8, !tbaa !8
  %0 = load i64, ptr %capacity.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load i64, ptr %capacity.addr, align 8, !tbaa !8
  %call = call ptr @aws_mem_acquire(ptr noundef %1, i64 noundef %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call, %cond.false ]
  %3 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %3, i32 0, i32 1
  store ptr %cond, ptr %buffer, align 8, !tbaa !10
  %4 = load i64, ptr %capacity.addr, align 8, !tbaa !8
  %cmp1 = icmp ne i64 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %5 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.aws_byte_buf, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %buffer2, align 8, !tbaa !10
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 32, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end
  %8 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %8, i32 0, i32 0
  store i64 0, ptr %len, align 8, !tbaa !12
  %9 = load i64, ptr %capacity.addr, align 8, !tbaa !8
  %10 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity4 = getelementptr inbounds %struct.aws_byte_buf, ptr %10, i32 0, i32 2
  store i64 %9, ptr %capacity4, align 8, !tbaa !13
  %11 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %allocator5 = getelementptr inbounds %struct.aws_byte_buf, ptr %12, i32 0, i32 3
  store ptr %11, ptr %allocator5, align 8, !tbaa !14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_init_copy(ptr noundef %dest, ptr noundef %allocator, ptr noundef %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_buf_is_valid(ptr noundef %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call1 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %buffer, align 8, !tbaa !10
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end6, label %if.then2

if.then2:                                         ; preds = %do.end
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  %3 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 32, i1 false)
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %allocator5 = getelementptr inbounds %struct.aws_byte_buf, ptr %5, i32 0, i32 3
  store ptr %4, ptr %allocator5, align 8, !tbaa !14
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %do.end
  %6 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %src.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %7, i64 32, i1 false), !tbaa.struct !15
  %8 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %allocator7 = getelementptr inbounds %struct.aws_byte_buf, ptr %9, i32 0, i32 3
  store ptr %8, ptr %allocator7, align 8, !tbaa !14
  %10 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %capacity, align 8, !tbaa !13
  %call8 = call ptr @aws_mem_acquire(ptr noundef %10, i64 noundef %12)
  %13 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %buffer9 = getelementptr inbounds %struct.aws_byte_buf, ptr %13, i32 0, i32 1
  store ptr %call8, ptr %buffer9, align 8, !tbaa !10
  %14 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %buffer10 = getelementptr inbounds %struct.aws_byte_buf, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %buffer10, align 8, !tbaa !10
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %16 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 32, i1 false)
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end6
  %17 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %buffer15 = getelementptr inbounds %struct.aws_byte_buf, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %buffer15, align 8, !tbaa !10
  %19 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %buffer16 = getelementptr inbounds %struct.aws_byte_buf, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %buffer16, align 8, !tbaa !10
  %21 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %len, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %20, i64 %22, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %do.end13, %do.end4, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_is_valid(ptr noundef %buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.rhs, label %land.end17

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %capacity, align 8, !tbaa !13
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.rhs
  %3 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %len, align 8, !tbaa !12
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %land.lhs.true3, label %lor.rhs

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %buffer, align 8, !tbaa !10
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %lor.end16, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true3, %land.lhs.true, %land.rhs
  %7 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity5 = getelementptr inbounds %struct.aws_byte_buf, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %capacity5, align 8, !tbaa !13
  %cmp6 = icmp ugt i64 %8, 0
  br i1 %cmp6, label %land.lhs.true7, label %land.end

land.lhs.true7:                                   ; preds = %lor.rhs
  %9 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len8 = getelementptr inbounds %struct.aws_byte_buf, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %len8, align 8, !tbaa !12
  %11 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity9 = getelementptr inbounds %struct.aws_byte_buf, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %capacity9, align 8, !tbaa !13
  %cmp10 = icmp ule i64 %10, %12
  br i1 %cmp10, label %land.rhs11, label %land.end

land.rhs11:                                       ; preds = %land.lhs.true7
  %13 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity12 = getelementptr inbounds %struct.aws_byte_buf, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %capacity12, align 8, !tbaa !13
  %cmp13 = icmp eq i64 %14, 0
  br i1 %cmp13, label %lor.end, label %lor.rhs14

lor.rhs14:                                        ; preds = %land.rhs11
  %15 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer15 = getelementptr inbounds %struct.aws_byte_buf, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %buffer15, align 8, !tbaa !10
  %tobool = icmp ne ptr %16, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs14, %land.rhs11
  %17 = phi i1 [ true, %land.rhs11 ], [ %tobool, %lor.rhs14 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true7, %lor.rhs
  %18 = phi i1 [ false, %land.lhs.true7 ], [ false, %lor.rhs ], [ %17, %lor.end ]
  br label %lor.end16

lor.end16:                                        ; preds = %land.end, %land.lhs.true3
  %19 = phi i1 [ true, %land.lhs.true3 ], [ %18, %land.end ]
  br label %land.end17

land.end17:                                       ; preds = %lor.end16, %entry
  %20 = phi i1 [ false, %entry ], [ %19, %lor.end16 ]
  ret i1 %20
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #3 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !16
  %0 = load i32, ptr %err.addr, align 4, !tbaa !16
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_is_valid(ptr noundef %cursor) #0 {
entry:
  %cursor.addr = alloca ptr, align 8
  store ptr %cursor, ptr %cursor.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.rhs, label %land.end11

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %len, align 8, !tbaa !18
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %lor.end10, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %len2, align 8, !tbaa !18
  %cmp3 = icmp ugt i64 %4, 0
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  %5 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %ptr, align 8, !tbaa !20
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %land.rhs4, label %land.end

land.rhs4:                                        ; preds = %land.lhs.true
  %7 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len5 = getelementptr inbounds %struct.aws_byte_cursor, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %len5, align 8, !tbaa !18
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs7

lor.rhs7:                                         ; preds = %land.rhs4
  %9 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr8 = getelementptr inbounds %struct.aws_byte_cursor, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %ptr8, align 8, !tbaa !20
  %tobool9 = icmp ne ptr %10, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs7, %land.rhs4
  %11 = phi i1 [ true, %land.rhs4 ], [ %tobool9, %lor.rhs7 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %lor.rhs
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %11, %lor.end ]
  br label %lor.end10

lor.end10:                                        ; preds = %land.end, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %12, %land.end ]
  br label %land.end11

land.end11:                                       ; preds = %lor.end10, %entry
  %14 = phi i1 [ false, %entry ], [ %13, %lor.end10 ]
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define void @aws_byte_buf_reset(ptr noundef %buf, i1 noundef zeroext %zero_contents) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %zero_contents.addr = alloca i8, align 1
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %frombool = zext i1 %zero_contents to i8
  store i8 %frombool, ptr %zero_contents.addr, align 1, !tbaa !21
  %0 = load i8, ptr %zero_contents.addr, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  call void @aws_byte_buf_secure_zero(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  store i64 0, ptr %len, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_byte_buf_secure_zero(ptr noundef %buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 8, !tbaa !10
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer1 = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %buffer1, align 8, !tbaa !10
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %capacity, align 8, !tbaa !13
  call void @aws_secure_zero(ptr noundef %3, i64 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 0
  store i64 0, ptr %len, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_byte_buf_clean_up(ptr noundef %buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %allocator, align 8, !tbaa !14
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %buffer, align 8, !tbaa !10
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %allocator2, align 8, !tbaa !14
  %6 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer3 = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %buffer3, align 8, !tbaa !10
  call void @aws_mem_release(ptr noundef %5, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %allocator4 = getelementptr inbounds %struct.aws_byte_buf, ptr %8, i32 0, i32 3
  store ptr null, ptr %allocator4, align 8, !tbaa !14
  %9 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer5 = getelementptr inbounds %struct.aws_byte_buf, ptr %9, i32 0, i32 1
  store ptr null, ptr %buffer5, align 8, !tbaa !10
  %10 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %10, i32 0, i32 0
  store i64 0, ptr %len, align 8, !tbaa !12
  %11 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %11, i32 0, i32 2
  store i64 0, ptr %capacity, align 8, !tbaa !13
  ret void
}

declare void @aws_mem_release(ptr noundef, ptr noundef) #1

declare void @aws_secure_zero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @aws_byte_buf_clean_up_secure(ptr noundef %buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  call void @aws_byte_buf_secure_zero(ptr noundef %0)
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  call void @aws_byte_buf_clean_up(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_eq(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %rval = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rval) #11
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 8, !tbaa !10
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %buffer1 = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !10
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len2, align 8, !tbaa !12
  %call = call zeroext i1 @aws_array_eq(ptr noundef %1, i64 noundef %3, ptr noundef %5, i64 noundef %7)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rval, align 1, !tbaa !21
  %8 = load i8, ptr %rval, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %8 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rval) #11
  ret i1 %tobool
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_array_eq(ptr noundef %array_a, i64 noundef %len_a, ptr noundef %array_b, i64 noundef %len_b) #0 {
entry:
  %retval = alloca i1, align 1
  %array_a.addr = alloca ptr, align 8
  %len_a.addr = alloca i64, align 8
  %array_b.addr = alloca ptr, align 8
  %len_b.addr = alloca i64, align 8
  store ptr %array_a, ptr %array_a.addr, align 8, !tbaa !4
  store i64 %len_a, ptr %len_a.addr, align 8, !tbaa !8
  store ptr %array_b, ptr %array_b.addr, align 8, !tbaa !4
  store i64 %len_b, ptr %len_b.addr, align 8, !tbaa !8
  %0 = load i64, ptr %len_a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %len_b.addr, align 8, !tbaa !8
  %cmp = icmp ne i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %len_a.addr, align 8, !tbaa !8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %array_a.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %array_b.addr, align 8, !tbaa !4
  %5 = load i64, ptr %len_a.addr, align 8, !tbaa !8
  %call = call i32 @memcmp(ptr noundef %3, ptr noundef %4, i64 noundef %5) #12
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  store i1 %lnot, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i1, ptr %retval, align 1
  ret i1 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_eq_ignore_case(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %rval = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rval) #11
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 8, !tbaa !10
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %buffer1 = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !10
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len2, align 8, !tbaa !12
  %call = call zeroext i1 @aws_array_eq_ignore_case(ptr noundef %1, i64 noundef %3, ptr noundef %5, i64 noundef %7)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rval, align 1, !tbaa !21
  %8 = load i8, ptr %rval, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %8 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rval) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_array_eq_ignore_case(ptr noundef %array_a, i64 noundef %len_a, ptr noundef %array_b, i64 noundef %len_b) #0 {
entry:
  %retval = alloca i1, align 1
  %array_a.addr = alloca ptr, align 8
  %len_a.addr = alloca i64, align 8
  %array_b.addr = alloca ptr, align 8
  %len_b.addr = alloca i64, align 8
  %bytes_a = alloca ptr, align 8
  %bytes_b = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array_a, ptr %array_a.addr, align 8, !tbaa !4
  store i64 %len_a, ptr %len_a.addr, align 8, !tbaa !8
  store ptr %array_b, ptr %array_b.addr, align 8, !tbaa !4
  store i64 %len_b, ptr %len_b.addr, align 8, !tbaa !8
  %0 = load i64, ptr %len_a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %len_b.addr, align 8, !tbaa !8
  %cmp = icmp ne i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_a) #11
  %2 = load ptr, ptr %array_a.addr, align 8, !tbaa !4
  store ptr %2, ptr %bytes_a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_b) #11
  %3 = load ptr, ptr %array_b.addr, align 8, !tbaa !4
  store ptr %3, ptr %bytes_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !tbaa !8
  %5 = load i64, ptr %len_a.addr, align 8, !tbaa !8
  %cmp1 = icmp ult i64 %4, %5
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %bytes_a, align 8, !tbaa !4
  %7 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %idxprom = zext i8 %8 to i64
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr @s_tolower_table, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx2, align 1, !tbaa !25
  %conv = zext i8 %9 to i32
  %10 = load ptr, ptr %bytes_b, align 8, !tbaa !4
  %11 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i8, ptr %arrayidx3, align 1, !tbaa !25
  %idxprom4 = zext i8 %12 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @s_tolower_table, i64 0, i64 %idxprom4
  %13 = load i8, ptr %arrayidx5, align 1, !tbaa !25
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp ne i32 %conv, %conv6
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %14 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond

cleanup:                                          ; preds = %if.then9, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_b) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_a) #11
  br label %return

return:                                           ; preds = %cleanup11, %if.then
  %15 = load i1, ptr %retval, align 1
  ret i1 %15
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_eq_c_str(ptr noundef %buf, ptr noundef %c_str) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %c_str.addr = alloca ptr, align 8
  %rval = alloca i8, align 1
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rval) #11
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 8, !tbaa !10
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %4 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_array_eq_c_str(ptr noundef %1, i64 noundef %3, ptr noundef %4)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rval, align 1, !tbaa !21
  %5 = load i8, ptr %rval, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %5 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rval) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_array_eq_c_str(ptr noundef %array, i64 noundef %array_len, ptr noundef %c_str) #0 {
entry:
  %retval = alloca i1, align 1
  %array.addr = alloca ptr, align 8
  %array_len.addr = alloca i64, align 8
  %c_str.addr = alloca ptr, align 8
  %array_bytes = alloca ptr, align 8
  %str_bytes = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca i8, align 1
  store ptr %array, ptr %array.addr, align 8, !tbaa !4
  store i64 %array_len, ptr %array_len.addr, align 8, !tbaa !8
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %array_bytes) #11
  %0 = load ptr, ptr %array.addr, align 8, !tbaa !4
  store ptr %0, ptr %array_bytes, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %str_bytes) #11
  %1 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  store ptr %1, ptr %str_bytes, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !8
  %3 = load i64, ptr %array_len.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %s) #11
  %4 = load ptr, ptr %str_bytes, align 8, !tbaa !4
  %5 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !25
  store i8 %6, ptr %s, align 1, !tbaa !25
  %7 = load i8, ptr %s, align 1, !tbaa !25
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %array_bytes, align 8, !tbaa !4
  %9 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds i8, ptr %8, i64 %9
  %10 = load i8, ptr %arrayidx3, align 1, !tbaa !25
  %conv4 = zext i8 %10 to i32
  %11 = load i8, ptr %s, align 1, !tbaa !25
  %conv5 = zext i8 %11 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %s) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %12 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond

cleanup10:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup10
  %13 = load ptr, ptr %str_bytes, align 8, !tbaa !4
  %14 = load i64, ptr %array_len.addr, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds i8, ptr %13, i64 %14
  %15 = load i8, ptr %arrayidx12, align 1, !tbaa !25
  %conv13 = zext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  store i1 %cmp14, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %cleanup10
  call void @llvm.lifetime.end.p0(i64 8, ptr %str_bytes) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %array_bytes) #11
  %16 = load i1, ptr %retval, align 1
  ret i1 %16
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_eq_c_str_ignore_case(ptr noundef %buf, ptr noundef %c_str) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %c_str.addr = alloca ptr, align 8
  %rval = alloca i8, align 1
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rval) #11
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 8, !tbaa !10
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %4 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_array_eq_c_str_ignore_case(ptr noundef %1, i64 noundef %3, ptr noundef %4)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rval, align 1, !tbaa !21
  %5 = load i8, ptr %rval, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %5 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rval) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_array_eq_c_str_ignore_case(ptr noundef %array, i64 noundef %array_len, ptr noundef %c_str) #0 {
entry:
  %retval = alloca i1, align 1
  %array.addr = alloca ptr, align 8
  %array_len.addr = alloca i64, align 8
  %c_str.addr = alloca ptr, align 8
  %array_bytes = alloca ptr, align 8
  %str_bytes = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca i8, align 1
  store ptr %array, ptr %array.addr, align 8, !tbaa !4
  store i64 %array_len, ptr %array_len.addr, align 8, !tbaa !8
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %array_bytes) #11
  %0 = load ptr, ptr %array.addr, align 8, !tbaa !4
  store ptr %0, ptr %array_bytes, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %str_bytes) #11
  %1 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  store ptr %1, ptr %str_bytes, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !8
  %3 = load i64, ptr %array_len.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %s) #11
  %4 = load ptr, ptr %str_bytes, align 8, !tbaa !4
  %5 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !25
  store i8 %6, ptr %s, align 1, !tbaa !25
  %7 = load i8, ptr %s, align 1, !tbaa !25
  %conv = zext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %array_bytes, align 8, !tbaa !4
  %9 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds i8, ptr %8, i64 %9
  %10 = load i8, ptr %arrayidx3, align 1, !tbaa !25
  %idxprom = zext i8 %10 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr @s_tolower_table, i64 0, i64 %idxprom
  %11 = load i8, ptr %arrayidx4, align 1, !tbaa !25
  %conv5 = zext i8 %11 to i32
  %12 = load i8, ptr %s, align 1, !tbaa !25
  %idxprom6 = zext i8 %12 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], ptr @s_tolower_table, i64 0, i64 %idxprom6
  %13 = load i8, ptr %arrayidx7, align 1, !tbaa !25
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp ne i32 %conv5, %conv8
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %s) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %14 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %cleanup19 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup13
  %15 = load ptr, ptr %str_bytes, align 8, !tbaa !4
  %16 = load i64, ptr %array_len.addr, align 8, !tbaa !8
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 %16
  %17 = load i8, ptr %arrayidx15, align 1, !tbaa !25
  %conv16 = zext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  store i1 %cmp17, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %for.end, %cleanup13
  call void @llvm.lifetime.end.p0(i64 8, ptr %str_bytes) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %array_bytes) #11
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_init_copy_from_cursor(ptr noundef %dest, ptr noundef %allocator, i64 %src.coerce0, ptr %src.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %src = alloca %struct.aws_byte_cursor, align 8
  %dest.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %src, i32 0, i32 0
  store i64 %src.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %src, i32 0, i32 1
  store ptr %src.coerce1, ptr %1, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @aws_byte_cursor_is_valid(ptr noundef %src)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call1 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %2 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 32, i1 false)
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end3
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %len4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %5 = load i64, ptr %len4, align 8, !tbaa !18
  %call5 = call ptr @aws_mem_acquire(ptr noundef %4, i64 noundef %5)
  br label %cond.end

cond.false:                                       ; preds = %do.end3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call5, %cond.true ], [ null, %cond.false ]
  %6 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 1
  store ptr %cond, ptr %buffer, align 8, !tbaa !10
  %len6 = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %7 = load i64, ptr %len6, align 8, !tbaa !18
  %cmp7 = icmp ne i64 %7, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %cond.end
  %8 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %buffer8 = getelementptr inbounds %struct.aws_byte_buf, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %buffer8, align 8, !tbaa !10
  %cmp9 = icmp eq ptr %9, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %cond.end
  %len12 = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %10 = load i64, ptr %len12, align 8, !tbaa !18
  %11 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %len13 = getelementptr inbounds %struct.aws_byte_buf, ptr %11, i32 0, i32 0
  store i64 %10, ptr %len13, align 8, !tbaa !12
  %len14 = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %12 = load i64, ptr %len14, align 8, !tbaa !18
  %13 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %13, i32 0, i32 2
  store i64 %12, ptr %capacity, align 8, !tbaa !13
  %14 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %allocator15 = getelementptr inbounds %struct.aws_byte_buf, ptr %15, i32 0, i32 3
  store ptr %14, ptr %allocator15, align 8, !tbaa !14
  %len16 = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %16 = load i64, ptr %len16, align 8, !tbaa !18
  %cmp17 = icmp ugt i64 %16, 0
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end11
  %17 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %buffer19 = getelementptr inbounds %struct.aws_byte_buf, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %buffer19, align 8, !tbaa !10
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 1
  %19 = load ptr, ptr %ptr, align 8, !tbaa !20
  %len20 = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %20 = load i64, ptr %len20, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 %20, i1 false)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then10, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_init_cache_and_update_cursors(ptr noundef %dest, ptr noundef %allocator, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %total_len = alloca i64, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %cursor_i = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 32, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_len) #11
  store i64 0, ptr %total_len, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor_i) #11
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.end
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %1 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 3
  %reg_save_area = load ptr, ptr %1, align 16
  %2 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %3 = add i32 %gp_offset, 8
  store i32 %3, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %4 = load ptr, ptr %vaarg.addr, align 8
  store ptr %4, ptr %cursor_i, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %5 = load i64, ptr %total_len, align 8, !tbaa !8
  %6 = load ptr, ptr %cursor_i, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len, align 8, !tbaa !18
  %call = call i32 @aws_add_size_checked(i64 noundef %5, i64 noundef %7, ptr noundef %total_len)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %vaarg.end
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %8 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %10 = load i64, ptr %total_len, align 8, !tbaa !8
  %call3 = call i32 @aws_byte_buf_init(ptr noundef %8, ptr noundef %9, i64 noundef %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %while.end
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay7)
  br label %while.cond8

while.cond8:                                      ; preds = %while.body22, %if.end6
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %gp_offset_p10 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay9, i32 0, i32 0
  %gp_offset11 = load i32, ptr %gp_offset_p10, align 16
  %fits_in_gp12 = icmp ule i32 %gp_offset11, 40
  br i1 %fits_in_gp12, label %vaarg.in_reg13, label %vaarg.in_mem15

vaarg.in_reg13:                                   ; preds = %while.cond8
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay9, i32 0, i32 3
  %reg_save_area14 = load ptr, ptr %11, align 16
  %12 = getelementptr i8, ptr %reg_save_area14, i32 %gp_offset11
  %13 = add i32 %gp_offset11, 8
  store i32 %13, ptr %gp_offset_p10, align 16
  br label %vaarg.end19

vaarg.in_mem15:                                   ; preds = %while.cond8
  %overflow_arg_area_p16 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay9, i32 0, i32 2
  %overflow_arg_area17 = load ptr, ptr %overflow_arg_area_p16, align 8
  %overflow_arg_area.next18 = getelementptr i8, ptr %overflow_arg_area17, i32 8
  store ptr %overflow_arg_area.next18, ptr %overflow_arg_area_p16, align 8
  br label %vaarg.end19

vaarg.end19:                                      ; preds = %vaarg.in_mem15, %vaarg.in_reg13
  %vaarg.addr20 = phi ptr [ %12, %vaarg.in_reg13 ], [ %overflow_arg_area17, %vaarg.in_mem15 ]
  %14 = load ptr, ptr %vaarg.addr20, align 8
  store ptr %14, ptr %cursor_i, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %14, null
  br i1 %cmp21, label %while.body22, label %while.end24

while.body22:                                     ; preds = %vaarg.end19
  %15 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %cursor_i, align 8, !tbaa !4
  %call23 = call i32 @aws_byte_buf_append_and_update(ptr noundef %15, ptr noundef %16)
  br label %while.cond8

while.end24:                                      ; preds = %vaarg.end19
  %arraydecay25 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay25)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end24, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor_i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_len) #11
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #3 {
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

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append_and_update(ptr noundef %to, ptr noundef %from_and_update) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %from_and_update.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store ptr %from_and_update, ptr %from_and_update.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %from_and_update.addr, align 8, !tbaa !4
  %call = call i32 @aws_byte_buf_append(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %buffer, align 8, !tbaa !10
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer1 = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !10
  %6 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len, align 8, !tbaa !12
  %8 = load ptr, ptr %from_and_update.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %len2, align 8, !tbaa !18
  %sub = sub i64 %7, %9
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr, %cond.false ]
  %10 = load ptr, ptr %from_and_update.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %10, i32 0, i32 1
  store ptr %cond, ptr %ptr, align 8, !tbaa !20
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_next_split(ptr noalias noundef %input_str, i8 noundef signext %split_on, ptr noalias noundef %substr) #0 {
entry:
  %retval = alloca i1, align 1
  %input_str.addr = alloca ptr, align 8
  %split_on.addr = alloca i8, align 1
  %substr.addr = alloca ptr, align 8
  %first_run = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %input_end = alloca ptr, align 8
  %new_location = alloca ptr, align 8
  store ptr %input_str, ptr %input_str.addr, align 8, !tbaa !4
  store i8 %split_on, ptr %split_on.addr, align 1, !tbaa !25
  store ptr %substr, ptr %substr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %first_run) #11
  %0 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !20
  %cmp = icmp eq ptr %1, null
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %first_run, align 1, !tbaa !21
  %2 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %ptr1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %ptr1, align 8, !tbaa !20
  %cmp2 = icmp eq ptr %3, null
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load i8, ptr %first_run, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool4 = trunc i8 %4 to i1
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %5 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr6 = getelementptr inbounds %struct.aws_byte_cursor, ptr %5, i32 0, i32 1
  store ptr @.str, ptr %ptr6, align 8, !tbaa !20
  %6 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 0
  store i64 0, ptr %len, align 8, !tbaa !18
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end7:                                          ; preds = %entry
  %8 = load i8, ptr %first_run, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool8 = trunc i8 %8 to i1
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %10, i64 16, i1 false), !tbaa.struct !26
  br label %if.end31

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_end) #11
  %11 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %ptr10 = getelementptr inbounds %struct.aws_byte_cursor, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %ptr10, align 8, !tbaa !20
  %13 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %len11 = getelementptr inbounds %struct.aws_byte_cursor, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %len11, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %14
  store ptr %add.ptr, ptr %input_end, align 8, !tbaa !4
  %15 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %len12 = getelementptr inbounds %struct.aws_byte_cursor, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %len12, align 8, !tbaa !18
  %add = add i64 %16, 1
  %17 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr13 = getelementptr inbounds %struct.aws_byte_cursor, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %ptr13, align 8, !tbaa !20
  %add.ptr14 = getelementptr inbounds i8, ptr %18, i64 %add
  store ptr %add.ptr14, ptr %ptr13, align 8, !tbaa !20
  %19 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr15 = getelementptr inbounds %struct.aws_byte_cursor, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %ptr15, align 8, !tbaa !20
  %21 = load ptr, ptr %input_end, align 8, !tbaa !4
  %cmp16 = icmp ugt ptr %20, %21
  br i1 %cmp16, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr18 = getelementptr inbounds %struct.aws_byte_cursor, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %ptr18, align 8, !tbaa !20
  %24 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %ptr19 = getelementptr inbounds %struct.aws_byte_cursor, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %ptr19, align 8, !tbaa !20
  %cmp20 = icmp ult ptr %23, %25
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %lor.lhs.false, %if.else
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  %26 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 16, i1 false)
  br label %do.cond24

do.cond24:                                        ; preds = %do.body23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %27 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %len27 = getelementptr inbounds %struct.aws_byte_cursor, ptr %27, i32 0, i32 0
  %28 = load i64, ptr %len27, align 8, !tbaa !18
  %29 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr28 = getelementptr inbounds %struct.aws_byte_cursor, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %ptr28, align 8, !tbaa !20
  %31 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %ptr29 = getelementptr inbounds %struct.aws_byte_cursor, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %ptr29, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %28, %sub.ptr.sub
  %33 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %len30 = getelementptr inbounds %struct.aws_byte_cursor, ptr %33, i32 0, i32 0
  store i64 %sub, ptr %len30, align 8, !tbaa !18
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end25
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_end) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31

if.end31:                                         ; preds = %cleanup.cont, %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_location) #11
  %34 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr32 = getelementptr inbounds %struct.aws_byte_cursor, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %ptr32, align 8, !tbaa !20
  %36 = load i8, ptr %split_on.addr, align 1, !tbaa !25
  %conv33 = sext i8 %36 to i32
  %37 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %len34 = getelementptr inbounds %struct.aws_byte_cursor, ptr %37, i32 0, i32 0
  %38 = load i64, ptr %len34, align 8, !tbaa !18
  %call = call ptr @memchr(ptr noundef %35, i32 noundef %conv33, i64 noundef %38) #12
  store ptr %call, ptr %new_location, align 8, !tbaa !4
  %39 = load ptr, ptr %new_location, align 8, !tbaa !4
  %tobool35 = icmp ne ptr %39, null
  br i1 %tobool35, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end31
  %40 = load ptr, ptr %new_location, align 8, !tbaa !4
  %41 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %ptr37 = getelementptr inbounds %struct.aws_byte_cursor, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %ptr37, align 8, !tbaa !20
  %sub.ptr.lhs.cast38 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %42 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %43 = load ptr, ptr %substr.addr, align 8, !tbaa !4
  %len41 = getelementptr inbounds %struct.aws_byte_cursor, ptr %43, i32 0, i32 0
  store i64 %sub.ptr.sub40, ptr %len41, align 8, !tbaa !18
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end31
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_location) #11
  br label %cleanup44

cleanup44:                                        ; preds = %if.end42, %cleanup, %do.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 1, ptr %first_run) #11
  %44 = load i1, ptr %retval, align 1
  ret i1 %44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nounwind willreturn memory(read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define i32 @aws_byte_cursor_split_on_char_n(ptr noalias noundef %input_str, i8 noundef signext %split_on, i64 noundef %n, ptr noalias noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %input_str.addr = alloca ptr, align 8
  %split_on.addr = alloca i8, align 1
  %n.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %max_splits = alloca i64, align 8
  %split_count = alloca i64, align 8
  %substr = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input_str, ptr %input_str.addr, align 8, !tbaa !4
  store i8 %split_on, ptr %split_on.addr, align 1, !tbaa !25
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_splits) #11
  %0 = load i64, ptr %n.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, ptr %max_splits, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %split_count) #11
  store i64 0, ptr %split_count, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %substr) #11
  br label %do.body

do.body:                                          ; preds = %cond.end
  call void @llvm.memset.p0.i64(ptr align 8 %substr, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %do.end
  %2 = load i64, ptr %split_count, align 8, !tbaa !8
  %3 = load i64, ptr %max_splits, align 8, !tbaa !8
  %cmp1 = icmp ule i64 %2, %3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %5 = load i8, ptr %split_on.addr, align 1, !tbaa !25
  %call = call zeroext i1 @aws_byte_cursor_next_split(ptr noundef %4, i8 noundef signext %5, ptr noundef %substr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i64, ptr %split_count, align 8, !tbaa !8
  %8 = load i64, ptr %max_splits, align 8, !tbaa !8
  %cmp2 = icmp eq i64 %7, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %len, align 8, !tbaa !18
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %substr, i32 0, i32 1
  %11 = load ptr, ptr %ptr, align 8, !tbaa !20
  %12 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %ptr3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %ptr3, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 %10, %sub.ptr.sub
  %len4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %substr, i32 0, i32 0
  store i64 %sub, ptr %len4, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %14 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call5 = call i32 @aws_array_list_push_back(ptr noundef %14, ptr noundef %substr)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  %lnot6 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot6 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %15 = load i64, ptr %split_count, align 8, !tbaa !8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %split_count, align 8, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 16, ptr %substr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %split_count) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_splits) #11
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_code) #11
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %2)
  %call1 = call i32 @aws_array_list_set_at(ptr noundef %0, ptr noundef %1, i64 noundef %call)
  store i32 %call1, ptr %err_code, align 4, !tbaa !16
  %3 = load i32, ptr %err_code, align 4, !tbaa !16
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !27
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !16
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #11
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_cursor_split_on_char(ptr noalias noundef %input_str, i8 noundef signext %split_on, ptr noalias noundef %output) #0 {
entry:
  %input_str.addr = alloca ptr, align 8
  %split_on.addr = alloca i8, align 1
  %output.addr = alloca ptr, align 8
  store ptr %input_str, ptr %input_str.addr, align 8, !tbaa !4
  store i8 %split_on, ptr %split_on.addr, align 1, !tbaa !25
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %1 = load i8, ptr %split_on.addr, align 1, !tbaa !25
  %2 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call = call i32 @aws_byte_cursor_split_on_char_n(ptr noundef %0, i8 noundef signext %1, i64 noundef 0, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_cursor_find_exact(ptr noalias noundef %input_str, ptr noalias noundef %to_find, ptr noundef %first_find) #0 {
entry:
  %retval = alloca i32, align 4
  %input_str.addr = alloca ptr, align 8
  %to_find.addr = alloca ptr, align 8
  %first_find.addr = alloca ptr, align 8
  %working_cur = alloca %struct.aws_byte_cursor, align 8
  %first_char_location = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce = alloca %struct.aws_byte_cursor, align 8
  %coerce32 = alloca %struct.aws_byte_cursor, align 8
  store ptr %input_str, ptr %input_str.addr, align 8, !tbaa !4
  store ptr %to_find, ptr %to_find.addr, align 8, !tbaa !4
  store ptr %first_find, ptr %first_find.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %to_find.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  %2 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ugt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 48)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %to_find.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len2, align 8, !tbaa !18
  %cmp3 = icmp ult i64 %5, 1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @aws_raise_error(i32 noundef 4)
  store i32 %call5, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %working_cur) #11
  %6 = load ptr, ptr %input_str.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %working_cur, ptr align 8 %6, i64 16, i1 false), !tbaa.struct !26
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end6
  %len7 = getelementptr inbounds %struct.aws_byte_cursor, ptr %working_cur, i32 0, i32 0
  %7 = load i64, ptr %len7, align 8, !tbaa !18
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_char_location) #11
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %working_cur, i32 0, i32 1
  %8 = load ptr, ptr %ptr, align 8, !tbaa !20
  %9 = load ptr, ptr %to_find.addr, align 8, !tbaa !4
  %ptr8 = getelementptr inbounds %struct.aws_byte_cursor, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %ptr8, align 8, !tbaa !20
  %11 = load i8, ptr %10, align 1, !tbaa !25
  %conv = sext i8 %11 to i32
  %len9 = getelementptr inbounds %struct.aws_byte_cursor, ptr %working_cur, i32 0, i32 0
  %12 = load i64, ptr %len9, align 8, !tbaa !18
  %call10 = call ptr @memchr(ptr noundef %8, i32 noundef %conv, i64 noundef %12) #12
  store ptr %call10, ptr %first_char_location, align 8, !tbaa !4
  %13 = load ptr, ptr %first_char_location, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %13, null
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %while.body
  %call13 = call i32 @aws_raise_error(i32 noundef 48)
  store i32 %call13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %14 = load ptr, ptr %first_char_location, align 8, !tbaa !4
  %ptr15 = getelementptr inbounds %struct.aws_byte_cursor, ptr %working_cur, i32 0, i32 1
  %15 = load ptr, ptr %ptr15, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call16 = call { i64, ptr } @aws_byte_cursor_advance(ptr noundef %working_cur, i64 noundef %sub.ptr.sub)
  %16 = getelementptr inbounds { i64, ptr }, ptr %coerce, i32 0, i32 0
  %17 = extractvalue { i64, ptr } %call16, 0
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds { i64, ptr }, ptr %coerce, i32 0, i32 1
  %19 = extractvalue { i64, ptr } %call16, 1
  store ptr %19, ptr %18, align 8
  %len17 = getelementptr inbounds %struct.aws_byte_cursor, ptr %working_cur, i32 0, i32 0
  %20 = load i64, ptr %len17, align 8, !tbaa !18
  %21 = load ptr, ptr %to_find.addr, align 8, !tbaa !4
  %len18 = getelementptr inbounds %struct.aws_byte_cursor, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %len18, align 8, !tbaa !18
  %cmp19 = icmp ult i64 %20, %22
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  %call22 = call i32 @aws_raise_error(i32 noundef 48)
  store i32 %call22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %ptr24 = getelementptr inbounds %struct.aws_byte_cursor, ptr %working_cur, i32 0, i32 1
  %23 = load ptr, ptr %ptr24, align 8, !tbaa !20
  %24 = load ptr, ptr %to_find.addr, align 8, !tbaa !4
  %ptr25 = getelementptr inbounds %struct.aws_byte_cursor, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %ptr25, align 8, !tbaa !20
  %26 = load ptr, ptr %to_find.addr, align 8, !tbaa !4
  %len26 = getelementptr inbounds %struct.aws_byte_cursor, ptr %26, i32 0, i32 0
  %27 = load i64, ptr %len26, align 8, !tbaa !18
  %call27 = call i32 @memcmp(ptr noundef %23, ptr noundef %25, i64 noundef %27) #12
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end23
  %28 = load ptr, ptr %first_find.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %working_cur, i64 16, i1 false), !tbaa.struct !26
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call31 = call { i64, ptr } @aws_byte_cursor_advance(ptr noundef %working_cur, i64 noundef 1)
  %29 = getelementptr inbounds { i64, ptr }, ptr %coerce32, i32 0, i32 0
  %30 = extractvalue { i64, ptr } %call31, 0
  store i64 %30, ptr %29, align 8
  %31 = getelementptr inbounds { i64, ptr }, ptr %coerce32, i32 0, i32 1
  %32 = extractvalue { i64, ptr } %call31, 1
  store ptr %32, ptr %31, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then21, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_char_location) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call33 = call i32 @aws_raise_error(i32 noundef 48)
  store i32 %call33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %working_cur) #11
  br label %return

return:                                           ; preds = %cleanup34, %if.then4, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_advance(ptr noundef %cursor, i64 noundef %len) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %cursor.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %cursor, ptr %cursor.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ugt i64 %1, 9223372036854775807
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp2 = icmp ugt i64 %2, 9223372036854775807
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %len.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len4, align 8, !tbaa !18
  %cmp5 = icmp ugt i64 %3, %5
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  store ptr null, ptr %ptr, align 8, !tbaa !20
  %len6 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  store i64 0, ptr %len6, align 8, !tbaa !18
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false3
  %6 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr7 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ptr7, align 8, !tbaa !20
  %ptr8 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  store ptr %7, ptr %ptr8, align 8, !tbaa !20
  %8 = load i64, ptr %len.addr, align 8, !tbaa !8
  %len9 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  store i64 %8, ptr %len9, align 8, !tbaa !18
  %9 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr10 = getelementptr inbounds %struct.aws_byte_cursor, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %ptr10, align 8, !tbaa !20
  %cmp11 = icmp eq ptr %10, null
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %11 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr12 = getelementptr inbounds %struct.aws_byte_cursor, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %ptr12, align 8, !tbaa !20
  %13 = load i64, ptr %len.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr, %cond.false ]
  %14 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr13 = getelementptr inbounds %struct.aws_byte_cursor, ptr %14, i32 0, i32 1
  store ptr %cond, ptr %ptr13, align 8, !tbaa !20
  %15 = load i64, ptr %len.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len14 = getelementptr inbounds %struct.aws_byte_cursor, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len14, align 8, !tbaa !18
  %sub = sub i64 %17, %15
  store i64 %sub, ptr %len14, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %18 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %18
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_cat(ptr noundef %dest, i64 noundef %number_of_args, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %number_of_args.addr = alloca i64, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %cursor = alloca %struct.aws_byte_cursor, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  store i64 %number_of_args, ptr %number_of_args.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !8
  %1 = load i64, ptr %number_of_args.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup5

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #11
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %2 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 3
  %reg_save_area = load ptr, ptr %2, align 16
  %3 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %4 = add i32 %gp_offset, 8
  store i32 %4, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %5 = load ptr, ptr %vaarg.addr, align 8
  store ptr %5, ptr %buffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %cursor) #11
  %6 = load ptr, ptr %buffer, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 0
  %8 = extractvalue { i64, ptr } %call, 0
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 1
  %10 = extractvalue { i64, ptr } %call, 1
  store ptr %10, ptr %9, align 8
  %11 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_byte_buf_append(ptr noundef %11, ptr noundef %cursor)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %vaarg.end
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay3)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %vaarg.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %cursor) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %12 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond

cleanup5:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest6 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest6, label %cleanup8 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup5
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay7)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %for.end, %cleanup5
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #11
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_from_buf(ptr noundef %buf) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 8, !tbaa !10
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  store ptr %1, ptr %ptr, align 8, !tbaa !20
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  store i64 %3, ptr %len1, align 8, !tbaa !18
  %4 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %4
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append(ptr noundef %to, ptr noundef %from) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %capacity, align 8, !tbaa !13
  %2 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %sub = sub i64 %1, %3
  %4 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ult i64 %sub, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 26)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len2, align 8, !tbaa !18
  %cmp3 = icmp ugt i64 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %buffer, align 8, !tbaa !10
  %10 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len5 = getelementptr inbounds %struct.aws_byte_buf, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %len5, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %11
  %12 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %ptr, align 8, !tbaa !20
  %14 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len6 = getelementptr inbounds %struct.aws_byte_cursor, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %len6, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %13, i64 %15, i1 false)
  %16 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len7 = getelementptr inbounds %struct.aws_byte_cursor, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len7, align 8, !tbaa !18
  %18 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len8 = getelementptr inbounds %struct.aws_byte_buf, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %len8, align 8, !tbaa !12
  %add = add i64 %19, %17
  store i64 %add, ptr %len8, align 8, !tbaa !12
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_eq(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !20
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %ptr1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ptr1, align 8, !tbaa !20
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len2, align 8, !tbaa !18
  %call = call zeroext i1 @aws_array_eq(ptr noundef %1, i64 noundef %3, ptr noundef %5, i64 noundef %7)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %8 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %8 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_eq_ignore_case(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !20
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %ptr1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ptr1, align 8, !tbaa !20
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len2, align 8, !tbaa !18
  %call = call zeroext i1 @aws_array_eq_ignore_case(ptr noundef %1, i64 noundef %3, ptr noundef %5, i64 noundef %7)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %8 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %8 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define ptr @aws_lookup_table_to_lower_get() #0 {
entry:
  ret ptr @s_tolower_table
}

; Function Attrs: nounwind uwtable
define i64 @aws_hash_array_ignore_case(ptr noundef %array, i64 noundef %len) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %fnv_offset_basis = alloca i64, align 8
  %fnv_prime = alloca i64, align 8
  %i = alloca ptr, align 8
  %end = alloca ptr, align 8
  %hash = alloca i64, align 8
  %lower = alloca i8, align 1
  store ptr %array, ptr %array.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnv_offset_basis) #11
  store i64 -3750763034362895579, ptr %fnv_offset_basis, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnv_prime) #11
  store i64 1099511628211, ptr %fnv_prime, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  %0 = load ptr, ptr %array.addr, align 8, !tbaa !4
  store ptr %0, ptr %i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11
  %1 = load ptr, ptr %i, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %i, align 8, !tbaa !4
  %3 = load i64, ptr %len.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr, %cond.false ]
  store ptr %cond, ptr %end, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #11
  store i64 -3750763034362895579, ptr %hash, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %4 = load ptr, ptr %i, align 8, !tbaa !4
  %5 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %lower) #11
  %6 = load ptr, ptr %i, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %i, align 8, !tbaa !4
  %7 = load i8, ptr %6, align 1, !tbaa !25
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @s_tolower_table, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !25
  store i8 %8, ptr %lower, align 1, !tbaa !25
  %9 = load i8, ptr %lower, align 1, !tbaa !25
  %conv = zext i8 %9 to i64
  %10 = load i64, ptr %hash, align 8, !tbaa !8
  %xor = xor i64 %10, %conv
  store i64 %xor, ptr %hash, align 8, !tbaa !8
  %11 = load i64, ptr %hash, align 8, !tbaa !8
  %mul = mul i64 %11, 1099511628211
  store i64 %mul, ptr %hash, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %lower) #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i64, ptr %hash, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnv_prime) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnv_offset_basis) #11
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @aws_hash_byte_cursor_ptr_ignore_case(ptr noundef %item) #0 {
entry:
  %item.addr = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %rval = alloca i64, align 8
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #11
  %0 = load ptr, ptr %item.addr, align 8, !tbaa !4
  store ptr %0, ptr %cursor, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #11
  %1 = load ptr, ptr %cursor, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %ptr, align 8, !tbaa !20
  %3 = load ptr, ptr %cursor, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %len, align 8, !tbaa !18
  %call = call i64 @aws_hash_array_ignore_case(ptr noundef %2, i64 noundef %4)
  store i64 %call, ptr %rval, align 8, !tbaa !8
  %5 = load i64, ptr %rval, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #11
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_eq_byte_buf(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !20
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %buffer, align 8, !tbaa !10
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len1, align 8, !tbaa !12
  %call = call zeroext i1 @aws_array_eq(ptr noundef %1, i64 noundef %3, ptr noundef %5, i64 noundef %7)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %8 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %8 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_eq_byte_buf_ignore_case(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !20
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %buffer, align 8, !tbaa !10
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len1, align 8, !tbaa !12
  %call = call zeroext i1 @aws_array_eq_ignore_case(ptr noundef %1, i64 noundef %3, ptr noundef %5, i64 noundef %7)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %8 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %8 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_eq_c_str(ptr noundef %cursor, ptr noundef %c_str) #0 {
entry:
  %cursor.addr = alloca ptr, align 8
  %c_str.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cursor, ptr %cursor.addr, align 8, !tbaa !4
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !20
  %2 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %4 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_array_eq_c_str(ptr noundef %1, i64 noundef %3, ptr noundef %4)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %5 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %5 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_eq_c_str_ignore_case(ptr noundef %cursor, ptr noundef %c_str) #0 {
entry:
  %cursor.addr = alloca ptr, align 8
  %c_str.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cursor, ptr %cursor.addr, align 8, !tbaa !4
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ptr, align 8, !tbaa !20
  %2 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %4 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_array_eq_c_str_ignore_case(ptr noundef %1, i64 noundef %3, ptr noundef %4)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %5 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %5 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_starts_with(ptr noundef %input, ptr noundef %prefix) #0 {
entry:
  %retval = alloca i1, align 1
  %input.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %start = alloca %struct.aws_byte_cursor, align 8
  %rv = alloca i8, align 1
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %prefix, ptr %prefix.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  %2 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %start) #11
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %start, i32 0, i32 0
  %4 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %len3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len3, align 8, !tbaa !18
  store i64 %5, ptr %len2, align 8, !tbaa !18
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %start, i32 0, i32 1
  %6 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %ptr4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ptr4, align 8, !tbaa !20
  store ptr %7, ptr %ptr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %8 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_eq(ptr noundef %start, ptr noundef %8)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %9 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %9 to i1
  store i1 %tobool, ptr %retval, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %start) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1
  ret i1 %10
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_starts_with_ignore_case(ptr noundef %input, ptr noundef %prefix) #0 {
entry:
  %retval = alloca i1, align 1
  %input.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %start = alloca %struct.aws_byte_cursor, align 8
  %rv = alloca i8, align 1
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %prefix, ptr %prefix.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  %2 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %start) #11
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %start, i32 0, i32 0
  %4 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %len3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len3, align 8, !tbaa !18
  store i64 %5, ptr %len2, align 8, !tbaa !18
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %start, i32 0, i32 1
  %6 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %ptr4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ptr4, align 8, !tbaa !20
  store ptr %7, ptr %ptr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %8 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_eq_ignore_case(ptr noundef %start, ptr noundef %8)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %9 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %9 to i1
  store i1 %tobool, ptr %retval, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %start) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1
  ret i1 %10
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append_with_lookup(ptr noalias noundef %to, ptr noalias noundef %from, ptr noundef %lookup_table) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %lookup_table.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  store ptr %lookup_table, ptr %lookup_table.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %capacity, align 8, !tbaa !13
  %2 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %sub = sub i64 %1, %3
  %4 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ult i64 %sub, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 26)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, ptr %i, align 8, !tbaa !8
  %7 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %len2, align 8, !tbaa !18
  %cmp3 = icmp ult i64 %6, %8
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %lookup_table.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %ptr, align 8, !tbaa !20
  %12 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %12
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %idxprom = zext i8 %13 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %14 = load i8, ptr %arrayidx4, align 1, !tbaa !25
  %15 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %buffer, align 8, !tbaa !10
  %17 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len5 = getelementptr inbounds %struct.aws_byte_buf, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %len5, align 8, !tbaa !12
  %19 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %18, %19
  %arrayidx6 = getelementptr inbounds i8, ptr %16, i64 %add
  store i8 %14, ptr %arrayidx6, align 1, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %21 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len7 = getelementptr inbounds %struct.aws_byte_buf, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %len7, align 8, !tbaa !12
  %23 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len8 = getelementptr inbounds %struct.aws_byte_cursor, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %len8, align 8, !tbaa !18
  %25 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len9 = getelementptr inbounds %struct.aws_byte_buf, ptr %25, i32 0, i32 0
  %call10 = call i32 @aws_add_size_checked(i64 noundef %22, i64 noundef %24, ptr noundef %len9)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append_dynamic(ptr noundef %to, ptr noundef %from) #0 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %call = call i32 @s_aws_byte_buf_append_dynamic(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_byte_buf_append_dynamic(ptr noundef %to, ptr noundef %from, i1 noundef zeroext %clear_released_memory) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %clear_released_memory.addr = alloca i8, align 1
  %missing_capacity = alloca i64, align 8
  %required_capacity = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %growth_capacity = alloca i64, align 8
  %new_capacity = alloca i64, align 8
  %new_buffer = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  %frombool = zext i1 %clear_released_memory to i8
  store i8 %frombool, ptr %clear_released_memory.addr, align 1, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %allocator, align 8, !tbaa !14
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %capacity, align 8, !tbaa !13
  %4 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len, align 8, !tbaa !12
  %sub = sub i64 %3, %5
  %6 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ult i64 %sub, %7
  br i1 %cmp, label %if.then2, label %if.else56

if.then2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %missing_capacity) #11
  %8 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %len3, align 8, !tbaa !18
  %10 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity4 = getelementptr inbounds %struct.aws_byte_buf, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %capacity4, align 8, !tbaa !13
  %12 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len5 = getelementptr inbounds %struct.aws_byte_buf, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %len5, align 8, !tbaa !12
  %sub6 = sub i64 %11, %13
  %sub7 = sub i64 %9, %sub6
  store i64 %sub7, ptr %missing_capacity, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %required_capacity) #11
  store i64 0, ptr %required_capacity, align 8, !tbaa !8
  %14 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity8 = getelementptr inbounds %struct.aws_byte_buf, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %capacity8, align 8, !tbaa !13
  %16 = load i64, ptr %missing_capacity, align 8, !tbaa !8
  %call9 = call i32 @aws_add_size_checked(i64 noundef %15, i64 noundef %16, ptr noundef %required_capacity)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then2
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54

if.end12:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %growth_capacity) #11
  %17 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity13 = getelementptr inbounds %struct.aws_byte_buf, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %capacity13, align 8, !tbaa !13
  %19 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity14 = getelementptr inbounds %struct.aws_byte_buf, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %capacity14, align 8, !tbaa !13
  %call15 = call i64 @aws_add_size_saturating(i64 noundef %18, i64 noundef %20)
  store i64 %call15, ptr %growth_capacity, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_capacity) #11
  %21 = load i64, ptr %required_capacity, align 8, !tbaa !8
  store i64 %21, ptr %new_capacity, align 8, !tbaa !8
  %22 = load i64, ptr %new_capacity, align 8, !tbaa !8
  %23 = load i64, ptr %growth_capacity, align 8, !tbaa !8
  %cmp16 = icmp ult i64 %22, %23
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %24 = load i64, ptr %growth_capacity, align 8, !tbaa !8
  store i64 %24, ptr %new_capacity, align 8, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_buffer) #11
  %25 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %allocator19 = getelementptr inbounds %struct.aws_byte_buf, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %allocator19, align 8, !tbaa !14
  %27 = load i64, ptr %new_capacity, align 8, !tbaa !8
  %call20 = call ptr @aws_mem_acquire(ptr noundef %26, i64 noundef %27)
  store ptr %call20, ptr %new_buffer, align 8, !tbaa !4
  %28 = load ptr, ptr %new_buffer, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %28, null
  br i1 %cmp21, label %if.then22, label %if.end31

if.then22:                                        ; preds = %if.end18
  %29 = load i64, ptr %new_capacity, align 8, !tbaa !8
  %30 = load i64, ptr %required_capacity, align 8, !tbaa !8
  %cmp23 = icmp ugt i64 %29, %30
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then22
  %31 = load i64, ptr %required_capacity, align 8, !tbaa !8
  store i64 %31, ptr %new_capacity, align 8, !tbaa !8
  %32 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %allocator25 = getelementptr inbounds %struct.aws_byte_buf, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %allocator25, align 8, !tbaa !14
  %34 = load i64, ptr %new_capacity, align 8, !tbaa !8
  %call26 = call ptr @aws_mem_acquire(ptr noundef %33, i64 noundef %34)
  store ptr %call26, ptr %new_buffer, align 8, !tbaa !4
  %35 = load ptr, ptr %new_buffer, align 8, !tbaa !4
  %cmp27 = icmp eq ptr %35, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.then24
  br label %if.end30

if.else:                                          ; preds = %if.then22
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end29
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end18
  %36 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len32 = getelementptr inbounds %struct.aws_byte_buf, ptr %36, i32 0, i32 0
  %37 = load i64, ptr %len32, align 8, !tbaa !12
  %cmp33 = icmp ugt i64 %37, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %38 = load ptr, ptr %new_buffer, align 8, !tbaa !4
  %39 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %buffer, align 8, !tbaa !10
  %41 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len35 = getelementptr inbounds %struct.aws_byte_buf, ptr %41, i32 0, i32 0
  %42 = load i64, ptr %len35, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %40, i64 %42, i1 false)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %43 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len37 = getelementptr inbounds %struct.aws_byte_cursor, ptr %43, i32 0, i32 0
  %44 = load i64, ptr %len37, align 8, !tbaa !18
  %cmp38 = icmp ugt i64 %44, 0
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end36
  %45 = load ptr, ptr %new_buffer, align 8, !tbaa !4
  %46 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len40 = getelementptr inbounds %struct.aws_byte_buf, ptr %46, i32 0, i32 0
  %47 = load i64, ptr %len40, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %45, i64 %47
  %48 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %ptr, align 8, !tbaa !20
  %50 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len41 = getelementptr inbounds %struct.aws_byte_cursor, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %len41, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %49, i64 %51, i1 false)
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36
  %52 = load i8, ptr %clear_released_memory.addr, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool43 = trunc i8 %52 to i1
  br i1 %tobool43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end42
  %53 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer45 = getelementptr inbounds %struct.aws_byte_buf, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %buffer45, align 8, !tbaa !10
  %55 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity46 = getelementptr inbounds %struct.aws_byte_buf, ptr %55, i32 0, i32 2
  %56 = load i64, ptr %capacity46, align 8, !tbaa !13
  call void @aws_secure_zero(ptr noundef %54, i64 noundef %56)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42
  %57 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %allocator48 = getelementptr inbounds %struct.aws_byte_buf, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %allocator48, align 8, !tbaa !14
  %59 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer49 = getelementptr inbounds %struct.aws_byte_buf, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %buffer49, align 8, !tbaa !10
  call void @aws_mem_release(ptr noundef %58, ptr noundef %60)
  %61 = load ptr, ptr %new_buffer, align 8, !tbaa !4
  %62 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer50 = getelementptr inbounds %struct.aws_byte_buf, ptr %62, i32 0, i32 1
  store ptr %61, ptr %buffer50, align 8, !tbaa !10
  %63 = load i64, ptr %new_capacity, align 8, !tbaa !8
  %64 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %capacity51 = getelementptr inbounds %struct.aws_byte_buf, ptr %64, i32 0, i32 2
  store i64 %63, ptr %capacity51, align 8, !tbaa !13
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_buffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_capacity) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %growth_capacity) #11
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %required_capacity) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %missing_capacity) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup54
  br label %if.end66

if.else56:                                        ; preds = %do.end
  %65 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len57 = getelementptr inbounds %struct.aws_byte_cursor, ptr %65, i32 0, i32 0
  %66 = load i64, ptr %len57, align 8, !tbaa !18
  %cmp58 = icmp ugt i64 %66, 0
  br i1 %cmp58, label %if.then59, label %if.end65

if.then59:                                        ; preds = %if.else56
  %67 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %buffer60 = getelementptr inbounds %struct.aws_byte_buf, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %buffer60, align 8, !tbaa !10
  %69 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len61 = getelementptr inbounds %struct.aws_byte_buf, ptr %69, i32 0, i32 0
  %70 = load i64, ptr %len61, align 8, !tbaa !12
  %add.ptr62 = getelementptr inbounds i8, ptr %68, i64 %70
  %71 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %ptr63 = getelementptr inbounds %struct.aws_byte_cursor, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %ptr63, align 8, !tbaa !20
  %73 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len64 = getelementptr inbounds %struct.aws_byte_cursor, ptr %73, i32 0, i32 0
  %74 = load i64, ptr %len64, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr62, ptr align 1 %72, i64 %74, i1 false)
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %if.else56
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %cleanup.cont
  %75 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %len67 = getelementptr inbounds %struct.aws_byte_cursor, ptr %75, i32 0, i32 0
  %76 = load i64, ptr %len67, align 8, !tbaa !18
  %77 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %len68 = getelementptr inbounds %struct.aws_byte_buf, ptr %77, i32 0, i32 0
  %78 = load i64, ptr %len68, align 8, !tbaa !12
  %add = add i64 %78, %76
  store i64 %add, ptr %len68, align 8, !tbaa !12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %cleanup54, %if.then
  %79 = load i32, ptr %retval, align 4
  ret i32 %79

unreachable:                                      ; preds = %cleanup54
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append_dynamic_secure(ptr noundef %to, ptr noundef %from) #0 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %call = call i32 @s_aws_byte_buf_append_dynamic(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append_byte_dynamic(ptr noundef %buffer, i8 noundef zeroext %value) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i8 %value, ptr %value.addr, align 1, !tbaa !25
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %1 = load i8, ptr %value.addr, align 1, !tbaa !25
  %call = call i32 @s_aws_byte_buf_append_byte_dynamic(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_aws_byte_buf_append_byte_dynamic(ptr noundef %buffer, i8 noundef zeroext %value, i1 noundef zeroext %clear_released_memory) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  %clear_released_memory.addr = alloca i8, align 1
  %eq_cursor = alloca %struct.aws_byte_cursor, align 8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i8 %value, ptr %value.addr, align 1, !tbaa !25
  %frombool = zext i1 %clear_released_memory to i8
  store i8 %frombool, ptr %clear_released_memory.addr, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr %eq_cursor) #11
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %eq_cursor, i32 0, i32 0
  store i64 1, ptr %len, align 8, !tbaa !18
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %eq_cursor, i32 0, i32 1
  store ptr %value.addr, ptr %ptr, align 8, !tbaa !20
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %1 = load i8, ptr %clear_released_memory.addr, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %1 to i1
  %call = call i32 @s_aws_byte_buf_append_dynamic(ptr noundef %0, ptr noundef %eq_cursor, i1 noundef zeroext %tobool)
  call void @llvm.lifetime.end.p0(i64 16, ptr %eq_cursor) #11
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append_byte_dynamic_secure(ptr noundef %buffer, i8 noundef zeroext %value) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i8 %value, ptr %value.addr, align 1, !tbaa !25
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %1 = load i8, ptr %value.addr, align 1, !tbaa !25
  %call = call i32 @s_aws_byte_buf_append_byte_dynamic(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_reserve(ptr noundef %buffer, i64 noundef %requested_capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %requested_capacity.addr = alloca i64, align 8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i64 %requested_capacity, ptr %requested_capacity.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %allocator, align 8, !tbaa !14
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %call2 = call zeroext i1 @aws_byte_buf_is_valid(ptr noundef %2)
  br i1 %call2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %do.body1
  %call4 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call4, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  %3 = load i64, ptr %requested_capacity.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %capacity, align 8, !tbaa !13
  %cmp = icmp ule i64 %3, %5
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %do.end6
  %6 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %buffer9 = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %buffer9, align 8, !tbaa !10
  %tobool10 = icmp ne ptr %7, null
  br i1 %tobool10, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %8 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %capacity11 = getelementptr inbounds %struct.aws_byte_buf, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %capacity11, align 8, !tbaa !13
  %tobool12 = icmp ne i64 %9, 0
  br i1 %tobool12, label %if.end22, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true
  %10 = load i64, ptr %requested_capacity.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %capacity14 = getelementptr inbounds %struct.aws_byte_buf, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %capacity14, align 8, !tbaa !13
  %cmp15 = icmp ugt i64 %10, %12
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %land.lhs.true13
  %13 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %allocator17 = getelementptr inbounds %struct.aws_byte_buf, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %allocator17, align 8, !tbaa !14
  %16 = load i64, ptr %requested_capacity.addr, align 8, !tbaa !8
  %call18 = call i32 @aws_byte_buf_init(ptr noundef %13, ptr noundef %15, i64 noundef %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then16
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %land.lhs.true13, %land.lhs.true, %if.end8
  %17 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %allocator23 = getelementptr inbounds %struct.aws_byte_buf, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %allocator23, align 8, !tbaa !14
  %19 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %buffer24 = getelementptr inbounds %struct.aws_byte_buf, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %capacity25 = getelementptr inbounds %struct.aws_byte_buf, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %capacity25, align 8, !tbaa !13
  %22 = load i64, ptr %requested_capacity.addr, align 8, !tbaa !8
  %call26 = call i32 @aws_mem_realloc(ptr noundef %18, ptr noundef %buffer24, i64 noundef %21, i64 noundef %22)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  store i32 -1, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end22
  %23 = load i64, ptr %requested_capacity.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %capacity30 = getelementptr inbounds %struct.aws_byte_buf, ptr %24, i32 0, i32 2
  store i64 %23, ptr %capacity30, align 8, !tbaa !13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.end21, %if.then20, %if.then7, %if.then3, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare i32 @aws_mem_realloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_reserve_relative(ptr noundef %buffer, i64 noundef %additional_length) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %additional_length.addr = alloca i64, align 8
  %requested_capacity = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i64 %additional_length, ptr %additional_length.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %allocator, align 8, !tbaa !14
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %call2 = call zeroext i1 @aws_byte_buf_is_valid(ptr noundef %2)
  br i1 %call2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %do.body1
  %call4 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call4, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %requested_capacity) #11
  store i64 0, ptr %requested_capacity, align 8, !tbaa !8
  %3 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %len, align 8, !tbaa !12
  %5 = load i64, ptr %additional_length.addr, align 8, !tbaa !8
  %call7 = call i32 @aws_add_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %requested_capacity)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  %lnot9 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot9 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool10 = icmp ne i64 %expval, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end6
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %do.end6
  %6 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %7 = load i64, ptr %requested_capacity, align 8, !tbaa !8
  %call13 = call i32 @aws_byte_buf_reserve(ptr noundef %6, i64 noundef %7)
  store i32 %call13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %requested_capacity) #11
  br label %return

return:                                           ; preds = %cleanup, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_right_trim_pred(ptr noundef %source, ptr noundef %predicate) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %source.addr = alloca ptr, align 8
  %predicate.addr = alloca ptr, align 8
  store ptr %source, ptr %source.addr, align 8, !tbaa !4
  store ptr %predicate, ptr %predicate.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %source.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 16, i1 false), !tbaa.struct !26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %predicate.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  %3 = load ptr, ptr %ptr, align 8, !tbaa !20
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  %4 = load i64, ptr %len1, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %5 = load i8, ptr %add.ptr2, align 1, !tbaa !25
  %call = call zeroext i1 %2(i8 noundef zeroext %5)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %len3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  %7 = load i64, ptr %len3, align 8, !tbaa !18
  %dec = add i64 %7, -1
  store i64 %dec, ptr %len3, align 8, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %8
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_left_trim_pred(ptr noundef %source, ptr noundef %predicate) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %source.addr = alloca ptr, align 8
  %predicate.addr = alloca ptr, align 8
  store ptr %source, ptr %source.addr, align 8, !tbaa !4
  store ptr %predicate, ptr %predicate.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %source.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %0, i64 16, i1 false), !tbaa.struct !26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %predicate.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  %3 = load ptr, ptr %ptr, align 8, !tbaa !20
  %4 = load i8, ptr %3, align 1, !tbaa !25
  %call = call zeroext i1 %2(i8 noundef zeroext %4)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  %6 = load i64, ptr %len1, align 8, !tbaa !18
  %dec = add i64 %6, -1
  store i64 %dec, ptr %len1, align 8, !tbaa !18
  %ptr2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  %7 = load ptr, ptr %ptr2, align 8, !tbaa !20
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %ptr2, align 8, !tbaa !20
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %8
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_trim_pred(ptr noundef %source, ptr noundef %predicate) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %source.addr = alloca ptr, align 8
  %predicate.addr = alloca ptr, align 8
  %left_trimmed = alloca %struct.aws_byte_cursor, align 8
  store ptr %source, ptr %source.addr, align 8, !tbaa !4
  store ptr %predicate, ptr %predicate.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %left_trimmed) #11
  %0 = load ptr, ptr %source.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %predicate.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_byte_cursor_left_trim_pred(ptr noundef %0, ptr noundef %1)
  %2 = getelementptr inbounds { i64, ptr }, ptr %left_trimmed, i32 0, i32 0
  %3 = extractvalue { i64, ptr } %call, 0
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %left_trimmed, i32 0, i32 1
  %5 = extractvalue { i64, ptr } %call, 1
  store ptr %5, ptr %4, align 8
  %6 = load ptr, ptr %predicate.addr, align 8, !tbaa !4
  %call1 = call { i64, ptr } @aws_byte_cursor_right_trim_pred(ptr noundef %left_trimmed, ptr noundef %6)
  %7 = getelementptr inbounds { i64, ptr }, ptr %retval, i32 0, i32 0
  %8 = extractvalue { i64, ptr } %call1, 0
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %retval, i32 0, i32 1
  %10 = extractvalue { i64, ptr } %call1, 1
  store ptr %10, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %left_trimmed) #11
  %11 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %11
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_satisfies_pred(ptr noundef %source, ptr noundef %predicate) #0 {
entry:
  %source.addr = alloca ptr, align 8
  %predicate.addr = alloca ptr, align 8
  %trimmed = alloca %struct.aws_byte_cursor, align 8
  %rval = alloca i8, align 1
  store ptr %source, ptr %source.addr, align 8, !tbaa !4
  store ptr %predicate, ptr %predicate.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %trimmed) #11
  %0 = load ptr, ptr %source.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %predicate.addr, align 8, !tbaa !4
  %call = call { i64, ptr } @aws_byte_cursor_left_trim_pred(ptr noundef %0, ptr noundef %1)
  %2 = getelementptr inbounds { i64, ptr }, ptr %trimmed, i32 0, i32 0
  %3 = extractvalue { i64, ptr } %call, 0
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %trimmed, i32 0, i32 1
  %5 = extractvalue { i64, ptr } %call, 1
  store ptr %5, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %rval) #11
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %trimmed, i32 0, i32 0
  %6 = load i64, ptr %len, align 8, !tbaa !18
  %cmp = icmp eq i64 %6, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %rval, align 1, !tbaa !21
  %7 = load i8, ptr %rval, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %7 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rval) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %trimmed) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_cursor_compare_lexical(ptr noundef %lhs, ptr noundef %rhs) #0 {
entry:
  %retval = alloca i32, align 4
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %comparison_length = alloca i64, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !4
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comparison_length) #11
  %0 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  store i64 %1, ptr %comparison_length, align 8, !tbaa !8
  %2 = load i64, ptr %comparison_length, align 8, !tbaa !8
  %3 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ugt i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %len2, align 8, !tbaa !18
  store i64 %6, ptr %comparison_length, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11
  %7 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %ptr, align 8, !tbaa !20
  %9 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %ptr3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %ptr3, align 8, !tbaa !20
  %11 = load i64, ptr %comparison_length, align 8, !tbaa !8
  %call = call i32 @memcmp(ptr noundef %8, ptr noundef %10, i64 noundef %11) #12
  store i32 %call, ptr %result, align 4, !tbaa !16
  %12 = load i32, ptr %result, align 4, !tbaa !16
  %cmp4 = icmp ne i32 %12, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %13 = load i32, ptr %result, align 4, !tbaa !16
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %len7 = getelementptr inbounds %struct.aws_byte_cursor, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %len7, align 8, !tbaa !18
  %16 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %len8 = getelementptr inbounds %struct.aws_byte_cursor, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len8, align 8, !tbaa !18
  %cmp9 = icmp ne i64 %15, %17
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %18 = load i64, ptr %comparison_length, align 8, !tbaa !8
  %19 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %len11 = getelementptr inbounds %struct.aws_byte_cursor, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %len11, align 8, !tbaa !18
  %cmp12 = icmp eq i64 %18, %20
  %21 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i32 -1, i32 1
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %comparison_length) #11
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_cursor_compare_lookup(ptr noundef %lhs, ptr noundef %rhs, ptr noundef %lookup_table) #0 {
entry:
  %retval = alloca i32, align 4
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %lookup_table.addr = alloca ptr, align 8
  %lhs_curr = alloca ptr, align 8
  %lhs_end = alloca ptr, align 8
  %rhs_curr = alloca ptr, align 8
  %rhs_end = alloca ptr, align 8
  %lhc = alloca i8, align 1
  %rhc = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !4
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !4
  store ptr %lookup_table, ptr %lookup_table.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %len3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len3, align 8, !tbaa !18
  %cmp4 = icmp eq i64 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %6 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %len7 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %len7, align 8, !tbaa !18
  %cmp8 = icmp eq i64 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else6
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else6
  br label %if.end10

if.end10:                                         ; preds = %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %lhs_curr) #11
  %8 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %ptr, align 8, !tbaa !20
  store ptr %9, ptr %lhs_curr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lhs_end) #11
  %10 = load ptr, ptr %lhs_curr, align 8, !tbaa !4
  %11 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %len12 = getelementptr inbounds %struct.aws_byte_cursor, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %len12, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %12
  store ptr %add.ptr, ptr %lhs_end, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhs_curr) #11
  %13 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %ptr13 = getelementptr inbounds %struct.aws_byte_cursor, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %ptr13, align 8, !tbaa !20
  store ptr %14, ptr %rhs_curr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhs_end) #11
  %15 = load ptr, ptr %rhs_curr, align 8, !tbaa !4
  %16 = load ptr, ptr %rhs.addr, align 8, !tbaa !4
  %len14 = getelementptr inbounds %struct.aws_byte_cursor, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len14, align 8, !tbaa !18
  %add.ptr15 = getelementptr inbounds i8, ptr %15, i64 %17
  store ptr %add.ptr15, ptr %rhs_end, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end11
  %18 = load ptr, ptr %lhs_curr, align 8, !tbaa !4
  %19 = load ptr, ptr %lhs_end, align 8, !tbaa !4
  %cmp16 = icmp ult ptr %18, %19
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load ptr, ptr %rhs_curr, align 8, !tbaa !4
  %21 = load ptr, ptr %rhs_end, align 8, !tbaa !4
  %cmp17 = icmp ult ptr %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %lhc) #11
  %23 = load ptr, ptr %lookup_table.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %lhs_curr, align 8, !tbaa !4
  %25 = load i8, ptr %24, align 1, !tbaa !25
  %idxprom = zext i8 %25 to i64
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %idxprom
  %26 = load i8, ptr %arrayidx, align 1, !tbaa !25
  store i8 %26, ptr %lhc, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %rhc) #11
  %27 = load ptr, ptr %lookup_table.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %rhs_curr, align 8, !tbaa !4
  %29 = load i8, ptr %28, align 1, !tbaa !25
  %idxprom18 = zext i8 %29 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %27, i64 %idxprom18
  %30 = load i8, ptr %arrayidx19, align 1, !tbaa !25
  store i8 %30, ptr %rhc, align 1, !tbaa !25
  %31 = load i8, ptr %lhc, align 1, !tbaa !25
  %conv = zext i8 %31 to i32
  %32 = load i8, ptr %rhc, align 1, !tbaa !25
  %conv20 = zext i8 %32 to i32
  %cmp21 = icmp slt i32 %conv, %conv20
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %while.body
  %33 = load i8, ptr %lhc, align 1, !tbaa !25
  %conv25 = zext i8 %33 to i32
  %34 = load i8, ptr %rhc, align 1, !tbaa !25
  %conv26 = zext i8 %34 to i32
  %cmp27 = icmp sgt i32 %conv25, %conv26
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %35 = load ptr, ptr %lhs_curr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %lhs_curr, align 8, !tbaa !4
  %36 = load ptr, ptr %rhs_curr, align 8, !tbaa !4
  %incdec.ptr31 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr31, ptr %rhs_curr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then23
  call void @llvm.lifetime.end.p0(i64 1, ptr %rhc) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr %lhc) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %land.end
  %37 = load ptr, ptr %lhs_curr, align 8, !tbaa !4
  %38 = load ptr, ptr %lhs_end, align 8, !tbaa !4
  %cmp33 = icmp ult ptr %37, %38
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41

if.end36:                                         ; preds = %while.end
  %39 = load ptr, ptr %rhs_curr, align 8, !tbaa !4
  %40 = load ptr, ptr %rhs_end, align 8, !tbaa !4
  %cmp37 = icmp ult ptr %39, %40
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41

if.end40:                                         ; preds = %if.end36
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41

cleanup41:                                        ; preds = %if.end40, %if.then39, %if.then35, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhs_end) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhs_curr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %lhs_end) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %lhs_curr) #11
  br label %return

return:                                           ; preds = %cleanup41, %if.then9, %if.then5, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define void @aws_byte_buf_from_c_str(ptr noalias sret(%struct.aws_byte_buf) align 8 %agg.result, ptr noundef %c_str) #0 {
entry:
  %c_str.addr = alloca ptr, align 8
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call, %cond.false ]
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 0
  store i64 %cond, ptr %len, align 8, !tbaa !12
  %len1 = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 0
  %2 = load i64, ptr %len1, align 8, !tbaa !12
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 2
  store i64 %2, ptr %capacity, align 8, !tbaa !13
  %capacity2 = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 2
  %3 = load i64, ptr %capacity2, align 8, !tbaa !13
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  %4 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi ptr [ null, %cond.true3 ], [ %4, %cond.false4 ]
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 1
  store ptr %cond6, ptr %buffer, align 8, !tbaa !10
  %allocator = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 3
  store ptr null, ptr %allocator, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind uwtable
define void @aws_byte_buf_from_array(ptr noalias sret(%struct.aws_byte_buf) align 8 %agg.result, ptr noundef %bytes, i64 noundef %len) #0 {
entry:
  %bytes.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %bytes, ptr %bytes.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %bytes.addr, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ null, %cond.false ]
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 1
  store ptr %cond, ptr %buffer, align 8, !tbaa !10
  %2 = load i64, ptr %len.addr, align 8, !tbaa !8
  %len1 = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 0
  store i64 %2, ptr %len1, align 8, !tbaa !12
  %3 = load i64, ptr %len.addr, align 8, !tbaa !8
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 2
  store i64 %3, ptr %capacity, align 8, !tbaa !13
  %allocator = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 3
  store ptr null, ptr %allocator, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_byte_buf_from_empty_array(ptr noalias sret(%struct.aws_byte_buf) align 8 %agg.result, ptr noundef %bytes, i64 noundef %capacity) #0 {
entry:
  %bytes.addr = alloca ptr, align 8
  %capacity.addr = alloca i64, align 8
  store ptr %bytes, ptr %bytes.addr, align 8, !tbaa !4
  store i64 %capacity, ptr %capacity.addr, align 8, !tbaa !8
  %0 = load i64, ptr %capacity.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %bytes.addr, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ null, %cond.false ]
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 1
  store ptr %cond, ptr %buffer, align 8, !tbaa !10
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 0
  store i64 0, ptr %len, align 8, !tbaa !12
  %2 = load i64, ptr %capacity.addr, align 8, !tbaa !8
  %capacity1 = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 2
  store i64 %2, ptr %capacity1, align 8, !tbaa !13
  %allocator = getelementptr inbounds %struct.aws_byte_buf, ptr %agg.result, i32 0, i32 3
  store ptr null, ptr %allocator, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_from_c_str(ptr noundef %c_str) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %c_str.addr = alloca ptr, align 8
  store ptr %c_str, ptr %c_str.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  store ptr %0, ptr %ptr, align 8, !tbaa !20
  %ptr1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  %1 = load ptr, ptr %ptr1, align 8, !tbaa !20
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %c_str.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %2) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  store i64 %cond, ptr %len, align 8, !tbaa !18
  %3 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %3
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_from_array(ptr noundef %bytes, i64 noundef %len) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %bytes.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %bytes, ptr %bytes.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %bytes.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  store ptr %0, ptr %ptr, align 8, !tbaa !20
  %1 = load i64, ptr %len.addr, align 8, !tbaa !8
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  store i64 %1, ptr %len1, align 8, !tbaa !18
  %2 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %2
}

; Function Attrs: nounwind uwtable
define i64 @aws_nospec_mask(i64 noundef %index, i64 noundef %bound) #0 {
entry:
  %index.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %negative_mask = alloca i64, align 8
  %toobig_mask = alloca i64, align 8
  %combined_mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8, !tbaa !8
  store i64 %bound, ptr %bound.addr, align 8, !tbaa !8
  %0 = load i64, ptr %index.addr, align 8, !tbaa !8
  %1 = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !srcloc !29
  store i64 %1, ptr %index.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %negative_mask) #11
  %2 = load i64, ptr %index.addr, align 8, !tbaa !8
  %3 = load i64, ptr %bound.addr, align 8, !tbaa !8
  %or = or i64 %2, %3
  store i64 %or, ptr %negative_mask, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %toobig_mask) #11
  %4 = load i64, ptr %bound.addr, align 8, !tbaa !8
  %5 = load i64, ptr %index.addr, align 8, !tbaa !8
  %sub = sub i64 %4, %5
  %sub1 = sub i64 %sub, 1
  store i64 %sub1, ptr %toobig_mask, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined_mask) #11
  %6 = load i64, ptr %negative_mask, align 8, !tbaa !8
  %7 = load i64, ptr %toobig_mask, align 8, !tbaa !8
  %or2 = or i64 %6, %7
  store i64 %or2, ptr %combined_mask, align 8, !tbaa !8
  %8 = load i64, ptr %combined_mask, align 8, !tbaa !8
  %not = xor i64 %8, -1
  %div = udiv i64 %not, -9223372036854775808
  store i64 %div, ptr %combined_mask, align 8, !tbaa !8
  %9 = load i64, ptr %combined_mask, align 8, !tbaa !8
  %mul = mul i64 %9, -1
  store i64 %mul, ptr %combined_mask, align 8, !tbaa !8
  %10 = load i64, ptr %combined_mask, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined_mask) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %toobig_mask) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %negative_mask) #11
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_cursor_advance_nospec(ptr noundef %cursor, i64 noundef %len) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %cursor.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store ptr %cursor, ptr %cursor.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load i64, ptr %len.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %len1, align 8, !tbaa !18
  %cmp = icmp ule i64 %0, %2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp2 = icmp ule i64 %3, 9223372036854775807
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len4, align 8, !tbaa !18
  %cmp5 = icmp ule i64 %5, 9223372036854775807
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11
  %6 = load i64, ptr %len.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len6 = getelementptr inbounds %struct.aws_byte_cursor, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %len6, align 8, !tbaa !18
  %add = add i64 %8, 1
  %call = call i64 @aws_nospec_mask(i64 noundef %6, i64 noundef %add)
  store i64 %call, ptr %mask, align 8, !tbaa !8
  %9 = load i64, ptr %len.addr, align 8, !tbaa !8
  %10 = load i64, ptr %mask, align 8, !tbaa !8
  %and = and i64 %9, %10
  store i64 %and, ptr %len.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %ptr, align 8, !tbaa !20
  %13 = ptrtoint ptr %12 to i64
  %14 = load i64, ptr %mask, align 8, !tbaa !8
  %and7 = and i64 %13, %14
  %15 = inttoptr i64 %and7 to ptr
  %16 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr8 = getelementptr inbounds %struct.aws_byte_cursor, ptr %16, i32 0, i32 1
  store ptr %15, ptr %ptr8, align 8, !tbaa !20
  %17 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len9 = getelementptr inbounds %struct.aws_byte_cursor, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %len9, align 8, !tbaa !18
  %19 = load i64, ptr %mask, align 8, !tbaa !8
  %and10 = and i64 %18, %19
  %20 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len11 = getelementptr inbounds %struct.aws_byte_cursor, ptr %20, i32 0, i32 0
  store i64 %and10, ptr %len11, align 8, !tbaa !18
  %21 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr12 = getelementptr inbounds %struct.aws_byte_cursor, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %ptr12, align 8, !tbaa !20
  %ptr13 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  store ptr %22, ptr %ptr13, align 8, !tbaa !20
  %23 = load i64, ptr %len.addr, align 8, !tbaa !8
  %24 = load i64, ptr %mask, align 8, !tbaa !8
  %and14 = and i64 %23, %24
  %len15 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  store i64 %and14, ptr %len15, align 8, !tbaa !18
  %25 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr16 = getelementptr inbounds %struct.aws_byte_cursor, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %ptr16, align 8, !tbaa !20
  %cmp17 = icmp eq ptr %26, null
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %27 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr18 = getelementptr inbounds %struct.aws_byte_cursor, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %ptr18, align 8, !tbaa !20
  %29 = load i64, ptr %len.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 %29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr, %cond.false ]
  %30 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %ptr19 = getelementptr inbounds %struct.aws_byte_cursor, ptr %30, i32 0, i32 1
  store ptr %cond, ptr %ptr19, align 8, !tbaa !20
  %31 = load i64, ptr %len.addr, align 8, !tbaa !8
  %32 = load ptr, ptr %cursor.addr, align 8, !tbaa !4
  %len20 = getelementptr inbounds %struct.aws_byte_cursor, ptr %32, i32 0, i32 0
  %33 = load i64, ptr %len20, align 8, !tbaa !18
  %sub = sub i64 %33, %31
  store i64 %sub, ptr %len20, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %ptr21 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 1
  store ptr null, ptr %ptr21, align 8, !tbaa !20
  %len22 = getelementptr inbounds %struct.aws_byte_cursor, ptr %retval, i32 0, i32 0
  store i64 0, ptr %len22, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %34 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %34
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read(ptr noalias noundef %cur, ptr noalias noundef %dest, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %cur.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %slice = alloca %struct.aws_byte_cursor, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %slice) #11
  %1 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !8
  %call = call { i64, ptr } @aws_byte_cursor_advance_nospec(ptr noundef %1, i64 noundef %2)
  %3 = getelementptr inbounds { i64, ptr }, ptr %slice, i32 0, i32 0
  %4 = extractvalue { i64, ptr } %call, 0
  store i64 %4, ptr %3, align 8
  %5 = getelementptr inbounds { i64, ptr }, ptr %slice, i32 0, i32 1
  %6 = extractvalue { i64, ptr } %call, 1
  store ptr %6, ptr %5, align 8
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %slice, i32 0, i32 1
  %7 = load ptr, ptr %ptr, align 8, !tbaa !20
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %8 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %ptr2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %slice, i32 0, i32 1
  %9 = load ptr, ptr %ptr2, align 8, !tbaa !20
  %10 = load i64, ptr %len.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %10, i1 false)
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then1
  call void @llvm.lifetime.end.p0(i64 16, ptr %slice) #11
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %11 = load i1, ptr %retval, align 1
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_and_fill_buffer(ptr noalias noundef %cur, ptr noalias noundef %dest) #0 {
entry:
  %retval = alloca i1, align 1
  %cur.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %buffer, align 8, !tbaa !10
  %3 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %capacity, align 8, !tbaa !13
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %0, ptr noundef %2, i64 noundef %4)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %capacity1 = getelementptr inbounds %struct.aws_byte_buf, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %capacity1, align 8, !tbaa !13
  %7 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %7, i32 0, i32 0
  store i64 %6, ptr %len, align 8, !tbaa !12
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1
  ret i1 %8
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_u8(ptr noalias noundef %cur, ptr noalias noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %2 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %2 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_be16(ptr noundef %cur, ptr noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %0, ptr noundef %1, i64 noundef 2)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %2 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %2 to i1
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %4 = load i16, ptr %3, align 2, !tbaa !30
  %call3 = call zeroext i16 @aws_ntoh16(i16 noundef zeroext %4)
  %5 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store i16 %call3, ptr %5, align 2, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool4 = trunc i8 %6 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool4
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @aws_ntoh16(i16 noundef zeroext %x) #3 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2, !tbaa !30
  %0 = load i16, ptr %x.addr, align 2, !tbaa !30
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %0)
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_be24(ptr noundef %cur, ptr noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %var_bytes = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %var_bytes) #11
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store ptr %0, ptr %var_bytes, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %1 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %var_bytes, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %1, ptr noundef %arrayidx, i64 noundef 3)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %3 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %3 to i1
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %var_bytes, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 0
  store i8 0, ptr %arrayidx3, align 1, !tbaa !25
  %5 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %call4 = call i32 @aws_ntoh32(i32 noundef %6)
  %7 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store i32 %call4, ptr %7, align 4, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool5 = trunc i8 %8 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %var_bytes) #11
  ret i1 %tobool5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_ntoh32(i32 noundef %x) #3 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !16
  %0 = load i32, ptr %x.addr, align 4, !tbaa !16
  %call = call i32 @__bswap_32(i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_be32(ptr noundef %cur, ptr noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %0, ptr noundef %1, i64 noundef 4)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %2 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %2 to i1
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %call3 = call i32 @aws_ntoh32(i32 noundef %4)
  %5 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store i32 %call3, ptr %5, align 4, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool4 = trunc i8 %6 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool4
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_float_be32(ptr noundef %cur, ptr noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %0, ptr noundef %1, i64 noundef 4)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %2 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %2 to i1
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %4 = load float, ptr %3, align 4, !tbaa !32
  %call3 = call float @aws_ntohf32(float noundef %4)
  %5 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store float %call3, ptr %5, align 4, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool4 = trunc i8 %6 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool4
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @aws_ntohf32(float noundef %x) #3 {
entry:
  %x.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4, !tbaa !32
  %0 = load float, ptr %x.addr, align 4, !tbaa !32
  %call = call float @aws_htonf32(float noundef %0)
  ret float %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_float_be64(ptr noundef %cur, ptr noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %0, ptr noundef %1, i64 noundef 8)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %2 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %2 to i1
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %4 = load double, ptr %3, align 8, !tbaa !34
  %call3 = call double @aws_ntohf64(double noundef %4)
  %5 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store double %call3, ptr %5, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool4 = trunc i8 %6 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool4
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @aws_ntohf64(double noundef %x) #3 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !34
  %0 = load double, ptr %x.addr, align 8, !tbaa !34
  %call = call double @aws_htonf64(double noundef %0)
  ret double %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_be64(ptr noundef %cur, ptr noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %rv = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %rv) #11
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_cursor_read(ptr noundef %0, ptr noundef %1, i64 noundef 8)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %rv, align 1, !tbaa !21
  %2 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool = trunc i8 %2 to i1
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %4 = load i64, ptr %3, align 8, !tbaa !8
  %call3 = call i64 @aws_ntoh64(i64 noundef %4)
  %5 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store i64 %call3, ptr %5, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8, ptr %rv, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool4 = trunc i8 %6 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %rv) #11
  ret i1 %tobool4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_ntoh64(i64 noundef %x) #3 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !8
  %0 = load i64, ptr %x.addr, align 8, !tbaa !8
  %call = call i64 @aws_hton64(i64 noundef %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define ptr @aws_lookup_table_hex_to_num_get() #0 {
entry:
  ret ptr @s_hex_to_num_table
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_cursor_read_hex_u8(ptr noundef %cur, ptr noundef %var) #0 {
entry:
  %cur.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %success = alloca i8, align 1
  %hi = alloca i8, align 1
  %lo = alloca i8, align 1
  store ptr %cur, ptr %cur.addr, align 8, !tbaa !4
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #11
  store i8 0, ptr %success, align 1, !tbaa !21
  %0 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !18
  %cmp = icmp uge i64 %1, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %hi) #11
  %2 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %ptr, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %idxprom = zext i8 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr @s_hex_to_num_table, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx2, align 1, !tbaa !25
  store i8 %5, ptr %hi, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %lo) #11
  %6 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %ptr3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ptr3, align 8, !tbaa !20
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx4, align 1, !tbaa !25
  %idxprom5 = zext i8 %8 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr @s_hex_to_num_table, i64 0, i64 %idxprom5
  %9 = load i8, ptr %arrayidx6, align 1, !tbaa !25
  store i8 %9, ptr %lo, align 1, !tbaa !25
  %10 = load i8, ptr %hi, align 1, !tbaa !25
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp ne i32 %conv7, 255
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %11 = load i8, ptr %lo, align 1, !tbaa !25
  %conv10 = zext i8 %11 to i32
  %cmp11 = icmp ne i32 %conv10, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %12 = phi i1 [ false, %if.then ], [ %cmp11, %land.rhs ]
  %lnot13 = xor i1 %12, true
  %lnot15 = xor i1 %lnot13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 1)
  %tobool19 = icmp ne i64 %expval18, 0
  br i1 %tobool19, label %if.then20, label %if.end

if.then20:                                        ; preds = %land.end
  %13 = load i8, ptr %hi, align 1, !tbaa !25
  %conv21 = zext i8 %13 to i32
  %shl = shl i32 %conv21, 4
  %14 = load i8, ptr %lo, align 1, !tbaa !25
  %conv22 = zext i8 %14 to i32
  %or = or i32 %shl, %conv22
  %conv23 = trunc i32 %or to i8
  %15 = load ptr, ptr %var.addr, align 8, !tbaa !4
  store i8 %conv23, ptr %15, align 1, !tbaa !25
  %16 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %ptr24 = getelementptr inbounds %struct.aws_byte_cursor, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %ptr24, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %add.ptr, ptr %ptr24, align 8, !tbaa !20
  %18 = load ptr, ptr %cur.addr, align 8, !tbaa !4
  %len25 = getelementptr inbounds %struct.aws_byte_cursor, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %len25, align 8, !tbaa !18
  %sub = sub i64 %19, 2
  store i64 %sub, ptr %len25, align 8, !tbaa !18
  store i8 1, ptr %success, align 1, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then20, %land.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %lo) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr %hi) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry
  %20 = load i8, ptr %success, align 1, !tbaa !21, !range !23, !noundef !24
  %tobool27 = trunc i8 %20 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #11
  ret i1 %tobool27
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_advance(ptr noalias noundef %buffer, ptr noalias noundef %output, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %buffer.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %tmp = alloca %struct.aws_byte_buf, align 8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %capacity, align 8, !tbaa !13
  %2 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len1, align 8, !tbaa !12
  %sub = sub i64 %1, %3
  %4 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp = icmp uge i64 %sub, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %tmp) #11
  %6 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %buffer2, align 8, !tbaa !10
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %buffer4 = getelementptr inbounds %struct.aws_byte_buf, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %buffer4, align 8, !tbaa !10
  %10 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %len5 = getelementptr inbounds %struct.aws_byte_buf, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %len5, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr, %cond.false ]
  %12 = load i64, ptr %len.addr, align 8, !tbaa !8
  call void @aws_byte_buf_from_array(ptr sret(%struct.aws_byte_buf) align 8 %tmp, ptr noundef %cond, i64 noundef %12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %tmp, i64 32, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(i64 32, ptr %tmp) #11
  %13 = load i64, ptr %len.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %len6 = getelementptr inbounds %struct.aws_byte_buf, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %len6, align 8, !tbaa !12
  %add = add i64 %15, %13
  store i64 %add, ptr %len6, align 8, !tbaa !12
  %16 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %len7 = getelementptr inbounds %struct.aws_byte_buf, ptr %16, i32 0, i32 0
  store i64 0, ptr %len7, align 8, !tbaa !12
  store i1 true, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %17 = load ptr, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 32, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %cond.end
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write(ptr noalias noundef %buf, ptr noalias noundef %src, i64 noundef %len) #0 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_buf, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %len1, align 8, !tbaa !12
  %cmp2 = icmp ugt i64 %2, 9223372036854775807
  br i1 %cmp2, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp3 = icmp ugt i64 %3, 9223372036854775807
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len5 = getelementptr inbounds %struct.aws_byte_buf, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %len5, align 8, !tbaa !12
  %6 = load i64, ptr %len.addr, align 8, !tbaa !8
  %add = add i64 %5, %6
  %7 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %capacity, align 8, !tbaa !13
  %cmp6 = icmp ugt i64 %add, %8
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end8:                                          ; preds = %lor.lhs.false4
  %9 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %buffer, align 8, !tbaa !10
  %11 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len9 = getelementptr inbounds %struct.aws_byte_buf, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %len9, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %12
  %13 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %14 = load i64, ptr %len.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %13, i64 %14, i1 false)
  %15 = load i64, ptr %len.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len10 = getelementptr inbounds %struct.aws_byte_buf, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len10, align 8, !tbaa !12
  %add11 = add i64 %17, %15
  store i64 %add11, ptr %len10, align 8, !tbaa !12
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_from_whole_buffer(ptr noalias noundef %buf, ptr noundef byval(%struct.aws_byte_buf) align 8 %src) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %src, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 8, !tbaa !10
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %src, i32 0, i32 0
  %2 = load i64, ptr %len, align 8, !tbaa !12
  %call = call zeroext i1 @aws_byte_buf_write(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noalias noundef %buf, i64 %src.coerce0, ptr %src.coerce1) #0 {
entry:
  %src = alloca %struct.aws_byte_cursor, align 8
  %buf.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %src, i32 0, i32 0
  store i64 %src.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %src, i32 0, i32 1
  store ptr %src.coerce1, ptr %1, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 1
  %3 = load ptr, ptr %ptr, align 8, !tbaa !20
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %src, i32 0, i32 0
  %4 = load i64, ptr %len, align 8, !tbaa !18
  %call = call zeroext i1 @aws_byte_buf_write(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @aws_byte_buf_write_to_capacity(ptr noundef %buf, ptr noundef %advancing_cursor) #0 {
entry:
  %retval = alloca %struct.aws_byte_cursor, align 8
  %buf.addr = alloca ptr, align 8
  %advancing_cursor.addr = alloca ptr, align 8
  %available = alloca i64, align 8
  %write_size = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %advancing_cursor, ptr %advancing_cursor.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %available) #11
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %capacity, align 8, !tbaa !13
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %sub = sub i64 %1, %3
  store i64 %sub, ptr %available, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %write_size) #11
  %4 = load i64, ptr %available, align 8, !tbaa !8
  %5 = load ptr, ptr %advancing_cursor.addr, align 8, !tbaa !4
  %len1 = getelementptr inbounds %struct.aws_byte_cursor, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %len1, align 8, !tbaa !18
  %call = call i64 @aws_min_size(i64 noundef %4, i64 noundef %6)
  store i64 %call, ptr %write_size, align 8, !tbaa !8
  %7 = load ptr, ptr %advancing_cursor.addr, align 8, !tbaa !4
  %8 = load i64, ptr %write_size, align 8, !tbaa !8
  %call2 = call { i64, ptr } @aws_byte_cursor_advance(ptr noundef %7, i64 noundef %8)
  %9 = getelementptr inbounds { i64, ptr }, ptr %retval, i32 0, i32 0
  %10 = extractvalue { i64, ptr } %call2, 0
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds { i64, ptr }, ptr %retval, i32 0, i32 1
  %12 = extractvalue { i64, ptr } %call2, 1
  store ptr %12, ptr %11, align 8
  %13 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %14 = getelementptr inbounds { i64, ptr }, ptr %retval, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds { i64, ptr }, ptr %retval, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %call3 = call zeroext i1 @aws_byte_buf_write_from_whole_cursor(ptr noundef %13, i64 %15, ptr %17)
  call void @llvm.lifetime.end.p0(i64 8, ptr %write_size) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %available) #11
  %18 = load { i64, ptr }, ptr %retval, align 8
  ret { i64, ptr } %18
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_min_size(i64 noundef %a, i64 noundef %b) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_u8(ptr noalias noundef %buf, i8 noundef zeroext %c) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i8 %c, ptr %c.addr, align 1, !tbaa !25
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_byte_buf_write(ptr noundef %0, ptr noundef %c.addr, i64 noundef 1)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_u8_n(ptr noundef %buf, i8 noundef zeroext %c, i64 noundef %count) #0 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  %count.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i8 %c, ptr %c.addr, align 1, !tbaa !25
  store i64 %count, ptr %count.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_buf, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %len, align 8, !tbaa !12
  %cmp = icmp ugt i64 %1, 9223372036854775807
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %count.addr, align 8, !tbaa !8
  %cmp1 = icmp ugt i64 %2, 9223372036854775807
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len3 = getelementptr inbounds %struct.aws_byte_buf, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %len3, align 8, !tbaa !12
  %5 = load i64, ptr %count.addr, align 8, !tbaa !8
  %add = add i64 %4, %5
  %6 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.aws_byte_buf, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %capacity, align 8, !tbaa !13
  %cmp4 = icmp ugt i64 %add, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.aws_byte_buf, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %buffer, align 8, !tbaa !10
  %10 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len5 = getelementptr inbounds %struct.aws_byte_buf, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %len5, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %11
  %12 = load i8, ptr %c.addr, align 1, !tbaa !25
  %conv = zext i8 %12 to i32
  %13 = trunc i32 %conv to i8
  %14 = load i64, ptr %count.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 %13, i64 %14, i1 false)
  %15 = load i64, ptr %count.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %len6 = getelementptr inbounds %struct.aws_byte_buf, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %len6, align 8, !tbaa !12
  %add7 = add i64 %17, %15
  store i64 %add7, ptr %len6, align 8, !tbaa !12
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i1, ptr %retval, align 1
  ret i1 %18
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_be16(ptr noundef %buf, i16 noundef zeroext %x) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca i16, align 2
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i16 %x, ptr %x.addr, align 2, !tbaa !30
  %0 = load i16, ptr %x.addr, align 2, !tbaa !30
  %call = call zeroext i16 @aws_hton16(i16 noundef zeroext %0)
  store i16 %call, ptr %x.addr, align 2, !tbaa !30
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @aws_byte_buf_write(ptr noundef %1, ptr noundef %x.addr, i64 noundef 2)
  ret i1 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @aws_hton16(i16 noundef zeroext %x) #3 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2, !tbaa !30
  %0 = load i16, ptr %x.addr, align 2, !tbaa !30
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %0)
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_be24(ptr noundef %buf, i32 noundef %x) #0 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %be32 = alloca i32, align 4
  %be32_bytes = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i32 %x, ptr %x.addr, align 4, !tbaa !16
  %0 = load i32, ptr %x.addr, align 4, !tbaa !16
  %cmp = icmp ugt i32 %0, 16777215
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %be32) #11
  %1 = load i32, ptr %x.addr, align 4, !tbaa !16
  %call = call i32 @aws_hton32(i32 noundef %1)
  store i32 %call, ptr %be32, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %be32_bytes) #11
  store ptr %be32, ptr %be32_bytes, align 8, !tbaa !4
  %2 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %be32_bytes, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 1
  %call1 = call zeroext i1 @aws_byte_buf_write(ptr noundef %2, ptr noundef %arrayidx, i64 noundef 3)
  store i1 %call1, ptr %retval, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr %be32_bytes) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %be32) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, ptr %retval, align 1
  ret i1 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_hton32(i32 noundef %x) #3 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !16
  %0 = load i32, ptr %x.addr, align 4, !tbaa !16
  %call = call i32 @__bswap_32(i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_be32(ptr noundef %buf, i32 noundef %x) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i32 %x, ptr %x.addr, align 4, !tbaa !16
  %0 = load i32, ptr %x.addr, align 4, !tbaa !16
  %call = call i32 @aws_hton32(i32 noundef %0)
  store i32 %call, ptr %x.addr, align 4, !tbaa !16
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @aws_byte_buf_write(ptr noundef %1, ptr noundef %x.addr, i64 noundef 4)
  ret i1 %call1
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_float_be32(ptr noundef %buf, float noundef %x) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !32
  %0 = load float, ptr %x.addr, align 4, !tbaa !32
  %call = call float @aws_htonf32(float noundef %0)
  store float %call, ptr %x.addr, align 4, !tbaa !32
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @aws_byte_buf_write(ptr noundef %1, ptr noundef %x.addr, i64 noundef 4)
  ret i1 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @aws_htonf32(float noundef %x) #3 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %f_storage = alloca ptr, align 8
  %ret_value = alloca float, align 4
  %ret_storage = alloca ptr, align 8
  store float %x, ptr %x.addr, align 4, !tbaa !32
  %call = call i32 @aws_is_big_endian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load float, ptr %x.addr, align 4, !tbaa !32
  store float %0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_storage) #11
  store ptr %x.addr, ptr %f_storage, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_storage) #11
  store ptr %ret_value, ptr %ret_storage, align 8, !tbaa !4
  %1 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 3
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %3 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  store i8 %2, ptr %arrayidx1, align 1, !tbaa !25
  %4 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx2, align 1, !tbaa !25
  %6 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %5, ptr %arrayidx3, align 1, !tbaa !25
  %7 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx4, align 1, !tbaa !25
  %9 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %8, ptr %arrayidx5, align 1, !tbaa !25
  %10 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx6, align 1, !tbaa !25
  %12 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 3
  store i8 %11, ptr %arrayidx7, align 1, !tbaa !25
  %13 = load float, ptr %ret_value, align 4, !tbaa !32
  store float %13, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_storage) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_storage) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load float, ptr %retval, align 4
  ret float %14
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_be64(ptr noundef %buf, i64 noundef %x) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %x, ptr %x.addr, align 8, !tbaa !8
  %0 = load i64, ptr %x.addr, align 8, !tbaa !8
  %call = call i64 @aws_hton64(i64 noundef %0)
  store i64 %call, ptr %x.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @aws_byte_buf_write(ptr noundef %1, ptr noundef %x.addr, i64 noundef 8)
  ret i1 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_hton64(i64 noundef %x) #3 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %v = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !8
  %call = call i32 @aws_is_big_endian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %x.addr, align 8, !tbaa !8
  store i64 %0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #11
  %1 = load i64, ptr %x.addr, align 8, !tbaa !8
  %2 = call i64 asm "bswap ${0:q}", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !srcloc !36
  store i64 %2, ptr %v, align 8, !tbaa !8
  %3 = load i64, ptr %v, align 8, !tbaa !8
  store i64 %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_byte_buf_write_float_be64(ptr noundef %buf, double noundef %x) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %x.addr = alloca double, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store double %x, ptr %x.addr, align 8, !tbaa !34
  %0 = load double, ptr %x.addr, align 8, !tbaa !34
  %call = call double @aws_htonf64(double noundef %0)
  store double %call, ptr %x.addr, align 8, !tbaa !34
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @aws_byte_buf_write(ptr noundef %1, ptr noundef %x.addr, i64 noundef 8)
  ret i1 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @aws_htonf64(double noundef %x) #3 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %f_storage = alloca ptr, align 8
  %ret_value = alloca double, align 8
  %ret_storage = alloca ptr, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !34
  %call = call i32 @aws_is_big_endian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load double, ptr %x.addr, align 8, !tbaa !34
  store double %0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_storage) #11
  store ptr %x.addr, ptr %f_storage, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_value) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_storage) #11
  store ptr %ret_value, ptr %ret_storage, align 8, !tbaa !4
  %1 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 7
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %3 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  store i8 %2, ptr %arrayidx1, align 1, !tbaa !25
  %4 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 6
  %5 = load i8, ptr %arrayidx2, align 1, !tbaa !25
  %6 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %5, ptr %arrayidx3, align 1, !tbaa !25
  %7 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 5
  %8 = load i8, ptr %arrayidx4, align 1, !tbaa !25
  %9 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %8, ptr %arrayidx5, align 1, !tbaa !25
  %10 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 4
  %11 = load i8, ptr %arrayidx6, align 1, !tbaa !25
  %12 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 3
  store i8 %11, ptr %arrayidx7, align 1, !tbaa !25
  %13 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 3
  %14 = load i8, ptr %arrayidx8, align 1, !tbaa !25
  %15 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i8, ptr %15, i64 4
  store i8 %14, ptr %arrayidx9, align 1, !tbaa !25
  %16 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx10, align 1, !tbaa !25
  %18 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, ptr %18, i64 5
  store i8 %17, ptr %arrayidx11, align 1, !tbaa !25
  %19 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i8, ptr %arrayidx12, align 1, !tbaa !25
  %21 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i8, ptr %21, i64 6
  store i8 %20, ptr %arrayidx13, align 1, !tbaa !25
  %22 = load ptr, ptr %f_storage, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx14, align 1, !tbaa !25
  %24 = load ptr, ptr %ret_storage, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds i8, ptr %24, i64 7
  store i8 %23, ptr %arrayidx15, align 1, !tbaa !25
  %25 = load double, ptr %ret_value, align 8, !tbaa !34
  store double %25, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_storage) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_value) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_storage) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load double, ptr %retval, align 8
  ret double %26
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_buf_append_null_terminator(ptr noundef %buf) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %call = call i32 @aws_byte_buf_append_dynamic(ptr noundef %0, ptr noundef @s_null_terminator_cursor)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_isalnum(i8 noundef zeroext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1, !tbaa !25
  %0 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp sge i32 %conv5, 65
  br i1 %cmp6, label %land.lhs.true8, label %lor.rhs

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %3 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv9 = zext i8 %3 to i32
  %cmp10 = icmp sle i32 %conv9, 90
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true8, %lor.lhs.false
  %4 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv12 = zext i8 %4 to i32
  %cmp13 = icmp sge i32 %conv12, 48
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv15 = zext i8 %5 to i32
  %cmp16 = icmp sle i32 %conv15, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp16, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true8, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true8 ], [ true, %land.lhs.true ], [ %6, %land.end ]
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_isalpha(i8 noundef zeroext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1, !tbaa !25
  %0 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp sge i32 %conv5, 65
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv8 = zext i8 %3 to i32
  %cmp9 = icmp sle i32 %conv8, 90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %cmp9, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  ret i1 %5
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_isdigit(i8 noundef zeroext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1, !tbaa !25
  %0 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_isxdigit(i8 noundef zeroext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1, !tbaa !25
  %0 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp sge i32 %conv5, 97
  br i1 %cmp6, label %land.lhs.true8, label %lor.rhs

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %3 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv9 = zext i8 %3 to i32
  %cmp10 = icmp sle i32 %conv9, 102
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true8, %lor.lhs.false
  %4 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv12 = zext i8 %4 to i32
  %cmp13 = icmp sge i32 %conv12, 65
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv15 = zext i8 %5 to i32
  %cmp16 = icmp sle i32 %conv15, 70
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp16, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true8, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true8 ], [ true, %land.lhs.true ], [ %6, %land.end ]
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define zeroext i1 @aws_isspace(i8 noundef zeroext %ch) #0 {
entry:
  %retval = alloca i1, align 1
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1, !tbaa !25
  %0 = load i8, ptr %ch.addr, align 1, !tbaa !25
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, ptr %retval, align 1
  ret i1 %1
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_cursor_utf8_parse_u64(i64 %cursor.coerce0, ptr %cursor.coerce1, ptr noundef %dst) #0 {
entry:
  %cursor = alloca %struct.aws_byte_cursor, align 8
  %dst.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 0
  store i64 %cursor.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 1
  store ptr %cursor.coerce1, ptr %1, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %3 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 0
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %call = call i32 @s_read_unsigned(i64 %4, ptr %6, ptr noundef %2, i8 noundef zeroext 10)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_read_unsigned(i64 %cursor.coerce0, ptr %cursor.coerce1, ptr noundef %dst, i8 noundef zeroext %base) #0 {
entry:
  %retval = alloca i32, align 4
  %cursor = alloca %struct.aws_byte_cursor, align 8
  %dst.addr = alloca ptr, align 8
  %base.addr = alloca i8, align 1
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hex_to_num_table = alloca ptr, align 8
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %cval = alloca i8, align 1
  %0 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 0
  store i64 %cursor.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 1
  store ptr %cursor.coerce1, ptr %1, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store i8 %base, ptr %base.addr, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11
  store i64 0, ptr %val, align 8, !tbaa !8
  %2 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  store i64 0, ptr %2, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %cursor, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !18
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %hex_to_num_table) #11
  %call1 = call ptr @aws_lookup_table_hex_to_num_get()
  store ptr %call1, ptr %hex_to_num_table, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !tbaa !8
  %len2 = getelementptr inbounds %struct.aws_byte_cursor, ptr %cursor, i32 0, i32 0
  %5 = load i64, ptr %len2, align 8, !tbaa !18
  %cmp3 = icmp ult i64 %4, %5
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %cursor, i32 0, i32 1
  %6 = load ptr, ptr %ptr, align 8, !tbaa !20
  %7 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !25
  store i8 %8, ptr %c, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr %cval) #11
  %9 = load ptr, ptr %hex_to_num_table, align 8, !tbaa !4
  %10 = load i8, ptr %c, align 1, !tbaa !25
  %idxprom = zext i8 %10 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %11 = load i8, ptr %arrayidx4, align 1, !tbaa !25
  store i8 %11, ptr %cval, align 1, !tbaa !25
  %12 = load i8, ptr %cval, align 1, !tbaa !25
  %conv = zext i8 %12 to i32
  %13 = load i8, ptr %base.addr, align 1, !tbaa !25
  %conv5 = zext i8 %13 to i32
  %cmp6 = icmp sge i32 %conv, %conv5
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.body
  %call9 = call i32 @aws_raise_error(i32 noundef 34)
  store i32 %call9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %14 = load i64, ptr %val, align 8, !tbaa !8
  %15 = load i8, ptr %base.addr, align 1, !tbaa !25
  %conv11 = zext i8 %15 to i64
  %call12 = call i32 @aws_mul_u64_checked(i64 noundef %14, i64 noundef %conv11, ptr noundef %val)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %16 = load i64, ptr %val, align 8, !tbaa !8
  %17 = load i8, ptr %cval, align 1, !tbaa !25
  %conv16 = zext i8 %17 to i64
  %call17 = call i32 @aws_add_u64_checked(i64 noundef %16, i64 noundef %conv16, ptr noundef %val)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %call20 = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.then13, %if.then8
  call void @llvm.lifetime.end.p0(i64 1, ptr %cval) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %18, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond

cleanup23:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest24 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest24, label %cleanup25 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup23
  %19 = load i64, ptr %val, align 8, !tbaa !8
  %20 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  store i64 %19, ptr %20, align 8, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %for.end, %cleanup23
  call void @llvm.lifetime.end.p0(i64 8, ptr %hex_to_num_table) #11
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @aws_byte_cursor_utf8_parse_u64_hex(i64 %cursor.coerce0, ptr %cursor.coerce1, ptr noundef %dst) #0 {
entry:
  %cursor = alloca %struct.aws_byte_cursor, align 8
  %dst.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 0
  store i64 %cursor.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 1
  store ptr %cursor.coerce1, ptr %1, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %3 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 0
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds { i64, ptr }, ptr %cursor, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %call = call i32 @s_read_unsigned(i64 %4, ptr %6, ptr noundef %2, i8 noundef zeroext 16)
  ret i32 %call
}

declare void @aws_raise_error_private(i32 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #3 {
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
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #3 {
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
  %3 = load ptr, ptr %data, align 8, !tbaa !37
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 389) #14
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !37
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !38
  %8 = load i64, ptr %index.addr, align 8, !tbaa !8
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !38
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
  %1 = load i64, ptr %length, align 8, !tbaa !39
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !37
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 342) #14
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #11
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !39
  store i64 %5, ptr %len, align 8, !tbaa !8
  %6 = load i64, ptr %len, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #11
  ret i64 %6
}

declare i32 @aws_last_error() #1

declare i32 @aws_array_list_ensure_capacity(ptr noundef, i64 noundef) #1

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #9

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_add_size_saturating(i64 noundef %a, i64 noundef %b) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
  %call = call i64 @aws_add_u64_saturating(i64 noundef %0, i64 noundef %1)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_add_u64_saturating(i64 noundef %a, i64 noundef %b) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #3 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, ptr %__bsx.addr, align 2, !tbaa !30
  %0 = load i16, ptr %__bsx.addr, align 2, !tbaa !30
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %1 = load i16, ptr %__bsx.addr, align 2, !tbaa !30
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 255
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__bswap_32(i32 noundef %__bsx) #3 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, ptr %__bsx.addr, align 4, !tbaa !16
  %0 = load i32, ptr %__bsx.addr, align 4, !tbaa !16
  %and = and i32 %0, -16777216
  %shr = lshr i32 %and, 24
  %1 = load i32, ptr %__bsx.addr, align 4, !tbaa !16
  %and1 = and i32 %1, 16711680
  %shr2 = lshr i32 %and1, 8
  %or = or i32 %shr, %shr2
  %2 = load i32, ptr %__bsx.addr, align 4, !tbaa !16
  %and3 = and i32 %2, 65280
  %shl = shl i32 %and3, 8
  %or4 = or i32 %or, %shl
  %3 = load i32, ptr %__bsx.addr, align 4, !tbaa !16
  %and5 = and i32 %3, 255
  %shl6 = shl i32 %and5, 24
  %or7 = or i32 %or4, %shl6
  ret i32 %or7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_is_big_endian() #3 {
entry:
  %z = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %z) #11
  store i16 256, ptr %z, align 2, !tbaa !30
  %0 = load i8, ptr %z, align 2, !tbaa !25
  %conv = zext i8 %0 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr %z) #11
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #3 {
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind memory(none) }
attributes #14 = { noreturn }

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
!10 = !{!11, !5, i64 8}
!11 = !{!"aws_byte_buf", !9, i64 0, !5, i64 8, !9, i64 16, !5, i64 24}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 16}
!14 = !{!11, !5, i64 24}
!15 = !{i64 0, i64 8, !8, i64 8, i64 8, !4, i64 16, i64 8, !8, i64 24, i64 8, !4}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = !{!19, !9, i64 0}
!19 = !{!"aws_byte_cursor", !9, i64 0, !5, i64 8}
!20 = !{!19, !5, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"_Bool", !6, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!6, !6, i64 0}
!26 = !{i64 0, i64 8, !8, i64 8, i64 8, !4}
!27 = !{!28, !5, i64 0}
!28 = !{!"aws_array_list", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32}
!29 = !{i64 35688}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !6, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !6, i64 0}
!36 = !{i64 690318}
!37 = !{!28, !5, i64 32}
!38 = !{!28, !9, i64 24}
!39 = !{!28, !9, i64 16}

; ModuleID = 'samples/451.bc'
source_filename = "common/alone_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [5 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_alone_coder = type { %struct.lzma_next_coder_s, i32, i64, [13 x i8] }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lzma_alone_encoder(ptr noundef %strm, ptr noundef %options) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %ret_ = alloca i32, align 4
  %ret_2 = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  store ptr %options, ptr %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %0 = load ptr, ptr %strm.addr, align 8
  %call = call i32 @lzma_strm_init(ptr noundef %0)
  store i32 %call, ptr %ret_, align 4
  %1 = load i32, ptr %ret_, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body1
  %2 = load i32, ptr %ret_, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body1
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %strm.addr, align 8
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %internal, align 8
  %next = getelementptr inbounds %struct.lzma_internal_s, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %strm.addr, align 8
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %allocator, align 8
  %7 = load ptr, ptr %options.addr, align 8
  %call3 = call i32 @alone_encoder_init(ptr noundef %next, ptr noundef %6, ptr noundef %7)
  store i32 %call3, ptr %ret_2, align 4
  %8 = load i32, ptr %ret_2, align 4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  %9 = load ptr, ptr %strm.addr, align 8
  call void @lzma_end(ptr noundef %9) #5
  %10 = load i32, ptr %ret_2, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %do.end
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  %11 = load ptr, ptr %strm.addr, align 8
  %internal8 = getelementptr inbounds %struct.lzma_stream, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %internal8, align 8
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %12, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x i8], ptr %supported_actions, i64 0, i64 0
  store i8 1, ptr %arrayidx, align 8
  %13 = load ptr, ptr %strm.addr, align 8
  %internal9 = getelementptr inbounds %struct.lzma_stream, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %internal9, align 8
  %supported_actions10 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [5 x i8], ptr %supported_actions10, i64 0, i64 3
  store i8 1, ptr %arrayidx11, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end7, %if.then5, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @lzma_strm_init(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alone_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) #0 {
entry:
  %retval = alloca i32, align 4
  %next.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %coder = alloca ptr, align 8
  %.compoundliteral = alloca %struct.lzma_next_coder_s, align 8
  %d = alloca i32, align 4
  %filters = alloca [2 x %struct.lzma_filter_info_s], align 16
  store ptr %next, ptr %next.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  store ptr %options, ptr %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %next.addr, align 8
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %init, align 8
  %cmp = icmp ne i64 ptrtoint (ptr @alone_encoder_init to i64), %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr %next.addr, align 8
  %3 = load ptr, ptr %allocator.addr, align 8
  call void @lzma_next_end(ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %4 = load ptr, ptr %next.addr, align 8
  %init1 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %4, i32 0, i32 2
  store i64 ptrtoint (ptr @alone_encoder_init to i64), ptr %init1, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load ptr, ptr %next.addr, align 8
  %coder2 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %coder2, align 8
  store ptr %6, ptr %coder, align 8
  %7 = load ptr, ptr %coder, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %do.end
  %8 = load ptr, ptr %allocator.addr, align 8
  %call = call noalias ptr @lzma_alloc(i64 noundef 104, ptr noundef %8)
  store ptr %call, ptr %coder, align 8
  %9 = load ptr, ptr %coder, align 8
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  store i32 5, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then4
  %10 = load ptr, ptr %coder, align 8
  %11 = load ptr, ptr %next.addr, align 8
  %coder8 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %11, i32 0, i32 0
  store ptr %10, ptr %coder8, align 8
  %12 = load ptr, ptr %next.addr, align 8
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %12, i32 0, i32 3
  store ptr @alone_encode, ptr %code, align 8
  %13 = load ptr, ptr %next.addr, align 8
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %13, i32 0, i32 4
  store ptr @alone_encoder_end, ptr %end, align 8
  %14 = load ptr, ptr %coder, align 8
  %next9 = getelementptr inbounds %struct.lzma_alone_coder, ptr %14, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 72, i1 false)
  %id = getelementptr inbounds %struct.lzma_next_coder_s, ptr %.compoundliteral, i32 0, i32 1
  store i64 -1, ptr %id, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %next9, ptr align 8 %.compoundliteral, i64 72, i1 false)
  br label %if.end14

if.end14:                                         ; preds = %if.end7, %do.end
  %15 = load ptr, ptr %coder, align 8
  %sequence = getelementptr inbounds %struct.lzma_alone_coder, ptr %15, i32 0, i32 1
  store i32 0, ptr %sequence, align 8
  %16 = load ptr, ptr %coder, align 8
  %header_pos = getelementptr inbounds %struct.lzma_alone_coder, ptr %16, i32 0, i32 2
  store i64 0, ptr %header_pos, align 8
  %17 = load ptr, ptr %options.addr, align 8
  %18 = load ptr, ptr %coder, align 8
  %header = getelementptr inbounds %struct.lzma_alone_coder, ptr %18, i32 0, i32 3
  %arraydecay = getelementptr inbounds [13 x i8], ptr %header, i64 0, i64 0
  %call15 = call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %17, ptr noundef %arraydecay)
  br i1 %call15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  store i32 8, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end14
  %19 = load ptr, ptr %options.addr, align 8
  %dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %dict_size, align 8
  %cmp18 = icmp ult i32 %20, 4096
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 8, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %21 = load ptr, ptr %options.addr, align 8
  %dict_size21 = getelementptr inbounds %struct.lzma_options_lzma, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %dict_size21, align 8
  %sub = sub i32 %22, 1
  store i32 %sub, ptr %d, align 4
  %23 = load i32, ptr %d, align 4
  %shr = lshr i32 %23, 2
  %24 = load i32, ptr %d, align 4
  %or = or i32 %24, %shr
  store i32 %or, ptr %d, align 4
  %25 = load i32, ptr %d, align 4
  %shr22 = lshr i32 %25, 3
  %26 = load i32, ptr %d, align 4
  %or23 = or i32 %26, %shr22
  store i32 %or23, ptr %d, align 4
  %27 = load i32, ptr %d, align 4
  %shr24 = lshr i32 %27, 4
  %28 = load i32, ptr %d, align 4
  %or25 = or i32 %28, %shr24
  store i32 %or25, ptr %d, align 4
  %29 = load i32, ptr %d, align 4
  %shr26 = lshr i32 %29, 8
  %30 = load i32, ptr %d, align 4
  %or27 = or i32 %30, %shr26
  store i32 %or27, ptr %d, align 4
  %31 = load i32, ptr %d, align 4
  %shr28 = lshr i32 %31, 16
  %32 = load i32, ptr %d, align 4
  %or29 = or i32 %32, %shr28
  store i32 %or29, ptr %d, align 4
  %33 = load i32, ptr %d, align 4
  %cmp30 = icmp ne i32 %33, -1
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end20
  %34 = load i32, ptr %d, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %d, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end20
  %35 = load ptr, ptr %coder, align 8
  %header33 = getelementptr inbounds %struct.lzma_alone_coder, ptr %35, i32 0, i32 3
  %arraydecay34 = getelementptr inbounds [13 x i8], ptr %header33, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay34, i64 1
  %36 = load i32, ptr %d, align 4
  call void @write32ne(ptr noundef %add.ptr, i32 noundef %36)
  %37 = load ptr, ptr %coder, align 8
  %header35 = getelementptr inbounds %struct.lzma_alone_coder, ptr %37, i32 0, i32 3
  %arraydecay36 = getelementptr inbounds [13 x i8], ptr %header35, i64 0, i64 0
  %add.ptr37 = getelementptr inbounds i8, ptr %arraydecay36, i64 1
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 4
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr38, i8 -1, i64 8, i1 false)
  %arrayinit.begin = getelementptr inbounds [2 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 0
  %id39 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %arrayinit.begin, i32 0, i32 0
  store i64 0, ptr %id39, align 8
  %init40 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %arrayinit.begin, i32 0, i32 1
  store ptr @lzma_lzma_encoder_init, ptr %init40, align 8
  %options41 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %arrayinit.begin, i32 0, i32 2
  %38 = load ptr, ptr %options.addr, align 8
  store ptr %38, ptr %options41, align 8
  %arrayinit.element = getelementptr inbounds %struct.lzma_filter_info_s, ptr %arrayinit.begin, i64 1
  call void @llvm.memset.p0.i64(ptr align 8 %arrayinit.element, i8 0, i64 24, i1 false)
  %39 = load ptr, ptr %coder, align 8
  %next45 = getelementptr inbounds %struct.lzma_alone_coder, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %allocator.addr, align 8
  %arraydecay46 = getelementptr inbounds [2 x %struct.lzma_filter_info_s], ptr %filters, i64 0, i64 0
  %call47 = call i32 @lzma_next_filter_init(ptr noundef %next45, ptr noundef %40, ptr noundef %arraydecay46)
  store i32 %call47, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then19, %if.then16, %if.then6
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare void @lzma_end(ptr noundef) #2

declare void @lzma_next_end(ptr noundef, ptr noundef) #1

declare noalias ptr @lzma_alloc(i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alone_encode(ptr noundef %coder_ptr, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 {
entry:
  %retval = alloca i32, align 4
  %coder_ptr.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %in_pos.addr = alloca ptr, align 8
  %in_size.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %out_pos.addr = alloca ptr, align 8
  %out_size.addr = alloca i64, align 8
  %action.addr = alloca i32, align 4
  %coder = alloca ptr, align 8
  store ptr %coder_ptr, ptr %coder_ptr.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %in_pos, ptr %in_pos.addr, align 8
  store i64 %in_size, ptr %in_size.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %out_pos, ptr %out_pos.addr, align 8
  store i64 %out_size, ptr %out_size.addr, align 8
  store i32 %action, ptr %action.addr, align 4
  %0 = load ptr, ptr %coder_ptr.addr, align 8
  store ptr %0, ptr %coder, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load ptr, ptr %out_pos.addr, align 8
  %2 = load i64, ptr %1, align 8
  %3 = load i64, ptr %out_size.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %coder, align 8
  %sequence = getelementptr inbounds %struct.lzma_alone_coder, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %sequence, align 8
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load ptr, ptr %coder, align 8
  %header = getelementptr inbounds %struct.lzma_alone_coder, ptr %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [13 x i8], ptr %header, i64 0, i64 0
  %7 = load ptr, ptr %coder, align 8
  %header_pos = getelementptr inbounds %struct.lzma_alone_coder, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %out.addr, align 8
  %9 = load ptr, ptr %out_pos.addr, align 8
  %10 = load i64, ptr %out_size.addr, align 8
  %call = call i64 @lzma_bufcpy(ptr noundef %arraydecay, ptr noundef %header_pos, i64 noundef 13, ptr noundef %8, ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %coder, align 8
  %header_pos1 = getelementptr inbounds %struct.lzma_alone_coder, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %header_pos1, align 8
  %cmp2 = icmp ult i64 %12, 13
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %13 = load ptr, ptr %coder, align 8
  %sequence3 = getelementptr inbounds %struct.lzma_alone_coder, ptr %13, i32 0, i32 1
  store i32 1, ptr %sequence3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %14 = load ptr, ptr %coder, align 8
  %next = getelementptr inbounds %struct.lzma_alone_coder, ptr %14, i32 0, i32 0
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i32 0, i32 3
  %15 = load ptr, ptr %code, align 8
  %16 = load ptr, ptr %coder, align 8
  %next5 = getelementptr inbounds %struct.lzma_alone_coder, ptr %16, i32 0, i32 0
  %coder6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next5, i32 0, i32 0
  %17 = load ptr, ptr %coder6, align 8
  %18 = load ptr, ptr %allocator.addr, align 8
  %19 = load ptr, ptr %in.addr, align 8
  %20 = load ptr, ptr %in_pos.addr, align 8
  %21 = load i64, ptr %in_size.addr, align 8
  %22 = load ptr, ptr %out.addr, align 8
  %23 = load ptr, ptr %out_pos.addr, align 8
  %24 = load i64, ptr %out_size.addr, align 8
  %25 = load i32, ptr %action.addr, align 4
  %call7 = call i32 %15(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %21, ptr noundef %22, ptr noundef %23, i64 noundef %24, i32 noundef %25)
  store i32 %call7, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 11, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %sw.default, %sw.bb4, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alone_encoder_end(ptr noundef %coder_ptr, ptr noundef %allocator) #0 {
entry:
  %coder_ptr.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %coder = alloca ptr, align 8
  store ptr %coder_ptr, ptr %coder_ptr.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  %0 = load ptr, ptr %coder_ptr.addr, align 8
  store ptr %0, ptr %coder, align 8
  %1 = load ptr, ptr %coder, align 8
  %next = getelementptr inbounds %struct.lzma_alone_coder, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %allocator.addr, align 8
  call void @lzma_next_end(ptr noundef %next, ptr noundef %2)
  %3 = load ptr, ptr %coder, align 8
  %4 = load ptr, ptr %allocator.addr, align 8
  call void @lzma_free(ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write32ne(ptr noundef %buf, i32 noundef %num) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %num, ptr %num.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  %1 = load ptr, ptr %buf.addr, align 8
  store i32 %0, ptr %1, align 4
  ret void
}

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare void @lzma_free(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}

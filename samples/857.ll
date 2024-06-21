; ModuleID = 'samples/857.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/jdmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdcmjpeg16_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gdcmjpeg16_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.gdcmjpeg16_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.gdcmjpeg16_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64 }
%struct.my_marker_reader = type { %struct.jpeg_marker_reader, ptr, [16 x ptr], i32, [16 x i32], ptr, i32 }
%struct.jpeg_marker_struct = type { ptr, i8, i32, i32, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

@gdcmjpeg16_jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define i32 @gdcmjpeg16_jpeg_resync_to_restart(ptr noundef %cinfo, i32 noundef %desired) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %desired.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  %action = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %desired, ptr %desired.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %marker) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 77
  %1 = load i32, ptr %unread_marker, align 4, !tbaa !10
  store i32 %1, ptr %marker, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %action) #4
  store i32 1, ptr %action, align 4, !tbaa !8
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %3, i32 0, i32 5
  store i32 129, ptr %msg_code, align 8, !tbaa !15
  %4 = load i32, ptr %marker, align 4, !tbaa !8
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err1, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %6, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %4, ptr %arrayidx, align 4, !tbaa !18
  %7 = load i32, ptr %desired.addr, align 4, !tbaa !8
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err2 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err2, align 8, !tbaa !14
  %msg_parm3 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %msg_parm3, i64 0, i64 1
  store i32 %7, ptr %arrayidx4, align 4, !tbaa !18
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err5 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err5, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %12(ptr noundef %13, i32 noundef -1)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %14 = load i32, ptr %marker, align 4, !tbaa !8
  %cmp = icmp slt i32 %14, 192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 2, ptr %action, align 4, !tbaa !8
  br label %if.end31

if.else:                                          ; preds = %for.cond
  %15 = load i32, ptr %marker, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %15, 208
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %16 = load i32, ptr %marker, align 4, !tbaa !8
  %cmp7 = icmp sgt i32 %16, 215
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  store i32 3, ptr %action, align 4, !tbaa !8
  br label %if.end30

if.else9:                                         ; preds = %lor.lhs.false
  %17 = load i32, ptr %marker, align 4, !tbaa !8
  %18 = load i32, ptr %desired.addr, align 4, !tbaa !8
  %add = add nsw i32 %18, 1
  %and = and i32 %add, 7
  %add10 = add nsw i32 208, %and
  %cmp11 = icmp eq i32 %17, %add10
  br i1 %cmp11, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else9
  %19 = load i32, ptr %marker, align 4, !tbaa !8
  %20 = load i32, ptr %desired.addr, align 4, !tbaa !8
  %add13 = add nsw i32 %20, 2
  %and14 = and i32 %add13, 7
  %add15 = add nsw i32 208, %and14
  %cmp16 = icmp eq i32 %19, %add15
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false12, %if.else9
  store i32 3, ptr %action, align 4, !tbaa !8
  br label %if.end29

if.else18:                                        ; preds = %lor.lhs.false12
  %21 = load i32, ptr %marker, align 4, !tbaa !8
  %22 = load i32, ptr %desired.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %22, 1
  %and19 = and i32 %sub, 7
  %add20 = add nsw i32 208, %and19
  %cmp21 = icmp eq i32 %21, %add20
  br i1 %cmp21, label %if.then27, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.else18
  %23 = load i32, ptr %marker, align 4, !tbaa !8
  %24 = load i32, ptr %desired.addr, align 4, !tbaa !8
  %sub23 = sub nsw i32 %24, 2
  %and24 = and i32 %sub23, 7
  %add25 = add nsw i32 208, %and24
  %cmp26 = icmp eq i32 %23, %add25
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %lor.lhs.false22, %if.else18
  store i32 2, ptr %action, align 4, !tbaa !8
  br label %if.end

if.else28:                                        ; preds = %lor.lhs.false22
  store i32 1, ptr %action, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else28, %if.then27
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then17
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err32 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err32, align 8, !tbaa !14
  %msg_code33 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %26, i32 0, i32 5
  store i32 103, ptr %msg_code33, align 8, !tbaa !15
  %27 = load i32, ptr %marker, align 4, !tbaa !8
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err34 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err34, align 8, !tbaa !14
  %msg_parm35 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %29, i32 0, i32 6
  %arrayidx36 = getelementptr inbounds [8 x i32], ptr %msg_parm35, i64 0, i64 0
  store i32 %27, ptr %arrayidx36, align 4, !tbaa !18
  %30 = load i32, ptr %action, align 4, !tbaa !8
  %31 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err37 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %err37, align 8, !tbaa !14
  %msg_parm38 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %32, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %msg_parm38, i64 0, i64 1
  store i32 %30, ptr %arrayidx39, align 4, !tbaa !18
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err40 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err40, align 8, !tbaa !14
  %emit_message41 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %emit_message41, align 8, !tbaa !19
  %36 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %35(ptr noundef %36, i32 noundef 4)
  %37 = load i32, ptr %action, align 4, !tbaa !8
  switch i32 %37, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb43
    i32 3, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.end31
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker42 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %38, i32 0, i32 77
  store i32 0, ptr %unread_marker42, align 4, !tbaa !10
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %if.end31
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 @next_marker(ptr noundef %39)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end45, label %if.then44

if.then44:                                        ; preds = %sw.bb43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %sw.bb43
  %40 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker46 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %40, i32 0, i32 77
  %41 = load i32, ptr %unread_marker46, align 4, !tbaa !10
  store i32 %41, ptr %marker, align 4, !tbaa !8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end31
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end31, %if.end45
  br label %for.cond

cleanup:                                          ; preds = %sw.bb47, %if.then44, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %action) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %marker) #4
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @next_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %if.end53, %entry
  br label %do.body

do.body:                                          ; preds = %for.cond
  %6 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8, !tbaa !21
  store ptr %11, ptr %next_input_byte, align 8, !tbaa !4
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer5 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8, !tbaa !23
  store i64 %13, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %15 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %conv = zext i8 %16 to i32
  store i32 %conv, ptr %c, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %do.end27, %do.end
  %17 = load i32, ptr %c, align 4, !tbaa !8
  %cmp7 = icmp ne i32 %17, 255
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %18, i32 0, i32 83
  %19 = load ptr, ptr %marker, align 8, !tbaa !26
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %discarded_bytes, align 4, !tbaa !27
  %inc = add i32 %20, 1
  store i32 %inc, ptr %discarded_bytes, align 4, !tbaa !27
  %21 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %22 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte9 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %22, i32 0, i32 0
  store ptr %21, ptr %next_input_byte9, align 8, !tbaa !21
  %23 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %24 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer10 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %24, i32 0, i32 1
  store i64 %23, ptr %bytes_in_buffer10, align 8, !tbaa !23
  br label %do.body11

do.body11:                                        ; preds = %while.body
  %25 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp12 = icmp eq i64 %25, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %do.body11
  %26 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer15 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %fill_input_buffer15, align 8, !tbaa !25
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call16 = call i32 %27(ptr noundef %28)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  %29 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte20 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %next_input_byte20, align 8, !tbaa !21
  store ptr %30, ptr %next_input_byte, align 8, !tbaa !4
  %31 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer21 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %31, i32 0, i32 1
  %32 = load i64, ptr %bytes_in_buffer21, align 8, !tbaa !23
  store i64 %32, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %do.body11
  %33 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec23 = add i64 %33, -1
  store i64 %dec23, ptr %bytes_in_buffer, align 8, !tbaa !24
  %34 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr24 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr24, ptr %next_input_byte, align 8, !tbaa !4
  %35 = load i8, ptr %34, align 1, !tbaa !18
  %conv25 = zext i8 %35 to i32
  store i32 %conv25, ptr %c, align 4, !tbaa !8
  br label %do.cond26

do.cond26:                                        ; preds = %if.end22
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  br label %do.body28

do.body28:                                        ; preds = %do.cond46, %while.end
  br label %do.body29

do.body29:                                        ; preds = %do.body28
  %36 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp30 = icmp eq i64 %36, 0
  br i1 %cmp30, label %if.then32, label %if.end40

if.then32:                                        ; preds = %do.body29
  %37 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer33 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %fill_input_buffer33, align 8, !tbaa !25
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call34 = call i32 %38(ptr noundef %39)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.then32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.then32
  %40 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte38 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %next_input_byte38, align 8, !tbaa !21
  store ptr %41, ptr %next_input_byte, align 8, !tbaa !4
  %42 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer39 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %42, i32 0, i32 1
  %43 = load i64, ptr %bytes_in_buffer39, align 8, !tbaa !23
  store i64 %43, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %do.body29
  %44 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec41 = add i64 %44, -1
  store i64 %dec41, ptr %bytes_in_buffer, align 8, !tbaa !24
  %45 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr42 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr42, ptr %next_input_byte, align 8, !tbaa !4
  %46 = load i8, ptr %45, align 1, !tbaa !18
  %conv43 = zext i8 %46 to i32
  store i32 %conv43, ptr %c, align 4, !tbaa !8
  br label %do.cond44

do.cond44:                                        ; preds = %if.end40
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %do.cond46

do.cond46:                                        ; preds = %do.end45
  %47 = load i32, ptr %c, align 4, !tbaa !8
  %cmp47 = icmp eq i32 %47, 255
  br i1 %cmp47, label %do.body28, label %do.end49, !llvm.loop !31

do.end49:                                         ; preds = %do.cond46
  %48 = load i32, ptr %c, align 4, !tbaa !8
  %cmp50 = icmp ne i32 %48, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.end49
  br label %for.end

if.end53:                                         ; preds = %do.end49
  %49 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker54 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %49, i32 0, i32 83
  %50 = load ptr, ptr %marker54, align 8, !tbaa !26
  %discarded_bytes55 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %50, i32 0, i32 6
  %51 = load i32, ptr %discarded_bytes55, align 4, !tbaa !27
  %add = add i32 %51, 2
  store i32 %add, ptr %discarded_bytes55, align 4, !tbaa !27
  %52 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %53 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte56 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %53, i32 0, i32 0
  store ptr %52, ptr %next_input_byte56, align 8, !tbaa !21
  %54 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %55 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer57 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %55, i32 0, i32 1
  store i64 %54, ptr %bytes_in_buffer57, align 8, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %if.then52
  %56 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker58 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %56, i32 0, i32 83
  %57 = load ptr, ptr %marker58, align 8, !tbaa !26
  %discarded_bytes59 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %57, i32 0, i32 6
  %58 = load i32, ptr %discarded_bytes59, align 4, !tbaa !27
  %cmp60 = icmp ne i32 %58, 0
  br i1 %cmp60, label %if.then62, label %if.end72

if.then62:                                        ; preds = %for.end
  %59 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %60, i32 0, i32 5
  store i32 123, ptr %msg_code, align 8, !tbaa !15
  %61 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker63 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %61, i32 0, i32 83
  %62 = load ptr, ptr %marker63, align 8, !tbaa !26
  %discarded_bytes64 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %62, i32 0, i32 6
  %63 = load i32, ptr %discarded_bytes64, align 4, !tbaa !27
  %64 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err65 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err65, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %65, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %63, ptr %arrayidx, align 4, !tbaa !18
  %66 = load i32, ptr %c, align 4, !tbaa !8
  %67 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err66 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %err66, align 8, !tbaa !14
  %msg_parm67 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %68, i32 0, i32 6
  %arrayidx68 = getelementptr inbounds [8 x i32], ptr %msg_parm67, i64 0, i64 1
  store i32 %66, ptr %arrayidx68, align 4, !tbaa !18
  %69 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err69 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %err69, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %72 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %71(ptr noundef %72, i32 noundef -1)
  %73 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker70 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %73, i32 0, i32 83
  %74 = load ptr, ptr %marker70, align 8, !tbaa !26
  %discarded_bytes71 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %74, i32 0, i32 6
  store i32 0, ptr %discarded_bytes71, align 4, !tbaa !27
  br label %if.end72

if.end72:                                         ; preds = %if.then62, %for.end
  %75 = load i32, ptr %c, align 4, !tbaa !8
  %76 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %76, i32 0, i32 77
  store i32 %75, ptr %unread_marker, align 4, !tbaa !10
  %77 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %78 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte73 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %78, i32 0, i32 0
  store ptr %77, ptr %next_input_byte73, align 8, !tbaa !21
  %79 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %80 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer74 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %80, i32 0, i32 1
  store i64 %79, ptr %bytes_in_buffer74, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then36, %if.then18, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jinit_marker_reader(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8, !tbaa !32
  %alloc_small = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8, !tbaa !33
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call ptr %2(ptr noundef %3, i32 noundef 0, i64 noundef 264)
  store ptr %call, ptr %marker, align 8, !tbaa !4
  %4 = load ptr, ptr %marker, align 8, !tbaa !4
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %5, i32 0, i32 83
  store ptr %4, ptr %marker1, align 8, !tbaa !26
  %6 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.my_marker_reader, ptr %6, i32 0, i32 0
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, ptr %pub, i32 0, i32 0
  store ptr @reset_marker_reader, ptr %reset_marker_reader, align 8, !tbaa !35
  %7 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub2 = getelementptr inbounds %struct.my_marker_reader, ptr %7, i32 0, i32 0
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, ptr %pub2, i32 0, i32 1
  store ptr @read_markers, ptr %read_markers, align 8, !tbaa !37
  %8 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub3 = getelementptr inbounds %struct.my_marker_reader, ptr %8, i32 0, i32 0
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, ptr %pub3, i32 0, i32 2
  store ptr @read_restart_marker, ptr %read_restart_marker, align 8, !tbaa !38
  %9 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_COM = getelementptr inbounds %struct.my_marker_reader, ptr %9, i32 0, i32 1
  store ptr @skip_variable, ptr %process_COM, align 8, !tbaa !39
  %10 = load ptr, ptr %marker, align 8, !tbaa !4
  %length_limit_COM = getelementptr inbounds %struct.my_marker_reader, ptr %10, i32 0, i32 3
  store i32 0, ptr %length_limit_COM, align 8, !tbaa !40
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %11, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %process_APPn, i64 0, i64 %idxprom
  store ptr @skip_variable, ptr %arrayidx, align 8, !tbaa !4
  %14 = load ptr, ptr %marker, align 8, !tbaa !4
  %length_limit_APPn = getelementptr inbounds %struct.my_marker_reader, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %length_limit_APPn, i64 0, i64 %idxprom4
  store i32 0, ptr %arrayidx5, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_APPn6 = getelementptr inbounds %struct.my_marker_reader, ptr %17, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [16 x ptr], ptr %process_APPn6, i64 0, i64 0
  store ptr @get_interesting_appn, ptr %arrayidx7, align 8, !tbaa !4
  %18 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_APPn8 = getelementptr inbounds %struct.my_marker_reader, ptr %18, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [16 x ptr], ptr %process_APPn8, i64 0, i64 14
  store ptr @get_interesting_appn, ptr %arrayidx9, align 8, !tbaa !4
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @reset_marker_reader(ptr noundef %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_marker_reader(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %marker1, align 8, !tbaa !26
  store ptr %1, ptr %marker, align 8, !tbaa !4
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %2, i32 0, i32 44
  store ptr null, ptr %comp_info, align 8, !tbaa !42
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_scan_number = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %3, i32 0, i32 35
  store i32 0, ptr %input_scan_number, align 4, !tbaa !43
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %4, i32 0, i32 77
  store i32 0, ptr %unread_marker, align 4, !tbaa !10
  %5 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.my_marker_reader, ptr %5, i32 0, i32 0
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %pub, i32 0, i32 3
  store i32 0, ptr %saw_SOI, align 8, !tbaa !44
  %6 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub2 = getelementptr inbounds %struct.my_marker_reader, ptr %6, i32 0, i32 0
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %pub2, i32 0, i32 4
  store i32 0, ptr %saw_SOF, align 4, !tbaa !45
  %7 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub3 = getelementptr inbounds %struct.my_marker_reader, ptr %7, i32 0, i32 0
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %pub3, i32 0, i32 6
  store i32 0, ptr %discarded_bytes, align 4, !tbaa !46
  %8 = load ptr, ptr %marker, align 8, !tbaa !4
  %cur_marker = getelementptr inbounds %struct.my_marker_reader, ptr %8, i32 0, i32 5
  store ptr null, ptr %cur_marker, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_markers(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 77
  %1 = load i32, ptr %unread_marker, align 4, !tbaa !10
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %2, i32 0, i32 83
  %3 = load ptr, ptr %marker, align 8, !tbaa !26
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %saw_SOI, align 8, !tbaa !48
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 @first_marker(ptr noundef %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then1
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then1
  br label %if.end8

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call4 = call i32 @next_marker(ptr noundef %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker10 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %7, i32 0, i32 77
  %8 = load i32, ptr %unread_marker10, align 4, !tbaa !10
  switch i32 %8, label %sw.default [
    i32 216, label %sw.bb
    i32 192, label %sw.bb15
    i32 193, label %sw.bb15
    i32 194, label %sw.bb20
    i32 195, label %sw.bb25
    i32 201, label %sw.bb30
    i32 202, label %sw.bb35
    i32 203, label %sw.bb40
    i32 197, label %sw.bb45
    i32 198, label %sw.bb45
    i32 199, label %sw.bb45
    i32 200, label %sw.bb45
    i32 205, label %sw.bb45
    i32 206, label %sw.bb45
    i32 207, label %sw.bb45
    i32 218, label %sw.bb49
    i32 217, label %sw.bb55
    i32 204, label %sw.bb60
    i32 196, label %sw.bb65
    i32 219, label %sw.bb70
    i32 221, label %sw.bb75
    i32 224, label %sw.bb80
    i32 225, label %sw.bb80
    i32 226, label %sw.bb80
    i32 227, label %sw.bb80
    i32 228, label %sw.bb80
    i32 229, label %sw.bb80
    i32 230, label %sw.bb80
    i32 231, label %sw.bb80
    i32 232, label %sw.bb80
    i32 233, label %sw.bb80
    i32 234, label %sw.bb80
    i32 235, label %sw.bb80
    i32 236, label %sw.bb80
    i32 237, label %sw.bb80
    i32 238, label %sw.bb80
    i32 239, label %sw.bb80
    i32 254, label %sw.bb88
    i32 208, label %sw.bb94
    i32 209, label %sw.bb94
    i32 210, label %sw.bb94
    i32 211, label %sw.bb94
    i32 212, label %sw.bb94
    i32 213, label %sw.bb94
    i32 214, label %sw.bb94
    i32 215, label %sw.bb94
    i32 1, label %sw.bb94
    i32 220, label %sw.bb103
  ]

sw.bb:                                            ; preds = %if.end9
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call11 = call i32 @get_soi(ptr noundef %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9, %if.end9
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call16 = call i32 @get_sof(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 8)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %sw.bb15
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %sw.bb15
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end9
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call21 = call i32 @get_sof(ptr noundef %11, i32 noundef 1, i32 noundef 0, i32 noundef 8)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %sw.bb20
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %sw.bb20
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call26 = call i32 @get_sof(ptr noundef %12, i32 noundef 2, i32 noundef 0, i32 noundef 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %sw.bb25
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end9
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call31 = call i32 @get_sof(ptr noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef 8)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %sw.bb30
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %sw.bb30
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end9
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call36 = call i32 @get_sof(ptr noundef %14, i32 noundef 1, i32 noundef 1, i32 noundef 8)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %sw.bb35
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %sw.bb35
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end9
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call41 = call i32 @get_sof(ptr noundef %15, i32 noundef 2, i32 noundef 1, i32 noundef 1)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %sw.bb40
  store i32 0, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %sw.bb40
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %17, i32 0, i32 5
  store i32 66, ptr %msg_code, align 8, !tbaa !15
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker46 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %18, i32 0, i32 77
  %19 = load i32, ptr %unread_marker46, align 4, !tbaa !10
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err47 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err47, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %21, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %19, ptr %arrayidx, align 4, !tbaa !18
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err48 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %err48, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %24(ptr noundef %25)
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end9
  %26 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call50 = call i32 @get_sos(ptr noundef %26)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %sw.bb49
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %sw.bb49
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker54 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %27, i32 0, i32 77
  store i32 0, ptr %unread_marker54, align 4, !tbaa !10
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb55:                                          ; preds = %if.end9
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err56 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err56, align 8, !tbaa !14
  %msg_code57 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %29, i32 0, i32 5
  store i32 91, ptr %msg_code57, align 8, !tbaa !15
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err58 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err58, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %32(ptr noundef %33, i32 noundef 1)
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker59 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %34, i32 0, i32 77
  store i32 0, ptr %unread_marker59, align 4, !tbaa !10
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb60:                                          ; preds = %if.end9
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call61 = call i32 @skip_variable(ptr noundef %35)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %sw.bb60
  store i32 0, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %sw.bb60
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end9
  %36 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call66 = call i32 @get_dht(ptr noundef %36)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %sw.bb65
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %sw.bb65
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end9
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call71 = call i32 @get_dqt(ptr noundef %37)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %sw.bb70
  store i32 0, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %sw.bb70
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end9
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call76 = call i32 @get_dri(ptr noundef %38)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %sw.bb75
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %sw.bb75
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker81 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %39, i32 0, i32 83
  %40 = load ptr, ptr %marker81, align 8, !tbaa !26
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker82 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %41, i32 0, i32 77
  %42 = load i32, ptr %unread_marker82, align 4, !tbaa !10
  %sub = sub nsw i32 %42, 224
  %idxprom = sext i32 %sub to i64
  %arrayidx83 = getelementptr inbounds [16 x ptr], ptr %process_APPn, i64 0, i64 %idxprom
  %43 = load ptr, ptr %arrayidx83, align 8, !tbaa !4
  %44 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call84 = call i32 %43(ptr noundef %44)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %sw.bb80
  store i32 0, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %sw.bb80
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end9
  %45 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker89 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %45, i32 0, i32 83
  %46 = load ptr, ptr %marker89, align 8, !tbaa !26
  %process_COM = getelementptr inbounds %struct.my_marker_reader, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %process_COM, align 8, !tbaa !39
  %48 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call90 = call i32 %47(ptr noundef %48)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %sw.bb88
  store i32 0, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %sw.bb88
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %49 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err95 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err95, align 8, !tbaa !14
  %msg_code96 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %50, i32 0, i32 5
  store i32 98, ptr %msg_code96, align 8, !tbaa !15
  %51 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker97 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %51, i32 0, i32 77
  %52 = load i32, ptr %unread_marker97, align 4, !tbaa !10
  %53 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err98 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %err98, align 8, !tbaa !14
  %msg_parm99 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %54, i32 0, i32 6
  %arrayidx100 = getelementptr inbounds [8 x i32], ptr %msg_parm99, i64 0, i64 0
  store i32 %52, ptr %arrayidx100, align 4, !tbaa !18
  %55 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err101 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %err101, align 8, !tbaa !14
  %emit_message102 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %emit_message102, align 8, !tbaa !19
  %58 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %57(ptr noundef %58, i32 noundef 1)
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end9
  %59 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call104 = call i32 @skip_variable(ptr noundef %59)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end107, label %if.then106

if.then106:                                       ; preds = %sw.bb103
  store i32 0, ptr %retval, align 4
  br label %return

if.end107:                                        ; preds = %sw.bb103
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  %60 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err108 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err108, align 8, !tbaa !14
  %msg_code109 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %61, i32 0, i32 5
  store i32 74, ptr %msg_code109, align 8, !tbaa !15
  %62 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker110 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %62, i32 0, i32 77
  %63 = load i32, ptr %unread_marker110, align 4, !tbaa !10
  %64 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err111 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err111, align 8, !tbaa !14
  %msg_parm112 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %65, i32 0, i32 6
  %arrayidx113 = getelementptr inbounds [8 x i32], ptr %msg_parm112, i64 0, i64 0
  store i32 %63, ptr %arrayidx113, align 4, !tbaa !18
  %66 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err114 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err114, align 8, !tbaa !14
  %error_exit115 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %error_exit115, align 8, !tbaa !49
  %69 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %68(ptr noundef %69)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end107, %sw.bb94, %if.end93, %if.end87, %if.end79, %if.end74, %if.end69, %if.end64, %sw.bb45, %if.end44, %if.end39, %if.end34, %if.end29, %if.end24, %if.end19, %if.end14
  %70 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker116 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %70, i32 0, i32 77
  store i32 0, ptr %unread_marker116, align 4, !tbaa !10
  br label %for.cond

return:                                           ; preds = %if.then106, %if.then92, %if.then86, %if.then78, %if.then73, %if.then68, %if.then63, %sw.bb55, %if.end53, %if.then52, %if.then43, %if.then38, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then6, %if.then3
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @read_restart_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 77
  %1 = load i32, ptr %unread_marker, align 4, !tbaa !10
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 @next_marker(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker3 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %3, i32 0, i32 77
  %4 = load i32, ptr %unread_marker3, align 4, !tbaa !10
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %5, i32 0, i32 83
  %6 = load ptr, ptr %marker, align 8, !tbaa !26
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %next_restart_num, align 8, !tbaa !50
  %add = add nsw i32 208, %7
  %cmp4 = icmp eq i32 %4, %add
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %9, i32 0, i32 5
  store i32 104, ptr %msg_code, align 8, !tbaa !15
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker6 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %10, i32 0, i32 83
  %11 = load ptr, ptr %marker6, align 8, !tbaa !26
  %next_restart_num7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %next_restart_num7, align 8, !tbaa !50
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err8 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err8, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %14, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %12, ptr %arrayidx, align 4, !tbaa !18
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err9 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err9, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %17(ptr noundef %18, i32 noundef 3)
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker10 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %19, i32 0, i32 77
  store i32 0, ptr %unread_marker10, align 4, !tbaa !10
  br label %if.end17

if.else:                                          ; preds = %if.end2
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %src, align 8, !tbaa !20
  %resync_to_restart = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %resync_to_restart, align 8, !tbaa !51
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker11 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %24, i32 0, i32 83
  %25 = load ptr, ptr %marker11, align 8, !tbaa !26
  %next_restart_num12 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %next_restart_num12, align 8, !tbaa !50
  %call13 = call i32 %22(ptr noundef %23, i32 noundef %26)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker18 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %27, i32 0, i32 83
  %28 = load ptr, ptr %marker18, align 8, !tbaa !26
  %next_restart_num19 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %28, i32 0, i32 5
  %29 = load i32, ptr %next_restart_num19, align 8, !tbaa !50
  %add20 = add nsw i32 %29, 1
  %and = and i32 %add20, 7
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker21 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %30, i32 0, i32 83
  %31 = load ptr, ptr %marker21, align 8, !tbaa !26
  %next_restart_num22 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %31, i32 0, i32 5
  store i32 %and, ptr %next_restart_num22, align 8, !tbaa !50
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then1
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @skip_variable(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8, !tbaa !21
  store ptr %11, ptr %next_input_byte, align 8, !tbaa !4
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer5 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8, !tbaa !23
  store i64 %13, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %15 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %17 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp7 = icmp eq i64 %17, 0
  br i1 %cmp7, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer10 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer10, align 8, !tbaa !25
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call11 = call i32 %19(ptr noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %21 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte15 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte15, align 8, !tbaa !21
  store ptr %22, ptr %next_input_byte, align 8, !tbaa !4
  %23 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer16 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer16, align 8, !tbaa !23
  store i64 %24, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec18 = add i64 %25, -1
  store i64 %dec18, ptr %bytes_in_buffer, align 8, !tbaa !24
  %26 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %next_input_byte, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !18
  %conv20 = zext i8 %27 to i32
  %28 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %28, %conv20
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, ptr %length, align 4, !tbaa !8
  %sub = sub nsw i32 %29, 2
  store i32 %sub, ptr %length, align 4, !tbaa !8
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %31, i32 0, i32 5
  store i32 97, ptr %msg_code, align 8, !tbaa !15
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %32, i32 0, i32 77
  %33 = load i32, ptr %unread_marker, align 4, !tbaa !10
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err21 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err21, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %35, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %33, ptr %arrayidx, align 4, !tbaa !18
  %36 = load i32, ptr %length, align 4, !tbaa !8
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err22 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %err22, align 8, !tbaa !14
  %msg_parm23 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %38, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %msg_parm23, i64 0, i64 1
  store i32 %36, ptr %arrayidx24, align 4, !tbaa !18
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err25 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %err25, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %42 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %41(ptr noundef %42, i32 noundef 1)
  %43 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %44 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte26 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %44, i32 0, i32 0
  store ptr %43, ptr %next_input_byte26, align 8, !tbaa !21
  %45 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %46 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer27 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %46, i32 0, i32 1
  store i64 %45, ptr %bytes_in_buffer27, align 8, !tbaa !23
  %47 = load i32, ptr %length, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %47, 0
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %do.end
  %48 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src31 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %48, i32 0, i32 6
  %49 = load ptr, ptr %src31, align 8, !tbaa !20
  %skip_input_data = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %49, i32 0, i32 4
  %50 = load ptr, ptr %skip_input_data, align 8, !tbaa !52
  %51 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %52 = load i32, ptr %length, align 4, !tbaa !8
  %conv32 = sext i32 %52 to i64
  call void %50(ptr noundef %51, i64 noundef %conv32)
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %do.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then13, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @get_interesting_appn(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %b = alloca [14 x i8], align 1
  %i = alloca i32, align 4
  %numtoread = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 14, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %numtoread) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8, !tbaa !21
  store ptr %11, ptr %next_input_byte, align 8, !tbaa !4
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer5 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8, !tbaa !23
  store i64 %13, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %15 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %17 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp7 = icmp eq i64 %17, 0
  br i1 %cmp7, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer10 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer10, align 8, !tbaa !25
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call11 = call i32 %19(ptr noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %21 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte15 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte15, align 8, !tbaa !21
  store ptr %22, ptr %next_input_byte, align 8, !tbaa !4
  %23 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer16 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer16, align 8, !tbaa !23
  store i64 %24, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec18 = add i64 %25, -1
  store i64 %dec18, ptr %bytes_in_buffer, align 8, !tbaa !24
  %26 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %next_input_byte, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !18
  %conv20 = zext i8 %27 to i32
  %28 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %28, %conv20
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, ptr %length, align 4, !tbaa !8
  %sub = sub nsw i32 %29, 2
  store i32 %sub, ptr %length, align 4, !tbaa !8
  %30 = load i32, ptr %length, align 4, !tbaa !8
  %cmp21 = icmp sge i32 %30, 14
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.end
  store i32 14, ptr %numtoread, align 4, !tbaa !8
  br label %if.end29

if.else:                                          ; preds = %do.end
  %31 = load i32, ptr %length, align 4, !tbaa !8
  %cmp24 = icmp sgt i32 %31, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else
  %32 = load i32, ptr %length, align 4, !tbaa !8
  store i32 %32, ptr %numtoread, align 4, !tbaa !8
  br label %if.end28

if.else27:                                        ; preds = %if.else
  store i32 0, ptr %numtoread, align 4, !tbaa !8
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then23
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end29
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %34 = load i32, ptr %numtoread, align 4, !tbaa !8
  %cmp30 = icmp ult i32 %33, %34
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body32

do.body32:                                        ; preds = %for.body
  %35 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp33 = icmp eq i64 %35, 0
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %do.body32
  %36 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer36 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %fill_input_buffer36, align 8, !tbaa !25
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call37 = call i32 %37(ptr noundef %38)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.then35
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.then35
  %39 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte41 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %next_input_byte41, align 8, !tbaa !21
  store ptr %40, ptr %next_input_byte, align 8, !tbaa !4
  %41 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer42 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %41, i32 0, i32 1
  %42 = load i64, ptr %bytes_in_buffer42, align 8, !tbaa !23
  store i64 %42, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %do.body32
  %43 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec44 = add i64 %43, -1
  store i64 %dec44, ptr %bytes_in_buffer, align 8, !tbaa !24
  %44 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr45 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr45, ptr %next_input_byte, align 8, !tbaa !4
  %45 = load i8, ptr %44, align 1, !tbaa !18
  %46 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %46 to i64
  %arrayidx = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 %idxprom
  store i8 %45, ptr %arrayidx, align 1, !tbaa !18
  br label %do.cond46

do.cond46:                                        ; preds = %if.end43
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  br label %for.inc

for.inc:                                          ; preds = %do.end47
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %47, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %48 = load i32, ptr %numtoread, align 4, !tbaa !8
  %49 = load i32, ptr %length, align 4, !tbaa !8
  %sub48 = sub i32 %49, %48
  store i32 %sub48, ptr %length, align 4, !tbaa !8
  %50 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %50, i32 0, i32 77
  %51 = load i32, ptr %unread_marker, align 4, !tbaa !10
  switch i32 %51, label %sw.default [
    i32 224, label %sw.bb
    i32 238, label %sw.bb49
  ]

sw.bb:                                            ; preds = %for.end
  %52 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 0
  %53 = load i32, ptr %numtoread, align 4, !tbaa !8
  %54 = load i32, ptr %length, align 4, !tbaa !8
  call void @examine_app0(ptr noundef %52, ptr noundef %arraydecay, i32 noundef %53, i32 noundef %54)
  br label %sw.epilog

sw.bb49:                                          ; preds = %for.end
  %55 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arraydecay50 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 0
  %56 = load i32, ptr %numtoread, align 4, !tbaa !8
  %57 = load i32, ptr %length, align 4, !tbaa !8
  call void @examine_app14(ptr noundef %55, ptr noundef %arraydecay50, i32 noundef %56, i32 noundef %57)
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %58 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %59, i32 0, i32 5
  store i32 74, ptr %msg_code, align 8, !tbaa !15
  %60 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker51 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %60, i32 0, i32 77
  %61 = load i32, ptr %unread_marker51, align 4, !tbaa !10
  %62 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err52 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err52, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %63, i32 0, i32 6
  %arrayidx53 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %61, ptr %arrayidx53, align 4, !tbaa !18
  %64 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err54 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err54, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %67 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %66(ptr noundef %67)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb49, %sw.bb
  %68 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %69 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte55 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %69, i32 0, i32 0
  store ptr %68, ptr %next_input_byte55, align 8, !tbaa !21
  %70 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %71 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer56 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %71, i32 0, i32 1
  store i64 %70, ptr %bytes_in_buffer56, align 8, !tbaa !23
  %72 = load i32, ptr %length, align 4, !tbaa !8
  %cmp57 = icmp sgt i32 %72, 0
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %sw.epilog
  %73 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src60 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %73, i32 0, i32 6
  %74 = load ptr, ptr %src60, align 8, !tbaa !20
  %skip_input_data = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %skip_input_data, align 8, !tbaa !52
  %76 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %77 = load i32, ptr %length, align 4, !tbaa !8
  %conv61 = sext i32 %77 to i64
  call void %75(ptr noundef %76, i64 noundef %conv61)
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %sw.epilog
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then39, %if.then13, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %numtoread) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 14, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jpeg_save_markers(ptr noundef %cinfo, i32 noundef %marker_code, i32 noundef %length_limit) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker_code.addr = alloca i32, align 4
  %length_limit.addr = alloca i32, align 4
  %marker = alloca ptr, align 8
  %maxlength = alloca i64, align 8
  %processor = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %marker_code, ptr %marker_code.addr, align 4, !tbaa !8
  store i32 %length_limit, ptr %length_limit.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %marker1, align 8, !tbaa !26
  store ptr %1, ptr %marker, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxlength) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %processor) #4
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8, !tbaa !32
  %max_alloc_chunk = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %3, i32 0, i32 13
  %4 = load i64, ptr %max_alloc_chunk, align 8, !tbaa !54
  %sub = sub i64 %4, 32
  store i64 %sub, ptr %maxlength, align 8, !tbaa !24
  %5 = load i32, ptr %length_limit.addr, align 4, !tbaa !8
  %conv = zext i32 %5 to i64
  %6 = load i64, ptr %maxlength, align 8, !tbaa !24
  %cmp = icmp sgt i64 %conv, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %maxlength, align 8, !tbaa !24
  %conv3 = trunc i64 %7 to i32
  store i32 %conv3, ptr %length_limit.addr, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %length_limit.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then4, label %if.else18

if.then4:                                         ; preds = %if.end
  store ptr @save_marker, ptr %processor, align 8, !tbaa !4
  %9 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %9, 224
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then4
  %10 = load i32, ptr %length_limit.addr, align 4, !tbaa !8
  %cmp7 = icmp ult i32 %10, 14
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  store i32 14, ptr %length_limit.addr, align 4, !tbaa !8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %if.then4
  %11 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %11, 238
  br i1 %cmp10, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %if.else
  %12 = load i32, ptr %length_limit.addr, align 4, !tbaa !8
  %cmp13 = icmp ult i32 %12, 12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  store i32 12, ptr %length_limit.addr, align 4, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true12, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then9
  br label %if.end25

if.else18:                                        ; preds = %if.end
  store ptr @skip_variable, ptr %processor, align 8, !tbaa !4
  %13 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp19 = icmp eq i32 %13, 224
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  %14 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp21 = icmp eq i32 %14, 238
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false, %if.else18
  store ptr @get_interesting_appn, ptr %processor, align 8, !tbaa !4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %lor.lhs.false
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end17
  %15 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp26 = icmp eq i32 %15, 254
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.end25
  %16 = load ptr, ptr %processor, align 8, !tbaa !4
  %17 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_COM = getelementptr inbounds %struct.my_marker_reader, ptr %17, i32 0, i32 1
  store ptr %16, ptr %process_COM, align 8, !tbaa !39
  %18 = load i32, ptr %length_limit.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %marker, align 8, !tbaa !4
  %length_limit_COM = getelementptr inbounds %struct.my_marker_reader, ptr %19, i32 0, i32 3
  store i32 %18, ptr %length_limit_COM, align 8, !tbaa !40
  br label %if.end45

if.else29:                                        ; preds = %if.end25
  %20 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp30 = icmp sge i32 %20, 224
  br i1 %cmp30, label %land.lhs.true32, label %if.else40

land.lhs.true32:                                  ; preds = %if.else29
  %21 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp33 = icmp sle i32 %21, 239
  br i1 %cmp33, label %if.then35, label %if.else40

if.then35:                                        ; preds = %land.lhs.true32
  %22 = load ptr, ptr %processor, align 8, !tbaa !4
  %23 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %sub36 = sub nsw i32 %24, 224
  %idxprom = sext i32 %sub36 to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %process_APPn, i64 0, i64 %idxprom
  store ptr %22, ptr %arrayidx, align 8, !tbaa !4
  %25 = load i32, ptr %length_limit.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %marker, align 8, !tbaa !4
  %length_limit_APPn = getelementptr inbounds %struct.my_marker_reader, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %sub37 = sub nsw i32 %27, 224
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds [16 x i32], ptr %length_limit_APPn, i64 0, i64 %idxprom38
  store i32 %25, ptr %arrayidx39, align 4, !tbaa !8
  br label %if.end44

if.else40:                                        ; preds = %land.lhs.true32, %if.else29
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %29, i32 0, i32 5
  store i32 74, ptr %msg_code, align 8, !tbaa !15
  %30 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err41 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %err41, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %32, i32 0, i32 6
  %arrayidx42 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %30, ptr %arrayidx42, align 4, !tbaa !18
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err43 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err43, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %36 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %35(ptr noundef %36)
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then35
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %processor) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxlength) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @save_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %marker = alloca ptr, align 8
  %cur_marker = alloca ptr, align 8
  %bytes_read = alloca i32, align 4
  %data_length = alloca i32, align 4
  %data = alloca ptr, align 8
  %length = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %limit = alloca i32, align 4
  %prev = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %marker1, align 8, !tbaa !26
  store ptr %1, ptr %marker, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_marker) #4
  %2 = load ptr, ptr %marker, align 8, !tbaa !4
  %cur_marker2 = getelementptr inbounds %struct.my_marker_reader, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %cur_marker2, align 8, !tbaa !47
  store ptr %3, ptr %cur_marker, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_read) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_length) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  store i32 0, ptr %length, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %5, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %6 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte3 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next_input_byte3, align 8, !tbaa !21
  store ptr %7, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %8 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %bytes_in_buffer4, align 8, !tbaa !23
  store i64 %9, ptr %bytes_in_buffer, align 8, !tbaa !24
  %10 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then, label %if.else50

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp5 = icmp eq i64 %11, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.body
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %13(ptr noundef %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then6
  %15 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte8 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %next_input_byte8, align 8, !tbaa !21
  store ptr %16, ptr %next_input_byte, align 8, !tbaa !4
  %17 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer9 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %bytes_in_buffer9, align 8, !tbaa !23
  store i64 %18, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end10

if.end10:                                         ; preds = %if.end, %do.body
  %19 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %19, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %20 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !18
  %conv = zext i8 %21 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %22 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp11 = icmp eq i64 %22, 0
  br i1 %cmp11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end10
  %23 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer14 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %fill_input_buffer14, align 8, !tbaa !25
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call15 = call i32 %24(ptr noundef %25)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %26 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte19 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %next_input_byte19, align 8, !tbaa !21
  store ptr %27, ptr %next_input_byte, align 8, !tbaa !4
  %28 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer20 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %28, i32 0, i32 1
  %29 = load i64, ptr %bytes_in_buffer20, align 8, !tbaa !23
  store i64 %29, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.end10
  %30 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec22 = add i64 %30, -1
  store i64 %dec22, ptr %bytes_in_buffer, align 8, !tbaa !24
  %31 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr23 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr23, ptr %next_input_byte, align 8, !tbaa !4
  %32 = load i8, ptr %31, align 1, !tbaa !18
  %conv24 = zext i8 %32 to i32
  %33 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %33, %conv24
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end21
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32, ptr %length, align 4, !tbaa !8
  %sub = sub nsw i32 %34, 2
  store i32 %sub, ptr %length, align 4, !tbaa !8
  %35 = load i32, ptr %length, align 4, !tbaa !8
  %cmp25 = icmp sge i32 %35, 0
  br i1 %cmp25, label %if.then27, label %if.else48

if.then27:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #4
  %36 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %36, i32 0, i32 77
  %37 = load i32, ptr %unread_marker, align 4, !tbaa !10
  %cmp28 = icmp eq i32 %37, 254
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then27
  %38 = load ptr, ptr %marker, align 8, !tbaa !4
  %length_limit_COM = getelementptr inbounds %struct.my_marker_reader, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %length_limit_COM, align 8, !tbaa !40
  store i32 %39, ptr %limit, align 4, !tbaa !8
  br label %if.end33

if.else:                                          ; preds = %if.then27
  %40 = load ptr, ptr %marker, align 8, !tbaa !4
  %length_limit_APPn = getelementptr inbounds %struct.my_marker_reader, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker31 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %41, i32 0, i32 77
  %42 = load i32, ptr %unread_marker31, align 4, !tbaa !10
  %sub32 = sub nsw i32 %42, 224
  %idxprom = sext i32 %sub32 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %length_limit_APPn, i64 0, i64 %idxprom
  %43 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %43, ptr %limit, align 4, !tbaa !8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %44 = load i32, ptr %length, align 4, !tbaa !8
  %45 = load i32, ptr %limit, align 4, !tbaa !8
  %cmp34 = icmp ult i32 %44, %45
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  %46 = load i32, ptr %length, align 4, !tbaa !8
  store i32 %46, ptr %limit, align 4, !tbaa !8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %47 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %mem, align 8, !tbaa !32
  %alloc_large = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %alloc_large, align 8, !tbaa !55
  %50 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %51 = load i32, ptr %limit, align 4, !tbaa !8
  %conv38 = zext i32 %51 to i64
  %add39 = add i64 32, %conv38
  %call40 = call ptr %49(ptr noundef %50, i32 noundef 1, i64 noundef %add39)
  store ptr %call40, ptr %cur_marker, align 8, !tbaa !4
  %52 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.jpeg_marker_struct, ptr %52, i32 0, i32 0
  store ptr null, ptr %next, align 8, !tbaa !56
  %53 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker41 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %53, i32 0, i32 77
  %54 = load i32, ptr %unread_marker41, align 4, !tbaa !10
  %conv42 = trunc i32 %54 to i8
  %55 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %marker43 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %55, i32 0, i32 1
  store i8 %conv42, ptr %marker43, align 8, !tbaa !58
  %56 = load i32, ptr %length, align 4, !tbaa !8
  %57 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %original_length = getelementptr inbounds %struct.jpeg_marker_struct, ptr %57, i32 0, i32 2
  store i32 %56, ptr %original_length, align 4, !tbaa !59
  %58 = load i32, ptr %limit, align 4, !tbaa !8
  %59 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %data_length44 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %59, i32 0, i32 3
  store i32 %58, ptr %data_length44, align 8, !tbaa !60
  %60 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.jpeg_marker_struct, ptr %60, i64 1
  %61 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %data45 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %61, i32 0, i32 4
  store ptr %add.ptr, ptr %data45, align 8, !tbaa !61
  store ptr %add.ptr, ptr %data, align 8, !tbaa !4
  %62 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %63 = load ptr, ptr %marker, align 8, !tbaa !4
  %cur_marker46 = getelementptr inbounds %struct.my_marker_reader, ptr %63, i32 0, i32 5
  store ptr %62, ptr %cur_marker46, align 8, !tbaa !47
  %64 = load ptr, ptr %marker, align 8, !tbaa !4
  %bytes_read47 = getelementptr inbounds %struct.my_marker_reader, ptr %64, i32 0, i32 6
  store i32 0, ptr %bytes_read47, align 8, !tbaa !62
  store i32 0, ptr %bytes_read, align 4, !tbaa !8
  %65 = load i32, ptr %limit, align 4, !tbaa !8
  store i32 %65, ptr %data_length, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #4
  br label %if.end49

if.else48:                                        ; preds = %do.end
  store i32 0, ptr %data_length, align 4, !tbaa !8
  store i32 0, ptr %bytes_read, align 4, !tbaa !8
  store ptr null, ptr %data, align 8, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.end37
  br label %if.end55

if.else50:                                        ; preds = %entry
  %66 = load ptr, ptr %marker, align 8, !tbaa !4
  %bytes_read51 = getelementptr inbounds %struct.my_marker_reader, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %bytes_read51, align 8, !tbaa !62
  store i32 %67, ptr %bytes_read, align 4, !tbaa !8
  %68 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %data_length52 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %data_length52, align 8, !tbaa !60
  store i32 %69, ptr %data_length, align 4, !tbaa !8
  %70 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %data53 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %data53, align 8, !tbaa !61
  %72 = load i32, ptr %bytes_read, align 4, !tbaa !8
  %idx.ext = zext i32 %72 to i64
  %add.ptr54 = getelementptr inbounds i8, ptr %71, i64 %idx.ext
  store ptr %add.ptr54, ptr %data, align 8, !tbaa !4
  br label %if.end55

if.end55:                                         ; preds = %if.else50, %if.end49
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end55
  %73 = load i32, ptr %bytes_read, align 4, !tbaa !8
  %74 = load i32, ptr %data_length, align 4, !tbaa !8
  %cmp56 = icmp ult i32 %73, %74
  br i1 %cmp56, label %while.body, label %while.end81

while.body:                                       ; preds = %while.cond
  %75 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %76 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte58 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %76, i32 0, i32 0
  store ptr %75, ptr %next_input_byte58, align 8, !tbaa !21
  %77 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %78 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer59 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %78, i32 0, i32 1
  store i64 %77, ptr %bytes_in_buffer59, align 8, !tbaa !23
  %79 = load i32, ptr %bytes_read, align 4, !tbaa !8
  %80 = load ptr, ptr %marker, align 8, !tbaa !4
  %bytes_read60 = getelementptr inbounds %struct.my_marker_reader, ptr %80, i32 0, i32 6
  store i32 %79, ptr %bytes_read60, align 8, !tbaa !62
  %81 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp61 = icmp eq i64 %81, 0
  br i1 %cmp61, label %if.then63, label %if.end71

if.then63:                                        ; preds = %while.body
  %82 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer64 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %82, i32 0, i32 3
  %83 = load ptr, ptr %fill_input_buffer64, align 8, !tbaa !25
  %84 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call65 = call i32 %83(ptr noundef %84)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.then63
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %if.then63
  %85 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte69 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %next_input_byte69, align 8, !tbaa !21
  store ptr %86, ptr %next_input_byte, align 8, !tbaa !4
  %87 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer70 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %87, i32 0, i32 1
  %88 = load i64, ptr %bytes_in_buffer70, align 8, !tbaa !23
  store i64 %88, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end71

if.end71:                                         ; preds = %if.end68, %while.body
  br label %while.cond72

while.cond72:                                     ; preds = %while.body77, %if.end71
  %89 = load i32, ptr %bytes_read, align 4, !tbaa !8
  %90 = load i32, ptr %data_length, align 4, !tbaa !8
  %cmp73 = icmp ult i32 %89, %90
  br i1 %cmp73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond72
  %91 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp75 = icmp ugt i64 %91, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond72
  %92 = phi i1 [ false, %while.cond72 ], [ %cmp75, %land.rhs ]
  br i1 %92, label %while.body77, label %while.end

while.body77:                                     ; preds = %land.end
  %93 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr78 = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr78, ptr %next_input_byte, align 8, !tbaa !4
  %94 = load i8, ptr %93, align 1, !tbaa !18
  %95 = load ptr, ptr %data, align 8, !tbaa !4
  %incdec.ptr79 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %incdec.ptr79, ptr %data, align 8, !tbaa !4
  store i8 %94, ptr %95, align 1, !tbaa !18
  %96 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec80 = add i64 %96, -1
  store i64 %dec80, ptr %bytes_in_buffer, align 8, !tbaa !24
  %97 = load i32, ptr %bytes_read, align 4, !tbaa !8
  %inc = add i32 %97, 1
  store i32 %inc, ptr %bytes_read, align 4, !tbaa !8
  br label %while.cond72, !llvm.loop !63

while.end:                                        ; preds = %land.end
  br label %while.cond, !llvm.loop !64

while.end81:                                      ; preds = %while.cond
  %98 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %cmp82 = icmp ne ptr %98, null
  br i1 %cmp82, label %if.then84, label %if.end103

if.then84:                                        ; preds = %while.end81
  %99 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker_list = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %99, i32 0, i32 59
  %100 = load ptr, ptr %marker_list, align 8, !tbaa !65
  %cmp85 = icmp eq ptr %100, null
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.then84
  %101 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %102 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker_list88 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %102, i32 0, i32 59
  store ptr %101, ptr %marker_list88, align 8, !tbaa !65
  br label %if.end99

if.else89:                                        ; preds = %if.then84
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #4
  %103 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker_list90 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %103, i32 0, i32 59
  %104 = load ptr, ptr %marker_list90, align 8, !tbaa !65
  store ptr %104, ptr %prev, align 8, !tbaa !4
  br label %while.cond91

while.cond91:                                     ; preds = %while.body95, %if.else89
  %105 = load ptr, ptr %prev, align 8, !tbaa !4
  %next92 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %next92, align 8, !tbaa !56
  %cmp93 = icmp ne ptr %106, null
  br i1 %cmp93, label %while.body95, label %while.end97

while.body95:                                     ; preds = %while.cond91
  %107 = load ptr, ptr %prev, align 8, !tbaa !4
  %next96 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %107, i32 0, i32 0
  %108 = load ptr, ptr %next96, align 8, !tbaa !56
  store ptr %108, ptr %prev, align 8, !tbaa !4
  br label %while.cond91, !llvm.loop !66

while.end97:                                      ; preds = %while.cond91
  %109 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %110 = load ptr, ptr %prev, align 8, !tbaa !4
  %next98 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %110, i32 0, i32 0
  store ptr %109, ptr %next98, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #4
  br label %if.end99

if.end99:                                         ; preds = %while.end97, %if.then87
  %111 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %data100 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %111, i32 0, i32 4
  %112 = load ptr, ptr %data100, align 8, !tbaa !61
  store ptr %112, ptr %data, align 8, !tbaa !4
  %113 = load ptr, ptr %cur_marker, align 8, !tbaa !4
  %original_length101 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %113, i32 0, i32 2
  %114 = load i32, ptr %original_length101, align 4, !tbaa !59
  %115 = load i32, ptr %data_length, align 4, !tbaa !8
  %sub102 = sub i32 %114, %115
  store i32 %sub102, ptr %length, align 4, !tbaa !8
  br label %if.end103

if.end103:                                        ; preds = %if.end99, %while.end81
  %116 = load ptr, ptr %marker, align 8, !tbaa !4
  %cur_marker104 = getelementptr inbounds %struct.my_marker_reader, ptr %116, i32 0, i32 5
  store ptr null, ptr %cur_marker104, align 8, !tbaa !47
  %117 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker105 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %117, i32 0, i32 77
  %118 = load i32, ptr %unread_marker105, align 4, !tbaa !10
  switch i32 %118, label %sw.default [
    i32 224, label %sw.bb
    i32 238, label %sw.bb106
  ]

sw.bb:                                            ; preds = %if.end103
  %119 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %data, align 8, !tbaa !4
  %121 = load i32, ptr %data_length, align 4, !tbaa !8
  %122 = load i32, ptr %length, align 4, !tbaa !8
  call void @examine_app0(ptr noundef %119, ptr noundef %120, i32 noundef %121, i32 noundef %122)
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end103
  %123 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %data, align 8, !tbaa !4
  %125 = load i32, ptr %data_length, align 4, !tbaa !8
  %126 = load i32, ptr %length, align 4, !tbaa !8
  call void @examine_app14(ptr noundef %123, ptr noundef %124, i32 noundef %125, i32 noundef %126)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end103
  %127 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %128, i32 0, i32 5
  store i32 97, ptr %msg_code, align 8, !tbaa !15
  %129 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker107 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %129, i32 0, i32 77
  %130 = load i32, ptr %unread_marker107, align 4, !tbaa !10
  %131 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err108 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %err108, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %132, i32 0, i32 6
  %arrayidx109 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %130, ptr %arrayidx109, align 4, !tbaa !18
  %133 = load i32, ptr %data_length, align 4, !tbaa !8
  %134 = load i32, ptr %length, align 4, !tbaa !8
  %add110 = add i32 %133, %134
  %135 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err111 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %err111, align 8, !tbaa !14
  %msg_parm112 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %136, i32 0, i32 6
  %arrayidx113 = getelementptr inbounds [8 x i32], ptr %msg_parm112, i64 0, i64 1
  store i32 %add110, ptr %arrayidx113, align 4, !tbaa !18
  %137 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err114 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %err114, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %138, i32 0, i32 1
  %139 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %140 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %139(ptr noundef %140, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb106, %sw.bb
  %141 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %142 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte115 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %142, i32 0, i32 0
  store ptr %141, ptr %next_input_byte115, align 8, !tbaa !21
  %143 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %144 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer116 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %144, i32 0, i32 1
  store i64 %143, ptr %bytes_in_buffer116, align 8, !tbaa !23
  %145 = load i32, ptr %length, align 4, !tbaa !8
  %cmp117 = icmp sgt i32 %145, 0
  br i1 %cmp117, label %if.then119, label %if.end122

if.then119:                                       ; preds = %sw.epilog
  %146 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src120 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %146, i32 0, i32 6
  %147 = load ptr, ptr %src120, align 8, !tbaa !20
  %skip_input_data = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %147, i32 0, i32 4
  %148 = load ptr, ptr %skip_input_data, align 8, !tbaa !52
  %149 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %150 = load i32, ptr %length, align 4, !tbaa !8
  %conv121 = sext i32 %150 to i64
  call void %148(ptr noundef %149, i64 noundef %conv121)
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %sw.epilog
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.then67, %if.then17, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_length) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_read) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_marker) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #4
  %151 = load i32, ptr %retval, align 4
  ret i32 %151
}

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jpeg_set_marker_processor(ptr noundef %cinfo, i32 noundef %marker_code, ptr noundef %routine) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker_code.addr = alloca i32, align 4
  %routine.addr = alloca ptr, align 8
  %marker = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %marker_code, ptr %marker_code.addr, align 4, !tbaa !8
  store ptr %routine, ptr %routine.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 83
  %1 = load ptr, ptr %marker1, align 8, !tbaa !26
  store ptr %1, ptr %marker, align 8, !tbaa !4
  %2 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 254
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %routine.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_COM = getelementptr inbounds %struct.my_marker_reader, ptr %4, i32 0, i32 1
  store ptr %3, ptr %process_COM, align 8, !tbaa !39
  br label %if.end9

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp2 = icmp sge i32 %5, 224
  br i1 %cmp2, label %land.lhs.true, label %if.else5

land.lhs.true:                                    ; preds = %if.else
  %6 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %cmp3 = icmp sle i32 %6, 239
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %routine.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %marker, align 8, !tbaa !4
  %process_APPn = getelementptr inbounds %struct.my_marker_reader, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %9, 224
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %process_APPn, i64 0, i64 %idxprom
  store ptr %7, ptr %arrayidx, align 8, !tbaa !4
  br label %if.end

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %11, i32 0, i32 5
  store i32 74, ptr %msg_code, align 8, !tbaa !15
  %12 = load i32, ptr %marker_code.addr, align 4, !tbaa !8
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err6 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err6, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %14, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %12, ptr %arrayidx7, align 4, !tbaa !18
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err8 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err8, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %17(ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @first_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8, !tbaa !21
  store ptr %11, ptr %next_input_byte, align 8, !tbaa !4
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer5 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8, !tbaa !23
  store i64 %13, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %15 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %conv = zext i8 %16 to i32
  store i32 %conv, ptr %c, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body7

do.body7:                                         ; preds = %do.end
  %17 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %do.body7
  %18 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer11 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8, !tbaa !25
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte16 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8, !tbaa !21
  store ptr %22, ptr %next_input_byte, align 8, !tbaa !4
  %23 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer17 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8, !tbaa !23
  store i64 %24, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %do.body7
  %25 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8, !tbaa !24
  %26 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !18
  %conv21 = zext i8 %27 to i32
  store i32 %conv21, ptr %c2, align 4, !tbaa !8
  br label %do.cond22

do.cond22:                                        ; preds = %if.end18
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  %28 = load i32, ptr %c, align 4, !tbaa !8
  %cmp24 = icmp ne i32 %28, 255
  br i1 %cmp24, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end23
  %29 = load i32, ptr %c2, align 4, !tbaa !8
  %cmp26 = icmp ne i32 %29, 216
  br i1 %cmp26, label %if.then28, label %if.end34

if.then28:                                        ; preds = %lor.lhs.false, %do.end23
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %31, i32 0, i32 5
  store i32 59, ptr %msg_code, align 8, !tbaa !15
  %32 = load i32, ptr %c, align 4, !tbaa !8
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err29 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err29, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %34, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %32, ptr %arrayidx, align 4, !tbaa !18
  %35 = load i32, ptr %c2, align 4, !tbaa !8
  %36 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err30 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err30, align 8, !tbaa !14
  %msg_parm31 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %37, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [8 x i32], ptr %msg_parm31, i64 0, i64 1
  store i32 %35, ptr %arrayidx32, align 4, !tbaa !18
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err33 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err33, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %40(ptr noundef %41)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %lor.lhs.false
  %42 = load i32, ptr %c2, align 4, !tbaa !8
  %43 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %43, i32 0, i32 77
  store i32 %42, ptr %unread_marker, align 4, !tbaa !10
  %44 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %45 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte35 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %45, i32 0, i32 0
  store ptr %44, ptr %next_input_byte35, align 8, !tbaa !21
  %46 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %47 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer36 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %47, i32 0, i32 1
  store i64 %46, ptr %bytes_in_buffer36, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then14, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @get_soi(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %1, i32 0, i32 5
  store i32 108, ptr %msg_code, align 8, !tbaa !15
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err1, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %4(ptr noundef %5, i32 noundef 1)
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %6, i32 0, i32 83
  %7 = load ptr, ptr %marker, align 8, !tbaa !26
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %saw_SOI, align 8, !tbaa !48
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err2 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err2, align 8, !tbaa !14
  %msg_code3 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %10, i32 0, i32 5
  store i32 67, ptr %msg_code3, align 8, !tbaa !15
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err4 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err4, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %13(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %15, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_dc_L = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %16, i32 0, i32 46
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %arith_dc_L, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !18
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_dc_U = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %18, i32 0, i32 47
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom5 = sext i32 %19 to i64
  %arrayidx6 = getelementptr inbounds [16 x i8], ptr %arith_dc_U, i64 0, i64 %idxprom5
  store i8 1, ptr %arrayidx6, align 1, !tbaa !18
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_ac_K = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %20, i32 0, i32 48
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds [16 x i8], ptr %arith_ac_K, i64 0, i64 %idxprom7
  store i8 5, ptr %arrayidx8, align 1, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %restart_interval = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %23, i32 0, i32 49
  store i32 0, ptr %restart_interval, align 4, !tbaa !68
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %jpeg_color_space = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %24, i32 0, i32 10
  store i32 0, ptr %jpeg_color_space, align 4, !tbaa !69
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %CCIR601_sampling = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %25, i32 0, i32 58
  store i32 0, ptr %CCIR601_sampling, align 4, !tbaa !70
  %26 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %saw_JFIF_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %26, i32 0, i32 50
  store i32 0, ptr %saw_JFIF_marker, align 8, !tbaa !71
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_major_version = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %27, i32 0, i32 51
  store i8 1, ptr %JFIF_major_version, align 4, !tbaa !72
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_minor_version = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %28, i32 0, i32 52
  store i8 1, ptr %JFIF_minor_version, align 1, !tbaa !73
  %29 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %density_unit = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %29, i32 0, i32 53
  store i8 0, ptr %density_unit, align 2, !tbaa !74
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %X_density = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %30, i32 0, i32 54
  store i16 1, ptr %X_density, align 8, !tbaa !75
  %31 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Y_density = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %31, i32 0, i32 55
  store i16 1, ptr %Y_density, align 2, !tbaa !76
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %saw_Adobe_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %32, i32 0, i32 56
  store i32 0, ptr %saw_Adobe_marker, align 4, !tbaa !77
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Adobe_transform = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %33, i32 0, i32 57
  store i8 0, ptr %Adobe_transform, align 8, !tbaa !78
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker9 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %34, i32 0, i32 83
  %35 = load ptr, ptr %marker9, align 8, !tbaa !26
  %saw_SOI10 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %35, i32 0, i32 3
  store i32 1, ptr %saw_SOI10, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @get_sof(ptr noundef %cinfo, i32 noundef %process, i32 noundef %is_arith, i32 noundef %data_unit) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %process.addr = alloca i32, align 4
  %is_arith.addr = alloca i32, align 4
  %data_unit.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %c = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_mp = alloca ptr, align 8
  %_mp233 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %process, ptr %process.addr, align 4, !tbaa !18
  store i32 %is_arith, ptr %is_arith.addr, align 4, !tbaa !8
  store i32 %data_unit, ptr %data_unit.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  %6 = load i32, ptr %data_unit.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %data_unit3 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %7, i32 0, i32 60
  store i32 %6, ptr %data_unit3, align 8, !tbaa !79
  %8 = load i32, ptr %process.addr, align 4, !tbaa !18
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process4 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %9, i32 0, i32 61
  store i32 %8, ptr %process4, align 4, !tbaa !80
  %10 = load i32, ptr %is_arith.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_code = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %11, i32 0, i32 45
  store i32 %10, ptr %arith_code, align 8, !tbaa !81
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %do.body
  %13 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %14(ptr noundef %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte6 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next_input_byte6, align 8, !tbaa !21
  store ptr %17, ptr %next_input_byte, align 8, !tbaa !4
  %18 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer7 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %bytes_in_buffer7, align 8, !tbaa !23
  store i64 %19, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end8

if.end8:                                          ; preds = %if.end, %do.body
  %20 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %20, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %21 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %22 = load i8, ptr %21, align 1, !tbaa !18
  %conv = zext i8 %22 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %23 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp9 = icmp eq i64 %23, 0
  br i1 %cmp9, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end8
  %24 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer12 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %fill_input_buffer12, align 8, !tbaa !25
  %26 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call13 = call i32 %25(ptr noundef %26)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  %27 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte17 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %next_input_byte17, align 8, !tbaa !21
  store ptr %28, ptr %next_input_byte, align 8, !tbaa !4
  %29 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer18 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %29, i32 0, i32 1
  %30 = load i64, ptr %bytes_in_buffer18, align 8, !tbaa !23
  store i64 %30, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.end8
  %31 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec20 = add i64 %31, -1
  store i64 %dec20, ptr %bytes_in_buffer, align 8, !tbaa !24
  %32 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr21 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr21, ptr %next_input_byte, align 8, !tbaa !4
  %33 = load i8, ptr %32, align 1, !tbaa !18
  %conv22 = zext i8 %33 to i32
  %34 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %34, %conv22
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body23

do.body23:                                        ; preds = %do.end
  %35 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp24 = icmp eq i64 %35, 0
  br i1 %cmp24, label %if.then26, label %if.end34

if.then26:                                        ; preds = %do.body23
  %36 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer27 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %fill_input_buffer27, align 8, !tbaa !25
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call28 = call i32 %37(ptr noundef %38)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then26
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then26
  %39 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte32 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %next_input_byte32, align 8, !tbaa !21
  store ptr %40, ptr %next_input_byte, align 8, !tbaa !4
  %41 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer33 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %41, i32 0, i32 1
  %42 = load i64, ptr %bytes_in_buffer33, align 8, !tbaa !23
  store i64 %42, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %do.body23
  %43 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec35 = add i64 %43, -1
  store i64 %dec35, ptr %bytes_in_buffer, align 8, !tbaa !24
  %44 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr36 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr36, ptr %next_input_byte, align 8, !tbaa !4
  %45 = load i8, ptr %44, align 1, !tbaa !18
  %conv37 = zext i8 %45 to i32
  %46 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %data_precision = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %46, i32 0, i32 43
  store i32 %conv37, ptr %data_precision, align 8, !tbaa !82
  br label %do.cond38

do.cond38:                                        ; preds = %if.end34
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %47 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp41 = icmp eq i64 %47, 0
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %do.body40
  %48 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer44 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %fill_input_buffer44, align 8, !tbaa !25
  %50 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call45 = call i32 %49(ptr noundef %50)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.then43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.then43
  %51 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte49 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %next_input_byte49, align 8, !tbaa !21
  store ptr %52, ptr %next_input_byte, align 8, !tbaa !4
  %53 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer50 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %bytes_in_buffer50, align 8, !tbaa !23
  store i64 %54, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %do.body40
  %55 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec52 = add i64 %55, -1
  store i64 %dec52, ptr %bytes_in_buffer, align 8, !tbaa !24
  %56 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr53 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr53, ptr %next_input_byte, align 8, !tbaa !4
  %57 = load i8, ptr %56, align 1, !tbaa !18
  %conv54 = zext i8 %57 to i32
  %shl55 = shl i32 %conv54, 8
  %58 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_height = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %58, i32 0, i32 8
  store i32 %shl55, ptr %image_height, align 4, !tbaa !83
  %59 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp56 = icmp eq i64 %59, 0
  br i1 %cmp56, label %if.then58, label %if.end66

if.then58:                                        ; preds = %if.end51
  %60 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer59 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %fill_input_buffer59, align 8, !tbaa !25
  %62 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call60 = call i32 %61(ptr noundef %62)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then58
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.then58
  %63 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte64 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %next_input_byte64, align 8, !tbaa !21
  store ptr %64, ptr %next_input_byte, align 8, !tbaa !4
  %65 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer65 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %65, i32 0, i32 1
  %66 = load i64, ptr %bytes_in_buffer65, align 8, !tbaa !23
  store i64 %66, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end66

if.end66:                                         ; preds = %if.end63, %if.end51
  %67 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec67 = add i64 %67, -1
  store i64 %dec67, ptr %bytes_in_buffer, align 8, !tbaa !24
  %68 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr68 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %incdec.ptr68, ptr %next_input_byte, align 8, !tbaa !4
  %69 = load i8, ptr %68, align 1, !tbaa !18
  %conv69 = zext i8 %69 to i32
  %70 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_height70 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %70, i32 0, i32 8
  %71 = load i32, ptr %image_height70, align 4, !tbaa !83
  %add71 = add i32 %71, %conv69
  store i32 %add71, ptr %image_height70, align 4, !tbaa !83
  br label %do.cond72

do.cond72:                                        ; preds = %if.end66
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %72 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp75 = icmp eq i64 %72, 0
  br i1 %cmp75, label %if.then77, label %if.end85

if.then77:                                        ; preds = %do.body74
  %73 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer78 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %73, i32 0, i32 3
  %74 = load ptr, ptr %fill_input_buffer78, align 8, !tbaa !25
  %75 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call79 = call i32 %74(ptr noundef %75)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.then77
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %if.then77
  %76 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte83 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %next_input_byte83, align 8, !tbaa !21
  store ptr %77, ptr %next_input_byte, align 8, !tbaa !4
  %78 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer84 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %78, i32 0, i32 1
  %79 = load i64, ptr %bytes_in_buffer84, align 8, !tbaa !23
  store i64 %79, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end85

if.end85:                                         ; preds = %if.end82, %do.body74
  %80 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec86 = add i64 %80, -1
  store i64 %dec86, ptr %bytes_in_buffer, align 8, !tbaa !24
  %81 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr87 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr87, ptr %next_input_byte, align 8, !tbaa !4
  %82 = load i8, ptr %81, align 1, !tbaa !18
  %conv88 = zext i8 %82 to i32
  %shl89 = shl i32 %conv88, 8
  %83 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_width = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %83, i32 0, i32 7
  store i32 %shl89, ptr %image_width, align 8, !tbaa !84
  %84 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp90 = icmp eq i64 %84, 0
  br i1 %cmp90, label %if.then92, label %if.end100

if.then92:                                        ; preds = %if.end85
  %85 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer93 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %85, i32 0, i32 3
  %86 = load ptr, ptr %fill_input_buffer93, align 8, !tbaa !25
  %87 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call94 = call i32 %86(ptr noundef %87)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.then92
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end97:                                         ; preds = %if.then92
  %88 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte98 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %next_input_byte98, align 8, !tbaa !21
  store ptr %89, ptr %next_input_byte, align 8, !tbaa !4
  %90 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer99 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %90, i32 0, i32 1
  %91 = load i64, ptr %bytes_in_buffer99, align 8, !tbaa !23
  store i64 %91, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end100

if.end100:                                        ; preds = %if.end97, %if.end85
  %92 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec101 = add i64 %92, -1
  store i64 %dec101, ptr %bytes_in_buffer, align 8, !tbaa !24
  %93 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr102 = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr102, ptr %next_input_byte, align 8, !tbaa !4
  %94 = load i8, ptr %93, align 1, !tbaa !18
  %conv103 = zext i8 %94 to i32
  %95 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_width104 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %95, i32 0, i32 7
  %96 = load i32, ptr %image_width104, align 8, !tbaa !84
  %add105 = add i32 %96, %conv103
  store i32 %add105, ptr %image_width104, align 8, !tbaa !84
  br label %do.cond106

do.cond106:                                       ; preds = %if.end100
  br label %do.end107

do.end107:                                        ; preds = %do.cond106
  br label %do.body108

do.body108:                                       ; preds = %do.end107
  %97 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp109 = icmp eq i64 %97, 0
  br i1 %cmp109, label %if.then111, label %if.end119

if.then111:                                       ; preds = %do.body108
  %98 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer112 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %98, i32 0, i32 3
  %99 = load ptr, ptr %fill_input_buffer112, align 8, !tbaa !25
  %100 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call113 = call i32 %99(ptr noundef %100)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.then111
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %if.then111
  %101 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte117 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %next_input_byte117, align 8, !tbaa !21
  store ptr %102, ptr %next_input_byte, align 8, !tbaa !4
  %103 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer118 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %103, i32 0, i32 1
  %104 = load i64, ptr %bytes_in_buffer118, align 8, !tbaa !23
  store i64 %104, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end119

if.end119:                                        ; preds = %if.end116, %do.body108
  %105 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec120 = add i64 %105, -1
  store i64 %dec120, ptr %bytes_in_buffer, align 8, !tbaa !24
  %106 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr121 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr121, ptr %next_input_byte, align 8, !tbaa !4
  %107 = load i8, ptr %106, align 1, !tbaa !18
  %conv122 = zext i8 %107 to i32
  %108 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %108, i32 0, i32 9
  store i32 %conv122, ptr %num_components, align 8, !tbaa !85
  br label %do.cond123

do.cond123:                                       ; preds = %if.end119
  br label %do.end124

do.end124:                                        ; preds = %do.cond123
  %109 = load i32, ptr %length, align 4, !tbaa !8
  %sub = sub nsw i32 %109, 8
  store i32 %sub, ptr %length, align 4, !tbaa !8
  br label %do.body125

do.body125:                                       ; preds = %do.end124
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp) #4
  %110 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %111, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8, !tbaa !4
  %112 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %unread_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %112, i32 0, i32 77
  %113 = load i32, ptr %unread_marker, align 4, !tbaa !10
  %114 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %114, i64 0
  store i32 %113, ptr %arrayidx, align 4, !tbaa !8
  %115 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_width126 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %115, i32 0, i32 7
  %116 = load i32, ptr %image_width126, align 8, !tbaa !84
  %117 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx127 = getelementptr inbounds i32, ptr %117, i64 1
  store i32 %116, ptr %arrayidx127, align 4, !tbaa !8
  %118 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_height128 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %118, i32 0, i32 8
  %119 = load i32, ptr %image_height128, align 4, !tbaa !83
  %120 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx129 = getelementptr inbounds i32, ptr %120, i64 2
  store i32 %119, ptr %arrayidx129, align 4, !tbaa !8
  %121 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components130 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %121, i32 0, i32 9
  %122 = load i32, ptr %num_components130, align 8, !tbaa !85
  %123 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx131 = getelementptr inbounds i32, ptr %123, i64 3
  store i32 %122, ptr %arrayidx131, align 4, !tbaa !8
  %124 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err132 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %err132, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %125, i32 0, i32 5
  store i32 106, ptr %msg_code, align 8, !tbaa !15
  %126 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err133 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %err133, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %127, i32 0, i32 1
  %128 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %129 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %128(ptr noundef %129, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp) #4
  br label %do.cond134

do.cond134:                                       ; preds = %do.body125
  br label %do.end135

do.end135:                                        ; preds = %do.cond134
  %130 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %130, i32 0, i32 83
  %131 = load ptr, ptr %marker, align 8, !tbaa !26
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %131, i32 0, i32 4
  %132 = load i32, ptr %saw_SOF, align 4, !tbaa !86
  %tobool136 = icmp ne i32 %132, 0
  br i1 %tobool136, label %if.then137, label %if.end141

if.then137:                                       ; preds = %do.end135
  %133 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err138 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %133, i32 0, i32 0
  %134 = load ptr, ptr %err138, align 8, !tbaa !14
  %msg_code139 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %134, i32 0, i32 5
  store i32 64, ptr %msg_code139, align 8, !tbaa !15
  %135 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err140 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %err140, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %138 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %137(ptr noundef %138)
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %do.end135
  %139 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_height142 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %139, i32 0, i32 8
  %140 = load i32, ptr %image_height142, align 4, !tbaa !83
  %cmp143 = icmp ule i32 %140, 0
  br i1 %cmp143, label %if.then152, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end141
  %141 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_width145 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %141, i32 0, i32 7
  %142 = load i32, ptr %image_width145, align 8, !tbaa !84
  %cmp146 = icmp ule i32 %142, 0
  br i1 %cmp146, label %if.then152, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false
  %143 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components149 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %143, i32 0, i32 9
  %144 = load i32, ptr %num_components149, align 8, !tbaa !85
  %cmp150 = icmp sle i32 %144, 0
  br i1 %cmp150, label %if.then152, label %if.end157

if.then152:                                       ; preds = %lor.lhs.false148, %lor.lhs.false, %if.end141
  %145 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err153 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %err153, align 8, !tbaa !14
  %msg_code154 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %146, i32 0, i32 5
  store i32 37, ptr %msg_code154, align 8, !tbaa !15
  %147 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err155 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %147, i32 0, i32 0
  %148 = load ptr, ptr %err155, align 8, !tbaa !14
  %error_exit156 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %148, i32 0, i32 0
  %149 = load ptr, ptr %error_exit156, align 8, !tbaa !49
  %150 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %149(ptr noundef %150)
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %lor.lhs.false148
  %151 = load i32, ptr %length, align 4, !tbaa !8
  %152 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components158 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %152, i32 0, i32 9
  %153 = load i32, ptr %num_components158, align 8, !tbaa !85
  %mul = mul nsw i32 %153, 3
  %cmp159 = icmp ne i32 %151, %mul
  br i1 %cmp159, label %if.then161, label %if.end166

if.then161:                                       ; preds = %if.end157
  %154 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err162 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err162, align 8, !tbaa !14
  %msg_code163 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %155, i32 0, i32 5
  store i32 12, ptr %msg_code163, align 8, !tbaa !15
  %156 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err164 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %err164, align 8, !tbaa !14
  %error_exit165 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %error_exit165, align 8, !tbaa !49
  %159 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %158(ptr noundef %159)
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end157
  %160 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %160, i32 0, i32 44
  %161 = load ptr, ptr %comp_info, align 8, !tbaa !42
  %cmp167 = icmp eq ptr %161, null
  br i1 %cmp167, label %if.then169, label %if.end175

if.then169:                                       ; preds = %if.end166
  %162 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %162, i32 0, i32 1
  %163 = load ptr, ptr %mem, align 8, !tbaa !32
  %alloc_small = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %163, i32 0, i32 0
  %164 = load ptr, ptr %alloc_small, align 8, !tbaa !33
  %165 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %166 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components170 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %166, i32 0, i32 9
  %167 = load i32, ptr %num_components170, align 8, !tbaa !85
  %conv171 = sext i32 %167 to i64
  %mul172 = mul i64 %conv171, 96
  %call173 = call ptr %164(ptr noundef %165, i32 noundef 1, i64 noundef %mul172)
  %168 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info174 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %168, i32 0, i32 44
  store ptr %call173, ptr %comp_info174, align 8, !tbaa !42
  br label %if.end175

if.end175:                                        ; preds = %if.then169, %if.end166
  store i32 0, ptr %ci, align 4, !tbaa !8
  %169 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info176 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %169, i32 0, i32 44
  %170 = load ptr, ptr %comp_info176, align 8, !tbaa !42
  store ptr %170, ptr %compptr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end175
  %171 = load i32, ptr %ci, align 4, !tbaa !8
  %172 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components177 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %172, i32 0, i32 9
  %173 = load i32, ptr %num_components177, align 8, !tbaa !85
  %cmp178 = icmp slt i32 %171, %173
  br i1 %cmp178, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %174 = load i32, ptr %ci, align 4, !tbaa !8
  %175 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %175, i32 0, i32 1
  store i32 %174, ptr %component_index, align 4, !tbaa !87
  br label %do.body180

do.body180:                                       ; preds = %for.body
  %176 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp181 = icmp eq i64 %176, 0
  br i1 %cmp181, label %if.then183, label %if.end191

if.then183:                                       ; preds = %do.body180
  %177 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer184 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %177, i32 0, i32 3
  %178 = load ptr, ptr %fill_input_buffer184, align 8, !tbaa !25
  %179 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call185 = call i32 %178(ptr noundef %179)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end188, label %if.then187

if.then187:                                       ; preds = %if.then183
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end188:                                        ; preds = %if.then183
  %180 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte189 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %180, i32 0, i32 0
  %181 = load ptr, ptr %next_input_byte189, align 8, !tbaa !21
  store ptr %181, ptr %next_input_byte, align 8, !tbaa !4
  %182 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer190 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %182, i32 0, i32 1
  %183 = load i64, ptr %bytes_in_buffer190, align 8, !tbaa !23
  store i64 %183, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end191

if.end191:                                        ; preds = %if.end188, %do.body180
  %184 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec192 = add i64 %184, -1
  store i64 %dec192, ptr %bytes_in_buffer, align 8, !tbaa !24
  %185 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr193 = getelementptr inbounds i8, ptr %185, i32 1
  store ptr %incdec.ptr193, ptr %next_input_byte, align 8, !tbaa !4
  %186 = load i8, ptr %185, align 1, !tbaa !18
  %conv194 = zext i8 %186 to i32
  %187 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %187, i32 0, i32 0
  store i32 %conv194, ptr %component_id, align 8, !tbaa !89
  br label %do.cond195

do.cond195:                                       ; preds = %if.end191
  br label %do.end196

do.end196:                                        ; preds = %do.cond195
  br label %do.body197

do.body197:                                       ; preds = %do.end196
  %188 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp198 = icmp eq i64 %188, 0
  br i1 %cmp198, label %if.then200, label %if.end208

if.then200:                                       ; preds = %do.body197
  %189 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer201 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %189, i32 0, i32 3
  %190 = load ptr, ptr %fill_input_buffer201, align 8, !tbaa !25
  %191 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call202 = call i32 %190(ptr noundef %191)
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.end205, label %if.then204

if.then204:                                       ; preds = %if.then200
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end205:                                        ; preds = %if.then200
  %192 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte206 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %192, i32 0, i32 0
  %193 = load ptr, ptr %next_input_byte206, align 8, !tbaa !21
  store ptr %193, ptr %next_input_byte, align 8, !tbaa !4
  %194 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer207 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %194, i32 0, i32 1
  %195 = load i64, ptr %bytes_in_buffer207, align 8, !tbaa !23
  store i64 %195, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end208

if.end208:                                        ; preds = %if.end205, %do.body197
  %196 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec209 = add i64 %196, -1
  store i64 %dec209, ptr %bytes_in_buffer, align 8, !tbaa !24
  %197 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr210 = getelementptr inbounds i8, ptr %197, i32 1
  store ptr %incdec.ptr210, ptr %next_input_byte, align 8, !tbaa !4
  %198 = load i8, ptr %197, align 1, !tbaa !18
  %conv211 = zext i8 %198 to i32
  store i32 %conv211, ptr %c, align 4, !tbaa !8
  br label %do.cond212

do.cond212:                                       ; preds = %if.end208
  br label %do.end213

do.end213:                                        ; preds = %do.cond212
  %199 = load i32, ptr %c, align 4, !tbaa !8
  %shr = ashr i32 %199, 4
  %and = and i32 %shr, 15
  %200 = load ptr, ptr %compptr, align 8, !tbaa !4
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %200, i32 0, i32 2
  store i32 %and, ptr %h_samp_factor, align 8, !tbaa !90
  %201 = load i32, ptr %c, align 4, !tbaa !8
  %and214 = and i32 %201, 15
  %202 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %202, i32 0, i32 3
  store i32 %and214, ptr %v_samp_factor, align 4, !tbaa !91
  br label %do.body215

do.body215:                                       ; preds = %do.end213
  %203 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp216 = icmp eq i64 %203, 0
  br i1 %cmp216, label %if.then218, label %if.end226

if.then218:                                       ; preds = %do.body215
  %204 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer219 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %204, i32 0, i32 3
  %205 = load ptr, ptr %fill_input_buffer219, align 8, !tbaa !25
  %206 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call220 = call i32 %205(ptr noundef %206)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.end223, label %if.then222

if.then222:                                       ; preds = %if.then218
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end223:                                        ; preds = %if.then218
  %207 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte224 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %207, i32 0, i32 0
  %208 = load ptr, ptr %next_input_byte224, align 8, !tbaa !21
  store ptr %208, ptr %next_input_byte, align 8, !tbaa !4
  %209 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer225 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %209, i32 0, i32 1
  %210 = load i64, ptr %bytes_in_buffer225, align 8, !tbaa !23
  store i64 %210, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end226

if.end226:                                        ; preds = %if.end223, %do.body215
  %211 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec227 = add i64 %211, -1
  store i64 %dec227, ptr %bytes_in_buffer, align 8, !tbaa !24
  %212 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr228 = getelementptr inbounds i8, ptr %212, i32 1
  store ptr %incdec.ptr228, ptr %next_input_byte, align 8, !tbaa !4
  %213 = load i8, ptr %212, align 1, !tbaa !18
  %conv229 = zext i8 %213 to i32
  %214 = load ptr, ptr %compptr, align 8, !tbaa !4
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %214, i32 0, i32 4
  store i32 %conv229, ptr %quant_tbl_no, align 8, !tbaa !92
  br label %do.cond230

do.cond230:                                       ; preds = %if.end226
  br label %do.end231

do.end231:                                        ; preds = %do.cond230
  br label %do.body232

do.body232:                                       ; preds = %do.end231
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp233) #4
  %215 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err234 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %215, i32 0, i32 0
  %216 = load ptr, ptr %err234, align 8, !tbaa !14
  %msg_parm235 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %216, i32 0, i32 6
  %arraydecay236 = getelementptr inbounds [8 x i32], ptr %msg_parm235, i64 0, i64 0
  store ptr %arraydecay236, ptr %_mp233, align 8, !tbaa !4
  %217 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_id237 = getelementptr inbounds %struct.jpeg_component_info, ptr %217, i32 0, i32 0
  %218 = load i32, ptr %component_id237, align 8, !tbaa !89
  %219 = load ptr, ptr %_mp233, align 8, !tbaa !4
  %arrayidx238 = getelementptr inbounds i32, ptr %219, i64 0
  store i32 %218, ptr %arrayidx238, align 4, !tbaa !8
  %220 = load ptr, ptr %compptr, align 8, !tbaa !4
  %h_samp_factor239 = getelementptr inbounds %struct.jpeg_component_info, ptr %220, i32 0, i32 2
  %221 = load i32, ptr %h_samp_factor239, align 8, !tbaa !90
  %222 = load ptr, ptr %_mp233, align 8, !tbaa !4
  %arrayidx240 = getelementptr inbounds i32, ptr %222, i64 1
  store i32 %221, ptr %arrayidx240, align 4, !tbaa !8
  %223 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor241 = getelementptr inbounds %struct.jpeg_component_info, ptr %223, i32 0, i32 3
  %224 = load i32, ptr %v_samp_factor241, align 4, !tbaa !91
  %225 = load ptr, ptr %_mp233, align 8, !tbaa !4
  %arrayidx242 = getelementptr inbounds i32, ptr %225, i64 2
  store i32 %224, ptr %arrayidx242, align 4, !tbaa !8
  %226 = load ptr, ptr %compptr, align 8, !tbaa !4
  %quant_tbl_no243 = getelementptr inbounds %struct.jpeg_component_info, ptr %226, i32 0, i32 4
  %227 = load i32, ptr %quant_tbl_no243, align 8, !tbaa !92
  %228 = load ptr, ptr %_mp233, align 8, !tbaa !4
  %arrayidx244 = getelementptr inbounds i32, ptr %228, i64 3
  store i32 %227, ptr %arrayidx244, align 4, !tbaa !8
  %229 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err245 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %229, i32 0, i32 0
  %230 = load ptr, ptr %err245, align 8, !tbaa !14
  %msg_code246 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %230, i32 0, i32 5
  store i32 107, ptr %msg_code246, align 8, !tbaa !15
  %231 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err247 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %231, i32 0, i32 0
  %232 = load ptr, ptr %err247, align 8, !tbaa !14
  %emit_message248 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %232, i32 0, i32 1
  %233 = load ptr, ptr %emit_message248, align 8, !tbaa !19
  %234 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %233(ptr noundef %234, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp233) #4
  br label %do.cond249

do.cond249:                                       ; preds = %do.body232
  br label %do.end250

do.end250:                                        ; preds = %do.cond249
  br label %for.inc

for.inc:                                          ; preds = %do.end250
  %235 = load i32, ptr %ci, align 4, !tbaa !8
  %inc = add nsw i32 %235, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !8
  %236 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr251 = getelementptr inbounds %struct.jpeg_component_info, ptr %236, i32 1
  store ptr %incdec.ptr251, ptr %compptr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  %237 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker252 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %237, i32 0, i32 83
  %238 = load ptr, ptr %marker252, align 8, !tbaa !26
  %saw_SOF253 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %238, i32 0, i32 4
  store i32 1, ptr %saw_SOF253, align 4, !tbaa !86
  %239 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %240 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte254 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %240, i32 0, i32 0
  store ptr %239, ptr %next_input_byte254, align 8, !tbaa !21
  %241 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %242 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer255 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %242, i32 0, i32 1
  store i64 %241, ptr %bytes_in_buffer255, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then222, %if.then204, %if.then187, %if.then115, %if.then96, %if.then81, %if.then62, %if.then47, %if.then30, %if.then15, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  %243 = load i32, ptr %retval, align 4
  ret i32 %243
}

; Function Attrs: nounwind uwtable
define internal i32 @get_sos(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %ci = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %cc = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_mp = alloca ptr, align 8
  %_mp186 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cc) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %6, i32 0, i32 83
  %7 = load ptr, ptr %marker, align 8, !tbaa !26
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %saw_SOF, align 4, !tbaa !86
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %10, i32 0, i32 5
  store i32 68, ptr %msg_code, align 8, !tbaa !15
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err3 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err3, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %13(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %15, 0
  br i1 %cmp, label %if.then4, label %if.end10

if.then4:                                         ; preds = %do.body
  %16 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %17(ptr noundef %18)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  %19 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte8 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next_input_byte8, align 8, !tbaa !21
  store ptr %20, ptr %next_input_byte, align 8, !tbaa !4
  %21 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer9 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %bytes_in_buffer9, align 8, !tbaa !23
  store i64 %22, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %do.body
  %23 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %23, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %24 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %25 = load i8, ptr %24, align 1, !tbaa !18
  %conv = zext i8 %25 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %26 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp11 = icmp eq i64 %26, 0
  br i1 %cmp11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end10
  %27 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer14 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %fill_input_buffer14, align 8, !tbaa !25
  %29 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call15 = call i32 %28(ptr noundef %29)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %30 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte19 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %next_input_byte19, align 8, !tbaa !21
  store ptr %31, ptr %next_input_byte, align 8, !tbaa !4
  %32 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer20 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %bytes_in_buffer20, align 8, !tbaa !23
  store i64 %33, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.end10
  %34 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec22 = add i64 %34, -1
  store i64 %dec22, ptr %bytes_in_buffer, align 8, !tbaa !24
  %35 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr23 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr23, ptr %next_input_byte, align 8, !tbaa !4
  %36 = load i8, ptr %35, align 1, !tbaa !18
  %conv24 = zext i8 %36 to i32
  %37 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %37, %conv24
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end21
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body25

do.body25:                                        ; preds = %do.end
  %38 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp26 = icmp eq i64 %38, 0
  br i1 %cmp26, label %if.then28, label %if.end36

if.then28:                                        ; preds = %do.body25
  %39 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer29 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %fill_input_buffer29, align 8, !tbaa !25
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call30 = call i32 %40(ptr noundef %41)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.then28
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.then28
  %42 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte34 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %next_input_byte34, align 8, !tbaa !21
  store ptr %43, ptr %next_input_byte, align 8, !tbaa !4
  %44 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer35 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %44, i32 0, i32 1
  %45 = load i64, ptr %bytes_in_buffer35, align 8, !tbaa !23
  store i64 %45, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %do.body25
  %46 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec37 = add i64 %46, -1
  store i64 %dec37, ptr %bytes_in_buffer, align 8, !tbaa !24
  %47 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr38 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr38, ptr %next_input_byte, align 8, !tbaa !4
  %48 = load i8, ptr %47, align 1, !tbaa !18
  %conv39 = zext i8 %48 to i32
  store i32 %conv39, ptr %n, align 4, !tbaa !8
  br label %do.cond40

do.cond40:                                        ; preds = %if.end36
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  %49 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err42 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err42, align 8, !tbaa !14
  %msg_code43 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %50, i32 0, i32 5
  store i32 109, ptr %msg_code43, align 8, !tbaa !15
  %51 = load i32, ptr %n, align 4, !tbaa !8
  %52 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err44 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %err44, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %53, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %51, ptr %arrayidx, align 4, !tbaa !18
  %54 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err45 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %err45, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %57 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %56(ptr noundef %57, i32 noundef 1)
  %58 = load i32, ptr %length, align 4, !tbaa !8
  %59 = load i32, ptr %n, align 4, !tbaa !8
  %mul = mul nsw i32 %59, 2
  %add46 = add nsw i32 %mul, 6
  %cmp47 = icmp ne i32 %58, %add46
  br i1 %cmp47, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end41
  %60 = load i32, ptr %n, align 4, !tbaa !8
  %cmp49 = icmp slt i32 %60, 1
  br i1 %cmp49, label %if.then54, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false
  %61 = load i32, ptr %n, align 4, !tbaa !8
  %cmp52 = icmp sgt i32 %61, 4
  br i1 %cmp52, label %if.then54, label %if.end59

if.then54:                                        ; preds = %lor.lhs.false51, %lor.lhs.false, %do.end41
  %62 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err55 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err55, align 8, !tbaa !14
  %msg_code56 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %63, i32 0, i32 5
  store i32 12, ptr %msg_code56, align 8, !tbaa !15
  %64 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err57 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err57, align 8, !tbaa !14
  %error_exit58 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %error_exit58, align 8, !tbaa !49
  %67 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %66(ptr noundef %67)
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %lor.lhs.false51
  %68 = load i32, ptr %n, align 4, !tbaa !8
  %69 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %69, i32 0, i32 67
  store i32 %68, ptr %comps_in_scan, align 8, !tbaa !94
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc128, %if.end59
  %70 = load i32, ptr %i, align 4, !tbaa !8
  %71 = load i32, ptr %n, align 4, !tbaa !8
  %cmp60 = icmp slt i32 %70, %71
  br i1 %cmp60, label %for.body, label %for.end130

for.body:                                         ; preds = %for.cond
  br label %do.body62

do.body62:                                        ; preds = %for.body
  %72 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp63 = icmp eq i64 %72, 0
  br i1 %cmp63, label %if.then65, label %if.end73

if.then65:                                        ; preds = %do.body62
  %73 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer66 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %73, i32 0, i32 3
  %74 = load ptr, ptr %fill_input_buffer66, align 8, !tbaa !25
  %75 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call67 = call i32 %74(ptr noundef %75)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.then65
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.then65
  %76 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte71 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %next_input_byte71, align 8, !tbaa !21
  store ptr %77, ptr %next_input_byte, align 8, !tbaa !4
  %78 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer72 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %78, i32 0, i32 1
  %79 = load i64, ptr %bytes_in_buffer72, align 8, !tbaa !23
  store i64 %79, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end73

if.end73:                                         ; preds = %if.end70, %do.body62
  %80 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec74 = add i64 %80, -1
  store i64 %dec74, ptr %bytes_in_buffer, align 8, !tbaa !24
  %81 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr75 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr75, ptr %next_input_byte, align 8, !tbaa !4
  %82 = load i8, ptr %81, align 1, !tbaa !18
  %conv76 = zext i8 %82 to i32
  store i32 %conv76, ptr %cc, align 4, !tbaa !8
  br label %do.cond77

do.cond77:                                        ; preds = %if.end73
  br label %do.end78

do.end78:                                         ; preds = %do.cond77
  br label %do.body79

do.body79:                                        ; preds = %do.end78
  %83 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp80 = icmp eq i64 %83, 0
  br i1 %cmp80, label %if.then82, label %if.end90

if.then82:                                        ; preds = %do.body79
  %84 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer83 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %fill_input_buffer83, align 8, !tbaa !25
  %86 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call84 = call i32 %85(ptr noundef %86)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.then82
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.then82
  %87 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte88 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %next_input_byte88, align 8, !tbaa !21
  store ptr %88, ptr %next_input_byte, align 8, !tbaa !4
  %89 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer89 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %89, i32 0, i32 1
  %90 = load i64, ptr %bytes_in_buffer89, align 8, !tbaa !23
  store i64 %90, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %do.body79
  %91 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec91 = add i64 %91, -1
  store i64 %dec91, ptr %bytes_in_buffer, align 8, !tbaa !24
  %92 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr92 = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %incdec.ptr92, ptr %next_input_byte, align 8, !tbaa !4
  %93 = load i8, ptr %92, align 1, !tbaa !18
  %conv93 = zext i8 %93 to i32
  store i32 %conv93, ptr %c, align 4, !tbaa !8
  br label %do.cond94

do.cond94:                                        ; preds = %if.end90
  br label %do.end95

do.end95:                                         ; preds = %do.cond94
  store i32 0, ptr %ci, align 4, !tbaa !8
  %94 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %94, i32 0, i32 44
  %95 = load ptr, ptr %comp_info, align 8, !tbaa !42
  store ptr %95, ptr %compptr, align 8, !tbaa !4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc, %do.end95
  %96 = load i32, ptr %ci, align 4, !tbaa !8
  %97 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %97, i32 0, i32 9
  %98 = load i32, ptr %num_components, align 8, !tbaa !85
  %cmp97 = icmp slt i32 %96, %98
  br i1 %cmp97, label %for.body99, label %for.end

for.body99:                                       ; preds = %for.cond96
  %99 = load i32, ptr %cc, align 4, !tbaa !8
  %100 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i32 0, i32 0
  %101 = load i32, ptr %component_id, align 8, !tbaa !89
  %cmp100 = icmp eq i32 %99, %101
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %for.body99
  br label %id_found

if.end103:                                        ; preds = %for.body99
  br label %for.inc

for.inc:                                          ; preds = %if.end103
  %102 = load i32, ptr %ci, align 4, !tbaa !8
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !8
  %103 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr104 = getelementptr inbounds %struct.jpeg_component_info, ptr %103, i32 1
  store ptr %incdec.ptr104, ptr %compptr, align 8, !tbaa !4
  br label %for.cond96, !llvm.loop !95

for.end:                                          ; preds = %for.cond96
  %104 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err105 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %err105, align 8, !tbaa !14
  %msg_code106 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %105, i32 0, i32 5
  store i32 5, ptr %msg_code106, align 8, !tbaa !15
  %106 = load i32, ptr %cc, align 4, !tbaa !8
  %107 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err107 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %107, i32 0, i32 0
  %108 = load ptr, ptr %err107, align 8, !tbaa !14
  %msg_parm108 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %108, i32 0, i32 6
  %arrayidx109 = getelementptr inbounds [8 x i32], ptr %msg_parm108, i64 0, i64 0
  store i32 %106, ptr %arrayidx109, align 4, !tbaa !18
  %109 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err110 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %err110, align 8, !tbaa !14
  %error_exit111 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %error_exit111, align 8, !tbaa !49
  %112 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %111(ptr noundef %112)
  br label %id_found

id_found:                                         ; preds = %for.end, %if.then102
  %113 = load ptr, ptr %compptr, align 8, !tbaa !4
  %114 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %114, i32 0, i32 68
  %115 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %115 to i64
  %arrayidx112 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  store ptr %113, ptr %arrayidx112, align 8, !tbaa !4
  %116 = load i32, ptr %c, align 4, !tbaa !8
  %shr = ashr i32 %116, 4
  %and = and i32 %shr, 15
  %117 = load ptr, ptr %compptr, align 8, !tbaa !4
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %117, i32 0, i32 5
  store i32 %and, ptr %dc_tbl_no, align 4, !tbaa !96
  %118 = load i32, ptr %c, align 4, !tbaa !8
  %and113 = and i32 %118, 15
  %119 = load ptr, ptr %compptr, align 8, !tbaa !4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %119, i32 0, i32 6
  store i32 %and113, ptr %ac_tbl_no, align 8, !tbaa !97
  br label %do.body114

do.body114:                                       ; preds = %id_found
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp) #4
  %120 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err115 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err115, align 8, !tbaa !14
  %msg_parm116 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %121, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm116, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8, !tbaa !4
  %122 = load i32, ptr %cc, align 4, !tbaa !8
  %123 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds i32, ptr %123, i64 0
  store i32 %122, ptr %arrayidx117, align 4, !tbaa !8
  %124 = load ptr, ptr %compptr, align 8, !tbaa !4
  %dc_tbl_no118 = getelementptr inbounds %struct.jpeg_component_info, ptr %124, i32 0, i32 5
  %125 = load i32, ptr %dc_tbl_no118, align 4, !tbaa !96
  %126 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds i32, ptr %126, i64 1
  store i32 %125, ptr %arrayidx119, align 4, !tbaa !8
  %127 = load ptr, ptr %compptr, align 8, !tbaa !4
  %ac_tbl_no120 = getelementptr inbounds %struct.jpeg_component_info, ptr %127, i32 0, i32 6
  %128 = load i32, ptr %ac_tbl_no120, align 8, !tbaa !97
  %129 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx121 = getelementptr inbounds i32, ptr %129, i64 2
  store i32 %128, ptr %arrayidx121, align 4, !tbaa !8
  %130 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err122 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %err122, align 8, !tbaa !14
  %msg_code123 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %131, i32 0, i32 5
  store i32 110, ptr %msg_code123, align 8, !tbaa !15
  %132 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err124 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %err124, align 8, !tbaa !14
  %emit_message125 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %emit_message125, align 8, !tbaa !19
  %135 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %134(ptr noundef %135, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp) #4
  br label %do.cond126

do.cond126:                                       ; preds = %do.body114
  br label %do.end127

do.end127:                                        ; preds = %do.cond126
  br label %for.inc128

for.inc128:                                       ; preds = %do.end127
  %136 = load i32, ptr %i, align 4, !tbaa !8
  %inc129 = add nsw i32 %136, 1
  store i32 %inc129, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !98

for.end130:                                       ; preds = %for.cond
  br label %do.body131

do.body131:                                       ; preds = %for.end130
  %137 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp132 = icmp eq i64 %137, 0
  br i1 %cmp132, label %if.then134, label %if.end142

if.then134:                                       ; preds = %do.body131
  %138 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer135 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %138, i32 0, i32 3
  %139 = load ptr, ptr %fill_input_buffer135, align 8, !tbaa !25
  %140 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call136 = call i32 %139(ptr noundef %140)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.then134
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end139:                                        ; preds = %if.then134
  %141 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte140 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %next_input_byte140, align 8, !tbaa !21
  store ptr %142, ptr %next_input_byte, align 8, !tbaa !4
  %143 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer141 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %143, i32 0, i32 1
  %144 = load i64, ptr %bytes_in_buffer141, align 8, !tbaa !23
  store i64 %144, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end142

if.end142:                                        ; preds = %if.end139, %do.body131
  %145 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec143 = add i64 %145, -1
  store i64 %dec143, ptr %bytes_in_buffer, align 8, !tbaa !24
  %146 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr144 = getelementptr inbounds i8, ptr %146, i32 1
  store ptr %incdec.ptr144, ptr %next_input_byte, align 8, !tbaa !4
  %147 = load i8, ptr %146, align 1, !tbaa !18
  %conv145 = zext i8 %147 to i32
  store i32 %conv145, ptr %c, align 4, !tbaa !8
  br label %do.cond146

do.cond146:                                       ; preds = %if.end142
  br label %do.end147

do.end147:                                        ; preds = %do.cond146
  %148 = load i32, ptr %c, align 4, !tbaa !8
  %149 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ss = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %149, i32 0, i32 73
  store i32 %148, ptr %Ss, align 4, !tbaa !99
  br label %do.body148

do.body148:                                       ; preds = %do.end147
  %150 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp149 = icmp eq i64 %150, 0
  br i1 %cmp149, label %if.then151, label %if.end159

if.then151:                                       ; preds = %do.body148
  %151 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer152 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %151, i32 0, i32 3
  %152 = load ptr, ptr %fill_input_buffer152, align 8, !tbaa !25
  %153 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call153 = call i32 %152(ptr noundef %153)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end156, label %if.then155

if.then155:                                       ; preds = %if.then151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end156:                                        ; preds = %if.then151
  %154 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte157 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %next_input_byte157, align 8, !tbaa !21
  store ptr %155, ptr %next_input_byte, align 8, !tbaa !4
  %156 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer158 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %156, i32 0, i32 1
  %157 = load i64, ptr %bytes_in_buffer158, align 8, !tbaa !23
  store i64 %157, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end159

if.end159:                                        ; preds = %if.end156, %do.body148
  %158 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec160 = add i64 %158, -1
  store i64 %dec160, ptr %bytes_in_buffer, align 8, !tbaa !24
  %159 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr161 = getelementptr inbounds i8, ptr %159, i32 1
  store ptr %incdec.ptr161, ptr %next_input_byte, align 8, !tbaa !4
  %160 = load i8, ptr %159, align 1, !tbaa !18
  %conv162 = zext i8 %160 to i32
  store i32 %conv162, ptr %c, align 4, !tbaa !8
  br label %do.cond163

do.cond163:                                       ; preds = %if.end159
  br label %do.end164

do.end164:                                        ; preds = %do.cond163
  %161 = load i32, ptr %c, align 4, !tbaa !8
  %162 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Se = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %162, i32 0, i32 74
  store i32 %161, ptr %Se, align 8, !tbaa !100
  br label %do.body165

do.body165:                                       ; preds = %do.end164
  %163 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp166 = icmp eq i64 %163, 0
  br i1 %cmp166, label %if.then168, label %if.end176

if.then168:                                       ; preds = %do.body165
  %164 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer169 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %164, i32 0, i32 3
  %165 = load ptr, ptr %fill_input_buffer169, align 8, !tbaa !25
  %166 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call170 = call i32 %165(ptr noundef %166)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.end173, label %if.then172

if.then172:                                       ; preds = %if.then168
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end173:                                        ; preds = %if.then168
  %167 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte174 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %167, i32 0, i32 0
  %168 = load ptr, ptr %next_input_byte174, align 8, !tbaa !21
  store ptr %168, ptr %next_input_byte, align 8, !tbaa !4
  %169 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer175 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %169, i32 0, i32 1
  %170 = load i64, ptr %bytes_in_buffer175, align 8, !tbaa !23
  store i64 %170, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end176

if.end176:                                        ; preds = %if.end173, %do.body165
  %171 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec177 = add i64 %171, -1
  store i64 %dec177, ptr %bytes_in_buffer, align 8, !tbaa !24
  %172 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr178 = getelementptr inbounds i8, ptr %172, i32 1
  store ptr %incdec.ptr178, ptr %next_input_byte, align 8, !tbaa !4
  %173 = load i8, ptr %172, align 1, !tbaa !18
  %conv179 = zext i8 %173 to i32
  store i32 %conv179, ptr %c, align 4, !tbaa !8
  br label %do.cond180

do.cond180:                                       ; preds = %if.end176
  br label %do.end181

do.end181:                                        ; preds = %do.cond180
  %174 = load i32, ptr %c, align 4, !tbaa !8
  %shr182 = ashr i32 %174, 4
  %and183 = and i32 %shr182, 15
  %175 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ah = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %175, i32 0, i32 75
  store i32 %and183, ptr %Ah, align 4, !tbaa !101
  %176 = load i32, ptr %c, align 4, !tbaa !8
  %and184 = and i32 %176, 15
  %177 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Al = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %177, i32 0, i32 76
  store i32 %and184, ptr %Al, align 8, !tbaa !102
  br label %do.body185

do.body185:                                       ; preds = %do.end181
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp186) #4
  %178 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err187 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %err187, align 8, !tbaa !14
  %msg_parm188 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %179, i32 0, i32 6
  %arraydecay189 = getelementptr inbounds [8 x i32], ptr %msg_parm188, i64 0, i64 0
  store ptr %arraydecay189, ptr %_mp186, align 8, !tbaa !4
  %180 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ss190 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %180, i32 0, i32 73
  %181 = load i32, ptr %Ss190, align 4, !tbaa !99
  %182 = load ptr, ptr %_mp186, align 8, !tbaa !4
  %arrayidx191 = getelementptr inbounds i32, ptr %182, i64 0
  store i32 %181, ptr %arrayidx191, align 4, !tbaa !8
  %183 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Se192 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %183, i32 0, i32 74
  %184 = load i32, ptr %Se192, align 8, !tbaa !100
  %185 = load ptr, ptr %_mp186, align 8, !tbaa !4
  %arrayidx193 = getelementptr inbounds i32, ptr %185, i64 1
  store i32 %184, ptr %arrayidx193, align 4, !tbaa !8
  %186 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ah194 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %186, i32 0, i32 75
  %187 = load i32, ptr %Ah194, align 4, !tbaa !101
  %188 = load ptr, ptr %_mp186, align 8, !tbaa !4
  %arrayidx195 = getelementptr inbounds i32, ptr %188, i64 2
  store i32 %187, ptr %arrayidx195, align 4, !tbaa !8
  %189 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Al196 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %189, i32 0, i32 76
  %190 = load i32, ptr %Al196, align 8, !tbaa !102
  %191 = load ptr, ptr %_mp186, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds i32, ptr %191, i64 3
  store i32 %190, ptr %arrayidx197, align 4, !tbaa !8
  %192 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err198 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %192, i32 0, i32 0
  %193 = load ptr, ptr %err198, align 8, !tbaa !14
  %msg_code199 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %193, i32 0, i32 5
  store i32 111, ptr %msg_code199, align 8, !tbaa !15
  %194 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err200 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %194, i32 0, i32 0
  %195 = load ptr, ptr %err200, align 8, !tbaa !14
  %emit_message201 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %195, i32 0, i32 1
  %196 = load ptr, ptr %emit_message201, align 8, !tbaa !19
  %197 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %196(ptr noundef %197, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp186) #4
  br label %do.cond202

do.cond202:                                       ; preds = %do.body185
  br label %do.end203

do.end203:                                        ; preds = %do.cond202
  %198 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker204 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %198, i32 0, i32 83
  %199 = load ptr, ptr %marker204, align 8, !tbaa !26
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %199, i32 0, i32 5
  store i32 0, ptr %next_restart_num, align 8, !tbaa !50
  %200 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_scan_number = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %200, i32 0, i32 35
  %201 = load i32, ptr %input_scan_number, align 4, !tbaa !43
  %inc205 = add nsw i32 %201, 1
  store i32 %inc205, ptr %input_scan_number, align 4, !tbaa !43
  %202 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %203 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte206 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %203, i32 0, i32 0
  store ptr %202, ptr %next_input_byte206, align 8, !tbaa !21
  %204 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %205 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer207 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %205, i32 0, i32 1
  store i64 %204, ptr %bytes_in_buffer207, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end203, %if.then172, %if.then155, %if.then138, %if.then86, %if.then69, %if.then32, %if.then17, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  %206 = load i32, ptr %retval, align 4
  ret i32 %206
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dht(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %bits = alloca [17 x i8], align 16
  %huffval = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %htblptr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_mp = alloca ptr, align 8
  %_mp101 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 17, ptr %bits) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %huffval) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %htblptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8, !tbaa !21
  store ptr %11, ptr %next_input_byte, align 8, !tbaa !4
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer5 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8, !tbaa !23
  store i64 %13, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %15 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %17 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp7 = icmp eq i64 %17, 0
  br i1 %cmp7, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer10 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer10, align 8, !tbaa !25
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call11 = call i32 %19(ptr noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %21 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte15 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte15, align 8, !tbaa !21
  store ptr %22, ptr %next_input_byte, align 8, !tbaa !4
  %23 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer16 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer16, align 8, !tbaa !23
  store i64 %24, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec18 = add i64 %25, -1
  store i64 %dec18, ptr %bytes_in_buffer, align 8, !tbaa !24
  %26 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %next_input_byte, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !18
  %conv20 = zext i8 %27 to i32
  %28 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %28, %conv20
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, ptr %length, align 4, !tbaa !8
  %sub = sub nsw i32 %29, 2
  store i32 %sub, ptr %length, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end196, %do.end
  %30 = load i32, ptr %length, align 4, !tbaa !8
  %cmp21 = icmp sgt i32 %30, 16
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body23

do.body23:                                        ; preds = %while.body
  %31 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp24 = icmp eq i64 %31, 0
  br i1 %cmp24, label %if.then26, label %if.end34

if.then26:                                        ; preds = %do.body23
  %32 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer27 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %fill_input_buffer27, align 8, !tbaa !25
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call28 = call i32 %33(ptr noundef %34)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then26
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then26
  %35 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte32 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next_input_byte32, align 8, !tbaa !21
  store ptr %36, ptr %next_input_byte, align 8, !tbaa !4
  %37 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer33 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %bytes_in_buffer33, align 8, !tbaa !23
  store i64 %38, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %do.body23
  %39 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec35 = add i64 %39, -1
  store i64 %dec35, ptr %bytes_in_buffer, align 8, !tbaa !24
  %40 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr36 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr36, ptr %next_input_byte, align 8, !tbaa !4
  %41 = load i8, ptr %40, align 1, !tbaa !18
  %conv37 = zext i8 %41 to i32
  store i32 %conv37, ptr %index, align 4, !tbaa !8
  br label %do.cond38

do.cond38:                                        ; preds = %if.end34
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  %42 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %43, i32 0, i32 5
  store i32 86, ptr %msg_code, align 8, !tbaa !15
  %44 = load i32, ptr %index, align 4, !tbaa !8
  %45 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err40 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err40, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %46, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %44, ptr %arrayidx, align 4, !tbaa !18
  %47 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err41 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err41, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %50 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %49(ptr noundef %50, i32 noundef 1)
  %arrayidx42 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 0
  store i8 0, ptr %arrayidx42, align 16, !tbaa !18
  store i32 0, ptr %count, align 4, !tbaa !8
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end39
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %cmp43 = icmp sle i32 %51, 16
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body45

do.body45:                                        ; preds = %for.body
  %52 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp46 = icmp eq i64 %52, 0
  br i1 %cmp46, label %if.then48, label %if.end56

if.then48:                                        ; preds = %do.body45
  %53 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer49 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %fill_input_buffer49, align 8, !tbaa !25
  %55 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call50 = call i32 %54(ptr noundef %55)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.then48
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.then48
  %56 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte54 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %next_input_byte54, align 8, !tbaa !21
  store ptr %57, ptr %next_input_byte, align 8, !tbaa !4
  %58 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer55 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %58, i32 0, i32 1
  %59 = load i64, ptr %bytes_in_buffer55, align 8, !tbaa !23
  store i64 %59, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %do.body45
  %60 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec57 = add i64 %60, -1
  store i64 %dec57, ptr %bytes_in_buffer, align 8, !tbaa !24
  %61 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr58 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr58, ptr %next_input_byte, align 8, !tbaa !4
  %62 = load i8, ptr %61, align 1, !tbaa !18
  %63 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom
  store i8 %62, ptr %arrayidx59, align 1, !tbaa !18
  br label %do.cond60

do.cond60:                                        ; preds = %if.end56
  br label %do.end61

do.end61:                                         ; preds = %do.cond60
  %64 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom62 = sext i32 %64 to i64
  %arrayidx63 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom62
  %65 = load i8, ptr %arrayidx63, align 1, !tbaa !18
  %conv64 = zext i8 %65 to i32
  %66 = load i32, ptr %count, align 4, !tbaa !8
  %add65 = add nsw i32 %66, %conv64
  store i32 %add65, ptr %count, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %do.end61
  %67 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !103

for.end:                                          ; preds = %for.cond
  %68 = load i32, ptr %length, align 4, !tbaa !8
  %sub66 = sub nsw i32 %68, 17
  store i32 %sub66, ptr %length, align 4, !tbaa !8
  br label %do.body67

do.body67:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp) #4
  %69 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err68 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %err68, align 8, !tbaa !14
  %msg_parm69 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %70, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm69, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 1
  %71 = load i8, ptr %arrayidx70, align 1, !tbaa !18
  %conv71 = zext i8 %71 to i32
  %72 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx72 = getelementptr inbounds i32, ptr %72, i64 0
  store i32 %conv71, ptr %arrayidx72, align 4, !tbaa !8
  %arrayidx73 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 2
  %73 = load i8, ptr %arrayidx73, align 2, !tbaa !18
  %conv74 = zext i8 %73 to i32
  %74 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds i32, ptr %74, i64 1
  store i32 %conv74, ptr %arrayidx75, align 4, !tbaa !8
  %arrayidx76 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 3
  %75 = load i8, ptr %arrayidx76, align 1, !tbaa !18
  %conv77 = zext i8 %75 to i32
  %76 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds i32, ptr %76, i64 2
  store i32 %conv77, ptr %arrayidx78, align 4, !tbaa !8
  %arrayidx79 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 4
  %77 = load i8, ptr %arrayidx79, align 4, !tbaa !18
  %conv80 = zext i8 %77 to i32
  %78 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds i32, ptr %78, i64 3
  store i32 %conv80, ptr %arrayidx81, align 4, !tbaa !8
  %arrayidx82 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 5
  %79 = load i8, ptr %arrayidx82, align 1, !tbaa !18
  %conv83 = zext i8 %79 to i32
  %80 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds i32, ptr %80, i64 4
  store i32 %conv83, ptr %arrayidx84, align 4, !tbaa !8
  %arrayidx85 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 6
  %81 = load i8, ptr %arrayidx85, align 2, !tbaa !18
  %conv86 = zext i8 %81 to i32
  %82 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds i32, ptr %82, i64 5
  store i32 %conv86, ptr %arrayidx87, align 4, !tbaa !8
  %arrayidx88 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 7
  %83 = load i8, ptr %arrayidx88, align 1, !tbaa !18
  %conv89 = zext i8 %83 to i32
  %84 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds i32, ptr %84, i64 6
  store i32 %conv89, ptr %arrayidx90, align 4, !tbaa !8
  %arrayidx91 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 8
  %85 = load i8, ptr %arrayidx91, align 8, !tbaa !18
  %conv92 = zext i8 %85 to i32
  %86 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds i32, ptr %86, i64 7
  store i32 %conv92, ptr %arrayidx93, align 4, !tbaa !8
  %87 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err94 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %err94, align 8, !tbaa !14
  %msg_code95 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %88, i32 0, i32 5
  store i32 92, ptr %msg_code95, align 8, !tbaa !15
  %89 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err96 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %err96, align 8, !tbaa !14
  %emit_message97 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %90, i32 0, i32 1
  %91 = load ptr, ptr %emit_message97, align 8, !tbaa !19
  %92 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %91(ptr noundef %92, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp) #4
  br label %do.cond98

do.cond98:                                        ; preds = %do.body67
  br label %do.end99

do.end99:                                         ; preds = %do.cond98
  br label %do.body100

do.body100:                                       ; preds = %do.end99
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp101) #4
  %93 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err102 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %err102, align 8, !tbaa !14
  %msg_parm103 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %94, i32 0, i32 6
  %arraydecay104 = getelementptr inbounds [8 x i32], ptr %msg_parm103, i64 0, i64 0
  store ptr %arraydecay104, ptr %_mp101, align 8, !tbaa !4
  %arrayidx105 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 9
  %95 = load i8, ptr %arrayidx105, align 1, !tbaa !18
  %conv106 = zext i8 %95 to i32
  %96 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx107 = getelementptr inbounds i32, ptr %96, i64 0
  store i32 %conv106, ptr %arrayidx107, align 4, !tbaa !8
  %arrayidx108 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 10
  %97 = load i8, ptr %arrayidx108, align 2, !tbaa !18
  %conv109 = zext i8 %97 to i32
  %98 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx110 = getelementptr inbounds i32, ptr %98, i64 1
  store i32 %conv109, ptr %arrayidx110, align 4, !tbaa !8
  %arrayidx111 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 11
  %99 = load i8, ptr %arrayidx111, align 1, !tbaa !18
  %conv112 = zext i8 %99 to i32
  %100 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx113 = getelementptr inbounds i32, ptr %100, i64 2
  store i32 %conv112, ptr %arrayidx113, align 4, !tbaa !8
  %arrayidx114 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 12
  %101 = load i8, ptr %arrayidx114, align 4, !tbaa !18
  %conv115 = zext i8 %101 to i32
  %102 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx116 = getelementptr inbounds i32, ptr %102, i64 3
  store i32 %conv115, ptr %arrayidx116, align 4, !tbaa !8
  %arrayidx117 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 13
  %103 = load i8, ptr %arrayidx117, align 1, !tbaa !18
  %conv118 = zext i8 %103 to i32
  %104 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds i32, ptr %104, i64 4
  store i32 %conv118, ptr %arrayidx119, align 4, !tbaa !8
  %arrayidx120 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 14
  %105 = load i8, ptr %arrayidx120, align 2, !tbaa !18
  %conv121 = zext i8 %105 to i32
  %106 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx122 = getelementptr inbounds i32, ptr %106, i64 5
  store i32 %conv121, ptr %arrayidx122, align 4, !tbaa !8
  %arrayidx123 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 15
  %107 = load i8, ptr %arrayidx123, align 1, !tbaa !18
  %conv124 = zext i8 %107 to i32
  %108 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx125 = getelementptr inbounds i32, ptr %108, i64 6
  store i32 %conv124, ptr %arrayidx125, align 4, !tbaa !8
  %arrayidx126 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 16
  %109 = load i8, ptr %arrayidx126, align 16, !tbaa !18
  %conv127 = zext i8 %109 to i32
  %110 = load ptr, ptr %_mp101, align 8, !tbaa !4
  %arrayidx128 = getelementptr inbounds i32, ptr %110, i64 7
  store i32 %conv127, ptr %arrayidx128, align 4, !tbaa !8
  %111 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err129 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %111, i32 0, i32 0
  %112 = load ptr, ptr %err129, align 8, !tbaa !14
  %msg_code130 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %112, i32 0, i32 5
  store i32 92, ptr %msg_code130, align 8, !tbaa !15
  %113 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err131 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %err131, align 8, !tbaa !14
  %emit_message132 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %114, i32 0, i32 1
  %115 = load ptr, ptr %emit_message132, align 8, !tbaa !19
  %116 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %115(ptr noundef %116, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp101) #4
  br label %do.cond133

do.cond133:                                       ; preds = %do.body100
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  %117 = load i32, ptr %count, align 4, !tbaa !8
  %cmp135 = icmp sgt i32 %117, 256
  br i1 %cmp135, label %if.then139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end134
  %118 = load i32, ptr %count, align 4, !tbaa !8
  %119 = load i32, ptr %length, align 4, !tbaa !8
  %cmp137 = icmp sgt i32 %118, %119
  br i1 %cmp137, label %if.then139, label %if.end143

if.then139:                                       ; preds = %lor.lhs.false, %do.end134
  %120 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err140 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err140, align 8, !tbaa !14
  %msg_code141 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %121, i32 0, i32 5
  store i32 9, ptr %msg_code141, align 8, !tbaa !15
  %122 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err142 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %err142, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %125 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %124(ptr noundef %125)
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %lor.lhs.false
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond144

for.cond144:                                      ; preds = %for.inc166, %if.end143
  %126 = load i32, ptr %i, align 4, !tbaa !8
  %127 = load i32, ptr %count, align 4, !tbaa !8
  %cmp145 = icmp slt i32 %126, %127
  br i1 %cmp145, label %for.body147, label %for.end168

for.body147:                                      ; preds = %for.cond144
  br label %do.body148

do.body148:                                       ; preds = %for.body147
  %128 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp149 = icmp eq i64 %128, 0
  br i1 %cmp149, label %if.then151, label %if.end159

if.then151:                                       ; preds = %do.body148
  %129 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer152 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %129, i32 0, i32 3
  %130 = load ptr, ptr %fill_input_buffer152, align 8, !tbaa !25
  %131 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call153 = call i32 %130(ptr noundef %131)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end156, label %if.then155

if.then155:                                       ; preds = %if.then151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end156:                                        ; preds = %if.then151
  %132 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte157 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %next_input_byte157, align 8, !tbaa !21
  store ptr %133, ptr %next_input_byte, align 8, !tbaa !4
  %134 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer158 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %134, i32 0, i32 1
  %135 = load i64, ptr %bytes_in_buffer158, align 8, !tbaa !23
  store i64 %135, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end159

if.end159:                                        ; preds = %if.end156, %do.body148
  %136 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec160 = add i64 %136, -1
  store i64 %dec160, ptr %bytes_in_buffer, align 8, !tbaa !24
  %137 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr161 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %incdec.ptr161, ptr %next_input_byte, align 8, !tbaa !4
  %138 = load i8, ptr %137, align 1, !tbaa !18
  %139 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom162 = sext i32 %139 to i64
  %arrayidx163 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom162
  store i8 %138, ptr %arrayidx163, align 1, !tbaa !18
  br label %do.cond164

do.cond164:                                       ; preds = %if.end159
  br label %do.end165

do.end165:                                        ; preds = %do.cond164
  br label %for.inc166

for.inc166:                                       ; preds = %do.end165
  %140 = load i32, ptr %i, align 4, !tbaa !8
  %inc167 = add nsw i32 %140, 1
  store i32 %inc167, ptr %i, align 4, !tbaa !8
  br label %for.cond144, !llvm.loop !104

for.end168:                                       ; preds = %for.cond144
  %141 = load i32, ptr %count, align 4, !tbaa !8
  %142 = load i32, ptr %length, align 4, !tbaa !8
  %sub169 = sub nsw i32 %142, %141
  store i32 %sub169, ptr %length, align 4, !tbaa !8
  %143 = load i32, ptr %index, align 4, !tbaa !8
  %and = and i32 %143, 16
  %tobool170 = icmp ne i32 %and, 0
  br i1 %tobool170, label %if.then171, label %if.else

if.then171:                                       ; preds = %for.end168
  %144 = load i32, ptr %index, align 4, !tbaa !8
  %sub172 = sub nsw i32 %144, 16
  store i32 %sub172, ptr %index, align 4, !tbaa !8
  %145 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %145, i32 0, i32 42
  %146 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom173 = sext i32 %146 to i64
  %arrayidx174 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom173
  store ptr %arrayidx174, ptr %htblptr, align 8, !tbaa !4
  br label %if.end177

if.else:                                          ; preds = %for.end168
  %147 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %147, i32 0, i32 41
  %148 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom175 = sext i32 %148 to i64
  %arrayidx176 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom175
  store ptr %arrayidx176, ptr %htblptr, align 8, !tbaa !4
  br label %if.end177

if.end177:                                        ; preds = %if.else, %if.then171
  %149 = load i32, ptr %index, align 4, !tbaa !8
  %cmp178 = icmp slt i32 %149, 0
  br i1 %cmp178, label %if.then183, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %if.end177
  %150 = load i32, ptr %index, align 4, !tbaa !8
  %cmp181 = icmp sge i32 %150, 4
  br i1 %cmp181, label %if.then183, label %if.end191

if.then183:                                       ; preds = %lor.lhs.false180, %if.end177
  %151 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err184 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %err184, align 8, !tbaa !14
  %msg_code185 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %152, i32 0, i32 5
  store i32 35, ptr %msg_code185, align 8, !tbaa !15
  %153 = load i32, ptr %index, align 4, !tbaa !8
  %154 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err186 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err186, align 8, !tbaa !14
  %msg_parm187 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %155, i32 0, i32 6
  %arrayidx188 = getelementptr inbounds [8 x i32], ptr %msg_parm187, i64 0, i64 0
  store i32 %153, ptr %arrayidx188, align 4, !tbaa !18
  %156 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err189 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %err189, align 8, !tbaa !14
  %error_exit190 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %error_exit190, align 8, !tbaa !49
  %159 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %158(ptr noundef %159)
  br label %if.end191

if.end191:                                        ; preds = %if.then183, %lor.lhs.false180
  %160 = load ptr, ptr %htblptr, align 8, !tbaa !4
  %161 = load ptr, ptr %160, align 8, !tbaa !4
  %cmp192 = icmp eq ptr %161, null
  br i1 %cmp192, label %if.then194, label %if.end196

if.then194:                                       ; preds = %if.end191
  %162 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call195 = call ptr @gdcmjpeg16_jpeg_alloc_huff_table(ptr noundef %162)
  %163 = load ptr, ptr %htblptr, align 8, !tbaa !4
  store ptr %call195, ptr %163, align 8, !tbaa !4
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %if.end191
  %164 = load ptr, ptr %htblptr, align 8, !tbaa !4
  %165 = load ptr, ptr %164, align 8, !tbaa !4
  %bits197 = getelementptr inbounds %struct.JHUFF_TBL, ptr %165, i32 0, i32 0
  %arraydecay198 = getelementptr inbounds [17 x i8], ptr %bits197, i64 0, i64 0
  %arraydecay199 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay198, ptr align 16 %arraydecay199, i64 17, i1 false)
  %166 = load ptr, ptr %htblptr, align 8, !tbaa !4
  %167 = load ptr, ptr %166, align 8, !tbaa !4
  %huffval200 = getelementptr inbounds %struct.JHUFF_TBL, ptr %167, i32 0, i32 1
  %arraydecay201 = getelementptr inbounds [256 x i8], ptr %huffval200, i64 0, i64 0
  %arraydecay202 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay201, ptr align 16 %arraydecay202, i64 256, i1 false)
  br label %while.cond, !llvm.loop !105

while.end:                                        ; preds = %while.cond
  %168 = load i32, ptr %length, align 4, !tbaa !8
  %cmp203 = icmp ne i32 %168, 0
  br i1 %cmp203, label %if.then205, label %if.end210

if.then205:                                       ; preds = %while.end
  %169 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err206 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %err206, align 8, !tbaa !14
  %msg_code207 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %170, i32 0, i32 5
  store i32 12, ptr %msg_code207, align 8, !tbaa !15
  %171 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err208 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %171, i32 0, i32 0
  %172 = load ptr, ptr %err208, align 8, !tbaa !14
  %error_exit209 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %172, i32 0, i32 0
  %173 = load ptr, ptr %error_exit209, align 8, !tbaa !49
  %174 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %173(ptr noundef %174)
  br label %if.end210

if.end210:                                        ; preds = %if.then205, %while.end
  %175 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %176 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte211 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %176, i32 0, i32 0
  store ptr %175, ptr %next_input_byte211, align 8, !tbaa !21
  %177 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %178 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer212 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %178, i32 0, i32 1
  store i64 %177, ptr %bytes_in_buffer212, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %if.then155, %if.then52, %if.then30, %if.then13, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %htblptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %huffval) #4
  call void @llvm.lifetime.end.p0(i64 17, ptr %bits) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  %179 = load i32, ptr %retval, align 4
  ret i32 %179
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dqt(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %prec = alloca i32, align 4
  %tmp = alloca i32, align 4
  %quant_ptr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prec) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %quant_ptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8, !tbaa !21
  store ptr %11, ptr %next_input_byte, align 8, !tbaa !4
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer5 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8, !tbaa !23
  store i64 %13, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %15 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %17 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp7 = icmp eq i64 %17, 0
  br i1 %cmp7, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer10 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer10, align 8, !tbaa !25
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call11 = call i32 %19(ptr noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %21 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte15 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte15, align 8, !tbaa !21
  store ptr %22, ptr %next_input_byte, align 8, !tbaa !4
  %23 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer16 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer16, align 8, !tbaa !23
  store i64 %24, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec18 = add i64 %25, -1
  store i64 %dec18, ptr %bytes_in_buffer, align 8, !tbaa !24
  %26 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %next_input_byte, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !18
  %conv20 = zext i8 %27 to i32
  %28 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %28, %conv20
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, ptr %length, align 4, !tbaa !8
  %sub = sub nsw i32 %29, 2
  store i32 %sub, ptr %length, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end199, %do.end
  %30 = load i32, ptr %length, align 4, !tbaa !8
  %cmp21 = icmp sgt i32 %30, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body23

do.body23:                                        ; preds = %while.body
  %31 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp24 = icmp eq i64 %31, 0
  br i1 %cmp24, label %if.then26, label %if.end34

if.then26:                                        ; preds = %do.body23
  %32 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer27 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %fill_input_buffer27, align 8, !tbaa !25
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call28 = call i32 %33(ptr noundef %34)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then26
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then26
  %35 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte32 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next_input_byte32, align 8, !tbaa !21
  store ptr %36, ptr %next_input_byte, align 8, !tbaa !4
  %37 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer33 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %bytes_in_buffer33, align 8, !tbaa !23
  store i64 %38, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %do.body23
  %39 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec35 = add i64 %39, -1
  store i64 %dec35, ptr %bytes_in_buffer, align 8, !tbaa !24
  %40 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr36 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr36, ptr %next_input_byte, align 8, !tbaa !4
  %41 = load i8, ptr %40, align 1, !tbaa !18
  %conv37 = zext i8 %41 to i32
  store i32 %conv37, ptr %n, align 4, !tbaa !8
  br label %do.cond38

do.cond38:                                        ; preds = %if.end34
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  %42 = load i32, ptr %n, align 4, !tbaa !8
  %shr = ashr i32 %42, 4
  store i32 %shr, ptr %prec, align 4, !tbaa !8
  %43 = load i32, ptr %n, align 4, !tbaa !8
  %and = and i32 %43, 15
  store i32 %and, ptr %n, align 4, !tbaa !8
  %44 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %45, i32 0, i32 5
  store i32 87, ptr %msg_code, align 8, !tbaa !15
  %46 = load i32, ptr %n, align 4, !tbaa !8
  %47 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err40 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err40, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %48, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %46, ptr %arrayidx, align 4, !tbaa !18
  %49 = load i32, ptr %prec, align 4, !tbaa !8
  %50 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err41 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err41, align 8, !tbaa !14
  %msg_parm42 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %51, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %msg_parm42, i64 0, i64 1
  store i32 %49, ptr %arrayidx43, align 4, !tbaa !18
  %52 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err44 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %err44, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %55 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %54(ptr noundef %55, i32 noundef 1)
  %56 = load i32, ptr %n, align 4, !tbaa !8
  %cmp45 = icmp sge i32 %56, 4
  br i1 %cmp45, label %if.then47, label %if.end54

if.then47:                                        ; preds = %do.end39
  %57 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err48 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err48, align 8, !tbaa !14
  %msg_code49 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %58, i32 0, i32 5
  store i32 36, ptr %msg_code49, align 8, !tbaa !15
  %59 = load i32, ptr %n, align 4, !tbaa !8
  %60 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err50 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err50, align 8, !tbaa !14
  %msg_parm51 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %61, i32 0, i32 6
  %arrayidx52 = getelementptr inbounds [8 x i32], ptr %msg_parm51, i64 0, i64 0
  store i32 %59, ptr %arrayidx52, align 4, !tbaa !18
  %62 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err53 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err53, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %65 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %64(ptr noundef %65)
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %do.end39
  %66 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %quant_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %66, i32 0, i32 40
  %67 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom = sext i32 %67 to i64
  %arrayidx55 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %68 = load ptr, ptr %arrayidx55, align 8, !tbaa !4
  %cmp56 = icmp eq ptr %68, null
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.end54
  %69 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call59 = call ptr @gdcmjpeg16_jpeg_alloc_quant_table(ptr noundef %69)
  %70 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %quant_tbl_ptrs60 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %70, i32 0, i32 40
  %71 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom61 = sext i32 %71 to i64
  %arrayidx62 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs60, i64 0, i64 %idxprom61
  store ptr %call59, ptr %arrayidx62, align 8, !tbaa !4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end54
  %72 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %quant_tbl_ptrs64 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %72, i32 0, i32 40
  %73 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom65 = sext i32 %73 to i64
  %arrayidx66 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs64, i64 0, i64 %idxprom65
  %74 = load ptr, ptr %arrayidx66, align 8, !tbaa !4
  store ptr %74, ptr %quant_ptr, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end63
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %cmp67 = icmp slt i32 %75, 64
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load i32, ptr %prec, align 4, !tbaa !8
  %tobool69 = icmp ne i32 %76, 0
  br i1 %tobool69, label %if.then70, label %if.else

if.then70:                                        ; preds = %for.body
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  %77 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp72 = icmp eq i64 %77, 0
  br i1 %cmp72, label %if.then74, label %if.end82

if.then74:                                        ; preds = %do.body71
  %78 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer75 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %78, i32 0, i32 3
  %79 = load ptr, ptr %fill_input_buffer75, align 8, !tbaa !25
  %80 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call76 = call i32 %79(ptr noundef %80)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.then74
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end79:                                         ; preds = %if.then74
  %81 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte80 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %next_input_byte80, align 8, !tbaa !21
  store ptr %82, ptr %next_input_byte, align 8, !tbaa !4
  %83 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer81 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %83, i32 0, i32 1
  %84 = load i64, ptr %bytes_in_buffer81, align 8, !tbaa !23
  store i64 %84, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %do.body71
  %85 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec83 = add i64 %85, -1
  store i64 %dec83, ptr %bytes_in_buffer, align 8, !tbaa !24
  %86 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr84 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr84, ptr %next_input_byte, align 8, !tbaa !4
  %87 = load i8, ptr %86, align 1, !tbaa !18
  %conv85 = zext i8 %87 to i32
  %shl86 = shl i32 %conv85, 8
  store i32 %shl86, ptr %tmp, align 4, !tbaa !8
  %88 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp87 = icmp eq i64 %88, 0
  br i1 %cmp87, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end82
  %89 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer90 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %89, i32 0, i32 3
  %90 = load ptr, ptr %fill_input_buffer90, align 8, !tbaa !25
  %91 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call91 = call i32 %90(ptr noundef %91)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.then89
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.then89
  %92 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte95 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %next_input_byte95, align 8, !tbaa !21
  store ptr %93, ptr %next_input_byte, align 8, !tbaa !4
  %94 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer96 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %94, i32 0, i32 1
  %95 = load i64, ptr %bytes_in_buffer96, align 8, !tbaa !23
  store i64 %95, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end82
  %96 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec98 = add i64 %96, -1
  store i64 %dec98, ptr %bytes_in_buffer, align 8, !tbaa !24
  %97 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr99 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr99, ptr %next_input_byte, align 8, !tbaa !4
  %98 = load i8, ptr %97, align 1, !tbaa !18
  %conv100 = zext i8 %98 to i32
  %99 = load i32, ptr %tmp, align 4, !tbaa !8
  %add101 = add i32 %99, %conv100
  store i32 %add101, ptr %tmp, align 4, !tbaa !8
  br label %do.cond102

do.cond102:                                       ; preds = %if.end97
  br label %do.end103

do.end103:                                        ; preds = %do.cond102
  br label %if.end121

if.else:                                          ; preds = %for.body
  br label %do.body104

do.body104:                                       ; preds = %if.else
  %100 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp105 = icmp eq i64 %100, 0
  br i1 %cmp105, label %if.then107, label %if.end115

if.then107:                                       ; preds = %do.body104
  %101 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer108 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %101, i32 0, i32 3
  %102 = load ptr, ptr %fill_input_buffer108, align 8, !tbaa !25
  %103 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call109 = call i32 %102(ptr noundef %103)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.then107
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end112:                                        ; preds = %if.then107
  %104 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte113 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %next_input_byte113, align 8, !tbaa !21
  store ptr %105, ptr %next_input_byte, align 8, !tbaa !4
  %106 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer114 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %106, i32 0, i32 1
  %107 = load i64, ptr %bytes_in_buffer114, align 8, !tbaa !23
  store i64 %107, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end115

if.end115:                                        ; preds = %if.end112, %do.body104
  %108 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec116 = add i64 %108, -1
  store i64 %dec116, ptr %bytes_in_buffer, align 8, !tbaa !24
  %109 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr117 = getelementptr inbounds i8, ptr %109, i32 1
  store ptr %incdec.ptr117, ptr %next_input_byte, align 8, !tbaa !4
  %110 = load i8, ptr %109, align 1, !tbaa !18
  %conv118 = zext i8 %110 to i32
  store i32 %conv118, ptr %tmp, align 4, !tbaa !8
  br label %do.cond119

do.cond119:                                       ; preds = %if.end115
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  br label %if.end121

if.end121:                                        ; preds = %do.end120, %do.end103
  %111 = load i32, ptr %tmp, align 4, !tbaa !8
  %conv122 = trunc i32 %111 to i16
  %112 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %112, i32 0, i32 0
  %113 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom123 = sext i32 %113 to i64
  %arrayidx124 = getelementptr inbounds [0 x i32], ptr @gdcmjpeg16_jpeg_natural_order, i64 0, i64 %idxprom123
  %114 = load i32, ptr %arrayidx124, align 4, !tbaa !8
  %idxprom125 = sext i32 %114 to i64
  %arrayidx126 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 %idxprom125
  store i16 %conv122, ptr %arrayidx126, align 2, !tbaa !106
  br label %for.inc

for.inc:                                          ; preds = %if.end121
  %115 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %115, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  %116 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err127 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %err127, align 8, !tbaa !14
  %trace_level = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %117, i32 0, i32 7
  %118 = load i32, ptr %trace_level, align 4, !tbaa !108
  %cmp128 = icmp sge i32 %118, 2
  br i1 %cmp128, label %if.then130, label %if.end194

if.then130:                                       ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc191, %if.then130
  %119 = load i32, ptr %i, align 4, !tbaa !8
  %cmp132 = icmp slt i32 %119, 64
  br i1 %cmp132, label %for.body134, label %for.end193

for.body134:                                      ; preds = %for.cond131
  br label %do.body135

do.body135:                                       ; preds = %for.body134
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp) #4
  %120 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err136 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err136, align 8, !tbaa !14
  %msg_parm137 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %121, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm137, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8, !tbaa !4
  %122 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval138 = getelementptr inbounds %struct.JQUANT_TBL, ptr %122, i32 0, i32 0
  %123 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom139 = sext i32 %123 to i64
  %arrayidx140 = getelementptr inbounds [64 x i16], ptr %quantval138, i64 0, i64 %idxprom139
  %124 = load i16, ptr %arrayidx140, align 2, !tbaa !106
  %conv141 = zext i16 %124 to i32
  %125 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx142 = getelementptr inbounds i32, ptr %125, i64 0
  store i32 %conv141, ptr %arrayidx142, align 4, !tbaa !8
  %126 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval143 = getelementptr inbounds %struct.JQUANT_TBL, ptr %126, i32 0, i32 0
  %127 = load i32, ptr %i, align 4, !tbaa !8
  %add144 = add nsw i32 %127, 1
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds [64 x i16], ptr %quantval143, i64 0, i64 %idxprom145
  %128 = load i16, ptr %arrayidx146, align 2, !tbaa !106
  %conv147 = zext i16 %128 to i32
  %129 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx148 = getelementptr inbounds i32, ptr %129, i64 1
  store i32 %conv147, ptr %arrayidx148, align 4, !tbaa !8
  %130 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval149 = getelementptr inbounds %struct.JQUANT_TBL, ptr %130, i32 0, i32 0
  %131 = load i32, ptr %i, align 4, !tbaa !8
  %add150 = add nsw i32 %131, 2
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds [64 x i16], ptr %quantval149, i64 0, i64 %idxprom151
  %132 = load i16, ptr %arrayidx152, align 2, !tbaa !106
  %conv153 = zext i16 %132 to i32
  %133 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx154 = getelementptr inbounds i32, ptr %133, i64 2
  store i32 %conv153, ptr %arrayidx154, align 4, !tbaa !8
  %134 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval155 = getelementptr inbounds %struct.JQUANT_TBL, ptr %134, i32 0, i32 0
  %135 = load i32, ptr %i, align 4, !tbaa !8
  %add156 = add nsw i32 %135, 3
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds [64 x i16], ptr %quantval155, i64 0, i64 %idxprom157
  %136 = load i16, ptr %arrayidx158, align 2, !tbaa !106
  %conv159 = zext i16 %136 to i32
  %137 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx160 = getelementptr inbounds i32, ptr %137, i64 3
  store i32 %conv159, ptr %arrayidx160, align 4, !tbaa !8
  %138 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval161 = getelementptr inbounds %struct.JQUANT_TBL, ptr %138, i32 0, i32 0
  %139 = load i32, ptr %i, align 4, !tbaa !8
  %add162 = add nsw i32 %139, 4
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [64 x i16], ptr %quantval161, i64 0, i64 %idxprom163
  %140 = load i16, ptr %arrayidx164, align 2, !tbaa !106
  %conv165 = zext i16 %140 to i32
  %141 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx166 = getelementptr inbounds i32, ptr %141, i64 4
  store i32 %conv165, ptr %arrayidx166, align 4, !tbaa !8
  %142 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval167 = getelementptr inbounds %struct.JQUANT_TBL, ptr %142, i32 0, i32 0
  %143 = load i32, ptr %i, align 4, !tbaa !8
  %add168 = add nsw i32 %143, 5
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds [64 x i16], ptr %quantval167, i64 0, i64 %idxprom169
  %144 = load i16, ptr %arrayidx170, align 2, !tbaa !106
  %conv171 = zext i16 %144 to i32
  %145 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx172 = getelementptr inbounds i32, ptr %145, i64 5
  store i32 %conv171, ptr %arrayidx172, align 4, !tbaa !8
  %146 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval173 = getelementptr inbounds %struct.JQUANT_TBL, ptr %146, i32 0, i32 0
  %147 = load i32, ptr %i, align 4, !tbaa !8
  %add174 = add nsw i32 %147, 6
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds [64 x i16], ptr %quantval173, i64 0, i64 %idxprom175
  %148 = load i16, ptr %arrayidx176, align 2, !tbaa !106
  %conv177 = zext i16 %148 to i32
  %149 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx178 = getelementptr inbounds i32, ptr %149, i64 6
  store i32 %conv177, ptr %arrayidx178, align 4, !tbaa !8
  %150 = load ptr, ptr %quant_ptr, align 8, !tbaa !4
  %quantval179 = getelementptr inbounds %struct.JQUANT_TBL, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %i, align 4, !tbaa !8
  %add180 = add nsw i32 %151, 7
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds [64 x i16], ptr %quantval179, i64 0, i64 %idxprom181
  %152 = load i16, ptr %arrayidx182, align 2, !tbaa !106
  %conv183 = zext i16 %152 to i32
  %153 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx184 = getelementptr inbounds i32, ptr %153, i64 7
  store i32 %conv183, ptr %arrayidx184, align 4, !tbaa !8
  %154 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err185 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err185, align 8, !tbaa !14
  %msg_code186 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %155, i32 0, i32 5
  store i32 99, ptr %msg_code186, align 8, !tbaa !15
  %156 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err187 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %err187, align 8, !tbaa !14
  %emit_message188 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %157, i32 0, i32 1
  %158 = load ptr, ptr %emit_message188, align 8, !tbaa !19
  %159 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %158(ptr noundef %159, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp) #4
  br label %do.cond189

do.cond189:                                       ; preds = %do.body135
  br label %do.end190

do.end190:                                        ; preds = %do.cond189
  br label %for.inc191

for.inc191:                                       ; preds = %do.end190
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %add192 = add nsw i32 %160, 8
  store i32 %add192, ptr %i, align 4, !tbaa !8
  br label %for.cond131, !llvm.loop !109

for.end193:                                       ; preds = %for.cond131
  br label %if.end194

if.end194:                                        ; preds = %for.end193, %for.end
  %161 = load i32, ptr %length, align 4, !tbaa !8
  %sub195 = sub nsw i32 %161, 65
  store i32 %sub195, ptr %length, align 4, !tbaa !8
  %162 = load i32, ptr %prec, align 4, !tbaa !8
  %tobool196 = icmp ne i32 %162, 0
  br i1 %tobool196, label %if.then197, label %if.end199

if.then197:                                       ; preds = %if.end194
  %163 = load i32, ptr %length, align 4, !tbaa !8
  %sub198 = sub nsw i32 %163, 64
  store i32 %sub198, ptr %length, align 4, !tbaa !8
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %if.end194
  br label %while.cond, !llvm.loop !110

while.end:                                        ; preds = %while.cond
  %164 = load i32, ptr %length, align 4, !tbaa !8
  %cmp200 = icmp ne i32 %164, 0
  br i1 %cmp200, label %if.then202, label %if.end207

if.then202:                                       ; preds = %while.end
  %165 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err203 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %165, i32 0, i32 0
  %166 = load ptr, ptr %err203, align 8, !tbaa !14
  %msg_code204 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %166, i32 0, i32 5
  store i32 12, ptr %msg_code204, align 8, !tbaa !15
  %167 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err205 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %167, i32 0, i32 0
  %168 = load ptr, ptr %err205, align 8, !tbaa !14
  %error_exit206 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %error_exit206, align 8, !tbaa !49
  %170 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %169(ptr noundef %170)
  br label %if.end207

if.end207:                                        ; preds = %if.then202, %while.end
  %171 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %172 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte208 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %172, i32 0, i32 0
  store ptr %171, ptr %next_input_byte208, align 8, !tbaa !21
  %173 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %174 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer209 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %174, i32 0, i32 1
  store i64 %173, ptr %bytes_in_buffer209, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %if.then111, %if.then93, %if.then78, %if.then30, %if.then13, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %quant_ptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %prec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  %175 = load i32, ptr %retval, align 4
  ret i32 %175
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dri(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %tmp = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasrc) #4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %src = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %src, align 8, !tbaa !20
  store ptr %1, ptr %datasrc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_input_byte) #4
  %2 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte1 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8, !tbaa !21
  store ptr %3, ptr %next_input_byte, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_in_buffer) #4
  %4 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer2 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8, !tbaa !23
  store i64 %5, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8, !tbaa !25
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte4 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8, !tbaa !21
  store ptr %11, ptr %next_input_byte, align 8, !tbaa !4
  %12 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer5 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8, !tbaa !23
  store i64 %13, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8, !tbaa !24
  %15 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %length, align 4, !tbaa !8
  %17 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp7 = icmp eq i64 %17, 0
  br i1 %cmp7, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer10 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer10, align 8, !tbaa !25
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call11 = call i32 %19(ptr noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then9
  %21 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte15 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte15, align 8, !tbaa !21
  store ptr %22, ptr %next_input_byte, align 8, !tbaa !4
  %23 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer16 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer16, align 8, !tbaa !23
  store i64 %24, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec18 = add i64 %25, -1
  store i64 %dec18, ptr %bytes_in_buffer, align 8, !tbaa !24
  %26 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %next_input_byte, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !18
  %conv20 = zext i8 %27 to i32
  %28 = load i32, ptr %length, align 4, !tbaa !8
  %add = add nsw i32 %28, %conv20
  store i32 %add, ptr %length, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, ptr %length, align 4, !tbaa !8
  %cmp21 = icmp ne i32 %29, 4
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %do.end
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %31, i32 0, i32 5
  store i32 12, ptr %msg_code, align 8, !tbaa !15
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err24 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err24, align 8, !tbaa !14
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %error_exit, align 8, !tbaa !49
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %34(ptr noundef %35)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.end
  br label %do.body26

do.body26:                                        ; preds = %if.end25
  %36 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp27 = icmp eq i64 %36, 0
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %do.body26
  %37 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer30 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %fill_input_buffer30, align 8, !tbaa !25
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call31 = call i32 %38(ptr noundef %39)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then29
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.then29
  %40 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte35 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %next_input_byte35, align 8, !tbaa !21
  store ptr %41, ptr %next_input_byte, align 8, !tbaa !4
  %42 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer36 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %42, i32 0, i32 1
  %43 = load i64, ptr %bytes_in_buffer36, align 8, !tbaa !23
  store i64 %43, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %do.body26
  %44 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec38 = add i64 %44, -1
  store i64 %dec38, ptr %bytes_in_buffer, align 8, !tbaa !24
  %45 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr39 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr39, ptr %next_input_byte, align 8, !tbaa !4
  %46 = load i8, ptr %45, align 1, !tbaa !18
  %conv40 = zext i8 %46 to i32
  %shl41 = shl i32 %conv40, 8
  store i32 %shl41, ptr %tmp, align 4, !tbaa !8
  %47 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %cmp42 = icmp eq i64 %47, 0
  br i1 %cmp42, label %if.then44, label %if.end52

if.then44:                                        ; preds = %if.end37
  %48 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %fill_input_buffer45 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %fill_input_buffer45, align 8, !tbaa !25
  %50 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call46 = call i32 %49(ptr noundef %50)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.then44
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.then44
  %51 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte50 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %next_input_byte50, align 8, !tbaa !21
  store ptr %52, ptr %next_input_byte, align 8, !tbaa !4
  %53 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer51 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %bytes_in_buffer51, align 8, !tbaa !23
  store i64 %54, ptr %bytes_in_buffer, align 8, !tbaa !24
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.end37
  %55 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %dec53 = add i64 %55, -1
  store i64 %dec53, ptr %bytes_in_buffer, align 8, !tbaa !24
  %56 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %incdec.ptr54 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr54, ptr %next_input_byte, align 8, !tbaa !4
  %57 = load i8, ptr %56, align 1, !tbaa !18
  %conv55 = zext i8 %57 to i32
  %58 = load i32, ptr %tmp, align 4, !tbaa !8
  %add56 = add i32 %58, %conv55
  store i32 %add56, ptr %tmp, align 4, !tbaa !8
  br label %do.cond57

do.cond57:                                        ; preds = %if.end52
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %59 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err59 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err59, align 8, !tbaa !14
  %msg_code60 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %60, i32 0, i32 5
  store i32 88, ptr %msg_code60, align 8, !tbaa !15
  %61 = load i32, ptr %tmp, align 4, !tbaa !8
  %62 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err61 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err61, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %63, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %61, ptr %arrayidx, align 4, !tbaa !18
  %64 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err62 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err62, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %67 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %66(ptr noundef %67, i32 noundef 1)
  %68 = load i32, ptr %tmp, align 4, !tbaa !8
  %69 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %restart_interval = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %69, i32 0, i32 49
  store i32 %68, ptr %restart_interval, align 4, !tbaa !68
  %70 = load ptr, ptr %next_input_byte, align 8, !tbaa !4
  %71 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %next_input_byte63 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %71, i32 0, i32 0
  store ptr %70, ptr %next_input_byte63, align 8, !tbaa !21
  %72 = load i64, ptr %bytes_in_buffer, align 8, !tbaa !24
  %73 = load ptr, ptr %datasrc, align 8, !tbaa !4
  %bytes_in_buffer64 = getelementptr inbounds %struct.gdcmjpeg16_source_mgr, ptr %73, i32 0, i32 1
  store i64 %72, ptr %bytes_in_buffer64, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.then48, %if.then33, %if.then13, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_in_buffer) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_input_byte) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasrc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

declare ptr @gdcmjpeg16_jpeg_alloc_huff_table(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @gdcmjpeg16_jpeg_alloc_quant_table(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @examine_app0(ptr noundef %cinfo, ptr noundef %data, i32 noundef %datalen, i32 noundef %remaining) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i32, align 4
  %remaining.addr = alloca i32, align 4
  %totallen = alloca i32, align 4
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %datalen, ptr %datalen.addr, align 4, !tbaa !8
  store i32 %remaining, ptr %remaining.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %totallen) #4
  %0 = load i32, ptr %datalen.addr, align 4, !tbaa !8
  %1 = load i32, ptr %remaining.addr, align 4, !tbaa !8
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %totallen, align 4, !tbaa !8
  %2 = load i32, ptr %datalen.addr, align 4, !tbaa !8
  %cmp = icmp uge i32 %2, 14
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 74
  br i1 %cmp1, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx4, align 1, !tbaa !18
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 70
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %7 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i8, ptr %7, i64 2
  %8 = load i8, ptr %arrayidx9, align 1, !tbaa !18
  %conv10 = zext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 73
  br i1 %cmp11, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %9 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %9, i64 3
  %10 = load i8, ptr %arrayidx14, align 1, !tbaa !18
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 70
  br i1 %cmp16, label %land.lhs.true18, label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %11 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds i8, ptr %11, i64 4
  %12 = load i8, ptr %arrayidx19, align 1, !tbaa !18
  %conv20 = zext i8 %12 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true18
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %saw_JFIF_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %13, i32 0, i32 50
  store i32 1, ptr %saw_JFIF_marker, align 8, !tbaa !71
  %14 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds i8, ptr %14, i64 5
  %15 = load i8, ptr %arrayidx23, align 1, !tbaa !18
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_major_version = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %16, i32 0, i32 51
  store i8 %15, ptr %JFIF_major_version, align 4, !tbaa !72
  %17 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i8, ptr %17, i64 6
  %18 = load i8, ptr %arrayidx24, align 1, !tbaa !18
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_minor_version = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %19, i32 0, i32 52
  store i8 %18, ptr %JFIF_minor_version, align 1, !tbaa !73
  %20 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i8, ptr %20, i64 7
  %21 = load i8, ptr %arrayidx25, align 1, !tbaa !18
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %density_unit = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %22, i32 0, i32 53
  store i8 %21, ptr %density_unit, align 2, !tbaa !74
  %23 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i8, ptr %23, i64 8
  %24 = load i8, ptr %arrayidx26, align 1, !tbaa !18
  %conv27 = zext i8 %24 to i32
  %shl = shl i32 %conv27, 8
  %25 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i8, ptr %25, i64 9
  %26 = load i8, ptr %arrayidx28, align 1, !tbaa !18
  %conv29 = zext i8 %26 to i32
  %add30 = add nsw i32 %shl, %conv29
  %conv31 = trunc i32 %add30 to i16
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %X_density = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %27, i32 0, i32 54
  store i16 %conv31, ptr %X_density, align 8, !tbaa !75
  %28 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds i8, ptr %28, i64 10
  %29 = load i8, ptr %arrayidx32, align 1, !tbaa !18
  %conv33 = zext i8 %29 to i32
  %shl34 = shl i32 %conv33, 8
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds i8, ptr %30, i64 11
  %31 = load i8, ptr %arrayidx35, align 1, !tbaa !18
  %conv36 = zext i8 %31 to i32
  %add37 = add nsw i32 %shl34, %conv36
  %conv38 = trunc i32 %add37 to i16
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Y_density = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %32, i32 0, i32 55
  store i16 %conv38, ptr %Y_density, align 2, !tbaa !76
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_major_version39 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %33, i32 0, i32 51
  %34 = load i8, ptr %JFIF_major_version39, align 4, !tbaa !72
  %conv40 = zext i8 %34 to i32
  %cmp41 = icmp ne i32 %conv40, 1
  br i1 %cmp41, label %if.then43, label %if.end

if.then43:                                        ; preds = %if.then
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %36, i32 0, i32 5
  store i32 126, ptr %msg_code, align 8, !tbaa !15
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_major_version44 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %37, i32 0, i32 51
  %38 = load i8, ptr %JFIF_major_version44, align 4, !tbaa !72
  %conv45 = zext i8 %38 to i32
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err46 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %err46, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %40, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %conv45, ptr %arrayidx47, align 4, !tbaa !18
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_minor_version48 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %41, i32 0, i32 52
  %42 = load i8, ptr %JFIF_minor_version48, align 1, !tbaa !73
  %conv49 = zext i8 %42 to i32
  %43 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err50 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %err50, align 8, !tbaa !14
  %msg_parm51 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %44, i32 0, i32 6
  %arrayidx52 = getelementptr inbounds [8 x i32], ptr %msg_parm51, i64 0, i64 1
  store i32 %conv49, ptr %arrayidx52, align 4, !tbaa !18
  %45 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err53 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err53, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %48 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %47(ptr noundef %48, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.then43, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp) #4
  %49 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err54 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err54, align 8, !tbaa !14
  %msg_parm55 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %50, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm55, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8, !tbaa !4
  %51 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_major_version56 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %51, i32 0, i32 51
  %52 = load i8, ptr %JFIF_major_version56, align 4, !tbaa !72
  %conv57 = zext i8 %52 to i32
  %53 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx58 = getelementptr inbounds i32, ptr %53, i64 0
  store i32 %conv57, ptr %arrayidx58, align 4, !tbaa !8
  %54 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_minor_version59 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %54, i32 0, i32 52
  %55 = load i8, ptr %JFIF_minor_version59, align 1, !tbaa !73
  %conv60 = zext i8 %55 to i32
  %56 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds i32, ptr %56, i64 1
  store i32 %conv60, ptr %arrayidx61, align 4, !tbaa !8
  %57 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %X_density62 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %57, i32 0, i32 54
  %58 = load i16, ptr %X_density62, align 8, !tbaa !75
  %conv63 = zext i16 %58 to i32
  %59 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx64 = getelementptr inbounds i32, ptr %59, i64 2
  store i32 %conv63, ptr %arrayidx64, align 4, !tbaa !8
  %60 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Y_density65 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %60, i32 0, i32 55
  %61 = load i16, ptr %Y_density65, align 2, !tbaa !76
  %conv66 = zext i16 %61 to i32
  %62 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx67 = getelementptr inbounds i32, ptr %62, i64 3
  store i32 %conv66, ptr %arrayidx67, align 4, !tbaa !8
  %63 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %density_unit68 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %63, i32 0, i32 53
  %64 = load i8, ptr %density_unit68, align 2, !tbaa !74
  %conv69 = zext i8 %64 to i32
  %65 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds i32, ptr %65, i64 4
  store i32 %conv69, ptr %arrayidx70, align 4, !tbaa !8
  %66 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err71 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err71, align 8, !tbaa !14
  %msg_code72 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %67, i32 0, i32 5
  store i32 93, ptr %msg_code72, align 8, !tbaa !15
  %68 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err73 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %err73, align 8, !tbaa !14
  %emit_message74 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %emit_message74, align 8, !tbaa !19
  %71 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %70(ptr noundef %71, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %72 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds i8, ptr %72, i64 12
  %73 = load i8, ptr %arrayidx75, align 1, !tbaa !18
  %conv76 = zext i8 %73 to i32
  %74 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx77 = getelementptr inbounds i8, ptr %74, i64 13
  %75 = load i8, ptr %arrayidx77, align 1, !tbaa !18
  %conv78 = zext i8 %75 to i32
  %or = or i32 %conv76, %conv78
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then79, label %if.end94

if.then79:                                        ; preds = %do.end
  %76 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err80 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %err80, align 8, !tbaa !14
  %msg_code81 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %77, i32 0, i32 5
  store i32 96, ptr %msg_code81, align 8, !tbaa !15
  %78 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds i8, ptr %78, i64 12
  %79 = load i8, ptr %arrayidx82, align 1, !tbaa !18
  %conv83 = zext i8 %79 to i32
  %80 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err84 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %err84, align 8, !tbaa !14
  %msg_parm85 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %81, i32 0, i32 6
  %arrayidx86 = getelementptr inbounds [8 x i32], ptr %msg_parm85, i64 0, i64 0
  store i32 %conv83, ptr %arrayidx86, align 4, !tbaa !18
  %82 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds i8, ptr %82, i64 13
  %83 = load i8, ptr %arrayidx87, align 1, !tbaa !18
  %conv88 = zext i8 %83 to i32
  %84 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err89 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %err89, align 8, !tbaa !14
  %msg_parm90 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %85, i32 0, i32 6
  %arrayidx91 = getelementptr inbounds [8 x i32], ptr %msg_parm90, i64 0, i64 1
  store i32 %conv88, ptr %arrayidx91, align 4, !tbaa !18
  %86 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err92 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err92, align 8, !tbaa !14
  %emit_message93 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %emit_message93, align 8, !tbaa !19
  %89 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %88(ptr noundef %89, i32 noundef 1)
  br label %if.end94

if.end94:                                         ; preds = %if.then79, %do.end
  %90 = load i32, ptr %totallen, align 4, !tbaa !8
  %sub = sub nsw i32 %90, 14
  store i32 %sub, ptr %totallen, align 4, !tbaa !8
  %91 = load i32, ptr %totallen, align 4, !tbaa !8
  %92 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds i8, ptr %92, i64 12
  %93 = load i8, ptr %arrayidx95, align 1, !tbaa !18
  %conv96 = zext i8 %93 to i32
  %94 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds i8, ptr %94, i64 13
  %95 = load i8, ptr %arrayidx97, align 1, !tbaa !18
  %conv98 = zext i8 %95 to i32
  %mul = mul nsw i32 %conv96, %conv98
  %mul99 = mul nsw i32 %mul, 3
  %cmp100 = icmp ne i32 %91, %mul99
  br i1 %cmp100, label %if.then102, label %if.end110

if.then102:                                       ; preds = %if.end94
  %96 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err103 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %err103, align 8, !tbaa !14
  %msg_code104 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %97, i32 0, i32 5
  store i32 94, ptr %msg_code104, align 8, !tbaa !15
  %98 = load i32, ptr %totallen, align 4, !tbaa !8
  %99 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err105 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %err105, align 8, !tbaa !14
  %msg_parm106 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %100, i32 0, i32 6
  %arrayidx107 = getelementptr inbounds [8 x i32], ptr %msg_parm106, i64 0, i64 0
  store i32 %98, ptr %arrayidx107, align 4, !tbaa !18
  %101 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err108 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %err108, align 8, !tbaa !14
  %emit_message109 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %emit_message109, align 8, !tbaa !19
  %104 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %103(ptr noundef %104, i32 noundef 1)
  br label %if.end110

if.end110:                                        ; preds = %if.then102, %if.end94
  br label %if.end185

if.else:                                          ; preds = %land.lhs.true18, %land.lhs.true13, %land.lhs.true8, %land.lhs.true3, %land.lhs.true, %entry
  %105 = load i32, ptr %datalen.addr, align 4, !tbaa !8
  %cmp111 = icmp uge i32 %105, 6
  br i1 %cmp111, label %land.lhs.true113, label %if.else176

land.lhs.true113:                                 ; preds = %if.else
  %106 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds i8, ptr %106, i64 0
  %107 = load i8, ptr %arrayidx114, align 1, !tbaa !18
  %conv115 = zext i8 %107 to i32
  %cmp116 = icmp eq i32 %conv115, 74
  br i1 %cmp116, label %land.lhs.true118, label %if.else176

land.lhs.true118:                                 ; preds = %land.lhs.true113
  %108 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds i8, ptr %108, i64 1
  %109 = load i8, ptr %arrayidx119, align 1, !tbaa !18
  %conv120 = zext i8 %109 to i32
  %cmp121 = icmp eq i32 %conv120, 70
  br i1 %cmp121, label %land.lhs.true123, label %if.else176

land.lhs.true123:                                 ; preds = %land.lhs.true118
  %110 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx124 = getelementptr inbounds i8, ptr %110, i64 2
  %111 = load i8, ptr %arrayidx124, align 1, !tbaa !18
  %conv125 = zext i8 %111 to i32
  %cmp126 = icmp eq i32 %conv125, 88
  br i1 %cmp126, label %land.lhs.true128, label %if.else176

land.lhs.true128:                                 ; preds = %land.lhs.true123
  %112 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx129 = getelementptr inbounds i8, ptr %112, i64 3
  %113 = load i8, ptr %arrayidx129, align 1, !tbaa !18
  %conv130 = zext i8 %113 to i32
  %cmp131 = icmp eq i32 %conv130, 88
  br i1 %cmp131, label %land.lhs.true133, label %if.else176

land.lhs.true133:                                 ; preds = %land.lhs.true128
  %114 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx134 = getelementptr inbounds i8, ptr %114, i64 4
  %115 = load i8, ptr %arrayidx134, align 1, !tbaa !18
  %conv135 = zext i8 %115 to i32
  %cmp136 = icmp eq i32 %conv135, 0
  br i1 %cmp136, label %if.then138, label %if.else176

if.then138:                                       ; preds = %land.lhs.true133
  %116 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx139 = getelementptr inbounds i8, ptr %116, i64 5
  %117 = load i8, ptr %arrayidx139, align 1, !tbaa !18
  %conv140 = zext i8 %117 to i32
  switch i32 %conv140, label %sw.default [
    i32 16, label %sw.bb
    i32 17, label %sw.bb148
    i32 19, label %sw.bb156
  ]

sw.bb:                                            ; preds = %if.then138
  %118 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err141 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %118, i32 0, i32 0
  %119 = load ptr, ptr %err141, align 8, !tbaa !14
  %msg_code142 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %119, i32 0, i32 5
  store i32 114, ptr %msg_code142, align 8, !tbaa !15
  %120 = load i32, ptr %totallen, align 4, !tbaa !8
  %121 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err143 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %err143, align 8, !tbaa !14
  %msg_parm144 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %122, i32 0, i32 6
  %arrayidx145 = getelementptr inbounds [8 x i32], ptr %msg_parm144, i64 0, i64 0
  store i32 %120, ptr %arrayidx145, align 4, !tbaa !18
  %123 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err146 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %err146, align 8, !tbaa !14
  %emit_message147 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %emit_message147, align 8, !tbaa !19
  %126 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %125(ptr noundef %126, i32 noundef 1)
  br label %sw.epilog

sw.bb148:                                         ; preds = %if.then138
  %127 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err149 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %err149, align 8, !tbaa !14
  %msg_code150 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %128, i32 0, i32 5
  store i32 115, ptr %msg_code150, align 8, !tbaa !15
  %129 = load i32, ptr %totallen, align 4, !tbaa !8
  %130 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err151 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %err151, align 8, !tbaa !14
  %msg_parm152 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %131, i32 0, i32 6
  %arrayidx153 = getelementptr inbounds [8 x i32], ptr %msg_parm152, i64 0, i64 0
  store i32 %129, ptr %arrayidx153, align 4, !tbaa !18
  %132 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err154 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %err154, align 8, !tbaa !14
  %emit_message155 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %emit_message155, align 8, !tbaa !19
  %135 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %134(ptr noundef %135, i32 noundef 1)
  br label %sw.epilog

sw.bb156:                                         ; preds = %if.then138
  %136 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err157 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %err157, align 8, !tbaa !14
  %msg_code158 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %137, i32 0, i32 5
  store i32 116, ptr %msg_code158, align 8, !tbaa !15
  %138 = load i32, ptr %totallen, align 4, !tbaa !8
  %139 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err159 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %err159, align 8, !tbaa !14
  %msg_parm160 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %140, i32 0, i32 6
  %arrayidx161 = getelementptr inbounds [8 x i32], ptr %msg_parm160, i64 0, i64 0
  store i32 %138, ptr %arrayidx161, align 4, !tbaa !18
  %141 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err162 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %err162, align 8, !tbaa !14
  %emit_message163 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %142, i32 0, i32 1
  %143 = load ptr, ptr %emit_message163, align 8, !tbaa !19
  %144 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %143(ptr noundef %144, i32 noundef 1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then138
  %145 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err164 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %err164, align 8, !tbaa !14
  %msg_code165 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %146, i32 0, i32 5
  store i32 95, ptr %msg_code165, align 8, !tbaa !15
  %147 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx166 = getelementptr inbounds i8, ptr %147, i64 5
  %148 = load i8, ptr %arrayidx166, align 1, !tbaa !18
  %conv167 = zext i8 %148 to i32
  %149 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err168 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %err168, align 8, !tbaa !14
  %msg_parm169 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %150, i32 0, i32 6
  %arrayidx170 = getelementptr inbounds [8 x i32], ptr %msg_parm169, i64 0, i64 0
  store i32 %conv167, ptr %arrayidx170, align 4, !tbaa !18
  %151 = load i32, ptr %totallen, align 4, !tbaa !8
  %152 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err171 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %err171, align 8, !tbaa !14
  %msg_parm172 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %153, i32 0, i32 6
  %arrayidx173 = getelementptr inbounds [8 x i32], ptr %msg_parm172, i64 0, i64 1
  store i32 %151, ptr %arrayidx173, align 4, !tbaa !18
  %154 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err174 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err174, align 8, !tbaa !14
  %emit_message175 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %emit_message175, align 8, !tbaa !19
  %157 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %156(ptr noundef %157, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb156, %sw.bb148, %sw.bb
  br label %if.end184

if.else176:                                       ; preds = %land.lhs.true133, %land.lhs.true128, %land.lhs.true123, %land.lhs.true118, %land.lhs.true113, %if.else
  %158 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err177 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %err177, align 8, !tbaa !14
  %msg_code178 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %159, i32 0, i32 5
  store i32 83, ptr %msg_code178, align 8, !tbaa !15
  %160 = load i32, ptr %totallen, align 4, !tbaa !8
  %161 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err179 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %err179, align 8, !tbaa !14
  %msg_parm180 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %162, i32 0, i32 6
  %arrayidx181 = getelementptr inbounds [8 x i32], ptr %msg_parm180, i64 0, i64 0
  store i32 %160, ptr %arrayidx181, align 4, !tbaa !18
  %163 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err182 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %163, i32 0, i32 0
  %164 = load ptr, ptr %err182, align 8, !tbaa !14
  %emit_message183 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %164, i32 0, i32 1
  %165 = load ptr, ptr %emit_message183, align 8, !tbaa !19
  %166 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %165(ptr noundef %166, i32 noundef 1)
  br label %if.end184

if.end184:                                        ; preds = %if.else176, %sw.epilog
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end110
  call void @llvm.lifetime.end.p0(i64 4, ptr %totallen) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @examine_app14(ptr noundef %cinfo, ptr noundef %data, i32 noundef %datalen, i32 noundef %remaining) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i32, align 4
  %remaining.addr = alloca i32, align 4
  %version = alloca i32, align 4
  %flags0 = alloca i32, align 4
  %flags1 = alloca i32, align 4
  %transform = alloca i32, align 4
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %datalen, ptr %datalen.addr, align 4, !tbaa !8
  store i32 %remaining, ptr %remaining.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %transform) #4
  %0 = load i32, ptr %datalen.addr, align 4, !tbaa !8
  %cmp = icmp uge i32 %0, 12
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 65
  br i1 %cmp1, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx4, align 1, !tbaa !18
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 100
  br i1 %cmp6, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx9, align 1, !tbaa !18
  %conv10 = zext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 111
  br i1 %cmp11, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %7 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx14, align 1, !tbaa !18
  %conv15 = zext i8 %8 to i32
  %cmp16 = icmp eq i32 %conv15, 98
  br i1 %cmp16, label %land.lhs.true18, label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %9 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i8, ptr %arrayidx19, align 1, !tbaa !18
  %conv20 = zext i8 %10 to i32
  %cmp21 = icmp eq i32 %conv20, 101
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true18
  %11 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds i8, ptr %11, i64 5
  %12 = load i8, ptr %arrayidx23, align 1, !tbaa !18
  %conv24 = zext i8 %12 to i32
  %shl = shl i32 %conv24, 8
  %13 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i8, ptr %13, i64 6
  %14 = load i8, ptr %arrayidx25, align 1, !tbaa !18
  %conv26 = zext i8 %14 to i32
  %add = add nsw i32 %shl, %conv26
  store i32 %add, ptr %version, align 4, !tbaa !8
  %15 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds i8, ptr %15, i64 7
  %16 = load i8, ptr %arrayidx27, align 1, !tbaa !18
  %conv28 = zext i8 %16 to i32
  %shl29 = shl i32 %conv28, 8
  %17 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds i8, ptr %17, i64 8
  %18 = load i8, ptr %arrayidx30, align 1, !tbaa !18
  %conv31 = zext i8 %18 to i32
  %add32 = add nsw i32 %shl29, %conv31
  store i32 %add32, ptr %flags0, align 4, !tbaa !8
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds i8, ptr %19, i64 9
  %20 = load i8, ptr %arrayidx33, align 1, !tbaa !18
  %conv34 = zext i8 %20 to i32
  %shl35 = shl i32 %conv34, 8
  %21 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds i8, ptr %21, i64 10
  %22 = load i8, ptr %arrayidx36, align 1, !tbaa !18
  %conv37 = zext i8 %22 to i32
  %add38 = add nsw i32 %shl35, %conv37
  store i32 %add38, ptr %flags1, align 4, !tbaa !8
  %23 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds i8, ptr %23, i64 11
  %24 = load i8, ptr %arrayidx39, align 1, !tbaa !18
  %conv40 = zext i8 %24 to i32
  store i32 %conv40, ptr %transform, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp) #4
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err, align 8, !tbaa !14
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %26, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8, !tbaa !4
  %27 = load i32, ptr %version, align 4, !tbaa !8
  %28 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx41 = getelementptr inbounds i32, ptr %28, i64 0
  store i32 %27, ptr %arrayidx41, align 4, !tbaa !8
  %29 = load i32, ptr %flags0, align 4, !tbaa !8
  %30 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds i32, ptr %30, i64 1
  store i32 %29, ptr %arrayidx42, align 4, !tbaa !8
  %31 = load i32, ptr %flags1, align 4, !tbaa !8
  %32 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds i32, ptr %32, i64 2
  store i32 %31, ptr %arrayidx43, align 4, !tbaa !8
  %33 = load i32, ptr %transform, align 4, !tbaa !8
  %34 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds i32, ptr %34, i64 3
  store i32 %33, ptr %arrayidx44, align 4, !tbaa !8
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err45 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err45, align 8, !tbaa !14
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %36, i32 0, i32 5
  store i32 82, ptr %msg_code, align 8, !tbaa !15
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err46 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %err46, align 8, !tbaa !14
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %emit_message, align 8, !tbaa !19
  %40 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %39(ptr noundef %40, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %saw_Adobe_marker = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %41, i32 0, i32 56
  store i32 1, ptr %saw_Adobe_marker, align 4, !tbaa !77
  %42 = load i32, ptr %transform, align 4, !tbaa !8
  %conv47 = trunc i32 %42 to i8
  %43 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Adobe_transform = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %43, i32 0, i32 57
  store i8 %conv47, ptr %Adobe_transform, align 8, !tbaa !78
  br label %if.end

if.else:                                          ; preds = %land.lhs.true18, %land.lhs.true13, %land.lhs.true8, %land.lhs.true3, %land.lhs.true, %entry
  %44 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err48 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %err48, align 8, !tbaa !14
  %msg_code49 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %45, i32 0, i32 5
  store i32 84, ptr %msg_code49, align 8, !tbaa !15
  %46 = load i32, ptr %datalen.addr, align 4, !tbaa !8
  %47 = load i32, ptr %remaining.addr, align 4, !tbaa !8
  %add50 = add i32 %46, %47
  %48 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err51 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %err51, align 8, !tbaa !14
  %msg_parm52 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %49, i32 0, i32 6
  %arrayidx53 = getelementptr inbounds [8 x i32], ptr %msg_parm52, i64 0, i64 0
  store i32 %add50, ptr %arrayidx53, align 4, !tbaa !18
  %50 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err54 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err54, align 8, !tbaa !14
  %emit_message55 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %emit_message55, align 8, !tbaa !19
  %53 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %52(ptr noundef %53, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %transform) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #4
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 540}
!11 = !{!"gdcmjpeg16_decompress_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !5, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 60, !6, i64 64, !9, i64 68, !9, i64 72, !12, i64 80, !9, i64 88, !9, i64 92, !6, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !6, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !5, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !5, i64 192, !6, i64 200, !6, i64 232, !6, i64 264, !9, i64 296, !5, i64 304, !9, i64 312, !6, i64 316, !6, i64 332, !6, i64 348, !9, i64 364, !9, i64 368, !6, i64 372, !6, i64 373, !6, i64 374, !13, i64 376, !13, i64 378, !9, i64 380, !6, i64 384, !9, i64 388, !5, i64 392, !9, i64 400, !6, i64 404, !9, i64 408, !9, i64 412, !9, i64 416, !9, i64 420, !5, i64 424, !9, i64 432, !6, i64 440, !9, i64 472, !9, i64 476, !9, i64 480, !6, i64 484, !9, i64 524, !9, i64 528, !9, i64 532, !9, i64 536, !9, i64 540, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608}
!12 = !{!"double", !6, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!11, !5, i64 0}
!15 = !{!16, !9, i64 40}
!16 = !{!"gdcmjpeg16_error_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !9, i64 40, !6, i64 44, !9, i64 124, !17, i64 128, !5, i64 136, !9, i64 144, !5, i64 152, !9, i64 160, !9, i64 164}
!17 = !{!"long", !6, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!16, !5, i64 8}
!20 = !{!11, !5, i64 40}
!21 = !{!22, !5, i64 0}
!22 = !{!"gdcmjpeg16_source_mgr", !5, i64 0, !17, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!23 = !{!22, !17, i64 8}
!24 = !{!17, !17, i64 0}
!25 = !{!22, !5, i64 24}
!26 = !{!11, !5, i64 584}
!27 = !{!28, !9, i64 36}
!28 = !{!"jpeg_marker_reader", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = !{!11, !5, i64 8}
!33 = !{!34, !5, i64 0}
!34 = !{!"gdcmjpeg16_memory_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !17, i64 96, !17, i64 104}
!35 = !{!36, !5, i64 0}
!36 = !{!"", !28, i64 0, !5, i64 40, !6, i64 48, !9, i64 176, !6, i64 180, !5, i64 248, !9, i64 256}
!37 = !{!36, !5, i64 8}
!38 = !{!36, !5, i64 16}
!39 = !{!36, !5, i64 40}
!40 = !{!36, !9, i64 176}
!41 = distinct !{!41, !30}
!42 = !{!11, !5, i64 304}
!43 = !{!11, !9, i64 172}
!44 = !{!36, !9, i64 24}
!45 = !{!36, !9, i64 28}
!46 = !{!36, !9, i64 36}
!47 = !{!36, !5, i64 248}
!48 = !{!28, !9, i64 24}
!49 = !{!16, !5, i64 0}
!50 = !{!28, !9, i64 32}
!51 = !{!22, !5, i64 40}
!52 = !{!22, !5, i64 32}
!53 = distinct !{!53, !30}
!54 = !{!34, !17, i64 104}
!55 = !{!34, !5, i64 8}
!56 = !{!57, !5, i64 0}
!57 = !{!"jpeg_marker_struct", !5, i64 0, !6, i64 8, !9, i64 12, !9, i64 16, !5, i64 24}
!58 = !{!57, !6, i64 8}
!59 = !{!57, !9, i64 12}
!60 = !{!57, !9, i64 16}
!61 = !{!57, !5, i64 24}
!62 = !{!36, !9, i64 256}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = !{!11, !5, i64 392}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = !{!11, !9, i64 364}
!69 = !{!11, !6, i64 60}
!70 = !{!11, !9, i64 388}
!71 = !{!11, !9, i64 368}
!72 = !{!11, !6, i64 372}
!73 = !{!11, !6, i64 373}
!74 = !{!11, !6, i64 374}
!75 = !{!11, !13, i64 376}
!76 = !{!11, !13, i64 378}
!77 = !{!11, !9, i64 380}
!78 = !{!11, !6, i64 384}
!79 = !{!11, !9, i64 400}
!80 = !{!11, !6, i64 404}
!81 = !{!11, !9, i64 312}
!82 = !{!11, !9, i64 296}
!83 = !{!11, !9, i64 52}
!84 = !{!11, !9, i64 48}
!85 = !{!11, !9, i64 56}
!86 = !{!28, !9, i64 28}
!87 = !{!88, !9, i64 4}
!88 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !5, i64 80, !5, i64 88}
!89 = !{!88, !9, i64 0}
!90 = !{!88, !9, i64 8}
!91 = !{!88, !9, i64 12}
!92 = !{!88, !9, i64 16}
!93 = distinct !{!93, !30}
!94 = !{!11, !9, i64 432}
!95 = distinct !{!95, !30}
!96 = !{!88, !9, i64 20}
!97 = !{!88, !9, i64 24}
!98 = distinct !{!98, !30}
!99 = !{!11, !9, i64 524}
!100 = !{!11, !9, i64 528}
!101 = !{!11, !9, i64 532}
!102 = !{!11, !9, i64 536}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !30}
!105 = distinct !{!105, !30}
!106 = !{!13, !13, i64 0}
!107 = distinct !{!107, !30}
!108 = !{!16, !9, i64 124}
!109 = distinct !{!109, !30}
!110 = distinct !{!110, !30}

; ModuleID = 'samples/486.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/jcmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdcmjpeg16_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gdcmjpeg16_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64 }
%struct.my_marker_writer = type { %struct.jpeg_marker_writer, i32 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.gdcmjpeg16_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.gdcmjpeg16_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@gdcmjpeg16_jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jinit_marker_writer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8, !tbaa !13
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 64)
  store ptr %call, ptr %marker, align 8, !tbaa !4
  %4 = load ptr, ptr %marker, align 8, !tbaa !4
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %5, i32 0, i32 60
  store ptr %4, ptr %marker1, align 8, !tbaa !16
  %6 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.my_marker_writer, ptr %6, i32 0, i32 0
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %pub, i32 0, i32 0
  store ptr @write_file_header, ptr %write_file_header, align 8, !tbaa !17
  %7 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub2 = getelementptr inbounds %struct.my_marker_writer, ptr %7, i32 0, i32 0
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %pub2, i32 0, i32 1
  store ptr @write_frame_header, ptr %write_frame_header, align 8, !tbaa !20
  %8 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub3 = getelementptr inbounds %struct.my_marker_writer, ptr %8, i32 0, i32 0
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %pub3, i32 0, i32 2
  store ptr @write_scan_header, ptr %write_scan_header, align 8, !tbaa !21
  %9 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub4 = getelementptr inbounds %struct.my_marker_writer, ptr %9, i32 0, i32 0
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, ptr %pub4, i32 0, i32 3
  store ptr @write_file_trailer, ptr %write_file_trailer, align 8, !tbaa !22
  %10 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub5 = getelementptr inbounds %struct.my_marker_writer, ptr %10, i32 0, i32 0
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, ptr %pub5, i32 0, i32 4
  store ptr @write_tables_only, ptr %write_tables_only, align 8, !tbaa !23
  %11 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub6 = getelementptr inbounds %struct.my_marker_writer, ptr %11, i32 0, i32 0
  %write_marker_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %pub6, i32 0, i32 5
  store ptr @write_marker_header, ptr %write_marker_header, align 8, !tbaa !24
  %12 = load ptr, ptr %marker, align 8, !tbaa !4
  %pub7 = getelementptr inbounds %struct.my_marker_writer, ptr %12, i32 0, i32 0
  %write_marker_byte = getelementptr inbounds %struct.jpeg_marker_writer, ptr %pub7, i32 0, i32 6
  store ptr @write_marker_byte, ptr %write_marker_byte, align 8, !tbaa !25
  %13 = load ptr, ptr %marker, align 8, !tbaa !4
  %last_restart_interval = getelementptr inbounds %struct.my_marker_writer, ptr %13, i32 0, i32 1
  store i32 0, ptr %last_restart_interval, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @write_file_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %0, i32 0, i32 60
  %1 = load ptr, ptr %marker1, align 8, !tbaa !16
  store ptr %1, ptr %marker, align 8, !tbaa !4
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %2, i32 noundef 216)
  %3 = load ptr, ptr %marker, align 8, !tbaa !4
  %last_restart_interval = getelementptr inbounds %struct.my_marker_writer, ptr %3, i32 0, i32 1
  store i32 0, ptr %last_restart_interval, align 8, !tbaa !26
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %write_JFIF_header = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %4, i32 0, i32 33
  %5 = load i32, ptr %write_JFIF_header, align 8, !tbaa !27
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_jfif_app0(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %write_Adobe_marker = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %7, i32 0, i32 39
  %8 = load i32, ptr %write_Adobe_marker, align 4, !tbaa !28
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_adobe_app14(ptr noundef %9)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_frame_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %prec = alloca i32, align 4
  %is_baseline = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %prec) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_baseline) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #2
  store i32 0, ptr %prec, align 4, !tbaa !29
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %0, i32 0, i32 42
  %1 = load i32, ptr %process, align 8, !tbaa !30
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %ci, align 4, !tbaa !29
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %2, i32 0, i32 16
  %3 = load ptr, ptr %comp_info, align 8, !tbaa !31
  store ptr %3, ptr %compptr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %ci, align 4, !tbaa !29
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %5, i32 0, i32 14
  %6 = load i32, ptr %num_components, align 8, !tbaa !32
  %cmp1 = icmp slt i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %compptr, align 8, !tbaa !4
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %quant_tbl_no, align 8, !tbaa !33
  %call = call i32 @emit_dqt(ptr noundef %7, i32 noundef %9)
  %10 = load i32, ptr %prec, align 4, !tbaa !29
  %add = add nsw i32 %10, %call
  store i32 %add, ptr %prec, align 4, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %ci, align 4, !tbaa !29
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !29
  %12 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_code = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %13, i32 0, i32 26
  %14 = load i32, ptr %arith_code, align 4, !tbaa !37
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process2 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %15, i32 0, i32 42
  %16 = load i32, ptr %process2, align 8, !tbaa !30
  %cmp3 = icmp ne i32 %16, 0
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %data_precision = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %data_precision, align 4, !tbaa !38
  %cmp5 = icmp ne i32 %18, 8
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  store i32 0, ptr %is_baseline, align 4, !tbaa !29
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false4
  store i32 1, ptr %is_baseline, align 4, !tbaa !29
  store i32 0, ptr %ci, align 4, !tbaa !29
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info7 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %19, i32 0, i32 16
  %20 = load ptr, ptr %comp_info7, align 8, !tbaa !31
  store ptr %20, ptr %compptr, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc17, %if.else
  %21 = load i32, ptr %ci, align 4, !tbaa !29
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components9 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %22, i32 0, i32 14
  %23 = load i32, ptr %num_components9, align 8, !tbaa !32
  %cmp10 = icmp slt i32 %21, %23
  br i1 %cmp10, label %for.body11, label %for.end20

for.body11:                                       ; preds = %for.cond8
  %24 = load ptr, ptr %compptr, align 8, !tbaa !4
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %dc_tbl_no, align 4, !tbaa !39
  %cmp12 = icmp sgt i32 %25, 1
  br i1 %cmp12, label %if.then15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %for.body11
  %26 = load ptr, ptr %compptr, align 8, !tbaa !4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %ac_tbl_no, align 8, !tbaa !40
  %cmp14 = icmp sgt i32 %27, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false13, %for.body11
  store i32 0, ptr %is_baseline, align 4, !tbaa !29
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false13
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %28 = load i32, ptr %ci, align 4, !tbaa !29
  %inc18 = add nsw i32 %28, 1
  store i32 %inc18, ptr %ci, align 4, !tbaa !29
  %29 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i32 1
  store ptr %incdec.ptr19, ptr %compptr, align 8, !tbaa !4
  br label %for.cond8, !llvm.loop !41

for.end20:                                        ; preds = %for.cond8
  %30 = load i32, ptr %prec, align 4, !tbaa !29
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.end20
  %31 = load i32, ptr %is_baseline, align 4, !tbaa !29
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  store i32 0, ptr %is_baseline, align 4, !tbaa !29
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err, align 8, !tbaa !42
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %33, i32 0, i32 5
  store i32 81, ptr %msg_code, align 8, !tbaa !43
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err24 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err24, align 8, !tbaa !42
  %emit_message = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %emit_message, align 8, !tbaa !45
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %36(ptr noundef %37, i32 noundef 0)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %for.end20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then6
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_code27 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %38, i32 0, i32 26
  %39 = load i32, ptr %arith_code27, align 4, !tbaa !37
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end26
  %40 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_sof(ptr noundef %40, i32 noundef 201)
  br label %if.end45

if.else30:                                        ; preds = %if.end26
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process31 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %41, i32 0, i32 42
  %42 = load i32, ptr %process31, align 8, !tbaa !30
  %cmp32 = icmp eq i32 %42, 1
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else30
  %43 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_sof(ptr noundef %43, i32 noundef 194)
  br label %if.end44

if.else34:                                        ; preds = %if.else30
  %44 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process35 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %44, i32 0, i32 42
  %45 = load i32, ptr %process35, align 8, !tbaa !30
  %cmp36 = icmp eq i32 %45, 2
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else34
  %46 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_sof(ptr noundef %46, i32 noundef 195)
  br label %if.end43

if.else38:                                        ; preds = %if.else34
  %47 = load i32, ptr %is_baseline, align 4, !tbaa !29
  %tobool39 = icmp ne i32 %47, 0
  br i1 %tobool39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else38
  %48 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_sof(ptr noundef %48, i32 noundef 192)
  br label %if.end42

if.else41:                                        ; preds = %if.else38
  %49 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_sof(ptr noundef %49, i32 noundef 193)
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then33
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_baseline) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %prec) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_scan_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker = alloca ptr, align 8
  %i = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker1 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %0, i32 0, i32 60
  %1 = load ptr, ptr %marker1, align 8, !tbaa !16
  store ptr %1, ptr %marker, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #2
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_code = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %2, i32 0, i32 26
  %3 = load i32, ptr %arith_code, align 4, !tbaa !37
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_dac(ptr noundef %4)
  br label %if.end20

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, ptr %i, align 4, !tbaa !29
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %6, i32 0, i32 46
  %7 = load i32, ptr %comps_in_scan, align 8, !tbaa !46
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %8, i32 0, i32 47
  %9 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %10, ptr %compptr, align 8, !tbaa !4
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %11, i32 0, i32 42
  %12 = load i32, ptr %process, align 8, !tbaa !30
  %cmp2 = icmp eq i32 %12, 1
  br i1 %cmp2, label %if.then3, label %if.else10

if.then3:                                         ; preds = %for.body
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ss = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %13, i32 0, i32 52
  %14 = load i32, ptr %Ss, align 4, !tbaa !47
  %cmp4 = icmp eq i32 %14, 0
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.then3
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ah = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %15, i32 0, i32 54
  %16 = load i32, ptr %Ah, align 4, !tbaa !48
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %compptr, align 8, !tbaa !4
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %dc_tbl_no, align 4, !tbaa !39
  call void @emit_dht(ptr noundef %17, i32 noundef %19, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  br label %if.end9

if.else8:                                         ; preds = %if.then3
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %compptr, align 8, !tbaa !4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %ac_tbl_no, align 8, !tbaa !40
  call void @emit_dht(ptr noundef %20, i32 noundef %22, i32 noundef 1)
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.end
  br label %if.end19

if.else10:                                        ; preds = %for.body
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process11 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %23, i32 0, i32 42
  %24 = load i32, ptr %process11, align 8, !tbaa !30
  %cmp12 = icmp eq i32 %24, 2
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %compptr, align 8, !tbaa !4
  %dc_tbl_no14 = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i32 0, i32 5
  %27 = load i32, ptr %dc_tbl_no14, align 4, !tbaa !39
  call void @emit_dht(ptr noundef %25, i32 noundef %27, i32 noundef 0)
  br label %if.end18

if.else15:                                        ; preds = %if.else10
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %compptr, align 8, !tbaa !4
  %dc_tbl_no16 = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %dc_tbl_no16, align 4, !tbaa !39
  call void @emit_dht(ptr noundef %28, i32 noundef %30, i32 noundef 0)
  %31 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %compptr, align 8, !tbaa !4
  %ac_tbl_no17 = getelementptr inbounds %struct.jpeg_component_info, ptr %32, i32 0, i32 6
  %33 = load i32, ptr %ac_tbl_no17, align 8, !tbaa !40
  call void @emit_dht(ptr noundef %31, i32 noundef %33, i32 noundef 1)
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %34 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  br label %if.end20

if.end20:                                         ; preds = %for.end, %if.then
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %restart_interval = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %35, i32 0, i32 31
  %36 = load i32, ptr %restart_interval, align 8, !tbaa !50
  %37 = load ptr, ptr %marker, align 8, !tbaa !4
  %last_restart_interval = getelementptr inbounds %struct.my_marker_writer, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %last_restart_interval, align 8, !tbaa !26
  %cmp21 = icmp ne i32 %36, %38
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end20
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_dri(ptr noundef %39)
  %40 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %restart_interval23 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %40, i32 0, i32 31
  %41 = load i32, ptr %restart_interval23, align 8, !tbaa !50
  %42 = load ptr, ptr %marker, align 8, !tbaa !4
  %last_restart_interval24 = getelementptr inbounds %struct.my_marker_writer, ptr %42, i32 0, i32 1
  store i32 %41, ptr %last_restart_interval24, align 8, !tbaa !26
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20
  %43 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_sos(ptr noundef %43)
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_file_trailer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %0, i32 noundef 217)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_tables_only(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %0, i32 noundef 216)
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !29
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %quant_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %2, i32 0, i32 17
  %3 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !29
  %call = call i32 @emit_dqt(ptr noundef %5, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_code = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %8, i32 0, i32 26
  %9 = load i32, ptr %arith_code, align 4, !tbaa !37
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end19, label %if.then2

if.then2:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %if.then2
  %10 = load i32, ptr %i, align 4, !tbaa !29
  %cmp4 = icmp slt i32 %10, 4
  br i1 %cmp4, label %for.body5, label %for.end18

for.body5:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %11, i32 0, i32 18
  %12 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom6
  %13 = load ptr, ptr %arrayidx7, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body5
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !29
  call void @emit_dht(ptr noundef %14, i32 noundef %15, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body5
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %16, i32 0, i32 19
  %17 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom11
  %18 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  %cmp13 = icmp ne ptr %18, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %20 = load i32, ptr %i, align 4, !tbaa !29
  call void @emit_dht(ptr noundef %19, i32 noundef %20, i32 noundef 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  br label %for.inc16

for.inc16:                                        ; preds = %if.end15
  %21 = load i32, ptr %i, align 4, !tbaa !29
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !29
  br label %for.cond3, !llvm.loop !52

for.end18:                                        ; preds = %for.cond3
  br label %if.end19

if.end19:                                         ; preds = %for.end18, %for.end
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %22, i32 noundef 217)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_marker_header(ptr noundef %cinfo, i32 noundef %marker, i32 noundef %datalen) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker.addr = alloca i32, align 4
  %datalen.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %marker, ptr %marker.addr, align 4, !tbaa !29
  store i32 %datalen, ptr %datalen.addr, align 4, !tbaa !29
  %0 = load i32, ptr %datalen.addr, align 4, !tbaa !29
  %cmp = icmp ugt i32 %0, 65533
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %err, align 8, !tbaa !42
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %2, i32 0, i32 5
  store i32 12, ptr %msg_code, align 8, !tbaa !43
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err1, align 8, !tbaa !42
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %error_exit, align 8, !tbaa !53
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %5(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %8 = load i32, ptr %marker.addr, align 4, !tbaa !29
  call void @emit_marker(ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %10 = load i32, ptr %datalen.addr, align 4, !tbaa !29
  %add = add i32 %10, 2
  call void @emit_2bytes(ptr noundef %9, i32 noundef %add)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_marker_byte(ptr noundef %cinfo, i32 noundef %val) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %val, ptr %val.addr, align 4, !tbaa !29
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %1 = load i32, ptr %val.addr, align 4, !tbaa !29
  call void @emit_byte(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @emit_marker(ptr noundef %cinfo, i32 noundef %mark) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %mark.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %mark, ptr %mark.addr, align 4, !tbaa !54
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %0, i32 noundef 255)
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %2 = load i32, ptr %mark.addr, align 4, !tbaa !54
  call void @emit_byte(ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_jfif_app0(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %0, i32 noundef 224)
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_2bytes(ptr noundef %1, i32 noundef 16)
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %2, i32 noundef 74)
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %3, i32 noundef 70)
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %4, i32 noundef 73)
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %5, i32 noundef 70)
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %6, i32 noundef 0)
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_major_version = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %8, i32 0, i32 34
  %9 = load i8, ptr %JFIF_major_version, align 4, !tbaa !55
  %conv = zext i8 %9 to i32
  call void @emit_byte(ptr noundef %7, i32 noundef %conv)
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %JFIF_minor_version = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %11, i32 0, i32 35
  %12 = load i8, ptr %JFIF_minor_version, align 1, !tbaa !56
  %conv1 = zext i8 %12 to i32
  call void @emit_byte(ptr noundef %10, i32 noundef %conv1)
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %density_unit = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %14, i32 0, i32 36
  %15 = load i8, ptr %density_unit, align 2, !tbaa !57
  %conv2 = zext i8 %15 to i32
  call void @emit_byte(ptr noundef %13, i32 noundef %conv2)
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %X_density = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %17, i32 0, i32 37
  %18 = load i16, ptr %X_density, align 8, !tbaa !58
  %conv3 = zext i16 %18 to i32
  call void @emit_2bytes(ptr noundef %16, i32 noundef %conv3)
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Y_density = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %20, i32 0, i32 38
  %21 = load i16, ptr %Y_density, align 2, !tbaa !59
  %conv4 = zext i16 %21 to i32
  call void @emit_2bytes(ptr noundef %19, i32 noundef %conv4)
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %22, i32 noundef 0)
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %23, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_adobe_app14(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %0, i32 noundef 238)
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_2bytes(ptr noundef %1, i32 noundef 14)
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %2, i32 noundef 65)
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %3, i32 noundef 100)
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %4, i32 noundef 111)
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %5, i32 noundef 98)
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %6, i32 noundef 101)
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_2bytes(ptr noundef %7, i32 noundef 100)
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_2bytes(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_2bytes(ptr noundef %9, i32 noundef 0)
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %jpeg_color_space = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %10, i32 0, i32 15
  %11 = load i32, ptr %jpeg_color_space, align 4, !tbaa !60
  switch i32 %11, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %12, i32 noundef 1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %13, i32 noundef 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_byte(ptr noundef %14, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_byte(ptr noundef %cinfo, i32 noundef %val) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %val, ptr %val.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %dest1 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %dest1, align 8, !tbaa !61
  store ptr %1, ptr %dest, align 8, !tbaa !4
  %2 = load i32, ptr %val.addr, align 4, !tbaa !29
  %conv = trunc i32 %2 to i8
  %3 = load ptr, ptr %dest, align 8, !tbaa !4
  %next_output_byte = getelementptr inbounds %struct.gdcmjpeg16_destination_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next_output_byte, align 8, !tbaa !62
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8, !tbaa !62
  store i8 %conv, ptr %4, align 1, !tbaa !54
  %5 = load ptr, ptr %dest, align 8, !tbaa !4
  %free_in_buffer = getelementptr inbounds %struct.gdcmjpeg16_destination_mgr, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %free_in_buffer, align 8, !tbaa !64
  %dec = add i64 %6, -1
  store i64 %dec, ptr %free_in_buffer, align 8, !tbaa !64
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %dest, align 8, !tbaa !4
  %empty_output_buffer = getelementptr inbounds %struct.gdcmjpeg16_destination_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %empty_output_buffer, align 8, !tbaa !65
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8, !tbaa !42
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %11, i32 0, i32 5
  store i32 28, ptr %msg_code, align 8, !tbaa !43
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err4 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8, !tbaa !42
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8, !tbaa !53
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_2bytes(ptr noundef %cinfo, i32 noundef %value) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %value, ptr %value.addr, align 4, !tbaa !29
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %1 = load i32, ptr %value.addr, align 4, !tbaa !29
  %shr = ashr i32 %1, 8
  %and = and i32 %shr, 255
  call void @emit_byte(ptr noundef %0, i32 noundef %and)
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %3 = load i32, ptr %value.addr, align 4, !tbaa !29
  %and1 = and i32 %3, 255
  call void @emit_byte(ptr noundef %2, i32 noundef %and1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_dqt(ptr noundef %cinfo, i32 noundef %index) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %qtbl = alloca ptr, align 8
  %prec = alloca i32, align 4
  %i = alloca i32, align 4
  %qval = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %index, ptr %index.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %qtbl) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %quant_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %0, i32 0, i32 17
  %1 = load i32, ptr %index.addr, align 4, !tbaa !29
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %2, ptr %qtbl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prec) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  %3 = load ptr, ptr %qtbl, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8, !tbaa !42
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %5, i32 0, i32 5
  store i32 58, ptr %msg_code, align 8, !tbaa !43
  %6 = load i32, ptr %index.addr, align 4, !tbaa !29
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err1, align 8, !tbaa !42
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %8, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %6, ptr %arrayidx2, align 4, !tbaa !54
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err3 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err3, align 8, !tbaa !42
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8, !tbaa !53
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %prec, align 4, !tbaa !29
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %i, align 4, !tbaa !29
  %cmp4 = icmp slt i32 %13, 64
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %qtbl, align 8, !tbaa !4
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 %idxprom5
  %16 = load i16, ptr %arrayidx6, align 2, !tbaa !66
  %conv = zext i16 %16 to i32
  %cmp7 = icmp sgt i32 %conv, 255
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  store i32 1, ptr %prec, align 4, !tbaa !29
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %17 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %qtbl, align 8, !tbaa !4
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %sent_table, align 4, !tbaa !68
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end30, label %if.then11

if.then11:                                        ; preds = %for.end
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %20, i32 noundef 219)
  %21 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %22 = load i32, ptr %prec, align 4, !tbaa !29
  %tobool12 = icmp ne i32 %22, 0
  %23 = zext i1 %tobool12 to i64
  %cond = select i1 %tobool12, i32 131, i32 67
  call void @emit_2bytes(ptr noundef %21, i32 noundef %cond)
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %25 = load i32, ptr %index.addr, align 4, !tbaa !29
  %26 = load i32, ptr %prec, align 4, !tbaa !29
  %shl = shl i32 %26, 4
  %add = add nsw i32 %25, %shl
  call void @emit_byte(ptr noundef %24, i32 noundef %add)
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %if.then11
  %27 = load i32, ptr %i, align 4, !tbaa !29
  %cmp14 = icmp slt i32 %27, 64
  br i1 %cmp14, label %for.body16, label %for.end28

for.body16:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 4, ptr %qval) #2
  %28 = load ptr, ptr %qtbl, align 8, !tbaa !4
  %quantval17 = getelementptr inbounds %struct.JQUANT_TBL, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], ptr @gdcmjpeg16_jpeg_natural_order, i64 0, i64 %idxprom18
  %30 = load i32, ptr %arrayidx19, align 4, !tbaa !29
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [64 x i16], ptr %quantval17, i64 0, i64 %idxprom20
  %31 = load i16, ptr %arrayidx21, align 2, !tbaa !66
  %conv22 = zext i16 %31 to i32
  store i32 %conv22, ptr %qval, align 4, !tbaa !29
  %32 = load i32, ptr %prec, align 4, !tbaa !29
  %tobool23 = icmp ne i32 %32, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body16
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %34 = load i32, ptr %qval, align 4, !tbaa !29
  %shr = lshr i32 %34, 8
  call void @emit_byte(ptr noundef %33, i32 noundef %shr)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.body16
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %36 = load i32, ptr %qval, align 4, !tbaa !29
  %and = and i32 %36, 255
  call void @emit_byte(ptr noundef %35, i32 noundef %and)
  call void @llvm.lifetime.end.p0(i64 4, ptr %qval) #2
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %37 = load i32, ptr %i, align 4, !tbaa !29
  %inc27 = add nsw i32 %37, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !29
  br label %for.cond13, !llvm.loop !70

for.end28:                                        ; preds = %for.cond13
  %38 = load ptr, ptr %qtbl, align 8, !tbaa !4
  %sent_table29 = getelementptr inbounds %struct.JQUANT_TBL, ptr %38, i32 0, i32 1
  store i32 1, ptr %sent_table29, align 4, !tbaa !68
  br label %if.end30

if.end30:                                         ; preds = %for.end28, %for.end
  %39 = load i32, ptr %prec, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %prec) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %qtbl) #2
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @emit_sof(ptr noundef %cinfo, i32 noundef %code) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %code, ptr %code.addr, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %1 = load i32, ptr %code.addr, align 4, !tbaa !54
  call void @emit_marker(ptr noundef %0, i32 noundef %1)
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %3, i32 0, i32 14
  %4 = load i32, ptr %num_components, align 8, !tbaa !32
  %mul = mul nsw i32 3, %4
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 5
  %add2 = add nsw i32 %add1, 1
  call void @emit_2bytes(ptr noundef %2, i32 noundef %add2)
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_height = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %image_height, align 4, !tbaa !71
  %conv = zext i32 %6 to i64
  %cmp = icmp sgt i64 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_width = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %image_width, align 8, !tbaa !72
  %conv4 = zext i32 %8 to i64
  %cmp5 = icmp sgt i64 %conv4, 65535
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8, !tbaa !42
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %10, i32 0, i32 5
  store i32 46, ptr %msg_code, align 8, !tbaa !43
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err7 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err7, align 8, !tbaa !42
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %12, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 65535, ptr %arrayidx, align 4, !tbaa !54
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err8 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err8, align 8, !tbaa !42
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8, !tbaa !53
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %data_precision = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %18, i32 0, i32 13
  %19 = load i32, ptr %data_precision, align 4, !tbaa !38
  call void @emit_byte(ptr noundef %17, i32 noundef %19)
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_height9 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %21, i32 0, i32 8
  %22 = load i32, ptr %image_height9, align 4, !tbaa !71
  call void @emit_2bytes(ptr noundef %20, i32 noundef %22)
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %image_width10 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %24, i32 0, i32 7
  %25 = load i32, ptr %image_width10, align 8, !tbaa !72
  call void @emit_2bytes(ptr noundef %23, i32 noundef %25)
  %26 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components11 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %27, i32 0, i32 14
  %28 = load i32, ptr %num_components11, align 8, !tbaa !32
  call void @emit_byte(ptr noundef %26, i32 noundef %28)
  store i32 0, ptr %ci, align 4, !tbaa !29
  %29 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %29, i32 0, i32 16
  %30 = load ptr, ptr %comp_info, align 8, !tbaa !31
  store ptr %30, ptr %compptr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, ptr %ci, align 4, !tbaa !29
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components12 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %32, i32 0, i32 14
  %33 = load i32, ptr %num_components12, align 8, !tbaa !32
  %cmp13 = icmp slt i32 %31, %33
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %component_id, align 8, !tbaa !73
  call void @emit_byte(ptr noundef %34, i32 noundef %36)
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %38 = load ptr, ptr %compptr, align 8, !tbaa !4
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %h_samp_factor, align 8, !tbaa !74
  %shl = shl i32 %39, 4
  %40 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %v_samp_factor, align 4, !tbaa !75
  %add15 = add nsw i32 %shl, %41
  call void @emit_byte(ptr noundef %37, i32 noundef %add15)
  %42 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %compptr, align 8, !tbaa !4
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %quant_tbl_no, align 8, !tbaa !33
  call void @emit_byte(ptr noundef %42, i32 noundef %44)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, ptr %ci, align 4, !tbaa !29
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !29
  %46 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dac(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dht(ptr noundef %cinfo, i32 noundef %index, i32 noundef %is_ac) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %is_ac.addr = alloca i32, align 4
  %htbl = alloca ptr, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %index, ptr %index.addr, align 4, !tbaa !29
  store i32 %is_ac, ptr %is_ac.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %htbl) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  %0 = load i32, ptr %is_ac.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %1, i32 0, i32 19
  %2 = load i32, ptr %index.addr, align 4, !tbaa !29
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %3, ptr %htbl, align 8, !tbaa !4
  %4 = load i32, ptr %index.addr, align 4, !tbaa !29
  %add = add nsw i32 %4, 16
  store i32 %add, ptr %index.addr, align 4, !tbaa !29
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %5, i32 0, i32 18
  %6 = load i32, ptr %index.addr, align 4, !tbaa !29
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom1
  %7 = load ptr, ptr %arrayidx2, align 8, !tbaa !4
  store ptr %7, ptr %htbl, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %htbl, align 8, !tbaa !4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8, !tbaa !42
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %10, i32 0, i32 5
  store i32 55, ptr %msg_code, align 8, !tbaa !43
  %11 = load i32, ptr %index.addr, align 4, !tbaa !29
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err4 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8, !tbaa !42
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %13, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %11, ptr %arrayidx5, align 4, !tbaa !54
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err6 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err6, align 8, !tbaa !42
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %error_exit, align 8, !tbaa !53
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %16(ptr noundef %17)
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %18 = load ptr, ptr %htbl, align 8, !tbaa !4
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %sent_table, align 4, !tbaa !77
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.end39, label %if.then9

if.then9:                                         ; preds = %if.end7
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %20, i32 noundef 196)
  store i32 0, ptr %length, align 4, !tbaa !29
  store i32 1, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %21 = load i32, ptr %i, align 4, !tbaa !29
  %cmp10 = icmp sle i32 %21, 16
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %htbl, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.JHUFF_TBL, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom11
  %24 = load i8, ptr %arrayidx12, align 1, !tbaa !54
  %conv = zext i8 %24 to i32
  %25 = load i32, ptr %length, align 4, !tbaa !29
  %add13 = add nsw i32 %25, %conv
  store i32 %add13, ptr %length, align 4, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %28 = load i32, ptr %length, align 4, !tbaa !29
  %add14 = add nsw i32 %28, 2
  %add15 = add nsw i32 %add14, 1
  %add16 = add nsw i32 %add15, 16
  call void @emit_2bytes(ptr noundef %27, i32 noundef %add16)
  %29 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %30 = load i32, ptr %index.addr, align 4, !tbaa !29
  call void @emit_byte(ptr noundef %29, i32 noundef %30)
  store i32 1, ptr %i, align 4, !tbaa !29
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end
  %31 = load i32, ptr %i, align 4, !tbaa !29
  %cmp18 = icmp sle i32 %31, 16
  br i1 %cmp18, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond17
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %htbl, align 8, !tbaa !4
  %bits21 = getelementptr inbounds %struct.JHUFF_TBL, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds [17 x i8], ptr %bits21, i64 0, i64 %idxprom22
  %35 = load i8, ptr %arrayidx23, align 1, !tbaa !54
  %conv24 = zext i8 %35 to i32
  call void @emit_byte(ptr noundef %32, i32 noundef %conv24)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %36 = load i32, ptr %i, align 4, !tbaa !29
  %inc26 = add nsw i32 %36, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !29
  br label %for.cond17, !llvm.loop !80

for.end27:                                        ; preds = %for.cond17
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.end27
  %37 = load i32, ptr %i, align 4, !tbaa !29
  %38 = load i32, ptr %length, align 4, !tbaa !29
  %cmp29 = icmp slt i32 %37, %38
  br i1 %cmp29, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond28
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %htbl, align 8, !tbaa !4
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom32 = sext i32 %41 to i64
  %arrayidx33 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom32
  %42 = load i8, ptr %arrayidx33, align 1, !tbaa !54
  %conv34 = zext i8 %42 to i32
  call void @emit_byte(ptr noundef %39, i32 noundef %conv34)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  %43 = load i32, ptr %i, align 4, !tbaa !29
  %inc36 = add nsw i32 %43, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !29
  br label %for.cond28, !llvm.loop !81

for.end37:                                        ; preds = %for.cond28
  %44 = load ptr, ptr %htbl, align 8, !tbaa !4
  %sent_table38 = getelementptr inbounds %struct.JHUFF_TBL, ptr %44, i32 0, i32 2
  store i32 1, ptr %sent_table38, align 4, !tbaa !77
  br label %if.end39

if.end39:                                         ; preds = %for.end37, %if.end7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %htbl) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_dri(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %0, i32 noundef 221)
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_2bytes(ptr noundef %1, i32 noundef 4)
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %restart_interval = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %3, i32 0, i32 31
  %4 = load i32, ptr %restart_interval, align 8, !tbaa !50
  call void @emit_2bytes(ptr noundef %2, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_sos(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %td = alloca i32, align 4
  %ta = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %td) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %ta) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @emit_marker(ptr noundef %0, i32 noundef 218)
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %2, i32 0, i32 46
  %3 = load i32, ptr %comps_in_scan, align 8, !tbaa !46
  %mul = mul nsw i32 2, %3
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 1
  %add2 = add nsw i32 %add1, 3
  call void @emit_2bytes(ptr noundef %1, i32 noundef %add2)
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan3 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %5, i32 0, i32 46
  %6 = load i32, ptr %comps_in_scan3, align 8, !tbaa !46
  call void @emit_byte(ptr noundef %4, i32 noundef %6)
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !tbaa !29
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan4 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %8, i32 0, i32 46
  %9 = load i32, ptr %comps_in_scan4, align 8, !tbaa !46
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %10, i32 0, i32 47
  %11 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %12, ptr %compptr, align 8, !tbaa !4
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %component_id, align 8, !tbaa !73
  call void @emit_byte(ptr noundef %13, i32 noundef %15)
  %16 = load ptr, ptr %compptr, align 8, !tbaa !4
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %dc_tbl_no, align 4, !tbaa !39
  store i32 %17, ptr %td, align 4, !tbaa !29
  %18 = load ptr, ptr %compptr, align 8, !tbaa !4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %ac_tbl_no, align 8, !tbaa !40
  store i32 %19, ptr %ta, align 4, !tbaa !29
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %20, i32 0, i32 42
  %21 = load i32, ptr %process, align 8, !tbaa !30
  %cmp5 = icmp eq i32 %21, 1
  br i1 %cmp5, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ss = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %22, i32 0, i32 52
  %23 = load i32, ptr %Ss, align 4, !tbaa !47
  %cmp6 = icmp eq i32 %23, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  store i32 0, ptr %ta, align 4, !tbaa !29
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ah = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %24, i32 0, i32 54
  %25 = load i32, ptr %Ah, align 4, !tbaa !48
  %cmp8 = icmp ne i32 %25, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then7
  %26 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arith_code = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %26, i32 0, i32 26
  %27 = load i32, ptr %arith_code, align 4, !tbaa !37
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %td, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %if.then7
  br label %if.end10

if.else:                                          ; preds = %if.then
  store i32 0, ptr %td, align 4, !tbaa !29
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %for.body
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %29 = load i32, ptr %td, align 4, !tbaa !29
  %shl = shl i32 %29, 4
  %30 = load i32, ptr %ta, align 4, !tbaa !29
  %add12 = add nsw i32 %shl, %30
  call void @emit_byte(ptr noundef %28, i32 noundef %add12)
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %31 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ss13 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %33, i32 0, i32 52
  %34 = load i32, ptr %Ss13, align 4, !tbaa !47
  call void @emit_byte(ptr noundef %32, i32 noundef %34)
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Se = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %36, i32 0, i32 53
  %37 = load i32, ptr %Se, align 8, !tbaa !83
  call void @emit_byte(ptr noundef %35, i32 noundef %37)
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ah14 = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %39, i32 0, i32 54
  %40 = load i32, ptr %Ah14, align 4, !tbaa !48
  %shl15 = shl i32 %40, 4
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Al = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %41, i32 0, i32 55
  %42 = load i32, ptr %Al, align 8, !tbaa !84
  %add16 = add nsw i32 %shl15, %42
  call void @emit_byte(ptr noundef %38, i32 noundef %add16)
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ta) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %td) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"gdcmjpeg16_compress_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36, !5, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !6, i64 60, !11, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !6, i64 84, !5, i64 88, !6, i64 96, !6, i64 128, !6, i64 160, !6, i64 192, !6, i64 208, !6, i64 224, !10, i64 240, !5, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !6, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !6, i64 292, !6, i64 293, !6, i64 294, !12, i64 296, !12, i64 298, !10, i64 300, !10, i64 304, !10, i64 308, !6, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !6, i64 336, !10, i64 368, !10, i64 372, !10, i64 376, !6, i64 380, !10, i64 420, !10, i64 424, !10, i64 428, !10, i64 432, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !10, i64 504}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"gdcmjpeg16_memory_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !15, i64 96, !15, i64 104}
!15 = !{!"long", !6, i64 0}
!16 = !{!9, !5, i64 472}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 56}
!19 = !{!"jpeg_marker_writer", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!20 = !{!18, !5, i64 8}
!21 = !{!18, !5, i64 16}
!22 = !{!18, !5, i64 24}
!23 = !{!18, !5, i64 32}
!24 = !{!18, !5, i64 40}
!25 = !{!18, !5, i64 48}
!26 = !{!18, !10, i64 56}
!27 = !{!9, !10, i64 288}
!28 = !{!9, !10, i64 300}
!29 = !{!10, !10, i64 0}
!30 = !{!9, !6, i64 312}
!31 = !{!9, !5, i64 88}
!32 = !{!9, !10, i64 80}
!33 = !{!34, !10, i64 16}
!34 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !5, i64 80, !5, i64 88}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!9, !10, i64 260}
!38 = !{!9, !10, i64 76}
!39 = !{!34, !10, i64 20}
!40 = !{!34, !10, i64 24}
!41 = distinct !{!41, !36}
!42 = !{!9, !5, i64 0}
!43 = !{!44, !10, i64 40}
!44 = !{!"gdcmjpeg16_error_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !6, i64 44, !10, i64 124, !15, i64 128, !5, i64 136, !10, i64 144, !5, i64 152, !10, i64 160, !10, i64 164}
!45 = !{!44, !5, i64 8}
!46 = !{!9, !10, i64 328}
!47 = !{!9, !10, i64 420}
!48 = !{!9, !10, i64 428}
!49 = distinct !{!49, !36}
!50 = !{!9, !10, i64 280}
!51 = distinct !{!51, !36}
!52 = distinct !{!52, !36}
!53 = !{!44, !5, i64 0}
!54 = !{!6, !6, i64 0}
!55 = !{!9, !6, i64 292}
!56 = !{!9, !6, i64 293}
!57 = !{!9, !6, i64 294}
!58 = !{!9, !12, i64 296}
!59 = !{!9, !12, i64 298}
!60 = !{!9, !6, i64 84}
!61 = !{!9, !5, i64 40}
!62 = !{!63, !5, i64 0}
!63 = !{!"gdcmjpeg16_destination_mgr", !5, i64 0, !15, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!64 = !{!63, !15, i64 8}
!65 = !{!63, !5, i64 24}
!66 = !{!12, !12, i64 0}
!67 = distinct !{!67, !36}
!68 = !{!69, !10, i64 128}
!69 = !{!"", !6, i64 0, !10, i64 128}
!70 = distinct !{!70, !36}
!71 = !{!9, !10, i64 52}
!72 = !{!9, !10, i64 48}
!73 = !{!34, !10, i64 0}
!74 = !{!34, !10, i64 8}
!75 = !{!34, !10, i64 12}
!76 = distinct !{!76, !36}
!77 = !{!78, !10, i64 276}
!78 = !{!"", !6, i64 0, !6, i64 17, !10, i64 276}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = distinct !{!81, !36}
!82 = distinct !{!82, !36}
!83 = !{!9, !10, i64 424}
!84 = !{!9, !10, i64 432}

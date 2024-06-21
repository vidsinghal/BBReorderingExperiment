; ModuleID = 'samples/328.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/jdcoefct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdcmjpeg12_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gdcmjpeg12_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64 }
%struct.jpeg_lossy_d_codec = type { %struct.jpeg_d_codec, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, [10 x ptr], ptr }
%struct.jpeg_d_codec = type { ptr, ptr, ptr, ptr, ptr }
%struct.d_coef_controller = type { i32, i32, i32, [10 x ptr], [10 x ptr], ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

; Function Attrs: nounwind uwtable
define void @gdcmjpeg12_jinit_d_coef_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %lossyd = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %ci = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef) #3
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8, !tbaa !14
  %alloc_small = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8, !tbaa !15
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 184)
  store ptr %call, ptr %coef, align 8, !tbaa !4
  %6 = load ptr, ptr %coef, align 8, !tbaa !4
  %7 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_private = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %7, i32 0, i32 4
  store ptr %6, ptr %coef_private, align 8, !tbaa !18
  %8 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_start_input_pass = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %8, i32 0, i32 1
  store ptr @start_input_pass, ptr %coef_start_input_pass, align 8, !tbaa !21
  %9 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_start_output_pass = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %9, i32 0, i32 2
  store ptr @start_output_pass, ptr %coef_start_output_pass, align 8, !tbaa !22
  %10 = load ptr, ptr %coef, align 8, !tbaa !4
  %coef_bits_latch = getelementptr inbounds %struct.d_coef_controller, ptr %10, i32 0, i32 5
  store ptr null, ptr %coef_bits_latch, align 8, !tbaa !23
  %11 = load i32, ptr %need_full_buffer.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_rows) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #3
  store i32 0, ptr %ci, align 4, !tbaa !8
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %12, i32 0, i32 44
  %13 = load ptr, ptr %comp_info, align 8, !tbaa !25
  store ptr %13, ptr %compptr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, ptr %ci, align 4, !tbaa !8
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %15, i32 0, i32 9
  %16 = load i32, ptr %num_components, align 8, !tbaa !26
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %v_samp_factor, align 4, !tbaa !27
  store i32 %18, ptr %access_rows, align 4, !tbaa !8
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %19, i32 0, i32 61
  %20 = load i32, ptr %process, align 4, !tbaa !29
  %cmp1 = icmp eq i32 %20, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %21 = load i32, ptr %access_rows, align 4, !tbaa !8
  %mul = mul nsw i32 %21, 3
  store i32 %mul, ptr %access_rows, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem3 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %mem3, align 8, !tbaa !14
  %request_virt_barray = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %request_virt_barray, align 8, !tbaa !30
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %compptr, align 8, !tbaa !4
  %width_in_data_units = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %width_in_data_units, align 4, !tbaa !31
  %conv = zext i32 %27 to i64
  %28 = load ptr, ptr %compptr, align 8, !tbaa !4
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %h_samp_factor, align 8, !tbaa !32
  %conv4 = sext i32 %29 to i64
  %call5 = call i64 @gdcmjpeg12_jround_up(i64 noundef %conv, i64 noundef %conv4)
  %conv6 = trunc i64 %call5 to i32
  %30 = load ptr, ptr %compptr, align 8, !tbaa !4
  %height_in_data_units = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i32 0, i32 8
  %31 = load i32, ptr %height_in_data_units, align 8, !tbaa !33
  %conv7 = zext i32 %31 to i64
  %32 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor8 = getelementptr inbounds %struct.jpeg_component_info, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %v_samp_factor8, align 4, !tbaa !27
  %conv9 = sext i32 %33 to i64
  %call10 = call i64 @gdcmjpeg12_jround_up(i64 noundef %conv7, i64 noundef %conv9)
  %conv11 = trunc i64 %call10 to i32
  %34 = load i32, ptr %access_rows, align 4, !tbaa !8
  %call12 = call ptr %24(ptr noundef %25, i32 noundef 1, i32 noundef 1, i32 noundef %conv6, i32 noundef %conv11, i32 noundef %34)
  %35 = load ptr, ptr %coef, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.d_coef_controller, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  store ptr %call12, ptr %arrayidx, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, ptr %ci, align 4, !tbaa !8
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !8
  %38 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %39, i32 0, i32 0
  %consume_data = getelementptr inbounds %struct.jpeg_d_codec, ptr %pub, i32 0, i32 2
  store ptr @consume_data, ptr %consume_data, align 8, !tbaa !36
  %40 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %pub13 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %40, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_codec, ptr %pub13, i32 0, i32 4
  store ptr @decompress_data, ptr %decompress_data, align 8, !tbaa !37
  %41 = load ptr, ptr %coef, align 8, !tbaa !4
  %whole_image14 = getelementptr inbounds %struct.d_coef_controller, ptr %41, i32 0, i32 4
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %whole_image14, i64 0, i64 0
  %42 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_arrays = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %42, i32 0, i32 3
  store ptr %arraydecay, ptr %coef_arrays, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_rows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  br label %if.end31

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %43 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem15 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %mem15, align 8, !tbaa !14
  %alloc_large = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %alloc_large, align 8, !tbaa !39
  %46 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call16 = call ptr %45(ptr noundef %46, i32 noundef 1, i64 noundef 1280)
  store ptr %call16, ptr %buffer, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc23, %if.else
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %47, 10
  br i1 %cmp18, label %for.body20, label %for.end25

for.body20:                                       ; preds = %for.cond17
  %48 = load ptr, ptr %buffer, align 8, !tbaa !4
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %idx.ext = sext i32 %49 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %48, i64 %idx.ext
  %50 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_buffer = getelementptr inbounds %struct.d_coef_controller, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom21 = sext i32 %51 to i64
  %arrayidx22 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom21
  store ptr %add.ptr, ptr %arrayidx22, align 8, !tbaa !4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body20
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %inc24 = add nsw i32 %52, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !8
  br label %for.cond17, !llvm.loop !40

for.end25:                                        ; preds = %for.cond17
  %53 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %pub26 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %53, i32 0, i32 0
  %consume_data27 = getelementptr inbounds %struct.jpeg_d_codec, ptr %pub26, i32 0, i32 2
  store ptr @dummy_consume_data, ptr %consume_data27, align 8, !tbaa !36
  %54 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %pub28 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %54, i32 0, i32 0
  %decompress_data29 = getelementptr inbounds %struct.jpeg_d_codec, ptr %pub28, i32 0, i32 4
  store ptr @decompress_onepass, ptr %decompress_data29, align 8, !tbaa !37
  %55 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_arrays30 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %55, i32 0, i32 3
  store ptr null, ptr %coef_arrays30, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #3
  br label %if.end31

if.end31:                                         ; preds = %for.end25, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 36
  store i32 0, ptr %input_iMCU_row, align 8, !tbaa !41
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @start_iMCU_row(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_output_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %lossyd = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  %2 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_arrays = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %coef_arrays, align 8, !tbaa !38
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %do_block_smoothing = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %4, i32 0, i32 19
  %5 = load i32, ptr %do_block_smoothing, align 8, !tbaa !42
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 @smoothing_ok(ptr noundef %6)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %7, i32 0, i32 0
  %decompress_data = getelementptr inbounds %struct.jpeg_d_codec, ptr %pub, i32 0, i32 4
  store ptr @decompress_smooth_data, ptr %decompress_data, align 8, !tbaa !37
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %pub3 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %8, i32 0, i32 0
  %decompress_data4 = getelementptr inbounds %struct.jpeg_d_codec, ptr %pub3, i32 0, i32 4
  store ptr @decompress_data, ptr %decompress_data4, align 8, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %9, i32 0, i32 38
  store i32 0, ptr %output_iMCU_row, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  ret void
}

declare i64 @gdcmjpeg12_jround_up(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @consume_data(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %lossyd = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %MCU_col_num = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %start_col = alloca i32, align 4
  %buffer = alloca [4 x ptr], align 16
  %buffer_ptr = alloca ptr, align 8
  %compptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef) #3
  %2 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_private = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %coef_private, align 8, !tbaa !18
  store ptr %3, ptr %coef, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %MCU_col_num) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %blkn) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %xindex) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %yindex) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %yoffset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %start_col) #3
  call void @llvm.lifetime.start.p0(i64 32, ptr %buffer) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #3
  store i32 0, ptr %ci, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %ci, align 4, !tbaa !8
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %5, i32 0, i32 67
  %6 = load i32, ptr %comps_in_scan, align 8, !tbaa !44
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %7, i32 0, i32 68
  %8 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %9, ptr %compptr, align 8, !tbaa !4
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mem, align 8, !tbaa !14
  %access_virt_barray = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %access_virt_barray, align 8, !tbaa !45
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %coef, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.d_coef_controller, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %component_index, align 4, !tbaa !46
  %idxprom1 = sext i32 %16 to i64
  %arrayidx2 = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom1
  %17 = load ptr, ptr %arrayidx2, align 8, !tbaa !4
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %18, i32 0, i32 36
  %19 = load i32, ptr %input_iMCU_row, align 8, !tbaa !41
  %20 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %v_samp_factor, align 4, !tbaa !27
  %mul = mul i32 %19, %21
  %22 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor3 = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %v_samp_factor3, align 4, !tbaa !27
  %call = call ptr %12(ptr noundef %13, ptr noundef %17, i32 noundef %mul, i32 noundef %23, i32 noundef 1)
  %24 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom4 = sext i32 %24 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom4
  store ptr %call, ptr %arrayidx5, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %ci, align 4, !tbaa !8
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_vert_offset = getelementptr inbounds %struct.d_coef_controller, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %MCU_vert_offset, align 4, !tbaa !48
  store i32 %27, ptr %yoffset, align 4, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc51, %for.end
  %28 = load i32, ptr %yoffset, align 4, !tbaa !8
  %29 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.d_coef_controller, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %MCU_rows_per_iMCU_row, align 8, !tbaa !49
  %cmp7 = icmp slt i32 %28, %30
  br i1 %cmp7, label %for.body8, label %for.end53

for.body8:                                        ; preds = %for.cond6
  %31 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_ctr = getelementptr inbounds %struct.d_coef_controller, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %MCU_ctr, align 8, !tbaa !50
  store i32 %32, ptr %MCU_col_num, align 4, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc47, %for.body8
  %33 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %MCUs_per_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %34, i32 0, i32 69
  %35 = load i32, ptr %MCUs_per_row, align 8, !tbaa !51
  %cmp10 = icmp ult i32 %33, %35
  br i1 %cmp10, label %for.body11, label %for.end49

for.body11:                                       ; preds = %for.cond9
  store i32 0, ptr %blkn, align 4, !tbaa !8
  store i32 0, ptr %ci, align 4, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc40, %for.body11
  %36 = load i32, ptr %ci, align 4, !tbaa !8
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan13 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %37, i32 0, i32 67
  %38 = load i32, ptr %comps_in_scan13, align 8, !tbaa !44
  %cmp14 = icmp slt i32 %36, %38
  br i1 %cmp14, label %for.body15, label %for.end42

for.body15:                                       ; preds = %for.cond12
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info16 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %39, i32 0, i32 68
  %40 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom17 = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info16, i64 0, i64 %idxprom17
  %41 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  store ptr %41, ptr %compptr, align 8, !tbaa !4
  %42 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %43 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i32 0, i32 13
  %44 = load i32, ptr %MCU_width, align 4, !tbaa !52
  %mul19 = mul i32 %42, %44
  store i32 %mul19, ptr %start_col, align 4, !tbaa !8
  store i32 0, ptr %yindex, align 4, !tbaa !8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc37, %for.body15
  %45 = load i32, ptr %yindex, align 4, !tbaa !8
  %46 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 0, i32 14
  %47 = load i32, ptr %MCU_height, align 8, !tbaa !53
  %cmp21 = icmp slt i32 %45, %47
  br i1 %cmp21, label %for.body22, label %for.end39

for.body22:                                       ; preds = %for.cond20
  %48 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom23 = sext i32 %48 to i64
  %arrayidx24 = getelementptr inbounds [4 x ptr], ptr %buffer, i64 0, i64 %idxprom23
  %49 = load ptr, ptr %arrayidx24, align 8, !tbaa !4
  %50 = load i32, ptr %yindex, align 4, !tbaa !8
  %51 = load i32, ptr %yoffset, align 4, !tbaa !8
  %add = add nsw i32 %50, %51
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %49, i64 %idxprom25
  %52 = load ptr, ptr %arrayidx26, align 8, !tbaa !4
  %53 = load i32, ptr %start_col, align 4, !tbaa !8
  %idx.ext = zext i32 %53 to i64
  %add.ptr = getelementptr inbounds [64 x i16], ptr %52, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer_ptr, align 8, !tbaa !4
  store i32 0, ptr %xindex, align 4, !tbaa !8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc34, %for.body22
  %54 = load i32, ptr %xindex, align 4, !tbaa !8
  %55 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_width28 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i32 0, i32 13
  %56 = load i32, ptr %MCU_width28, align 4, !tbaa !52
  %cmp29 = icmp slt i32 %54, %56
  br i1 %cmp29, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond27
  %57 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %57, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %58 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_buffer = getelementptr inbounds %struct.d_coef_controller, ptr %58, i32 0, i32 3
  %59 = load i32, ptr %blkn, align 4, !tbaa !8
  %inc31 = add nsw i32 %59, 1
  store i32 %inc31, ptr %blkn, align 4, !tbaa !8
  %idxprom32 = sext i32 %59 to i64
  %arrayidx33 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 %idxprom32
  store ptr %57, ptr %arrayidx33, align 8, !tbaa !4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %60 = load i32, ptr %xindex, align 4, !tbaa !8
  %inc35 = add nsw i32 %60, 1
  store i32 %inc35, ptr %xindex, align 4, !tbaa !8
  br label %for.cond27, !llvm.loop !54

for.end36:                                        ; preds = %for.cond27
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %61 = load i32, ptr %yindex, align 4, !tbaa !8
  %inc38 = add nsw i32 %61, 1
  store i32 %inc38, ptr %yindex, align 4, !tbaa !8
  br label %for.cond20, !llvm.loop !55

for.end39:                                        ; preds = %for.cond20
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %62 = load i32, ptr %ci, align 4, !tbaa !8
  %inc41 = add nsw i32 %62, 1
  store i32 %inc41, ptr %ci, align 4, !tbaa !8
  br label %for.cond12, !llvm.loop !56

for.end42:                                        ; preds = %for.cond12
  %63 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %entropy_decode_mcu = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %entropy_decode_mcu, align 8, !tbaa !57
  %65 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_buffer43 = getelementptr inbounds %struct.d_coef_controller, ptr %66, i32 0, i32 3
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %MCU_buffer43, i64 0, i64 0
  %call44 = call i32 %64(ptr noundef %65, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end42
  %67 = load i32, ptr %yoffset, align 4, !tbaa !8
  %68 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_vert_offset45 = getelementptr inbounds %struct.d_coef_controller, ptr %68, i32 0, i32 1
  store i32 %67, ptr %MCU_vert_offset45, align 4, !tbaa !48
  %69 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %70 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_ctr46 = getelementptr inbounds %struct.d_coef_controller, ptr %70, i32 0, i32 0
  store i32 %69, ptr %MCU_ctr46, align 8, !tbaa !50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end42
  br label %for.inc47

for.inc47:                                        ; preds = %if.end
  %71 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %inc48 = add i32 %71, 1
  store i32 %inc48, ptr %MCU_col_num, align 4, !tbaa !8
  br label %for.cond9, !llvm.loop !58

for.end49:                                        ; preds = %for.cond9
  %72 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_ctr50 = getelementptr inbounds %struct.d_coef_controller, ptr %72, i32 0, i32 0
  store i32 0, ptr %MCU_ctr50, align 8, !tbaa !50
  br label %for.inc51

for.inc51:                                        ; preds = %for.end49
  %73 = load i32, ptr %yoffset, align 4, !tbaa !8
  %inc52 = add nsw i32 %73, 1
  store i32 %inc52, ptr %yoffset, align 4, !tbaa !8
  br label %for.cond6, !llvm.loop !59

for.end53:                                        ; preds = %for.cond6
  %74 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row54 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %74, i32 0, i32 36
  %75 = load i32, ptr %input_iMCU_row54, align 8, !tbaa !41
  %inc55 = add i32 %75, 1
  store i32 %inc55, ptr %input_iMCU_row54, align 8, !tbaa !41
  %76 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %76, i32 0, i32 65
  %77 = load i32, ptr %total_iMCU_rows, align 4, !tbaa !60
  %cmp56 = icmp ult i32 %inc55, %77
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %for.end53
  %78 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @start_iMCU_row(ptr noundef %78)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end58:                                         ; preds = %for.end53
  %79 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %inputctl = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %79, i32 0, i32 82
  %80 = load ptr, ptr %inputctl, align 8, !tbaa !61
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %80, i32 0, i32 3
  %81 = load ptr, ptr %finish_input_pass, align 8, !tbaa !62
  %82 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %81(ptr noundef %82)
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then57, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_ptr) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr %buffer) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %start_col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yoffset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yindex) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %xindex) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %blkn) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %MCU_col_num) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_data(ptr noundef %cinfo, ptr noundef %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %lossyd = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %buffer_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %inverse_DCT = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef) #3
  %2 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_private = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %coef_private, align 8, !tbaa !18
  store ptr %3, ptr %coef, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_iMCU_row) #3
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %4, i32 0, i32 65
  %5 = load i32, ptr %total_iMCU_rows, align 4, !tbaa !60
  %sub = sub i32 %5, 1
  store i32 %sub, ptr %last_iMCU_row, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_num) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_rows) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_col) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %inverse_DCT) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_scan_number = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %6, i32 0, i32 35
  %7 = load i32, ptr %input_scan_number, align 4, !tbaa !64
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_scan_number = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %8, i32 0, i32 37
  %9 = load i32, ptr %output_scan_number, align 4, !tbaa !65
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_scan_number1 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %10, i32 0, i32 35
  %11 = load i32, ptr %input_scan_number1, align 4, !tbaa !64
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_scan_number2 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %12, i32 0, i32 37
  %13 = load i32, ptr %output_scan_number2, align 4, !tbaa !65
  %cmp3 = icmp eq i32 %11, %13
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %14, i32 0, i32 36
  %15 = load i32, ptr %input_iMCU_row, align 8, !tbaa !41
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %16, i32 0, i32 38
  %17 = load i32, ptr %output_iMCU_row, align 8, !tbaa !43
  %cmp4 = icmp ule i32 %15, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %18 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %19 = phi i1 [ true, %while.cond ], [ %18, %land.end ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %inputctl = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %20, i32 0, i32 82
  %21 = load ptr, ptr %inputctl, align 8, !tbaa !61
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %consume_input, align 8, !tbaa !66
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %22(ptr noundef %23)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !67

while.end:                                        ; preds = %lor.end
  store i32 0, ptr %ci, align 4, !tbaa !8
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %24, i32 0, i32 44
  %25 = load ptr, ptr %comp_info, align 8, !tbaa !25
  store ptr %25, ptr %compptr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %while.end
  %26 = load i32, ptr %ci, align 4, !tbaa !8
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %27, i32 0, i32 9
  %28 = load i32, ptr %num_components, align 8, !tbaa !26
  %cmp6 = icmp slt i32 %26, %28
  br i1 %cmp6, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i32 0, i32 12
  %30 = load i32, ptr %component_needed, align 8, !tbaa !68
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  br label %for.inc39

if.end8:                                          ; preds = %for.body
  %31 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %mem, align 8, !tbaa !14
  %access_virt_barray = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %access_virt_barray, align 8, !tbaa !45
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %coef, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.d_coef_controller, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  %37 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row9 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %38, i32 0, i32 38
  %39 = load i32, ptr %output_iMCU_row9, align 8, !tbaa !43
  %40 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %v_samp_factor, align 4, !tbaa !27
  %mul = mul i32 %39, %41
  %42 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor10 = getelementptr inbounds %struct.jpeg_component_info, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %v_samp_factor10, align 4, !tbaa !27
  %call11 = call ptr %33(ptr noundef %34, ptr noundef %37, i32 noundef %mul, i32 noundef %43, i32 noundef 0)
  store ptr %call11, ptr %buffer, align 8, !tbaa !4
  %44 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row12 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %44, i32 0, i32 38
  %45 = load i32, ptr %output_iMCU_row12, align 8, !tbaa !43
  %46 = load i32, ptr %last_iMCU_row, align 4, !tbaa !8
  %cmp13 = icmp ult i32 %45, %46
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end8
  %47 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor15 = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i32 0, i32 3
  %48 = load i32, ptr %v_samp_factor15, align 4, !tbaa !27
  store i32 %48, ptr %block_rows, align 4, !tbaa !8
  br label %if.end21

if.else:                                          ; preds = %if.end8
  %49 = load ptr, ptr %compptr, align 8, !tbaa !4
  %height_in_data_units = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i32 0, i32 8
  %50 = load i32, ptr %height_in_data_units, align 8, !tbaa !33
  %51 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor16 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %v_samp_factor16, align 4, !tbaa !27
  %rem = urem i32 %50, %52
  store i32 %rem, ptr %block_rows, align 4, !tbaa !8
  %53 = load i32, ptr %block_rows, align 4, !tbaa !8
  %cmp17 = icmp eq i32 %53, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.else
  %54 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %v_samp_factor19, align 4, !tbaa !27
  store i32 %55, ptr %block_rows, align 4, !tbaa !8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  %56 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %inverse_DCT22 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %56, i32 0, i32 10
  %57 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom23 = sext i32 %57 to i64
  %arrayidx24 = getelementptr inbounds [10 x ptr], ptr %inverse_DCT22, i64 0, i64 %idxprom23
  %58 = load ptr, ptr %arrayidx24, align 8, !tbaa !4
  store ptr %58, ptr %inverse_DCT, align 8, !tbaa !4
  %59 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %60 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom25 = sext i32 %60 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %59, i64 %idxprom25
  %61 = load ptr, ptr %arrayidx26, align 8, !tbaa !4
  store ptr %61, ptr %output_ptr, align 8, !tbaa !4
  store i32 0, ptr %block_row, align 4, !tbaa !8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %if.end21
  %62 = load i32, ptr %block_row, align 4, !tbaa !8
  %63 = load i32, ptr %block_rows, align 4, !tbaa !8
  %cmp28 = icmp slt i32 %62, %63
  br i1 %cmp28, label %for.body29, label %for.end38

for.body29:                                       ; preds = %for.cond27
  %64 = load ptr, ptr %buffer, align 8, !tbaa !4
  %65 = load i32, ptr %block_row, align 4, !tbaa !8
  %idxprom30 = sext i32 %65 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %64, i64 %idxprom30
  %66 = load ptr, ptr %arrayidx31, align 8, !tbaa !4
  store ptr %66, ptr %buffer_ptr, align 8, !tbaa !4
  store i32 0, ptr %output_col, align 4, !tbaa !8
  store i32 0, ptr %block_num, align 4, !tbaa !8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %for.body29
  %67 = load i32, ptr %block_num, align 4, !tbaa !8
  %68 = load ptr, ptr %compptr, align 8, !tbaa !4
  %width_in_data_units = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i32 0, i32 7
  %69 = load i32, ptr %width_in_data_units, align 4, !tbaa !31
  %cmp33 = icmp ult i32 %67, %69
  br i1 %cmp33, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond32
  %70 = load ptr, ptr %inverse_DCT, align 8, !tbaa !4
  %71 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %compptr, align 8, !tbaa !4
  %73 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %74 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %75 = load i32, ptr %output_col, align 4, !tbaa !8
  call void %70(ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74, i32 noundef %75)
  %76 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %76, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %77 = load ptr, ptr %compptr, align 8, !tbaa !4
  %codec_data_unit = getelementptr inbounds %struct.jpeg_component_info, ptr %77, i32 0, i32 9
  %78 = load i32, ptr %codec_data_unit, align 4, !tbaa !69
  %79 = load i32, ptr %output_col, align 4, !tbaa !8
  %add = add i32 %79, %78
  store i32 %add, ptr %output_col, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body34
  %80 = load i32, ptr %block_num, align 4, !tbaa !8
  %inc = add i32 %80, 1
  store i32 %inc, ptr %block_num, align 4, !tbaa !8
  br label %for.cond32, !llvm.loop !70

for.end:                                          ; preds = %for.cond32
  %81 = load ptr, ptr %compptr, align 8, !tbaa !4
  %codec_data_unit35 = getelementptr inbounds %struct.jpeg_component_info, ptr %81, i32 0, i32 9
  %82 = load i32, ptr %codec_data_unit35, align 4, !tbaa !69
  %83 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %idx.ext = sext i32 %82 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %83, i64 %idx.ext
  store ptr %add.ptr, ptr %output_ptr, align 8, !tbaa !4
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %84 = load i32, ptr %block_row, align 4, !tbaa !8
  %inc37 = add nsw i32 %84, 1
  store i32 %inc37, ptr %block_row, align 4, !tbaa !8
  br label %for.cond27, !llvm.loop !71

for.end38:                                        ; preds = %for.cond27
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38, %if.then7
  %85 = load i32, ptr %ci, align 4, !tbaa !8
  %inc40 = add nsw i32 %85, 1
  store i32 %inc40, ptr %ci, align 4, !tbaa !8
  %86 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr41 = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i32 1
  store ptr %incdec.ptr41, ptr %compptr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !72

for.end42:                                        ; preds = %for.cond
  %87 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row43 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %87, i32 0, i32 38
  %88 = load i32, ptr %output_iMCU_row43, align 8, !tbaa !43
  %inc44 = add i32 %88, 1
  store i32 %inc44, ptr %output_iMCU_row43, align 8, !tbaa !43
  %89 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows45 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %89, i32 0, i32 65
  %90 = load i32, ptr %total_iMCU_rows45, align 4, !tbaa !60
  %cmp46 = icmp ult i32 %inc44, %90
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.end42
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %for.end42
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then47, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inverse_DCT) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_col) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_rows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_row) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_iMCU_row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @dummy_consume_data(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_onepass(ptr noundef %cinfo, ptr noundef %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %lossyd = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %MCU_col_num = alloca i32, align 4
  %last_MCU_col = alloca i32, align 4
  %last_iMCU_row = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %useful_width = alloca i32, align 4
  %output_ptr = alloca ptr, align 8
  %start_col = alloca i32, align 4
  %output_col = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %inverse_DCT = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef) #3
  %2 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_private = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %coef_private, align 8, !tbaa !18
  store ptr %3, ptr %coef, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %MCU_col_num) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_MCU_col) #3
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %MCUs_per_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %4, i32 0, i32 69
  %5 = load i32, ptr %MCUs_per_row, align 8, !tbaa !51
  %sub = sub i32 %5, 1
  store i32 %sub, ptr %last_MCU_col, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_iMCU_row) #3
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %6, i32 0, i32 65
  %7 = load i32, ptr %total_iMCU_rows, align 4, !tbaa !60
  %sub1 = sub i32 %7, 1
  store i32 %sub1, ptr %last_iMCU_row, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %blkn) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %xindex) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %yindex) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %yoffset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %useful_width) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %start_col) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_col) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %inverse_DCT) #3
  %8 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_vert_offset = getelementptr inbounds %struct.d_coef_controller, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %MCU_vert_offset, align 4, !tbaa !48
  store i32 %9, ptr %yoffset, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %entry
  %10 = load i32, ptr %yoffset, align 4, !tbaa !8
  %11 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.d_coef_controller, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %MCU_rows_per_iMCU_row, align 8, !tbaa !49
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_ctr = getelementptr inbounds %struct.d_coef_controller, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %MCU_ctr, align 8, !tbaa !50
  store i32 %14, ptr %MCU_col_num, align 4, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc58, %for.body
  %15 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %16 = load i32, ptr %last_MCU_col, align 4, !tbaa !8
  %cmp3 = icmp ule i32 %15, %16
  br i1 %cmp3, label %for.body4, label %for.end60

for.body4:                                        ; preds = %for.cond2
  %17 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_buffer = getelementptr inbounds %struct.d_coef_controller, ptr %17, i32 0, i32 3
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %MCU_buffer, i64 0, i64 0
  %18 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %data_units_in_MCU = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %19, i32 0, i32 71
  %20 = load i32, ptr %data_units_in_MCU, align 8, !tbaa !73
  %conv = sext i32 %20 to i64
  %mul = mul i64 %conv, 128
  call void @gdcmjpeg12_jzero_far(ptr noundef %18, i64 noundef %mul)
  %21 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %entropy_decode_mcu = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %entropy_decode_mcu, align 8, !tbaa !57
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_buffer5 = getelementptr inbounds %struct.d_coef_controller, ptr %24, i32 0, i32 3
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %MCU_buffer5, i64 0, i64 0
  %call = call i32 %22(ptr noundef %23, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body4
  %25 = load i32, ptr %yoffset, align 4, !tbaa !8
  %26 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_vert_offset6 = getelementptr inbounds %struct.d_coef_controller, ptr %26, i32 0, i32 1
  store i32 %25, ptr %MCU_vert_offset6, align 4, !tbaa !48
  %27 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %28 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_ctr7 = getelementptr inbounds %struct.d_coef_controller, ptr %28, i32 0, i32 0
  store i32 %27, ptr %MCU_ctr7, align 8, !tbaa !50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body4
  store i32 0, ptr %blkn, align 4, !tbaa !8
  store i32 0, ptr %ci, align 4, !tbaa !8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc55, %if.end
  %29 = load i32, ptr %ci, align 4, !tbaa !8
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %30, i32 0, i32 67
  %31 = load i32, ptr %comps_in_scan, align 8, !tbaa !44
  %cmp9 = icmp slt i32 %29, %31
  br i1 %cmp9, label %for.body11, label %for.end57

for.body11:                                       ; preds = %for.cond8
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %32, i32 0, i32 68
  %33 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom = sext i32 %33 to i64
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %34 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  store ptr %34, ptr %compptr, align 8, !tbaa !4
  %35 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 12
  %36 = load i32, ptr %component_needed, align 8, !tbaa !68
  %tobool13 = icmp ne i32 %36, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.body11
  %37 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_data_units = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i32 0, i32 15
  %38 = load i32, ptr %MCU_data_units, align 4, !tbaa !74
  %39 = load i32, ptr %blkn, align 4, !tbaa !8
  %add = add nsw i32 %39, %38
  store i32 %add, ptr %blkn, align 4, !tbaa !8
  br label %for.inc55

if.end15:                                         ; preds = %for.body11
  %40 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %inverse_DCT16 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %component_index, align 4, !tbaa !46
  %idxprom17 = sext i32 %42 to i64
  %arrayidx18 = getelementptr inbounds [10 x ptr], ptr %inverse_DCT16, i64 0, i64 %idxprom17
  %43 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  store ptr %43, ptr %inverse_DCT, align 8, !tbaa !4
  %44 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %45 = load i32, ptr %last_MCU_col, align 4, !tbaa !8
  %cmp19 = icmp ult i32 %44, %45
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %46 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_width = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 0, i32 13
  %47 = load i32, ptr %MCU_width, align 4, !tbaa !52
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %48 = load ptr, ptr %compptr, align 8, !tbaa !4
  %last_col_width = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i32 0, i32 17
  %49 = load i32, ptr %last_col_width, align 4, !tbaa !75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ %49, %cond.false ]
  store i32 %cond, ptr %useful_width, align 4, !tbaa !8
  %50 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_index21 = getelementptr inbounds %struct.jpeg_component_info, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %component_index21, align 4, !tbaa !46
  %idxprom22 = sext i32 %52 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %50, i64 %idxprom22
  %53 = load ptr, ptr %arrayidx23, align 8, !tbaa !4
  %54 = load i32, ptr %yoffset, align 4, !tbaa !8
  %55 = load ptr, ptr %compptr, align 8, !tbaa !4
  %codec_data_unit = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i32 0, i32 9
  %56 = load i32, ptr %codec_data_unit, align 4, !tbaa !69
  %mul24 = mul nsw i32 %54, %56
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %53, i64 %idx.ext
  store ptr %add.ptr, ptr %output_ptr, align 8, !tbaa !4
  %57 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %58 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_sample_width = getelementptr inbounds %struct.jpeg_component_info, ptr %58, i32 0, i32 16
  %59 = load i32, ptr %MCU_sample_width, align 8, !tbaa !76
  %mul25 = mul i32 %57, %59
  store i32 %mul25, ptr %start_col, align 4, !tbaa !8
  store i32 0, ptr %yindex, align 4, !tbaa !8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc52, %cond.end
  %60 = load i32, ptr %yindex, align 4, !tbaa !8
  %61 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_height = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i32 0, i32 14
  %62 = load i32, ptr %MCU_height, align 8, !tbaa !53
  %cmp27 = icmp slt i32 %60, %62
  br i1 %cmp27, label %for.body29, label %for.end54

for.body29:                                       ; preds = %for.cond26
  %63 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %63, i32 0, i32 36
  %64 = load i32, ptr %input_iMCU_row, align 8, !tbaa !41
  %65 = load i32, ptr %last_iMCU_row, align 4, !tbaa !8
  %cmp30 = icmp ult i32 %64, %65
  br i1 %cmp30, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body29
  %66 = load i32, ptr %yoffset, align 4, !tbaa !8
  %67 = load i32, ptr %yindex, align 4, !tbaa !8
  %add32 = add nsw i32 %66, %67
  %68 = load ptr, ptr %compptr, align 8, !tbaa !4
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i32 0, i32 18
  %69 = load i32, ptr %last_row_height, align 8, !tbaa !77
  %cmp33 = icmp slt i32 %add32, %69
  br i1 %cmp33, label %if.then35, label %if.end46

if.then35:                                        ; preds = %lor.lhs.false, %for.body29
  %70 = load i32, ptr %start_col, align 4, !tbaa !8
  store i32 %70, ptr %output_col, align 4, !tbaa !8
  store i32 0, ptr %xindex, align 4, !tbaa !8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %if.then35
  %71 = load i32, ptr %xindex, align 4, !tbaa !8
  %72 = load i32, ptr %useful_width, align 4, !tbaa !8
  %cmp37 = icmp slt i32 %71, %72
  br i1 %cmp37, label %for.body39, label %for.end

for.body39:                                       ; preds = %for.cond36
  %73 = load ptr, ptr %inverse_DCT, align 8, !tbaa !4
  %74 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %compptr, align 8, !tbaa !4
  %76 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_buffer40 = getelementptr inbounds %struct.d_coef_controller, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %blkn, align 4, !tbaa !8
  %78 = load i32, ptr %xindex, align 4, !tbaa !8
  %add41 = add nsw i32 %77, %78
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [10 x ptr], ptr %MCU_buffer40, i64 0, i64 %idxprom42
  %79 = load ptr, ptr %arrayidx43, align 8, !tbaa !4
  %80 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %81 = load i32, ptr %output_col, align 4, !tbaa !8
  call void %73(ptr noundef %74, ptr noundef %75, ptr noundef %79, ptr noundef %80, i32 noundef %81)
  %82 = load ptr, ptr %compptr, align 8, !tbaa !4
  %codec_data_unit44 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i32 0, i32 9
  %83 = load i32, ptr %codec_data_unit44, align 4, !tbaa !69
  %84 = load i32, ptr %output_col, align 4, !tbaa !8
  %add45 = add i32 %84, %83
  store i32 %add45, ptr %output_col, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body39
  %85 = load i32, ptr %xindex, align 4, !tbaa !8
  %inc = add nsw i32 %85, 1
  store i32 %inc, ptr %xindex, align 4, !tbaa !8
  br label %for.cond36, !llvm.loop !78

for.end:                                          ; preds = %for.cond36
  br label %if.end46

if.end46:                                         ; preds = %for.end, %lor.lhs.false
  %86 = load ptr, ptr %compptr, align 8, !tbaa !4
  %MCU_width47 = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i32 0, i32 13
  %87 = load i32, ptr %MCU_width47, align 4, !tbaa !52
  %88 = load i32, ptr %blkn, align 4, !tbaa !8
  %add48 = add nsw i32 %88, %87
  store i32 %add48, ptr %blkn, align 4, !tbaa !8
  %89 = load ptr, ptr %compptr, align 8, !tbaa !4
  %codec_data_unit49 = getelementptr inbounds %struct.jpeg_component_info, ptr %89, i32 0, i32 9
  %90 = load i32, ptr %codec_data_unit49, align 4, !tbaa !69
  %91 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %idx.ext50 = sext i32 %90 to i64
  %add.ptr51 = getelementptr inbounds ptr, ptr %91, i64 %idx.ext50
  store ptr %add.ptr51, ptr %output_ptr, align 8, !tbaa !4
  br label %for.inc52

for.inc52:                                        ; preds = %if.end46
  %92 = load i32, ptr %yindex, align 4, !tbaa !8
  %inc53 = add nsw i32 %92, 1
  store i32 %inc53, ptr %yindex, align 4, !tbaa !8
  br label %for.cond26, !llvm.loop !79

for.end54:                                        ; preds = %for.cond26
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54, %if.then14
  %93 = load i32, ptr %ci, align 4, !tbaa !8
  %inc56 = add nsw i32 %93, 1
  store i32 %inc56, ptr %ci, align 4, !tbaa !8
  br label %for.cond8, !llvm.loop !80

for.end57:                                        ; preds = %for.cond8
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %94 = load i32, ptr %MCU_col_num, align 4, !tbaa !8
  %inc59 = add i32 %94, 1
  store i32 %inc59, ptr %MCU_col_num, align 4, !tbaa !8
  br label %for.cond2, !llvm.loop !81

for.end60:                                        ; preds = %for.cond2
  %95 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_ctr61 = getelementptr inbounds %struct.d_coef_controller, ptr %95, i32 0, i32 0
  store i32 0, ptr %MCU_ctr61, align 8, !tbaa !50
  br label %for.inc62

for.inc62:                                        ; preds = %for.end60
  %96 = load i32, ptr %yoffset, align 4, !tbaa !8
  %inc63 = add nsw i32 %96, 1
  store i32 %inc63, ptr %yoffset, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !82

for.end64:                                        ; preds = %for.cond
  %97 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %97, i32 0, i32 38
  %98 = load i32, ptr %output_iMCU_row, align 8, !tbaa !43
  %inc65 = add i32 %98, 1
  store i32 %inc65, ptr %output_iMCU_row, align 8, !tbaa !43
  %99 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row66 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %99, i32 0, i32 36
  %100 = load i32, ptr %input_iMCU_row66, align 8, !tbaa !41
  %inc67 = add i32 %100, 1
  store i32 %inc67, ptr %input_iMCU_row66, align 8, !tbaa !41
  %101 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows68 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %101, i32 0, i32 65
  %102 = load i32, ptr %total_iMCU_rows68, align 4, !tbaa !60
  %cmp69 = icmp ult i32 %inc67, %102
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.end64
  %103 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @start_iMCU_row(ptr noundef %103)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %for.end64
  %104 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %inputctl = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %104, i32 0, i32 82
  %105 = load ptr, ptr %inputctl, align 8, !tbaa !61
  %finish_input_pass = getelementptr inbounds %struct.jpeg_input_controller, ptr %105, i32 0, i32 3
  %106 = load ptr, ptr %finish_input_pass, align 8, !tbaa !62
  %107 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %106(ptr noundef %107)
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then71, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inverse_DCT) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %start_col) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %useful_width) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yoffset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yindex) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %xindex) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %blkn) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_iMCU_row) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_MCU_col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %MCU_col_num) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  %108 = load i32, ptr %retval, align 4
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal void @start_iMCU_row(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %lossyd = alloca ptr, align 8
  %coef = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef) #3
  %2 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_private = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %coef_private, align 8, !tbaa !18
  store ptr %3, ptr %coef, align 8, !tbaa !4
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comps_in_scan = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %4, i32 0, i32 67
  %5 = load i32, ptr %comps_in_scan, align 8, !tbaa !44
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_rows_per_iMCU_row = getelementptr inbounds %struct.d_coef_controller, ptr %6, i32 0, i32 2
  store i32 1, ptr %MCU_rows_per_iMCU_row, align 8, !tbaa !49
  br label %if.end8

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %7, i32 0, i32 36
  %8 = load i32, ptr %input_iMCU_row, align 8, !tbaa !41
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %9, i32 0, i32 65
  %10 = load i32, ptr %total_iMCU_rows, align 4, !tbaa !60
  %sub = sub i32 %10, 1
  %cmp1 = icmp ult i32 %8, %sub
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %11, i32 0, i32 68
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 0
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %v_samp_factor, align 4, !tbaa !27
  %14 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_rows_per_iMCU_row3 = getelementptr inbounds %struct.d_coef_controller, ptr %14, i32 0, i32 2
  store i32 %13, ptr %MCU_rows_per_iMCU_row3, align 8, !tbaa !49
  br label %if.end

if.else4:                                         ; preds = %if.else
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cur_comp_info5 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %15, i32 0, i32 68
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info5, i64 0, i64 0
  %16 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  %last_row_height = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i32 0, i32 18
  %17 = load i32, ptr %last_row_height, align 8, !tbaa !77
  %18 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_rows_per_iMCU_row7 = getelementptr inbounds %struct.d_coef_controller, ptr %18, i32 0, i32 2
  store i32 %17, ptr %MCU_rows_per_iMCU_row7, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %19 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_ctr = getelementptr inbounds %struct.d_coef_controller, ptr %19, i32 0, i32 0
  store i32 0, ptr %MCU_ctr, align 8, !tbaa !50
  %20 = load ptr, ptr %coef, align 8, !tbaa !4
  %MCU_vert_offset = getelementptr inbounds %struct.d_coef_controller, ptr %20, i32 0, i32 1
  store i32 0, ptr %MCU_vert_offset, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @smoothing_ok(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %lossyd = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %smoothing_useful = alloca i32, align 4
  %ci = alloca i32, align 4
  %coefi = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %qtable = alloca ptr, align 8
  %coef_bits = alloca ptr, align 8
  %coef_bits_latch = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef) #3
  %2 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_private = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %coef_private, align 8, !tbaa !18
  store ptr %3, ptr %coef, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %smoothing_useful) #3
  store i32 0, ptr %smoothing_useful, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %coefi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %qtable) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef_bits) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef_bits_latch) #3
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %process = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %4, i32 0, i32 61
  %5 = load i32, ptr %process, align 4, !tbaa !29
  %cmp = icmp ne i32 %5, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %coef_bits1 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %6, i32 0, i32 39
  %7 = load ptr, ptr %coef_bits1, align 8, !tbaa !83
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %coef, align 8, !tbaa !4
  %coef_bits_latch3 = getelementptr inbounds %struct.d_coef_controller, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %coef_bits_latch3, align 8, !tbaa !23
  %cmp4 = icmp eq ptr %9, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mem, align 8, !tbaa !14
  %alloc_small = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %alloc_small, align 8, !tbaa !15
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %num_components, align 8, !tbaa !26
  %conv = sext i32 %15 to i64
  %mul = mul i64 %conv, 24
  %call = call ptr %12(ptr noundef %13, i32 noundef 1, i64 noundef %mul)
  %16 = load ptr, ptr %coef, align 8, !tbaa !4
  %coef_bits_latch6 = getelementptr inbounds %struct.d_coef_controller, ptr %16, i32 0, i32 5
  store ptr %call, ptr %coef_bits_latch6, align 8, !tbaa !23
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %17 = load ptr, ptr %coef, align 8, !tbaa !4
  %coef_bits_latch8 = getelementptr inbounds %struct.d_coef_controller, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %coef_bits_latch8, align 8, !tbaa !23
  store ptr %18, ptr %coef_bits_latch, align 8, !tbaa !4
  store i32 0, ptr %ci, align 4, !tbaa !8
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %19, i32 0, i32 44
  %20 = load ptr, ptr %comp_info, align 8, !tbaa !25
  store ptr %20, ptr %compptr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc72, %if.end7
  %21 = load i32, ptr %ci, align 4, !tbaa !8
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components9 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %22, i32 0, i32 9
  %23 = load i32, ptr %num_components9, align 8, !tbaa !26
  %cmp10 = icmp slt i32 %21, %23
  br i1 %cmp10, label %for.body, label %for.end74

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %compptr, align 8, !tbaa !4
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i32 0, i32 19
  %25 = load ptr, ptr %quant_table, align 8, !tbaa !84
  store ptr %25, ptr %qtable, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %25, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %26 = load ptr, ptr %qtable, align 8, !tbaa !4
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %26, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 0
  %27 = load i16, ptr %arrayidx, align 4, !tbaa !85
  %conv16 = zext i16 %27 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then49, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end15
  %28 = load ptr, ptr %qtable, align 8, !tbaa !4
  %quantval20 = getelementptr inbounds %struct.JQUANT_TBL, ptr %28, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [64 x i16], ptr %quantval20, i64 0, i64 1
  %29 = load i16, ptr %arrayidx21, align 2, !tbaa !85
  %conv22 = zext i16 %29 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then49, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %30 = load ptr, ptr %qtable, align 8, !tbaa !4
  %quantval26 = getelementptr inbounds %struct.JQUANT_TBL, ptr %30, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x i16], ptr %quantval26, i64 0, i64 8
  %31 = load i16, ptr %arrayidx27, align 4, !tbaa !85
  %conv28 = zext i16 %31 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then49, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %32 = load ptr, ptr %qtable, align 8, !tbaa !4
  %quantval32 = getelementptr inbounds %struct.JQUANT_TBL, ptr %32, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x i16], ptr %quantval32, i64 0, i64 16
  %33 = load i16, ptr %arrayidx33, align 4, !tbaa !85
  %conv34 = zext i16 %33 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then49, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %34 = load ptr, ptr %qtable, align 8, !tbaa !4
  %quantval38 = getelementptr inbounds %struct.JQUANT_TBL, ptr %34, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [64 x i16], ptr %quantval38, i64 0, i64 9
  %35 = load i16, ptr %arrayidx39, align 2, !tbaa !85
  %conv40 = zext i16 %35 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then49, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %36 = load ptr, ptr %qtable, align 8, !tbaa !4
  %quantval44 = getelementptr inbounds %struct.JQUANT_TBL, ptr %36, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [64 x i16], ptr %quantval44, i64 0, i64 2
  %37 = load i16, ptr %arrayidx45, align 4, !tbaa !85
  %conv46 = zext i16 %37 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false43, %lor.lhs.false37, %lor.lhs.false31, %lor.lhs.false25, %lor.lhs.false19, %if.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %lor.lhs.false43
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %coef_bits51 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %38, i32 0, i32 39
  %39 = load ptr, ptr %coef_bits51, align 8, !tbaa !83
  %40 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom = sext i32 %40 to i64
  %arrayidx52 = getelementptr inbounds [64 x i32], ptr %39, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i32], ptr %arrayidx52, i64 0, i64 0
  store ptr %arraydecay, ptr %coef_bits, align 8, !tbaa !4
  %41 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds i32, ptr %41, i64 0
  %42 = load i32, ptr %arrayidx53, align 4, !tbaa !8
  %cmp54 = icmp slt i32 %42, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  store i32 1, ptr %coefi, align 4, !tbaa !8
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc, %if.end57
  %43 = load i32, ptr %coefi, align 4, !tbaa !8
  %cmp59 = icmp sle i32 %43, 5
  br i1 %cmp59, label %for.body61, label %for.end

for.body61:                                       ; preds = %for.cond58
  %44 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %45 = load i32, ptr %coefi, align 4, !tbaa !8
  %idxprom62 = sext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %44, i64 %idxprom62
  %46 = load i32, ptr %arrayidx63, align 4, !tbaa !8
  %47 = load ptr, ptr %coef_bits_latch, align 8, !tbaa !4
  %48 = load i32, ptr %coefi, align 4, !tbaa !8
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %47, i64 %idxprom64
  store i32 %46, ptr %arrayidx65, align 4, !tbaa !8
  %49 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %50 = load i32, ptr %coefi, align 4, !tbaa !8
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %49, i64 %idxprom66
  %51 = load i32, ptr %arrayidx67, align 4, !tbaa !8
  %cmp68 = icmp ne i32 %51, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %for.body61
  store i32 1, ptr %smoothing_useful, align 4, !tbaa !8
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %for.body61
  br label %for.inc

for.inc:                                          ; preds = %if.end71
  %52 = load i32, ptr %coefi, align 4, !tbaa !8
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %coefi, align 4, !tbaa !8
  br label %for.cond58, !llvm.loop !86

for.end:                                          ; preds = %for.cond58
  %53 = load ptr, ptr %coef_bits_latch, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i32, ptr %53, i64 6
  store ptr %add.ptr, ptr %coef_bits_latch, align 8, !tbaa !4
  br label %for.inc72

for.inc72:                                        ; preds = %for.end
  %54 = load i32, ptr %ci, align 4, !tbaa !8
  %inc73 = add nsw i32 %54, 1
  store i32 %inc73, ptr %ci, align 4, !tbaa !8
  %55 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !87

for.end74:                                        ; preds = %for.cond
  %56 = load i32, ptr %smoothing_useful, align 4, !tbaa !8
  store i32 %56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end74, %if.then56, %if.then49, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef_bits_latch) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef_bits) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %qtable) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %coefi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %smoothing_useful) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_smooth_data(ptr noundef %cinfo, ptr noundef %output_buf) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %lossyd = alloca ptr, align 8
  %coef = alloca ptr, align 8
  %last_iMCU_row = alloca i32, align 4
  %block_num = alloca i32, align 4
  %last_block_column = alloca i32, align 4
  %ci = alloca i32, align 4
  %block_row = alloca i32, align 4
  %block_rows = alloca i32, align 4
  %access_rows = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %buffer_ptr = alloca ptr, align 8
  %prev_block_row = alloca ptr, align 8
  %next_block_row = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %output_col = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %inverse_DCT = alloca ptr, align 8
  %first_row = alloca i32, align 4
  %last_row = alloca i32, align 4
  %workspace = alloca [64 x i16], align 16
  %coef_bits = alloca ptr, align 8
  %quanttbl = alloca ptr, align 8
  %Q00 = alloca i32, align 4
  %Q01 = alloca i32, align 4
  %Q02 = alloca i32, align 4
  %Q10 = alloca i32, align 4
  %Q11 = alloca i32, align 4
  %Q20 = alloca i32, align 4
  %num = alloca i32, align 4
  %DC1 = alloca i32, align 4
  %DC2 = alloca i32, align 4
  %DC3 = alloca i32, align 4
  %DC4 = alloca i32, align 4
  %DC5 = alloca i32, align 4
  %DC6 = alloca i32, align 4
  %DC7 = alloca i32, align 4
  %DC8 = alloca i32, align 4
  %DC9 = alloca i32, align 4
  %Al = alloca i32, align 4
  %pred = alloca i32, align 4
  %delta = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lossyd) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %codec = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %codec, align 8, !tbaa !10
  store ptr %1, ptr %lossyd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef) #3
  %2 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %coef_private = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %coef_private, align 8, !tbaa !18
  store ptr %3, ptr %coef, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_iMCU_row) #3
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %4, i32 0, i32 65
  %5 = load i32, ptr %total_iMCU_rows, align 4, !tbaa !60
  %sub = sub i32 %5, 1
  store i32 %sub, ptr %last_iMCU_row, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_num) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_block_column) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %block_rows) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_rows) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_block_row) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_block_row) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_col) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %inverse_DCT) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_row) #3
  call void @llvm.lifetime.start.p0(i64 128, ptr %workspace) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %coef_bits) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %quanttbl) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q00) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q01) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q02) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q10) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q11) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Q20) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC9) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %Al) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pred) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_scan_number = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %6, i32 0, i32 35
  %7 = load i32, ptr %input_scan_number, align 4, !tbaa !64
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_scan_number = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %8, i32 0, i32 37
  %9 = load i32, ptr %output_scan_number, align 4, !tbaa !65
  %cmp = icmp sle i32 %7, %9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %inputctl = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %10, i32 0, i32 82
  %11 = load ptr, ptr %inputctl, align 8, !tbaa !61
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %eoi_reached, align 4, !tbaa !88
  %tobool = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_scan_number1 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %14, i32 0, i32 35
  %15 = load i32, ptr %input_scan_number1, align 4, !tbaa !64
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_scan_number2 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %16, i32 0, i32 37
  %17 = load i32, ptr %output_scan_number2, align 4, !tbaa !65
  %cmp3 = icmp eq i32 %15, %17
  br i1 %cmp3, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #3
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %Ss = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %18, i32 0, i32 73
  %19 = load i32, ptr %Ss, align 4, !tbaa !89
  %cmp4 = icmp eq i32 %19, 0
  %20 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 1, i32 0
  store i32 %cond, ptr %delta, align 4, !tbaa !8
  %21 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %input_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %21, i32 0, i32 36
  %22 = load i32, ptr %input_iMCU_row, align 8, !tbaa !41
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %23, i32 0, i32 38
  %24 = load i32, ptr %output_iMCU_row, align 8, !tbaa !43
  %25 = load i32, ptr %delta, align 4, !tbaa !8
  %add = add i32 %24, %25
  %cmp5 = icmp ugt i32 %22, %add
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7

if.end7:                                          ; preds = %cleanup.cont, %while.body
  %26 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %inputctl8 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %26, i32 0, i32 82
  %27 = load ptr, ptr %inputctl8, align 8, !tbaa !61
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %consume_input, align 8, !tbaa !66
  %29 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call i32 %28(ptr noundef %29)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup391

if.end11:                                         ; preds = %if.end7
  br label %while.cond, !llvm.loop !90

while.end:                                        ; preds = %cleanup, %land.end
  store i32 0, ptr %ci, align 4, !tbaa !8
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %comp_info = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %30, i32 0, i32 44
  %31 = load ptr, ptr %comp_info, align 8, !tbaa !25
  store ptr %31, ptr %compptr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc380, %while.end
  %32 = load i32, ptr %ci, align 4, !tbaa !8
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %num_components = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %33, i32 0, i32 9
  %34 = load i32, ptr %num_components, align 8, !tbaa !26
  %cmp12 = icmp slt i32 %32, %34
  br i1 %cmp12, label %for.body, label %for.end383

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %compptr, align 8, !tbaa !4
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 12
  %36 = load i32, ptr %component_needed, align 8, !tbaa !68
  %tobool13 = icmp ne i32 %36, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.body
  br label %for.inc380

if.end15:                                         ; preds = %for.body
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row16 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %37, i32 0, i32 38
  %38 = load i32, ptr %output_iMCU_row16, align 8, !tbaa !43
  %39 = load i32, ptr %last_iMCU_row, align 4, !tbaa !8
  %cmp17 = icmp ult i32 %38, %39
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %40 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %v_samp_factor, align 4, !tbaa !27
  store i32 %41, ptr %block_rows, align 4, !tbaa !8
  %42 = load i32, ptr %block_rows, align 4, !tbaa !8
  %mul = mul nsw i32 %42, 2
  store i32 %mul, ptr %access_rows, align 4, !tbaa !8
  store i32 0, ptr %last_row, align 4, !tbaa !8
  br label %if.end24

if.else:                                          ; preds = %if.end15
  %43 = load ptr, ptr %compptr, align 8, !tbaa !4
  %height_in_data_units = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i32 0, i32 8
  %44 = load i32, ptr %height_in_data_units, align 8, !tbaa !33
  %45 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor19 = getelementptr inbounds %struct.jpeg_component_info, ptr %45, i32 0, i32 3
  %46 = load i32, ptr %v_samp_factor19, align 4, !tbaa !27
  %rem = urem i32 %44, %46
  store i32 %rem, ptr %block_rows, align 4, !tbaa !8
  %47 = load i32, ptr %block_rows, align 4, !tbaa !8
  %cmp20 = icmp eq i32 %47, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else
  %48 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor22 = getelementptr inbounds %struct.jpeg_component_info, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %v_samp_factor22, align 4, !tbaa !27
  store i32 %49, ptr %block_rows, align 4, !tbaa !8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.else
  %50 = load i32, ptr %block_rows, align 4, !tbaa !8
  store i32 %50, ptr %access_rows, align 4, !tbaa !8
  store i32 1, ptr %last_row, align 4, !tbaa !8
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then18
  %51 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row25 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %51, i32 0, i32 38
  %52 = load i32, ptr %output_iMCU_row25, align 8, !tbaa !43
  %cmp26 = icmp ugt i32 %52, 0
  br i1 %cmp26, label %if.then27, label %if.else36

if.then27:                                        ; preds = %if.end24
  %53 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, ptr %53, i32 0, i32 3
  %54 = load i32, ptr %v_samp_factor28, align 4, !tbaa !27
  %55 = load i32, ptr %access_rows, align 4, !tbaa !8
  %add29 = add nsw i32 %55, %54
  store i32 %add29, ptr %access_rows, align 4, !tbaa !8
  %56 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %mem, align 8, !tbaa !14
  %access_virt_barray = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %57, i32 0, i32 9
  %58 = load ptr, ptr %access_virt_barray, align 8, !tbaa !45
  %59 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %coef, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.d_coef_controller, ptr %60, i32 0, i32 4
  %61 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom = sext i32 %61 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  %62 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %63 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row30 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %63, i32 0, i32 38
  %64 = load i32, ptr %output_iMCU_row30, align 8, !tbaa !43
  %sub31 = sub i32 %64, 1
  %65 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor32 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i32 0, i32 3
  %66 = load i32, ptr %v_samp_factor32, align 4, !tbaa !27
  %mul33 = mul i32 %sub31, %66
  %67 = load i32, ptr %access_rows, align 4, !tbaa !8
  %call34 = call ptr %58(ptr noundef %59, ptr noundef %62, i32 noundef %mul33, i32 noundef %67, i32 noundef 0)
  store ptr %call34, ptr %buffer, align 8, !tbaa !4
  %68 = load ptr, ptr %compptr, align 8, !tbaa !4
  %v_samp_factor35 = getelementptr inbounds %struct.jpeg_component_info, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %v_samp_factor35, align 4, !tbaa !27
  %70 = load ptr, ptr %buffer, align 8, !tbaa !4
  %idx.ext = sext i32 %69 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %70, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer, align 8, !tbaa !4
  store i32 0, ptr %first_row, align 4, !tbaa !8
  br label %if.end43

if.else36:                                        ; preds = %if.end24
  %71 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem37 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %mem37, align 8, !tbaa !14
  %access_virt_barray38 = getelementptr inbounds %struct.gdcmjpeg12_memory_mgr, ptr %72, i32 0, i32 9
  %73 = load ptr, ptr %access_virt_barray38, align 8, !tbaa !45
  %74 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %coef, align 8, !tbaa !4
  %whole_image39 = getelementptr inbounds %struct.d_coef_controller, ptr %75, i32 0, i32 4
  %76 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom40 = sext i32 %76 to i64
  %arrayidx41 = getelementptr inbounds [10 x ptr], ptr %whole_image39, i64 0, i64 %idxprom40
  %77 = load ptr, ptr %arrayidx41, align 8, !tbaa !4
  %78 = load i32, ptr %access_rows, align 4, !tbaa !8
  %call42 = call ptr %73(ptr noundef %74, ptr noundef %77, i32 noundef 0, i32 noundef %78, i32 noundef 0)
  store ptr %call42, ptr %buffer, align 8, !tbaa !4
  store i32 1, ptr %first_row, align 4, !tbaa !8
  br label %if.end43

if.end43:                                         ; preds = %if.else36, %if.then27
  %79 = load ptr, ptr %coef, align 8, !tbaa !4
  %coef_bits_latch = getelementptr inbounds %struct.d_coef_controller, ptr %79, i32 0, i32 5
  %80 = load ptr, ptr %coef_bits_latch, align 8, !tbaa !23
  %81 = load i32, ptr %ci, align 4, !tbaa !8
  %mul44 = mul nsw i32 %81, 6
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i32, ptr %80, i64 %idx.ext45
  store ptr %add.ptr46, ptr %coef_bits, align 8, !tbaa !4
  %82 = load ptr, ptr %compptr, align 8, !tbaa !4
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i32 0, i32 19
  %83 = load ptr, ptr %quant_table, align 8, !tbaa !84
  store ptr %83, ptr %quanttbl, align 8, !tbaa !4
  %84 = load ptr, ptr %quanttbl, align 8, !tbaa !4
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %84, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 0
  %85 = load i16, ptr %arrayidx47, align 4, !tbaa !85
  %conv = zext i16 %85 to i32
  store i32 %conv, ptr %Q00, align 4, !tbaa !8
  %86 = load ptr, ptr %quanttbl, align 8, !tbaa !4
  %quantval48 = getelementptr inbounds %struct.JQUANT_TBL, ptr %86, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [64 x i16], ptr %quantval48, i64 0, i64 1
  %87 = load i16, ptr %arrayidx49, align 2, !tbaa !85
  %conv50 = zext i16 %87 to i32
  store i32 %conv50, ptr %Q01, align 4, !tbaa !8
  %88 = load ptr, ptr %quanttbl, align 8, !tbaa !4
  %quantval51 = getelementptr inbounds %struct.JQUANT_TBL, ptr %88, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [64 x i16], ptr %quantval51, i64 0, i64 8
  %89 = load i16, ptr %arrayidx52, align 4, !tbaa !85
  %conv53 = zext i16 %89 to i32
  store i32 %conv53, ptr %Q10, align 4, !tbaa !8
  %90 = load ptr, ptr %quanttbl, align 8, !tbaa !4
  %quantval54 = getelementptr inbounds %struct.JQUANT_TBL, ptr %90, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [64 x i16], ptr %quantval54, i64 0, i64 16
  %91 = load i16, ptr %arrayidx55, align 4, !tbaa !85
  %conv56 = zext i16 %91 to i32
  store i32 %conv56, ptr %Q20, align 4, !tbaa !8
  %92 = load ptr, ptr %quanttbl, align 8, !tbaa !4
  %quantval57 = getelementptr inbounds %struct.JQUANT_TBL, ptr %92, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [64 x i16], ptr %quantval57, i64 0, i64 9
  %93 = load i16, ptr %arrayidx58, align 2, !tbaa !85
  %conv59 = zext i16 %93 to i32
  store i32 %conv59, ptr %Q11, align 4, !tbaa !8
  %94 = load ptr, ptr %quanttbl, align 8, !tbaa !4
  %quantval60 = getelementptr inbounds %struct.JQUANT_TBL, ptr %94, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [64 x i16], ptr %quantval60, i64 0, i64 2
  %95 = load i16, ptr %arrayidx61, align 4, !tbaa !85
  %conv62 = zext i16 %95 to i32
  store i32 %conv62, ptr %Q02, align 4, !tbaa !8
  %96 = load ptr, ptr %lossyd, align 8, !tbaa !4
  %inverse_DCT63 = getelementptr inbounds %struct.jpeg_lossy_d_codec, ptr %96, i32 0, i32 10
  %97 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom64 = sext i32 %97 to i64
  %arrayidx65 = getelementptr inbounds [10 x ptr], ptr %inverse_DCT63, i64 0, i64 %idxprom64
  %98 = load ptr, ptr %arrayidx65, align 8, !tbaa !4
  store ptr %98, ptr %inverse_DCT, align 8, !tbaa !4
  %99 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %100 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom66 = sext i32 %100 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %99, i64 %idxprom66
  %101 = load ptr, ptr %arrayidx67, align 8, !tbaa !4
  store ptr %101, ptr %output_ptr, align 8, !tbaa !4
  store i32 0, ptr %block_row, align 4, !tbaa !8
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc377, %if.end43
  %102 = load i32, ptr %block_row, align 4, !tbaa !8
  %103 = load i32, ptr %block_rows, align 4, !tbaa !8
  %cmp69 = icmp slt i32 %102, %103
  br i1 %cmp69, label %for.body71, label %for.end379

for.body71:                                       ; preds = %for.cond68
  %104 = load ptr, ptr %buffer, align 8, !tbaa !4
  %105 = load i32, ptr %block_row, align 4, !tbaa !8
  %idxprom72 = sext i32 %105 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %104, i64 %idxprom72
  %106 = load ptr, ptr %arrayidx73, align 8, !tbaa !4
  store ptr %106, ptr %buffer_ptr, align 8, !tbaa !4
  %107 = load i32, ptr %first_row, align 4, !tbaa !8
  %tobool74 = icmp ne i32 %107, 0
  br i1 %tobool74, label %land.lhs.true, label %if.else78

land.lhs.true:                                    ; preds = %for.body71
  %108 = load i32, ptr %block_row, align 4, !tbaa !8
  %cmp75 = icmp eq i32 %108, 0
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %land.lhs.true
  %109 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  store ptr %109, ptr %prev_block_row, align 8, !tbaa !4
  br label %if.end82

if.else78:                                        ; preds = %land.lhs.true, %for.body71
  %110 = load ptr, ptr %buffer, align 8, !tbaa !4
  %111 = load i32, ptr %block_row, align 4, !tbaa !8
  %sub79 = sub nsw i32 %111, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %110, i64 %idxprom80
  %112 = load ptr, ptr %arrayidx81, align 8, !tbaa !4
  store ptr %112, ptr %prev_block_row, align 8, !tbaa !4
  br label %if.end82

if.end82:                                         ; preds = %if.else78, %if.then77
  %113 = load i32, ptr %last_row, align 4, !tbaa !8
  %tobool83 = icmp ne i32 %113, 0
  br i1 %tobool83, label %land.lhs.true84, label %if.else89

land.lhs.true84:                                  ; preds = %if.end82
  %114 = load i32, ptr %block_row, align 4, !tbaa !8
  %115 = load i32, ptr %block_rows, align 4, !tbaa !8
  %sub85 = sub nsw i32 %115, 1
  %cmp86 = icmp eq i32 %114, %sub85
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %land.lhs.true84
  %116 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  store ptr %116, ptr %next_block_row, align 8, !tbaa !4
  br label %if.end93

if.else89:                                        ; preds = %land.lhs.true84, %if.end82
  %117 = load ptr, ptr %buffer, align 8, !tbaa !4
  %118 = load i32, ptr %block_row, align 4, !tbaa !8
  %add90 = add nsw i32 %118, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %117, i64 %idxprom91
  %119 = load ptr, ptr %arrayidx92, align 8, !tbaa !4
  store ptr %119, ptr %next_block_row, align 8, !tbaa !4
  br label %if.end93

if.end93:                                         ; preds = %if.else89, %if.then88
  %120 = load ptr, ptr %prev_block_row, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds [64 x i16], ptr %120, i64 0
  %arrayidx95 = getelementptr inbounds [64 x i16], ptr %arrayidx94, i64 0, i64 0
  %121 = load i16, ptr %arrayidx95, align 2, !tbaa !85
  %conv96 = sext i16 %121 to i32
  store i32 %conv96, ptr %DC3, align 4, !tbaa !8
  store i32 %conv96, ptr %DC2, align 4, !tbaa !8
  store i32 %conv96, ptr %DC1, align 4, !tbaa !8
  %122 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds [64 x i16], ptr %122, i64 0
  %arrayidx98 = getelementptr inbounds [64 x i16], ptr %arrayidx97, i64 0, i64 0
  %123 = load i16, ptr %arrayidx98, align 2, !tbaa !85
  %conv99 = sext i16 %123 to i32
  store i32 %conv99, ptr %DC6, align 4, !tbaa !8
  store i32 %conv99, ptr %DC5, align 4, !tbaa !8
  store i32 %conv99, ptr %DC4, align 4, !tbaa !8
  %124 = load ptr, ptr %next_block_row, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds [64 x i16], ptr %124, i64 0
  %arrayidx101 = getelementptr inbounds [64 x i16], ptr %arrayidx100, i64 0, i64 0
  %125 = load i16, ptr %arrayidx101, align 2, !tbaa !85
  %conv102 = sext i16 %125 to i32
  store i32 %conv102, ptr %DC9, align 4, !tbaa !8
  store i32 %conv102, ptr %DC8, align 4, !tbaa !8
  store i32 %conv102, ptr %DC7, align 4, !tbaa !8
  store i32 0, ptr %output_col, align 4, !tbaa !8
  %126 = load ptr, ptr %compptr, align 8, !tbaa !4
  %width_in_data_units = getelementptr inbounds %struct.jpeg_component_info, ptr %126, i32 0, i32 7
  %127 = load i32, ptr %width_in_data_units, align 4, !tbaa !31
  %sub103 = sub i32 %127, 1
  store i32 %sub103, ptr %last_block_column, align 4, !tbaa !8
  store i32 0, ptr %block_num, align 4, !tbaa !8
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc, %if.end93
  %128 = load i32, ptr %block_num, align 4, !tbaa !8
  %129 = load i32, ptr %last_block_column, align 4, !tbaa !8
  %cmp105 = icmp ule i32 %128, %129
  br i1 %cmp105, label %for.body107, label %for.end

for.body107:                                      ; preds = %for.cond104
  %130 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 0
  call void @gdcmjpeg12_jcopy_block_row(ptr noundef %130, ptr noundef %arraydecay, i32 noundef 1)
  %131 = load i32, ptr %block_num, align 4, !tbaa !8
  %132 = load i32, ptr %last_block_column, align 4, !tbaa !8
  %cmp108 = icmp ult i32 %131, %132
  br i1 %cmp108, label %if.then110, label %if.end120

if.then110:                                       ; preds = %for.body107
  %133 = load ptr, ptr %prev_block_row, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds [64 x i16], ptr %133, i64 1
  %arrayidx112 = getelementptr inbounds [64 x i16], ptr %arrayidx111, i64 0, i64 0
  %134 = load i16, ptr %arrayidx112, align 2, !tbaa !85
  %conv113 = sext i16 %134 to i32
  store i32 %conv113, ptr %DC3, align 4, !tbaa !8
  %135 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds [64 x i16], ptr %135, i64 1
  %arrayidx115 = getelementptr inbounds [64 x i16], ptr %arrayidx114, i64 0, i64 0
  %136 = load i16, ptr %arrayidx115, align 2, !tbaa !85
  %conv116 = sext i16 %136 to i32
  store i32 %conv116, ptr %DC6, align 4, !tbaa !8
  %137 = load ptr, ptr %next_block_row, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds [64 x i16], ptr %137, i64 1
  %arrayidx118 = getelementptr inbounds [64 x i16], ptr %arrayidx117, i64 0, i64 0
  %138 = load i16, ptr %arrayidx118, align 2, !tbaa !85
  %conv119 = sext i16 %138 to i32
  store i32 %conv119, ptr %DC9, align 4, !tbaa !8
  br label %if.end120

if.end120:                                        ; preds = %if.then110, %for.body107
  %139 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %arrayidx121 = getelementptr inbounds i32, ptr %139, i64 1
  %140 = load i32, ptr %arrayidx121, align 4, !tbaa !8
  store i32 %140, ptr %Al, align 4, !tbaa !8
  %cmp122 = icmp ne i32 %140, 0
  br i1 %cmp122, label %land.lhs.true124, label %if.end167

land.lhs.true124:                                 ; preds = %if.end120
  %arrayidx125 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 1
  %141 = load i16, ptr %arrayidx125, align 2, !tbaa !85
  %conv126 = sext i16 %141 to i32
  %cmp127 = icmp eq i32 %conv126, 0
  br i1 %cmp127, label %if.then129, label %if.end167

if.then129:                                       ; preds = %land.lhs.true124
  %142 = load i32, ptr %Q00, align 4, !tbaa !8
  %mul130 = mul nsw i32 36, %142
  %143 = load i32, ptr %DC4, align 4, !tbaa !8
  %144 = load i32, ptr %DC6, align 4, !tbaa !8
  %sub131 = sub nsw i32 %143, %144
  %mul132 = mul nsw i32 %mul130, %sub131
  store i32 %mul132, ptr %num, align 4, !tbaa !8
  %145 = load i32, ptr %num, align 4, !tbaa !8
  %cmp133 = icmp sge i32 %145, 0
  br i1 %cmp133, label %if.then135, label %if.else148

if.then135:                                       ; preds = %if.then129
  %146 = load i32, ptr %Q01, align 4, !tbaa !8
  %shl = shl i32 %146, 7
  %147 = load i32, ptr %num, align 4, !tbaa !8
  %add136 = add nsw i32 %shl, %147
  %148 = load i32, ptr %Q01, align 4, !tbaa !8
  %shl137 = shl i32 %148, 8
  %div = sdiv i32 %add136, %shl137
  store i32 %div, ptr %pred, align 4, !tbaa !8
  %149 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp138 = icmp sgt i32 %149, 0
  br i1 %cmp138, label %land.lhs.true140, label %if.end147

land.lhs.true140:                                 ; preds = %if.then135
  %150 = load i32, ptr %pred, align 4, !tbaa !8
  %151 = load i32, ptr %Al, align 4, !tbaa !8
  %shl141 = shl i32 1, %151
  %cmp142 = icmp sge i32 %150, %shl141
  br i1 %cmp142, label %if.then144, label %if.end147

if.then144:                                       ; preds = %land.lhs.true140
  %152 = load i32, ptr %Al, align 4, !tbaa !8
  %shl145 = shl i32 1, %152
  %sub146 = sub nsw i32 %shl145, 1
  store i32 %sub146, ptr %pred, align 4, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %land.lhs.true140, %if.then135
  br label %if.end164

if.else148:                                       ; preds = %if.then129
  %153 = load i32, ptr %Q01, align 4, !tbaa !8
  %shl149 = shl i32 %153, 7
  %154 = load i32, ptr %num, align 4, !tbaa !8
  %sub150 = sub nsw i32 %shl149, %154
  %155 = load i32, ptr %Q01, align 4, !tbaa !8
  %shl151 = shl i32 %155, 8
  %div152 = sdiv i32 %sub150, %shl151
  store i32 %div152, ptr %pred, align 4, !tbaa !8
  %156 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp153 = icmp sgt i32 %156, 0
  br i1 %cmp153, label %land.lhs.true155, label %if.end162

land.lhs.true155:                                 ; preds = %if.else148
  %157 = load i32, ptr %pred, align 4, !tbaa !8
  %158 = load i32, ptr %Al, align 4, !tbaa !8
  %shl156 = shl i32 1, %158
  %cmp157 = icmp sge i32 %157, %shl156
  br i1 %cmp157, label %if.then159, label %if.end162

if.then159:                                       ; preds = %land.lhs.true155
  %159 = load i32, ptr %Al, align 4, !tbaa !8
  %shl160 = shl i32 1, %159
  %sub161 = sub nsw i32 %shl160, 1
  store i32 %sub161, ptr %pred, align 4, !tbaa !8
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %land.lhs.true155, %if.else148
  %160 = load i32, ptr %pred, align 4, !tbaa !8
  %sub163 = sub nsw i32 0, %160
  store i32 %sub163, ptr %pred, align 4, !tbaa !8
  br label %if.end164

if.end164:                                        ; preds = %if.end162, %if.end147
  %161 = load i32, ptr %pred, align 4, !tbaa !8
  %conv165 = trunc i32 %161 to i16
  %arrayidx166 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 1
  store i16 %conv165, ptr %arrayidx166, align 2, !tbaa !85
  br label %if.end167

if.end167:                                        ; preds = %if.end164, %land.lhs.true124, %if.end120
  %162 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %arrayidx168 = getelementptr inbounds i32, ptr %162, i64 2
  %163 = load i32, ptr %arrayidx168, align 4, !tbaa !8
  store i32 %163, ptr %Al, align 4, !tbaa !8
  %cmp169 = icmp ne i32 %163, 0
  br i1 %cmp169, label %land.lhs.true171, label %if.end216

land.lhs.true171:                                 ; preds = %if.end167
  %arrayidx172 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 8
  %164 = load i16, ptr %arrayidx172, align 16, !tbaa !85
  %conv173 = sext i16 %164 to i32
  %cmp174 = icmp eq i32 %conv173, 0
  br i1 %cmp174, label %if.then176, label %if.end216

if.then176:                                       ; preds = %land.lhs.true171
  %165 = load i32, ptr %Q00, align 4, !tbaa !8
  %mul177 = mul nsw i32 36, %165
  %166 = load i32, ptr %DC2, align 4, !tbaa !8
  %167 = load i32, ptr %DC8, align 4, !tbaa !8
  %sub178 = sub nsw i32 %166, %167
  %mul179 = mul nsw i32 %mul177, %sub178
  store i32 %mul179, ptr %num, align 4, !tbaa !8
  %168 = load i32, ptr %num, align 4, !tbaa !8
  %cmp180 = icmp sge i32 %168, 0
  br i1 %cmp180, label %if.then182, label %if.else197

if.then182:                                       ; preds = %if.then176
  %169 = load i32, ptr %Q10, align 4, !tbaa !8
  %shl183 = shl i32 %169, 7
  %170 = load i32, ptr %num, align 4, !tbaa !8
  %add184 = add nsw i32 %shl183, %170
  %171 = load i32, ptr %Q10, align 4, !tbaa !8
  %shl185 = shl i32 %171, 8
  %div186 = sdiv i32 %add184, %shl185
  store i32 %div186, ptr %pred, align 4, !tbaa !8
  %172 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp187 = icmp sgt i32 %172, 0
  br i1 %cmp187, label %land.lhs.true189, label %if.end196

land.lhs.true189:                                 ; preds = %if.then182
  %173 = load i32, ptr %pred, align 4, !tbaa !8
  %174 = load i32, ptr %Al, align 4, !tbaa !8
  %shl190 = shl i32 1, %174
  %cmp191 = icmp sge i32 %173, %shl190
  br i1 %cmp191, label %if.then193, label %if.end196

if.then193:                                       ; preds = %land.lhs.true189
  %175 = load i32, ptr %Al, align 4, !tbaa !8
  %shl194 = shl i32 1, %175
  %sub195 = sub nsw i32 %shl194, 1
  store i32 %sub195, ptr %pred, align 4, !tbaa !8
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %land.lhs.true189, %if.then182
  br label %if.end213

if.else197:                                       ; preds = %if.then176
  %176 = load i32, ptr %Q10, align 4, !tbaa !8
  %shl198 = shl i32 %176, 7
  %177 = load i32, ptr %num, align 4, !tbaa !8
  %sub199 = sub nsw i32 %shl198, %177
  %178 = load i32, ptr %Q10, align 4, !tbaa !8
  %shl200 = shl i32 %178, 8
  %div201 = sdiv i32 %sub199, %shl200
  store i32 %div201, ptr %pred, align 4, !tbaa !8
  %179 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp202 = icmp sgt i32 %179, 0
  br i1 %cmp202, label %land.lhs.true204, label %if.end211

land.lhs.true204:                                 ; preds = %if.else197
  %180 = load i32, ptr %pred, align 4, !tbaa !8
  %181 = load i32, ptr %Al, align 4, !tbaa !8
  %shl205 = shl i32 1, %181
  %cmp206 = icmp sge i32 %180, %shl205
  br i1 %cmp206, label %if.then208, label %if.end211

if.then208:                                       ; preds = %land.lhs.true204
  %182 = load i32, ptr %Al, align 4, !tbaa !8
  %shl209 = shl i32 1, %182
  %sub210 = sub nsw i32 %shl209, 1
  store i32 %sub210, ptr %pred, align 4, !tbaa !8
  br label %if.end211

if.end211:                                        ; preds = %if.then208, %land.lhs.true204, %if.else197
  %183 = load i32, ptr %pred, align 4, !tbaa !8
  %sub212 = sub nsw i32 0, %183
  store i32 %sub212, ptr %pred, align 4, !tbaa !8
  br label %if.end213

if.end213:                                        ; preds = %if.end211, %if.end196
  %184 = load i32, ptr %pred, align 4, !tbaa !8
  %conv214 = trunc i32 %184 to i16
  %arrayidx215 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 8
  store i16 %conv214, ptr %arrayidx215, align 16, !tbaa !85
  br label %if.end216

if.end216:                                        ; preds = %if.end213, %land.lhs.true171, %if.end167
  %185 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %arrayidx217 = getelementptr inbounds i32, ptr %185, i64 3
  %186 = load i32, ptr %arrayidx217, align 4, !tbaa !8
  store i32 %186, ptr %Al, align 4, !tbaa !8
  %cmp218 = icmp ne i32 %186, 0
  br i1 %cmp218, label %land.lhs.true220, label %if.end267

land.lhs.true220:                                 ; preds = %if.end216
  %arrayidx221 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 16
  %187 = load i16, ptr %arrayidx221, align 16, !tbaa !85
  %conv222 = sext i16 %187 to i32
  %cmp223 = icmp eq i32 %conv222, 0
  br i1 %cmp223, label %if.then225, label %if.end267

if.then225:                                       ; preds = %land.lhs.true220
  %188 = load i32, ptr %Q00, align 4, !tbaa !8
  %mul226 = mul nsw i32 9, %188
  %189 = load i32, ptr %DC2, align 4, !tbaa !8
  %190 = load i32, ptr %DC8, align 4, !tbaa !8
  %add227 = add nsw i32 %189, %190
  %191 = load i32, ptr %DC5, align 4, !tbaa !8
  %mul228 = mul nsw i32 2, %191
  %sub229 = sub nsw i32 %add227, %mul228
  %mul230 = mul nsw i32 %mul226, %sub229
  store i32 %mul230, ptr %num, align 4, !tbaa !8
  %192 = load i32, ptr %num, align 4, !tbaa !8
  %cmp231 = icmp sge i32 %192, 0
  br i1 %cmp231, label %if.then233, label %if.else248

if.then233:                                       ; preds = %if.then225
  %193 = load i32, ptr %Q20, align 4, !tbaa !8
  %shl234 = shl i32 %193, 7
  %194 = load i32, ptr %num, align 4, !tbaa !8
  %add235 = add nsw i32 %shl234, %194
  %195 = load i32, ptr %Q20, align 4, !tbaa !8
  %shl236 = shl i32 %195, 8
  %div237 = sdiv i32 %add235, %shl236
  store i32 %div237, ptr %pred, align 4, !tbaa !8
  %196 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp238 = icmp sgt i32 %196, 0
  br i1 %cmp238, label %land.lhs.true240, label %if.end247

land.lhs.true240:                                 ; preds = %if.then233
  %197 = load i32, ptr %pred, align 4, !tbaa !8
  %198 = load i32, ptr %Al, align 4, !tbaa !8
  %shl241 = shl i32 1, %198
  %cmp242 = icmp sge i32 %197, %shl241
  br i1 %cmp242, label %if.then244, label %if.end247

if.then244:                                       ; preds = %land.lhs.true240
  %199 = load i32, ptr %Al, align 4, !tbaa !8
  %shl245 = shl i32 1, %199
  %sub246 = sub nsw i32 %shl245, 1
  store i32 %sub246, ptr %pred, align 4, !tbaa !8
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %land.lhs.true240, %if.then233
  br label %if.end264

if.else248:                                       ; preds = %if.then225
  %200 = load i32, ptr %Q20, align 4, !tbaa !8
  %shl249 = shl i32 %200, 7
  %201 = load i32, ptr %num, align 4, !tbaa !8
  %sub250 = sub nsw i32 %shl249, %201
  %202 = load i32, ptr %Q20, align 4, !tbaa !8
  %shl251 = shl i32 %202, 8
  %div252 = sdiv i32 %sub250, %shl251
  store i32 %div252, ptr %pred, align 4, !tbaa !8
  %203 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp253 = icmp sgt i32 %203, 0
  br i1 %cmp253, label %land.lhs.true255, label %if.end262

land.lhs.true255:                                 ; preds = %if.else248
  %204 = load i32, ptr %pred, align 4, !tbaa !8
  %205 = load i32, ptr %Al, align 4, !tbaa !8
  %shl256 = shl i32 1, %205
  %cmp257 = icmp sge i32 %204, %shl256
  br i1 %cmp257, label %if.then259, label %if.end262

if.then259:                                       ; preds = %land.lhs.true255
  %206 = load i32, ptr %Al, align 4, !tbaa !8
  %shl260 = shl i32 1, %206
  %sub261 = sub nsw i32 %shl260, 1
  store i32 %sub261, ptr %pred, align 4, !tbaa !8
  br label %if.end262

if.end262:                                        ; preds = %if.then259, %land.lhs.true255, %if.else248
  %207 = load i32, ptr %pred, align 4, !tbaa !8
  %sub263 = sub nsw i32 0, %207
  store i32 %sub263, ptr %pred, align 4, !tbaa !8
  br label %if.end264

if.end264:                                        ; preds = %if.end262, %if.end247
  %208 = load i32, ptr %pred, align 4, !tbaa !8
  %conv265 = trunc i32 %208 to i16
  %arrayidx266 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 16
  store i16 %conv265, ptr %arrayidx266, align 16, !tbaa !85
  br label %if.end267

if.end267:                                        ; preds = %if.end264, %land.lhs.true220, %if.end216
  %209 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %arrayidx268 = getelementptr inbounds i32, ptr %209, i64 4
  %210 = load i32, ptr %arrayidx268, align 4, !tbaa !8
  store i32 %210, ptr %Al, align 4, !tbaa !8
  %cmp269 = icmp ne i32 %210, 0
  br i1 %cmp269, label %land.lhs.true271, label %if.end318

land.lhs.true271:                                 ; preds = %if.end267
  %arrayidx272 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 9
  %211 = load i16, ptr %arrayidx272, align 2, !tbaa !85
  %conv273 = sext i16 %211 to i32
  %cmp274 = icmp eq i32 %conv273, 0
  br i1 %cmp274, label %if.then276, label %if.end318

if.then276:                                       ; preds = %land.lhs.true271
  %212 = load i32, ptr %Q00, align 4, !tbaa !8
  %mul277 = mul nsw i32 5, %212
  %213 = load i32, ptr %DC1, align 4, !tbaa !8
  %214 = load i32, ptr %DC3, align 4, !tbaa !8
  %sub278 = sub nsw i32 %213, %214
  %215 = load i32, ptr %DC7, align 4, !tbaa !8
  %sub279 = sub nsw i32 %sub278, %215
  %216 = load i32, ptr %DC9, align 4, !tbaa !8
  %add280 = add nsw i32 %sub279, %216
  %mul281 = mul nsw i32 %mul277, %add280
  store i32 %mul281, ptr %num, align 4, !tbaa !8
  %217 = load i32, ptr %num, align 4, !tbaa !8
  %cmp282 = icmp sge i32 %217, 0
  br i1 %cmp282, label %if.then284, label %if.else299

if.then284:                                       ; preds = %if.then276
  %218 = load i32, ptr %Q11, align 4, !tbaa !8
  %shl285 = shl i32 %218, 7
  %219 = load i32, ptr %num, align 4, !tbaa !8
  %add286 = add nsw i32 %shl285, %219
  %220 = load i32, ptr %Q11, align 4, !tbaa !8
  %shl287 = shl i32 %220, 8
  %div288 = sdiv i32 %add286, %shl287
  store i32 %div288, ptr %pred, align 4, !tbaa !8
  %221 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp289 = icmp sgt i32 %221, 0
  br i1 %cmp289, label %land.lhs.true291, label %if.end298

land.lhs.true291:                                 ; preds = %if.then284
  %222 = load i32, ptr %pred, align 4, !tbaa !8
  %223 = load i32, ptr %Al, align 4, !tbaa !8
  %shl292 = shl i32 1, %223
  %cmp293 = icmp sge i32 %222, %shl292
  br i1 %cmp293, label %if.then295, label %if.end298

if.then295:                                       ; preds = %land.lhs.true291
  %224 = load i32, ptr %Al, align 4, !tbaa !8
  %shl296 = shl i32 1, %224
  %sub297 = sub nsw i32 %shl296, 1
  store i32 %sub297, ptr %pred, align 4, !tbaa !8
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %land.lhs.true291, %if.then284
  br label %if.end315

if.else299:                                       ; preds = %if.then276
  %225 = load i32, ptr %Q11, align 4, !tbaa !8
  %shl300 = shl i32 %225, 7
  %226 = load i32, ptr %num, align 4, !tbaa !8
  %sub301 = sub nsw i32 %shl300, %226
  %227 = load i32, ptr %Q11, align 4, !tbaa !8
  %shl302 = shl i32 %227, 8
  %div303 = sdiv i32 %sub301, %shl302
  store i32 %div303, ptr %pred, align 4, !tbaa !8
  %228 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp304 = icmp sgt i32 %228, 0
  br i1 %cmp304, label %land.lhs.true306, label %if.end313

land.lhs.true306:                                 ; preds = %if.else299
  %229 = load i32, ptr %pred, align 4, !tbaa !8
  %230 = load i32, ptr %Al, align 4, !tbaa !8
  %shl307 = shl i32 1, %230
  %cmp308 = icmp sge i32 %229, %shl307
  br i1 %cmp308, label %if.then310, label %if.end313

if.then310:                                       ; preds = %land.lhs.true306
  %231 = load i32, ptr %Al, align 4, !tbaa !8
  %shl311 = shl i32 1, %231
  %sub312 = sub nsw i32 %shl311, 1
  store i32 %sub312, ptr %pred, align 4, !tbaa !8
  br label %if.end313

if.end313:                                        ; preds = %if.then310, %land.lhs.true306, %if.else299
  %232 = load i32, ptr %pred, align 4, !tbaa !8
  %sub314 = sub nsw i32 0, %232
  store i32 %sub314, ptr %pred, align 4, !tbaa !8
  br label %if.end315

if.end315:                                        ; preds = %if.end313, %if.end298
  %233 = load i32, ptr %pred, align 4, !tbaa !8
  %conv316 = trunc i32 %233 to i16
  %arrayidx317 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 9
  store i16 %conv316, ptr %arrayidx317, align 2, !tbaa !85
  br label %if.end318

if.end318:                                        ; preds = %if.end315, %land.lhs.true271, %if.end267
  %234 = load ptr, ptr %coef_bits, align 8, !tbaa !4
  %arrayidx319 = getelementptr inbounds i32, ptr %234, i64 5
  %235 = load i32, ptr %arrayidx319, align 4, !tbaa !8
  store i32 %235, ptr %Al, align 4, !tbaa !8
  %cmp320 = icmp ne i32 %235, 0
  br i1 %cmp320, label %land.lhs.true322, label %if.end369

land.lhs.true322:                                 ; preds = %if.end318
  %arrayidx323 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 2
  %236 = load i16, ptr %arrayidx323, align 4, !tbaa !85
  %conv324 = sext i16 %236 to i32
  %cmp325 = icmp eq i32 %conv324, 0
  br i1 %cmp325, label %if.then327, label %if.end369

if.then327:                                       ; preds = %land.lhs.true322
  %237 = load i32, ptr %Q00, align 4, !tbaa !8
  %mul328 = mul nsw i32 9, %237
  %238 = load i32, ptr %DC4, align 4, !tbaa !8
  %239 = load i32, ptr %DC6, align 4, !tbaa !8
  %add329 = add nsw i32 %238, %239
  %240 = load i32, ptr %DC5, align 4, !tbaa !8
  %mul330 = mul nsw i32 2, %240
  %sub331 = sub nsw i32 %add329, %mul330
  %mul332 = mul nsw i32 %mul328, %sub331
  store i32 %mul332, ptr %num, align 4, !tbaa !8
  %241 = load i32, ptr %num, align 4, !tbaa !8
  %cmp333 = icmp sge i32 %241, 0
  br i1 %cmp333, label %if.then335, label %if.else350

if.then335:                                       ; preds = %if.then327
  %242 = load i32, ptr %Q02, align 4, !tbaa !8
  %shl336 = shl i32 %242, 7
  %243 = load i32, ptr %num, align 4, !tbaa !8
  %add337 = add nsw i32 %shl336, %243
  %244 = load i32, ptr %Q02, align 4, !tbaa !8
  %shl338 = shl i32 %244, 8
  %div339 = sdiv i32 %add337, %shl338
  store i32 %div339, ptr %pred, align 4, !tbaa !8
  %245 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp340 = icmp sgt i32 %245, 0
  br i1 %cmp340, label %land.lhs.true342, label %if.end349

land.lhs.true342:                                 ; preds = %if.then335
  %246 = load i32, ptr %pred, align 4, !tbaa !8
  %247 = load i32, ptr %Al, align 4, !tbaa !8
  %shl343 = shl i32 1, %247
  %cmp344 = icmp sge i32 %246, %shl343
  br i1 %cmp344, label %if.then346, label %if.end349

if.then346:                                       ; preds = %land.lhs.true342
  %248 = load i32, ptr %Al, align 4, !tbaa !8
  %shl347 = shl i32 1, %248
  %sub348 = sub nsw i32 %shl347, 1
  store i32 %sub348, ptr %pred, align 4, !tbaa !8
  br label %if.end349

if.end349:                                        ; preds = %if.then346, %land.lhs.true342, %if.then335
  br label %if.end366

if.else350:                                       ; preds = %if.then327
  %249 = load i32, ptr %Q02, align 4, !tbaa !8
  %shl351 = shl i32 %249, 7
  %250 = load i32, ptr %num, align 4, !tbaa !8
  %sub352 = sub nsw i32 %shl351, %250
  %251 = load i32, ptr %Q02, align 4, !tbaa !8
  %shl353 = shl i32 %251, 8
  %div354 = sdiv i32 %sub352, %shl353
  store i32 %div354, ptr %pred, align 4, !tbaa !8
  %252 = load i32, ptr %Al, align 4, !tbaa !8
  %cmp355 = icmp sgt i32 %252, 0
  br i1 %cmp355, label %land.lhs.true357, label %if.end364

land.lhs.true357:                                 ; preds = %if.else350
  %253 = load i32, ptr %pred, align 4, !tbaa !8
  %254 = load i32, ptr %Al, align 4, !tbaa !8
  %shl358 = shl i32 1, %254
  %cmp359 = icmp sge i32 %253, %shl358
  br i1 %cmp359, label %if.then361, label %if.end364

if.then361:                                       ; preds = %land.lhs.true357
  %255 = load i32, ptr %Al, align 4, !tbaa !8
  %shl362 = shl i32 1, %255
  %sub363 = sub nsw i32 %shl362, 1
  store i32 %sub363, ptr %pred, align 4, !tbaa !8
  br label %if.end364

if.end364:                                        ; preds = %if.then361, %land.lhs.true357, %if.else350
  %256 = load i32, ptr %pred, align 4, !tbaa !8
  %sub365 = sub nsw i32 0, %256
  store i32 %sub365, ptr %pred, align 4, !tbaa !8
  br label %if.end366

if.end366:                                        ; preds = %if.end364, %if.end349
  %257 = load i32, ptr %pred, align 4, !tbaa !8
  %conv367 = trunc i32 %257 to i16
  %arrayidx368 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 2
  store i16 %conv367, ptr %arrayidx368, align 4, !tbaa !85
  br label %if.end369

if.end369:                                        ; preds = %if.end366, %land.lhs.true322, %if.end318
  %258 = load ptr, ptr %inverse_DCT, align 8, !tbaa !4
  %259 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %260 = load ptr, ptr %compptr, align 8, !tbaa !4
  %arraydecay370 = getelementptr inbounds [64 x i16], ptr %workspace, i64 0, i64 0
  %261 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %262 = load i32, ptr %output_col, align 4, !tbaa !8
  call void %258(ptr noundef %259, ptr noundef %260, ptr noundef %arraydecay370, ptr noundef %261, i32 noundef %262)
  %263 = load i32, ptr %DC2, align 4, !tbaa !8
  store i32 %263, ptr %DC1, align 4, !tbaa !8
  %264 = load i32, ptr %DC3, align 4, !tbaa !8
  store i32 %264, ptr %DC2, align 4, !tbaa !8
  %265 = load i32, ptr %DC5, align 4, !tbaa !8
  store i32 %265, ptr %DC4, align 4, !tbaa !8
  %266 = load i32, ptr %DC6, align 4, !tbaa !8
  store i32 %266, ptr %DC5, align 4, !tbaa !8
  %267 = load i32, ptr %DC8, align 4, !tbaa !8
  store i32 %267, ptr %DC7, align 4, !tbaa !8
  %268 = load i32, ptr %DC9, align 4, !tbaa !8
  store i32 %268, ptr %DC8, align 4, !tbaa !8
  %269 = load ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds [64 x i16], ptr %269, i32 1
  store ptr %incdec.ptr, ptr %buffer_ptr, align 8, !tbaa !4
  %270 = load ptr, ptr %prev_block_row, align 8, !tbaa !4
  %incdec.ptr371 = getelementptr inbounds [64 x i16], ptr %270, i32 1
  store ptr %incdec.ptr371, ptr %prev_block_row, align 8, !tbaa !4
  %271 = load ptr, ptr %next_block_row, align 8, !tbaa !4
  %incdec.ptr372 = getelementptr inbounds [64 x i16], ptr %271, i32 1
  store ptr %incdec.ptr372, ptr %next_block_row, align 8, !tbaa !4
  %272 = load ptr, ptr %compptr, align 8, !tbaa !4
  %codec_data_unit = getelementptr inbounds %struct.jpeg_component_info, ptr %272, i32 0, i32 9
  %273 = load i32, ptr %codec_data_unit, align 4, !tbaa !69
  %274 = load i32, ptr %output_col, align 4, !tbaa !8
  %add373 = add i32 %274, %273
  store i32 %add373, ptr %output_col, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end369
  %275 = load i32, ptr %block_num, align 4, !tbaa !8
  %inc = add i32 %275, 1
  store i32 %inc, ptr %block_num, align 4, !tbaa !8
  br label %for.cond104, !llvm.loop !91

for.end:                                          ; preds = %for.cond104
  %276 = load ptr, ptr %compptr, align 8, !tbaa !4
  %codec_data_unit374 = getelementptr inbounds %struct.jpeg_component_info, ptr %276, i32 0, i32 9
  %277 = load i32, ptr %codec_data_unit374, align 4, !tbaa !69
  %278 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %idx.ext375 = sext i32 %277 to i64
  %add.ptr376 = getelementptr inbounds ptr, ptr %278, i64 %idx.ext375
  store ptr %add.ptr376, ptr %output_ptr, align 8, !tbaa !4
  br label %for.inc377

for.inc377:                                       ; preds = %for.end
  %279 = load i32, ptr %block_row, align 4, !tbaa !8
  %inc378 = add nsw i32 %279, 1
  store i32 %inc378, ptr %block_row, align 4, !tbaa !8
  br label %for.cond68, !llvm.loop !92

for.end379:                                       ; preds = %for.cond68
  br label %for.inc380

for.inc380:                                       ; preds = %for.end379, %if.then14
  %280 = load i32, ptr %ci, align 4, !tbaa !8
  %inc381 = add nsw i32 %280, 1
  store i32 %inc381, ptr %ci, align 4, !tbaa !8
  %281 = load ptr, ptr %compptr, align 8, !tbaa !4
  %incdec.ptr382 = getelementptr inbounds %struct.jpeg_component_info, ptr %281, i32 1
  store ptr %incdec.ptr382, ptr %compptr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !93

for.end383:                                       ; preds = %for.cond
  %282 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_iMCU_row384 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %282, i32 0, i32 38
  %283 = load i32, ptr %output_iMCU_row384, align 8, !tbaa !43
  %inc385 = add i32 %283, 1
  store i32 %inc385, ptr %output_iMCU_row384, align 8, !tbaa !43
  %284 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %total_iMCU_rows386 = getelementptr inbounds %struct.gdcmjpeg12_decompress_struct, ptr %284, i32 0, i32 65
  %285 = load i32, ptr %total_iMCU_rows386, align 4, !tbaa !60
  %cmp387 = icmp ult i32 %inc385, %285
  br i1 %cmp387, label %if.then389, label %if.end390

if.then389:                                       ; preds = %for.end383
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup391

if.end390:                                        ; preds = %for.end383
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup391

cleanup391:                                       ; preds = %if.end390, %if.then389, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %pred) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %Al) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q20) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q02) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q01) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %Q00) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %quanttbl) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef_bits) #3
  call void @llvm.lifetime.end.p0(i64 128, ptr %workspace) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_row) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %inverse_DCT) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %compptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_col) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_block_row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_block_row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_rows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_rows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_row) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_block_column) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %block_num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_iMCU_row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %coef) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lossyd) #3
  %286 = load i32, ptr %retval, align 4
  ret i32 %286

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @gdcmjpeg12_jcopy_block_row(ptr noundef, ptr noundef, i32 noundef) #2

declare void @gdcmjpeg12_jzero_far(ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = !{!11, !5, i64 560}
!11 = !{!"gdcmjpeg12_decompress_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !5, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 60, !6, i64 64, !9, i64 68, !9, i64 72, !12, i64 80, !9, i64 88, !9, i64 92, !6, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !6, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !5, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !5, i64 192, !6, i64 200, !6, i64 232, !6, i64 264, !9, i64 296, !5, i64 304, !9, i64 312, !6, i64 316, !6, i64 332, !6, i64 348, !9, i64 364, !9, i64 368, !6, i64 372, !6, i64 373, !6, i64 374, !13, i64 376, !13, i64 378, !9, i64 380, !6, i64 384, !9, i64 388, !5, i64 392, !9, i64 400, !6, i64 404, !9, i64 408, !9, i64 412, !9, i64 416, !9, i64 420, !5, i64 424, !9, i64 432, !6, i64 440, !9, i64 472, !9, i64 476, !9, i64 480, !6, i64 484, !9, i64 524, !9, i64 528, !9, i64 532, !9, i64 536, !9, i64 540, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608}
!12 = !{!"double", !6, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!11, !5, i64 8}
!15 = !{!16, !5, i64 0}
!16 = !{!"gdcmjpeg12_memory_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !17, i64 96, !17, i64 104}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !5, i64 64}
!19 = !{!"", !20, i64 0, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !5, i64 96, !5, i64 104, !6, i64 112, !5, i64 192}
!20 = !{!"jpeg_d_codec", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!21 = !{!19, !5, i64 40}
!22 = !{!19, !5, i64 48}
!23 = !{!24, !5, i64 176}
!24 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !6, i64 16, !6, i64 96, !5, i64 176}
!25 = !{!11, !5, i64 304}
!26 = !{!11, !9, i64 56}
!27 = !{!28, !9, i64 12}
!28 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !5, i64 80, !5, i64 88}
!29 = !{!11, !6, i64 404}
!30 = !{!16, !5, i64 48}
!31 = !{!28, !9, i64 28}
!32 = !{!28, !9, i64 8}
!33 = !{!28, !9, i64 32}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!19, !5, i64 16}
!37 = !{!19, !5, i64 32}
!38 = !{!19, !5, i64 56}
!39 = !{!16, !5, i64 8}
!40 = distinct !{!40, !35}
!41 = !{!11, !9, i64 176}
!42 = !{!11, !9, i64 104}
!43 = !{!11, !9, i64 184}
!44 = !{!11, !9, i64 432}
!45 = !{!16, !5, i64 72}
!46 = !{!28, !9, i64 4}
!47 = distinct !{!47, !35}
!48 = !{!24, !9, i64 4}
!49 = !{!24, !9, i64 8}
!50 = !{!24, !9, i64 0}
!51 = !{!11, !9, i64 472}
!52 = !{!28, !9, i64 52}
!53 = !{!28, !9, i64 56}
!54 = distinct !{!54, !35}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = !{!19, !5, i64 80}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = !{!11, !9, i64 420}
!61 = !{!11, !5, i64 576}
!62 = !{!63, !5, i64 24}
!63 = !{!"jpeg_input_controller", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36}
!64 = !{!11, !9, i64 172}
!65 = !{!11, !9, i64 180}
!66 = !{!63, !5, i64 0}
!67 = distinct !{!67, !35}
!68 = !{!28, !9, i64 48}
!69 = !{!28, !9, i64 36}
!70 = distinct !{!70, !35}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !35}
!73 = !{!11, !9, i64 480}
!74 = !{!28, !9, i64 60}
!75 = !{!28, !9, i64 68}
!76 = !{!28, !9, i64 64}
!77 = !{!28, !9, i64 72}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = distinct !{!80, !35}
!81 = distinct !{!81, !35}
!82 = distinct !{!82, !35}
!83 = !{!11, !5, i64 192}
!84 = !{!28, !5, i64 80}
!85 = !{!13, !13, i64 0}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !35}
!88 = !{!63, !9, i64 36}
!89 = !{!11, !9, i64 524}
!90 = distinct !{!90, !35}
!91 = distinct !{!91, !35}
!92 = distinct !{!92, !35}
!93 = distinct !{!93, !35}

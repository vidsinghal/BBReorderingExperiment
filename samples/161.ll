; ModuleID = 'samples/161.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/jdpostct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdcmjpeg16_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gdcmjpeg16_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64 }
%struct.my_post_controller = type { %struct.jpeg_d_post_controller, ptr, ptr, i32, i32, i32 }
%struct.jpeg_d_post_controller = type { ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.gdcmjpeg16_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jinit_d_post_controller(ptr noundef %cinfo, i32 noundef %need_full_buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %need_full_buffer.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %need_full_buffer, ptr %need_full_buffer.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %post) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8, !tbaa !10
  %alloc_small = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8, !tbaa !14
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 48)
  store ptr %call, ptr %post, align 8, !tbaa !4
  %4 = load ptr, ptr %post, align 8, !tbaa !4
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %post1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %5, i32 0, i32 81
  store ptr %4, ptr %post1, align 8, !tbaa !17
  %6 = load ptr, ptr %post, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.my_post_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub, i32 0, i32 0
  store ptr @start_pass_dpost, ptr %start_pass, align 8, !tbaa !18
  %7 = load ptr, ptr %post, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %7, i32 0, i32 1
  store ptr null, ptr %whole_image, align 8, !tbaa !21
  %8 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %8, i32 0, i32 2
  store ptr null, ptr %buffer, align 8, !tbaa !22
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %quantize_colors = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %9, i32 0, i32 20
  %10 = load i32, ptr %quantize_colors, align 4, !tbaa !23
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %max_v_samp_factor = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %11, i32 0, i32 63
  %12 = load i32, ptr %max_v_samp_factor, align 4, !tbaa !24
  %13 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %13, i32 0, i32 3
  store i32 %12, ptr %strip_height, align 8, !tbaa !25
  %14 = load i32, ptr %need_full_buffer.addr, align 4, !tbaa !8
  %tobool2 = icmp ne i32 %14, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem4 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %mem4, align 8, !tbaa !10
  %request_virt_sarray = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %request_virt_sarray, align 8, !tbaa !26
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %19, i32 0, i32 27
  %20 = load i32, ptr %output_width, align 8, !tbaa !27
  %21 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %21, i32 0, i32 29
  %22 = load i32, ptr %out_color_components, align 8, !tbaa !28
  %mul = mul i32 %20, %22
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_height = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %23, i32 0, i32 28
  %24 = load i32, ptr %output_height, align 4, !tbaa !29
  %conv = zext i32 %24 to i64
  %25 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height5 = getelementptr inbounds %struct.my_post_controller, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %strip_height5, align 8, !tbaa !25
  %conv6 = zext i32 %26 to i64
  %call7 = call i64 @gdcmjpeg16_jround_up(i64 noundef %conv, i64 noundef %conv6)
  %conv8 = trunc i64 %call7 to i32
  %27 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height9 = getelementptr inbounds %struct.my_post_controller, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %strip_height9, align 8, !tbaa !25
  %call10 = call ptr %17(ptr noundef %18, i32 noundef 1, i32 noundef 0, i32 noundef %mul, i32 noundef %conv8, i32 noundef %28)
  %29 = load ptr, ptr %post, align 8, !tbaa !4
  %whole_image11 = getelementptr inbounds %struct.my_post_controller, ptr %29, i32 0, i32 1
  store ptr %call10, ptr %whole_image11, align 8, !tbaa !21
  br label %if.end

if.else:                                          ; preds = %if.then
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem12 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %mem12, align 8, !tbaa !10
  %alloc_sarray = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %alloc_sarray, align 8, !tbaa !30
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width13 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %34, i32 0, i32 27
  %35 = load i32, ptr %output_width13, align 8, !tbaa !27
  %36 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components14 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %36, i32 0, i32 29
  %37 = load i32, ptr %out_color_components14, align 8, !tbaa !28
  %mul15 = mul i32 %35, %37
  %38 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height16 = getelementptr inbounds %struct.my_post_controller, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %strip_height16, align 8, !tbaa !25
  %call17 = call ptr %32(ptr noundef %33, i32 noundef 1, i32 noundef %mul15, i32 noundef %39)
  %40 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer18 = getelementptr inbounds %struct.my_post_controller, ptr %40, i32 0, i32 2
  store ptr %call17, ptr %buffer18, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end19

if.end19:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %post) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_dpost(ptr noundef %cinfo, i32 noundef %pass_mode) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pass_mode.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %pass_mode, ptr %pass_mode.addr, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %post) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %post1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %post1, align 8, !tbaa !17
  store ptr %1, ptr %post, align 8, !tbaa !4
  %2 = load i32, ptr %pass_mode.addr, align 4, !tbaa !31
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb8
    i32 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %quantize_colors = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %3, i32 0, i32 20
  %4 = load i32, ptr %quantize_colors, align 4, !tbaa !23
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %post, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.my_post_controller, ptr %5, i32 0, i32 0
  %post_process_data = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub, i32 0, i32 1
  store ptr @post_process_1pass, ptr %post_process_data, align 8, !tbaa !32
  %6 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %buffer, align 8, !tbaa !22
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %mem, align 8, !tbaa !10
  %access_virt_sarray = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %access_virt_sarray, align 8, !tbaa !33
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %post, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %whole_image, align 8, !tbaa !21
  %14 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %strip_height, align 8, !tbaa !25
  %call = call ptr %10(ptr noundef %11, ptr noundef %13, i32 noundef 0, i32 noundef %15, i32 noundef 1)
  %16 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer3 = getelementptr inbounds %struct.my_post_controller, ptr %16, i32 0, i32 2
  store ptr %call, ptr %buffer3, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end7

if.else:                                          ; preds = %sw.bb
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %upsample = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %17, i32 0, i32 84
  %18 = load ptr, ptr %upsample, align 8, !tbaa !34
  %upsample4 = getelementptr inbounds %struct.jpeg_upsampler, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %upsample4, align 8, !tbaa !35
  %20 = load ptr, ptr %post, align 8, !tbaa !4
  %pub5 = getelementptr inbounds %struct.my_post_controller, ptr %20, i32 0, i32 0
  %post_process_data6 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub5, i32 0, i32 1
  store ptr %19, ptr %post_process_data6, align 8, !tbaa !32
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %21 = load ptr, ptr %post, align 8, !tbaa !4
  %whole_image9 = getelementptr inbounds %struct.my_post_controller, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %whole_image9, align 8, !tbaa !21
  %cmp10 = icmp eq ptr %22, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %sw.bb8
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err, align 8, !tbaa !37
  %msg_code = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %24, i32 0, i32 5
  store i32 4, ptr %msg_code, align 8, !tbaa !38
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err12 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err12, align 8, !tbaa !37
  %error_exit = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %error_exit, align 8, !tbaa !40
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %27(ptr noundef %28)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.bb8
  %29 = load ptr, ptr %post, align 8, !tbaa !4
  %pub14 = getelementptr inbounds %struct.my_post_controller, ptr %29, i32 0, i32 0
  %post_process_data15 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub14, i32 0, i32 1
  store ptr @post_process_prepass, ptr %post_process_data15, align 8, !tbaa !32
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %30 = load ptr, ptr %post, align 8, !tbaa !4
  %whole_image17 = getelementptr inbounds %struct.my_post_controller, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %whole_image17, align 8, !tbaa !21
  %cmp18 = icmp eq ptr %31, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %sw.bb16
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err20 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err20, align 8, !tbaa !37
  %msg_code21 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %33, i32 0, i32 5
  store i32 4, ptr %msg_code21, align 8, !tbaa !38
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err22 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %err22, align 8, !tbaa !37
  %error_exit23 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %error_exit23, align 8, !tbaa !40
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %36(ptr noundef %37)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %sw.bb16
  %38 = load ptr, ptr %post, align 8, !tbaa !4
  %pub25 = getelementptr inbounds %struct.my_post_controller, ptr %38, i32 0, i32 0
  %post_process_data26 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %pub25, i32 0, i32 1
  store ptr @post_process_2pass, ptr %post_process_data26, align 8, !tbaa !32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err27 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %err27, align 8, !tbaa !37
  %msg_code28 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %40, i32 0, i32 5
  store i32 4, ptr %msg_code28, align 8, !tbaa !38
  %41 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err29 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %err29, align 8, !tbaa !37
  %error_exit30 = getelementptr inbounds %struct.gdcmjpeg16_error_mgr, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %error_exit30, align 8, !tbaa !40
  %44 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %43(ptr noundef %44)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end24, %if.end13, %if.end7
  %45 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row = getelementptr inbounds %struct.my_post_controller, ptr %45, i32 0, i32 5
  store i32 0, ptr %next_row, align 8, !tbaa !41
  %46 = load ptr, ptr %post, align 8, !tbaa !4
  %starting_row = getelementptr inbounds %struct.my_post_controller, ptr %46, i32 0, i32 4
  store i32 0, ptr %starting_row, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr %post) #3
  ret void
}

declare i64 @gdcmjpeg16_jround_up(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @post_process_1pass(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  %num_rows = alloca i32, align 4
  %max_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8, !tbaa !4
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4, !tbaa !8
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %post) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %post1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %post1, align 8, !tbaa !17
  store ptr %1, ptr %post, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_rows) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_rows) #3
  %2 = load i32, ptr %out_rows_avail.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  %4 = load i32, ptr %3, align 4, !tbaa !8
  %sub = sub i32 %2, %4
  store i32 %sub, ptr %max_rows, align 4, !tbaa !8
  %5 = load i32, ptr %max_rows, align 4, !tbaa !8
  %6 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %strip_height, align 8, !tbaa !25
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %strip_height2, align 8, !tbaa !25
  store i32 %9, ptr %max_rows, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %num_rows, align 4, !tbaa !8
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %upsample = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %10, i32 0, i32 84
  %11 = load ptr, ptr %upsample, align 8, !tbaa !34
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %upsample3, align 8, !tbaa !35
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %in_row_group_ctr.addr, align 8, !tbaa !4
  %16 = load i32, ptr %in_row_groups_avail.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %buffer, align 8, !tbaa !22
  %19 = load i32, ptr %max_rows, align 4, !tbaa !8
  call void %12(ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %18, ptr noundef %num_rows, i32 noundef %19)
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %20, i32 0, i32 86
  %21 = load ptr, ptr %cquantize, align 8, !tbaa !43
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %color_quantize, align 8, !tbaa !44
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer4 = getelementptr inbounds %struct.my_post_controller, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %buffer4, align 8, !tbaa !22
  %26 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %26, i64 %idx.ext
  %29 = load i32, ptr %num_rows, align 4, !tbaa !8
  call void %22(ptr noundef %23, ptr noundef %25, ptr noundef %add.ptr, i32 noundef %29)
  %30 = load i32, ptr %num_rows, align 4, !tbaa !8
  %31 = load ptr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %add = add i32 %32, %30
  store i32 %add, ptr %31, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_rows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_rows) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %post) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @post_process_prepass(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  %old_next_row = alloca i32, align 4
  %num_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8, !tbaa !4
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4, !tbaa !8
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %post) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %post1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %post1, align 8, !tbaa !17
  store ptr %1, ptr %post, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_next_row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_rows) #3
  %2 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %3 = load i32, ptr %out_rows_avail.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row = getelementptr inbounds %struct.my_post_controller, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %next_row, align 8, !tbaa !41
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mem, align 8, !tbaa !10
  %access_virt_sarray = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %access_virt_sarray, align 8, !tbaa !33
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %post, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %whole_image, align 8, !tbaa !21
  %12 = load ptr, ptr %post, align 8, !tbaa !4
  %starting_row = getelementptr inbounds %struct.my_post_controller, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %starting_row, align 4, !tbaa !42
  %14 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %strip_height, align 8, !tbaa !25
  %call = call ptr %8(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 1)
  %16 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %16, i32 0, i32 2
  store ptr %call, ptr %buffer, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row2 = getelementptr inbounds %struct.my_post_controller, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %next_row2, align 8, !tbaa !41
  store i32 %18, ptr %old_next_row, align 4, !tbaa !8
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %upsample = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %19, i32 0, i32 84
  %20 = load ptr, ptr %upsample, align 8, !tbaa !34
  %upsample3 = getelementptr inbounds %struct.jpeg_upsampler, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %upsample3, align 8, !tbaa !35
  %22 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %in_row_group_ctr.addr, align 8, !tbaa !4
  %25 = load i32, ptr %in_row_groups_avail.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer4 = getelementptr inbounds %struct.my_post_controller, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %buffer4, align 8, !tbaa !22
  %28 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row5 = getelementptr inbounds %struct.my_post_controller, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height6 = getelementptr inbounds %struct.my_post_controller, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %strip_height6, align 8, !tbaa !25
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %27, ptr noundef %next_row5, i32 noundef %30)
  %31 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row7 = getelementptr inbounds %struct.my_post_controller, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %next_row7, align 8, !tbaa !41
  %33 = load i32, ptr %old_next_row, align 4, !tbaa !8
  %cmp8 = icmp ugt i32 %32, %33
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %34 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row10 = getelementptr inbounds %struct.my_post_controller, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %next_row10, align 8, !tbaa !41
  %36 = load i32, ptr %old_next_row, align 4, !tbaa !8
  %sub = sub i32 %35, %36
  store i32 %sub, ptr %num_rows, align 4, !tbaa !8
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %37, i32 0, i32 86
  %38 = load ptr, ptr %cquantize, align 8, !tbaa !43
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %color_quantize, align 8, !tbaa !44
  %40 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer11 = getelementptr inbounds %struct.my_post_controller, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %buffer11, align 8, !tbaa !22
  %43 = load i32, ptr %old_next_row, align 4, !tbaa !8
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %42, i64 %idx.ext
  %44 = load i32, ptr %num_rows, align 4, !tbaa !8
  call void %39(ptr noundef %40, ptr noundef %add.ptr, ptr noundef null, i32 noundef %44)
  %45 = load i32, ptr %num_rows, align 4, !tbaa !8
  %46 = load ptr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %add = add i32 %47, %45
  store i32 %add, ptr %46, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %48 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row13 = getelementptr inbounds %struct.my_post_controller, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %next_row13, align 8, !tbaa !41
  %50 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height14 = getelementptr inbounds %struct.my_post_controller, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %strip_height14, align 8, !tbaa !25
  %cmp15 = icmp uge i32 %49, %51
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end12
  %52 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height17 = getelementptr inbounds %struct.my_post_controller, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %strip_height17, align 8, !tbaa !25
  %54 = load ptr, ptr %post, align 8, !tbaa !4
  %starting_row18 = getelementptr inbounds %struct.my_post_controller, ptr %54, i32 0, i32 4
  %55 = load i32, ptr %starting_row18, align 4, !tbaa !42
  %add19 = add i32 %55, %53
  store i32 %add19, ptr %starting_row18, align 4, !tbaa !42
  %56 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row20 = getelementptr inbounds %struct.my_post_controller, ptr %56, i32 0, i32 5
  store i32 0, ptr %next_row20, align 8, !tbaa !41
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_rows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_next_row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %post) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @post_process_2pass(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %in_row_group_ctr, i32 noundef %in_row_groups_avail, ptr noundef %output_buf, ptr noundef %out_row_ctr, i32 noundef %out_rows_avail) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %in_row_group_ctr.addr = alloca ptr, align 8
  %in_row_groups_avail.addr = alloca i32, align 4
  %output_buf.addr = alloca ptr, align 8
  %out_row_ctr.addr = alloca ptr, align 8
  %out_rows_avail.addr = alloca i32, align 4
  %post = alloca ptr, align 8
  %num_rows = alloca i32, align 4
  %max_rows = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %in_row_group_ctr, ptr %in_row_group_ctr.addr, align 8, !tbaa !4
  store i32 %in_row_groups_avail, ptr %in_row_groups_avail.addr, align 4, !tbaa !8
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store ptr %out_row_ctr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  store i32 %out_rows_avail, ptr %out_rows_avail.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %post) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %post1 = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 81
  %1 = load ptr, ptr %post1, align 8, !tbaa !17
  store ptr %1, ptr %post, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_rows) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_rows) #3
  %2 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %in_row_group_ctr.addr, align 8, !tbaa !4
  %4 = load i32, ptr %in_row_groups_avail.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row = getelementptr inbounds %struct.my_post_controller, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %next_row, align 8, !tbaa !41
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem, align 8, !tbaa !10
  %access_virt_sarray = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %access_virt_sarray, align 8, !tbaa !33
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %post, align 8, !tbaa !4
  %whole_image = getelementptr inbounds %struct.my_post_controller, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %whole_image, align 8, !tbaa !21
  %13 = load ptr, ptr %post, align 8, !tbaa !4
  %starting_row = getelementptr inbounds %struct.my_post_controller, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %starting_row, align 4, !tbaa !42
  %15 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height = getelementptr inbounds %struct.my_post_controller, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %strip_height, align 8, !tbaa !25
  %call = call ptr %9(ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 0)
  %17 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.my_post_controller, ptr %17, i32 0, i32 2
  store ptr %call, ptr %buffer, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height2 = getelementptr inbounds %struct.my_post_controller, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %strip_height2, align 8, !tbaa !25
  %20 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row3 = getelementptr inbounds %struct.my_post_controller, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %next_row3, align 8, !tbaa !41
  %sub = sub i32 %19, %21
  store i32 %sub, ptr %num_rows, align 4, !tbaa !8
  %22 = load i32, ptr %out_rows_avail.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %sub4 = sub i32 %22, %24
  store i32 %sub4, ptr %max_rows, align 4, !tbaa !8
  %25 = load i32, ptr %num_rows, align 4, !tbaa !8
  %26 = load i32, ptr %max_rows, align 4, !tbaa !8
  %cmp5 = icmp ugt i32 %25, %26
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %27 = load i32, ptr %max_rows, align 4, !tbaa !8
  store i32 %27, ptr %num_rows, align 4, !tbaa !8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_height = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %28, i32 0, i32 28
  %29 = load i32, ptr %output_height, align 4, !tbaa !29
  %30 = load ptr, ptr %post, align 8, !tbaa !4
  %starting_row8 = getelementptr inbounds %struct.my_post_controller, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %starting_row8, align 4, !tbaa !42
  %sub9 = sub i32 %29, %31
  store i32 %sub9, ptr %max_rows, align 4, !tbaa !8
  %32 = load i32, ptr %num_rows, align 4, !tbaa !8
  %33 = load i32, ptr %max_rows, align 4, !tbaa !8
  %cmp10 = icmp ugt i32 %32, %33
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %34 = load i32, ptr %max_rows, align 4, !tbaa !8
  store i32 %34, ptr %num_rows, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %35, i32 0, i32 86
  %36 = load ptr, ptr %cquantize, align 8, !tbaa !43
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %color_quantize, align 8, !tbaa !44
  %38 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %post, align 8, !tbaa !4
  %buffer13 = getelementptr inbounds %struct.my_post_controller, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %buffer13, align 8, !tbaa !22
  %41 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row14 = getelementptr inbounds %struct.my_post_controller, ptr %41, i32 0, i32 5
  %42 = load i32, ptr %next_row14, align 8, !tbaa !41
  %idx.ext = zext i32 %42 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %40, i64 %idx.ext
  %43 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %idx.ext15 = zext i32 %45 to i64
  %add.ptr16 = getelementptr inbounds ptr, ptr %43, i64 %idx.ext15
  %46 = load i32, ptr %num_rows, align 4, !tbaa !8
  call void %37(ptr noundef %38, ptr noundef %add.ptr, ptr noundef %add.ptr16, i32 noundef %46)
  %47 = load i32, ptr %num_rows, align 4, !tbaa !8
  %48 = load ptr, ptr %out_row_ctr.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  %add = add i32 %49, %47
  store i32 %add, ptr %48, align 4, !tbaa !8
  %50 = load i32, ptr %num_rows, align 4, !tbaa !8
  %51 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row17 = getelementptr inbounds %struct.my_post_controller, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %next_row17, align 8, !tbaa !41
  %add18 = add i32 %52, %50
  store i32 %add18, ptr %next_row17, align 8, !tbaa !41
  %53 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row19 = getelementptr inbounds %struct.my_post_controller, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %next_row19, align 8, !tbaa !41
  %55 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height20 = getelementptr inbounds %struct.my_post_controller, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %strip_height20, align 8, !tbaa !25
  %cmp21 = icmp uge i32 %54, %56
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end12
  %57 = load ptr, ptr %post, align 8, !tbaa !4
  %strip_height23 = getelementptr inbounds %struct.my_post_controller, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %strip_height23, align 8, !tbaa !25
  %59 = load ptr, ptr %post, align 8, !tbaa !4
  %starting_row24 = getelementptr inbounds %struct.my_post_controller, ptr %59, i32 0, i32 4
  %60 = load i32, ptr %starting_row24, align 4, !tbaa !42
  %add25 = add i32 %60, %58
  store i32 %add25, ptr %starting_row24, align 4, !tbaa !42
  %61 = load ptr, ptr %post, align 8, !tbaa !4
  %next_row26 = getelementptr inbounds %struct.my_post_controller, ptr %61, i32 0, i32 5
  store i32 0, ptr %next_row26, align 8, !tbaa !41
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_rows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_rows) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %post) #3
  ret void
}

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
!10 = !{!11, !5, i64 8}
!11 = !{!"gdcmjpeg16_decompress_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !5, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 60, !6, i64 64, !9, i64 68, !9, i64 72, !12, i64 80, !9, i64 88, !9, i64 92, !6, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !6, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !5, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !5, i64 192, !6, i64 200, !6, i64 232, !6, i64 264, !9, i64 296, !5, i64 304, !9, i64 312, !6, i64 316, !6, i64 332, !6, i64 348, !9, i64 364, !9, i64 368, !6, i64 372, !6, i64 373, !6, i64 374, !13, i64 376, !13, i64 378, !9, i64 380, !6, i64 384, !9, i64 388, !5, i64 392, !9, i64 400, !6, i64 404, !9, i64 408, !9, i64 412, !9, i64 416, !9, i64 420, !5, i64 424, !9, i64 432, !6, i64 440, !9, i64 472, !9, i64 476, !9, i64 480, !6, i64 484, !9, i64 524, !9, i64 528, !9, i64 532, !9, i64 536, !9, i64 540, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608}
!12 = !{!"double", !6, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"gdcmjpeg16_memory_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !16, i64 96, !16, i64 104}
!16 = !{!"long", !6, i64 0}
!17 = !{!11, !5, i64 568}
!18 = !{!19, !5, i64 0}
!19 = !{!"", !20, i64 0, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !9, i64 40}
!20 = !{!"jpeg_d_post_controller", !5, i64 0, !5, i64 8}
!21 = !{!19, !5, i64 16}
!22 = !{!19, !5, i64 24}
!23 = !{!11, !9, i64 108}
!24 = !{!11, !9, i64 412}
!25 = !{!19, !9, i64 32}
!26 = !{!15, !5, i64 40}
!27 = !{!11, !9, i64 136}
!28 = !{!11, !9, i64 144}
!29 = !{!11, !9, i64 140}
!30 = !{!15, !5, i64 16}
!31 = !{!6, !6, i64 0}
!32 = !{!19, !5, i64 8}
!33 = !{!15, !5, i64 64}
!34 = !{!11, !5, i64 592}
!35 = !{!36, !5, i64 8}
!36 = !{!"jpeg_upsampler", !5, i64 0, !5, i64 8, !9, i64 16}
!37 = !{!11, !5, i64 0}
!38 = !{!39, !9, i64 40}
!39 = !{!"gdcmjpeg16_error_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !9, i64 40, !6, i64 44, !9, i64 124, !16, i64 128, !5, i64 136, !9, i64 144, !5, i64 152, !9, i64 160, !9, i64 164}
!40 = !{!39, !5, i64 0}
!41 = !{!19, !9, i64 40}
!42 = !{!19, !9, i64 36}
!43 = !{!11, !5, i64 608}
!44 = !{!45, !5, i64 8}
!45 = !{!"jpeg_color_quantizer", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}

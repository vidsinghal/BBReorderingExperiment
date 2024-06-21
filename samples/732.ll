; ModuleID = 'samples/732.bc'
source_filename = "/local-ssd/libicd-ufsfiwjhnzdgnqc6gwab65tokvidxwgd-build/aidengro/spack-stage-libicd-main-ufsfiwjhnzdgnqc6gwab65tokvidxwgd/spack-src/src/jpeg12-6b/jquant1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct12 = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr12 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64 }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, [4 x i32], i32, [4 x ptr], [4 x ptr], i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr12 = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@base_dither_matrix = internal constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\\\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16
@select_ncolors.RGB_order = internal constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind uwtable
define void @jinit_1pass_quantizer_12(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr12, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8, !tbaa !13
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 152)
  store ptr %call, ptr %cquantize, align 8, !tbaa !4
  %4 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %5, i32 0, i32 87
  store ptr %4, ptr %cquantize1, align 8, !tbaa !16
  %6 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.my_cquantizer, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub, i32 0, i32 0
  store ptr @start_pass_1_quant, ptr %start_pass, align 8, !tbaa !17
  %7 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub2 = getelementptr inbounds %struct.my_cquantizer, ptr %7, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub2, i32 0, i32 2
  store ptr @finish_pass_1_quant, ptr %finish_pass, align 8, !tbaa !20
  %8 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub3 = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 0
  %new_color_map = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub3, i32 0, i32 3
  store ptr @new_color_map_1_quant, ptr %new_color_map, align 8, !tbaa !21
  %9 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 0
  store ptr null, ptr %arrayidx, align 8, !tbaa !4
  %10 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %10, i32 0, i32 7
  %arrayidx4 = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 0
  store ptr null, ptr %arrayidx4, align 8, !tbaa !4
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %11, i32 0, i32 29
  %12 = load i32, ptr %out_color_components, align 8, !tbaa !22
  %cmp = icmp sgt i32 %12, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %14, i32 0, i32 5
  store i32 55, ptr %msg_code, align 8, !tbaa !24
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err5, align 8, !tbaa !23
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %16, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 4, ptr %arrayidx6, align 4, !tbaa !26
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err7, align 8, !tbaa !23
  %error_exit12 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit12, align 8, !tbaa !27
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %19(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %21, i32 0, i32 23
  %22 = load i32, ptr %desired_number_of_colors, align 8, !tbaa !28
  %cmp8 = icmp sgt i32 %22, 4096
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err10, align 8, !tbaa !23
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %24, i32 0, i32 5
  store i32 57, ptr %msg_code11, align 8, !tbaa !24
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err12, align 8, !tbaa !23
  %msg_parm13 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %26, i32 0, i32 6
  %arrayidx14 = getelementptr inbounds [8 x i32], ptr %msg_parm13, i64 0, i64 0
  store i32 4096, ptr %arrayidx14, align 4, !tbaa !26
  %27 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %err15, align 8, !tbaa !23
  %error_exit1216 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %error_exit1216, align 8, !tbaa !27
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %29(ptr noundef %30)
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end
  %31 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @create_colormap(ptr noundef %31)
  %32 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @create_colorindex(ptr noundef %32)
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %33, i32 0, i32 21
  %34 = load i32, ptr %dither_mode, align 8, !tbaa !29
  %cmp18 = icmp eq i32 %34, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %35 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @alloc_fs_workspace(ptr noundef %35)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef %cinfo, i32 noundef %is_pre_scan) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %is_pre_scan.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %is_pre_scan, ptr %is_pre_scan.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %arraysize) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %2 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %sv_colormap, align 8, !tbaa !31
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %4, i32 0, i32 33
  store ptr %3, ptr %colormap, align 8, !tbaa !32
  %5 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %sv_actual, align 8, !tbaa !33
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %actual_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %7, i32 0, i32 32
  store i32 %6, ptr %actual_number_of_colors, align 4, !tbaa !34
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %8, i32 0, i32 21
  %9 = load i32, ptr %dither_mode, align 8, !tbaa !29
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %10, i32 0, i32 29
  %11 = load i32, ptr %out_color_components, align 8, !tbaa !22
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %12 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 0
  %color_quantize = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub, i32 0, i32 1
  store ptr @color_quantize3, ptr %color_quantize, align 8, !tbaa !35
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub2 = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 0
  %color_quantize3 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub2, i32 0, i32 1
  store ptr @color_quantize, ptr %color_quantize3, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %14 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components5 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %14, i32 0, i32 29
  %15 = load i32, ptr %out_color_components5, align 8, !tbaa !22
  %cmp6 = icmp eq i32 %15, 3
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %sw.bb4
  %16 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub8 = getelementptr inbounds %struct.my_cquantizer, ptr %16, i32 0, i32 0
  %color_quantize9 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub8, i32 0, i32 1
  store ptr @quantize3_ord_dither, ptr %color_quantize9, align 8, !tbaa !35
  br label %if.end13

if.else10:                                        ; preds = %sw.bb4
  %17 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub11 = getelementptr inbounds %struct.my_cquantizer, ptr %17, i32 0, i32 0
  %color_quantize12 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub11, i32 0, i32 1
  store ptr @quantize_ord_dither, ptr %color_quantize12, align 8, !tbaa !35
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then7
  %18 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %row_index = getelementptr inbounds %struct.my_cquantizer, ptr %18, i32 0, i32 6
  store i32 0, ptr %row_index, align 4, !tbaa !36
  %19 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %is_padded, align 8, !tbaa !37
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end13
  %21 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @create_colorindex(ptr noundef %21)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end13
  %22 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %22, i32 0, i32 7
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 0
  %23 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp16 = icmp eq ptr %23, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @create_odither_tables(ptr noundef %24)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %25 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %pub20 = getelementptr inbounds %struct.my_cquantizer, ptr %25, i32 0, i32 0
  %color_quantize21 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %pub20, i32 0, i32 1
  store ptr @quantize_fs_dither, ptr %color_quantize21, align 8, !tbaa !35
  %26 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %26, i32 0, i32 9
  store i32 0, ptr %on_odd_row, align 8, !tbaa !38
  %27 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %27, i32 0, i32 8
  %arrayidx22 = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 0
  %28 = load ptr, ptr %arrayidx22, align 8, !tbaa !4
  %cmp23 = icmp eq ptr %28, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb19
  %29 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @alloc_fs_workspace(ptr noundef %29)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.bb19
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %30, i32 0, i32 27
  %31 = load i32, ptr %output_width, align 8, !tbaa !39
  %add = add i32 %31, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  store i64 %mul, ptr %arraysize, align 8, !tbaa !40
  store i32 0, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %32 = load i32, ptr %i, align 4, !tbaa !30
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components26 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %33, i32 0, i32 29
  %34 = load i32, ptr %out_color_components26, align 8, !tbaa !22
  %cmp27 = icmp slt i32 %32, %34
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %fserrors29 = getelementptr inbounds %struct.my_cquantizer, ptr %35, i32 0, i32 8
  %36 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [4 x ptr], ptr %fserrors29, i64 0, i64 %idxprom
  %37 = load ptr, ptr %arrayidx30, align 8, !tbaa !4
  %38 = load i64, ptr %arraysize, align 8, !tbaa !40
  call void @jzero_far_12(ptr noundef %37, i64 noundef %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4, !tbaa !30
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %40 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %err, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %41, i32 0, i32 5
  store i32 48, ptr %msg_code, align 8, !tbaa !24
  %42 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err31, align 8, !tbaa !23
  %error_exit12 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %error_exit12, align 8, !tbaa !27
  %45 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %44(ptr noundef %45)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %if.end18, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %arraysize) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_1_quant(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_color_map_1_quant(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %1, i32 0, i32 5
  store i32 46, ptr %msg_code, align 8, !tbaa !24
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err1, align 8, !tbaa !23
  %error_exit12 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %error_exit12, align 8, !tbaa !27
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %4(ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_colormap(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %colormap = alloca ptr, align 8
  %total_colors = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %blkdist = alloca i32, align 4
  %ptr = alloca i32, align 4
  %val = alloca i32, align 4
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colormap) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_colors) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %blksize) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %blkdist) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #3
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %3, i32 0, i32 5
  %arraydecay = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 0
  %call = call i32 @select_ncolors(ptr noundef %2, ptr noundef %arraydecay)
  store i32 %call, ptr %total_colors, align 4, !tbaa !30
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %4, i32 0, i32 29
  %5 = load i32, ptr %out_color_components, align 8, !tbaa !22
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mp) #3
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err, align 8, !tbaa !23
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %7, i32 0, i32 6
  %arraydecay2 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay2, ptr %_mp, align 8, !tbaa !4
  %8 = load i32, ptr %total_colors, align 4, !tbaa !30
  %9 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 0
  store i32 %8, ptr %arrayidx, align 4, !tbaa !30
  %10 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors3 = getelementptr inbounds %struct.my_cquantizer, ptr %10, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %Ncolors3, i64 0, i64 0
  %11 = load i32, ptr %arrayidx4, align 4, !tbaa !30
  %12 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 1
  store i32 %11, ptr %arrayidx5, align 4, !tbaa !30
  %13 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors6 = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %Ncolors6, i64 0, i64 1
  %14 = load i32, ptr %arrayidx7, align 4, !tbaa !30
  %15 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 2
  store i32 %14, ptr %arrayidx8, align 4, !tbaa !30
  %16 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors9 = getelementptr inbounds %struct.my_cquantizer, ptr %16, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr %Ncolors9, i64 0, i64 2
  %17 = load i32, ptr %arrayidx10, align 4, !tbaa !30
  %18 = load ptr, ptr %_mp, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 3
  store i32 %17, ptr %arrayidx11, align 4, !tbaa !30
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err12, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %20, i32 0, i32 5
  store i32 94, ptr %msg_code, align 8, !tbaa !24
  %21 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err13, align 8, !tbaa !23
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %emit_message, align 8, !tbaa !41
  %24 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %23(ptr noundef %24, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mp) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err14, align 8, !tbaa !23
  %msg_code15 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %26, i32 0, i32 5
  store i32 95, ptr %msg_code15, align 8, !tbaa !24
  %27 = load i32, ptr %total_colors, align 4, !tbaa !30
  %28 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err16, align 8, !tbaa !23
  %msg_parm17 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %29, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], ptr %msg_parm17, i64 0, i64 0
  store i32 %27, ptr %arrayidx18, align 4, !tbaa !26
  %30 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err19, align 8, !tbaa !23
  %emit_message20 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %emit_message20, align 8, !tbaa !41
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %32(ptr noundef %33, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %mem, align 8, !tbaa !8
  %alloc_sarray12 = getelementptr inbounds %struct.jpeg_memory_mgr12, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %alloc_sarray12, align 8, !tbaa !42
  %37 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %38 = load i32, ptr %total_colors, align 4, !tbaa !30
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components21 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %39, i32 0, i32 29
  %40 = load i32, ptr %out_color_components21, align 8, !tbaa !22
  %call22 = call ptr %36(ptr noundef %37, i32 noundef 1, i32 noundef %38, i32 noundef %40)
  store ptr %call22, ptr %colormap, align 8, !tbaa !4
  %41 = load i32, ptr %total_colors, align 4, !tbaa !30
  store i32 %41, ptr %blkdist, align 4, !tbaa !30
  store i32 0, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %if.end
  %42 = load i32, ptr %i, align 4, !tbaa !30
  %43 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components23 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %43, i32 0, i32 29
  %44 = load i32, ptr %out_color_components23, align 8, !tbaa !22
  %cmp24 = icmp slt i32 %42, %44
  br i1 %cmp24, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors25 = getelementptr inbounds %struct.my_cquantizer, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom = sext i32 %46 to i64
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %Ncolors25, i64 0, i64 %idxprom
  %47 = load i32, ptr %arrayidx26, align 4, !tbaa !30
  store i32 %47, ptr %nci, align 4, !tbaa !30
  %48 = load i32, ptr %blkdist, align 4, !tbaa !30
  %49 = load i32, ptr %nci, align 4, !tbaa !30
  %div = sdiv i32 %48, %49
  store i32 %div, ptr %blksize, align 4, !tbaa !30
  store i32 0, ptr %j, align 4, !tbaa !30
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc44, %for.body
  %50 = load i32, ptr %j, align 4, !tbaa !30
  %51 = load i32, ptr %nci, align 4, !tbaa !30
  %cmp28 = icmp slt i32 %50, %51
  br i1 %cmp28, label %for.body29, label %for.end46

for.body29:                                       ; preds = %for.cond27
  %52 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %53 = load i32, ptr %i, align 4, !tbaa !30
  %54 = load i32, ptr %j, align 4, !tbaa !30
  %55 = load i32, ptr %nci, align 4, !tbaa !30
  %sub = sub nsw i32 %55, 1
  %call30 = call i32 @output_value(ptr noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %sub)
  store i32 %call30, ptr %val, align 4, !tbaa !30
  %56 = load i32, ptr %j, align 4, !tbaa !30
  %57 = load i32, ptr %blksize, align 4, !tbaa !30
  %mul = mul nsw i32 %56, %57
  store i32 %mul, ptr %ptr, align 4, !tbaa !30
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.body29
  %58 = load i32, ptr %ptr, align 4, !tbaa !30
  %59 = load i32, ptr %total_colors, align 4, !tbaa !30
  %cmp32 = icmp slt i32 %58, %59
  br i1 %cmp32, label %for.body33, label %for.end43

for.body33:                                       ; preds = %for.cond31
  store i32 0, ptr %k, align 4, !tbaa !30
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc, %for.body33
  %60 = load i32, ptr %k, align 4, !tbaa !30
  %61 = load i32, ptr %blksize, align 4, !tbaa !30
  %cmp35 = icmp slt i32 %60, %61
  br i1 %cmp35, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond34
  %62 = load i32, ptr %val, align 4, !tbaa !30
  %conv = trunc i32 %62 to i16
  %63 = load ptr, ptr %colormap, align 8, !tbaa !4
  %64 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom37 = sext i32 %64 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %63, i64 %idxprom37
  %65 = load ptr, ptr %arrayidx38, align 8, !tbaa !4
  %66 = load i32, ptr %ptr, align 4, !tbaa !30
  %67 = load i32, ptr %k, align 4, !tbaa !30
  %add = add nsw i32 %66, %67
  %idxprom39 = sext i32 %add to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %65, i64 %idxprom39
  store i16 %conv, ptr %arrayidx40, align 2, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %68 = load i32, ptr %k, align 4, !tbaa !30
  %inc = add nsw i32 %68, 1
  store i32 %inc, ptr %k, align 4, !tbaa !30
  br label %for.cond34

for.end:                                          ; preds = %for.cond34
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %69 = load i32, ptr %blkdist, align 4, !tbaa !30
  %70 = load i32, ptr %ptr, align 4, !tbaa !30
  %add42 = add nsw i32 %70, %69
  store i32 %add42, ptr %ptr, align 4, !tbaa !30
  br label %for.cond31

for.end43:                                        ; preds = %for.cond31
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %71 = load i32, ptr %j, align 4, !tbaa !30
  %inc45 = add nsw i32 %71, 1
  store i32 %inc45, ptr %j, align 4, !tbaa !30
  br label %for.cond27

for.end46:                                        ; preds = %for.cond27
  %72 = load i32, ptr %blksize, align 4, !tbaa !30
  store i32 %72, ptr %blkdist, align 4, !tbaa !30
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %73 = load i32, ptr %i, align 4, !tbaa !30
  %inc48 = add nsw i32 %73, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.end49:                                        ; preds = %for.cond
  %74 = load ptr, ptr %colormap, align 8, !tbaa !4
  %75 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %75, i32 0, i32 1
  store ptr %74, ptr %sv_colormap, align 8, !tbaa !31
  %76 = load i32, ptr %total_colors, align 4, !tbaa !30
  %77 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %77, i32 0, i32 2
  store i32 %76, ptr %sv_actual, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %blkdist) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %blksize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_colors) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colormap) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_colorindex(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %indexptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nci = alloca i32, align 4
  %blksize = alloca i32, align 4
  %val = alloca i32, align 4
  %pad = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %indexptr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %blksize) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad) #3
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %2, i32 0, i32 21
  %3 = load i32, ptr %dither_mode, align 8, !tbaa !29
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 8190, ptr %pad, align 4, !tbaa !30
  %4 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %is_padded = getelementptr inbounds %struct.my_cquantizer, ptr %4, i32 0, i32 4
  store i32 1, ptr %is_padded, align 8, !tbaa !37
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %pad, align 4, !tbaa !30
  %5 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %is_padded2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 4
  store i32 0, ptr %is_padded2, align 8, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mem, align 8, !tbaa !8
  %alloc_sarray12 = getelementptr inbounds %struct.jpeg_memory_mgr12, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %alloc_sarray12, align 8, !tbaa !42
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %10 = load i32, ptr %pad, align 4, !tbaa !30
  %add = add nsw i32 4096, %10
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %11, i32 0, i32 29
  %12 = load i32, ptr %out_color_components, align 8, !tbaa !22
  %call = call ptr %8(ptr noundef %9, i32 noundef 1, i32 noundef %add, i32 noundef %12)
  %13 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %13, i32 0, i32 3
  store ptr %call, ptr %colorindex, align 8, !tbaa !44
  %14 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %sv_actual = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %sv_actual, align 8, !tbaa !33
  store i32 %15, ptr %blksize, align 4, !tbaa !30
  store i32 0, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !30
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components3 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %17, i32 0, i32 29
  %18 = load i32, ptr %out_color_components3, align 8, !tbaa !22
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4, !tbaa !30
  store i32 %21, ptr %nci, align 4, !tbaa !30
  %22 = load i32, ptr %blksize, align 4, !tbaa !30
  %23 = load i32, ptr %nci, align 4, !tbaa !30
  %div = sdiv i32 %22, %23
  store i32 %div, ptr %blksize, align 4, !tbaa !30
  %24 = load i32, ptr %pad, align 4, !tbaa !30
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %25 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex6 = getelementptr inbounds %struct.my_cquantizer, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %colorindex6, align 8, !tbaa !44
  %27 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %26, i64 %idxprom7
  %28 = load ptr, ptr %arrayidx8, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i16, ptr %28, i64 4095
  store ptr %add.ptr, ptr %arrayidx8, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.body
  %29 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex10 = getelementptr inbounds %struct.my_cquantizer, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %colorindex10, align 8, !tbaa !44
  %31 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom11 = sext i32 %31 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %30, i64 %idxprom11
  %32 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  store ptr %32, ptr %indexptr, align 8, !tbaa !4
  store i32 0, ptr %val, align 4, !tbaa !30
  %33 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %34 = load i32, ptr %i, align 4, !tbaa !30
  %35 = load i32, ptr %nci, align 4, !tbaa !30
  %sub = sub nsw i32 %35, 1
  %call13 = call i32 @largest_input_value(ptr noundef %33, i32 noundef %34, i32 noundef 0, i32 noundef %sub)
  store i32 %call13, ptr %k, align 4, !tbaa !30
  store i32 0, ptr %j, align 4, !tbaa !30
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.end9
  %36 = load i32, ptr %j, align 4, !tbaa !30
  %cmp15 = icmp sle i32 %36, 4095
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body16
  %37 = load i32, ptr %j, align 4, !tbaa !30
  %38 = load i32, ptr %k, align 4, !tbaa !30
  %cmp17 = icmp sgt i32 %37, %38
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %40 = load i32, ptr %i, align 4, !tbaa !30
  %41 = load i32, ptr %val, align 4, !tbaa !30
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %val, align 4, !tbaa !30
  %42 = load i32, ptr %nci, align 4, !tbaa !30
  %sub18 = sub nsw i32 %42, 1
  %call19 = call i32 @largest_input_value(ptr noundef %39, i32 noundef %40, i32 noundef %inc, i32 noundef %sub18)
  store i32 %call19, ptr %k, align 4, !tbaa !30
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load i32, ptr %val, align 4, !tbaa !30
  %44 = load i32, ptr %blksize, align 4, !tbaa !30
  %mul = mul nsw i32 %43, %44
  %conv = trunc i32 %mul to i16
  %45 = load ptr, ptr %indexptr, align 8, !tbaa !4
  %46 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom20 = sext i32 %46 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %45, i64 %idxprom20
  store i16 %conv, ptr %arrayidx21, align 2, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %47 = load i32, ptr %j, align 4, !tbaa !30
  %inc22 = add nsw i32 %47, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !30
  br label %for.cond14

for.end:                                          ; preds = %for.cond14
  %48 = load i32, ptr %pad, align 4, !tbaa !30
  %tobool23 = icmp ne i32 %48, 0
  br i1 %tobool23, label %if.then24, label %if.end40

if.then24:                                        ; preds = %for.end
  store i32 1, ptr %j, align 4, !tbaa !30
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc37, %if.then24
  %49 = load i32, ptr %j, align 4, !tbaa !30
  %cmp26 = icmp sle i32 %49, 4095
  br i1 %cmp26, label %for.body28, label %for.end39

for.body28:                                       ; preds = %for.cond25
  %50 = load ptr, ptr %indexptr, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds i16, ptr %50, i64 0
  %51 = load i16, ptr %arrayidx29, align 2, !tbaa !43
  %52 = load ptr, ptr %indexptr, align 8, !tbaa !4
  %53 = load i32, ptr %j, align 4, !tbaa !30
  %sub30 = sub nsw i32 0, %53
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %52, i64 %idxprom31
  store i16 %51, ptr %arrayidx32, align 2, !tbaa !43
  %54 = load ptr, ptr %indexptr, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds i16, ptr %54, i64 4095
  %55 = load i16, ptr %arrayidx33, align 2, !tbaa !43
  %56 = load ptr, ptr %indexptr, align 8, !tbaa !4
  %57 = load i32, ptr %j, align 4, !tbaa !30
  %add34 = add nsw i32 4095, %57
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %56, i64 %idxprom35
  store i16 %55, ptr %arrayidx36, align 2, !tbaa !43
  br label %for.inc37

for.inc37:                                        ; preds = %for.body28
  %58 = load i32, ptr %j, align 4, !tbaa !30
  %inc38 = add nsw i32 %58, 1
  store i32 %inc38, ptr %j, align 4, !tbaa !30
  br label %for.cond25

for.end39:                                        ; preds = %for.cond25
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %for.end
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %59 = load i32, ptr %i, align 4, !tbaa !30
  %inc42 = add nsw i32 %59, 1
  store i32 %inc42, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.end43:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %blksize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %indexptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_fs_workspace(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %arraysize = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %arraysize) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %2, i32 0, i32 27
  %3 = load i32, ptr %output_width, align 8, !tbaa !39
  %add = add i32 %3, 2
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  store i64 %mul, ptr %arraysize, align 8, !tbaa !40
  store i32 0, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !30
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %5, i32 0, i32 29
  %6 = load i32, ptr %out_color_components, align 8, !tbaa !22
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mem, align 8, !tbaa !8
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr12, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %alloc_large, align 8, !tbaa !45
  %10 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %11 = load i64, ptr %arraysize, align 8, !tbaa !40
  %call = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef %11)
  %12 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !30
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %arraysize) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @color_quantize3(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %ptrin = alloca ptr, align 8
  %ptrout = alloca ptr, align 8
  %colorindex0 = alloca ptr, align 8
  %colorindex1 = alloca ptr, align 8
  %colorindex24 = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %num_rows, ptr %num_rows.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptrin) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptrout) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex0) #3
  %2 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %colorindex, align 8, !tbaa !44
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %4, ptr %colorindex0, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex1) #3
  %5 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %colorindex2, align 8, !tbaa !44
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx3, align 8, !tbaa !4
  store ptr %7, ptr %colorindex1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex24) #3
  %8 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %colorindex5, align 8, !tbaa !44
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  store ptr %10, ptr %colorindex24, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #3
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %11, i32 0, i32 27
  %12 = load i32, ptr %output_width, align 8, !tbaa !39
  store i32 %12, ptr %width, align 4, !tbaa !30
  store i32 0, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %13 = load i32, ptr %row, align 4, !tbaa !30
  %14 = load i32, ptr %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %16 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx7, align 8, !tbaa !4
  store ptr %17, ptr %ptrin, align 8, !tbaa !4
  %18 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %19 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %18, i64 %idxprom8
  %20 = load ptr, ptr %arrayidx9, align 8, !tbaa !4
  store ptr %20, ptr %ptrout, align 8, !tbaa !4
  %21 = load i32, ptr %width, align 4, !tbaa !30
  store i32 %21, ptr %col, align 4, !tbaa !30
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %22 = load i32, ptr %col, align 4, !tbaa !30
  %cmp11 = icmp ugt i32 %22, 0
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %23 = load ptr, ptr %colorindex0, align 8, !tbaa !4
  %24 = load ptr, ptr %ptrin, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %ptrin, align 8, !tbaa !4
  %25 = load i16, ptr %24, align 2, !tbaa !43
  %conv = sext i16 %25 to i32
  %idxprom13 = sext i32 %conv to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %23, i64 %idxprom13
  %26 = load i16, ptr %arrayidx14, align 2, !tbaa !43
  %conv15 = sext i16 %26 to i32
  store i32 %conv15, ptr %pixcode, align 4, !tbaa !30
  %27 = load ptr, ptr %colorindex1, align 8, !tbaa !4
  %28 = load ptr, ptr %ptrin, align 8, !tbaa !4
  %incdec.ptr16 = getelementptr inbounds i16, ptr %28, i32 1
  store ptr %incdec.ptr16, ptr %ptrin, align 8, !tbaa !4
  %29 = load i16, ptr %28, align 2, !tbaa !43
  %conv17 = sext i16 %29 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %arrayidx19 = getelementptr inbounds i16, ptr %27, i64 %idxprom18
  %30 = load i16, ptr %arrayidx19, align 2, !tbaa !43
  %conv20 = sext i16 %30 to i32
  %31 = load i32, ptr %pixcode, align 4, !tbaa !30
  %add = add nsw i32 %31, %conv20
  store i32 %add, ptr %pixcode, align 4, !tbaa !30
  %32 = load ptr, ptr %colorindex24, align 8, !tbaa !4
  %33 = load ptr, ptr %ptrin, align 8, !tbaa !4
  %incdec.ptr21 = getelementptr inbounds i16, ptr %33, i32 1
  store ptr %incdec.ptr21, ptr %ptrin, align 8, !tbaa !4
  %34 = load i16, ptr %33, align 2, !tbaa !43
  %conv22 = sext i16 %34 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %32, i64 %idxprom23
  %35 = load i16, ptr %arrayidx24, align 2, !tbaa !43
  %conv25 = sext i16 %35 to i32
  %36 = load i32, ptr %pixcode, align 4, !tbaa !30
  %add26 = add nsw i32 %36, %conv25
  store i32 %add26, ptr %pixcode, align 4, !tbaa !30
  %37 = load i32, ptr %pixcode, align 4, !tbaa !30
  %conv27 = trunc i32 %37 to i16
  %38 = load ptr, ptr %ptrout, align 8, !tbaa !4
  %incdec.ptr28 = getelementptr inbounds i16, ptr %38, i32 1
  store ptr %incdec.ptr28, ptr %ptrout, align 8, !tbaa !4
  store i16 %conv27, ptr %38, align 2, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %39 = load i32, ptr %col, align 4, !tbaa !30
  %dec = add i32 %39, -1
  store i32 %dec, ptr %col, align 4, !tbaa !30
  br label %for.cond10

for.end:                                          ; preds = %for.cond10
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %40 = load i32, ptr %row, align 4, !tbaa !30
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex24) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptrout) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptrin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_quantize(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %colorindex = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %ci = alloca i32, align 4
  %ptrin = alloca ptr, align 8
  %ptrout = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %nc = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %num_rows, ptr %num_rows.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex) #3
  %2 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %colorindex2, align 8, !tbaa !44
  store ptr %3, ptr %colorindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptrin) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptrout) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #3
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %4, i32 0, i32 27
  %5 = load i32, ptr %output_width, align 8, !tbaa !39
  store i32 %5, ptr %width, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #3
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %6, i32 0, i32 29
  %7 = load i32, ptr %out_color_components, align 8, !tbaa !22
  store i32 %7, ptr %nc, align 4, !tbaa !30
  store i32 0, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %8 = load i32, ptr %row, align 4, !tbaa !30
  %9 = load i32, ptr %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %11 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %12, ptr %ptrin, align 8, !tbaa !4
  %13 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %14 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %13, i64 %idxprom3
  %15 = load ptr, ptr %arrayidx4, align 8, !tbaa !4
  store ptr %15, ptr %ptrout, align 8, !tbaa !4
  %16 = load i32, ptr %width, align 4, !tbaa !30
  store i32 %16, ptr %col, align 4, !tbaa !30
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.body
  %17 = load i32, ptr %col, align 4, !tbaa !30
  %cmp6 = icmp ugt i32 %17, 0
  br i1 %cmp6, label %for.body7, label %for.end19

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %pixcode, align 4, !tbaa !30
  store i32 0, ptr %ci, align 4, !tbaa !30
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %18 = load i32, ptr %ci, align 4, !tbaa !30
  %19 = load i32, ptr %nc, align 4, !tbaa !30
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %20 = load ptr, ptr %colorindex, align 8, !tbaa !4
  %21 = load i32, ptr %ci, align 4, !tbaa !30
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %20, i64 %idxprom11
  %22 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  %23 = load ptr, ptr %ptrin, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %ptrin, align 8, !tbaa !4
  %24 = load i16, ptr %23, align 2, !tbaa !43
  %conv = sext i16 %24 to i32
  %idxprom13 = sext i32 %conv to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %22, i64 %idxprom13
  %25 = load i16, ptr %arrayidx14, align 2, !tbaa !43
  %conv15 = sext i16 %25 to i32
  %26 = load i32, ptr %pixcode, align 4, !tbaa !30
  %add = add nsw i32 %26, %conv15
  store i32 %add, ptr %pixcode, align 4, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %27 = load i32, ptr %ci, align 4, !tbaa !30
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !30
  br label %for.cond8

for.end:                                          ; preds = %for.cond8
  %28 = load i32, ptr %pixcode, align 4, !tbaa !30
  %conv16 = trunc i32 %28 to i16
  %29 = load ptr, ptr %ptrout, align 8, !tbaa !4
  %incdec.ptr17 = getelementptr inbounds i16, ptr %29, i32 1
  store ptr %incdec.ptr17, ptr %ptrout, align 8, !tbaa !4
  store i16 %conv16, ptr %29, align 2, !tbaa !43
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %30 = load i32, ptr %col, align 4, !tbaa !30
  %dec = add i32 %30, -1
  store i32 %dec, ptr %col, align 4, !tbaa !30
  br label %for.cond5

for.end19:                                        ; preds = %for.cond5
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %31 = load i32, ptr %row, align 4, !tbaa !30
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptrout) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptrin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize3_ord_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %input_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %colorindex0 = alloca ptr, align 8
  %colorindex1 = alloca ptr, align 8
  %colorindex24 = alloca ptr, align 8
  %dither0 = alloca ptr, align 8
  %dither1 = alloca ptr, align 8
  %dither2 = alloca ptr, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %num_rows, ptr %num_rows.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex0) #3
  %2 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %colorindex, align 8, !tbaa !44
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %4, ptr %colorindex0, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex1) #3
  %5 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex2 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %colorindex2, align 8, !tbaa !44
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx3, align 8, !tbaa !4
  store ptr %7, ptr %colorindex1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex24) #3
  %8 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex5 = getelementptr inbounds %struct.my_cquantizer, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %colorindex5, align 8, !tbaa !44
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  store ptr %10, ptr %colorindex24, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dither0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %dither1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %dither2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row_index) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_index) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #3
  %11 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %11, i32 0, i32 27
  %12 = load i32, ptr %output_width, align 8, !tbaa !39
  store i32 %12, ptr %width, align 4, !tbaa !30
  store i32 0, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %entry
  %13 = load i32, ptr %row, align 4, !tbaa !30
  %14 = load i32, ptr %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %row_index7 = getelementptr inbounds %struct.my_cquantizer, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %row_index7, align 4, !tbaa !36
  store i32 %16, ptr %row_index, align 4, !tbaa !30
  %17 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %18 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  %19 = load ptr, ptr %arrayidx8, align 8, !tbaa !4
  store ptr %19, ptr %input_ptr, align 8, !tbaa !4
  %20 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %21 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %idxprom9
  %22 = load ptr, ptr %arrayidx10, align 8, !tbaa !4
  store ptr %22, ptr %output_ptr, align 8, !tbaa !4
  %23 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %23, i32 0, i32 7
  %arrayidx11 = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 0
  %24 = load ptr, ptr %arrayidx11, align 8, !tbaa !4
  %25 = load i32, ptr %row_index, align 4, !tbaa !30
  %idxprom12 = sext i32 %25 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %24, i64 %idxprom12
  %arraydecay = getelementptr inbounds [16 x i32], ptr %arrayidx13, i64 0, i64 0
  store ptr %arraydecay, ptr %dither0, align 8, !tbaa !4
  %26 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither14 = getelementptr inbounds %struct.my_cquantizer, ptr %26, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [4 x ptr], ptr %odither14, i64 0, i64 1
  %27 = load ptr, ptr %arrayidx15, align 8, !tbaa !4
  %28 = load i32, ptr %row_index, align 4, !tbaa !30
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds [16 x i32], ptr %27, i64 %idxprom16
  %arraydecay18 = getelementptr inbounds [16 x i32], ptr %arrayidx17, i64 0, i64 0
  store ptr %arraydecay18, ptr %dither1, align 8, !tbaa !4
  %29 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither19 = getelementptr inbounds %struct.my_cquantizer, ptr %29, i32 0, i32 7
  %arrayidx20 = getelementptr inbounds [4 x ptr], ptr %odither19, i64 0, i64 2
  %30 = load ptr, ptr %arrayidx20, align 8, !tbaa !4
  %31 = load i32, ptr %row_index, align 4, !tbaa !30
  %idxprom21 = sext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %30, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [16 x i32], ptr %arrayidx22, i64 0, i64 0
  store ptr %arraydecay23, ptr %dither2, align 8, !tbaa !4
  store i32 0, ptr %col_index, align 4, !tbaa !30
  %32 = load i32, ptr %width, align 4, !tbaa !30
  store i32 %32, ptr %col, align 4, !tbaa !30
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %for.body
  %33 = load i32, ptr %col, align 4, !tbaa !30
  %cmp25 = icmp ugt i32 %33, 0
  br i1 %cmp25, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond24
  %34 = load ptr, ptr %colorindex0, align 8, !tbaa !4
  %35 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %input_ptr, align 8, !tbaa !4
  %36 = load i16, ptr %35, align 2, !tbaa !43
  %conv = sext i16 %36 to i32
  %37 = load ptr, ptr %dither0, align 8, !tbaa !4
  %38 = load i32, ptr %col_index, align 4, !tbaa !30
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %37, i64 %idxprom27
  %39 = load i32, ptr %arrayidx28, align 4, !tbaa !30
  %add = add nsw i32 %conv, %39
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %34, i64 %idxprom29
  %40 = load i16, ptr %arrayidx30, align 2, !tbaa !43
  %conv31 = sext i16 %40 to i32
  store i32 %conv31, ptr %pixcode, align 4, !tbaa !30
  %41 = load ptr, ptr %colorindex1, align 8, !tbaa !4
  %42 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %incdec.ptr32 = getelementptr inbounds i16, ptr %42, i32 1
  store ptr %incdec.ptr32, ptr %input_ptr, align 8, !tbaa !4
  %43 = load i16, ptr %42, align 2, !tbaa !43
  %conv33 = sext i16 %43 to i32
  %44 = load ptr, ptr %dither1, align 8, !tbaa !4
  %45 = load i32, ptr %col_index, align 4, !tbaa !30
  %idxprom34 = sext i32 %45 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %44, i64 %idxprom34
  %46 = load i32, ptr %arrayidx35, align 4, !tbaa !30
  %add36 = add nsw i32 %conv33, %46
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %41, i64 %idxprom37
  %47 = load i16, ptr %arrayidx38, align 2, !tbaa !43
  %conv39 = sext i16 %47 to i32
  %48 = load i32, ptr %pixcode, align 4, !tbaa !30
  %add40 = add nsw i32 %48, %conv39
  store i32 %add40, ptr %pixcode, align 4, !tbaa !30
  %49 = load ptr, ptr %colorindex24, align 8, !tbaa !4
  %50 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %incdec.ptr41 = getelementptr inbounds i16, ptr %50, i32 1
  store ptr %incdec.ptr41, ptr %input_ptr, align 8, !tbaa !4
  %51 = load i16, ptr %50, align 2, !tbaa !43
  %conv42 = sext i16 %51 to i32
  %52 = load ptr, ptr %dither2, align 8, !tbaa !4
  %53 = load i32, ptr %col_index, align 4, !tbaa !30
  %idxprom43 = sext i32 %53 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %52, i64 %idxprom43
  %54 = load i32, ptr %arrayidx44, align 4, !tbaa !30
  %add45 = add nsw i32 %conv42, %54
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %49, i64 %idxprom46
  %55 = load i16, ptr %arrayidx47, align 2, !tbaa !43
  %conv48 = sext i16 %55 to i32
  %56 = load i32, ptr %pixcode, align 4, !tbaa !30
  %add49 = add nsw i32 %56, %conv48
  store i32 %add49, ptr %pixcode, align 4, !tbaa !30
  %57 = load i32, ptr %pixcode, align 4, !tbaa !30
  %conv50 = trunc i32 %57 to i16
  %58 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %incdec.ptr51 = getelementptr inbounds i16, ptr %58, i32 1
  store ptr %incdec.ptr51, ptr %output_ptr, align 8, !tbaa !4
  store i16 %conv50, ptr %58, align 2, !tbaa !43
  %59 = load i32, ptr %col_index, align 4, !tbaa !30
  %add52 = add nsw i32 %59, 1
  %and = and i32 %add52, 15
  store i32 %and, ptr %col_index, align 4, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %60 = load i32, ptr %col, align 4, !tbaa !30
  %dec = add i32 %60, -1
  store i32 %dec, ptr %col, align 4, !tbaa !30
  br label %for.cond24

for.end:                                          ; preds = %for.cond24
  %61 = load i32, ptr %row_index, align 4, !tbaa !30
  %add53 = add nsw i32 %61, 1
  %and54 = and i32 %add53, 15
  store i32 %and54, ptr %row_index, align 4, !tbaa !30
  %62 = load i32, ptr %row_index, align 4, !tbaa !30
  %63 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %row_index55 = getelementptr inbounds %struct.my_cquantizer, ptr %63, i32 0, i32 6
  store i32 %62, ptr %row_index55, align 4, !tbaa !36
  br label %for.inc56

for.inc56:                                        ; preds = %for.end
  %64 = load i32, ptr %row, align 4, !tbaa !30
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.end57:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_index) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row_index) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %dither2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %dither1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %dither0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex24) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_ptr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_ord_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %input_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %colorindex_ci = alloca ptr, align 8
  %dither = alloca ptr, align 8
  %row_index = alloca i32, align 4
  %col_index = alloca i32, align 4
  %nc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %num_rows, ptr %num_rows.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex_ci) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %dither) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row_index) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_index) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #3
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %2, i32 0, i32 29
  %3 = load i32, ptr %out_color_components, align 8, !tbaa !22
  store i32 %3, ptr %nc, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #3
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %4, i32 0, i32 27
  %5 = load i32, ptr %output_width, align 8, !tbaa !39
  store i32 %5, ptr %width, align 4, !tbaa !30
  store i32 0, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %6 = load i32, ptr %row, align 4, !tbaa !30
  %7 = load i32, ptr %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %9 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %11 = load i32, ptr %width, align 4, !tbaa !30
  %conv = zext i32 %11 to i64
  %mul = mul i64 %conv, 2
  call void @jzero_far_12(ptr noundef %10, i64 noundef %mul)
  %12 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %row_index2 = getelementptr inbounds %struct.my_cquantizer, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %row_index2, align 4, !tbaa !36
  store i32 %13, ptr %row_index, align 4, !tbaa !30
  store i32 0, ptr %ci, align 4, !tbaa !30
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %for.body
  %14 = load i32, ptr %ci, align 4, !tbaa !30
  %15 = load i32, ptr %nc, align 4, !tbaa !30
  %cmp4 = icmp slt i32 %14, %15
  br i1 %cmp4, label %for.body6, label %for.end34

for.body6:                                        ; preds = %for.cond3
  %16 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %17 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %16, i64 %idxprom7
  %18 = load ptr, ptr %arrayidx8, align 8, !tbaa !4
  %19 = load i32, ptr %ci, align 4, !tbaa !30
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i16, ptr %18, i64 %idx.ext
  store ptr %add.ptr, ptr %input_ptr, align 8, !tbaa !4
  %20 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %21 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %idxprom9
  %22 = load ptr, ptr %arrayidx10, align 8, !tbaa !4
  store ptr %22, ptr %output_ptr, align 8, !tbaa !4
  %23 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %colorindex, align 8, !tbaa !44
  %25 = load i32, ptr %ci, align 4, !tbaa !30
  %idxprom11 = sext i32 %25 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %24, i64 %idxprom11
  %26 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  store ptr %26, ptr %colorindex_ci, align 8, !tbaa !4
  %27 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither = getelementptr inbounds %struct.my_cquantizer, ptr %27, i32 0, i32 7
  %28 = load i32, ptr %ci, align 4, !tbaa !30
  %idxprom13 = sext i32 %28 to i64
  %arrayidx14 = getelementptr inbounds [4 x ptr], ptr %odither, i64 0, i64 %idxprom13
  %29 = load ptr, ptr %arrayidx14, align 8, !tbaa !4
  %30 = load i32, ptr %row_index, align 4, !tbaa !30
  %idxprom15 = sext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr %29, i64 %idxprom15
  %arraydecay = getelementptr inbounds [16 x i32], ptr %arrayidx16, i64 0, i64 0
  store ptr %arraydecay, ptr %dither, align 8, !tbaa !4
  store i32 0, ptr %col_index, align 4, !tbaa !30
  %31 = load i32, ptr %width, align 4, !tbaa !30
  store i32 %31, ptr %col, align 4, !tbaa !30
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body6
  %32 = load i32, ptr %col, align 4, !tbaa !30
  %cmp18 = icmp ugt i32 %32, 0
  br i1 %cmp18, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond17
  %33 = load ptr, ptr %colorindex_ci, align 8, !tbaa !4
  %34 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %35 = load i16, ptr %34, align 2, !tbaa !43
  %conv21 = sext i16 %35 to i32
  %36 = load ptr, ptr %dither, align 8, !tbaa !4
  %37 = load i32, ptr %col_index, align 4, !tbaa !30
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %36, i64 %idxprom22
  %38 = load i32, ptr %arrayidx23, align 4, !tbaa !30
  %add = add nsw i32 %conv21, %38
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds i16, ptr %33, i64 %idxprom24
  %39 = load i16, ptr %arrayidx25, align 2, !tbaa !43
  %conv26 = sext i16 %39 to i32
  %40 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %41 = load i16, ptr %40, align 2, !tbaa !43
  %conv27 = sext i16 %41 to i32
  %add28 = add nsw i32 %conv27, %conv26
  %conv29 = trunc i32 %add28 to i16
  store i16 %conv29, ptr %40, align 2, !tbaa !43
  %42 = load i32, ptr %nc, align 4, !tbaa !30
  %43 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %idx.ext30 = sext i32 %42 to i64
  %add.ptr31 = getelementptr inbounds i16, ptr %43, i64 %idx.ext30
  store ptr %add.ptr31, ptr %input_ptr, align 8, !tbaa !4
  %44 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %44, i32 1
  store ptr %incdec.ptr, ptr %output_ptr, align 8, !tbaa !4
  %45 = load i32, ptr %col_index, align 4, !tbaa !30
  %add32 = add nsw i32 %45, 1
  %and = and i32 %add32, 15
  store i32 %and, ptr %col_index, align 4, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %for.body20
  %46 = load i32, ptr %col, align 4, !tbaa !30
  %dec = add i32 %46, -1
  store i32 %dec, ptr %col, align 4, !tbaa !30
  br label %for.cond17

for.end:                                          ; preds = %for.cond17
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %47 = load i32, ptr %ci, align 4, !tbaa !30
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !30
  br label %for.cond3

for.end34:                                        ; preds = %for.cond3
  %48 = load i32, ptr %row_index, align 4, !tbaa !30
  %add35 = add nsw i32 %48, 1
  %and36 = and i32 %add35, 15
  store i32 %and36, ptr %row_index, align 4, !tbaa !30
  %49 = load i32, ptr %row_index, align 4, !tbaa !30
  %50 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %row_index37 = getelementptr inbounds %struct.my_cquantizer, ptr %50, i32 0, i32 6
  store i32 %49, ptr %row_index37, align 4, !tbaa !36
  br label %for.inc38

for.inc38:                                        ; preds = %for.end34
  %51 = load i32, ptr %row, align 4, !tbaa !30
  %inc39 = add nsw i32 %51, 1
  store i32 %inc39, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.end40:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_index) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row_index) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %dither) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex_ci) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_odither_tables(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cquantize = alloca ptr, align 8
  %odither = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nci = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %odither) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nci) #3
  store i32 0, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !30
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %3, i32 0, i32 29
  %4 = load i32, ptr %out_color_components, align 8, !tbaa !22
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors = getelementptr inbounds %struct.my_cquantizer, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %Ncolors, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !30
  store i32 %7, ptr %nci, align 4, !tbaa !30
  store ptr null, ptr %odither, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !30
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !30
  %9 = load i32, ptr %i, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32, ptr %nci, align 4, !tbaa !30
  %11 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %Ncolors5 = getelementptr inbounds %struct.my_cquantizer, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %Ncolors5, i64 0, i64 %idxprom6
  %13 = load i32, ptr %arrayidx7, align 4, !tbaa !30
  %cmp8 = icmp eq i32 %10, %13
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %14 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither9 = getelementptr inbounds %struct.my_cquantizer, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [4 x ptr], ptr %odither9, i64 0, i64 %idxprom10
  %16 = load ptr, ptr %arrayidx11, align 8, !tbaa !4
  store ptr %16, ptr %odither, align 8, !tbaa !4
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4, !tbaa !30
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !30
  br label %for.cond2

for.end:                                          ; preds = %if.then, %for.cond2
  %18 = load ptr, ptr %odither, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %18, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  %19 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %20 = load i32, ptr %nci, align 4, !tbaa !30
  %call = call ptr @make_odither_array(ptr noundef %19, i32 noundef %20)
  store ptr %call, ptr %odither, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  %21 = load ptr, ptr %odither, align 8, !tbaa !4
  %22 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %odither15 = getelementptr inbounds %struct.my_cquantizer, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [4 x ptr], ptr %odither15, i64 0, i64 %idxprom16
  store ptr %21, ptr %arrayidx17, align 8, !tbaa !4
  br label %for.inc18

for.inc18:                                        ; preds = %if.end14
  %24 = load i32, ptr %i, align 4, !tbaa !30
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %nci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %odither) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_fs_dither(ptr noundef %cinfo, ptr noundef %input_buf, ptr noundef %output_buf, i32 noundef %num_rows) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %input_buf.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %num_rows.addr = alloca i32, align 4
  %cquantize = alloca ptr, align 8
  %cur = alloca i64, align 8
  %belowerr = alloca i64, align 8
  %bpreverr = alloca i64, align 8
  %bnexterr = alloca i64, align 8
  %delta = alloca i64, align 8
  %errorptr = alloca ptr, align 8
  %input_ptr = alloca ptr, align 8
  %output_ptr = alloca ptr, align 8
  %colorindex_ci = alloca ptr, align 8
  %colormap_ci = alloca ptr, align 8
  %pixcode = alloca i32, align 4
  %nc = alloca i32, align 4
  %dir = alloca i32, align 4
  %dirnc = alloca i32, align 4
  %ci = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %width = alloca i32, align 4
  %range_limit = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %input_buf, ptr %input_buf.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %num_rows, ptr %num_rows.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cquantize) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %cquantize1 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 87
  %1 = load ptr, ptr %cquantize1, align 8, !tbaa !16
  store ptr %1, ptr %cquantize, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %belowerr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bpreverr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bnexterr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %errorptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %colorindex_ci) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %colormap_ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #3
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %2, i32 0, i32 29
  %3 = load i32, ptr %out_color_components, align 8, !tbaa !22
  store i32 %3, ptr %nc, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %dir) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %dirnc) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #3
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %4, i32 0, i32 27
  %5 = load i32, ptr %output_width, align 8, !tbaa !39
  store i32 %5, ptr %width, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_limit) #3
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %sample_range_limit = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %6, i32 0, i32 65
  %7 = load ptr, ptr %sample_range_limit, align 8, !tbaa !46
  store ptr %7, ptr %range_limit, align 8, !tbaa !4
  store i32 0, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %entry
  %8 = load i32, ptr %row, align 4, !tbaa !30
  %9 = load i32, ptr %num_rows.addr, align 4, !tbaa !30
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %11 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %13 = load i32, ptr %width, align 4, !tbaa !30
  %conv = zext i32 %13 to i64
  %mul = mul i64 %conv, 2
  call void @jzero_far_12(ptr noundef %12, i64 noundef %mul)
  store i32 0, ptr %ci, align 4, !tbaa !30
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc68, %for.body
  %14 = load i32, ptr %ci, align 4, !tbaa !30
  %15 = load i32, ptr %nc, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %for.body5, label %for.end69

for.body5:                                        ; preds = %for.cond2
  %16 = load ptr, ptr %input_buf.addr, align 8, !tbaa !4
  %17 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %16, i64 %idxprom6
  %18 = load ptr, ptr %arrayidx7, align 8, !tbaa !4
  %19 = load i32, ptr %ci, align 4, !tbaa !30
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i16, ptr %18, i64 %idx.ext
  store ptr %add.ptr, ptr %input_ptr, align 8, !tbaa !4
  %20 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %21 = load i32, ptr %row, align 4, !tbaa !30
  %idxprom8 = sext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %20, i64 %idxprom8
  %22 = load ptr, ptr %arrayidx9, align 8, !tbaa !4
  store ptr %22, ptr %output_ptr, align 8, !tbaa !4
  %23 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %on_odd_row = getelementptr inbounds %struct.my_cquantizer, ptr %23, i32 0, i32 9
  %24 = load i32, ptr %on_odd_row, align 8, !tbaa !38
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body5
  %25 = load i32, ptr %width, align 4, !tbaa !30
  %sub = sub i32 %25, 1
  %26 = load i32, ptr %nc, align 4, !tbaa !30
  %mul10 = mul i32 %sub, %26
  %27 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %idx.ext11 = zext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i16, ptr %27, i64 %idx.ext11
  store ptr %add.ptr12, ptr %input_ptr, align 8, !tbaa !4
  %28 = load i32, ptr %width, align 4, !tbaa !30
  %sub13 = sub i32 %28, 1
  %29 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %idx.ext14 = zext i32 %sub13 to i64
  %add.ptr15 = getelementptr inbounds i16, ptr %29, i64 %idx.ext14
  store ptr %add.ptr15, ptr %output_ptr, align 8, !tbaa !4
  store i32 -1, ptr %dir, align 4, !tbaa !30
  %30 = load i32, ptr %nc, align 4, !tbaa !30
  %sub16 = sub nsw i32 0, %30
  store i32 %sub16, ptr %dirnc, align 4, !tbaa !30
  %31 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %fserrors = getelementptr inbounds %struct.my_cquantizer, ptr %31, i32 0, i32 8
  %32 = load i32, ptr %ci, align 4, !tbaa !30
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds [4 x ptr], ptr %fserrors, i64 0, i64 %idxprom17
  %33 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  %34 = load i32, ptr %width, align 4, !tbaa !30
  %add = add i32 %34, 1
  %idx.ext19 = zext i32 %add to i64
  %add.ptr20 = getelementptr inbounds i64, ptr %33, i64 %idx.ext19
  store ptr %add.ptr20, ptr %errorptr, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %for.body5
  store i32 1, ptr %dir, align 4, !tbaa !30
  %35 = load i32, ptr %nc, align 4, !tbaa !30
  store i32 %35, ptr %dirnc, align 4, !tbaa !30
  %36 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %fserrors21 = getelementptr inbounds %struct.my_cquantizer, ptr %36, i32 0, i32 8
  %37 = load i32, ptr %ci, align 4, !tbaa !30
  %idxprom22 = sext i32 %37 to i64
  %arrayidx23 = getelementptr inbounds [4 x ptr], ptr %fserrors21, i64 0, i64 %idxprom22
  %38 = load ptr, ptr %arrayidx23, align 8, !tbaa !4
  store ptr %38, ptr %errorptr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %39 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %colorindex = getelementptr inbounds %struct.my_cquantizer, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %colorindex, align 8, !tbaa !44
  %41 = load i32, ptr %ci, align 4, !tbaa !30
  %idxprom24 = sext i32 %41 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %40, i64 %idxprom24
  %42 = load ptr, ptr %arrayidx25, align 8, !tbaa !4
  store ptr %42, ptr %colorindex_ci, align 8, !tbaa !4
  %43 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %sv_colormap = getelementptr inbounds %struct.my_cquantizer, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %sv_colormap, align 8, !tbaa !31
  %45 = load i32, ptr %ci, align 4, !tbaa !30
  %idxprom26 = sext i32 %45 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %44, i64 %idxprom26
  %46 = load ptr, ptr %arrayidx27, align 8, !tbaa !4
  store ptr %46, ptr %colormap_ci, align 8, !tbaa !4
  store i64 0, ptr %cur, align 8, !tbaa !40
  store i64 0, ptr %bpreverr, align 8, !tbaa !40
  store i64 0, ptr %belowerr, align 8, !tbaa !40
  %47 = load i32, ptr %width, align 4, !tbaa !30
  store i32 %47, ptr %col, align 4, !tbaa !30
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %if.end
  %48 = load i32, ptr %col, align 4, !tbaa !30
  %cmp29 = icmp ugt i32 %48, 0
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond28
  %49 = load i64, ptr %cur, align 8, !tbaa !40
  %50 = load ptr, ptr %errorptr, align 8, !tbaa !4
  %51 = load i32, ptr %dir, align 4, !tbaa !30
  %idxprom32 = sext i32 %51 to i64
  %arrayidx33 = getelementptr inbounds i64, ptr %50, i64 %idxprom32
  %52 = load i64, ptr %arrayidx33, align 8, !tbaa !40
  %add34 = add nsw i64 %49, %52
  %add35 = add nsw i64 %add34, 8
  %shr = ashr i64 %add35, 4
  store i64 %shr, ptr %cur, align 8, !tbaa !40
  %53 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %54 = load i16, ptr %53, align 2, !tbaa !43
  %conv36 = sext i16 %54 to i32
  %conv37 = sext i32 %conv36 to i64
  %55 = load i64, ptr %cur, align 8, !tbaa !40
  %add38 = add nsw i64 %55, %conv37
  store i64 %add38, ptr %cur, align 8, !tbaa !40
  %56 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %57 = load i64, ptr %cur, align 8, !tbaa !40
  %arrayidx39 = getelementptr inbounds i16, ptr %56, i64 %57
  %58 = load i16, ptr %arrayidx39, align 2, !tbaa !43
  %conv40 = sext i16 %58 to i32
  %conv41 = sext i32 %conv40 to i64
  store i64 %conv41, ptr %cur, align 8, !tbaa !40
  %59 = load ptr, ptr %colorindex_ci, align 8, !tbaa !4
  %60 = load i64, ptr %cur, align 8, !tbaa !40
  %arrayidx42 = getelementptr inbounds i16, ptr %59, i64 %60
  %61 = load i16, ptr %arrayidx42, align 2, !tbaa !43
  %conv43 = sext i16 %61 to i32
  store i32 %conv43, ptr %pixcode, align 4, !tbaa !30
  %62 = load i32, ptr %pixcode, align 4, !tbaa !30
  %conv44 = trunc i32 %62 to i16
  %conv45 = sext i16 %conv44 to i32
  %63 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %64 = load i16, ptr %63, align 2, !tbaa !43
  %conv46 = sext i16 %64 to i32
  %add47 = add nsw i32 %conv46, %conv45
  %conv48 = trunc i32 %add47 to i16
  store i16 %conv48, ptr %63, align 2, !tbaa !43
  %65 = load ptr, ptr %colormap_ci, align 8, !tbaa !4
  %66 = load i32, ptr %pixcode, align 4, !tbaa !30
  %idxprom49 = sext i32 %66 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %65, i64 %idxprom49
  %67 = load i16, ptr %arrayidx50, align 2, !tbaa !43
  %conv51 = sext i16 %67 to i32
  %conv52 = sext i32 %conv51 to i64
  %68 = load i64, ptr %cur, align 8, !tbaa !40
  %sub53 = sub nsw i64 %68, %conv52
  store i64 %sub53, ptr %cur, align 8, !tbaa !40
  %69 = load i64, ptr %cur, align 8, !tbaa !40
  store i64 %69, ptr %bnexterr, align 8, !tbaa !40
  %70 = load i64, ptr %cur, align 8, !tbaa !40
  %mul54 = mul nsw i64 %70, 2
  store i64 %mul54, ptr %delta, align 8, !tbaa !40
  %71 = load i64, ptr %delta, align 8, !tbaa !40
  %72 = load i64, ptr %cur, align 8, !tbaa !40
  %add55 = add nsw i64 %72, %71
  store i64 %add55, ptr %cur, align 8, !tbaa !40
  %73 = load i64, ptr %bpreverr, align 8, !tbaa !40
  %74 = load i64, ptr %cur, align 8, !tbaa !40
  %add56 = add nsw i64 %73, %74
  %75 = load ptr, ptr %errorptr, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds i64, ptr %75, i64 0
  store i64 %add56, ptr %arrayidx57, align 8, !tbaa !40
  %76 = load i64, ptr %delta, align 8, !tbaa !40
  %77 = load i64, ptr %cur, align 8, !tbaa !40
  %add58 = add nsw i64 %77, %76
  store i64 %add58, ptr %cur, align 8, !tbaa !40
  %78 = load i64, ptr %belowerr, align 8, !tbaa !40
  %79 = load i64, ptr %cur, align 8, !tbaa !40
  %add59 = add nsw i64 %78, %79
  store i64 %add59, ptr %bpreverr, align 8, !tbaa !40
  %80 = load i64, ptr %bnexterr, align 8, !tbaa !40
  store i64 %80, ptr %belowerr, align 8, !tbaa !40
  %81 = load i64, ptr %delta, align 8, !tbaa !40
  %82 = load i64, ptr %cur, align 8, !tbaa !40
  %add60 = add nsw i64 %82, %81
  store i64 %add60, ptr %cur, align 8, !tbaa !40
  %83 = load i32, ptr %dirnc, align 4, !tbaa !30
  %84 = load ptr, ptr %input_ptr, align 8, !tbaa !4
  %idx.ext61 = sext i32 %83 to i64
  %add.ptr62 = getelementptr inbounds i16, ptr %84, i64 %idx.ext61
  store ptr %add.ptr62, ptr %input_ptr, align 8, !tbaa !4
  %85 = load i32, ptr %dir, align 4, !tbaa !30
  %86 = load ptr, ptr %output_ptr, align 8, !tbaa !4
  %idx.ext63 = sext i32 %85 to i64
  %add.ptr64 = getelementptr inbounds i16, ptr %86, i64 %idx.ext63
  store ptr %add.ptr64, ptr %output_ptr, align 8, !tbaa !4
  %87 = load i32, ptr %dir, align 4, !tbaa !30
  %88 = load ptr, ptr %errorptr, align 8, !tbaa !4
  %idx.ext65 = sext i32 %87 to i64
  %add.ptr66 = getelementptr inbounds i64, ptr %88, i64 %idx.ext65
  store ptr %add.ptr66, ptr %errorptr, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body31
  %89 = load i32, ptr %col, align 4, !tbaa !30
  %dec = add i32 %89, -1
  store i32 %dec, ptr %col, align 4, !tbaa !30
  br label %for.cond28

for.end:                                          ; preds = %for.cond28
  %90 = load i64, ptr %bpreverr, align 8, !tbaa !40
  %91 = load ptr, ptr %errorptr, align 8, !tbaa !4
  %arrayidx67 = getelementptr inbounds i64, ptr %91, i64 0
  store i64 %90, ptr %arrayidx67, align 8, !tbaa !40
  br label %for.inc68

for.inc68:                                        ; preds = %for.end
  %92 = load i32, ptr %ci, align 4, !tbaa !30
  %inc = add nsw i32 %92, 1
  store i32 %inc, ptr %ci, align 4, !tbaa !30
  br label %for.cond2

for.end69:                                        ; preds = %for.cond2
  %93 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %on_odd_row70 = getelementptr inbounds %struct.my_cquantizer, ptr %93, i32 0, i32 9
  %94 = load i32, ptr %on_odd_row70, align 8, !tbaa !38
  %tobool71 = icmp ne i32 %94, 0
  %95 = zext i1 %tobool71 to i64
  %cond = select i1 %tobool71, i32 0, i32 1
  %96 = load ptr, ptr %cquantize, align 8, !tbaa !4
  %on_odd_row72 = getelementptr inbounds %struct.my_cquantizer, ptr %96, i32 0, i32 9
  store i32 %cond, ptr %on_odd_row72, align 8, !tbaa !38
  br label %for.inc73

for.inc73:                                        ; preds = %for.end69
  %97 = load i32, ptr %row, align 4, !tbaa !30
  %inc74 = add nsw i32 %97, 1
  store i32 %inc74, ptr %row, align 4, !tbaa !30
  br label %for.cond

for.end75:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_limit) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dirnc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dir) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pixcode) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colormap_ci) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %colorindex_ci) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_ptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %errorptr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bnexterr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bpreverr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %belowerr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cquantize) #3
  ret void
}

declare void @jzero_far_12(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @make_odither_array(ptr noundef %cinfo, i32 noundef %ncolors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ncolors.addr = alloca i32, align 4
  %odither = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %ncolors, ptr %ncolors.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %odither) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %den) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr12, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8, !tbaa !13
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 1024)
  store ptr %call, ptr %odither, align 8, !tbaa !4
  %4 = load i32, ptr %ncolors.addr, align 4, !tbaa !30
  %sub = sub nsw i32 %4, 1
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 512, %conv
  store i64 %mul, ptr %den, align 8, !tbaa !40
  store i32 0, ptr %j, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %5 = load i32, ptr %j, align 4, !tbaa !30
  %cmp = icmp slt i32 %5, 16
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !30
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %k, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %6, 16
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %7 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %idxprom
  %8 = load i32, ptr %k, align 4, !tbaa !30
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [16 x i8], ptr %arrayidx, i64 0, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1, !tbaa !26
  %conv8 = zext i8 %9 to i32
  %mul9 = mul nsw i32 2, %conv8
  %sub10 = sub nsw i32 255, %mul9
  %conv11 = sext i32 %sub10 to i64
  %mul12 = mul nsw i64 %conv11, 4095
  store i64 %mul12, ptr %num, align 8, !tbaa !40
  %10 = load i64, ptr %num, align 8, !tbaa !40
  %cmp13 = icmp slt i64 %10, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body5
  %11 = load i64, ptr %num, align 8, !tbaa !40
  %sub15 = sub nsw i64 0, %11
  %12 = load i64, ptr %den, align 8, !tbaa !40
  %div = sdiv i64 %sub15, %12
  %sub16 = sub nsw i64 0, %div
  br label %cond.end

cond.false:                                       ; preds = %for.body5
  %13 = load i64, ptr %num, align 8, !tbaa !40
  %14 = load i64, ptr %den, align 8, !tbaa !40
  %div17 = sdiv i64 %13, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub16, %cond.true ], [ %div17, %cond.false ]
  %conv18 = trunc i64 %cond to i32
  %15 = load ptr, ptr %odither, align 8, !tbaa !4
  %16 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %15, i64 %idxprom19
  %17 = load i32, ptr %k, align 4, !tbaa !30
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  store i32 %conv18, ptr %arrayidx22, align 4, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, ptr %k, align 4, !tbaa !30
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %k, align 4, !tbaa !30
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %19 = load i32, ptr %j, align 4, !tbaa !30
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !30
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  %20 = load ptr, ptr %odither, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %den) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %odither) #3
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define internal i32 @select_ncolors(ptr noundef %cinfo, ptr noundef %Ncolors) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %Ncolors.addr = alloca ptr, align 8
  %nc = alloca i32, align 4
  %max_colors = alloca i32, align 4
  %total_colors = alloca i32, align 4
  %iroot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %changed = alloca i32, align 4
  %temp = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %Ncolors, ptr %Ncolors.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #3
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_components = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %0, i32 0, i32 29
  %1 = load i32, ptr %out_color_components, align 8, !tbaa !22
  store i32 %1, ptr %nc, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_colors) #3
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %2, i32 0, i32 23
  %3 = load i32, ptr %desired_number_of_colors, align 8, !tbaa !28
  store i32 %3, ptr %max_colors, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_colors) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iroot) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %changed) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #3
  store i32 1, ptr %iroot, align 4, !tbaa !30
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i32, ptr %iroot, align 4, !tbaa !30
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %iroot, align 4, !tbaa !30
  %5 = load i32, ptr %iroot, align 4, !tbaa !30
  %conv = sext i32 %5 to i64
  store i64 %conv, ptr %temp, align 8, !tbaa !40
  store i32 1, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %6 = load i32, ptr %i, align 4, !tbaa !30
  %7 = load i32, ptr %nc, align 4, !tbaa !30
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %iroot, align 4, !tbaa !30
  %conv2 = sext i32 %8 to i64
  %9 = load i64, ptr %temp, align 8, !tbaa !40
  %mul = mul nsw i64 %9, %conv2
  store i64 %mul, ptr %temp, align 8, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !30
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, ptr %i, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %11 = load i64, ptr %temp, align 8, !tbaa !40
  %12 = load i32, ptr %max_colors, align 4, !tbaa !30
  %conv4 = sext i32 %12 to i64
  %cmp5 = icmp sle i64 %11, %conv4
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %iroot, align 4, !tbaa !30
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %iroot, align 4, !tbaa !30
  %14 = load i32, ptr %iroot, align 4, !tbaa !30
  %cmp7 = icmp slt i32 %14, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %15 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8, !tbaa !23
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %16, i32 0, i32 5
  store i32 56, ptr %msg_code, align 8, !tbaa !24
  %17 = load i64, ptr %temp, align 8, !tbaa !40
  %conv9 = trunc i64 %17 to i32
  %18 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err10, align 8, !tbaa !23
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %19, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %conv9, ptr %arrayidx, align 4, !tbaa !26
  %20 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err11, align 8, !tbaa !23
  %error_exit12 = getelementptr inbounds %struct.jpeg_error_mgr12, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %error_exit12, align 8, !tbaa !27
  %23 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %22(ptr noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  store i32 1, ptr %total_colors, align 4, !tbaa !30
  store i32 0, ptr %i, align 4, !tbaa !30
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %if.end
  %24 = load i32, ptr %i, align 4, !tbaa !30
  %25 = load i32, ptr %nc, align 4, !tbaa !30
  %cmp13 = icmp slt i32 %24, %25
  br i1 %cmp13, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond12
  %26 = load i32, ptr %iroot, align 4, !tbaa !30
  %27 = load ptr, ptr %Ncolors.addr, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %27, i64 %idxprom
  store i32 %26, ptr %arrayidx16, align 4, !tbaa !30
  %29 = load i32, ptr %iroot, align 4, !tbaa !30
  %30 = load i32, ptr %total_colors, align 4, !tbaa !30
  %mul17 = mul nsw i32 %30, %29
  store i32 %mul17, ptr %total_colors, align 4, !tbaa !30
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %31 = load i32, ptr %i, align 4, !tbaa !30
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !30
  br label %for.cond12

for.end20:                                        ; preds = %for.cond12
  br label %do.body21

do.body21:                                        ; preds = %do.cond49, %for.end20
  store i32 0, ptr %changed, align 4, !tbaa !30
  store i32 0, ptr %i, align 4, !tbaa !30
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc46, %do.body21
  %32 = load i32, ptr %i, align 4, !tbaa !30
  %33 = load i32, ptr %nc, align 4, !tbaa !30
  %cmp23 = icmp slt i32 %32, %33
  br i1 %cmp23, label %for.body25, label %for.end48

for.body25:                                       ; preds = %for.cond22
  %34 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct12, ptr %34, i32 0, i32 11
  %35 = load i32, ptr %out_color_space, align 8, !tbaa !47
  %cmp26 = icmp eq i32 %35, 2
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body25
  %36 = load i32, ptr %i, align 4, !tbaa !30
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], ptr @select_ncolors.RGB_order, i64 0, i64 %idxprom28
  %37 = load i32, ptr %arrayidx29, align 4, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %for.body25
  %38 = load i32, ptr %i, align 4, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  store i32 %cond, ptr %j, align 4, !tbaa !30
  %39 = load i32, ptr %total_colors, align 4, !tbaa !30
  %40 = load ptr, ptr %Ncolors.addr, align 8, !tbaa !4
  %41 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %40, i64 %idxprom30
  %42 = load i32, ptr %arrayidx31, align 4, !tbaa !30
  %div = sdiv i32 %39, %42
  %conv32 = sext i32 %div to i64
  store i64 %conv32, ptr %temp, align 8, !tbaa !40
  %43 = load ptr, ptr %Ncolors.addr, align 8, !tbaa !4
  %44 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %43, i64 %idxprom33
  %45 = load i32, ptr %arrayidx34, align 4, !tbaa !30
  %add = add nsw i32 %45, 1
  %conv35 = sext i32 %add to i64
  %46 = load i64, ptr %temp, align 8, !tbaa !40
  %mul36 = mul nsw i64 %46, %conv35
  store i64 %mul36, ptr %temp, align 8, !tbaa !40
  %47 = load i64, ptr %temp, align 8, !tbaa !40
  %48 = load i32, ptr %max_colors, align 4, !tbaa !30
  %conv37 = sext i32 %48 to i64
  %cmp38 = icmp sgt i64 %47, %conv37
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %cond.end
  br label %for.end48

if.end41:                                         ; preds = %cond.end
  %49 = load ptr, ptr %Ncolors.addr, align 8, !tbaa !4
  %50 = load i32, ptr %j, align 4, !tbaa !30
  %idxprom42 = sext i32 %50 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %49, i64 %idxprom42
  %51 = load i32, ptr %arrayidx43, align 4, !tbaa !30
  %inc44 = add nsw i32 %51, 1
  store i32 %inc44, ptr %arrayidx43, align 4, !tbaa !30
  %52 = load i64, ptr %temp, align 8, !tbaa !40
  %conv45 = trunc i64 %52 to i32
  store i32 %conv45, ptr %total_colors, align 4, !tbaa !30
  store i32 1, ptr %changed, align 4, !tbaa !30
  br label %for.inc46

for.inc46:                                        ; preds = %if.end41
  %53 = load i32, ptr %i, align 4, !tbaa !30
  %inc47 = add nsw i32 %53, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !30
  br label %for.cond22

for.end48:                                        ; preds = %if.then40, %for.cond22
  br label %do.cond49

do.cond49:                                        ; preds = %for.end48
  %54 = load i32, ptr %changed, align 4, !tbaa !30
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %do.body21, label %do.end50

do.end50:                                         ; preds = %do.cond49
  %55 = load i32, ptr %total_colors, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %changed) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iroot) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_colors) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_colors) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #3
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @output_value(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %ci, ptr %ci.addr, align 4, !tbaa !30
  store i32 %j, ptr %j.addr, align 4, !tbaa !30
  store i32 %maxj, ptr %maxj.addr, align 4, !tbaa !30
  %0 = load i32, ptr %j.addr, align 4, !tbaa !30
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 4095
  %1 = load i32, ptr %maxj.addr, align 4, !tbaa !30
  %div = sdiv i32 %1, 2
  %conv1 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv1
  %2 = load i32, ptr %maxj.addr, align 4, !tbaa !30
  %conv2 = sext i32 %2 to i64
  %div3 = sdiv i64 %add, %conv2
  %conv4 = trunc i64 %div3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind uwtable
define internal i32 @largest_input_value(ptr noundef %cinfo, i32 noundef %ci, i32 noundef %j, i32 noundef %maxj) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %maxj.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %ci, ptr %ci.addr, align 4, !tbaa !30
  store i32 %j, ptr %j.addr, align 4, !tbaa !30
  store i32 %maxj, ptr %maxj.addr, align 4, !tbaa !30
  %0 = load i32, ptr %j.addr, align 4, !tbaa !30
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = mul nsw i64 %conv, 4095
  %1 = load i32, ptr %maxj.addr, align 4, !tbaa !30
  %conv2 = sext i32 %1 to i64
  %add3 = add nsw i64 %mul1, %conv2
  %2 = load i32, ptr %maxj.addr, align 4, !tbaa !30
  %mul4 = mul nsw i32 2, %2
  %conv5 = sext i32 %mul4 to i64
  %div = sdiv i64 %add3, %conv5
  %conv6 = trunc i64 %div to i32
  ret i32 %conv6
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !5, i64 8}
!9 = !{!"jpeg_decompress_struct12", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36, !5, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !6, i64 60, !6, i64 64, !10, i64 68, !10, i64 72, !11, i64 80, !10, i64 88, !10, i64 92, !6, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !6, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !5, i64 160, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !5, i64 192, !6, i64 200, !6, i64 232, !6, i64 264, !10, i64 296, !5, i64 304, !10, i64 312, !10, i64 316, !6, i64 320, !6, i64 336, !6, i64 352, !10, i64 368, !10, i64 372, !6, i64 376, !6, i64 377, !6, i64 378, !12, i64 380, !12, i64 382, !10, i64 384, !6, i64 388, !10, i64 392, !5, i64 400, !10, i64 408, !10, i64 412, !10, i64 416, !10, i64 420, !5, i64 424, !10, i64 432, !6, i64 440, !10, i64 472, !10, i64 476, !10, i64 480, !6, i64 484, !10, i64 524, !10, i64 528, !10, i64 532, !10, i64 536, !10, i64 540, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608, !5, i64 616, !5, i64 624}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"jpeg_memory_mgr12", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !15, i64 88, !15, i64 96}
!15 = !{!"long", !6, i64 0}
!16 = !{!9, !5, i64 624}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !19, i64 0, !5, i64 32, !10, i64 40, !5, i64 48, !10, i64 56, !6, i64 60, !10, i64 76, !6, i64 80, !6, i64 112, !10, i64 144}
!19 = !{!"jpeg_color_quantizer", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!18, !5, i64 16}
!21 = !{!18, !5, i64 24}
!22 = !{!9, !10, i64 144}
!23 = !{!9, !5, i64 0}
!24 = !{!25, !10, i64 40}
!25 = !{!"jpeg_error_mgr12", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !6, i64 44, !10, i64 124, !15, i64 128, !5, i64 136, !10, i64 144, !5, i64 152, !10, i64 160, !10, i64 164}
!26 = !{!6, !6, i64 0}
!27 = !{!25, !5, i64 0}
!28 = !{!9, !10, i64 120}
!29 = !{!9, !6, i64 112}
!30 = !{!10, !10, i64 0}
!31 = !{!18, !5, i64 32}
!32 = !{!9, !5, i64 160}
!33 = !{!18, !10, i64 40}
!34 = !{!9, !10, i64 156}
!35 = !{!18, !5, i64 8}
!36 = !{!18, !10, i64 76}
!37 = !{!18, !10, i64 56}
!38 = !{!18, !10, i64 144}
!39 = !{!9, !10, i64 136}
!40 = !{!15, !15, i64 0}
!41 = !{!25, !5, i64 8}
!42 = !{!14, !5, i64 16}
!43 = !{!12, !12, i64 0}
!44 = !{!18, !5, i64 48}
!45 = !{!14, !5, i64 8}
!46 = !{!9, !5, i64 424}
!47 = !{!9, !6, i64 64}

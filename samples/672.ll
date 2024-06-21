; ModuleID = 'samples/672.bc'
source_filename = "/local-ssd/qnnpack-5s4m2mifet7jvrowqpfel6paccwfp5nw-build/aidengro/spack-stage-qnnpack-2019-08-28-5s4m2mifet7jvrowqpfel6paccwfp5nw/spack-src/src/indirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxdiv_divisor_size_t = type { i64, i64, i8, i8 }
%struct.fxdiv_result_size_t = type { i64, i64 }
%struct.qnnp_operator = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i64, ptr, i64, i64, i64, ptr, ptr, float, float, i8, i8, i8, i8, i8, i64, i64, i64, ptr, ptr, ptr, ptr, [8 x i8], %union.anon, i32, i32, [8 x i8] }
%union.anon = type { %union.qnnp_conv_quantization_params, [16 x i8] }
%union.qnnp_conv_quantization_params = type { %struct.anon.2 }
%struct.anon.2 = type { [8 x i16], [8 x i16], [4 x i32], [2 x i64], [4 x i32], [4 x i32], [2 x i64], [8 x i16], [16 x i8], [16 x i8] }
%struct.fxdiv_divisor_uint64_t = type { i64, i64, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden void @qnnp_indirection_init_conv2d(ptr noundef %op, i64 noundef %output_tile_size, i64 noundef %tiled_output_size) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %output_tile_size.addr = alloca i64, align 8
  %tiled_output_size.addr = alloca i64, align 8
  %indirection_buffer = alloca ptr, align 8
  %input = alloca ptr, align 8
  %input_pixel_stride = alloca i64, align 8
  %zero = alloca ptr, align 8
  %groups = alloca i64, align 8
  %group_input_channels = alloca i64, align 8
  %batch_size = alloca i64, align 8
  %input_height = alloca i64, align 8
  %input_width = alloca i64, align 8
  %output_height = alloca i64, align 8
  %output_width = alloca i64, align 8
  %kernel_height = alloca i64, align 8
  %kernel_width = alloca i64, align 8
  %stride_height = alloca i64, align 8
  %stride_width = alloca i64, align 8
  %dilation_height = alloca i64, align 8
  %dilation_width = alloca i64, align 8
  %input_padding_top = alloca i64, align 8
  %input_padding_left = alloca i64, align 8
  %output_size = alloca i64, align 8
  %kernel_size = alloca i64, align 8
  %output_width_divisor = alloca %struct.fxdiv_divisor_size_t, align 8
  %group = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %image = alloca i64, align 8
  %output_tile_start = alloca i64, align 8
  %output_tile_offset = alloca i64, align 8
  %tiled_output_index = alloca i64, align 8
  %output_index = alloca i64, align 8
  %output_index_components = alloca %struct.fxdiv_result_size_t, align 8
  %output_y = alloca i64, align 8
  %output_x = alloca i64, align 8
  %kernel_y = alloca i64, align 8
  %input_y = alloca i64, align 8
  %kernel_x = alloca i64, align 8
  %input_x = alloca i64, align 8
  %index = alloca i64, align 8
  %kernel_x88 = alloca i64, align 8
  %index94 = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !5
  store i64 %output_tile_size, ptr %output_tile_size.addr, align 8, !tbaa !9
  store i64 %tiled_output_size, ptr %tiled_output_size.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirection_buffer) #4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %indirection_buffer1 = getelementptr inbounds %struct.qnnp_operator, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %indirection_buffer1, align 8, !tbaa !11
  store ptr %1, ptr %indirection_buffer, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #4
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input2 = getelementptr inbounds %struct.qnnp_operator, ptr %2, i32 0, i32 22
  %3 = load ptr, ptr %input2, align 16, !tbaa !15
  store ptr %3, ptr %input, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_pixel_stride) #4
  %4 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_pixel_stride3 = getelementptr inbounds %struct.qnnp_operator, ptr %4, i32 0, i32 21
  %5 = load i64, ptr %input_pixel_stride3, align 8, !tbaa !16
  store i64 %5, ptr %input_pixel_stride, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #4
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %zero_pointer = getelementptr inbounds %struct.qnnp_operator, ptr %6, i32 0, i32 44
  %7 = load ptr, ptr %zero_pointer, align 8, !tbaa !17
  store ptr %7, ptr %zero, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %groups) #4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %groups4 = getelementptr inbounds %struct.qnnp_operator, ptr %8, i32 0, i32 13
  %9 = load i32, ptr %groups4, align 8, !tbaa !18
  %conv = zext i32 %9 to i64
  store i64 %conv, ptr %groups, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_input_channels) #4
  %10 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %group_input_channels5 = getelementptr inbounds %struct.qnnp_operator, ptr %10, i32 0, i32 16
  %11 = load i64, ptr %group_input_channels5, align 16, !tbaa !19
  store i64 %11, ptr %group_input_channels, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch_size) #4
  %12 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %batch_size6 = getelementptr inbounds %struct.qnnp_operator, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %batch_size6, align 16, !tbaa !20
  store i64 %13, ptr %batch_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_height) #4
  %14 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_height7 = getelementptr inbounds %struct.qnnp_operator, ptr %14, i32 0, i32 19
  %15 = load i64, ptr %input_height7, align 8, !tbaa !21
  store i64 %15, ptr %input_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_width) #4
  %16 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_width8 = getelementptr inbounds %struct.qnnp_operator, ptr %16, i32 0, i32 20
  %17 = load i64, ptr %input_width8, align 16, !tbaa !22
  store i64 %17, ptr %input_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_height) #4
  %18 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_height9 = getelementptr inbounds %struct.qnnp_operator, ptr %18, i32 0, i32 27
  %19 = load i64, ptr %output_height9, align 8, !tbaa !23
  store i64 %19, ptr %output_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_width) #4
  %20 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_width10 = getelementptr inbounds %struct.qnnp_operator, ptr %20, i32 0, i32 28
  %21 = load i64, ptr %output_width10, align 16, !tbaa !24
  store i64 %21, ptr %output_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_height) #4
  %22 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_height11 = getelementptr inbounds %struct.qnnp_operator, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %kernel_height11, align 16, !tbaa !25
  %conv12 = zext i32 %23 to i64
  store i64 %conv12, ptr %kernel_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_width) #4
  %24 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_width13 = getelementptr inbounds %struct.qnnp_operator, ptr %24, i32 0, i32 8
  %25 = load i32, ptr %kernel_width13, align 4, !tbaa !26
  %conv14 = zext i32 %25 to i64
  store i64 %conv14, ptr %kernel_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_height) #4
  %26 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_height15 = getelementptr inbounds %struct.qnnp_operator, ptr %26, i32 0, i32 9
  %27 = load i32, ptr %stride_height15, align 8, !tbaa !27
  %conv16 = zext i32 %27 to i64
  store i64 %conv16, ptr %stride_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_width) #4
  %28 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_width17 = getelementptr inbounds %struct.qnnp_operator, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %stride_width17, align 4, !tbaa !28
  %conv18 = zext i32 %29 to i64
  store i64 %conv18, ptr %stride_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_height) #4
  %30 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_height19 = getelementptr inbounds %struct.qnnp_operator, ptr %30, i32 0, i32 11
  %31 = load i32, ptr %dilation_height19, align 16, !tbaa !29
  %conv20 = zext i32 %31 to i64
  store i64 %conv20, ptr %dilation_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_width) #4
  %32 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_width21 = getelementptr inbounds %struct.qnnp_operator, ptr %32, i32 0, i32 12
  %33 = load i32, ptr %dilation_width21, align 4, !tbaa !30
  %conv22 = zext i32 %33 to i64
  store i64 %conv22, ptr %dilation_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_top) #4
  %34 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_top23 = getelementptr inbounds %struct.qnnp_operator, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %input_padding_top23, align 8, !tbaa !31
  %conv24 = zext i32 %35 to i64
  store i64 %conv24, ptr %input_padding_top, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_left) #4
  %36 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_left25 = getelementptr inbounds %struct.qnnp_operator, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %input_padding_left25, align 4, !tbaa !32
  %conv26 = zext i32 %37 to i64
  store i64 %conv26, ptr %input_padding_left, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_size) #4
  %38 = load i64, ptr %output_height, align 8, !tbaa !9
  %39 = load i64, ptr %output_width, align 8, !tbaa !9
  %mul = mul i64 %38, %39
  store i64 %mul, ptr %output_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_size) #4
  %40 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %41 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %mul27 = mul i64 %40, %41
  store i64 %mul27, ptr %kernel_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %output_width_divisor) #4
  %42 = load i64, ptr %output_width, align 8, !tbaa !9
  call void @fxdiv_init_size_t(ptr sret(%struct.fxdiv_divisor_size_t) align 8 %output_width_divisor, i64 noundef %42)
  call void @llvm.lifetime.start.p0(i64 8, ptr %group) #4
  store i64 0, ptr %group, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc123, %entry
  %43 = load i64, ptr %group, align 8, !tbaa !9
  %44 = load i64, ptr %groups, align 8, !tbaa !9
  %cmp = icmp ult i64 %43, %44
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %group) #4
  br label %for.end125

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #4
  store i64 0, ptr %image, align 8, !tbaa !9
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc120, %for.body
  %45 = load i64, ptr %image, align 8, !tbaa !9
  %46 = load i64, ptr %batch_size, align 8, !tbaa !9
  %cmp30 = icmp ult i64 %45, %46
  br i1 %cmp30, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond29
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #4
  br label %for.end122

for.body33:                                       ; preds = %for.cond29
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_tile_start) #4
  store i64 0, ptr %output_tile_start, align 8, !tbaa !9
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc117, %for.body33
  %47 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %48 = load i64, ptr %tiled_output_size.addr, align 8, !tbaa !9
  %cmp35 = icmp ult i64 %47, %48
  br i1 %cmp35, label %for.body38, label %for.cond.cleanup37

for.cond.cleanup37:                               ; preds = %for.cond34
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_tile_start) #4
  br label %for.end119

for.body38:                                       ; preds = %for.cond34
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_tile_offset) #4
  store i64 0, ptr %output_tile_offset, align 8, !tbaa !9
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc114, %for.body38
  %49 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %50 = load i64, ptr %output_tile_size.addr, align 8, !tbaa !9
  %cmp40 = icmp ult i64 %49, %50
  br i1 %cmp40, label %for.body43, label %for.cond.cleanup42

for.cond.cleanup42:                               ; preds = %for.cond39
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_tile_offset) #4
  br label %for.end116

for.body43:                                       ; preds = %for.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %tiled_output_index) #4
  %51 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %52 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %add = add i64 %51, %52
  store i64 %add, ptr %tiled_output_index, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_index) #4
  %53 = load i64, ptr %tiled_output_index, align 8, !tbaa !9
  %54 = load i64, ptr %output_size, align 8, !tbaa !9
  %sub = sub i64 %54, 1
  %call = call i64 @min(i64 noundef %53, i64 noundef %sub)
  store i64 %call, ptr %output_index, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %output_index_components) #4
  %55 = load i64, ptr %output_index, align 8, !tbaa !9
  %call44 = call { i64, i64 } @fxdiv_divide_size_t(i64 noundef %55, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %output_width_divisor)
  %56 = getelementptr inbounds { i64, i64 }, ptr %output_index_components, i32 0, i32 0
  %57 = extractvalue { i64, i64 } %call44, 0
  store i64 %57, ptr %56, align 8
  %58 = getelementptr inbounds { i64, i64 }, ptr %output_index_components, i32 0, i32 1
  %59 = extractvalue { i64, i64 } %call44, 1
  store i64 %59, ptr %58, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_y) #4
  %quotient = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %output_index_components, i32 0, i32 0
  %60 = load i64, ptr %quotient, align 8, !tbaa !33
  store i64 %60, ptr %output_y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_x) #4
  %remainder = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %output_index_components, i32 0, i32 1
  %61 = load i64, ptr %remainder, align 8, !tbaa !35
  store i64 %61, ptr %output_x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_y) #4
  store i64 0, ptr %kernel_y, align 8, !tbaa !9
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc111, %for.body43
  %62 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %63 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %cmp46 = icmp ult i64 %62, %63
  br i1 %cmp46, label %for.body49, label %for.cond.cleanup48

for.cond.cleanup48:                               ; preds = %for.cond45
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_y) #4
  br label %for.end113

for.body49:                                       ; preds = %for.cond45
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_y) #4
  %64 = load i64, ptr %output_y, align 8, !tbaa !9
  %65 = load i64, ptr %stride_height, align 8, !tbaa !9
  %mul50 = mul i64 %64, %65
  %66 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %67 = load i64, ptr %dilation_height, align 8, !tbaa !9
  %mul51 = mul i64 %66, %67
  %add52 = add i64 %mul50, %mul51
  %68 = load i64, ptr %input_padding_top, align 8, !tbaa !9
  %sub53 = sub i64 %add52, %68
  store i64 %sub53, ptr %input_y, align 8, !tbaa !9
  %69 = load i64, ptr %input_y, align 8, !tbaa !9
  %70 = load i64, ptr %input_height, align 8, !tbaa !9
  %cmp54 = icmp ult i64 %69, %70
  br i1 %cmp54, label %if.then, label %if.else87

if.then:                                          ; preds = %for.body49
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_x) #4
  store i64 0, ptr %kernel_x, align 8, !tbaa !9
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc, %if.then
  %71 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %72 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %cmp57 = icmp ult i64 %71, %72
  br i1 %cmp57, label %for.body60, label %for.cond.cleanup59

for.cond.cleanup59:                               ; preds = %for.cond56
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_x) #4
  br label %for.end

for.body60:                                       ; preds = %for.cond56
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_x) #4
  %73 = load i64, ptr %output_x, align 8, !tbaa !9
  %74 = load i64, ptr %stride_width, align 8, !tbaa !9
  %mul61 = mul i64 %73, %74
  %75 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %76 = load i64, ptr %dilation_width, align 8, !tbaa !9
  %mul62 = mul i64 %75, %76
  %add63 = add i64 %mul61, %mul62
  %77 = load i64, ptr %input_padding_left, align 8, !tbaa !9
  %sub64 = sub i64 %add63, %77
  store i64 %sub64, ptr %input_x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #4
  %78 = load i64, ptr %group, align 8, !tbaa !9
  %79 = load i64, ptr %batch_size, align 8, !tbaa !9
  %mul65 = mul i64 %78, %79
  %80 = load i64, ptr %image, align 8, !tbaa !9
  %add66 = add i64 %mul65, %80
  %81 = load i64, ptr %tiled_output_size.addr, align 8, !tbaa !9
  %mul67 = mul i64 %add66, %81
  %82 = load i64, ptr %kernel_size, align 8, !tbaa !9
  %mul68 = mul i64 %mul67, %82
  %83 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %84 = load i64, ptr %kernel_size, align 8, !tbaa !9
  %mul69 = mul i64 %83, %84
  %add70 = add i64 %mul68, %mul69
  %85 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %86 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %mul71 = mul i64 %85, %86
  %87 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %add72 = add i64 %mul71, %87
  %88 = load i64, ptr %output_tile_size.addr, align 8, !tbaa !9
  %mul73 = mul i64 %add72, %88
  %add74 = add i64 %add70, %mul73
  %89 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %add75 = add i64 %add74, %89
  store i64 %add75, ptr %index, align 8, !tbaa !9
  %90 = load i64, ptr %input_x, align 8, !tbaa !9
  %91 = load i64, ptr %input_width, align 8, !tbaa !9
  %cmp76 = icmp ult i64 %90, %91
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %for.body60
  %92 = load ptr, ptr %input, align 8, !tbaa !5
  %93 = load i64, ptr %image, align 8, !tbaa !9
  %94 = load i64, ptr %input_height, align 8, !tbaa !9
  %mul79 = mul i64 %93, %94
  %95 = load i64, ptr %input_y, align 8, !tbaa !9
  %add80 = add i64 %mul79, %95
  %96 = load i64, ptr %input_width, align 8, !tbaa !9
  %mul81 = mul i64 %add80, %96
  %97 = load i64, ptr %input_x, align 8, !tbaa !9
  %add82 = add i64 %mul81, %97
  %98 = load i64, ptr %input_pixel_stride, align 8, !tbaa !9
  %mul83 = mul i64 %add82, %98
  %add.ptr = getelementptr inbounds i8, ptr %92, i64 %mul83
  %99 = load i64, ptr %group, align 8, !tbaa !9
  %100 = load i64, ptr %group_input_channels, align 8, !tbaa !9
  %mul84 = mul i64 %99, %100
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr, i64 %mul84
  %101 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %102 = load i64, ptr %index, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %101, i64 %102
  store ptr %add.ptr85, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body60
  %103 = load ptr, ptr %zero, align 8, !tbaa !5
  %104 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %105 = load i64, ptr %index, align 8, !tbaa !9
  %arrayidx86 = getelementptr inbounds ptr, ptr %104, i64 %105
  store ptr %103, ptr %arrayidx86, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then78
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_x) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %106 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %inc = add i64 %106, 1
  store i64 %inc, ptr %kernel_x, align 8, !tbaa !9
  br label %for.cond56

for.end:                                          ; preds = %for.cond.cleanup59
  br label %if.end110

if.else87:                                        ; preds = %for.body49
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_x88) #4
  store i64 0, ptr %kernel_x88, align 8, !tbaa !9
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc107, %if.else87
  %107 = load i64, ptr %kernel_x88, align 8, !tbaa !9
  %108 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %cmp90 = icmp ult i64 %107, %108
  br i1 %cmp90, label %for.body93, label %for.cond.cleanup92

for.cond.cleanup92:                               ; preds = %for.cond89
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_x88) #4
  br label %for.end109

for.body93:                                       ; preds = %for.cond89
  call void @llvm.lifetime.start.p0(i64 8, ptr %index94) #4
  %109 = load i64, ptr %group, align 8, !tbaa !9
  %110 = load i64, ptr %batch_size, align 8, !tbaa !9
  %mul95 = mul i64 %109, %110
  %111 = load i64, ptr %image, align 8, !tbaa !9
  %add96 = add i64 %mul95, %111
  %112 = load i64, ptr %tiled_output_size.addr, align 8, !tbaa !9
  %mul97 = mul i64 %add96, %112
  %113 = load i64, ptr %kernel_size, align 8, !tbaa !9
  %mul98 = mul i64 %mul97, %113
  %114 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %115 = load i64, ptr %kernel_size, align 8, !tbaa !9
  %mul99 = mul i64 %114, %115
  %add100 = add i64 %mul98, %mul99
  %116 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %117 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %mul101 = mul i64 %116, %117
  %118 = load i64, ptr %kernel_x88, align 8, !tbaa !9
  %add102 = add i64 %mul101, %118
  %119 = load i64, ptr %output_tile_size.addr, align 8, !tbaa !9
  %mul103 = mul i64 %add102, %119
  %add104 = add i64 %add100, %mul103
  %120 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %add105 = add i64 %add104, %120
  store i64 %add105, ptr %index94, align 8, !tbaa !9
  %121 = load ptr, ptr %zero, align 8, !tbaa !5
  %122 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %123 = load i64, ptr %index94, align 8, !tbaa !9
  %arrayidx106 = getelementptr inbounds ptr, ptr %122, i64 %123
  store ptr %121, ptr %arrayidx106, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %index94) #4
  br label %for.inc107

for.inc107:                                       ; preds = %for.body93
  %124 = load i64, ptr %kernel_x88, align 8, !tbaa !9
  %inc108 = add i64 %124, 1
  store i64 %inc108, ptr %kernel_x88, align 8, !tbaa !9
  br label %for.cond89

for.end109:                                       ; preds = %for.cond.cleanup92
  br label %if.end110

if.end110:                                        ; preds = %for.end109, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_y) #4
  br label %for.inc111

for.inc111:                                       ; preds = %if.end110
  %125 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %inc112 = add i64 %125, 1
  store i64 %inc112, ptr %kernel_y, align 8, !tbaa !9
  br label %for.cond45

for.end113:                                       ; preds = %for.cond.cleanup48
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_x) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_y) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %output_index_components) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tiled_output_index) #4
  br label %for.inc114

for.inc114:                                       ; preds = %for.end113
  %126 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %inc115 = add i64 %126, 1
  store i64 %inc115, ptr %output_tile_offset, align 8, !tbaa !9
  br label %for.cond39

for.end116:                                       ; preds = %for.cond.cleanup42
  br label %for.inc117

for.inc117:                                       ; preds = %for.end116
  %127 = load i64, ptr %output_tile_size.addr, align 8, !tbaa !9
  %128 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %add118 = add i64 %128, %127
  store i64 %add118, ptr %output_tile_start, align 8, !tbaa !9
  br label %for.cond34

for.end119:                                       ; preds = %for.cond.cleanup37
  br label %for.inc120

for.inc120:                                       ; preds = %for.end119
  %129 = load i64, ptr %image, align 8, !tbaa !9
  %inc121 = add i64 %129, 1
  store i64 %inc121, ptr %image, align 8, !tbaa !9
  br label %for.cond29

for.end122:                                       ; preds = %for.cond.cleanup32
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %130 = load i64, ptr %group, align 8, !tbaa !9
  %inc124 = add i64 %130, 1
  store i64 %inc124, ptr %group, align 8, !tbaa !9
  br label %for.cond

for.end125:                                       ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr %output_width_divisor) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_top) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_input_channels) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %groups) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_pixel_stride) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirection_buffer) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @fxdiv_init_size_t(ptr noalias sret(%struct.fxdiv_divisor_size_t) align 8 %agg.result, i64 noundef %d) #2 {
entry:
  %d.addr = alloca i64, align 8
  %uint_result = alloca %struct.fxdiv_divisor_uint64_t, align 8
  store i64 %d, ptr %d.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %uint_result) #4
  %0 = load i64, ptr %d.addr, align 8, !tbaa !9
  call void @fxdiv_init_uint64_t(ptr sret(%struct.fxdiv_divisor_uint64_t) align 8 %uint_result, i64 noundef %0)
  %value = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 0
  %value1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 0
  %1 = load i64, ptr %value1, align 8, !tbaa !36
  store i64 %1, ptr %value, align 8, !tbaa !38
  %m = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 1
  %m2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 1
  %2 = load i64, ptr %m2, align 8, !tbaa !40
  store i64 %2, ptr %m, align 8, !tbaa !41
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 2
  %s13 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 2
  %3 = load i8, ptr %s13, align 8, !tbaa !42
  store i8 %3, ptr %s1, align 8, !tbaa !43
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 3
  %s24 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 3
  %4 = load i8, ptr %s24, align 1, !tbaa !44
  store i8 %4, ptr %s2, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 24, ptr %uint_result) #4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @min(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !9
  %1 = load i64, ptr %b.addr, align 8, !tbaa !9
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %b.addr, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i64 } @fxdiv_divide_size_t(i64 noundef %n, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %divisor) #2 {
entry:
  %retval = alloca %struct.fxdiv_result_size_t, align 8
  %n.addr = alloca i64, align 8
  %quotient = alloca i64, align 8
  %remainder = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %quotient) #4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !9
  %call = call i64 @fxdiv_quotient_size_t(i64 noundef %0, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %divisor)
  store i64 %call, ptr %quotient, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %remainder) #4
  %1 = load i64, ptr %n.addr, align 8, !tbaa !9
  %2 = load i64, ptr %quotient, align 8, !tbaa !9
  %value = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 0
  %3 = load i64, ptr %value, align 8, !tbaa !38
  %mul = mul i64 %2, %3
  %sub = sub i64 %1, %mul
  store i64 %sub, ptr %remainder, align 8, !tbaa !9
  %quotient1 = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %retval, i32 0, i32 0
  %4 = load i64, ptr %quotient, align 8, !tbaa !9
  store i64 %4, ptr %quotient1, align 8, !tbaa !33
  %remainder2 = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %retval, i32 0, i32 1
  %5 = load i64, ptr %remainder, align 8, !tbaa !9
  store i64 %5, ptr %remainder2, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %remainder) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %quotient) #4
  %6 = load { i64, i64 }, ptr %retval, align 8
  ret { i64, i64 } %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @qnnp_indirection_init_dwconv2d(ptr noundef %op, i64 noundef %batch_start, i64 noundef %step_height, i64 noundef %step_width) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %batch_start.addr = alloca i64, align 8
  %step_height.addr = alloca i64, align 8
  %step_width.addr = alloca i64, align 8
  %indirection_buffer = alloca ptr, align 8
  %input = alloca ptr, align 8
  %input_pixel_stride = alloca i64, align 8
  %zero = alloca ptr, align 8
  %batch_size = alloca i64, align 8
  %input_height = alloca i64, align 8
  %input_width = alloca i64, align 8
  %output_height = alloca i64, align 8
  %output_width = alloca i64, align 8
  %kernel_height = alloca i64, align 8
  %kernel_width = alloca i64, align 8
  %stride_height = alloca i64, align 8
  %stride_width = alloca i64, align 8
  %dilation_height = alloca i64, align 8
  %dilation_width = alloca i64, align 8
  %input_padding_top = alloca i64, align 8
  %input_padding_left = alloca i64, align 8
  %image = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %output_y = alloca i64, align 8
  %kernel_y = alloca i64, align 8
  %input_y = alloca i64, align 8
  %output_x = alloca i64, align 8
  %kernel_x = alloca i64, align 8
  %input_x = alloca i64, align 8
  %index = alloca i64, align 8
  %output_x74 = alloca i64, align 8
  %kernel_x80 = alloca i64, align 8
  %index86 = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !5
  store i64 %batch_start, ptr %batch_start.addr, align 8, !tbaa !9
  store i64 %step_height, ptr %step_height.addr, align 8, !tbaa !9
  store i64 %step_width, ptr %step_width.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirection_buffer) #4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %indirection_buffer1 = getelementptr inbounds %struct.qnnp_operator, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %indirection_buffer1, align 8, !tbaa !11
  store ptr %1, ptr %indirection_buffer, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #4
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input2 = getelementptr inbounds %struct.qnnp_operator, ptr %2, i32 0, i32 22
  %3 = load ptr, ptr %input2, align 16, !tbaa !15
  store ptr %3, ptr %input, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_pixel_stride) #4
  %4 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_pixel_stride3 = getelementptr inbounds %struct.qnnp_operator, ptr %4, i32 0, i32 21
  %5 = load i64, ptr %input_pixel_stride3, align 8, !tbaa !16
  store i64 %5, ptr %input_pixel_stride, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #4
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %zero_pointer = getelementptr inbounds %struct.qnnp_operator, ptr %6, i32 0, i32 44
  %7 = load ptr, ptr %zero_pointer, align 8, !tbaa !17
  store ptr %7, ptr %zero, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch_size) #4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %batch_size4 = getelementptr inbounds %struct.qnnp_operator, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %batch_size4, align 16, !tbaa !20
  store i64 %9, ptr %batch_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_height) #4
  %10 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_height5 = getelementptr inbounds %struct.qnnp_operator, ptr %10, i32 0, i32 19
  %11 = load i64, ptr %input_height5, align 8, !tbaa !21
  store i64 %11, ptr %input_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_width) #4
  %12 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_width6 = getelementptr inbounds %struct.qnnp_operator, ptr %12, i32 0, i32 20
  %13 = load i64, ptr %input_width6, align 16, !tbaa !22
  store i64 %13, ptr %input_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_height) #4
  %14 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_height7 = getelementptr inbounds %struct.qnnp_operator, ptr %14, i32 0, i32 27
  %15 = load i64, ptr %output_height7, align 8, !tbaa !23
  store i64 %15, ptr %output_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_width) #4
  %16 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_width8 = getelementptr inbounds %struct.qnnp_operator, ptr %16, i32 0, i32 28
  %17 = load i64, ptr %output_width8, align 16, !tbaa !24
  store i64 %17, ptr %output_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_height) #4
  %18 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_height9 = getelementptr inbounds %struct.qnnp_operator, ptr %18, i32 0, i32 7
  %19 = load i32, ptr %kernel_height9, align 16, !tbaa !25
  %conv = zext i32 %19 to i64
  store i64 %conv, ptr %kernel_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_width) #4
  %20 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_width10 = getelementptr inbounds %struct.qnnp_operator, ptr %20, i32 0, i32 8
  %21 = load i32, ptr %kernel_width10, align 4, !tbaa !26
  %conv11 = zext i32 %21 to i64
  store i64 %conv11, ptr %kernel_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_height) #4
  %22 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_height12 = getelementptr inbounds %struct.qnnp_operator, ptr %22, i32 0, i32 9
  %23 = load i32, ptr %stride_height12, align 8, !tbaa !27
  %conv13 = zext i32 %23 to i64
  store i64 %conv13, ptr %stride_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_width) #4
  %24 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_width14 = getelementptr inbounds %struct.qnnp_operator, ptr %24, i32 0, i32 10
  %25 = load i32, ptr %stride_width14, align 4, !tbaa !28
  %conv15 = zext i32 %25 to i64
  store i64 %conv15, ptr %stride_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_height) #4
  %26 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_height16 = getelementptr inbounds %struct.qnnp_operator, ptr %26, i32 0, i32 11
  %27 = load i32, ptr %dilation_height16, align 16, !tbaa !29
  %conv17 = zext i32 %27 to i64
  store i64 %conv17, ptr %dilation_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_width) #4
  %28 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_width18 = getelementptr inbounds %struct.qnnp_operator, ptr %28, i32 0, i32 12
  %29 = load i32, ptr %dilation_width18, align 4, !tbaa !30
  %conv19 = zext i32 %29 to i64
  store i64 %conv19, ptr %dilation_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_top) #4
  %30 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_top20 = getelementptr inbounds %struct.qnnp_operator, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %input_padding_top20, align 8, !tbaa !31
  %conv21 = zext i32 %31 to i64
  store i64 %conv21, ptr %input_padding_top, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_left) #4
  %32 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_left22 = getelementptr inbounds %struct.qnnp_operator, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %input_padding_left22, align 4, !tbaa !32
  %conv23 = zext i32 %33 to i64
  store i64 %conv23, ptr %input_padding_left, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #4
  %34 = load i64, ptr %batch_start.addr, align 8, !tbaa !9
  store i64 %34, ptr %image, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc110, %entry
  %35 = load i64, ptr %image, align 8, !tbaa !9
  %36 = load i64, ptr %batch_size, align 8, !tbaa !9
  %cmp = icmp ult i64 %35, %36
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #4
  br label %for.end112

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_y) #4
  store i64 0, ptr %output_y, align 8, !tbaa !9
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc107, %for.body
  %37 = load i64, ptr %output_y, align 8, !tbaa !9
  %38 = load i64, ptr %output_height, align 8, !tbaa !9
  %cmp26 = icmp ult i64 %37, %38
  br i1 %cmp26, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond25
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_y) #4
  br label %for.end109

for.body29:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_y) #4
  store i64 0, ptr %kernel_y, align 8, !tbaa !9
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc104, %for.body29
  %39 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %40 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %cmp31 = icmp ult i64 %39, %40
  br i1 %cmp31, label %for.body34, label %for.cond.cleanup33

for.cond.cleanup33:                               ; preds = %for.cond30
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_y) #4
  br label %for.end106

for.body34:                                       ; preds = %for.cond30
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_y) #4
  %41 = load i64, ptr %output_y, align 8, !tbaa !9
  %42 = load i64, ptr %stride_height, align 8, !tbaa !9
  %mul = mul i64 %41, %42
  %43 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %44 = load i64, ptr %dilation_height, align 8, !tbaa !9
  %mul35 = mul i64 %43, %44
  %add = add i64 %mul, %mul35
  %45 = load i64, ptr %input_padding_top, align 8, !tbaa !9
  %sub = sub i64 %add, %45
  store i64 %sub, ptr %input_y, align 8, !tbaa !9
  %46 = load i64, ptr %input_y, align 8, !tbaa !9
  %47 = load i64, ptr %input_height, align 8, !tbaa !9
  %cmp36 = icmp ult i64 %46, %47
  br i1 %cmp36, label %if.then, label %if.else73

if.then:                                          ; preds = %for.body34
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_x) #4
  store i64 0, ptr %output_x, align 8, !tbaa !9
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc70, %if.then
  %48 = load i64, ptr %output_x, align 8, !tbaa !9
  %49 = load i64, ptr %output_width, align 8, !tbaa !9
  %cmp39 = icmp ult i64 %48, %49
  br i1 %cmp39, label %for.body42, label %for.cond.cleanup41

for.cond.cleanup41:                               ; preds = %for.cond38
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_x) #4
  br label %for.end72

for.body42:                                       ; preds = %for.cond38
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_x) #4
  store i64 0, ptr %kernel_x, align 8, !tbaa !9
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc, %for.body42
  %50 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %51 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %cmp44 = icmp ult i64 %50, %51
  br i1 %cmp44, label %for.body47, label %for.cond.cleanup46

for.cond.cleanup46:                               ; preds = %for.cond43
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_x) #4
  br label %for.end

for.body47:                                       ; preds = %for.cond43
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_x) #4
  %52 = load i64, ptr %output_x, align 8, !tbaa !9
  %53 = load i64, ptr %stride_width, align 8, !tbaa !9
  %mul48 = mul i64 %52, %53
  %54 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %55 = load i64, ptr %dilation_width, align 8, !tbaa !9
  %mul49 = mul i64 %54, %55
  %add50 = add i64 %mul48, %mul49
  %56 = load i64, ptr %input_padding_left, align 8, !tbaa !9
  %sub51 = sub i64 %add50, %56
  store i64 %sub51, ptr %input_x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #4
  %57 = load i64, ptr %image, align 8, !tbaa !9
  %58 = load i64, ptr %output_height, align 8, !tbaa !9
  %mul52 = mul i64 %57, %58
  %59 = load i64, ptr %output_y, align 8, !tbaa !9
  %add53 = add i64 %mul52, %59
  %60 = load i64, ptr %step_height.addr, align 8, !tbaa !9
  %mul54 = mul i64 %add53, %60
  %61 = load i64, ptr %output_x, align 8, !tbaa !9
  %62 = load i64, ptr %step_width.addr, align 8, !tbaa !9
  %mul55 = mul i64 %61, %62
  %63 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %mul56 = mul i64 %mul55, %63
  %add57 = add i64 %mul54, %mul56
  %64 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %65 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %mul58 = mul i64 %64, %65
  %add59 = add i64 %add57, %mul58
  %66 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %add60 = add i64 %add59, %66
  store i64 %add60, ptr %index, align 8, !tbaa !9
  %67 = load i64, ptr %input_x, align 8, !tbaa !9
  %68 = load i64, ptr %input_width, align 8, !tbaa !9
  %cmp61 = icmp ult i64 %67, %68
  br i1 %cmp61, label %if.then63, label %if.else

if.then63:                                        ; preds = %for.body47
  %69 = load ptr, ptr %input, align 8, !tbaa !5
  %70 = load i64, ptr %image, align 8, !tbaa !9
  %71 = load i64, ptr %input_height, align 8, !tbaa !9
  %mul64 = mul i64 %70, %71
  %72 = load i64, ptr %input_y, align 8, !tbaa !9
  %add65 = add i64 %mul64, %72
  %73 = load i64, ptr %input_width, align 8, !tbaa !9
  %mul66 = mul i64 %add65, %73
  %74 = load i64, ptr %input_x, align 8, !tbaa !9
  %add67 = add i64 %mul66, %74
  %75 = load i64, ptr %input_pixel_stride, align 8, !tbaa !9
  %mul68 = mul i64 %add67, %75
  %add.ptr = getelementptr inbounds i8, ptr %69, i64 %mul68
  %76 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %77 = load i64, ptr %index, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr %add.ptr, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body47
  %78 = load ptr, ptr %zero, align 8, !tbaa !5
  %79 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %80 = load i64, ptr %index, align 8, !tbaa !9
  %arrayidx69 = getelementptr inbounds ptr, ptr %79, i64 %80
  store ptr %78, ptr %arrayidx69, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then63
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_x) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %81 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %inc = add i64 %81, 1
  store i64 %inc, ptr %kernel_x, align 8, !tbaa !9
  br label %for.cond43

for.end:                                          ; preds = %for.cond.cleanup46
  br label %for.inc70

for.inc70:                                        ; preds = %for.end
  %82 = load i64, ptr %output_x, align 8, !tbaa !9
  %inc71 = add i64 %82, 1
  store i64 %inc71, ptr %output_x, align 8, !tbaa !9
  br label %for.cond38

for.end72:                                        ; preds = %for.cond.cleanup41
  br label %if.end103

if.else73:                                        ; preds = %for.body34
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_x74) #4
  store i64 0, ptr %output_x74, align 8, !tbaa !9
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc100, %if.else73
  %83 = load i64, ptr %output_x74, align 8, !tbaa !9
  %84 = load i64, ptr %output_width, align 8, !tbaa !9
  %cmp76 = icmp ult i64 %83, %84
  br i1 %cmp76, label %for.body79, label %for.cond.cleanup78

for.cond.cleanup78:                               ; preds = %for.cond75
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_x74) #4
  br label %for.end102

for.body79:                                       ; preds = %for.cond75
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_x80) #4
  store i64 0, ptr %kernel_x80, align 8, !tbaa !9
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc97, %for.body79
  %85 = load i64, ptr %kernel_x80, align 8, !tbaa !9
  %86 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %cmp82 = icmp ult i64 %85, %86
  br i1 %cmp82, label %for.body85, label %for.cond.cleanup84

for.cond.cleanup84:                               ; preds = %for.cond81
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_x80) #4
  br label %for.end99

for.body85:                                       ; preds = %for.cond81
  call void @llvm.lifetime.start.p0(i64 8, ptr %index86) #4
  %87 = load i64, ptr %image, align 8, !tbaa !9
  %88 = load i64, ptr %output_height, align 8, !tbaa !9
  %mul87 = mul i64 %87, %88
  %89 = load i64, ptr %output_y, align 8, !tbaa !9
  %add88 = add i64 %mul87, %89
  %90 = load i64, ptr %step_height.addr, align 8, !tbaa !9
  %mul89 = mul i64 %add88, %90
  %91 = load i64, ptr %output_x74, align 8, !tbaa !9
  %92 = load i64, ptr %step_width.addr, align 8, !tbaa !9
  %mul90 = mul i64 %91, %92
  %93 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %mul91 = mul i64 %mul90, %93
  %add92 = add i64 %mul89, %mul91
  %94 = load i64, ptr %kernel_x80, align 8, !tbaa !9
  %95 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %mul93 = mul i64 %94, %95
  %add94 = add i64 %add92, %mul93
  %96 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %add95 = add i64 %add94, %96
  store i64 %add95, ptr %index86, align 8, !tbaa !9
  %97 = load ptr, ptr %zero, align 8, !tbaa !5
  %98 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %99 = load i64, ptr %index86, align 8, !tbaa !9
  %arrayidx96 = getelementptr inbounds ptr, ptr %98, i64 %99
  store ptr %97, ptr %arrayidx96, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %index86) #4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body85
  %100 = load i64, ptr %kernel_x80, align 8, !tbaa !9
  %inc98 = add i64 %100, 1
  store i64 %inc98, ptr %kernel_x80, align 8, !tbaa !9
  br label %for.cond81

for.end99:                                        ; preds = %for.cond.cleanup84
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %101 = load i64, ptr %output_x74, align 8, !tbaa !9
  %inc101 = add i64 %101, 1
  store i64 %inc101, ptr %output_x74, align 8, !tbaa !9
  br label %for.cond75

for.end102:                                       ; preds = %for.cond.cleanup78
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %for.end72
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_y) #4
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %102 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %inc105 = add i64 %102, 1
  store i64 %inc105, ptr %kernel_y, align 8, !tbaa !9
  br label %for.cond30

for.end106:                                       ; preds = %for.cond.cleanup33
  br label %for.inc107

for.inc107:                                       ; preds = %for.end106
  %103 = load i64, ptr %output_y, align 8, !tbaa !9
  %inc108 = add i64 %103, 1
  store i64 %inc108, ptr %output_y, align 8, !tbaa !9
  br label %for.cond25

for.end109:                                       ; preds = %for.cond.cleanup28
  br label %for.inc110

for.inc110:                                       ; preds = %for.end109
  %104 = load i64, ptr %image, align 8, !tbaa !9
  %inc111 = add i64 %104, 1
  store i64 %inc111, ptr %image, align 8, !tbaa !9
  br label %for.cond

for.end112:                                       ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_top) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_pixel_stride) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirection_buffer) #4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @qnnp_indirection_init_deconv2d(ptr noundef %op, i64 noundef %output_tile_size, i64 noundef %tiled_output_size) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %output_tile_size.addr = alloca i64, align 8
  %tiled_output_size.addr = alloca i64, align 8
  %indirection_buffer = alloca ptr, align 8
  %input = alloca ptr, align 8
  %input_pixel_stride = alloca i64, align 8
  %zero = alloca ptr, align 8
  %groups = alloca i64, align 8
  %group_input_channels = alloca i64, align 8
  %batch_size = alloca i64, align 8
  %input_height = alloca i64, align 8
  %input_width = alloca i64, align 8
  %output_height = alloca i64, align 8
  %output_width = alloca i64, align 8
  %kernel_height = alloca i64, align 8
  %kernel_width = alloca i64, align 8
  %stride_height = alloca i64, align 8
  %stride_width = alloca i64, align 8
  %dilation_height = alloca i64, align 8
  %dilation_width = alloca i64, align 8
  %input_padding_top = alloca i64, align 8
  %input_padding_left = alloca i64, align 8
  %output_size = alloca i64, align 8
  %kernel_size = alloca i64, align 8
  %group = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %image = alloca i64, align 8
  %output_tile_start = alloca i64, align 8
  %output_tile_offset = alloca i64, align 8
  %tiled_output_index = alloca i64, align 8
  %output_index = alloca i64, align 8
  %output_y = alloca i64, align 8
  %output_x = alloca i64, align 8
  %kernel_y = alloca i64, align 8
  %y = alloca i64, align 8
  %input_y = alloca i64, align 8
  %kernel_x = alloca i64, align 8
  %x = alloca i64, align 8
  %input_x = alloca i64, align 8
  %index = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !5
  store i64 %output_tile_size, ptr %output_tile_size.addr, align 8, !tbaa !9
  store i64 %tiled_output_size, ptr %tiled_output_size.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirection_buffer) #4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %indirection_buffer1 = getelementptr inbounds %struct.qnnp_operator, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %indirection_buffer1, align 8, !tbaa !11
  store ptr %1, ptr %indirection_buffer, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #4
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input2 = getelementptr inbounds %struct.qnnp_operator, ptr %2, i32 0, i32 22
  %3 = load ptr, ptr %input2, align 16, !tbaa !15
  store ptr %3, ptr %input, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_pixel_stride) #4
  %4 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_pixel_stride3 = getelementptr inbounds %struct.qnnp_operator, ptr %4, i32 0, i32 21
  %5 = load i64, ptr %input_pixel_stride3, align 8, !tbaa !16
  store i64 %5, ptr %input_pixel_stride, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #4
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %zero_pointer = getelementptr inbounds %struct.qnnp_operator, ptr %6, i32 0, i32 44
  %7 = load ptr, ptr %zero_pointer, align 8, !tbaa !17
  store ptr %7, ptr %zero, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %groups) #4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %groups4 = getelementptr inbounds %struct.qnnp_operator, ptr %8, i32 0, i32 13
  %9 = load i32, ptr %groups4, align 8, !tbaa !18
  %conv = zext i32 %9 to i64
  store i64 %conv, ptr %groups, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_input_channels) #4
  %10 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %group_input_channels5 = getelementptr inbounds %struct.qnnp_operator, ptr %10, i32 0, i32 16
  %11 = load i64, ptr %group_input_channels5, align 16, !tbaa !19
  store i64 %11, ptr %group_input_channels, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch_size) #4
  %12 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %batch_size6 = getelementptr inbounds %struct.qnnp_operator, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %batch_size6, align 16, !tbaa !20
  store i64 %13, ptr %batch_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_height) #4
  %14 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_height7 = getelementptr inbounds %struct.qnnp_operator, ptr %14, i32 0, i32 19
  %15 = load i64, ptr %input_height7, align 8, !tbaa !21
  store i64 %15, ptr %input_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_width) #4
  %16 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_width8 = getelementptr inbounds %struct.qnnp_operator, ptr %16, i32 0, i32 20
  %17 = load i64, ptr %input_width8, align 16, !tbaa !22
  store i64 %17, ptr %input_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_height) #4
  %18 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_height9 = getelementptr inbounds %struct.qnnp_operator, ptr %18, i32 0, i32 27
  %19 = load i64, ptr %output_height9, align 8, !tbaa !23
  store i64 %19, ptr %output_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_width) #4
  %20 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_width10 = getelementptr inbounds %struct.qnnp_operator, ptr %20, i32 0, i32 28
  %21 = load i64, ptr %output_width10, align 16, !tbaa !24
  store i64 %21, ptr %output_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_height) #4
  %22 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_height11 = getelementptr inbounds %struct.qnnp_operator, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %kernel_height11, align 16, !tbaa !25
  %conv12 = zext i32 %23 to i64
  store i64 %conv12, ptr %kernel_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_width) #4
  %24 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_width13 = getelementptr inbounds %struct.qnnp_operator, ptr %24, i32 0, i32 8
  %25 = load i32, ptr %kernel_width13, align 4, !tbaa !26
  %conv14 = zext i32 %25 to i64
  store i64 %conv14, ptr %kernel_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_height) #4
  %26 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_height15 = getelementptr inbounds %struct.qnnp_operator, ptr %26, i32 0, i32 9
  %27 = load i32, ptr %stride_height15, align 8, !tbaa !27
  %conv16 = zext i32 %27 to i64
  store i64 %conv16, ptr %stride_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_width) #4
  %28 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_width17 = getelementptr inbounds %struct.qnnp_operator, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %stride_width17, align 4, !tbaa !28
  %conv18 = zext i32 %29 to i64
  store i64 %conv18, ptr %stride_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_height) #4
  %30 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_height19 = getelementptr inbounds %struct.qnnp_operator, ptr %30, i32 0, i32 11
  %31 = load i32, ptr %dilation_height19, align 16, !tbaa !29
  %conv20 = zext i32 %31 to i64
  store i64 %conv20, ptr %dilation_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_width) #4
  %32 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_width21 = getelementptr inbounds %struct.qnnp_operator, ptr %32, i32 0, i32 12
  %33 = load i32, ptr %dilation_width21, align 4, !tbaa !30
  %conv22 = zext i32 %33 to i64
  store i64 %conv22, ptr %dilation_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_top) #4
  %34 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_top23 = getelementptr inbounds %struct.qnnp_operator, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %input_padding_top23, align 8, !tbaa !31
  %conv24 = zext i32 %35 to i64
  store i64 %conv24, ptr %input_padding_top, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_left) #4
  %36 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_left25 = getelementptr inbounds %struct.qnnp_operator, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %input_padding_left25, align 4, !tbaa !32
  %conv26 = zext i32 %37 to i64
  store i64 %conv26, ptr %input_padding_left, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_size) #4
  %38 = load i64, ptr %output_height, align 8, !tbaa !9
  %39 = load i64, ptr %output_width, align 8, !tbaa !9
  %mul = mul i64 %38, %39
  store i64 %mul, ptr %output_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_size) #4
  %40 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %41 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %mul27 = mul i64 %40, %41
  store i64 %mul27, ptr %kernel_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %group) #4
  store i64 0, ptr %group, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc105, %entry
  %42 = load i64, ptr %group, align 8, !tbaa !9
  %43 = load i64, ptr %groups, align 8, !tbaa !9
  %cmp = icmp ult i64 %42, %43
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %group) #4
  br label %for.end107

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #4
  store i64 0, ptr %image, align 8, !tbaa !9
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc102, %for.body
  %44 = load i64, ptr %image, align 8, !tbaa !9
  %45 = load i64, ptr %batch_size, align 8, !tbaa !9
  %cmp30 = icmp ult i64 %44, %45
  br i1 %cmp30, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond29
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #4
  br label %for.end104

for.body33:                                       ; preds = %for.cond29
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_tile_start) #4
  store i64 0, ptr %output_tile_start, align 8, !tbaa !9
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc99, %for.body33
  %46 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %47 = load i64, ptr %tiled_output_size.addr, align 8, !tbaa !9
  %cmp35 = icmp ult i64 %46, %47
  br i1 %cmp35, label %for.body38, label %for.cond.cleanup37

for.cond.cleanup37:                               ; preds = %for.cond34
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_tile_start) #4
  br label %for.end101

for.body38:                                       ; preds = %for.cond34
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_tile_offset) #4
  store i64 0, ptr %output_tile_offset, align 8, !tbaa !9
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc96, %for.body38
  %48 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %49 = load i64, ptr %output_tile_size.addr, align 8, !tbaa !9
  %cmp40 = icmp ult i64 %48, %49
  br i1 %cmp40, label %for.body43, label %for.cond.cleanup42

for.cond.cleanup42:                               ; preds = %for.cond39
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_tile_offset) #4
  br label %for.end98

for.body43:                                       ; preds = %for.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %tiled_output_index) #4
  %50 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %51 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %add = add i64 %50, %51
  store i64 %add, ptr %tiled_output_index, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_index) #4
  %52 = load i64, ptr %tiled_output_index, align 8, !tbaa !9
  %53 = load i64, ptr %output_size, align 8, !tbaa !9
  %sub = sub i64 %53, 1
  %call = call i64 @min(i64 noundef %52, i64 noundef %sub)
  store i64 %call, ptr %output_index, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_y) #4
  %54 = load i64, ptr %output_index, align 8, !tbaa !9
  %55 = load i64, ptr %output_width, align 8, !tbaa !9
  %div = udiv i64 %54, %55
  store i64 %div, ptr %output_y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_x) #4
  %56 = load i64, ptr %output_index, align 8, !tbaa !9
  %57 = load i64, ptr %output_width, align 8, !tbaa !9
  %rem = urem i64 %56, %57
  store i64 %rem, ptr %output_x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_y) #4
  store i64 0, ptr %kernel_y, align 8, !tbaa !9
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc93, %for.body43
  %58 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %59 = load i64, ptr %kernel_height, align 8, !tbaa !9
  %cmp45 = icmp ult i64 %58, %59
  br i1 %cmp45, label %for.body48, label %for.cond.cleanup47

for.cond.cleanup47:                               ; preds = %for.cond44
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_y) #4
  br label %for.end95

for.body48:                                       ; preds = %for.cond44
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  %60 = load i64, ptr %output_y, align 8, !tbaa !9
  %61 = load i64, ptr %input_padding_top, align 8, !tbaa !9
  %add49 = add i64 %60, %61
  %62 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %63 = load i64, ptr %dilation_height, align 8, !tbaa !9
  %mul50 = mul i64 %62, %63
  %sub51 = sub i64 %add49, %mul50
  store i64 %sub51, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_y) #4
  %64 = load i64, ptr %y, align 8, !tbaa !9
  %65 = load i64, ptr %stride_height, align 8, !tbaa !9
  %div52 = udiv i64 %64, %65
  store i64 %div52, ptr %input_y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %kernel_x) #4
  store i64 0, ptr %kernel_x, align 8, !tbaa !9
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc, %for.body48
  %66 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %67 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %cmp54 = icmp ult i64 %66, %67
  br i1 %cmp54, label %for.body57, label %for.cond.cleanup56

for.cond.cleanup56:                               ; preds = %for.cond53
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_x) #4
  br label %for.end

for.body57:                                       ; preds = %for.cond53
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  %68 = load i64, ptr %output_x, align 8, !tbaa !9
  %69 = load i64, ptr %input_padding_left, align 8, !tbaa !9
  %add58 = add i64 %68, %69
  %70 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %71 = load i64, ptr %dilation_width, align 8, !tbaa !9
  %mul59 = mul i64 %70, %71
  %sub60 = sub i64 %add58, %mul59
  store i64 %sub60, ptr %x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_x) #4
  %72 = load i64, ptr %x, align 8, !tbaa !9
  %73 = load i64, ptr %stride_width, align 8, !tbaa !9
  %div61 = udiv i64 %72, %73
  store i64 %div61, ptr %input_x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #4
  %74 = load i64, ptr %group, align 8, !tbaa !9
  %75 = load i64, ptr %batch_size, align 8, !tbaa !9
  %mul62 = mul i64 %74, %75
  %76 = load i64, ptr %image, align 8, !tbaa !9
  %add63 = add i64 %mul62, %76
  %77 = load i64, ptr %tiled_output_size.addr, align 8, !tbaa !9
  %mul64 = mul i64 %add63, %77
  %78 = load i64, ptr %kernel_size, align 8, !tbaa !9
  %mul65 = mul i64 %mul64, %78
  %79 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %80 = load i64, ptr %kernel_size, align 8, !tbaa !9
  %mul66 = mul i64 %79, %80
  %add67 = add i64 %mul65, %mul66
  %81 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %82 = load i64, ptr %kernel_width, align 8, !tbaa !9
  %mul68 = mul i64 %81, %82
  %83 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %add69 = add i64 %mul68, %83
  %84 = load i64, ptr %output_tile_size.addr, align 8, !tbaa !9
  %mul70 = mul i64 %add69, %84
  %add71 = add i64 %add67, %mul70
  %85 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %add72 = add i64 %add71, %85
  store i64 %add72, ptr %index, align 8, !tbaa !9
  %86 = load i64, ptr %input_y, align 8, !tbaa !9
  %87 = load i64, ptr %stride_height, align 8, !tbaa !9
  %mul73 = mul i64 %86, %87
  %88 = load i64, ptr %y, align 8, !tbaa !9
  %cmp74 = icmp eq i64 %mul73, %88
  br i1 %cmp74, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body57
  %89 = load i64, ptr %input_y, align 8, !tbaa !9
  %90 = load i64, ptr %input_height, align 8, !tbaa !9
  %cmp76 = icmp ult i64 %89, %90
  br i1 %cmp76, label %land.lhs.true78, label %if.else

land.lhs.true78:                                  ; preds = %land.lhs.true
  %91 = load i64, ptr %input_x, align 8, !tbaa !9
  %92 = load i64, ptr %stride_width, align 8, !tbaa !9
  %mul79 = mul i64 %91, %92
  %93 = load i64, ptr %x, align 8, !tbaa !9
  %cmp80 = icmp eq i64 %mul79, %93
  br i1 %cmp80, label %land.lhs.true82, label %if.else

land.lhs.true82:                                  ; preds = %land.lhs.true78
  %94 = load i64, ptr %input_x, align 8, !tbaa !9
  %95 = load i64, ptr %input_width, align 8, !tbaa !9
  %cmp83 = icmp ult i64 %94, %95
  br i1 %cmp83, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true82
  %96 = load ptr, ptr %input, align 8, !tbaa !5
  %97 = load i64, ptr %image, align 8, !tbaa !9
  %98 = load i64, ptr %input_height, align 8, !tbaa !9
  %mul85 = mul i64 %97, %98
  %99 = load i64, ptr %input_y, align 8, !tbaa !9
  %add86 = add i64 %mul85, %99
  %100 = load i64, ptr %input_width, align 8, !tbaa !9
  %mul87 = mul i64 %add86, %100
  %101 = load i64, ptr %input_x, align 8, !tbaa !9
  %add88 = add i64 %mul87, %101
  %102 = load i64, ptr %input_pixel_stride, align 8, !tbaa !9
  %mul89 = mul i64 %add88, %102
  %add.ptr = getelementptr inbounds i8, ptr %96, i64 %mul89
  %103 = load i64, ptr %group, align 8, !tbaa !9
  %104 = load i64, ptr %group_input_channels, align 8, !tbaa !9
  %mul90 = mul i64 %103, %104
  %add.ptr91 = getelementptr inbounds i8, ptr %add.ptr, i64 %mul90
  %105 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %106 = load i64, ptr %index, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %105, i64 %106
  store ptr %add.ptr91, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true82, %land.lhs.true78, %land.lhs.true, %for.body57
  %107 = load ptr, ptr %zero, align 8, !tbaa !5
  %108 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %109 = load i64, ptr %index, align 8, !tbaa !9
  %arrayidx92 = getelementptr inbounds ptr, ptr %108, i64 %109
  store ptr %107, ptr %arrayidx92, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_x) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %110 = load i64, ptr %kernel_x, align 8, !tbaa !9
  %inc = add i64 %110, 1
  store i64 %inc, ptr %kernel_x, align 8, !tbaa !9
  br label %for.cond53

for.end:                                          ; preds = %for.cond.cleanup56
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  br label %for.inc93

for.inc93:                                        ; preds = %for.end
  %111 = load i64, ptr %kernel_y, align 8, !tbaa !9
  %inc94 = add i64 %111, 1
  store i64 %inc94, ptr %kernel_y, align 8, !tbaa !9
  br label %for.cond44

for.end95:                                        ; preds = %for.cond.cleanup47
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_x) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tiled_output_index) #4
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %112 = load i64, ptr %output_tile_offset, align 8, !tbaa !9
  %inc97 = add i64 %112, 1
  store i64 %inc97, ptr %output_tile_offset, align 8, !tbaa !9
  br label %for.cond39

for.end98:                                        ; preds = %for.cond.cleanup42
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  %113 = load i64, ptr %output_tile_size.addr, align 8, !tbaa !9
  %114 = load i64, ptr %output_tile_start, align 8, !tbaa !9
  %add100 = add i64 %114, %113
  store i64 %add100, ptr %output_tile_start, align 8, !tbaa !9
  br label %for.cond34

for.end101:                                       ; preds = %for.cond.cleanup37
  br label %for.inc102

for.inc102:                                       ; preds = %for.end101
  %115 = load i64, ptr %image, align 8, !tbaa !9
  %inc103 = add i64 %115, 1
  store i64 %inc103, ptr %image, align 8, !tbaa !9
  br label %for.cond29

for.end104:                                       ; preds = %for.cond.cleanup32
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %116 = load i64, ptr %group, align 8, !tbaa !9
  %inc106 = add i64 %116, 1
  store i64 %inc106, ptr %group, align 8, !tbaa !9
  br label %for.cond

for.end107:                                       ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_top) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kernel_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_input_channels) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %groups) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_pixel_stride) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirection_buffer) #4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @qnnp_indirection_init_maxpool2d(ptr noundef %op, i64 noundef %batch_start, i64 noundef %step_height, i64 noundef %step_width) #0 {
entry:
  %op.addr = alloca ptr, align 8
  %batch_start.addr = alloca i64, align 8
  %step_height.addr = alloca i64, align 8
  %step_width.addr = alloca i64, align 8
  %indirection_buffer = alloca ptr, align 8
  %input = alloca ptr, align 8
  %input_pixel_stride = alloca i64, align 8
  %batch_size = alloca i64, align 8
  %input_height = alloca i64, align 8
  %input_width = alloca i64, align 8
  %output_height = alloca i64, align 8
  %output_width = alloca i64, align 8
  %pooling_height = alloca i64, align 8
  %pooling_width = alloca i64, align 8
  %stride_height = alloca i64, align 8
  %stride_width = alloca i64, align 8
  %dilation_height = alloca i64, align 8
  %dilation_width = alloca i64, align 8
  %input_padding_top = alloca i64, align 8
  %input_padding_left = alloca i64, align 8
  %image = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %output_y = alloca i64, align 8
  %pooling_y = alloca i64, align 8
  %input_y = alloca i64, align 8
  %clamped_input_y = alloca i64, align 8
  %output_x = alloca i64, align 8
  %pooling_x = alloca i64, align 8
  %input_x = alloca i64, align 8
  %clamped_input_x = alloca i64, align 8
  %index = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !5
  store i64 %batch_start, ptr %batch_start.addr, align 8, !tbaa !9
  store i64 %step_height, ptr %step_height.addr, align 8, !tbaa !9
  store i64 %step_width, ptr %step_width.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirection_buffer) #4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %indirection_buffer1 = getelementptr inbounds %struct.qnnp_operator, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %indirection_buffer1, align 8, !tbaa !11
  store ptr %1, ptr %indirection_buffer, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #4
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input2 = getelementptr inbounds %struct.qnnp_operator, ptr %2, i32 0, i32 22
  %3 = load ptr, ptr %input2, align 16, !tbaa !15
  store ptr %3, ptr %input, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_pixel_stride) #4
  %4 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_pixel_stride3 = getelementptr inbounds %struct.qnnp_operator, ptr %4, i32 0, i32 21
  %5 = load i64, ptr %input_pixel_stride3, align 8, !tbaa !16
  store i64 %5, ptr %input_pixel_stride, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch_size) #4
  %6 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %batch_size4 = getelementptr inbounds %struct.qnnp_operator, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %batch_size4, align 16, !tbaa !20
  store i64 %7, ptr %batch_size, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_height) #4
  %8 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_height5 = getelementptr inbounds %struct.qnnp_operator, ptr %8, i32 0, i32 19
  %9 = load i64, ptr %input_height5, align 8, !tbaa !21
  store i64 %9, ptr %input_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_width) #4
  %10 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_width6 = getelementptr inbounds %struct.qnnp_operator, ptr %10, i32 0, i32 20
  %11 = load i64, ptr %input_width6, align 16, !tbaa !22
  store i64 %11, ptr %input_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_height) #4
  %12 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_height7 = getelementptr inbounds %struct.qnnp_operator, ptr %12, i32 0, i32 27
  %13 = load i64, ptr %output_height7, align 8, !tbaa !23
  store i64 %13, ptr %output_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_width) #4
  %14 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %output_width8 = getelementptr inbounds %struct.qnnp_operator, ptr %14, i32 0, i32 28
  %15 = load i64, ptr %output_width8, align 16, !tbaa !24
  store i64 %15, ptr %output_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pooling_height) #4
  %16 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_height = getelementptr inbounds %struct.qnnp_operator, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %kernel_height, align 16, !tbaa !25
  %conv = zext i32 %17 to i64
  store i64 %conv, ptr %pooling_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pooling_width) #4
  %18 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %kernel_width = getelementptr inbounds %struct.qnnp_operator, ptr %18, i32 0, i32 8
  %19 = load i32, ptr %kernel_width, align 4, !tbaa !26
  %conv9 = zext i32 %19 to i64
  store i64 %conv9, ptr %pooling_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_height) #4
  %20 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_height10 = getelementptr inbounds %struct.qnnp_operator, ptr %20, i32 0, i32 9
  %21 = load i32, ptr %stride_height10, align 8, !tbaa !27
  %conv11 = zext i32 %21 to i64
  store i64 %conv11, ptr %stride_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %stride_width) #4
  %22 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %stride_width12 = getelementptr inbounds %struct.qnnp_operator, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %stride_width12, align 4, !tbaa !28
  %conv13 = zext i32 %23 to i64
  store i64 %conv13, ptr %stride_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_height) #4
  %24 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_height14 = getelementptr inbounds %struct.qnnp_operator, ptr %24, i32 0, i32 11
  %25 = load i32, ptr %dilation_height14, align 16, !tbaa !29
  %conv15 = zext i32 %25 to i64
  store i64 %conv15, ptr %dilation_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %dilation_width) #4
  %26 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %dilation_width16 = getelementptr inbounds %struct.qnnp_operator, ptr %26, i32 0, i32 12
  %27 = load i32, ptr %dilation_width16, align 4, !tbaa !30
  %conv17 = zext i32 %27 to i64
  store i64 %conv17, ptr %dilation_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_top) #4
  %28 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_top18 = getelementptr inbounds %struct.qnnp_operator, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %input_padding_top18, align 8, !tbaa !31
  %conv19 = zext i32 %29 to i64
  store i64 %conv19, ptr %input_padding_top, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_padding_left) #4
  %30 = load ptr, ptr %op.addr, align 8, !tbaa !5
  %input_padding_left20 = getelementptr inbounds %struct.qnnp_operator, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %input_padding_left20, align 4, !tbaa !32
  %conv21 = zext i32 %31 to i64
  store i64 %conv21, ptr %input_padding_left, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #4
  %32 = load i64, ptr %batch_start.addr, align 8, !tbaa !9
  store i64 %32, ptr %image, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc74, %entry
  %33 = load i64, ptr %image, align 8, !tbaa !9
  %34 = load i64, ptr %batch_size, align 8, !tbaa !9
  %cmp = icmp ult i64 %33, %34
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #4
  br label %for.end76

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_y) #4
  store i64 0, ptr %output_y, align 8, !tbaa !9
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc71, %for.body
  %35 = load i64, ptr %output_y, align 8, !tbaa !9
  %36 = load i64, ptr %output_height, align 8, !tbaa !9
  %cmp24 = icmp ult i64 %35, %36
  br i1 %cmp24, label %for.body27, label %for.cond.cleanup26

for.cond.cleanup26:                               ; preds = %for.cond23
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_y) #4
  br label %for.end73

for.body27:                                       ; preds = %for.cond23
  call void @llvm.lifetime.start.p0(i64 8, ptr %pooling_y) #4
  store i64 0, ptr %pooling_y, align 8, !tbaa !9
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc68, %for.body27
  %37 = load i64, ptr %pooling_y, align 8, !tbaa !9
  %38 = load i64, ptr %pooling_height, align 8, !tbaa !9
  %cmp29 = icmp ult i64 %37, %38
  br i1 %cmp29, label %for.body32, label %for.cond.cleanup31

for.cond.cleanup31:                               ; preds = %for.cond28
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pooling_y) #4
  br label %for.end70

for.body32:                                       ; preds = %for.cond28
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_y) #4
  %39 = load i64, ptr %output_y, align 8, !tbaa !9
  %40 = load i64, ptr %stride_height, align 8, !tbaa !9
  %mul = mul i64 %39, %40
  %41 = load i64, ptr %pooling_y, align 8, !tbaa !9
  %42 = load i64, ptr %dilation_height, align 8, !tbaa !9
  %mul33 = mul i64 %41, %42
  %add = add i64 %mul, %mul33
  %43 = load i64, ptr %input_padding_top, align 8, !tbaa !9
  %call = call i64 @doz(i64 noundef %add, i64 noundef %43)
  store i64 %call, ptr %input_y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %clamped_input_y) #4
  %44 = load i64, ptr %input_y, align 8, !tbaa !9
  %45 = load i64, ptr %input_height, align 8, !tbaa !9
  %sub = sub i64 %45, 1
  %call34 = call i64 @min(i64 noundef %44, i64 noundef %sub)
  store i64 %call34, ptr %clamped_input_y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_x) #4
  store i64 0, ptr %output_x, align 8, !tbaa !9
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc65, %for.body32
  %46 = load i64, ptr %output_x, align 8, !tbaa !9
  %47 = load i64, ptr %output_width, align 8, !tbaa !9
  %cmp36 = icmp ult i64 %46, %47
  br i1 %cmp36, label %for.body39, label %for.cond.cleanup38

for.cond.cleanup38:                               ; preds = %for.cond35
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_x) #4
  br label %for.end67

for.body39:                                       ; preds = %for.cond35
  call void @llvm.lifetime.start.p0(i64 8, ptr %pooling_x) #4
  store i64 0, ptr %pooling_x, align 8, !tbaa !9
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc, %for.body39
  %48 = load i64, ptr %pooling_x, align 8, !tbaa !9
  %49 = load i64, ptr %pooling_width, align 8, !tbaa !9
  %cmp41 = icmp ult i64 %48, %49
  br i1 %cmp41, label %for.body44, label %for.cond.cleanup43

for.cond.cleanup43:                               ; preds = %for.cond40
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pooling_x) #4
  br label %for.end

for.body44:                                       ; preds = %for.cond40
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_x) #4
  %50 = load i64, ptr %output_x, align 8, !tbaa !9
  %51 = load i64, ptr %stride_width, align 8, !tbaa !9
  %mul45 = mul i64 %50, %51
  %52 = load i64, ptr %pooling_x, align 8, !tbaa !9
  %53 = load i64, ptr %dilation_width, align 8, !tbaa !9
  %mul46 = mul i64 %52, %53
  %add47 = add i64 %mul45, %mul46
  %54 = load i64, ptr %input_padding_left, align 8, !tbaa !9
  %call48 = call i64 @doz(i64 noundef %add47, i64 noundef %54)
  store i64 %call48, ptr %input_x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %clamped_input_x) #4
  %55 = load i64, ptr %input_x, align 8, !tbaa !9
  %56 = load i64, ptr %input_width, align 8, !tbaa !9
  %sub49 = sub i64 %56, 1
  %call50 = call i64 @min(i64 noundef %55, i64 noundef %sub49)
  store i64 %call50, ptr %clamped_input_x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #4
  %57 = load i64, ptr %image, align 8, !tbaa !9
  %58 = load i64, ptr %output_height, align 8, !tbaa !9
  %mul51 = mul i64 %57, %58
  %59 = load i64, ptr %output_y, align 8, !tbaa !9
  %add52 = add i64 %mul51, %59
  %60 = load i64, ptr %step_height.addr, align 8, !tbaa !9
  %mul53 = mul i64 %add52, %60
  %61 = load i64, ptr %output_x, align 8, !tbaa !9
  %62 = load i64, ptr %step_width.addr, align 8, !tbaa !9
  %mul54 = mul i64 %61, %62
  %63 = load i64, ptr %pooling_height, align 8, !tbaa !9
  %mul55 = mul i64 %mul54, %63
  %add56 = add i64 %mul53, %mul55
  %64 = load i64, ptr %pooling_x, align 8, !tbaa !9
  %65 = load i64, ptr %pooling_height, align 8, !tbaa !9
  %mul57 = mul i64 %64, %65
  %add58 = add i64 %add56, %mul57
  %66 = load i64, ptr %pooling_y, align 8, !tbaa !9
  %add59 = add i64 %add58, %66
  store i64 %add59, ptr %index, align 8, !tbaa !9
  %67 = load ptr, ptr %input, align 8, !tbaa !5
  %68 = load i64, ptr %image, align 8, !tbaa !9
  %69 = load i64, ptr %input_height, align 8, !tbaa !9
  %mul60 = mul i64 %68, %69
  %70 = load i64, ptr %clamped_input_y, align 8, !tbaa !9
  %add61 = add i64 %mul60, %70
  %71 = load i64, ptr %input_width, align 8, !tbaa !9
  %mul62 = mul i64 %add61, %71
  %72 = load i64, ptr %clamped_input_x, align 8, !tbaa !9
  %add63 = add i64 %mul62, %72
  %73 = load i64, ptr %input_pixel_stride, align 8, !tbaa !9
  %mul64 = mul i64 %add63, %73
  %add.ptr = getelementptr inbounds i8, ptr %67, i64 %mul64
  %74 = load ptr, ptr %indirection_buffer, align 8, !tbaa !5
  %75 = load i64, ptr %index, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %74, i64 %75
  store ptr %add.ptr, ptr %arrayidx, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %clamped_input_x) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_x) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body44
  %76 = load i64, ptr %pooling_x, align 8, !tbaa !9
  %inc = add i64 %76, 1
  store i64 %inc, ptr %pooling_x, align 8, !tbaa !9
  br label %for.cond40

for.end:                                          ; preds = %for.cond.cleanup43
  br label %for.inc65

for.inc65:                                        ; preds = %for.end
  %77 = load i64, ptr %output_x, align 8, !tbaa !9
  %inc66 = add i64 %77, 1
  store i64 %inc66, ptr %output_x, align 8, !tbaa !9
  br label %for.cond35

for.end67:                                        ; preds = %for.cond.cleanup38
  call void @llvm.lifetime.end.p0(i64 8, ptr %clamped_input_y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_y) #4
  br label %for.inc68

for.inc68:                                        ; preds = %for.end67
  %78 = load i64, ptr %pooling_y, align 8, !tbaa !9
  %inc69 = add i64 %78, 1
  store i64 %inc69, ptr %pooling_y, align 8, !tbaa !9
  br label %for.cond28

for.end70:                                        ; preds = %for.cond.cleanup31
  br label %for.inc71

for.inc71:                                        ; preds = %for.end70
  %79 = load i64, ptr %output_y, align 8, !tbaa !9
  %inc72 = add i64 %79, 1
  store i64 %inc72, ptr %output_y, align 8, !tbaa !9
  br label %for.cond23

for.end73:                                        ; preds = %for.cond.cleanup26
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %80 = load i64, ptr %image, align 8, !tbaa !9
  %inc75 = add i64 %80, 1
  store i64 %inc75, ptr %image, align 8, !tbaa !9
  br label %for.cond

for.end76:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_padding_top) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dilation_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %stride_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pooling_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pooling_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_pixel_stride) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirection_buffer) #4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @doz(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !9
  %1 = load i64, ptr %b.addr, align 8, !tbaa !9
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %b.addr, align 8, !tbaa !9
  %sub = sub i64 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @fxdiv_init_uint64_t(ptr noalias sret(%struct.fxdiv_divisor_uint64_t) align 8 %agg.result, i64 noundef %d) #2 {
entry:
  %d.addr = alloca i64, align 8
  %l_minus_1 = alloca i32, align 4
  %nlz_d = alloca i32, align 4
  %u_hi = alloca i64, align 8
  %d_hi = alloca i64, align 8
  %d_lo = alloca i32, align 4
  %q1 = alloca i64, align 8
  %r1 = alloca i64, align 8
  %q0 = alloca i64, align 8
  %r0 = alloca i64, align 8
  %q = alloca i64, align 8
  store i64 %d, ptr %d.addr, align 8, !tbaa !9
  %value = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 0
  %0 = load i64, ptr %d.addr, align 8, !tbaa !9
  store i64 %0, ptr %value, align 8, !tbaa !36
  %m = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 1
  store i64 0, ptr %m, align 8, !tbaa !40
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 2
  store i8 0, ptr %s1, align 8, !tbaa !42
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 3
  store i8 0, ptr %s2, align 1, !tbaa !44
  %1 = load i64, ptr %d.addr, align 8, !tbaa !9
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %m1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 1
  store i64 1, ptr %m1, align 8, !tbaa !40
  %s12 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 2
  store i8 0, ptr %s12, align 8, !tbaa !42
  %s23 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 3
  store i8 0, ptr %s23, align 1, !tbaa !44
  br label %if.end60

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_minus_1) #4
  %2 = load i64, ptr %d.addr, align 8, !tbaa !9
  %sub = sub i64 %2, 1
  %3 = call i64 @llvm.ctlz.i64(i64 %sub, i1 true)
  %cast = trunc i64 %3 to i32
  %sub4 = sub nsw i32 63, %cast
  store i32 %sub4, ptr %l_minus_1, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlz_d) #4
  %4 = load i64, ptr %d.addr, align 8, !tbaa !9
  %5 = call i64 @llvm.ctlz.i64(i64 %4, i1 true)
  %cast5 = trunc i64 %5 to i32
  store i32 %cast5, ptr %nlz_d, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr %u_hi) #4
  %6 = load i32, ptr %l_minus_1, align 4, !tbaa !46
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 2, %sh_prom
  %7 = load i64, ptr %d.addr, align 8, !tbaa !9
  %sub6 = sub i64 %shl, %7
  store i64 %sub6, ptr %u_hi, align 8, !tbaa !9
  %8 = load i32, ptr %nlz_d, align 4, !tbaa !46
  %9 = load i64, ptr %d.addr, align 8, !tbaa !9
  %sh_prom7 = zext i32 %8 to i64
  %shl8 = shl i64 %9, %sh_prom7
  store i64 %shl8, ptr %d.addr, align 8, !tbaa !9
  %10 = load i32, ptr %nlz_d, align 4, !tbaa !46
  %11 = load i64, ptr %u_hi, align 8, !tbaa !9
  %sh_prom9 = zext i32 %10 to i64
  %shl10 = shl i64 %11, %sh_prom9
  store i64 %shl10, ptr %u_hi, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %d_hi) #4
  %12 = load i64, ptr %d.addr, align 8, !tbaa !9
  %shr = lshr i64 %12, 32
  %conv = trunc i64 %shr to i32
  %conv11 = zext i32 %conv to i64
  store i64 %conv11, ptr %d_hi, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_lo) #4
  %13 = load i64, ptr %d.addr, align 8, !tbaa !9
  %conv12 = trunc i64 %13 to i32
  store i32 %conv12, ptr %d_lo, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr %q1) #4
  %14 = load i64, ptr %u_hi, align 8, !tbaa !9
  %15 = load i64, ptr %d_hi, align 8, !tbaa !9
  %div = udiv i64 %14, %15
  store i64 %div, ptr %q1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #4
  %16 = load i64, ptr %u_hi, align 8, !tbaa !9
  %17 = load i64, ptr %q1, align 8, !tbaa !9
  %18 = load i64, ptr %d_hi, align 8, !tbaa !9
  %mul = mul i64 %17, %18
  %sub13 = sub i64 %16, %mul
  store i64 %sub13, ptr %r1, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %19 = load i64, ptr %q1, align 8, !tbaa !9
  %shr14 = lshr i64 %19, 32
  %cmp15 = icmp ne i64 %shr14, 0
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %20 = load i64, ptr %q1, align 8, !tbaa !9
  %conv17 = trunc i64 %20 to i32
  %21 = load i32, ptr %d_lo, align 4, !tbaa !46
  %call = call i64 @fxdiv_mulext_uint32_t(i32 noundef %conv17, i32 noundef %21)
  %22 = load i64, ptr %r1, align 8, !tbaa !9
  %shl18 = shl i64 %22, 32
  %cmp19 = icmp ugt i64 %call, %shl18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %23 = phi i1 [ true, %while.cond ], [ %cmp19, %lor.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %24 = load i64, ptr %q1, align 8, !tbaa !9
  %sub21 = sub i64 %24, 1
  store i64 %sub21, ptr %q1, align 8, !tbaa !9
  %25 = load i64, ptr %d_hi, align 8, !tbaa !9
  %26 = load i64, ptr %r1, align 8, !tbaa !9
  %add = add i64 %26, %25
  store i64 %add, ptr %r1, align 8, !tbaa !9
  %27 = load i64, ptr %r1, align 8, !tbaa !9
  %shr22 = lshr i64 %27, 32
  %cmp23 = icmp ne i64 %shr22, 0
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then25, %lor.end
  %28 = load i64, ptr %u_hi, align 8, !tbaa !9
  %shl26 = shl i64 %28, 32
  %29 = load i64, ptr %q1, align 8, !tbaa !9
  %30 = load i64, ptr %d.addr, align 8, !tbaa !9
  %mul27 = mul i64 %29, %30
  %sub28 = sub i64 %shl26, %mul27
  store i64 %sub28, ptr %u_hi, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %q0) #4
  %31 = load i64, ptr %u_hi, align 8, !tbaa !9
  %32 = load i64, ptr %d_hi, align 8, !tbaa !9
  %div29 = udiv i64 %31, %32
  store i64 %div29, ptr %q0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0) #4
  %33 = load i64, ptr %u_hi, align 8, !tbaa !9
  %34 = load i64, ptr %q0, align 8, !tbaa !9
  %35 = load i64, ptr %d_hi, align 8, !tbaa !9
  %mul30 = mul i64 %34, %35
  %sub31 = sub i64 %33, %mul30
  store i64 %sub31, ptr %r0, align 8, !tbaa !9
  br label %while.cond32

while.cond32:                                     ; preds = %if.end50, %while.end
  %36 = load i64, ptr %q0, align 8, !tbaa !9
  %shr33 = lshr i64 %36, 32
  %cmp34 = icmp ne i64 %shr33, 0
  br i1 %cmp34, label %lor.end42, label %lor.rhs36

lor.rhs36:                                        ; preds = %while.cond32
  %37 = load i64, ptr %q0, align 8, !tbaa !9
  %conv37 = trunc i64 %37 to i32
  %38 = load i32, ptr %d_lo, align 4, !tbaa !46
  %call38 = call i64 @fxdiv_mulext_uint32_t(i32 noundef %conv37, i32 noundef %38)
  %39 = load i64, ptr %r0, align 8, !tbaa !9
  %shl39 = shl i64 %39, 32
  %cmp40 = icmp ugt i64 %call38, %shl39
  br label %lor.end42

lor.end42:                                        ; preds = %lor.rhs36, %while.cond32
  %40 = phi i1 [ true, %while.cond32 ], [ %cmp40, %lor.rhs36 ]
  br i1 %40, label %while.body43, label %while.end51

while.body43:                                     ; preds = %lor.end42
  %41 = load i64, ptr %q0, align 8, !tbaa !9
  %sub44 = sub i64 %41, 1
  store i64 %sub44, ptr %q0, align 8, !tbaa !9
  %42 = load i64, ptr %d_hi, align 8, !tbaa !9
  %43 = load i64, ptr %r0, align 8, !tbaa !9
  %add45 = add i64 %43, %42
  store i64 %add45, ptr %r0, align 8, !tbaa !9
  %44 = load i64, ptr %r0, align 8, !tbaa !9
  %shr46 = lshr i64 %44, 32
  %cmp47 = icmp ne i64 %shr46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %while.body43
  br label %while.end51

if.end50:                                         ; preds = %while.body43
  br label %while.cond32

while.end51:                                      ; preds = %if.then49, %lor.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #4
  %45 = load i64, ptr %q1, align 8, !tbaa !9
  %shl52 = shl i64 %45, 32
  %46 = load i64, ptr %q0, align 8, !tbaa !9
  %conv53 = trunc i64 %46 to i32
  %conv54 = zext i32 %conv53 to i64
  %or = or i64 %shl52, %conv54
  store i64 %or, ptr %q, align 8, !tbaa !9
  %47 = load i64, ptr %q, align 8, !tbaa !9
  %add55 = add i64 %47, 1
  %m56 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 1
  store i64 %add55, ptr %m56, align 8, !tbaa !40
  %s157 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 2
  store i8 1, ptr %s157, align 8, !tbaa !42
  %48 = load i32, ptr %l_minus_1, align 4, !tbaa !46
  %conv58 = trunc i32 %48 to i8
  %s259 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 3
  store i8 %conv58, ptr %s259, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_lo) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d_hi) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %u_hi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlz_d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_minus_1) #4
  br label %if.end60

if.end60:                                         ; preds = %while.end51, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_mulext_uint32_t(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !46
  store i32 %b, ptr %b.addr, align 4, !tbaa !46
  %0 = load i32, ptr %a.addr, align 4, !tbaa !46
  %conv = zext i32 %0 to i64
  %1 = load i32, ptr %b.addr, align 4, !tbaa !46
  %conv1 = zext i32 %1 to i64
  %mul = mul i64 %conv, %conv1
  ret i64 %mul
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_quotient_size_t(i64 noundef %n, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %divisor) #2 {
entry:
  %n.addr = alloca i64, align 8
  %uint64_divisor = alloca %struct.fxdiv_divisor_uint64_t, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %uint64_divisor) #4
  %value = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 0
  %value1 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 0
  %0 = load i64, ptr %value1, align 8, !tbaa !38
  store i64 %0, ptr %value, align 8, !tbaa !36
  %m = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 1
  %m2 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 1
  %1 = load i64, ptr %m2, align 8, !tbaa !41
  store i64 %1, ptr %m, align 8, !tbaa !40
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 2
  %s13 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 2
  %2 = load i8, ptr %s13, align 8, !tbaa !43
  store i8 %2, ptr %s1, align 8, !tbaa !42
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 3
  %s24 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 3
  %3 = load i8, ptr %s24, align 1, !tbaa !45
  store i8 %3, ptr %s2, align 1, !tbaa !44
  %4 = load i64, ptr %n.addr, align 8, !tbaa !9
  %call = call i64 @fxdiv_quotient_uint64_t(i64 noundef %4, ptr noundef byval(%struct.fxdiv_divisor_uint64_t) align 8 %uint64_divisor)
  call void @llvm.lifetime.end.p0(i64 24, ptr %uint64_divisor) #4
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_quotient_uint64_t(i64 noundef %n, ptr noundef byval(%struct.fxdiv_divisor_uint64_t) align 8 %divisor) #2 {
entry:
  %n.addr = alloca i64, align 8
  %t = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !9
  %m = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %divisor, i32 0, i32 1
  %1 = load i64, ptr %m, align 8, !tbaa !40
  %call = call i64 @fxdiv_mulhi_uint64_t(i64 noundef %0, i64 noundef %1)
  store i64 %call, ptr %t, align 8, !tbaa !9
  %2 = load i64, ptr %t, align 8, !tbaa !9
  %3 = load i64, ptr %n.addr, align 8, !tbaa !9
  %4 = load i64, ptr %t, align 8, !tbaa !9
  %sub = sub i64 %3, %4
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %divisor, i32 0, i32 2
  %5 = load i8, ptr %s1, align 8, !tbaa !42
  %conv = zext i8 %5 to i32
  %sh_prom = zext i32 %conv to i64
  %shr = lshr i64 %sub, %sh_prom
  %add = add i64 %2, %shr
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %divisor, i32 0, i32 3
  %6 = load i8, ptr %s2, align 1, !tbaa !44
  %conv1 = zext i8 %6 to i32
  %sh_prom2 = zext i32 %conv1 to i64
  %shr3 = lshr i64 %add, %sh_prom2
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #4
  ret i64 %shr3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_mulhi_uint64_t(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !9
  %conv = zext i64 %0 to i128
  %1 = load i64, ptr %b.addr, align 8, !tbaa !9
  %conv1 = zext i64 %1 to i128
  %mul = mul i128 %conv, %conv1
  %shr = lshr i128 %mul, 64
  %conv2 = trunc i128 %shr to i64
  ret i64 %conv2
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !6, i64 136}
!12 = !{!"qnnp_operator", !10, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !10, i64 152, !6, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !6, i64 192, !6, i64 200, !14, i64 208, !14, i64 212, !7, i64 216, !7, i64 217, !7, i64 218, !7, i64 219, !7, i64 220, !10, i64 224, !10, i64 232, !10, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !7, i64 288, !7, i64 464, !7, i64 468}
!13 = !{!"int", !7, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!12, !6, i64 128}
!16 = !{!12, !10, i64 120}
!17 = !{!12, !6, i64 264}
!18 = !{!12, !13, i64 56}
!19 = !{!12, !10, i64 80}
!20 = !{!12, !10, i64 0}
!21 = !{!12, !10, i64 104}
!22 = !{!12, !10, i64 112}
!23 = !{!12, !10, i64 168}
!24 = !{!12, !10, i64 176}
!25 = !{!12, !13, i64 32}
!26 = !{!12, !13, i64 36}
!27 = !{!12, !13, i64 40}
!28 = !{!12, !13, i64 44}
!29 = !{!12, !13, i64 48}
!30 = !{!12, !13, i64 52}
!31 = !{!12, !13, i64 8}
!32 = !{!12, !13, i64 20}
!33 = !{!34, !10, i64 0}
!34 = !{!"fxdiv_result_size_t", !10, i64 0, !10, i64 8}
!35 = !{!34, !10, i64 8}
!36 = !{!37, !10, i64 0}
!37 = !{!"fxdiv_divisor_uint64_t", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 17}
!38 = !{!39, !10, i64 0}
!39 = !{!"fxdiv_divisor_size_t", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 17}
!40 = !{!37, !10, i64 8}
!41 = !{!39, !10, i64 8}
!42 = !{!37, !7, i64 16}
!43 = !{!39, !7, i64 16}
!44 = !{!37, !7, i64 17}
!45 = !{!39, !7, i64 17}
!46 = !{!13, !13, i64 0}

; ModuleID = 'samples/614.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/subgraph/max-pooling-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xnn_parameters = type { i32, %struct.xnn_allocator, %struct.anon, %struct.anon.1, %struct.anon.5, %struct.anon.7, %struct.anon.10, %struct.anon.11, %struct.anon.12, %struct.anon.14, %struct.anon.16, %struct.anon.17, %struct.anon.18 }
%struct.xnn_allocator = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { %struct.gemm_parameters, [2 x %struct.dwconv_parameters] }
%struct.gemm_parameters = type { %struct.gemm_fused_ukernels, %struct.gemm_fused_ukernels, %struct.gemm_fused_ukernels, %union.anon, i8, i8, i8, i8 }
%struct.gemm_fused_ukernels = type { %struct.xnn_hmp_gemm_ukernel, %struct.xnn_hmp_igemm_ukernel, %struct.xnn_hmp_gemm_ukernel, %struct.xnn_hmp_igemm_ukernel }
%struct.xnn_hmp_gemm_ukernel = type { [1 x ptr] }
%struct.xnn_hmp_igemm_ukernel = type { [1 x ptr] }
%union.anon = type { ptr }
%struct.dwconv_parameters = type { %union.dwconv_fused_ukernels, %union.dwconv_fused_ukernels, %union.anon.0, i8, i8, i8 }
%union.dwconv_fused_ukernels = type { ptr }
%union.anon.0 = type { ptr }
%struct.anon.1 = type { %struct.gemm_parameters, [2 x %struct.dwconv_parameters], %struct.gavgpool_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters }
%struct.gavgpool_parameters = type { ptr, ptr, %union.anon.2, %union.anon.3, i16, i16 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.vbinary_parameters = type { %struct.vbinary_fused_ukernels, %struct.vbinary_fused_ukernels, %union.anon.4, i8 }
%struct.vbinary_fused_ukernels = type { ptr, ptr, ptr }
%union.anon.4 = type { ptr }
%struct.anon.5 = type { %struct.gemm_parameters, [2 x %struct.dwconv_parameters], %struct.avgpool_parameters, %struct.gavgpool_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters }
%struct.avgpool_parameters = type { ptr, ptr, %union.anon.6, i8, i8, i16 }
%union.anon.6 = type { ptr }
%struct.anon.7 = type { %struct.vunary_parameters, %struct.ibilinear_parameters, %struct.maxpool_parameters }
%struct.vunary_parameters = type { ptr, %union.anon.8, i8 }
%union.anon.8 = type { ptr }
%struct.ibilinear_parameters = type { ptr, i8, i8 }
%struct.maxpool_parameters = type { ptr, %union.anon.9, i8, i8 }
%union.anon.9 = type { ptr }
%struct.anon.10 = type { %struct.vunary_parameters, %struct.ibilinear_parameters, %struct.maxpool_parameters, ptr, ptr }
%struct.anon.11 = type { ptr, %struct.zip_parameters }
%struct.zip_parameters = type { ptr, ptr, ptr, ptr }
%struct.anon.12 = type { %struct.gavgpool_parameters, %struct.gemm_parameters, %struct.gemm_parameters, [4 x %struct.dwconv_parameters], %struct.ibilinear_parameters, %struct.maxpool_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.prelu_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters, %struct.vmulcaddc_parameters }
%struct.prelu_parameters = type { ptr, i16, i16 }
%struct.vmulcaddc_parameters = type { ptr, %union.anon.13, i8, i8 }
%union.anon.13 = type { ptr }
%struct.anon.14 = type { %struct.gemm_parameters, %struct.gemm_parameters, [4 x %struct.dwconv_parameters], %struct.avgpool_parameters, %struct.pavgpool_parameters, %struct.gavgpool_parameters, %struct.maxpool_parameters, [3 x %struct.argmaxpool_parameters], %struct.ibilinear_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.prelu_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters, %struct.vbinary_parameters, %struct.vmulcaddc_parameters, %struct.raddstoreexpminusmax_parameters, ptr, %struct.spmm_parameters, %struct.spmm_parameters, %struct.spmm_parameters, %struct.conv_hwc2chw_parameters, %struct.dwconv2d_chw_parameters, %struct.dwconv2d_chw_parameters, %struct.dwconv2d_chw_parameters, %struct.dwconv2d_chw_parameters, %struct.gavgpool_cw_parameters, %struct.ibilinear_chw_parameters }
%struct.pavgpool_parameters = type { ptr, ptr, i8, i8, i16 }
%struct.argmaxpool_parameters = type { %union.anon.15, i8, i8 }
%union.anon.15 = type { ptr }
%struct.raddstoreexpminusmax_parameters = type { ptr, ptr, i8 }
%struct.spmm_parameters = type { ptr, i8, i8 }
%struct.conv_hwc2chw_parameters = type { ptr, i8, i8, i8 }
%struct.dwconv2d_chw_parameters = type { ptr, i8, i8 }
%struct.gavgpool_cw_parameters = type { ptr, i8 }
%struct.ibilinear_chw_parameters = type { ptr, i8, i8 }
%struct.anon.16 = type { %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters, %struct.vunary_parameters }
%struct.anon.17 = type { ptr, %struct.zip_parameters, %struct.depthtospace2d_chw2hwc_parameters }
%struct.depthtospace2d_chw2hwc_parameters = type { ptr, i8, i8 }
%struct.anon.18 = type { ptr, %struct.fill_parameters, %struct.pad_parameters }
%struct.fill_parameters = type { ptr, i8 }
%struct.pad_parameters = type { ptr, i8 }
%struct.xnn_subgraph = type { i32, i32, i32, ptr, i32, i32, ptr }
%struct.xnn_value = type { i32, i32, i32, %struct.anon.19, %struct.xnn_shape, i32, ptr, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.anon.19 = type { i32, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i64 }
%struct.xnn_shape = type { i64, [6 x i64] }
%struct.xnn_node = type { i32, i32, i32, %union.anon.22, %struct.anon.33, [3 x i32], i32, [2 x i32], i32, i32, i32, i32, i64, i64, ptr, ptr }
%union.anon.22 = type { %struct.anon.30 }
%struct.anon.30 = type { [6 x i64], [6 x i64], i32 }
%struct.anon.33 = type { float, float }
%struct.anon.27 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xnn_operator_data = type { ptr, ptr, i64, i64, i64, i64, i64, %struct.xnn_shape, %struct.xnn_shape, [6 x i64], [6 x i64], i32, i32, [2 x i32], [2 x i32] }
%struct.xnn_blob = type { i64, ptr, i8 }
%struct.xnn_operator = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, ptr, ptr, ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, float, float, i32, i8, i8, i8, i64, i64, i64, ptr, i64, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, [36 x i8], %union.anon.34, i32, %struct.xnn_ukernel, %struct.compute_parameters, %struct.compute_parameters, [48 x i8], %union.anon.180, i32, [60 x i8] }
%union.anon.34 = type { %struct.anon.162, [544 x i8] }
%struct.anon.162 = type { %union.xnn_qu8_avgpool_minmax_params, %union.xnn_qu8_avgpool_minmax_params }
%union.xnn_qu8_avgpool_minmax_params = type { %struct.anon.169 }
%struct.anon.169 = type { [4 x i32], [4 x i32], [2 x i64], [2 x i64], [8 x i16], [16 x i8], [16 x i8] }
%struct.xnn_ukernel = type { i32, %union.anon.175 }
%union.anon.175 = type { %struct.xnn_ukernel_igemm }
%struct.xnn_ukernel_igemm = type { %struct.xnn_hmp_igemm_ukernel, %struct.xnn_hmp_igemm_ukernel, %struct.xnn_hmp_gemm_ukernel, i8, i8, i8, i8 }
%struct.compute_parameters = type { i32, %union.anon.179, [6 x i64], [2 x i64] }
%union.anon.179 = type { ptr }
%union.anon.180 = type { %struct.elementwise_binary_context }
%struct.elementwise_binary_context = type { ptr, [5 x i64], ptr, [5 x i64], ptr, [5 x i64], i64, [40 x i8], %union.anon.191, ptr, [56 x i8] }
%union.anon.191 = type { %union.xnn_qs8_addsub_minmax_params }
%union.xnn_qs8_addsub_minmax_params = type { %struct.anon.142 }
%struct.anon.142 = type { [16 x i32], [16 x i32], [16 x i32], [16 x i32], [32 x i16], [32 x i8], [32 x i8] }

@xnn_params = external hidden global %struct.xnn_parameters, align 8
@.str = private unnamed_addr constant [57 x i8] c"failed to define %s operator: XNNPACK is not initialized\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"failed to define %s operator with %ux%u pooling size: pooling size dimensions must be non-zero\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"failed to define %s operator with 1 pooling element: 1x1 pooling is meaningless\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"failed to define %s operator with %ux%u stride: stride dimensions must be non-zero\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"failed to define %s operator with %ux%u dilation: dilation dimensions must be non-zero\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"failed to define %s with NaN output lower bound: lower bound must be non-NaN\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"failed to define %s with NaN output upper bound: upper bound must be non-NaN\00", align 1
@.str.7 = private unnamed_addr constant [90 x i8] c"failed to define %s with [%.7g, %.7g] output range: lower bound must be below upper bound\00", align 1
@.str.8 = private unnamed_addr constant [133 x i8] c"failed to define %s operator with %u+%ux%u+%u padding: TensorFlow SAME padding can't be combined with explicit padding specification\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"failed to define %s operator with input ID #%u: invalid Value ID\00", align 1
@.str.10 = private unnamed_addr constant [98 x i8] c"failed to define %s operator with input ID #%u: unsupported Value type %d (expected dense tensor)\00", align 1
@.str.11 = private unnamed_addr constant [83 x i8] c"failed to define %s operator with input ID #%u: unsupported Value datatype %s (%d)\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"failed to define %s operator with output ID #%u: invalid Value ID\00", align 1
@.str.13 = private unnamed_addr constant [99 x i8] c"failed to define %s operator with output ID #%u: unsupported Value type %d (expected dense tensor)\00", align 1
@.str.14 = private unnamed_addr constant [84 x i8] c"failed to define %s operator with output ID #%u: unsupported Value datatype %s (%d)\00", align 1
@.str.15 = private unnamed_addr constant [122 x i8] c"failed to define %s operator with input ID #%u and output ID #%u: mismatching datatypes across input (%s) and output (%s)\00", align 1
@.str.16 = private unnamed_addr constant [146 x i8] c"failed to define %s operator with input ID #%u and output ID #%u: mismatching zero point quantization parameter across input (%d) and output (%d)\00", align 1
@.str.17 = private unnamed_addr constant [150 x i8] c"failed to define %s operator with input ID #%u and output ID #%u: mismatching zero point quantization parameter across input (%.7g) and output (%.7g)\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @xnn_define_max_pooling_2d(ptr noundef %subgraph, i32 noundef %input_padding_top, i32 noundef %input_padding_right, i32 noundef %input_padding_bottom, i32 noundef %input_padding_left, i32 noundef %pooling_height, i32 noundef %pooling_width, i32 noundef %stride_height, i32 noundef %stride_width, i32 noundef %dilation_height, i32 noundef %dilation_width, float noundef %output_min, float noundef %output_max, i32 noundef %input_id, i32 noundef %output_id, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %subgraph.addr = alloca ptr, align 8
  %input_padding_top.addr = alloca i32, align 4
  %input_padding_right.addr = alloca i32, align 4
  %input_padding_bottom.addr = alloca i32, align 4
  %input_padding_left.addr = alloca i32, align 4
  %pooling_height.addr = alloca i32, align 4
  %pooling_width.addr = alloca i32, align 4
  %stride_height.addr = alloca i32, align 4
  %stride_width.addr = alloca i32, align 4
  %dilation_height.addr = alloca i32, align 4
  %dilation_width.addr = alloca i32, align 4
  %output_min.addr = alloca float, align 4
  %output_max.addr = alloca float, align 4
  %input_id.addr = alloca i32, align 4
  %output_id.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pooling_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %any_padding = alloca i8, align 1
  %input_value = alloca ptr, align 8
  %output_value = alloca ptr, align 8
  %compute_type = alloca i32, align 4
  %node = alloca ptr, align 8
  store ptr %subgraph, ptr %subgraph.addr, align 8, !tbaa !4
  store i32 %input_padding_top, ptr %input_padding_top.addr, align 4, !tbaa !8
  store i32 %input_padding_right, ptr %input_padding_right.addr, align 4, !tbaa !8
  store i32 %input_padding_bottom, ptr %input_padding_bottom.addr, align 4, !tbaa !8
  store i32 %input_padding_left, ptr %input_padding_left.addr, align 4, !tbaa !8
  store i32 %pooling_height, ptr %pooling_height.addr, align 4, !tbaa !8
  store i32 %pooling_width, ptr %pooling_width.addr, align 4, !tbaa !8
  store i32 %stride_height, ptr %stride_height.addr, align 4, !tbaa !8
  store i32 %stride_width, ptr %stride_width.addr, align 4, !tbaa !8
  store i32 %dilation_height, ptr %dilation_height.addr, align 4, !tbaa !8
  store i32 %dilation_width, ptr %dilation_width.addr, align 4, !tbaa !8
  store float %output_min, ptr %output_min.addr, align 4, !tbaa !10
  store float %output_max, ptr %output_max.addr, align 4, !tbaa !10
  store i32 %input_id, ptr %input_id.addr, align 4, !tbaa !8
  store i32 %output_id, ptr %output_id.addr, align 4, !tbaa !8
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  %0 = load i32, ptr @xnn_params, align 8, !tbaa !12
  %and = and i32 %0, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str, ptr noundef %call) #6
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pooling_size) #7
  %1 = load i32, ptr %pooling_height.addr, align 4, !tbaa !8
  %2 = load i32, ptr %pooling_width.addr, align 4, !tbaa !8
  %mul = mul i32 %1, %2
  store i32 %mul, ptr %pooling_size, align 4, !tbaa !8
  %3 = load i32, ptr %pooling_size, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %4 = load i32, ptr %pooling_width.addr, align 4, !tbaa !8
  %5 = load i32, ptr %pooling_height.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.1, ptr noundef %call3, i32 noundef %4, i32 noundef %5) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup158

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %pooling_size, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %call7 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.2, ptr noundef %call7) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup158

if.end8:                                          ; preds = %if.end4
  %7 = load i32, ptr %stride_height.addr, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %8 = load i32, ptr %stride_width.addr, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false, %if.end8
  %call12 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %9 = load i32, ptr %stride_width.addr, align 4, !tbaa !8
  %10 = load i32, ptr %stride_height.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.3, ptr noundef %call12, i32 noundef %9, i32 noundef %10) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup158

if.end13:                                         ; preds = %lor.lhs.false
  %11 = load i32, ptr %dilation_height.addr, align 4, !tbaa !8
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end13
  %12 = load i32, ptr %dilation_width.addr, align 4, !tbaa !8
  %cmp16 = icmp eq i32 %12, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false15, %if.end13
  %call18 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %13 = load i32, ptr %dilation_width.addr, align 4, !tbaa !8
  %14 = load i32, ptr %dilation_height.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.4, ptr noundef %call18, i32 noundef %13, i32 noundef %14) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup158

if.end19:                                         ; preds = %lor.lhs.false15
  %15 = load float, ptr %output_min.addr, align 4, !tbaa !10
  %16 = call i1 @llvm.is.fpclass.f32(float %15, i32 3)
  br i1 %16, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end19
  %call21 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.5, ptr noundef %call21) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup158

if.end22:                                         ; preds = %if.end19
  %17 = load float, ptr %output_max.addr, align 4, !tbaa !10
  %18 = call i1 @llvm.is.fpclass.f32(float %17, i32 3)
  br i1 %18, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end22
  %call24 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.6, ptr noundef %call24) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup158

if.end25:                                         ; preds = %if.end22
  %19 = load float, ptr %output_min.addr, align 4, !tbaa !10
  %20 = load float, ptr %output_max.addr, align 4, !tbaa !10
  %cmp26 = fcmp oge float %19, %20
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  %call28 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %21 = load float, ptr %output_min.addr, align 4, !tbaa !10
  %conv = fpext float %21 to double
  %22 = load float, ptr %output_max.addr, align 4, !tbaa !10
  %conv29 = fpext float %22 to double
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.7, ptr noundef %call28, double noundef %conv, double noundef %conv29) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup158

if.end30:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 1, ptr %any_padding) #7
  %23 = load i32, ptr %input_padding_left.addr, align 4, !tbaa !8
  %24 = load i32, ptr %input_padding_top.addr, align 4, !tbaa !8
  %or = or i32 %23, %24
  %25 = load i32, ptr %input_padding_right.addr, align 4, !tbaa !8
  %or31 = or i32 %or, %25
  %26 = load i32, ptr %input_padding_bottom.addr, align 4, !tbaa !8
  %or32 = or i32 %or31, %26
  %cmp33 = icmp ne i32 %or32, 0
  %frombool = zext i1 %cmp33 to i8
  store i8 %frombool, ptr %any_padding, align 1, !tbaa !51
  %27 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %and35 = and i32 %27, 4
  %cmp36 = icmp ne i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end30
  %28 = load i8, ptr %any_padding, align 1, !tbaa !51, !range !53, !noundef !54
  %tobool = trunc i8 %28 to i1
  br i1 %tobool, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then38
  %call40 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %29 = load i32, ptr %input_padding_top.addr, align 4, !tbaa !8
  %30 = load i32, ptr %input_padding_left.addr, align 4, !tbaa !8
  %31 = load i32, ptr %input_padding_bottom.addr, align 4, !tbaa !8
  %32 = load i32, ptr %input_padding_right.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.8, ptr noundef %call40, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157

if.end41:                                         ; preds = %if.then38
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end30
  %33 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %34 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %num_values = getelementptr inbounds %struct.xnn_subgraph, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %num_values, align 8, !tbaa !55
  %cmp43 = icmp uge i32 %33, %35
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end42
  %call46 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %36 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.9, ptr noundef %call46, i32 noundef %36) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup157

if.end47:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_value) #7
  %37 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.xnn_subgraph, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %values, align 8, !tbaa !57
  %39 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %idxprom = zext i32 %39 to i64
  %arrayidx = getelementptr inbounds %struct.xnn_value, ptr %38, i64 %idxprom
  store ptr %arrayidx, ptr %input_value, align 8, !tbaa !4
  %40 = load ptr, ptr %input_value, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.xnn_value, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %type, align 4, !tbaa !58
  %cmp48 = icmp ne i32 %41, 1
  br i1 %cmp48, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end47
  %call51 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %42 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %43 = load ptr, ptr %input_value, align 8, !tbaa !4
  %type52 = getelementptr inbounds %struct.xnn_value, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %type52, align 4, !tbaa !58
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.10, ptr noundef %call51, i32 noundef %42, i32 noundef %44) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

if.end53:                                         ; preds = %if.end47
  %45 = load ptr, ptr %input_value, align 8, !tbaa !4
  %datatype = getelementptr inbounds %struct.xnn_value, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %datatype, align 8, !tbaa !63
  switch i32 %46, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end53, %if.end53, %if.end53
  br label %sw.epilog

sw.default:                                       ; preds = %if.end53
  %call54 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %47 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %48 = load ptr, ptr %input_value, align 8, !tbaa !4
  %datatype55 = getelementptr inbounds %struct.xnn_value, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %datatype55, align 8, !tbaa !63
  %call56 = call ptr @xnn_datatype_to_string(i32 noundef %49) #6
  %50 = load ptr, ptr %input_value, align 8, !tbaa !4
  %datatype57 = getelementptr inbounds %struct.xnn_value, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %datatype57, align 8, !tbaa !63
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.11, ptr noundef %call54, i32 noundef %47, ptr noundef %call56, i32 noundef %51) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

sw.epilog:                                        ; preds = %sw.bb
  %52 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %53 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %num_values58 = getelementptr inbounds %struct.xnn_subgraph, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %num_values58, align 8, !tbaa !55
  %cmp59 = icmp uge i32 %52, %54
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %sw.epilog
  %call62 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %55 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.12, ptr noundef %call62, i32 noundef %55) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

if.end63:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_value) #7
  %56 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %values64 = getelementptr inbounds %struct.xnn_subgraph, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %values64, align 8, !tbaa !57
  %58 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %idxprom65 = zext i32 %58 to i64
  %arrayidx66 = getelementptr inbounds %struct.xnn_value, ptr %57, i64 %idxprom65
  store ptr %arrayidx66, ptr %output_value, align 8, !tbaa !4
  %59 = load ptr, ptr %output_value, align 8, !tbaa !4
  %type67 = getelementptr inbounds %struct.xnn_value, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %type67, align 4, !tbaa !58
  %cmp68 = icmp ne i32 %60, 1
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end63
  %call71 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %61 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %62 = load ptr, ptr %output_value, align 8, !tbaa !4
  %type72 = getelementptr inbounds %struct.xnn_value, ptr %62, i32 0, i32 1
  %63 = load i32, ptr %type72, align 4, !tbaa !58
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.13, ptr noundef %call71, i32 noundef %61, i32 noundef %63) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup155

if.end73:                                         ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr %compute_type) #7
  store i32 0, ptr %compute_type, align 4, !tbaa !64
  %64 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype74 = getelementptr inbounds %struct.xnn_value, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %datatype74, align 8, !tbaa !63
  switch i32 %65, label %sw.default78 [
    i32 1, label %sw.bb75
    i32 3, label %sw.bb76
    i32 4, label %sw.bb77
  ]

sw.bb75:                                          ; preds = %if.end73
  store i32 1, ptr %compute_type, align 4, !tbaa !64
  br label %sw.epilog83

sw.bb76:                                          ; preds = %if.end73
  store i32 4, ptr %compute_type, align 4, !tbaa !64
  br label %sw.epilog83

sw.bb77:                                          ; preds = %if.end73
  store i32 5, ptr %compute_type, align 4, !tbaa !64
  br label %sw.epilog83

sw.default78:                                     ; preds = %if.end73
  %call79 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %66 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %67 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype80 = getelementptr inbounds %struct.xnn_value, ptr %67, i32 0, i32 2
  %68 = load i32, ptr %datatype80, align 8, !tbaa !63
  %call81 = call ptr @xnn_datatype_to_string(i32 noundef %68) #6
  %69 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype82 = getelementptr inbounds %struct.xnn_value, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %datatype82, align 8, !tbaa !63
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.14, ptr noundef %call79, i32 noundef %66, ptr noundef %call81, i32 noundef %70) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup154

sw.epilog83:                                      ; preds = %sw.bb77, %sw.bb76, %sw.bb75
  %71 = load ptr, ptr %input_value, align 8, !tbaa !4
  %datatype84 = getelementptr inbounds %struct.xnn_value, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %datatype84, align 8, !tbaa !63
  %73 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype85 = getelementptr inbounds %struct.xnn_value, ptr %73, i32 0, i32 2
  %74 = load i32, ptr %datatype85, align 8, !tbaa !63
  %cmp86 = icmp ne i32 %72, %74
  br i1 %cmp86, label %if.then88, label %if.end94

if.then88:                                        ; preds = %sw.epilog83
  %call89 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %75 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %76 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %77 = load ptr, ptr %input_value, align 8, !tbaa !4
  %datatype90 = getelementptr inbounds %struct.xnn_value, ptr %77, i32 0, i32 2
  %78 = load i32, ptr %datatype90, align 8, !tbaa !63
  %call91 = call ptr @xnn_datatype_to_string(i32 noundef %78) #6
  %79 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype92 = getelementptr inbounds %struct.xnn_value, ptr %79, i32 0, i32 2
  %80 = load i32, ptr %datatype92, align 8, !tbaa !63
  %call93 = call ptr @xnn_datatype_to_string(i32 noundef %80) #6
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.15, ptr noundef %call89, i32 noundef %75, i32 noundef %76, ptr noundef %call91, ptr noundef %call93) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup154

if.end94:                                         ; preds = %sw.epilog83
  %81 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype95 = getelementptr inbounds %struct.xnn_value, ptr %81, i32 0, i32 2
  %82 = load i32, ptr %datatype95, align 8, !tbaa !63
  %cmp96 = icmp eq i32 %82, 3
  br i1 %cmp96, label %if.then102, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.end94
  %83 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype99 = getelementptr inbounds %struct.xnn_value, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %datatype99, align 8, !tbaa !63
  %cmp100 = icmp eq i32 %84, 4
  br i1 %cmp100, label %if.then102, label %if.end125

if.then102:                                       ; preds = %lor.lhs.false98, %if.end94
  %85 = load ptr, ptr %input_value, align 8, !tbaa !4
  %quantization = getelementptr inbounds %struct.xnn_value, ptr %85, i32 0, i32 3
  %zero_point = getelementptr inbounds %struct.anon.19, ptr %quantization, i32 0, i32 0
  %86 = load i32, ptr %zero_point, align 8, !tbaa !65
  %87 = load ptr, ptr %output_value, align 8, !tbaa !4
  %quantization103 = getelementptr inbounds %struct.xnn_value, ptr %87, i32 0, i32 3
  %zero_point104 = getelementptr inbounds %struct.anon.19, ptr %quantization103, i32 0, i32 0
  %88 = load i32, ptr %zero_point104, align 8, !tbaa !65
  %cmp105 = icmp ne i32 %86, %88
  br i1 %cmp105, label %if.then107, label %if.end113

if.then107:                                       ; preds = %if.then102
  %call108 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %89 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %90 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %91 = load ptr, ptr %input_value, align 8, !tbaa !4
  %quantization109 = getelementptr inbounds %struct.xnn_value, ptr %91, i32 0, i32 3
  %zero_point110 = getelementptr inbounds %struct.anon.19, ptr %quantization109, i32 0, i32 0
  %92 = load i32, ptr %zero_point110, align 8, !tbaa !65
  %93 = load ptr, ptr %output_value, align 8, !tbaa !4
  %quantization111 = getelementptr inbounds %struct.xnn_value, ptr %93, i32 0, i32 3
  %zero_point112 = getelementptr inbounds %struct.anon.19, ptr %quantization111, i32 0, i32 0
  %94 = load i32, ptr %zero_point112, align 8, !tbaa !65
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.16, ptr noundef %call108, i32 noundef %89, i32 noundef %90, i32 noundef %92, i32 noundef %94) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup154

if.end113:                                        ; preds = %if.then102
  %95 = load ptr, ptr %input_value, align 8, !tbaa !4
  %quantization114 = getelementptr inbounds %struct.xnn_value, ptr %95, i32 0, i32 3
  %96 = getelementptr inbounds %struct.anon.19, ptr %quantization114, i32 0, i32 1
  %97 = load float, ptr %96, align 8, !tbaa !64
  %98 = load ptr, ptr %output_value, align 8, !tbaa !4
  %quantization115 = getelementptr inbounds %struct.xnn_value, ptr %98, i32 0, i32 3
  %99 = getelementptr inbounds %struct.anon.19, ptr %quantization115, i32 0, i32 1
  %100 = load float, ptr %99, align 8, !tbaa !64
  %cmp116 = fcmp une float %97, %100
  br i1 %cmp116, label %if.then118, label %if.end124

if.then118:                                       ; preds = %if.end113
  %call119 = call ptr @xnn_node_type_to_string(i32 noundef 20) #6
  %101 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %102 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %103 = load ptr, ptr %input_value, align 8, !tbaa !4
  %quantization120 = getelementptr inbounds %struct.xnn_value, ptr %103, i32 0, i32 3
  %104 = getelementptr inbounds %struct.anon.19, ptr %quantization120, i32 0, i32 1
  %105 = load float, ptr %104, align 8, !tbaa !64
  %conv121 = fpext float %105 to double
  %106 = load ptr, ptr %output_value, align 8, !tbaa !4
  %quantization122 = getelementptr inbounds %struct.xnn_value, ptr %106, i32 0, i32 3
  %107 = getelementptr inbounds %struct.anon.19, ptr %quantization122, i32 0, i32 1
  %108 = load float, ptr %107, align 8, !tbaa !64
  %conv123 = fpext float %108 to double
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.17, ptr noundef %call119, i32 noundef %101, i32 noundef %102, double noundef %conv121, double noundef %conv123) #6
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup154

if.end124:                                        ; preds = %if.end113
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %lor.lhs.false98
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #7
  %109 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %call126 = call ptr @xnn_subgraph_new_node(ptr noundef %109) #6
  store ptr %call126, ptr %node, align 8, !tbaa !4
  %110 = load ptr, ptr %node, align 8, !tbaa !4
  %cmp127 = icmp eq ptr %110, null
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end125
  store i32 6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end130:                                        ; preds = %if.end125
  %111 = load ptr, ptr %node, align 8, !tbaa !4
  %type131 = getelementptr inbounds %struct.xnn_node, ptr %111, i32 0, i32 0
  store i32 20, ptr %type131, align 8, !tbaa !66
  %112 = load i32, ptr %compute_type, align 4, !tbaa !64
  %113 = load ptr, ptr %node, align 8, !tbaa !4
  %compute_type132 = getelementptr inbounds %struct.xnn_node, ptr %113, i32 0, i32 2
  store i32 %112, ptr %compute_type132, align 8, !tbaa !69
  %114 = load i32, ptr %input_padding_top.addr, align 4, !tbaa !8
  %115 = load ptr, ptr %node, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.xnn_node, ptr %115, i32 0, i32 3
  %padding_top = getelementptr inbounds %struct.anon.27, ptr %params, i32 0, i32 0
  store i32 %114, ptr %padding_top, align 8, !tbaa !64
  %116 = load i32, ptr %input_padding_right.addr, align 4, !tbaa !8
  %117 = load ptr, ptr %node, align 8, !tbaa !4
  %params133 = getelementptr inbounds %struct.xnn_node, ptr %117, i32 0, i32 3
  %padding_right = getelementptr inbounds %struct.anon.27, ptr %params133, i32 0, i32 1
  store i32 %116, ptr %padding_right, align 4, !tbaa !64
  %118 = load i32, ptr %input_padding_bottom.addr, align 4, !tbaa !8
  %119 = load ptr, ptr %node, align 8, !tbaa !4
  %params134 = getelementptr inbounds %struct.xnn_node, ptr %119, i32 0, i32 3
  %padding_bottom = getelementptr inbounds %struct.anon.27, ptr %params134, i32 0, i32 2
  store i32 %118, ptr %padding_bottom, align 8, !tbaa !64
  %120 = load i32, ptr %input_padding_left.addr, align 4, !tbaa !8
  %121 = load ptr, ptr %node, align 8, !tbaa !4
  %params135 = getelementptr inbounds %struct.xnn_node, ptr %121, i32 0, i32 3
  %padding_left = getelementptr inbounds %struct.anon.27, ptr %params135, i32 0, i32 3
  store i32 %120, ptr %padding_left, align 4, !tbaa !64
  %122 = load i32, ptr %pooling_height.addr, align 4, !tbaa !8
  %123 = load ptr, ptr %node, align 8, !tbaa !4
  %params136 = getelementptr inbounds %struct.xnn_node, ptr %123, i32 0, i32 3
  %pooling_height137 = getelementptr inbounds %struct.anon.27, ptr %params136, i32 0, i32 4
  store i32 %122, ptr %pooling_height137, align 8, !tbaa !64
  %124 = load i32, ptr %pooling_width.addr, align 4, !tbaa !8
  %125 = load ptr, ptr %node, align 8, !tbaa !4
  %params138 = getelementptr inbounds %struct.xnn_node, ptr %125, i32 0, i32 3
  %pooling_width139 = getelementptr inbounds %struct.anon.27, ptr %params138, i32 0, i32 5
  store i32 %124, ptr %pooling_width139, align 4, !tbaa !64
  %126 = load i32, ptr %stride_height.addr, align 4, !tbaa !8
  %127 = load ptr, ptr %node, align 8, !tbaa !4
  %params140 = getelementptr inbounds %struct.xnn_node, ptr %127, i32 0, i32 3
  %stride_height141 = getelementptr inbounds %struct.anon.27, ptr %params140, i32 0, i32 6
  store i32 %126, ptr %stride_height141, align 8, !tbaa !64
  %128 = load i32, ptr %stride_width.addr, align 4, !tbaa !8
  %129 = load ptr, ptr %node, align 8, !tbaa !4
  %params142 = getelementptr inbounds %struct.xnn_node, ptr %129, i32 0, i32 3
  %stride_width143 = getelementptr inbounds %struct.anon.27, ptr %params142, i32 0, i32 7
  store i32 %128, ptr %stride_width143, align 4, !tbaa !64
  %130 = load i32, ptr %dilation_height.addr, align 4, !tbaa !8
  %131 = load ptr, ptr %node, align 8, !tbaa !4
  %params144 = getelementptr inbounds %struct.xnn_node, ptr %131, i32 0, i32 3
  %dilation_height145 = getelementptr inbounds %struct.anon.27, ptr %params144, i32 0, i32 8
  store i32 %130, ptr %dilation_height145, align 8, !tbaa !64
  %132 = load i32, ptr %dilation_width.addr, align 4, !tbaa !8
  %133 = load ptr, ptr %node, align 8, !tbaa !4
  %params146 = getelementptr inbounds %struct.xnn_node, ptr %133, i32 0, i32 3
  %dilation_width147 = getelementptr inbounds %struct.anon.27, ptr %params146, i32 0, i32 9
  store i32 %132, ptr %dilation_width147, align 4, !tbaa !64
  %134 = load float, ptr %output_min.addr, align 4, !tbaa !10
  %135 = load ptr, ptr %node, align 8, !tbaa !4
  %activation = getelementptr inbounds %struct.xnn_node, ptr %135, i32 0, i32 4
  %output_min148 = getelementptr inbounds %struct.anon.33, ptr %activation, i32 0, i32 0
  store float %134, ptr %output_min148, align 8, !tbaa !70
  %136 = load float, ptr %output_max.addr, align 4, !tbaa !10
  %137 = load ptr, ptr %node, align 8, !tbaa !4
  %activation149 = getelementptr inbounds %struct.xnn_node, ptr %137, i32 0, i32 4
  %output_max150 = getelementptr inbounds %struct.anon.33, ptr %activation149, i32 0, i32 1
  store float %136, ptr %output_max150, align 4, !tbaa !71
  %138 = load ptr, ptr %node, align 8, !tbaa !4
  %num_inputs = getelementptr inbounds %struct.xnn_node, ptr %138, i32 0, i32 6
  store i32 1, ptr %num_inputs, align 4, !tbaa !72
  %139 = load i32, ptr %input_id.addr, align 4, !tbaa !8
  %140 = load ptr, ptr %node, align 8, !tbaa !4
  %inputs = getelementptr inbounds %struct.xnn_node, ptr %140, i32 0, i32 5
  %arrayidx151 = getelementptr inbounds [3 x i32], ptr %inputs, i64 0, i64 0
  store i32 %139, ptr %arrayidx151, align 8, !tbaa !8
  %141 = load ptr, ptr %node, align 8, !tbaa !4
  %num_outputs = getelementptr inbounds %struct.xnn_node, ptr %141, i32 0, i32 8
  store i32 1, ptr %num_outputs, align 8, !tbaa !73
  %142 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %143 = load ptr, ptr %node, align 8, !tbaa !4
  %outputs = getelementptr inbounds %struct.xnn_node, ptr %143, i32 0, i32 7
  %arrayidx152 = getelementptr inbounds [2 x i32], ptr %outputs, i64 0, i64 0
  store i32 %142, ptr %arrayidx152, align 8, !tbaa !8
  %144 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %145 = load ptr, ptr %node, align 8, !tbaa !4
  %flags153 = getelementptr inbounds %struct.xnn_node, ptr %145, i32 0, i32 9
  store i32 %144, ptr %flags153, align 4, !tbaa !74
  %146 = load ptr, ptr %node, align 8, !tbaa !4
  %create = getelementptr inbounds %struct.xnn_node, ptr %146, i32 0, i32 14
  store ptr @create_max_pooling_operator, ptr %create, align 8, !tbaa !75
  %147 = load ptr, ptr %node, align 8, !tbaa !4
  %setup = getelementptr inbounds %struct.xnn_node, ptr %147, i32 0, i32 15
  store ptr @setup_max_pooling_operator, ptr %setup, align 8, !tbaa !76
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then129
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #7
  br label %cleanup154

cleanup154:                                       ; preds = %cleanup, %if.then118, %if.then107, %if.then88, %sw.default78
  call void @llvm.lifetime.end.p0(i64 4, ptr %compute_type) #7
  br label %cleanup155

cleanup155:                                       ; preds = %cleanup154, %if.then70
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_value) #7
  br label %cleanup156

cleanup156:                                       ; preds = %cleanup155, %if.then61, %sw.default, %if.then50
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_value) #7
  br label %cleanup157

cleanup157:                                       ; preds = %cleanup156, %if.then45, %if.then39
  call void @llvm.lifetime.end.p0(i64 1, ptr %any_padding) #7
  br label %cleanup158

cleanup158:                                       ; preds = %cleanup157, %if.then27, %if.then23, %if.then20, %if.then17, %if.then11, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %pooling_size) #7
  br label %return

return:                                           ; preds = %cleanup158, %if.then
  %148 = load i32, ptr %retval, align 4
  ret i32 %148
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @xnn_log_error(ptr noundef %format, ...) #1 {
entry:
  %format.addr = alloca ptr, align 8
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal ptr @xnn_node_type_to_string(i32 noundef %type) #1 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4, !tbaa !64
  ret ptr @.str.18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #3

; Function Attrs: inlinehint nounwind optsize uwtable
define internal ptr @xnn_datatype_to_string(i32 noundef %type) #1 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4, !tbaa !64
  ret ptr @.str.18
}

; Function Attrs: optsize
declare ptr @xnn_subgraph_new_node(ptr noundef) #4

; Function Attrs: nounwind optsize uwtable
define internal i32 @create_max_pooling_operator(ptr noundef %node, ptr noundef %values, i64 noundef %num_values, ptr noundef %opdata) #0 {
entry:
  %node.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %num_values.addr = alloca i64, align 8
  %opdata.addr = alloca ptr, align 8
  %input_id = alloca i32, align 4
  %output_id = alloca i32, align 4
  %channel_dim = alloca i64, align 8
  %status = alloca i32, align 4
  %output_scale = alloca float, align 4
  %output_zero_point = alloca i32, align 4
  %output_min48 = alloca i8, align 1
  %output_max53 = alloca i8, align 1
  %output_scale85 = alloca float, align 4
  %output_zero_point89 = alloca i32, align 4
  %output_min94 = alloca i8, align 1
  %output_max102 = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store i64 %num_values, ptr %num_values.addr, align 8, !tbaa !77
  store ptr %opdata, ptr %opdata.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %input_id) #7
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %inputs = getelementptr inbounds %struct.xnn_node, ptr %0, i32 0, i32 5
  %arrayidx = getelementptr inbounds [3 x i32], ptr %inputs, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 8, !tbaa !8
  store i32 %1, ptr %input_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_id) #7
  %2 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %outputs = getelementptr inbounds %struct.xnn_node, ptr %2, i32 0, i32 7
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %outputs, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 8, !tbaa !8
  store i32 %3, ptr %output_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %channel_dim) #7
  %4 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %5 = load i32, ptr %input_id, align 4, !tbaa !8
  %idxprom = zext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.xnn_value, ptr %4, i64 %idxprom
  %shape = getelementptr inbounds %struct.xnn_value, ptr %arrayidx2, i32 0, i32 4
  %dim = getelementptr inbounds %struct.xnn_shape, ptr %shape, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [6 x i64], ptr %dim, i64 0, i64 3
  %6 = load i64, ptr %arrayidx3, align 8, !tbaa !77
  store i64 %6, ptr %channel_dim, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7
  %7 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %compute_type = getelementptr inbounds %struct.xnn_node, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %compute_type, align 8, !tbaa !69
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb14
    i32 4, label %sw.bb42
    i32 5, label %sw.bb84
  ]

sw.bb:                                            ; preds = %entry
  %9 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.xnn_node, ptr %9, i32 0, i32 3
  %padding_top = getelementptr inbounds %struct.anon.27, ptr %params, i32 0, i32 0
  %10 = load i32, ptr %padding_top, align 8, !tbaa !64
  %11 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params4 = getelementptr inbounds %struct.xnn_node, ptr %11, i32 0, i32 3
  %padding_right = getelementptr inbounds %struct.anon.27, ptr %params4, i32 0, i32 1
  %12 = load i32, ptr %padding_right, align 4, !tbaa !64
  %13 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params5 = getelementptr inbounds %struct.xnn_node, ptr %13, i32 0, i32 3
  %padding_bottom = getelementptr inbounds %struct.anon.27, ptr %params5, i32 0, i32 2
  %14 = load i32, ptr %padding_bottom, align 8, !tbaa !64
  %15 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params6 = getelementptr inbounds %struct.xnn_node, ptr %15, i32 0, i32 3
  %padding_left = getelementptr inbounds %struct.anon.27, ptr %params6, i32 0, i32 3
  %16 = load i32, ptr %padding_left, align 4, !tbaa !64
  %17 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params7 = getelementptr inbounds %struct.xnn_node, ptr %17, i32 0, i32 3
  %pooling_height = getelementptr inbounds %struct.anon.27, ptr %params7, i32 0, i32 4
  %18 = load i32, ptr %pooling_height, align 8, !tbaa !64
  %19 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params8 = getelementptr inbounds %struct.xnn_node, ptr %19, i32 0, i32 3
  %pooling_width = getelementptr inbounds %struct.anon.27, ptr %params8, i32 0, i32 5
  %20 = load i32, ptr %pooling_width, align 4, !tbaa !64
  %21 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params9 = getelementptr inbounds %struct.xnn_node, ptr %21, i32 0, i32 3
  %stride_height = getelementptr inbounds %struct.anon.27, ptr %params9, i32 0, i32 6
  %22 = load i32, ptr %stride_height, align 8, !tbaa !64
  %23 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params10 = getelementptr inbounds %struct.xnn_node, ptr %23, i32 0, i32 3
  %stride_width = getelementptr inbounds %struct.anon.27, ptr %params10, i32 0, i32 7
  %24 = load i32, ptr %stride_width, align 4, !tbaa !64
  %25 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params11 = getelementptr inbounds %struct.xnn_node, ptr %25, i32 0, i32 3
  %dilation_height = getelementptr inbounds %struct.anon.27, ptr %params11, i32 0, i32 8
  %26 = load i32, ptr %dilation_height, align 8, !tbaa !64
  %27 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params12 = getelementptr inbounds %struct.xnn_node, ptr %27, i32 0, i32 3
  %dilation_width = getelementptr inbounds %struct.anon.27, ptr %params12, i32 0, i32 9
  %28 = load i32, ptr %dilation_width, align 4, !tbaa !64
  %29 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %30 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %31 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %32 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation = getelementptr inbounds %struct.xnn_node, ptr %32, i32 0, i32 4
  %output_min = getelementptr inbounds %struct.anon.33, ptr %activation, i32 0, i32 0
  %33 = load float, ptr %output_min, align 8, !tbaa !70
  %34 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation13 = getelementptr inbounds %struct.xnn_node, ptr %34, i32 0, i32 4
  %output_max = getelementptr inbounds %struct.anon.33, ptr %activation13, i32 0, i32 1
  %35 = load float, ptr %output_max, align 4, !tbaa !71
  %36 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.xnn_node, ptr %36, i32 0, i32 9
  %37 = load i32, ptr %flags, align 4, !tbaa !74
  %38 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object = getelementptr inbounds %struct.xnn_operator_data, ptr %38, i32 0, i32 0
  %call = call i32 @xnn_create_max_pooling2d_nhwc_f16(i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, float noundef %33, float noundef %35, i32 noundef %37, ptr noundef %operator_object) #6
  store i32 %call, ptr %status, align 4, !tbaa !64
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %39 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params15 = getelementptr inbounds %struct.xnn_node, ptr %39, i32 0, i32 3
  %padding_top16 = getelementptr inbounds %struct.anon.27, ptr %params15, i32 0, i32 0
  %40 = load i32, ptr %padding_top16, align 8, !tbaa !64
  %41 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params17 = getelementptr inbounds %struct.xnn_node, ptr %41, i32 0, i32 3
  %padding_right18 = getelementptr inbounds %struct.anon.27, ptr %params17, i32 0, i32 1
  %42 = load i32, ptr %padding_right18, align 4, !tbaa !64
  %43 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params19 = getelementptr inbounds %struct.xnn_node, ptr %43, i32 0, i32 3
  %padding_bottom20 = getelementptr inbounds %struct.anon.27, ptr %params19, i32 0, i32 2
  %44 = load i32, ptr %padding_bottom20, align 8, !tbaa !64
  %45 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params21 = getelementptr inbounds %struct.xnn_node, ptr %45, i32 0, i32 3
  %padding_left22 = getelementptr inbounds %struct.anon.27, ptr %params21, i32 0, i32 3
  %46 = load i32, ptr %padding_left22, align 4, !tbaa !64
  %47 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params23 = getelementptr inbounds %struct.xnn_node, ptr %47, i32 0, i32 3
  %pooling_height24 = getelementptr inbounds %struct.anon.27, ptr %params23, i32 0, i32 4
  %48 = load i32, ptr %pooling_height24, align 8, !tbaa !64
  %49 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params25 = getelementptr inbounds %struct.xnn_node, ptr %49, i32 0, i32 3
  %pooling_width26 = getelementptr inbounds %struct.anon.27, ptr %params25, i32 0, i32 5
  %50 = load i32, ptr %pooling_width26, align 4, !tbaa !64
  %51 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params27 = getelementptr inbounds %struct.xnn_node, ptr %51, i32 0, i32 3
  %stride_height28 = getelementptr inbounds %struct.anon.27, ptr %params27, i32 0, i32 6
  %52 = load i32, ptr %stride_height28, align 8, !tbaa !64
  %53 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params29 = getelementptr inbounds %struct.xnn_node, ptr %53, i32 0, i32 3
  %stride_width30 = getelementptr inbounds %struct.anon.27, ptr %params29, i32 0, i32 7
  %54 = load i32, ptr %stride_width30, align 4, !tbaa !64
  %55 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params31 = getelementptr inbounds %struct.xnn_node, ptr %55, i32 0, i32 3
  %dilation_height32 = getelementptr inbounds %struct.anon.27, ptr %params31, i32 0, i32 8
  %56 = load i32, ptr %dilation_height32, align 8, !tbaa !64
  %57 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params33 = getelementptr inbounds %struct.xnn_node, ptr %57, i32 0, i32 3
  %dilation_width34 = getelementptr inbounds %struct.anon.27, ptr %params33, i32 0, i32 9
  %58 = load i32, ptr %dilation_width34, align 4, !tbaa !64
  %59 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %60 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %61 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %62 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation35 = getelementptr inbounds %struct.xnn_node, ptr %62, i32 0, i32 4
  %output_min36 = getelementptr inbounds %struct.anon.33, ptr %activation35, i32 0, i32 0
  %63 = load float, ptr %output_min36, align 8, !tbaa !70
  %64 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation37 = getelementptr inbounds %struct.xnn_node, ptr %64, i32 0, i32 4
  %output_max38 = getelementptr inbounds %struct.anon.33, ptr %activation37, i32 0, i32 1
  %65 = load float, ptr %output_max38, align 4, !tbaa !71
  %66 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %flags39 = getelementptr inbounds %struct.xnn_node, ptr %66, i32 0, i32 9
  %67 = load i32, ptr %flags39, align 4, !tbaa !74
  %68 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object40 = getelementptr inbounds %struct.xnn_operator_data, ptr %68, i32 0, i32 0
  %call41 = call i32 @xnn_create_max_pooling2d_nhwc_f32(i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i64 noundef %59, i64 noundef %60, i64 noundef %61, float noundef %63, float noundef %65, i32 noundef %67, ptr noundef %operator_object40) #6
  store i32 %call41, ptr %status, align 4, !tbaa !64
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_scale) #7
  %69 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %70 = load i32, ptr %output_id, align 4, !tbaa !8
  %idxprom43 = zext i32 %70 to i64
  %arrayidx44 = getelementptr inbounds %struct.xnn_value, ptr %69, i64 %idxprom43
  %quantization = getelementptr inbounds %struct.xnn_value, ptr %arrayidx44, i32 0, i32 3
  %71 = getelementptr inbounds %struct.anon.19, ptr %quantization, i32 0, i32 1
  %72 = load float, ptr %71, align 8, !tbaa !64
  store float %72, ptr %output_scale, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_zero_point) #7
  %73 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %74 = load i32, ptr %output_id, align 4, !tbaa !8
  %idxprom45 = zext i32 %74 to i64
  %arrayidx46 = getelementptr inbounds %struct.xnn_value, ptr %73, i64 %idxprom45
  %quantization47 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx46, i32 0, i32 3
  %zero_point = getelementptr inbounds %struct.anon.19, ptr %quantization47, i32 0, i32 0
  %75 = load i32, ptr %zero_point, align 8, !tbaa !65
  store i32 %75, ptr %output_zero_point, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %output_min48) #7
  %76 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation49 = getelementptr inbounds %struct.xnn_node, ptr %76, i32 0, i32 4
  %output_min50 = getelementptr inbounds %struct.anon.33, ptr %activation49, i32 0, i32 0
  %77 = load float, ptr %output_min50, align 8, !tbaa !70
  %78 = load float, ptr %output_scale, align 4, !tbaa !10
  %div = fdiv float %77, %78
  %79 = load i32, ptr %output_zero_point, align 4, !tbaa !8
  %conv = sitofp i32 %79 to float
  %add = fadd float %div, %conv
  %80 = call float @llvm.maxnum.f32(float %add, float -1.280000e+02)
  %81 = call float @llvm.minnum.f32(float %80, float 1.270000e+02)
  %call51 = call i64 @lrintf(float noundef %81) #8
  %conv52 = trunc i64 %call51 to i8
  store i8 %conv52, ptr %output_min48, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 1, ptr %output_max53) #7
  %82 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation54 = getelementptr inbounds %struct.xnn_node, ptr %82, i32 0, i32 4
  %output_max55 = getelementptr inbounds %struct.anon.33, ptr %activation54, i32 0, i32 1
  %83 = load float, ptr %output_max55, align 4, !tbaa !71
  %84 = load float, ptr %output_scale, align 4, !tbaa !10
  %div56 = fdiv float %83, %84
  %85 = load i32, ptr %output_zero_point, align 4, !tbaa !8
  %conv57 = sitofp i32 %85 to float
  %add58 = fadd float %div56, %conv57
  %86 = call float @llvm.maxnum.f32(float %add58, float -1.280000e+02)
  %87 = call float @llvm.minnum.f32(float %86, float 1.270000e+02)
  %call59 = call i64 @lrintf(float noundef %87) #8
  %conv60 = trunc i64 %call59 to i8
  store i8 %conv60, ptr %output_max53, align 1, !tbaa !64
  %88 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params61 = getelementptr inbounds %struct.xnn_node, ptr %88, i32 0, i32 3
  %padding_top62 = getelementptr inbounds %struct.anon.27, ptr %params61, i32 0, i32 0
  %89 = load i32, ptr %padding_top62, align 8, !tbaa !64
  %90 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params63 = getelementptr inbounds %struct.xnn_node, ptr %90, i32 0, i32 3
  %padding_right64 = getelementptr inbounds %struct.anon.27, ptr %params63, i32 0, i32 1
  %91 = load i32, ptr %padding_right64, align 4, !tbaa !64
  %92 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params65 = getelementptr inbounds %struct.xnn_node, ptr %92, i32 0, i32 3
  %padding_bottom66 = getelementptr inbounds %struct.anon.27, ptr %params65, i32 0, i32 2
  %93 = load i32, ptr %padding_bottom66, align 8, !tbaa !64
  %94 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params67 = getelementptr inbounds %struct.xnn_node, ptr %94, i32 0, i32 3
  %padding_left68 = getelementptr inbounds %struct.anon.27, ptr %params67, i32 0, i32 3
  %95 = load i32, ptr %padding_left68, align 4, !tbaa !64
  %96 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params69 = getelementptr inbounds %struct.xnn_node, ptr %96, i32 0, i32 3
  %pooling_height70 = getelementptr inbounds %struct.anon.27, ptr %params69, i32 0, i32 4
  %97 = load i32, ptr %pooling_height70, align 8, !tbaa !64
  %98 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params71 = getelementptr inbounds %struct.xnn_node, ptr %98, i32 0, i32 3
  %pooling_width72 = getelementptr inbounds %struct.anon.27, ptr %params71, i32 0, i32 5
  %99 = load i32, ptr %pooling_width72, align 4, !tbaa !64
  %100 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params73 = getelementptr inbounds %struct.xnn_node, ptr %100, i32 0, i32 3
  %stride_height74 = getelementptr inbounds %struct.anon.27, ptr %params73, i32 0, i32 6
  %101 = load i32, ptr %stride_height74, align 8, !tbaa !64
  %102 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params75 = getelementptr inbounds %struct.xnn_node, ptr %102, i32 0, i32 3
  %stride_width76 = getelementptr inbounds %struct.anon.27, ptr %params75, i32 0, i32 7
  %103 = load i32, ptr %stride_width76, align 4, !tbaa !64
  %104 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params77 = getelementptr inbounds %struct.xnn_node, ptr %104, i32 0, i32 3
  %dilation_height78 = getelementptr inbounds %struct.anon.27, ptr %params77, i32 0, i32 8
  %105 = load i32, ptr %dilation_height78, align 8, !tbaa !64
  %106 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params79 = getelementptr inbounds %struct.xnn_node, ptr %106, i32 0, i32 3
  %dilation_width80 = getelementptr inbounds %struct.anon.27, ptr %params79, i32 0, i32 9
  %107 = load i32, ptr %dilation_width80, align 4, !tbaa !64
  %108 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %109 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %110 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %111 = load i8, ptr %output_min48, align 1, !tbaa !64
  %112 = load i8, ptr %output_max53, align 1, !tbaa !64
  %113 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %flags81 = getelementptr inbounds %struct.xnn_node, ptr %113, i32 0, i32 9
  %114 = load i32, ptr %flags81, align 4, !tbaa !74
  %115 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object82 = getelementptr inbounds %struct.xnn_operator_data, ptr %115, i32 0, i32 0
  %call83 = call i32 @xnn_create_max_pooling2d_nhwc_s8(i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i64 noundef %108, i64 noundef %109, i64 noundef %110, i8 noundef signext %111, i8 noundef signext %112, i32 noundef %114, ptr noundef %operator_object82) #6
  store i32 %call83, ptr %status, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 1, ptr %output_max53) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %output_min48) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_zero_point) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_scale) #7
  br label %sw.epilog

sw.bb84:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_scale85) #7
  %116 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %117 = load i32, ptr %output_id, align 4, !tbaa !8
  %idxprom86 = zext i32 %117 to i64
  %arrayidx87 = getelementptr inbounds %struct.xnn_value, ptr %116, i64 %idxprom86
  %quantization88 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx87, i32 0, i32 3
  %118 = getelementptr inbounds %struct.anon.19, ptr %quantization88, i32 0, i32 1
  %119 = load float, ptr %118, align 8, !tbaa !64
  store float %119, ptr %output_scale85, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_zero_point89) #7
  %120 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %121 = load i32, ptr %output_id, align 4, !tbaa !8
  %idxprom90 = zext i32 %121 to i64
  %arrayidx91 = getelementptr inbounds %struct.xnn_value, ptr %120, i64 %idxprom90
  %quantization92 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx91, i32 0, i32 3
  %zero_point93 = getelementptr inbounds %struct.anon.19, ptr %quantization92, i32 0, i32 0
  %122 = load i32, ptr %zero_point93, align 8, !tbaa !65
  store i32 %122, ptr %output_zero_point89, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %output_min94) #7
  %123 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation95 = getelementptr inbounds %struct.xnn_node, ptr %123, i32 0, i32 4
  %output_min96 = getelementptr inbounds %struct.anon.33, ptr %activation95, i32 0, i32 0
  %124 = load float, ptr %output_min96, align 8, !tbaa !70
  %125 = load float, ptr %output_scale85, align 4, !tbaa !10
  %div97 = fdiv float %124, %125
  %126 = load i32, ptr %output_zero_point89, align 4, !tbaa !8
  %conv98 = sitofp i32 %126 to float
  %add99 = fadd float %div97, %conv98
  %127 = call float @llvm.maxnum.f32(float %add99, float 0.000000e+00)
  %128 = call float @llvm.minnum.f32(float %127, float 2.550000e+02)
  %call100 = call i64 @lrintf(float noundef %128) #8
  %conv101 = trunc i64 %call100 to i8
  store i8 %conv101, ptr %output_min94, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 1, ptr %output_max102) #7
  %129 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %activation103 = getelementptr inbounds %struct.xnn_node, ptr %129, i32 0, i32 4
  %output_max104 = getelementptr inbounds %struct.anon.33, ptr %activation103, i32 0, i32 1
  %130 = load float, ptr %output_max104, align 4, !tbaa !71
  %131 = load float, ptr %output_scale85, align 4, !tbaa !10
  %div105 = fdiv float %130, %131
  %132 = load i32, ptr %output_zero_point89, align 4, !tbaa !8
  %conv106 = sitofp i32 %132 to float
  %add107 = fadd float %div105, %conv106
  %133 = call float @llvm.maxnum.f32(float %add107, float 0.000000e+00)
  %134 = call float @llvm.minnum.f32(float %133, float 2.550000e+02)
  %call108 = call i64 @lrintf(float noundef %134) #8
  %conv109 = trunc i64 %call108 to i8
  store i8 %conv109, ptr %output_max102, align 1, !tbaa !64
  %135 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params110 = getelementptr inbounds %struct.xnn_node, ptr %135, i32 0, i32 3
  %padding_top111 = getelementptr inbounds %struct.anon.27, ptr %params110, i32 0, i32 0
  %136 = load i32, ptr %padding_top111, align 8, !tbaa !64
  %137 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params112 = getelementptr inbounds %struct.xnn_node, ptr %137, i32 0, i32 3
  %padding_right113 = getelementptr inbounds %struct.anon.27, ptr %params112, i32 0, i32 1
  %138 = load i32, ptr %padding_right113, align 4, !tbaa !64
  %139 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params114 = getelementptr inbounds %struct.xnn_node, ptr %139, i32 0, i32 3
  %padding_bottom115 = getelementptr inbounds %struct.anon.27, ptr %params114, i32 0, i32 2
  %140 = load i32, ptr %padding_bottom115, align 8, !tbaa !64
  %141 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params116 = getelementptr inbounds %struct.xnn_node, ptr %141, i32 0, i32 3
  %padding_left117 = getelementptr inbounds %struct.anon.27, ptr %params116, i32 0, i32 3
  %142 = load i32, ptr %padding_left117, align 4, !tbaa !64
  %143 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params118 = getelementptr inbounds %struct.xnn_node, ptr %143, i32 0, i32 3
  %pooling_height119 = getelementptr inbounds %struct.anon.27, ptr %params118, i32 0, i32 4
  %144 = load i32, ptr %pooling_height119, align 8, !tbaa !64
  %145 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params120 = getelementptr inbounds %struct.xnn_node, ptr %145, i32 0, i32 3
  %pooling_width121 = getelementptr inbounds %struct.anon.27, ptr %params120, i32 0, i32 5
  %146 = load i32, ptr %pooling_width121, align 4, !tbaa !64
  %147 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params122 = getelementptr inbounds %struct.xnn_node, ptr %147, i32 0, i32 3
  %stride_height123 = getelementptr inbounds %struct.anon.27, ptr %params122, i32 0, i32 6
  %148 = load i32, ptr %stride_height123, align 8, !tbaa !64
  %149 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params124 = getelementptr inbounds %struct.xnn_node, ptr %149, i32 0, i32 3
  %stride_width125 = getelementptr inbounds %struct.anon.27, ptr %params124, i32 0, i32 7
  %150 = load i32, ptr %stride_width125, align 4, !tbaa !64
  %151 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params126 = getelementptr inbounds %struct.xnn_node, ptr %151, i32 0, i32 3
  %dilation_height127 = getelementptr inbounds %struct.anon.27, ptr %params126, i32 0, i32 8
  %152 = load i32, ptr %dilation_height127, align 8, !tbaa !64
  %153 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params128 = getelementptr inbounds %struct.xnn_node, ptr %153, i32 0, i32 3
  %dilation_width129 = getelementptr inbounds %struct.anon.27, ptr %params128, i32 0, i32 9
  %154 = load i32, ptr %dilation_width129, align 4, !tbaa !64
  %155 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %156 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %157 = load i64, ptr %channel_dim, align 8, !tbaa !77
  %158 = load i8, ptr %output_min94, align 1, !tbaa !64
  %159 = load i8, ptr %output_max102, align 1, !tbaa !64
  %160 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %flags130 = getelementptr inbounds %struct.xnn_node, ptr %160, i32 0, i32 9
  %161 = load i32, ptr %flags130, align 4, !tbaa !74
  %162 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object131 = getelementptr inbounds %struct.xnn_operator_data, ptr %162, i32 0, i32 0
  %call132 = call i32 @xnn_create_max_pooling2d_nhwc_u8(i32 noundef %136, i32 noundef %138, i32 noundef %140, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %152, i32 noundef %154, i64 noundef %155, i64 noundef %156, i64 noundef %157, i8 noundef zeroext %158, i8 noundef zeroext %159, i32 noundef %161, ptr noundef %operator_object131) #6
  store i32 %call132, ptr %status, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 1, ptr %output_max102) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %output_min94) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_zero_point89) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_scale85) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb84, %sw.bb42, %sw.bb14, %sw.bb
  %163 = load i32, ptr %status, align 4, !tbaa !64
  %cmp = icmp eq i32 %163, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %164 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %165 = load i32, ptr %input_id, align 4, !tbaa !8
  %idxprom134 = zext i32 %165 to i64
  %arrayidx135 = getelementptr inbounds %struct.xnn_value, ptr %164, i64 %idxprom134
  %shape136 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx135, i32 0, i32 4
  %dim137 = getelementptr inbounds %struct.xnn_shape, ptr %shape136, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [6 x i64], ptr %dim137, i64 0, i64 0
  %166 = load i64, ptr %arrayidx138, align 8, !tbaa !77
  %167 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %batch_size = getelementptr inbounds %struct.xnn_operator_data, ptr %167, i32 0, i32 2
  store i64 %166, ptr %batch_size, align 8, !tbaa !78
  %168 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %169 = load i32, ptr %input_id, align 4, !tbaa !8
  %idxprom139 = zext i32 %169 to i64
  %arrayidx140 = getelementptr inbounds %struct.xnn_value, ptr %168, i64 %idxprom139
  %shape141 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx140, i32 0, i32 4
  %dim142 = getelementptr inbounds %struct.xnn_shape, ptr %shape141, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [6 x i64], ptr %dim142, i64 0, i64 1
  %170 = load i64, ptr %arrayidx143, align 8, !tbaa !77
  %171 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_height = getelementptr inbounds %struct.xnn_operator_data, ptr %171, i32 0, i32 3
  store i64 %170, ptr %input_height, align 8, !tbaa !80
  %172 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %173 = load i32, ptr %input_id, align 4, !tbaa !8
  %idxprom144 = zext i32 %173 to i64
  %arrayidx145 = getelementptr inbounds %struct.xnn_value, ptr %172, i64 %idxprom144
  %shape146 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx145, i32 0, i32 4
  %dim147 = getelementptr inbounds %struct.xnn_shape, ptr %shape146, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [6 x i64], ptr %dim147, i64 0, i64 2
  %174 = load i64, ptr %arrayidx148, align 8, !tbaa !77
  %175 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_width = getelementptr inbounds %struct.xnn_operator_data, ptr %175, i32 0, i32 4
  store i64 %174, ptr %input_width, align 8, !tbaa !81
  %176 = load i32, ptr %input_id, align 4, !tbaa !8
  %177 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %inputs149 = getelementptr inbounds %struct.xnn_operator_data, ptr %177, i32 0, i32 13
  %arrayidx150 = getelementptr inbounds [2 x i32], ptr %inputs149, i64 0, i64 0
  store i32 %176, ptr %arrayidx150, align 8, !tbaa !8
  %178 = load i32, ptr %output_id, align 4, !tbaa !8
  %179 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %outputs151 = getelementptr inbounds %struct.xnn_operator_data, ptr %179, i32 0, i32 14
  %arrayidx152 = getelementptr inbounds [2 x i32], ptr %outputs151, i64 0, i64 0
  store i32 %178, ptr %arrayidx152, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %180 = load i32, ptr %status, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %channel_dim) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_id) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %input_id) #7
  ret i32 %180
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @setup_max_pooling_operator(ptr noundef %opdata, ptr noundef %blobs, i64 noundef %num_blobs, ptr noundef %threadpool) #0 {
entry:
  %retval = alloca i32, align 4
  %opdata.addr = alloca ptr, align 8
  %blobs.addr = alloca ptr, align 8
  %num_blobs.addr = alloca i64, align 8
  %threadpool.addr = alloca ptr, align 8
  %input_id = alloca i32, align 4
  %output_id = alloca i32, align 4
  %input_blob = alloca ptr, align 8
  %input_data = alloca ptr, align 8
  %output_blob = alloca ptr, align 8
  %output_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %opdata, ptr %opdata.addr, align 8, !tbaa !4
  store ptr %blobs, ptr %blobs.addr, align 8, !tbaa !4
  store i64 %num_blobs, ptr %num_blobs.addr, align 8, !tbaa !77
  store ptr %threadpool, ptr %threadpool.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %input_id) #7
  %0 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %inputs = getelementptr inbounds %struct.xnn_operator_data, ptr %0, i32 0, i32 13
  %arrayidx = getelementptr inbounds [2 x i32], ptr %inputs, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 8, !tbaa !8
  store i32 %1, ptr %input_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_id) #7
  %2 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %outputs = getelementptr inbounds %struct.xnn_operator_data, ptr %2, i32 0, i32 14
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %outputs, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 8, !tbaa !8
  store i32 %3, ptr %output_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_blob) #7
  %4 = load ptr, ptr %blobs.addr, align 8, !tbaa !4
  %5 = load i32, ptr %input_id, align 4, !tbaa !8
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.xnn_blob, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %input_blob, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_data) #7
  %6 = load ptr, ptr %input_blob, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.xnn_blob, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %data, align 8, !tbaa !82
  store ptr %7, ptr %input_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_blob) #7
  %8 = load ptr, ptr %blobs.addr, align 8, !tbaa !4
  %9 = load i32, ptr %output_id, align 4, !tbaa !8
  %idx.ext2 = zext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds %struct.xnn_blob, ptr %8, i64 %idx.ext2
  store ptr %add.ptr3, ptr %output_blob, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_data) #7
  %10 = load ptr, ptr %output_blob, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.xnn_blob, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %data4, align 8, !tbaa !82
  store ptr %11, ptr %output_data, align 8, !tbaa !4
  %12 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object = getelementptr inbounds %struct.xnn_operator_data, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %operator_object, align 8, !tbaa !84
  %type = getelementptr inbounds %struct.xnn_operator, ptr %13, i32 0, i32 55
  %14 = load i32, ptr %type, align 64, !tbaa !85
  switch i32 %14, label %sw.default [
    i32 59, label %sw.bb
    i32 60, label %sw.bb6
    i32 61, label %sw.bb12
    i32 62, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %15 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object5 = getelementptr inbounds %struct.xnn_operator_data, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %operator_object5, align 8, !tbaa !84
  %17 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %batch_size = getelementptr inbounds %struct.xnn_operator_data, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %batch_size, align 8, !tbaa !78
  %19 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_height = getelementptr inbounds %struct.xnn_operator_data, ptr %19, i32 0, i32 3
  %20 = load i64, ptr %input_height, align 8, !tbaa !80
  %21 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_width = getelementptr inbounds %struct.xnn_operator_data, ptr %21, i32 0, i32 4
  %22 = load i64, ptr %input_width, align 8, !tbaa !81
  %23 = load ptr, ptr %input_data, align 8, !tbaa !4
  %24 = load ptr, ptr %output_data, align 8, !tbaa !4
  %25 = load ptr, ptr %threadpool.addr, align 8, !tbaa !4
  %call = call i32 @xnn_setup_max_pooling2d_nhwc_f16(ptr noundef %16, i64 noundef %18, i64 noundef %20, i64 noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25) #6
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %26 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object7 = getelementptr inbounds %struct.xnn_operator_data, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %operator_object7, align 8, !tbaa !84
  %28 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %batch_size8 = getelementptr inbounds %struct.xnn_operator_data, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %batch_size8, align 8, !tbaa !78
  %30 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_height9 = getelementptr inbounds %struct.xnn_operator_data, ptr %30, i32 0, i32 3
  %31 = load i64, ptr %input_height9, align 8, !tbaa !80
  %32 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_width10 = getelementptr inbounds %struct.xnn_operator_data, ptr %32, i32 0, i32 4
  %33 = load i64, ptr %input_width10, align 8, !tbaa !81
  %34 = load ptr, ptr %input_data, align 8, !tbaa !4
  %35 = load ptr, ptr %output_data, align 8, !tbaa !4
  %36 = load ptr, ptr %threadpool.addr, align 8, !tbaa !4
  %call11 = call i32 @xnn_setup_max_pooling2d_nhwc_f32(ptr noundef %27, i64 noundef %29, i64 noundef %31, i64 noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36) #6
  store i32 %call11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %37 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object13 = getelementptr inbounds %struct.xnn_operator_data, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %operator_object13, align 8, !tbaa !84
  %39 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %batch_size14 = getelementptr inbounds %struct.xnn_operator_data, ptr %39, i32 0, i32 2
  %40 = load i64, ptr %batch_size14, align 8, !tbaa !78
  %41 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_height15 = getelementptr inbounds %struct.xnn_operator_data, ptr %41, i32 0, i32 3
  %42 = load i64, ptr %input_height15, align 8, !tbaa !80
  %43 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_width16 = getelementptr inbounds %struct.xnn_operator_data, ptr %43, i32 0, i32 4
  %44 = load i64, ptr %input_width16, align 8, !tbaa !81
  %45 = load ptr, ptr %input_data, align 8, !tbaa !4
  %46 = load ptr, ptr %output_data, align 8, !tbaa !4
  %47 = load ptr, ptr %threadpool.addr, align 8, !tbaa !4
  %call17 = call i32 @xnn_setup_max_pooling2d_nhwc_s8(ptr noundef %38, i64 noundef %40, i64 noundef %42, i64 noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47) #6
  store i32 %call17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %48 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object19 = getelementptr inbounds %struct.xnn_operator_data, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %operator_object19, align 8, !tbaa !84
  %50 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %batch_size20 = getelementptr inbounds %struct.xnn_operator_data, ptr %50, i32 0, i32 2
  %51 = load i64, ptr %batch_size20, align 8, !tbaa !78
  %52 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_height21 = getelementptr inbounds %struct.xnn_operator_data, ptr %52, i32 0, i32 3
  %53 = load i64, ptr %input_height21, align 8, !tbaa !80
  %54 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_width22 = getelementptr inbounds %struct.xnn_operator_data, ptr %54, i32 0, i32 4
  %55 = load i64, ptr %input_width22, align 8, !tbaa !81
  %56 = load ptr, ptr %input_data, align 8, !tbaa !4
  %57 = load ptr, ptr %output_data, align 8, !tbaa !4
  %58 = load ptr, ptr %threadpool.addr, align 8, !tbaa !4
  %call23 = call i32 @xnn_setup_max_pooling2d_nhwc_u8(ptr noundef %49, i64 noundef %51, i64 noundef %53, i64 noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58) #6
  store i32 %call23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb18, %sw.bb12, %sw.bb6, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_blob) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_blob) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_id) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %input_id) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %59 = load i32, ptr %retval, align 4
  ret i32 %59

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @xnn_create_max_pooling2d_nhwc_f16(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, float noundef, float noundef, i32 noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @xnn_create_max_pooling2d_nhwc_f32(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, float noundef, float noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind optsize
declare i64 @lrintf(float noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #3

; Function Attrs: optsize
declare i32 @xnn_create_max_pooling2d_nhwc_s8(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i8 noundef signext, i8 noundef signext, i32 noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @xnn_create_max_pooling2d_nhwc_u8(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @xnn_setup_max_pooling2d_nhwc_f16(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @xnn_setup_max_pooling2d_nhwc_f32(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @xnn_setup_max_pooling2d_nhwc_s8(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare i32 @xnn_setup_max_pooling2d_nhwc_u8(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !9, i64 0}
!13 = !{!"xnn_parameters", !9, i64 0, !14, i64 8, !15, i64 56, !20, i64 232, !25, i64 576, !27, i64 952, !31, i64 1016, !32, i64 1096, !34, i64 1136, !37, i64 1808, !45, i64 3360, !46, i64 3504, !48, i64 3560}
!14 = !{!"xnn_allocator", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!15 = !{!"", !16, i64 0, !6, i64 112}
!16 = !{!"gemm_parameters", !17, i64 0, !17, i64 32, !17, i64 64, !6, i64 96, !6, i64 104, !6, i64 105, !6, i64 106, !6, i64 107}
!17 = !{!"gemm_fused_ukernels", !18, i64 0, !19, i64 8, !18, i64 16, !19, i64 24}
!18 = !{!"xnn_hmp_gemm_ukernel", !6, i64 0}
!19 = !{!"xnn_hmp_igemm_ukernel", !6, i64 0}
!20 = !{!"", !16, i64 0, !6, i64 112, !21, i64 176, !23, i64 216, !23, i64 280}
!21 = !{!"gavgpool_parameters", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 24, !22, i64 32, !22, i64 34}
!22 = !{!"short", !6, i64 0}
!23 = !{!"vbinary_parameters", !24, i64 0, !24, i64 24, !6, i64 48, !6, i64 56}
!24 = !{!"vbinary_fused_ukernels", !5, i64 0, !5, i64 8, !5, i64 16}
!25 = !{!"", !16, i64 0, !6, i64 112, !26, i64 176, !21, i64 208, !23, i64 248, !23, i64 312}
!26 = !{!"avgpool_parameters", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 24, !6, i64 25, !22, i64 26}
!27 = !{!"", !28, i64 0, !29, i64 24, !30, i64 40}
!28 = !{!"vunary_parameters", !5, i64 0, !6, i64 8, !6, i64 16}
!29 = !{!"ibilinear_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!30 = !{!"maxpool_parameters", !5, i64 0, !6, i64 8, !6, i64 16, !6, i64 17}
!31 = !{!"", !28, i64 0, !29, i64 24, !30, i64 40, !5, i64 64, !5, i64 72}
!32 = !{!"", !5, i64 0, !33, i64 8}
!33 = !{!"zip_parameters", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!34 = !{!"", !21, i64 0, !16, i64 40, !16, i64 152, !6, i64 264, !29, i64 392, !30, i64 408, !28, i64 432, !28, i64 456, !28, i64 480, !35, i64 504, !23, i64 520, !23, i64 584, !36, i64 648}
!35 = !{!"prelu_parameters", !5, i64 0, !22, i64 8, !22, i64 10}
!36 = !{!"vmulcaddc_parameters", !5, i64 0, !6, i64 8, !6, i64 16, !6, i64 17}
!37 = !{!"", !16, i64 0, !16, i64 112, !6, i64 224, !26, i64 352, !38, i64 384, !21, i64 408, !30, i64 448, !6, i64 472, !29, i64 520, !28, i64 536, !28, i64 560, !28, i64 584, !28, i64 608, !28, i64 632, !28, i64 656, !28, i64 680, !28, i64 704, !28, i64 728, !28, i64 752, !28, i64 776, !28, i64 800, !28, i64 824, !28, i64 848, !35, i64 872, !23, i64 888, !23, i64 952, !23, i64 1016, !23, i64 1080, !23, i64 1144, !23, i64 1208, !23, i64 1272, !36, i64 1336, !39, i64 1360, !5, i64 1384, !40, i64 1392, !40, i64 1408, !40, i64 1424, !41, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !43, i64 1520, !44, i64 1536}
!38 = !{!"pavgpool_parameters", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !22, i64 18}
!39 = !{!"raddstoreexpminusmax_parameters", !5, i64 0, !5, i64 8, !6, i64 16}
!40 = !{!"spmm_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!41 = !{!"conv_hwc2chw_parameters", !5, i64 0, !6, i64 8, !6, i64 9, !6, i64 10}
!42 = !{!"dwconv2d_chw_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!43 = !{!"gavgpool_cw_parameters", !5, i64 0, !6, i64 8}
!44 = !{!"ibilinear_chw_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!45 = !{!"", !28, i64 0, !28, i64 24, !28, i64 48, !28, i64 72, !28, i64 96, !28, i64 120}
!46 = !{!"", !5, i64 0, !33, i64 8, !47, i64 40}
!47 = !{!"depthtospace2d_chw2hwc_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!48 = !{!"", !5, i64 0, !49, i64 8, !50, i64 24}
!49 = !{!"fill_parameters", !5, i64 0, !6, i64 8}
!50 = !{!"pad_parameters", !5, i64 0, !6, i64 8}
!51 = !{!52, !52, i64 0}
!52 = !{!"_Bool", !6, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!56, !9, i64 8}
!56 = !{!"xnn_subgraph", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 16, !9, i64 24, !9, i64 28, !5, i64 32}
!57 = !{!56, !5, i64 16}
!58 = !{!59, !6, i64 4}
!59 = !{!"xnn_value", !9, i64 0, !6, i64 4, !6, i64 8, !60, i64 16, !61, i64 40, !9, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !6, i64 128, !52, i64 132, !9, i64 136, !9, i64 140}
!60 = !{!"", !9, i64 0, !6, i64 8}
!61 = !{!"xnn_shape", !62, i64 0, !6, i64 8}
!62 = !{!"long", !6, i64 0}
!63 = !{!59, !6, i64 8}
!64 = !{!6, !6, i64 0}
!65 = !{!59, !9, i64 16}
!66 = !{!67, !6, i64 0}
!67 = !{!"xnn_node", !6, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !68, i64 120, !6, i64 128, !9, i64 140, !6, i64 144, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !62, i64 168, !62, i64 176, !5, i64 184, !5, i64 192}
!68 = !{!"", !11, i64 0, !11, i64 4}
!69 = !{!67, !6, i64 8}
!70 = !{!67, !11, i64 120}
!71 = !{!67, !11, i64 124}
!72 = !{!67, !9, i64 140}
!73 = !{!67, !9, i64 152}
!74 = !{!67, !9, i64 156}
!75 = !{!67, !5, i64 184}
!76 = !{!67, !5, i64 192}
!77 = !{!62, !62, i64 0}
!78 = !{!79, !62, i64 16}
!79 = !{!"xnn_operator_data", !5, i64 0, !5, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !61, i64 56, !61, i64 112, !6, i64 168, !6, i64 216, !9, i64 264, !9, i64 268, !6, i64 272, !6, i64 280}
!80 = !{!79, !62, i64 24}
!81 = !{!79, !62, i64 32}
!82 = !{!83, !5, i64 8}
!83 = !{!"xnn_blob", !62, i64 0, !5, i64 8, !52, i64 16}
!84 = !{!79, !5, i64 0}
!85 = !{!86, !6, i64 1152}
!86 = !{!"xnn_operator", !62, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !9, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !5, i64 184, !5, i64 192, !62, i64 200, !62, i64 208, !62, i64 216, !62, i64 224, !11, i64 232, !11, i64 236, !9, i64 240, !6, i64 244, !6, i64 245, !6, i64 246, !62, i64 248, !62, i64 256, !62, i64 264, !5, i64 272, !62, i64 280, !62, i64 288, !5, i64 296, !9, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !9, i64 344, !6, i64 384, !6, i64 1152, !87, i64 1160, !88, i64 1200, !88, i64 1280, !6, i64 1408, !6, i64 2048}
!87 = !{!"xnn_ukernel", !6, i64 0, !6, i64 8}
!88 = !{!"compute_parameters", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 64}

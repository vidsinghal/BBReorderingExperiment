; ModuleID = 'samples/46.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/subgraph/unpooling-2d.c"
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

@xnn_params = external hidden global %struct.xnn_parameters, align 8
@.str = private unnamed_addr constant [57 x i8] c"failed to define %s operator: XNNPACK is not initialized\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"failed to define %s operator with %ux%u pooling size: pooling size dimensions must be non-zero\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"failed to define %s operator with 1 pooling element: 1x1 pooling is meaningless\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"failed to define %s operator with input value ID #%u: invalid Value ID\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"failed to define %s operator with input value ID #%u: unsupported Value type %d (expected dense tensor)\00", align 1
@.str.5 = private unnamed_addr constant [89 x i8] c"failed to define %s operator with input value ID #%u: unsupported Value datatype %s (%d)\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"failed to define %s operator with input index ID #%u: invalid Value ID\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"failed to define %s operator with input index ID #%u: unsupported Value type %d (expected dense tensor)\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"failed to define %s operator with output ID #%u: invalid Value ID\00", align 1
@.str.9 = private unnamed_addr constant [99 x i8] c"failed to define %s operator with output ID #%u: unsupported Value type %d (expected dense tensor)\00", align 1
@.str.10 = private unnamed_addr constant [84 x i8] c"failed to define %s operator with output ID #%u: unsupported Value datatype %s (%d)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @xnn_define_unpooling_2d(ptr noundef %subgraph, i32 noundef %padding_top, i32 noundef %padding_right, i32 noundef %padding_bottom, i32 noundef %padding_left, i32 noundef %pooling_height, i32 noundef %pooling_width, i32 noundef %input_value_id, i32 noundef %input_index_id, i32 noundef %output_id, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %subgraph.addr = alloca ptr, align 8
  %padding_top.addr = alloca i32, align 4
  %padding_right.addr = alloca i32, align 4
  %padding_bottom.addr = alloca i32, align 4
  %padding_left.addr = alloca i32, align 4
  %pooling_height.addr = alloca i32, align 4
  %pooling_width.addr = alloca i32, align 4
  %input_value_id.addr = alloca i32, align 4
  %input_index_id.addr = alloca i32, align 4
  %output_id.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pooling_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %input_value_value = alloca ptr, align 8
  %input_index_value = alloca ptr, align 8
  %output_value = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %subgraph, ptr %subgraph.addr, align 8, !tbaa !4
  store i32 %padding_top, ptr %padding_top.addr, align 4, !tbaa !8
  store i32 %padding_right, ptr %padding_right.addr, align 4, !tbaa !8
  store i32 %padding_bottom, ptr %padding_bottom.addr, align 4, !tbaa !8
  store i32 %padding_left, ptr %padding_left.addr, align 4, !tbaa !8
  store i32 %pooling_height, ptr %pooling_height.addr, align 4, !tbaa !8
  store i32 %pooling_width, ptr %pooling_width.addr, align 4, !tbaa !8
  store i32 %input_value_id, ptr %input_value_id.addr, align 4, !tbaa !8
  store i32 %input_index_id, ptr %input_index_id.addr, align 4, !tbaa !8
  store i32 %output_id, ptr %output_id.addr, align 4, !tbaa !8
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  %0 = load i32, ptr @xnn_params, align 8, !tbaa !10
  %and = and i32 %0, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str, ptr noundef %call) #4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pooling_size) #5
  %1 = load i32, ptr %pooling_height.addr, align 4, !tbaa !8
  %2 = load i32, ptr %pooling_width.addr, align 4, !tbaa !8
  %mul = mul i32 %1, %2
  store i32 %mul, ptr %pooling_size, align 4, !tbaa !8
  %3 = load i32, ptr %pooling_size, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %4 = load i32, ptr %pooling_width.addr, align 4, !tbaa !8
  %5 = load i32, ptr %pooling_height.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.1, ptr noundef %call3, i32 noundef %4, i32 noundef %5) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %pooling_size, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %call7 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.2, ptr noundef %call7) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

if.end8:                                          ; preds = %if.end4
  %7 = load i32, ptr %input_value_id.addr, align 4, !tbaa !8
  %8 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %num_values = getelementptr inbounds %struct.xnn_subgraph, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %num_values, align 8, !tbaa !49
  %cmp9 = icmp uge i32 %7, %9
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %call11 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %10 = load i32, ptr %input_value_id.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.3, ptr noundef %call11, i32 noundef %10) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_value_value) #5
  %11 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %values = getelementptr inbounds %struct.xnn_subgraph, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %values, align 8, !tbaa !51
  %13 = load i32, ptr %input_value_id.addr, align 4, !tbaa !8
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.xnn_value, ptr %12, i64 %idxprom
  store ptr %arrayidx, ptr %input_value_value, align 8, !tbaa !4
  %14 = load ptr, ptr %input_value_value, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.xnn_value, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %type, align 4, !tbaa !52
  %cmp13 = icmp ne i32 %15, 1
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %call15 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %16 = load i32, ptr %input_value_id.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %input_value_value, align 8, !tbaa !4
  %type16 = getelementptr inbounds %struct.xnn_value, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %type16, align 4, !tbaa !52
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.4, ptr noundef %call15, i32 noundef %16, i32 noundef %18) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end17:                                         ; preds = %if.end12
  %19 = load ptr, ptr %input_value_value, align 8, !tbaa !4
  %datatype = getelementptr inbounds %struct.xnn_value, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %datatype, align 8, !tbaa !58
  switch i32 %20, label %sw.default [
    i32 1, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end17
  %call18 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %21 = load i32, ptr %input_value_id.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %input_value_value, align 8, !tbaa !4
  %datatype19 = getelementptr inbounds %struct.xnn_value, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %datatype19, align 8, !tbaa !58
  %call20 = call ptr @xnn_datatype_to_string(i32 noundef %23) #4
  %24 = load ptr, ptr %input_value_value, align 8, !tbaa !4
  %datatype21 = getelementptr inbounds %struct.xnn_value, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %datatype21, align 8, !tbaa !58
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.5, ptr noundef %call18, i32 noundef %21, ptr noundef %call20, i32 noundef %25) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

sw.epilog:                                        ; preds = %if.end17
  %26 = load i32, ptr %input_index_id.addr, align 4, !tbaa !8
  %27 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %num_values22 = getelementptr inbounds %struct.xnn_subgraph, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %num_values22, align 8, !tbaa !49
  %cmp23 = icmp uge i32 %26, %28
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %sw.epilog
  %call25 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %29 = load i32, ptr %input_index_id.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.6, ptr noundef %call25, i32 noundef %29) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end26:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_index_value) #5
  %30 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %values27 = getelementptr inbounds %struct.xnn_subgraph, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %values27, align 8, !tbaa !51
  %32 = load i32, ptr %input_index_id.addr, align 4, !tbaa !8
  %idxprom28 = zext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds %struct.xnn_value, ptr %31, i64 %idxprom28
  store ptr %arrayidx29, ptr %input_index_value, align 8, !tbaa !4
  %33 = load ptr, ptr %input_index_value, align 8, !tbaa !4
  %type30 = getelementptr inbounds %struct.xnn_value, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %type30, align 4, !tbaa !52
  %cmp31 = icmp ne i32 %34, 1
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end26
  %call33 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %35 = load i32, ptr %input_index_id.addr, align 4, !tbaa !8
  %36 = load ptr, ptr %input_index_value, align 8, !tbaa !4
  %type34 = getelementptr inbounds %struct.xnn_value, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %type34, align 4, !tbaa !52
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.7, ptr noundef %call33, i32 noundef %35, i32 noundef %37) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

if.end35:                                         ; preds = %if.end26
  %38 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %39 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %num_values36 = getelementptr inbounds %struct.xnn_subgraph, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %num_values36, align 8, !tbaa !49
  %cmp37 = icmp uge i32 %38, %40
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  %call39 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %41 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.8, ptr noundef %call39, i32 noundef %41) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

if.end40:                                         ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_value) #5
  %42 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %values41 = getelementptr inbounds %struct.xnn_subgraph, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %values41, align 8, !tbaa !51
  %44 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %idxprom42 = zext i32 %44 to i64
  %arrayidx43 = getelementptr inbounds %struct.xnn_value, ptr %43, i64 %idxprom42
  store ptr %arrayidx43, ptr %output_value, align 8, !tbaa !4
  %45 = load ptr, ptr %output_value, align 8, !tbaa !4
  %type44 = getelementptr inbounds %struct.xnn_value, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %type44, align 4, !tbaa !52
  %cmp45 = icmp ne i32 %46, 1
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end40
  %call47 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %47 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %48 = load ptr, ptr %output_value, align 8, !tbaa !4
  %type48 = getelementptr inbounds %struct.xnn_value, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %type48, align 4, !tbaa !52
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.9, ptr noundef %call47, i32 noundef %47, i32 noundef %49) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78

if.end49:                                         ; preds = %if.end40
  %50 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype50 = getelementptr inbounds %struct.xnn_value, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %datatype50, align 8, !tbaa !58
  switch i32 %51, label %sw.default51 [
    i32 1, label %sw.epilog56
  ]

sw.default51:                                     ; preds = %if.end49
  %call52 = call ptr @xnn_node_type_to_string(i32 noundef 35) #4
  %52 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %53 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype53 = getelementptr inbounds %struct.xnn_value, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %datatype53, align 8, !tbaa !58
  %call54 = call ptr @xnn_datatype_to_string(i32 noundef %54) #4
  %55 = load ptr, ptr %output_value, align 8, !tbaa !4
  %datatype55 = getelementptr inbounds %struct.xnn_value, ptr %55, i32 0, i32 2
  %56 = load i32, ptr %datatype55, align 8, !tbaa !58
  call void (ptr, ...) @xnn_log_error(ptr noundef @.str.10, ptr noundef %call52, i32 noundef %52, ptr noundef %call54, i32 noundef %56) #4
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78

sw.epilog56:                                      ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5
  %57 = load ptr, ptr %subgraph.addr, align 8, !tbaa !4
  %call57 = call ptr @xnn_subgraph_new_node(ptr noundef %57) #4
  store ptr %call57, ptr %node, align 8, !tbaa !4
  %58 = load ptr, ptr %node, align 8, !tbaa !4
  %cmp58 = icmp eq ptr %58, null
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %sw.epilog56
  store i32 6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %sw.epilog56
  %59 = load ptr, ptr %node, align 8, !tbaa !4
  %type61 = getelementptr inbounds %struct.xnn_node, ptr %59, i32 0, i32 0
  store i32 35, ptr %type61, align 8, !tbaa !59
  %60 = load ptr, ptr %node, align 8, !tbaa !4
  %compute_type = getelementptr inbounds %struct.xnn_node, ptr %60, i32 0, i32 2
  store i32 1, ptr %compute_type, align 8, !tbaa !63
  %61 = load i32, ptr %padding_top.addr, align 4, !tbaa !8
  %62 = load ptr, ptr %node, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.xnn_node, ptr %62, i32 0, i32 3
  %padding_top62 = getelementptr inbounds %struct.anon.27, ptr %params, i32 0, i32 0
  store i32 %61, ptr %padding_top62, align 8, !tbaa !64
  %63 = load i32, ptr %padding_right.addr, align 4, !tbaa !8
  %64 = load ptr, ptr %node, align 8, !tbaa !4
  %params63 = getelementptr inbounds %struct.xnn_node, ptr %64, i32 0, i32 3
  %padding_right64 = getelementptr inbounds %struct.anon.27, ptr %params63, i32 0, i32 1
  store i32 %63, ptr %padding_right64, align 4, !tbaa !64
  %65 = load i32, ptr %padding_bottom.addr, align 4, !tbaa !8
  %66 = load ptr, ptr %node, align 8, !tbaa !4
  %params65 = getelementptr inbounds %struct.xnn_node, ptr %66, i32 0, i32 3
  %padding_bottom66 = getelementptr inbounds %struct.anon.27, ptr %params65, i32 0, i32 2
  store i32 %65, ptr %padding_bottom66, align 8, !tbaa !64
  %67 = load i32, ptr %padding_left.addr, align 4, !tbaa !8
  %68 = load ptr, ptr %node, align 8, !tbaa !4
  %params67 = getelementptr inbounds %struct.xnn_node, ptr %68, i32 0, i32 3
  %padding_left68 = getelementptr inbounds %struct.anon.27, ptr %params67, i32 0, i32 3
  store i32 %67, ptr %padding_left68, align 4, !tbaa !64
  %69 = load i32, ptr %pooling_height.addr, align 4, !tbaa !8
  %70 = load ptr, ptr %node, align 8, !tbaa !4
  %params69 = getelementptr inbounds %struct.xnn_node, ptr %70, i32 0, i32 3
  %pooling_height70 = getelementptr inbounds %struct.anon.27, ptr %params69, i32 0, i32 4
  store i32 %69, ptr %pooling_height70, align 8, !tbaa !64
  %71 = load i32, ptr %pooling_width.addr, align 4, !tbaa !8
  %72 = load ptr, ptr %node, align 8, !tbaa !4
  %params71 = getelementptr inbounds %struct.xnn_node, ptr %72, i32 0, i32 3
  %pooling_width72 = getelementptr inbounds %struct.anon.27, ptr %params71, i32 0, i32 5
  store i32 %71, ptr %pooling_width72, align 4, !tbaa !64
  %73 = load ptr, ptr %node, align 8, !tbaa !4
  %num_inputs = getelementptr inbounds %struct.xnn_node, ptr %73, i32 0, i32 6
  store i32 2, ptr %num_inputs, align 4, !tbaa !65
  %74 = load i32, ptr %input_value_id.addr, align 4, !tbaa !8
  %75 = load ptr, ptr %node, align 8, !tbaa !4
  %inputs = getelementptr inbounds %struct.xnn_node, ptr %75, i32 0, i32 5
  %arrayidx73 = getelementptr inbounds [3 x i32], ptr %inputs, i64 0, i64 0
  store i32 %74, ptr %arrayidx73, align 8, !tbaa !8
  %76 = load i32, ptr %input_index_id.addr, align 4, !tbaa !8
  %77 = load ptr, ptr %node, align 8, !tbaa !4
  %inputs74 = getelementptr inbounds %struct.xnn_node, ptr %77, i32 0, i32 5
  %arrayidx75 = getelementptr inbounds [3 x i32], ptr %inputs74, i64 0, i64 1
  store i32 %76, ptr %arrayidx75, align 4, !tbaa !8
  %78 = load ptr, ptr %node, align 8, !tbaa !4
  %num_outputs = getelementptr inbounds %struct.xnn_node, ptr %78, i32 0, i32 8
  store i32 1, ptr %num_outputs, align 8, !tbaa !66
  %79 = load i32, ptr %output_id.addr, align 4, !tbaa !8
  %80 = load ptr, ptr %node, align 8, !tbaa !4
  %outputs = getelementptr inbounds %struct.xnn_node, ptr %80, i32 0, i32 7
  %arrayidx76 = getelementptr inbounds [2 x i32], ptr %outputs, i64 0, i64 0
  store i32 %79, ptr %arrayidx76, align 8, !tbaa !8
  %81 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %82 = load ptr, ptr %node, align 8, !tbaa !4
  %flags77 = getelementptr inbounds %struct.xnn_node, ptr %82, i32 0, i32 9
  store i32 %81, ptr %flags77, align 4, !tbaa !67
  %83 = load ptr, ptr %node, align 8, !tbaa !4
  %create = getelementptr inbounds %struct.xnn_node, ptr %83, i32 0, i32 14
  store ptr @create_unpooling_operator, ptr %create, align 8, !tbaa !68
  %84 = load ptr, ptr %node, align 8, !tbaa !4
  %setup = getelementptr inbounds %struct.xnn_node, ptr %84, i32 0, i32 15
  store ptr @setup_unpooling_operator, ptr %setup, align 8, !tbaa !69
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then59
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5
  br label %cleanup78

cleanup78:                                        ; preds = %cleanup, %sw.default51, %if.then46
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_value) #5
  br label %cleanup79

cleanup79:                                        ; preds = %cleanup78, %if.then38, %if.then32
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_index_value) #5
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup79, %if.then24, %sw.default, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_value_value) #5
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup80, %if.then10, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %pooling_size) #5
  br label %return

return:                                           ; preds = %cleanup81, %if.then
  %85 = load i32, ptr %retval, align 4
  ret i32 %85
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
  ret ptr @.str.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind optsize uwtable
define internal ptr @xnn_datatype_to_string(i32 noundef %type) #1 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4, !tbaa !64
  ret ptr @.str.11
}

; Function Attrs: optsize
declare ptr @xnn_subgraph_new_node(ptr noundef) #3

; Function Attrs: nounwind optsize uwtable
define internal i32 @create_unpooling_operator(ptr noundef %node, ptr noundef %values, i64 noundef %num_values, ptr noundef %opdata) #0 {
entry:
  %node.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %num_values.addr = alloca i64, align 8
  %opdata.addr = alloca ptr, align 8
  %input_value_id = alloca i32, align 4
  %input_index_id = alloca i32, align 4
  %output_id = alloca i32, align 4
  %channel_dim = alloca i64, align 8
  %status = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store i64 %num_values, ptr %num_values.addr, align 8, !tbaa !70
  store ptr %opdata, ptr %opdata.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %input_value_id) #5
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %inputs = getelementptr inbounds %struct.xnn_node, ptr %0, i32 0, i32 5
  %arrayidx = getelementptr inbounds [3 x i32], ptr %inputs, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 8, !tbaa !8
  store i32 %1, ptr %input_value_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %input_index_id) #5
  %2 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %inputs1 = getelementptr inbounds %struct.xnn_node, ptr %2, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [3 x i32], ptr %inputs1, i64 0, i64 1
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !8
  store i32 %3, ptr %input_index_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_id) #5
  %4 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %outputs = getelementptr inbounds %struct.xnn_node, ptr %4, i32 0, i32 7
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %outputs, i64 0, i64 0
  %5 = load i32, ptr %arrayidx3, align 8, !tbaa !8
  store i32 %5, ptr %output_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %channel_dim) #5
  %6 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %7 = load i32, ptr %input_value_id, align 4, !tbaa !8
  %idxprom = zext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct.xnn_value, ptr %6, i64 %idxprom
  %shape = getelementptr inbounds %struct.xnn_value, ptr %arrayidx4, i32 0, i32 4
  %dim = getelementptr inbounds %struct.xnn_shape, ptr %shape, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [6 x i64], ptr %dim, i64 0, i64 3
  %8 = load i64, ptr %arrayidx5, align 8, !tbaa !70
  store i64 %8, ptr %channel_dim, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  %9 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.xnn_node, ptr %9, i32 0, i32 3
  %padding_top = getelementptr inbounds %struct.anon.27, ptr %params, i32 0, i32 0
  %10 = load i32, ptr %padding_top, align 8, !tbaa !64
  %11 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params6 = getelementptr inbounds %struct.xnn_node, ptr %11, i32 0, i32 3
  %padding_right = getelementptr inbounds %struct.anon.27, ptr %params6, i32 0, i32 1
  %12 = load i32, ptr %padding_right, align 4, !tbaa !64
  %13 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params7 = getelementptr inbounds %struct.xnn_node, ptr %13, i32 0, i32 3
  %padding_bottom = getelementptr inbounds %struct.anon.27, ptr %params7, i32 0, i32 2
  %14 = load i32, ptr %padding_bottom, align 8, !tbaa !64
  %15 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params8 = getelementptr inbounds %struct.xnn_node, ptr %15, i32 0, i32 3
  %padding_left = getelementptr inbounds %struct.anon.27, ptr %params8, i32 0, i32 3
  %16 = load i32, ptr %padding_left, align 4, !tbaa !64
  %17 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params9 = getelementptr inbounds %struct.xnn_node, ptr %17, i32 0, i32 3
  %pooling_height = getelementptr inbounds %struct.anon.27, ptr %params9, i32 0, i32 4
  %18 = load i32, ptr %pooling_height, align 8, !tbaa !64
  %19 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %params10 = getelementptr inbounds %struct.xnn_node, ptr %19, i32 0, i32 3
  %pooling_width = getelementptr inbounds %struct.anon.27, ptr %params10, i32 0, i32 5
  %20 = load i32, ptr %pooling_width, align 4, !tbaa !64
  %21 = load i64, ptr %channel_dim, align 8, !tbaa !70
  %22 = load i64, ptr %channel_dim, align 8, !tbaa !70
  %23 = load i64, ptr %channel_dim, align 8, !tbaa !70
  %24 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.xnn_node, ptr %24, i32 0, i32 9
  %25 = load i32, ptr %flags, align 4, !tbaa !67
  %26 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object = getelementptr inbounds %struct.xnn_operator_data, ptr %26, i32 0, i32 0
  %call = call i32 @xnn_create_unpooling2d_nhwc_x32(i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i32 noundef %25, ptr noundef %operator_object) #4
  store i32 %call, ptr %status, align 4, !tbaa !64
  %27 = load i32, ptr %status, align 4, !tbaa !64
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %29 = load i32, ptr %input_value_id, align 4, !tbaa !8
  %idxprom11 = zext i32 %29 to i64
  %arrayidx12 = getelementptr inbounds %struct.xnn_value, ptr %28, i64 %idxprom11
  %shape13 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx12, i32 0, i32 4
  %dim14 = getelementptr inbounds %struct.xnn_shape, ptr %shape13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [6 x i64], ptr %dim14, i64 0, i64 0
  %30 = load i64, ptr %arrayidx15, align 8, !tbaa !70
  %31 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %batch_size = getelementptr inbounds %struct.xnn_operator_data, ptr %31, i32 0, i32 2
  store i64 %30, ptr %batch_size, align 8, !tbaa !71
  %32 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %33 = load i32, ptr %input_value_id, align 4, !tbaa !8
  %idxprom16 = zext i32 %33 to i64
  %arrayidx17 = getelementptr inbounds %struct.xnn_value, ptr %32, i64 %idxprom16
  %shape18 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx17, i32 0, i32 4
  %dim19 = getelementptr inbounds %struct.xnn_shape, ptr %shape18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [6 x i64], ptr %dim19, i64 0, i64 1
  %34 = load i64, ptr %arrayidx20, align 8, !tbaa !70
  %35 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_height = getelementptr inbounds %struct.xnn_operator_data, ptr %35, i32 0, i32 3
  store i64 %34, ptr %input_height, align 8, !tbaa !73
  %36 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %37 = load i32, ptr %input_value_id, align 4, !tbaa !8
  %idxprom21 = zext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds %struct.xnn_value, ptr %36, i64 %idxprom21
  %shape23 = getelementptr inbounds %struct.xnn_value, ptr %arrayidx22, i32 0, i32 4
  %dim24 = getelementptr inbounds %struct.xnn_shape, ptr %shape23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [6 x i64], ptr %dim24, i64 0, i64 2
  %38 = load i64, ptr %arrayidx25, align 8, !tbaa !70
  %39 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_width = getelementptr inbounds %struct.xnn_operator_data, ptr %39, i32 0, i32 4
  store i64 %38, ptr %input_width, align 8, !tbaa !74
  %40 = load i32, ptr %input_value_id, align 4, !tbaa !8
  %41 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %inputs26 = getelementptr inbounds %struct.xnn_operator_data, ptr %41, i32 0, i32 13
  %arrayidx27 = getelementptr inbounds [2 x i32], ptr %inputs26, i64 0, i64 0
  store i32 %40, ptr %arrayidx27, align 8, !tbaa !8
  %42 = load i32, ptr %input_index_id, align 4, !tbaa !8
  %43 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %inputs28 = getelementptr inbounds %struct.xnn_operator_data, ptr %43, i32 0, i32 13
  %arrayidx29 = getelementptr inbounds [2 x i32], ptr %inputs28, i64 0, i64 1
  store i32 %42, ptr %arrayidx29, align 4, !tbaa !8
  %44 = load i32, ptr %output_id, align 4, !tbaa !8
  %45 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %outputs30 = getelementptr inbounds %struct.xnn_operator_data, ptr %45, i32 0, i32 14
  %arrayidx31 = getelementptr inbounds [2 x i32], ptr %outputs30, i64 0, i64 0
  store i32 %44, ptr %arrayidx31, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %46 = load i32, ptr %status, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %channel_dim) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %input_index_id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %input_value_id) #5
  ret i32 %46
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @setup_unpooling_operator(ptr noundef %opdata, ptr noundef %blobs, i64 noundef %num_blobs, ptr noundef %threadpool) #0 {
entry:
  %opdata.addr = alloca ptr, align 8
  %blobs.addr = alloca ptr, align 8
  %num_blobs.addr = alloca i64, align 8
  %threadpool.addr = alloca ptr, align 8
  %input_value_id = alloca i32, align 4
  %input_index_id = alloca i32, align 4
  %output_id = alloca i32, align 4
  %input_value_blob = alloca ptr, align 8
  %input_value_data = alloca ptr, align 8
  %input_index_blob = alloca ptr, align 8
  %input_index_data = alloca ptr, align 8
  %output_blob = alloca ptr, align 8
  %output_data = alloca ptr, align 8
  store ptr %opdata, ptr %opdata.addr, align 8, !tbaa !4
  store ptr %blobs, ptr %blobs.addr, align 8, !tbaa !4
  store i64 %num_blobs, ptr %num_blobs.addr, align 8, !tbaa !70
  store ptr %threadpool, ptr %threadpool.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %input_value_id) #5
  %0 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %inputs = getelementptr inbounds %struct.xnn_operator_data, ptr %0, i32 0, i32 13
  %arrayidx = getelementptr inbounds [2 x i32], ptr %inputs, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 8, !tbaa !8
  store i32 %1, ptr %input_value_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %input_index_id) #5
  %2 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %inputs1 = getelementptr inbounds %struct.xnn_operator_data, ptr %2, i32 0, i32 13
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %inputs1, i64 0, i64 1
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !8
  store i32 %3, ptr %input_index_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %output_id) #5
  %4 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %outputs = getelementptr inbounds %struct.xnn_operator_data, ptr %4, i32 0, i32 14
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %outputs, i64 0, i64 0
  %5 = load i32, ptr %arrayidx3, align 8, !tbaa !8
  store i32 %5, ptr %output_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_value_blob) #5
  %6 = load ptr, ptr %blobs.addr, align 8, !tbaa !4
  %7 = load i32, ptr %input_value_id, align 4, !tbaa !8
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.xnn_blob, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %input_value_blob, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_value_data) #5
  %8 = load ptr, ptr %input_value_blob, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.xnn_blob, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %data, align 8, !tbaa !75
  store ptr %9, ptr %input_value_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_index_blob) #5
  %10 = load ptr, ptr %blobs.addr, align 8, !tbaa !4
  %11 = load i32, ptr %input_index_id, align 4, !tbaa !8
  %idx.ext4 = zext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds %struct.xnn_blob, ptr %10, i64 %idx.ext4
  store ptr %add.ptr5, ptr %input_index_blob, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_index_data) #5
  %12 = load ptr, ptr %input_index_blob, align 8, !tbaa !4
  %data6 = getelementptr inbounds %struct.xnn_blob, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %data6, align 8, !tbaa !75
  store ptr %13, ptr %input_index_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_blob) #5
  %14 = load ptr, ptr %blobs.addr, align 8, !tbaa !4
  %15 = load i32, ptr %output_id, align 4, !tbaa !8
  %idx.ext7 = zext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds %struct.xnn_blob, ptr %14, i64 %idx.ext7
  store ptr %add.ptr8, ptr %output_blob, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_data) #5
  %16 = load ptr, ptr %output_blob, align 8, !tbaa !4
  %data9 = getelementptr inbounds %struct.xnn_blob, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %data9, align 8, !tbaa !75
  store ptr %17, ptr %output_data, align 8, !tbaa !4
  %18 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %operator_object = getelementptr inbounds %struct.xnn_operator_data, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %operator_object, align 8, !tbaa !77
  %20 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %batch_size = getelementptr inbounds %struct.xnn_operator_data, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %batch_size, align 8, !tbaa !71
  %22 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_height = getelementptr inbounds %struct.xnn_operator_data, ptr %22, i32 0, i32 3
  %23 = load i64, ptr %input_height, align 8, !tbaa !73
  %24 = load ptr, ptr %opdata.addr, align 8, !tbaa !4
  %input_width = getelementptr inbounds %struct.xnn_operator_data, ptr %24, i32 0, i32 4
  %25 = load i64, ptr %input_width, align 8, !tbaa !74
  %26 = load ptr, ptr %input_value_data, align 8, !tbaa !4
  %27 = load ptr, ptr %input_index_data, align 8, !tbaa !4
  %28 = load ptr, ptr %output_data, align 8, !tbaa !4
  %29 = load ptr, ptr %threadpool.addr, align 8, !tbaa !4
  %call = call i32 @xnn_setup_unpooling2d_nhwc_x32(ptr noundef %19, i64 noundef %21, i64 noundef %23, i64 noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_blob) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_index_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_index_blob) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_value_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_value_blob) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %output_id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %input_index_id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %input_value_id) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @xnn_create_unpooling2d_nhwc_x32(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: optsize
declare i32 @xnn_setup_unpooling2d_nhwc_x32(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind }

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
!10 = !{!11, !9, i64 0}
!11 = !{!"xnn_parameters", !9, i64 0, !12, i64 8, !13, i64 56, !18, i64 232, !23, i64 576, !25, i64 952, !29, i64 1016, !30, i64 1096, !32, i64 1136, !35, i64 1808, !43, i64 3360, !44, i64 3504, !46, i64 3560}
!12 = !{!"xnn_allocator", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!13 = !{!"", !14, i64 0, !6, i64 112}
!14 = !{!"gemm_parameters", !15, i64 0, !15, i64 32, !15, i64 64, !6, i64 96, !6, i64 104, !6, i64 105, !6, i64 106, !6, i64 107}
!15 = !{!"gemm_fused_ukernels", !16, i64 0, !17, i64 8, !16, i64 16, !17, i64 24}
!16 = !{!"xnn_hmp_gemm_ukernel", !6, i64 0}
!17 = !{!"xnn_hmp_igemm_ukernel", !6, i64 0}
!18 = !{!"", !14, i64 0, !6, i64 112, !19, i64 176, !21, i64 216, !21, i64 280}
!19 = !{!"gavgpool_parameters", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 24, !20, i64 32, !20, i64 34}
!20 = !{!"short", !6, i64 0}
!21 = !{!"vbinary_parameters", !22, i64 0, !22, i64 24, !6, i64 48, !6, i64 56}
!22 = !{!"vbinary_fused_ukernels", !5, i64 0, !5, i64 8, !5, i64 16}
!23 = !{!"", !14, i64 0, !6, i64 112, !24, i64 176, !19, i64 208, !21, i64 248, !21, i64 312}
!24 = !{!"avgpool_parameters", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 24, !6, i64 25, !20, i64 26}
!25 = !{!"", !26, i64 0, !27, i64 24, !28, i64 40}
!26 = !{!"vunary_parameters", !5, i64 0, !6, i64 8, !6, i64 16}
!27 = !{!"ibilinear_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!28 = !{!"maxpool_parameters", !5, i64 0, !6, i64 8, !6, i64 16, !6, i64 17}
!29 = !{!"", !26, i64 0, !27, i64 24, !28, i64 40, !5, i64 64, !5, i64 72}
!30 = !{!"", !5, i64 0, !31, i64 8}
!31 = !{!"zip_parameters", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!32 = !{!"", !19, i64 0, !14, i64 40, !14, i64 152, !6, i64 264, !27, i64 392, !28, i64 408, !26, i64 432, !26, i64 456, !26, i64 480, !33, i64 504, !21, i64 520, !21, i64 584, !34, i64 648}
!33 = !{!"prelu_parameters", !5, i64 0, !20, i64 8, !20, i64 10}
!34 = !{!"vmulcaddc_parameters", !5, i64 0, !6, i64 8, !6, i64 16, !6, i64 17}
!35 = !{!"", !14, i64 0, !14, i64 112, !6, i64 224, !24, i64 352, !36, i64 384, !19, i64 408, !28, i64 448, !6, i64 472, !27, i64 520, !26, i64 536, !26, i64 560, !26, i64 584, !26, i64 608, !26, i64 632, !26, i64 656, !26, i64 680, !26, i64 704, !26, i64 728, !26, i64 752, !26, i64 776, !26, i64 800, !26, i64 824, !26, i64 848, !33, i64 872, !21, i64 888, !21, i64 952, !21, i64 1016, !21, i64 1080, !21, i64 1144, !21, i64 1208, !21, i64 1272, !34, i64 1336, !37, i64 1360, !5, i64 1384, !38, i64 1392, !38, i64 1408, !38, i64 1424, !39, i64 1440, !40, i64 1456, !40, i64 1472, !40, i64 1488, !40, i64 1504, !41, i64 1520, !42, i64 1536}
!36 = !{!"pavgpool_parameters", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !20, i64 18}
!37 = !{!"raddstoreexpminusmax_parameters", !5, i64 0, !5, i64 8, !6, i64 16}
!38 = !{!"spmm_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!39 = !{!"conv_hwc2chw_parameters", !5, i64 0, !6, i64 8, !6, i64 9, !6, i64 10}
!40 = !{!"dwconv2d_chw_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!41 = !{!"gavgpool_cw_parameters", !5, i64 0, !6, i64 8}
!42 = !{!"ibilinear_chw_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!43 = !{!"", !26, i64 0, !26, i64 24, !26, i64 48, !26, i64 72, !26, i64 96, !26, i64 120}
!44 = !{!"", !5, i64 0, !31, i64 8, !45, i64 40}
!45 = !{!"depthtospace2d_chw2hwc_parameters", !5, i64 0, !6, i64 8, !6, i64 9}
!46 = !{!"", !5, i64 0, !47, i64 8, !48, i64 24}
!47 = !{!"fill_parameters", !5, i64 0, !6, i64 8}
!48 = !{!"pad_parameters", !5, i64 0, !6, i64 8}
!49 = !{!50, !9, i64 8}
!50 = !{!"xnn_subgraph", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 16, !9, i64 24, !9, i64 28, !5, i64 32}
!51 = !{!50, !5, i64 16}
!52 = !{!53, !6, i64 4}
!53 = !{!"xnn_value", !9, i64 0, !6, i64 4, !6, i64 8, !54, i64 16, !55, i64 40, !9, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !6, i64 128, !57, i64 132, !9, i64 136, !9, i64 140}
!54 = !{!"", !9, i64 0, !6, i64 8}
!55 = !{!"xnn_shape", !56, i64 0, !6, i64 8}
!56 = !{!"long", !6, i64 0}
!57 = !{!"_Bool", !6, i64 0}
!58 = !{!53, !6, i64 8}
!59 = !{!60, !6, i64 0}
!60 = !{!"xnn_node", !6, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !61, i64 120, !6, i64 128, !9, i64 140, !6, i64 144, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !56, i64 168, !56, i64 176, !5, i64 184, !5, i64 192}
!61 = !{!"", !62, i64 0, !62, i64 4}
!62 = !{!"float", !6, i64 0}
!63 = !{!60, !6, i64 8}
!64 = !{!6, !6, i64 0}
!65 = !{!60, !9, i64 140}
!66 = !{!60, !9, i64 152}
!67 = !{!60, !9, i64 156}
!68 = !{!60, !5, i64 184}
!69 = !{!60, !5, i64 192}
!70 = !{!56, !56, i64 0}
!71 = !{!72, !56, i64 16}
!72 = !{!"xnn_operator_data", !5, i64 0, !5, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !55, i64 56, !55, i64 112, !6, i64 168, !6, i64 216, !9, i64 264, !9, i64 268, !6, i64 272, !6, i64 280}
!73 = !{!72, !56, i64 24}
!74 = !{!72, !56, i64 32}
!75 = !{!76, !5, i64 8}
!76 = !{!"xnn_blob", !56, i64 0, !5, i64 8, !57, i64 16}
!77 = !{!72, !5, i64 0}

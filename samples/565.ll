; ModuleID = 'samples/565.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-dwconv2d-chw/gen/5x5s2p2-minmax-sse-2x4-acc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { [4 x float], [4 x float], [4 x i32], [4 x i32], [4 x i32] }
%struct.__mm_load1_ps_struct = type { float }
%struct.__loadu_ps = type { <4 x float> }
%struct.__storeu_ps = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_dwconv2d_chw_ukernel_5x5s2p2__sse_2x4_acc2(i64 noundef %input_height, i64 noundef %input_width, ptr noundef %input, ptr noundef %weights, ptr noundef %zero, ptr noundef %output, i32 noundef %padding_top, ptr noalias noundef align 16 dereferenceable(80) %params) #0 {
entry:
  %input_height.addr = alloca i64, align 8
  %input_width.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %weights.addr = alloca ptr, align 8
  %zero.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %padding_top.addr = alloca i32, align 4
  %params.addr = alloca ptr, align 8
  %vmask_even = alloca <4 x float>, align 16
  %vmask_odd = alloca <4 x float>, align 16
  %vmax = alloca <4 x float>, align 16
  %vmin = alloca <4 x float>, align 16
  %vbias = alloca <4 x float>, align 16
  %vk00 = alloca <4 x float>, align 16
  %vk01 = alloca <4 x float>, align 16
  %vk02 = alloca <4 x float>, align 16
  %vk03 = alloca <4 x float>, align 16
  %vk04 = alloca <4 x float>, align 16
  %vk10 = alloca <4 x float>, align 16
  %vk11 = alloca <4 x float>, align 16
  %vk12 = alloca <4 x float>, align 16
  %vk13 = alloca <4 x float>, align 16
  %vk14 = alloca <4 x float>, align 16
  %vk20 = alloca <4 x float>, align 16
  %vk21 = alloca <4 x float>, align 16
  %vk22 = alloca <4 x float>, align 16
  %vk23 = alloca <4 x float>, align 16
  %vk24 = alloca <4 x float>, align 16
  %vk30 = alloca <4 x float>, align 16
  %vk31 = alloca <4 x float>, align 16
  %vk32 = alloca <4 x float>, align 16
  %vk33 = alloca <4 x float>, align 16
  %vk34 = alloca <4 x float>, align 16
  %vk40 = alloca <4 x float>, align 16
  %vk41 = alloca <4 x float>, align 16
  %vk42 = alloca <4 x float>, align 16
  %vk43 = alloca <4 x float>, align 16
  %vk44 = alloca <4 x float>, align 16
  %padding_top_less_1 = alloca i32, align 4
  %input_decrement = alloca i64, align 8
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %output_width = alloca i64, align 8
  %o0 = alloca ptr, align 8
  %o1 = alloca ptr, align 8
  %padded_input_height = alloca i64, align 8
  %output_height = alloca i64, align 8
  %vi0x6024 = alloca <4 x float>, align 16
  %vi1x6024 = alloca <4 x float>, align 16
  %vi2x6024 = alloca <4 x float>, align 16
  %vi3x6024 = alloca <4 x float>, align 16
  %vi4x6024 = alloca <4 x float>, align 16
  %vi5x6024 = alloca <4 x float>, align 16
  %vi6x6024 = alloca <4 x float>, align 16
  %vi0x7135 = alloca <4 x float>, align 16
  %vi1x7135 = alloca <4 x float>, align 16
  %vi2x7135 = alloca <4 x float>, align 16
  %vi3x7135 = alloca <4 x float>, align 16
  %vi4x7135 = alloca <4 x float>, align 16
  %vi5x7135 = alloca <4 x float>, align 16
  %vi6x7135 = alloca <4 x float>, align 16
  %vi0x89AB = alloca <4 x float>, align 16
  %vi0xCDEF = alloca <4 x float>, align 16
  %vi1x89AB = alloca <4 x float>, align 16
  %vi1xCDEF = alloca <4 x float>, align 16
  %vi2x89AB = alloca <4 x float>, align 16
  %vi2xCDEF = alloca <4 x float>, align 16
  %vi3x89AB = alloca <4 x float>, align 16
  %vi3xCDEF = alloca <4 x float>, align 16
  %vi4x89AB = alloca <4 x float>, align 16
  %vi4xCDEF = alloca <4 x float>, align 16
  %vi5x89AB = alloca <4 x float>, align 16
  %vi5xCDEF = alloca <4 x float>, align 16
  %vi6x89AB = alloca <4 x float>, align 16
  %vi6xCDEF = alloca <4 x float>, align 16
  %vi0x8ACE = alloca <4 x float>, align 16
  %vi0x9BDF = alloca <4 x float>, align 16
  %vi1x8ACE = alloca <4 x float>, align 16
  %vi1x9BDF = alloca <4 x float>, align 16
  %vi2x8ACE = alloca <4 x float>, align 16
  %vi2x9BDF = alloca <4 x float>, align 16
  %vi3x8ACE = alloca <4 x float>, align 16
  %vi3x9BDF = alloca <4 x float>, align 16
  %vi4x8ACE = alloca <4 x float>, align 16
  %vi4x9BDF = alloca <4 x float>, align 16
  %vi5x8ACE = alloca <4 x float>, align 16
  %vi5x9BDF = alloca <4 x float>, align 16
  %vi6x8ACE = alloca <4 x float>, align 16
  %vi6x9BDF = alloca <4 x float>, align 16
  %w = alloca i64, align 8
  %vo0p0 = alloca <4 x float>, align 16
  %vo1p0 = alloca <4 x float>, align 16
  %vo0p1 = alloca <4 x float>, align 16
  %vo1p1 = alloca <4 x float>, align 16
  %vi0xE8AC = alloca <4 x float>, align 16
  %vi1xE8AC = alloca <4 x float>, align 16
  %vi2xE8AC = alloca <4 x float>, align 16
  %vi3xE8AC = alloca <4 x float>, align 16
  %vi4xE8AC = alloca <4 x float>, align 16
  %vi5xE8AC = alloca <4 x float>, align 16
  %vi6xE8AC = alloca <4 x float>, align 16
  %vi0x68AC = alloca <4 x float>, align 16
  %vi1x68AC = alloca <4 x float>, align 16
  %vi2x68AC = alloca <4 x float>, align 16
  %vi3x68AC = alloca <4 x float>, align 16
  %vi4x68AC = alloca <4 x float>, align 16
  %vi5x68AC = alloca <4 x float>, align 16
  %vi6x68AC = alloca <4 x float>, align 16
  %vi0xF9BD = alloca <4 x float>, align 16
  %vi1xF9BD = alloca <4 x float>, align 16
  %vi2xF9BD = alloca <4 x float>, align 16
  %vi3xF9BD = alloca <4 x float>, align 16
  %vi4xF9BD = alloca <4 x float>, align 16
  %vi5xF9BD = alloca <4 x float>, align 16
  %vi6xF9BD = alloca <4 x float>, align 16
  %vi0xGHIJ = alloca <4 x float>, align 16
  %vi0xKLMN = alloca <4 x float>, align 16
  %vi1xGHIJ = alloca <4 x float>, align 16
  %vi1xKLMN = alloca <4 x float>, align 16
  %vi2xGHIJ = alloca <4 x float>, align 16
  %vi2xKLMN = alloca <4 x float>, align 16
  %vi3xGHIJ = alloca <4 x float>, align 16
  %vi3xKLMN = alloca <4 x float>, align 16
  %vi4xGHIJ = alloca <4 x float>, align 16
  %vi4xKLMN = alloca <4 x float>, align 16
  %vi5xGHIJ = alloca <4 x float>, align 16
  %vi5xKLMN = alloca <4 x float>, align 16
  %vi6xGHIJ = alloca <4 x float>, align 16
  %vi6xKLMN = alloca <4 x float>, align 16
  %vi0x79BD = alloca <4 x float>, align 16
  %vi1x79BD = alloca <4 x float>, align 16
  %vi2x79BD = alloca <4 x float>, align 16
  %vi3x79BD = alloca <4 x float>, align 16
  %vi4x79BD = alloca <4 x float>, align 16
  %vi5x79BD = alloca <4 x float>, align 16
  %vi6x79BD = alloca <4 x float>, align 16
  %vi0xGIKM = alloca <4 x float>, align 16
  %vi0xHJLN = alloca <4 x float>, align 16
  %vi1xGIKM = alloca <4 x float>, align 16
  %vi1xHJLN = alloca <4 x float>, align 16
  %vi2xGIKM = alloca <4 x float>, align 16
  %vi2xHJLN = alloca <4 x float>, align 16
  %vi3xGIKM = alloca <4 x float>, align 16
  %vi3xHJLN = alloca <4 x float>, align 16
  %vi4xGIKM = alloca <4 x float>, align 16
  %vi4xHJLN = alloca <4 x float>, align 16
  %vi5xGIKM = alloca <4 x float>, align 16
  %vi5xHJLN = alloca <4 x float>, align 16
  %vi6xGIKM = alloca <4 x float>, align 16
  %vi6xHJLN = alloca <4 x float>, align 16
  %vi0xGACE = alloca <4 x float>, align 16
  %vi1xGACE = alloca <4 x float>, align 16
  %vi2xGACE = alloca <4 x float>, align 16
  %vi3xGACE = alloca <4 x float>, align 16
  %vi4xGACE = alloca <4 x float>, align 16
  %vi5xGACE = alloca <4 x float>, align 16
  %vi6xGACE = alloca <4 x float>, align 16
  %vi0xACEG = alloca <4 x float>, align 16
  %vi1xACEG = alloca <4 x float>, align 16
  %vi2xACEG = alloca <4 x float>, align 16
  %vi3xACEG = alloca <4 x float>, align 16
  %vi4xACEG = alloca <4 x float>, align 16
  %vi5xACEG = alloca <4 x float>, align 16
  %vi6xACEG = alloca <4 x float>, align 16
  %vo0 = alloca <4 x float>, align 16
  %vo1 = alloca <4 x float>, align 16
  %vo0p0379 = alloca <4 x float>, align 16
  %vo1p0382 = alloca <4 x float>, align 16
  %vo0p1385 = alloca <4 x float>, align 16
  %vo1p1387 = alloca <4 x float>, align 16
  %vi0xE8AC401 = alloca <4 x float>, align 16
  %vi1xE8AC403 = alloca <4 x float>, align 16
  %vi2xE8AC405 = alloca <4 x float>, align 16
  %vi3xE8AC407 = alloca <4 x float>, align 16
  %vi4xE8AC409 = alloca <4 x float>, align 16
  %vi5xE8AC411 = alloca <4 x float>, align 16
  %vi6xE8AC413 = alloca <4 x float>, align 16
  %vi0x68AC435 = alloca <4 x float>, align 16
  %vi1x68AC437 = alloca <4 x float>, align 16
  %vi2x68AC439 = alloca <4 x float>, align 16
  %vi3x68AC441 = alloca <4 x float>, align 16
  %vi4x68AC443 = alloca <4 x float>, align 16
  %vi5x68AC445 = alloca <4 x float>, align 16
  %vi6x68AC447 = alloca <4 x float>, align 16
  %vi0xF9BD449 = alloca <4 x float>, align 16
  %vi1xF9BD451 = alloca <4 x float>, align 16
  %vi2xF9BD453 = alloca <4 x float>, align 16
  %vi3xF9BD455 = alloca <4 x float>, align 16
  %vi4xF9BD457 = alloca <4 x float>, align 16
  %vi5xF9BD459 = alloca <4 x float>, align 16
  %vi6xF9BD461 = alloca <4 x float>, align 16
  %vi0x79BD483 = alloca <4 x float>, align 16
  %vi1x79BD485 = alloca <4 x float>, align 16
  %vi2x79BD487 = alloca <4 x float>, align 16
  %vi3x79BD489 = alloca <4 x float>, align 16
  %vi4x79BD491 = alloca <4 x float>, align 16
  %vi5x79BD493 = alloca <4 x float>, align 16
  %vi6x79BD495 = alloca <4 x float>, align 16
  %vzero = alloca <4 x float>, align 16
  %vi0xGACE518 = alloca <4 x float>, align 16
  %vi1xGACE520 = alloca <4 x float>, align 16
  %vi2xGACE522 = alloca <4 x float>, align 16
  %vi3xGACE524 = alloca <4 x float>, align 16
  %vi4xGACE526 = alloca <4 x float>, align 16
  %vi5xGACE528 = alloca <4 x float>, align 16
  %vi6xGACE530 = alloca <4 x float>, align 16
  %vi0xACEG532 = alloca <4 x float>, align 16
  %vi1xACEG534 = alloca <4 x float>, align 16
  %vi2xACEG536 = alloca <4 x float>, align 16
  %vi3xACEG538 = alloca <4 x float>, align 16
  %vi4xACEG540 = alloca <4 x float>, align 16
  %vi5xACEG542 = alloca <4 x float>, align 16
  %vi6xACEG544 = alloca <4 x float>, align 16
  %vo0568 = alloca <4 x float>, align 16
  %vo1570 = alloca <4 x float>, align 16
  %w_tmp = alloca i64, align 8
  store i64 %input_height, ptr %input_height.addr, align 8, !tbaa !5
  store i64 %input_width, ptr %input_width.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !9
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i32 %padding_top, ptr %padding_top.addr, align 4, !tbaa !11
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmask_even) #5
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %mask_even = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x i32], ptr %mask_even, i64 0, i64 0
  %call = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call, ptr %vmask_even, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmask_odd) #5
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %mask_odd = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 3
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %mask_odd, i64 0, i64 0
  %call2 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay1)
  store <4 x float> %call2, ptr %vmask_odd, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmax) #5
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [4 x float], ptr %max, i64 0, i64 0
  %call4 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay3)
  store <4 x float> %call4, ptr %vmax, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmin) #5
  %3 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [4 x float], ptr %min, i64 0, i64 0
  %call6 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay5)
  store <4 x float> %call6, ptr %vmin, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias) #5
  %4 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %call7 = call <4 x float> @_mm_load1_ps(ptr noundef %4)
  store <4 x float> %call7, ptr %vbias, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk00) #5
  %5 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %5, i64 1
  %call8 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr)
  store <4 x float> %call8, ptr %vk00, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk01) #5
  %6 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr9 = getelementptr inbounds float, ptr %6, i64 2
  %call10 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr9)
  store <4 x float> %call10, ptr %vk01, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk02) #5
  %7 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr11 = getelementptr inbounds float, ptr %7, i64 3
  %call12 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr11)
  store <4 x float> %call12, ptr %vk02, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk03) #5
  %8 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr13 = getelementptr inbounds float, ptr %8, i64 4
  %call14 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr13)
  store <4 x float> %call14, ptr %vk03, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk04) #5
  %9 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr15 = getelementptr inbounds float, ptr %9, i64 5
  %call16 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr15)
  store <4 x float> %call16, ptr %vk04, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk10) #5
  %10 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr17 = getelementptr inbounds float, ptr %10, i64 6
  %call18 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr17)
  store <4 x float> %call18, ptr %vk10, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk11) #5
  %11 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr19 = getelementptr inbounds float, ptr %11, i64 7
  %call20 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr19)
  store <4 x float> %call20, ptr %vk11, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk12) #5
  %12 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr21 = getelementptr inbounds float, ptr %12, i64 8
  %call22 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr21)
  store <4 x float> %call22, ptr %vk12, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk13) #5
  %13 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr23 = getelementptr inbounds float, ptr %13, i64 9
  %call24 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr23)
  store <4 x float> %call24, ptr %vk13, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk14) #5
  %14 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr25 = getelementptr inbounds float, ptr %14, i64 10
  %call26 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr25)
  store <4 x float> %call26, ptr %vk14, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk20) #5
  %15 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr27 = getelementptr inbounds float, ptr %15, i64 11
  %call28 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr27)
  store <4 x float> %call28, ptr %vk20, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk21) #5
  %16 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr29 = getelementptr inbounds float, ptr %16, i64 12
  %call30 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr29)
  store <4 x float> %call30, ptr %vk21, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk22) #5
  %17 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr31 = getelementptr inbounds float, ptr %17, i64 13
  %call32 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr31)
  store <4 x float> %call32, ptr %vk22, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk23) #5
  %18 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr33 = getelementptr inbounds float, ptr %18, i64 14
  %call34 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr33)
  store <4 x float> %call34, ptr %vk23, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk24) #5
  %19 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr35 = getelementptr inbounds float, ptr %19, i64 15
  %call36 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr35)
  store <4 x float> %call36, ptr %vk24, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk30) #5
  %20 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds float, ptr %20, i64 16
  %call38 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr37)
  store <4 x float> %call38, ptr %vk30, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk31) #5
  %21 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr39 = getelementptr inbounds float, ptr %21, i64 17
  %call40 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr39)
  store <4 x float> %call40, ptr %vk31, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk32) #5
  %22 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr41 = getelementptr inbounds float, ptr %22, i64 18
  %call42 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr41)
  store <4 x float> %call42, ptr %vk32, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk33) #5
  %23 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr43 = getelementptr inbounds float, ptr %23, i64 19
  %call44 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr43)
  store <4 x float> %call44, ptr %vk33, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk34) #5
  %24 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr45 = getelementptr inbounds float, ptr %24, i64 20
  %call46 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr45)
  store <4 x float> %call46, ptr %vk34, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk40) #5
  %25 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr47 = getelementptr inbounds float, ptr %25, i64 21
  %call48 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr47)
  store <4 x float> %call48, ptr %vk40, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk41) #5
  %26 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr49 = getelementptr inbounds float, ptr %26, i64 22
  %call50 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr49)
  store <4 x float> %call50, ptr %vk41, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk42) #5
  %27 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr51 = getelementptr inbounds float, ptr %27, i64 23
  %call52 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr51)
  store <4 x float> %call52, ptr %vk42, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk43) #5
  %28 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr53 = getelementptr inbounds float, ptr %28, i64 24
  %call54 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr53)
  store <4 x float> %call54, ptr %vk43, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk44) #5
  %29 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %add.ptr55 = getelementptr inbounds float, ptr %29, i64 25
  %call56 = call <4 x float> @_mm_load1_ps(ptr noundef %add.ptr55)
  store <4 x float> %call56, ptr %vk44, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %padding_top_less_1) #5
  %30 = load i32, ptr %padding_top.addr, align 4, !tbaa !11
  %sub = sub i32 %30, 1
  store i32 %sub, ptr %padding_top_less_1, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_decrement) #5
  %31 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %call57 = call i64 @round_up_po2(i64 noundef %31, i64 noundef 32)
  store i64 %call57, ptr %input_decrement, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #5
  %32 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %32, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #5
  %33 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %34 = ptrtoint ptr %33 to i64
  %35 = load i32, ptr %padding_top_less_1, align 4, !tbaa !11
  %sub58 = sub i32 0, %35
  %conv = zext i32 %sub58 to i64
  %36 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %and = and i64 %conv, %36
  %sub59 = sub i64 %34, %and
  %37 = inttoptr i64 %sub59 to ptr
  store ptr %37, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #5
  %38 = load ptr, ptr %i1, align 8, !tbaa !9
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add = add i64 %39, %40
  %41 = inttoptr i64 %add to ptr
  store ptr %41, ptr %i2, align 8, !tbaa !9
  %42 = load i32, ptr %padding_top_less_1, align 4, !tbaa !11
  %cmp = icmp ne i32 %42, 0
  %lnot = xor i1 %cmp, true
  %lnot61 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot61 to i32
  %conv62 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv62, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !14

if.then:                                          ; preds = %entry
  %43 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %43, ptr %i1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #5
  %44 = load ptr, ptr %i2, align 8, !tbaa !9
  %45 = ptrtoint ptr %44 to i64
  %46 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add63 = add i64 %45, %46
  %47 = inttoptr i64 %add63 to ptr
  store ptr %47, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #5
  %48 = load ptr, ptr %i3, align 8, !tbaa !9
  %49 = ptrtoint ptr %48 to i64
  %50 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add64 = add i64 %49, %50
  %51 = inttoptr i64 %add64 to ptr
  store ptr %51, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #5
  %52 = load ptr, ptr %i4, align 8, !tbaa !9
  %53 = ptrtoint ptr %52 to i64
  %54 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add65 = add i64 %53, %54
  %55 = inttoptr i64 %add65 to ptr
  store ptr %55, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #5
  %56 = load ptr, ptr %i5, align 8, !tbaa !9
  %57 = ptrtoint ptr %56 to i64
  %58 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add66 = add i64 %57, %58
  %59 = inttoptr i64 %add66 to ptr
  store ptr %59, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_width) #5
  %60 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add67 = add i64 %60, 4
  %div = udiv i64 %add67, 2
  %call68 = call i64 @round_down_po2(i64 noundef %div, i64 noundef 4)
  store i64 %call68, ptr %output_width, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %o0) #5
  %61 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store ptr %61, ptr %o0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %o1) #5
  %62 = load ptr, ptr %o0, align 8, !tbaa !9
  %63 = ptrtoint ptr %62 to i64
  %64 = load i64, ptr %output_width, align 8, !tbaa !5
  %add69 = add i64 %63, %64
  %65 = inttoptr i64 %add69 to ptr
  store ptr %65, ptr %o1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %padded_input_height) #5
  %66 = load i64, ptr %input_height.addr, align 8, !tbaa !5
  %67 = load i32, ptr %padding_top_less_1, align 4, !tbaa !11
  %add70 = add i32 %67, 1
  %conv71 = zext i32 %add70 to i64
  %add72 = add i64 %66, %conv71
  %add73 = add i64 %add72, 2
  store i64 %add73, ptr %padded_input_height, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_height) #5
  %68 = load i64, ptr %padded_input_height, align 8, !tbaa !5
  %sub74 = sub i64 %68, 5
  %add75 = add i64 %sub74, 2
  %div76 = udiv i64 %add75, 2
  store i64 %div76, ptr %output_height, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %69 = load i64, ptr %padded_input_height, align 8, !tbaa !5
  %cmp77 = icmp ult i64 %69, 6
  %lnot79 = xor i1 %cmp77, true
  %lnot81 = xor i1 %lnot79, true
  %lnot.ext82 = zext i1 %lnot81 to i32
  %conv83 = sext i32 %lnot.ext82 to i64
  %tobool84 = icmp ne i64 %conv83, 0
  br i1 %tobool84, label %if.then85, label %if.end86, !unpredictable !14

if.then85:                                        ; preds = %do.body
  %70 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %70, ptr %i3, align 8, !tbaa !9
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %do.body
  %71 = load i64, ptr %padded_input_height, align 8, !tbaa !5
  %cmp87 = icmp ult i64 %71, 7
  %lnot89 = xor i1 %cmp87, true
  %lnot91 = xor i1 %lnot89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %tobool94 = icmp ne i64 %conv93, 0
  br i1 %tobool94, label %if.then95, label %if.end96, !unpredictable !14

if.then95:                                        ; preds = %if.end86
  %72 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %72, ptr %i4, align 8, !tbaa !9
  %73 = load ptr, ptr %o0, align 8, !tbaa !9
  store ptr %73, ptr %o1, align 8, !tbaa !9
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end86
  %74 = load i64, ptr %padded_input_height, align 8, !tbaa !5
  %cmp97 = icmp ult i64 %74, 8
  %lnot99 = xor i1 %cmp97, true
  %lnot101 = xor i1 %lnot99, true
  %lnot.ext102 = zext i1 %lnot101 to i32
  %conv103 = sext i32 %lnot.ext102 to i64
  %tobool104 = icmp ne i64 %conv103, 0
  br i1 %tobool104, label %if.then105, label %if.end106, !unpredictable !14

if.then105:                                       ; preds = %if.end96
  %75 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %75, ptr %i5, align 8, !tbaa !9
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end96
  %76 = load i64, ptr %padded_input_height, align 8, !tbaa !5
  %cmp107 = icmp ult i64 %76, 9
  %lnot109 = xor i1 %cmp107, true
  %lnot111 = xor i1 %lnot109, true
  %lnot.ext112 = zext i1 %lnot111 to i32
  %conv113 = sext i32 %lnot.ext112 to i64
  %tobool114 = icmp ne i64 %conv113, 0
  br i1 %tobool114, label %if.then115, label %if.end116, !unpredictable !14

if.then115:                                       ; preds = %if.end106
  %77 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %77, ptr %i6, align 8, !tbaa !9
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end106
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x6024) #5
  %call117 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call117, ptr %vi0x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x6024) #5
  %call118 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call118, ptr %vi1x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x6024) #5
  %call119 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call119, ptr %vi2x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x6024) #5
  %call120 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call120, ptr %vi3x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x6024) #5
  %call121 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call121, ptr %vi4x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x6024) #5
  %call122 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call122, ptr %vi5x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x6024) #5
  %call123 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call123, ptr %vi6x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x7135) #5
  %call124 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call124, ptr %vi0x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x7135) #5
  %call125 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call125, ptr %vi1x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x7135) #5
  %call126 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call126, ptr %vi2x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x7135) #5
  %call127 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call127, ptr %vi3x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x7135) #5
  %call128 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call128, ptr %vi4x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x7135) #5
  %call129 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call129, ptr %vi5x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x7135) #5
  %call130 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call130, ptr %vi6x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x89AB) #5
  %78 = load ptr, ptr %i0, align 8, !tbaa !9
  %call131 = call <4 x float> @_mm_loadu_ps(ptr noundef %78)
  store <4 x float> %call131, ptr %vi0x89AB, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xCDEF) #5
  %79 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr132 = getelementptr inbounds float, ptr %79, i64 4
  %call133 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr132)
  store <4 x float> %call133, ptr %vi0xCDEF, align 16, !tbaa !13
  %80 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr134 = getelementptr inbounds float, ptr %80, i64 8
  store ptr %add.ptr134, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x89AB) #5
  %81 = load ptr, ptr %i1, align 8, !tbaa !9
  %call135 = call <4 x float> @_mm_loadu_ps(ptr noundef %81)
  store <4 x float> %call135, ptr %vi1x89AB, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xCDEF) #5
  %82 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr136 = getelementptr inbounds float, ptr %82, i64 4
  %call137 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr136)
  store <4 x float> %call137, ptr %vi1xCDEF, align 16, !tbaa !13
  %83 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr138 = getelementptr inbounds float, ptr %83, i64 8
  store ptr %add.ptr138, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x89AB) #5
  %84 = load ptr, ptr %i2, align 8, !tbaa !9
  %call139 = call <4 x float> @_mm_loadu_ps(ptr noundef %84)
  store <4 x float> %call139, ptr %vi2x89AB, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xCDEF) #5
  %85 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr140 = getelementptr inbounds float, ptr %85, i64 4
  %call141 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr140)
  store <4 x float> %call141, ptr %vi2xCDEF, align 16, !tbaa !13
  %86 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr142 = getelementptr inbounds float, ptr %86, i64 8
  store ptr %add.ptr142, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x89AB) #5
  %87 = load ptr, ptr %i3, align 8, !tbaa !9
  %call143 = call <4 x float> @_mm_loadu_ps(ptr noundef %87)
  store <4 x float> %call143, ptr %vi3x89AB, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xCDEF) #5
  %88 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr144 = getelementptr inbounds float, ptr %88, i64 4
  %call145 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr144)
  store <4 x float> %call145, ptr %vi3xCDEF, align 16, !tbaa !13
  %89 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr146 = getelementptr inbounds float, ptr %89, i64 8
  store ptr %add.ptr146, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x89AB) #5
  %90 = load ptr, ptr %i4, align 8, !tbaa !9
  %call147 = call <4 x float> @_mm_loadu_ps(ptr noundef %90)
  store <4 x float> %call147, ptr %vi4x89AB, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xCDEF) #5
  %91 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr148 = getelementptr inbounds float, ptr %91, i64 4
  %call149 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr148)
  store <4 x float> %call149, ptr %vi4xCDEF, align 16, !tbaa !13
  %92 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr150 = getelementptr inbounds float, ptr %92, i64 8
  store ptr %add.ptr150, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x89AB) #5
  %93 = load ptr, ptr %i5, align 8, !tbaa !9
  %call151 = call <4 x float> @_mm_loadu_ps(ptr noundef %93)
  store <4 x float> %call151, ptr %vi5x89AB, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xCDEF) #5
  %94 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr152 = getelementptr inbounds float, ptr %94, i64 4
  %call153 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr152)
  store <4 x float> %call153, ptr %vi5xCDEF, align 16, !tbaa !13
  %95 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr154 = getelementptr inbounds float, ptr %95, i64 8
  store ptr %add.ptr154, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x89AB) #5
  %96 = load ptr, ptr %i6, align 8, !tbaa !9
  %call155 = call <4 x float> @_mm_loadu_ps(ptr noundef %96)
  store <4 x float> %call155, ptr %vi6x89AB, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xCDEF) #5
  %97 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr156 = getelementptr inbounds float, ptr %97, i64 4
  %call157 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr156)
  store <4 x float> %call157, ptr %vi6xCDEF, align 16, !tbaa !13
  %98 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr158 = getelementptr inbounds float, ptr %98, i64 8
  store ptr %add.ptr158, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x8ACE) #5
  %99 = load <4 x float>, ptr %vi0x89AB, align 16, !tbaa !13
  %100 = load <4 x float>, ptr %vi0xCDEF, align 16, !tbaa !13
  %shufp = shufflevector <4 x float> %99, <4 x float> %100, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp, ptr %vi0x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x9BDF) #5
  %101 = load <4 x float>, ptr %vi0x89AB, align 16, !tbaa !13
  %102 = load <4 x float>, ptr %vi0xCDEF, align 16, !tbaa !13
  %shufp159 = shufflevector <4 x float> %101, <4 x float> %102, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp159, ptr %vi0x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x8ACE) #5
  %103 = load <4 x float>, ptr %vi1x89AB, align 16, !tbaa !13
  %104 = load <4 x float>, ptr %vi1xCDEF, align 16, !tbaa !13
  %shufp160 = shufflevector <4 x float> %103, <4 x float> %104, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp160, ptr %vi1x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x9BDF) #5
  %105 = load <4 x float>, ptr %vi1x89AB, align 16, !tbaa !13
  %106 = load <4 x float>, ptr %vi1xCDEF, align 16, !tbaa !13
  %shufp161 = shufflevector <4 x float> %105, <4 x float> %106, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp161, ptr %vi1x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x8ACE) #5
  %107 = load <4 x float>, ptr %vi2x89AB, align 16, !tbaa !13
  %108 = load <4 x float>, ptr %vi2xCDEF, align 16, !tbaa !13
  %shufp162 = shufflevector <4 x float> %107, <4 x float> %108, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp162, ptr %vi2x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x9BDF) #5
  %109 = load <4 x float>, ptr %vi2x89AB, align 16, !tbaa !13
  %110 = load <4 x float>, ptr %vi2xCDEF, align 16, !tbaa !13
  %shufp163 = shufflevector <4 x float> %109, <4 x float> %110, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp163, ptr %vi2x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x8ACE) #5
  %111 = load <4 x float>, ptr %vi3x89AB, align 16, !tbaa !13
  %112 = load <4 x float>, ptr %vi3xCDEF, align 16, !tbaa !13
  %shufp164 = shufflevector <4 x float> %111, <4 x float> %112, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp164, ptr %vi3x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x9BDF) #5
  %113 = load <4 x float>, ptr %vi3x89AB, align 16, !tbaa !13
  %114 = load <4 x float>, ptr %vi3xCDEF, align 16, !tbaa !13
  %shufp165 = shufflevector <4 x float> %113, <4 x float> %114, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp165, ptr %vi3x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x8ACE) #5
  %115 = load <4 x float>, ptr %vi4x89AB, align 16, !tbaa !13
  %116 = load <4 x float>, ptr %vi4xCDEF, align 16, !tbaa !13
  %shufp166 = shufflevector <4 x float> %115, <4 x float> %116, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp166, ptr %vi4x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x9BDF) #5
  %117 = load <4 x float>, ptr %vi4x89AB, align 16, !tbaa !13
  %118 = load <4 x float>, ptr %vi4xCDEF, align 16, !tbaa !13
  %shufp167 = shufflevector <4 x float> %117, <4 x float> %118, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp167, ptr %vi4x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x8ACE) #5
  %119 = load <4 x float>, ptr %vi5x89AB, align 16, !tbaa !13
  %120 = load <4 x float>, ptr %vi5xCDEF, align 16, !tbaa !13
  %shufp168 = shufflevector <4 x float> %119, <4 x float> %120, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp168, ptr %vi5x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x9BDF) #5
  %121 = load <4 x float>, ptr %vi5x89AB, align 16, !tbaa !13
  %122 = load <4 x float>, ptr %vi5xCDEF, align 16, !tbaa !13
  %shufp169 = shufflevector <4 x float> %121, <4 x float> %122, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp169, ptr %vi5x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x8ACE) #5
  %123 = load <4 x float>, ptr %vi6x89AB, align 16, !tbaa !13
  %124 = load <4 x float>, ptr %vi6xCDEF, align 16, !tbaa !13
  %shufp170 = shufflevector <4 x float> %123, <4 x float> %124, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp170, ptr %vi6x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x9BDF) #5
  %125 = load <4 x float>, ptr %vi6x89AB, align 16, !tbaa !13
  %126 = load <4 x float>, ptr %vi6xCDEF, align 16, !tbaa !13
  %shufp171 = shufflevector <4 x float> %125, <4 x float> %126, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp171, ptr %vi6x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #5
  %127 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  store i64 %127, ptr %w, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end116
  %128 = load i64, ptr %w, align 8, !tbaa !5
  %cmp172 = icmp ugt i64 %128, 32
  br i1 %cmp172, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo0p0) #5
  %129 = load <4 x float>, ptr %vbias, align 16, !tbaa !13
  %130 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %131 = load <4 x float>, ptr %vk02, align 16, !tbaa !13
  %call174 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %130, <4 x float> noundef %131)
  %call175 = call <4 x float> @_mm_add_ps(<4 x float> noundef %129, <4 x float> noundef %call174)
  store <4 x float> %call175, ptr %vo0p0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo1p0) #5
  %132 = load <4 x float>, ptr %vbias, align 16, !tbaa !13
  %133 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %134 = load <4 x float>, ptr %vk02, align 16, !tbaa !13
  %call176 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %133, <4 x float> noundef %134)
  %call177 = call <4 x float> @_mm_add_ps(<4 x float> noundef %132, <4 x float> noundef %call176)
  store <4 x float> %call177, ptr %vo1p0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo0p1) #5
  %135 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %136 = load <4 x float>, ptr %vk12, align 16, !tbaa !13
  %call178 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %135, <4 x float> noundef %136)
  store <4 x float> %call178, ptr %vo0p1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo1p1) #5
  %137 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %138 = load <4 x float>, ptr %vk12, align 16, !tbaa !13
  %call179 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %137, <4 x float> noundef %138)
  store <4 x float> %call179, ptr %vo1p1, align 16, !tbaa !13
  %139 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %140 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %141 = load <4 x float>, ptr %vk22, align 16, !tbaa !13
  %call180 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %140, <4 x float> noundef %141)
  %call181 = call <4 x float> @_mm_add_ps(<4 x float> noundef %139, <4 x float> noundef %call180)
  store <4 x float> %call181, ptr %vo0p0, align 16, !tbaa !13
  %142 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %143 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %144 = load <4 x float>, ptr %vk22, align 16, !tbaa !13
  %call182 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %143, <4 x float> noundef %144)
  %call183 = call <4 x float> @_mm_add_ps(<4 x float> noundef %142, <4 x float> noundef %call182)
  store <4 x float> %call183, ptr %vo1p0, align 16, !tbaa !13
  %145 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %146 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %147 = load <4 x float>, ptr %vk32, align 16, !tbaa !13
  %call184 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %146, <4 x float> noundef %147)
  %call185 = call <4 x float> @_mm_add_ps(<4 x float> noundef %145, <4 x float> noundef %call184)
  store <4 x float> %call185, ptr %vo0p1, align 16, !tbaa !13
  %148 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %149 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %150 = load <4 x float>, ptr %vk32, align 16, !tbaa !13
  %call186 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %149, <4 x float> noundef %150)
  %call187 = call <4 x float> @_mm_add_ps(<4 x float> noundef %148, <4 x float> noundef %call186)
  store <4 x float> %call187, ptr %vo1p1, align 16, !tbaa !13
  %151 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %152 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %153 = load <4 x float>, ptr %vk42, align 16, !tbaa !13
  %call188 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %152, <4 x float> noundef %153)
  %call189 = call <4 x float> @_mm_add_ps(<4 x float> noundef %151, <4 x float> noundef %call188)
  store <4 x float> %call189, ptr %vo0p0, align 16, !tbaa !13
  %154 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %155 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %156 = load <4 x float>, ptr %vk42, align 16, !tbaa !13
  %call190 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %155, <4 x float> noundef %156)
  %call191 = call <4 x float> @_mm_add_ps(<4 x float> noundef %154, <4 x float> noundef %call190)
  store <4 x float> %call191, ptr %vo1p0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xE8AC) #5
  %157 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %158 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %shufp192 = shufflevector <4 x float> %157, <4 x float> %158, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp192, ptr %vi0xE8AC, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xE8AC) #5
  %159 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %160 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %shufp193 = shufflevector <4 x float> %159, <4 x float> %160, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp193, ptr %vi1xE8AC, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xE8AC) #5
  %161 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %162 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %shufp194 = shufflevector <4 x float> %161, <4 x float> %162, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp194, ptr %vi2xE8AC, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xE8AC) #5
  %163 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %164 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %shufp195 = shufflevector <4 x float> %163, <4 x float> %164, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp195, ptr %vi3xE8AC, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xE8AC) #5
  %165 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %166 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %shufp196 = shufflevector <4 x float> %165, <4 x float> %166, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp196, ptr %vi4xE8AC, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xE8AC) #5
  %167 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %168 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %shufp197 = shufflevector <4 x float> %167, <4 x float> %168, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp197, ptr %vi5xE8AC, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xE8AC) #5
  %169 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %170 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %shufp198 = shufflevector <4 x float> %169, <4 x float> %170, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp198, ptr %vi6xE8AC, align 16, !tbaa !13
  %171 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %172 = load <4 x float>, ptr %vi0x9BDF, align 16, !tbaa !13
  %173 = load <4 x float>, ptr %vk03, align 16, !tbaa !13
  %call199 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %172, <4 x float> noundef %173)
  %call200 = call <4 x float> @_mm_add_ps(<4 x float> noundef %171, <4 x float> noundef %call199)
  store <4 x float> %call200, ptr %vo0p1, align 16, !tbaa !13
  %174 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %175 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %176 = load <4 x float>, ptr %vk03, align 16, !tbaa !13
  %call201 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %175, <4 x float> noundef %176)
  %call202 = call <4 x float> @_mm_add_ps(<4 x float> noundef %174, <4 x float> noundef %call201)
  store <4 x float> %call202, ptr %vo1p1, align 16, !tbaa !13
  %177 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %178 = load <4 x float>, ptr %vi1x9BDF, align 16, !tbaa !13
  %179 = load <4 x float>, ptr %vk13, align 16, !tbaa !13
  %call203 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %178, <4 x float> noundef %179)
  %call204 = call <4 x float> @_mm_add_ps(<4 x float> noundef %177, <4 x float> noundef %call203)
  store <4 x float> %call204, ptr %vo0p0, align 16, !tbaa !13
  %180 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %181 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %182 = load <4 x float>, ptr %vk13, align 16, !tbaa !13
  %call205 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %181, <4 x float> noundef %182)
  %call206 = call <4 x float> @_mm_add_ps(<4 x float> noundef %180, <4 x float> noundef %call205)
  store <4 x float> %call206, ptr %vo1p0, align 16, !tbaa !13
  %183 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %184 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %185 = load <4 x float>, ptr %vk23, align 16, !tbaa !13
  %call207 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %184, <4 x float> noundef %185)
  %call208 = call <4 x float> @_mm_add_ps(<4 x float> noundef %183, <4 x float> noundef %call207)
  store <4 x float> %call208, ptr %vo0p1, align 16, !tbaa !13
  %186 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %187 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %188 = load <4 x float>, ptr %vk23, align 16, !tbaa !13
  %call209 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %187, <4 x float> noundef %188)
  %call210 = call <4 x float> @_mm_add_ps(<4 x float> noundef %186, <4 x float> noundef %call209)
  store <4 x float> %call210, ptr %vo1p1, align 16, !tbaa !13
  %189 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %190 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %191 = load <4 x float>, ptr %vk33, align 16, !tbaa !13
  %call211 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %190, <4 x float> noundef %191)
  %call212 = call <4 x float> @_mm_add_ps(<4 x float> noundef %189, <4 x float> noundef %call211)
  store <4 x float> %call212, ptr %vo0p0, align 16, !tbaa !13
  %192 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %193 = load <4 x float>, ptr %vi5x9BDF, align 16, !tbaa !13
  %194 = load <4 x float>, ptr %vk33, align 16, !tbaa !13
  %call213 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %193, <4 x float> noundef %194)
  %call214 = call <4 x float> @_mm_add_ps(<4 x float> noundef %192, <4 x float> noundef %call213)
  store <4 x float> %call214, ptr %vo1p0, align 16, !tbaa !13
  %195 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %196 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %197 = load <4 x float>, ptr %vk43, align 16, !tbaa !13
  %call215 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %196, <4 x float> noundef %197)
  %call216 = call <4 x float> @_mm_add_ps(<4 x float> noundef %195, <4 x float> noundef %call215)
  store <4 x float> %call216, ptr %vo0p1, align 16, !tbaa !13
  %198 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %199 = load <4 x float>, ptr %vi6x9BDF, align 16, !tbaa !13
  %200 = load <4 x float>, ptr %vk43, align 16, !tbaa !13
  %call217 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %199, <4 x float> noundef %200)
  %call218 = call <4 x float> @_mm_add_ps(<4 x float> noundef %198, <4 x float> noundef %call217)
  store <4 x float> %call218, ptr %vo1p1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x68AC) #5
  %201 = load <4 x float>, ptr %vi0xE8AC, align 16, !tbaa !13
  %202 = load <4 x float>, ptr %vi0x6024, align 16, !tbaa !13
  %call219 = call <4 x float> @_mm_move_ss(<4 x float> noundef %201, <4 x float> noundef %202)
  store <4 x float> %call219, ptr %vi0x68AC, align 16, !tbaa !13
  %203 = load <4 x float>, ptr %vi0xE8AC, align 16, !tbaa !13
  store <4 x float> %203, ptr %vi0x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x68AC) #5
  %204 = load <4 x float>, ptr %vi1xE8AC, align 16, !tbaa !13
  %205 = load <4 x float>, ptr %vi1x6024, align 16, !tbaa !13
  %call220 = call <4 x float> @_mm_move_ss(<4 x float> noundef %204, <4 x float> noundef %205)
  store <4 x float> %call220, ptr %vi1x68AC, align 16, !tbaa !13
  %206 = load <4 x float>, ptr %vi1xE8AC, align 16, !tbaa !13
  store <4 x float> %206, ptr %vi1x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x68AC) #5
  %207 = load <4 x float>, ptr %vi2xE8AC, align 16, !tbaa !13
  %208 = load <4 x float>, ptr %vi2x6024, align 16, !tbaa !13
  %call221 = call <4 x float> @_mm_move_ss(<4 x float> noundef %207, <4 x float> noundef %208)
  store <4 x float> %call221, ptr %vi2x68AC, align 16, !tbaa !13
  %209 = load <4 x float>, ptr %vi2xE8AC, align 16, !tbaa !13
  store <4 x float> %209, ptr %vi2x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x68AC) #5
  %210 = load <4 x float>, ptr %vi3xE8AC, align 16, !tbaa !13
  %211 = load <4 x float>, ptr %vi3x6024, align 16, !tbaa !13
  %call222 = call <4 x float> @_mm_move_ss(<4 x float> noundef %210, <4 x float> noundef %211)
  store <4 x float> %call222, ptr %vi3x68AC, align 16, !tbaa !13
  %212 = load <4 x float>, ptr %vi3xE8AC, align 16, !tbaa !13
  store <4 x float> %212, ptr %vi3x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x68AC) #5
  %213 = load <4 x float>, ptr %vi4xE8AC, align 16, !tbaa !13
  %214 = load <4 x float>, ptr %vi4x6024, align 16, !tbaa !13
  %call223 = call <4 x float> @_mm_move_ss(<4 x float> noundef %213, <4 x float> noundef %214)
  store <4 x float> %call223, ptr %vi4x68AC, align 16, !tbaa !13
  %215 = load <4 x float>, ptr %vi4xE8AC, align 16, !tbaa !13
  store <4 x float> %215, ptr %vi4x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x68AC) #5
  %216 = load <4 x float>, ptr %vi5xE8AC, align 16, !tbaa !13
  %217 = load <4 x float>, ptr %vi5x6024, align 16, !tbaa !13
  %call224 = call <4 x float> @_mm_move_ss(<4 x float> noundef %216, <4 x float> noundef %217)
  store <4 x float> %call224, ptr %vi5x68AC, align 16, !tbaa !13
  %218 = load <4 x float>, ptr %vi5xE8AC, align 16, !tbaa !13
  store <4 x float> %218, ptr %vi5x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x68AC) #5
  %219 = load <4 x float>, ptr %vi6xE8AC, align 16, !tbaa !13
  %220 = load <4 x float>, ptr %vi6x6024, align 16, !tbaa !13
  %call225 = call <4 x float> @_mm_move_ss(<4 x float> noundef %219, <4 x float> noundef %220)
  store <4 x float> %call225, ptr %vi6x68AC, align 16, !tbaa !13
  %221 = load <4 x float>, ptr %vi6xE8AC, align 16, !tbaa !13
  store <4 x float> %221, ptr %vi6x6024, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xF9BD) #5
  %222 = load <4 x float>, ptr %vi0x9BDF, align 16, !tbaa !13
  %223 = load <4 x float>, ptr %vi0x9BDF, align 16, !tbaa !13
  %shufp226 = shufflevector <4 x float> %222, <4 x float> %223, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp226, ptr %vi0xF9BD, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xF9BD) #5
  %224 = load <4 x float>, ptr %vi1x9BDF, align 16, !tbaa !13
  %225 = load <4 x float>, ptr %vi1x9BDF, align 16, !tbaa !13
  %shufp227 = shufflevector <4 x float> %224, <4 x float> %225, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp227, ptr %vi1xF9BD, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xF9BD) #5
  %226 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %227 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %shufp228 = shufflevector <4 x float> %226, <4 x float> %227, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp228, ptr %vi2xF9BD, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xF9BD) #5
  %228 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %229 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %shufp229 = shufflevector <4 x float> %228, <4 x float> %229, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp229, ptr %vi3xF9BD, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xF9BD) #5
  %230 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %231 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %shufp230 = shufflevector <4 x float> %230, <4 x float> %231, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp230, ptr %vi4xF9BD, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xF9BD) #5
  %232 = load <4 x float>, ptr %vi5x9BDF, align 16, !tbaa !13
  %233 = load <4 x float>, ptr %vi5x9BDF, align 16, !tbaa !13
  %shufp231 = shufflevector <4 x float> %232, <4 x float> %233, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp231, ptr %vi5xF9BD, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xF9BD) #5
  %234 = load <4 x float>, ptr %vi6x9BDF, align 16, !tbaa !13
  %235 = load <4 x float>, ptr %vi6x9BDF, align 16, !tbaa !13
  %shufp232 = shufflevector <4 x float> %234, <4 x float> %235, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp232, ptr %vi6xF9BD, align 16, !tbaa !13
  %236 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %237 = load <4 x float>, ptr %vi0x68AC, align 16, !tbaa !13
  %238 = load <4 x float>, ptr %vk00, align 16, !tbaa !13
  %call233 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %237, <4 x float> noundef %238)
  %call234 = call <4 x float> @_mm_add_ps(<4 x float> noundef %236, <4 x float> noundef %call233)
  store <4 x float> %call234, ptr %vo0p0, align 16, !tbaa !13
  %239 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %240 = load <4 x float>, ptr %vi2x68AC, align 16, !tbaa !13
  %241 = load <4 x float>, ptr %vk00, align 16, !tbaa !13
  %call235 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %240, <4 x float> noundef %241)
  %call236 = call <4 x float> @_mm_add_ps(<4 x float> noundef %239, <4 x float> noundef %call235)
  store <4 x float> %call236, ptr %vo1p0, align 16, !tbaa !13
  %242 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %243 = load <4 x float>, ptr %vi1x68AC, align 16, !tbaa !13
  %244 = load <4 x float>, ptr %vk10, align 16, !tbaa !13
  %call237 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %243, <4 x float> noundef %244)
  %call238 = call <4 x float> @_mm_add_ps(<4 x float> noundef %242, <4 x float> noundef %call237)
  store <4 x float> %call238, ptr %vo0p1, align 16, !tbaa !13
  %245 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %246 = load <4 x float>, ptr %vi3x68AC, align 16, !tbaa !13
  %247 = load <4 x float>, ptr %vk10, align 16, !tbaa !13
  %call239 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %246, <4 x float> noundef %247)
  %call240 = call <4 x float> @_mm_add_ps(<4 x float> noundef %245, <4 x float> noundef %call239)
  store <4 x float> %call240, ptr %vo1p1, align 16, !tbaa !13
  %248 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %249 = load <4 x float>, ptr %vi2x68AC, align 16, !tbaa !13
  %250 = load <4 x float>, ptr %vk20, align 16, !tbaa !13
  %call241 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %249, <4 x float> noundef %250)
  %call242 = call <4 x float> @_mm_add_ps(<4 x float> noundef %248, <4 x float> noundef %call241)
  store <4 x float> %call242, ptr %vo0p0, align 16, !tbaa !13
  %251 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %252 = load <4 x float>, ptr %vi4x68AC, align 16, !tbaa !13
  %253 = load <4 x float>, ptr %vk20, align 16, !tbaa !13
  %call243 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %252, <4 x float> noundef %253)
  %call244 = call <4 x float> @_mm_add_ps(<4 x float> noundef %251, <4 x float> noundef %call243)
  store <4 x float> %call244, ptr %vo1p0, align 16, !tbaa !13
  %254 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %255 = load <4 x float>, ptr %vi3x68AC, align 16, !tbaa !13
  %256 = load <4 x float>, ptr %vk30, align 16, !tbaa !13
  %call245 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %255, <4 x float> noundef %256)
  %call246 = call <4 x float> @_mm_add_ps(<4 x float> noundef %254, <4 x float> noundef %call245)
  store <4 x float> %call246, ptr %vo0p1, align 16, !tbaa !13
  %257 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %258 = load <4 x float>, ptr %vi5x68AC, align 16, !tbaa !13
  %259 = load <4 x float>, ptr %vk30, align 16, !tbaa !13
  %call247 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %258, <4 x float> noundef %259)
  %call248 = call <4 x float> @_mm_add_ps(<4 x float> noundef %257, <4 x float> noundef %call247)
  store <4 x float> %call248, ptr %vo1p1, align 16, !tbaa !13
  %260 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %261 = load <4 x float>, ptr %vi4x68AC, align 16, !tbaa !13
  %262 = load <4 x float>, ptr %vk40, align 16, !tbaa !13
  %call249 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %261, <4 x float> noundef %262)
  %call250 = call <4 x float> @_mm_add_ps(<4 x float> noundef %260, <4 x float> noundef %call249)
  store <4 x float> %call250, ptr %vo0p0, align 16, !tbaa !13
  %263 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %264 = load <4 x float>, ptr %vi6x68AC, align 16, !tbaa !13
  %265 = load <4 x float>, ptr %vk40, align 16, !tbaa !13
  %call251 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %264, <4 x float> noundef %265)
  %call252 = call <4 x float> @_mm_add_ps(<4 x float> noundef %263, <4 x float> noundef %call251)
  store <4 x float> %call252, ptr %vo1p0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xGHIJ) #5
  %266 = load ptr, ptr %i0, align 8, !tbaa !9
  %call253 = call <4 x float> @_mm_loadu_ps(ptr noundef %266)
  store <4 x float> %call253, ptr %vi0xGHIJ, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xKLMN) #5
  %267 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr254 = getelementptr inbounds float, ptr %267, i64 4
  %call255 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr254)
  store <4 x float> %call255, ptr %vi0xKLMN, align 16, !tbaa !13
  %268 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr256 = getelementptr inbounds float, ptr %268, i64 8
  store ptr %add.ptr256, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xGHIJ) #5
  %269 = load ptr, ptr %i1, align 8, !tbaa !9
  %call257 = call <4 x float> @_mm_loadu_ps(ptr noundef %269)
  store <4 x float> %call257, ptr %vi1xGHIJ, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xKLMN) #5
  %270 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr258 = getelementptr inbounds float, ptr %270, i64 4
  %call259 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr258)
  store <4 x float> %call259, ptr %vi1xKLMN, align 16, !tbaa !13
  %271 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr260 = getelementptr inbounds float, ptr %271, i64 8
  store ptr %add.ptr260, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xGHIJ) #5
  %272 = load ptr, ptr %i2, align 8, !tbaa !9
  %call261 = call <4 x float> @_mm_loadu_ps(ptr noundef %272)
  store <4 x float> %call261, ptr %vi2xGHIJ, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xKLMN) #5
  %273 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr262 = getelementptr inbounds float, ptr %273, i64 4
  %call263 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr262)
  store <4 x float> %call263, ptr %vi2xKLMN, align 16, !tbaa !13
  %274 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr264 = getelementptr inbounds float, ptr %274, i64 8
  store ptr %add.ptr264, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xGHIJ) #5
  %275 = load ptr, ptr %i3, align 8, !tbaa !9
  %call265 = call <4 x float> @_mm_loadu_ps(ptr noundef %275)
  store <4 x float> %call265, ptr %vi3xGHIJ, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xKLMN) #5
  %276 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr266 = getelementptr inbounds float, ptr %276, i64 4
  %call267 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr266)
  store <4 x float> %call267, ptr %vi3xKLMN, align 16, !tbaa !13
  %277 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr268 = getelementptr inbounds float, ptr %277, i64 8
  store ptr %add.ptr268, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xGHIJ) #5
  %278 = load ptr, ptr %i4, align 8, !tbaa !9
  %call269 = call <4 x float> @_mm_loadu_ps(ptr noundef %278)
  store <4 x float> %call269, ptr %vi4xGHIJ, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xKLMN) #5
  %279 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr270 = getelementptr inbounds float, ptr %279, i64 4
  %call271 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr270)
  store <4 x float> %call271, ptr %vi4xKLMN, align 16, !tbaa !13
  %280 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr272 = getelementptr inbounds float, ptr %280, i64 8
  store ptr %add.ptr272, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xGHIJ) #5
  %281 = load ptr, ptr %i5, align 8, !tbaa !9
  %call273 = call <4 x float> @_mm_loadu_ps(ptr noundef %281)
  store <4 x float> %call273, ptr %vi5xGHIJ, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xKLMN) #5
  %282 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr274 = getelementptr inbounds float, ptr %282, i64 4
  %call275 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr274)
  store <4 x float> %call275, ptr %vi5xKLMN, align 16, !tbaa !13
  %283 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr276 = getelementptr inbounds float, ptr %283, i64 8
  store ptr %add.ptr276, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xGHIJ) #5
  %284 = load ptr, ptr %i6, align 8, !tbaa !9
  %call277 = call <4 x float> @_mm_loadu_ps(ptr noundef %284)
  store <4 x float> %call277, ptr %vi6xGHIJ, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xKLMN) #5
  %285 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr278 = getelementptr inbounds float, ptr %285, i64 4
  %call279 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr278)
  store <4 x float> %call279, ptr %vi6xKLMN, align 16, !tbaa !13
  %286 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr280 = getelementptr inbounds float, ptr %286, i64 8
  store ptr %add.ptr280, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x79BD) #5
  %287 = load <4 x float>, ptr %vi0xF9BD, align 16, !tbaa !13
  %288 = load <4 x float>, ptr %vi0x7135, align 16, !tbaa !13
  %call281 = call <4 x float> @_mm_move_ss(<4 x float> noundef %287, <4 x float> noundef %288)
  store <4 x float> %call281, ptr %vi0x79BD, align 16, !tbaa !13
  %289 = load <4 x float>, ptr %vi0xF9BD, align 16, !tbaa !13
  store <4 x float> %289, ptr %vi0x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x79BD) #5
  %290 = load <4 x float>, ptr %vi1xF9BD, align 16, !tbaa !13
  %291 = load <4 x float>, ptr %vi1x7135, align 16, !tbaa !13
  %call282 = call <4 x float> @_mm_move_ss(<4 x float> noundef %290, <4 x float> noundef %291)
  store <4 x float> %call282, ptr %vi1x79BD, align 16, !tbaa !13
  %292 = load <4 x float>, ptr %vi1xF9BD, align 16, !tbaa !13
  store <4 x float> %292, ptr %vi1x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x79BD) #5
  %293 = load <4 x float>, ptr %vi2xF9BD, align 16, !tbaa !13
  %294 = load <4 x float>, ptr %vi2x7135, align 16, !tbaa !13
  %call283 = call <4 x float> @_mm_move_ss(<4 x float> noundef %293, <4 x float> noundef %294)
  store <4 x float> %call283, ptr %vi2x79BD, align 16, !tbaa !13
  %295 = load <4 x float>, ptr %vi2xF9BD, align 16, !tbaa !13
  store <4 x float> %295, ptr %vi2x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x79BD) #5
  %296 = load <4 x float>, ptr %vi3xF9BD, align 16, !tbaa !13
  %297 = load <4 x float>, ptr %vi3x7135, align 16, !tbaa !13
  %call284 = call <4 x float> @_mm_move_ss(<4 x float> noundef %296, <4 x float> noundef %297)
  store <4 x float> %call284, ptr %vi3x79BD, align 16, !tbaa !13
  %298 = load <4 x float>, ptr %vi3xF9BD, align 16, !tbaa !13
  store <4 x float> %298, ptr %vi3x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x79BD) #5
  %299 = load <4 x float>, ptr %vi4xF9BD, align 16, !tbaa !13
  %300 = load <4 x float>, ptr %vi4x7135, align 16, !tbaa !13
  %call285 = call <4 x float> @_mm_move_ss(<4 x float> noundef %299, <4 x float> noundef %300)
  store <4 x float> %call285, ptr %vi4x79BD, align 16, !tbaa !13
  %301 = load <4 x float>, ptr %vi4xF9BD, align 16, !tbaa !13
  store <4 x float> %301, ptr %vi4x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x79BD) #5
  %302 = load <4 x float>, ptr %vi5xF9BD, align 16, !tbaa !13
  %303 = load <4 x float>, ptr %vi5x7135, align 16, !tbaa !13
  %call286 = call <4 x float> @_mm_move_ss(<4 x float> noundef %302, <4 x float> noundef %303)
  store <4 x float> %call286, ptr %vi5x79BD, align 16, !tbaa !13
  %304 = load <4 x float>, ptr %vi5xF9BD, align 16, !tbaa !13
  store <4 x float> %304, ptr %vi5x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x79BD) #5
  %305 = load <4 x float>, ptr %vi6xF9BD, align 16, !tbaa !13
  %306 = load <4 x float>, ptr %vi6x7135, align 16, !tbaa !13
  %call287 = call <4 x float> @_mm_move_ss(<4 x float> noundef %305, <4 x float> noundef %306)
  store <4 x float> %call287, ptr %vi6x79BD, align 16, !tbaa !13
  %307 = load <4 x float>, ptr %vi6xF9BD, align 16, !tbaa !13
  store <4 x float> %307, ptr %vi6x7135, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xGIKM) #5
  %308 = load <4 x float>, ptr %vi0xGHIJ, align 16, !tbaa !13
  %309 = load <4 x float>, ptr %vi0xKLMN, align 16, !tbaa !13
  %shufp288 = shufflevector <4 x float> %308, <4 x float> %309, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp288, ptr %vi0xGIKM, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xHJLN) #5
  %310 = load <4 x float>, ptr %vi0xGHIJ, align 16, !tbaa !13
  %311 = load <4 x float>, ptr %vi0xKLMN, align 16, !tbaa !13
  %shufp289 = shufflevector <4 x float> %310, <4 x float> %311, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp289, ptr %vi0xHJLN, align 16, !tbaa !13
  %312 = load <4 x float>, ptr %vi0xHJLN, align 16, !tbaa !13
  store <4 x float> %312, ptr %vi0x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xGIKM) #5
  %313 = load <4 x float>, ptr %vi1xGHIJ, align 16, !tbaa !13
  %314 = load <4 x float>, ptr %vi1xKLMN, align 16, !tbaa !13
  %shufp290 = shufflevector <4 x float> %313, <4 x float> %314, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp290, ptr %vi1xGIKM, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xHJLN) #5
  %315 = load <4 x float>, ptr %vi1xGHIJ, align 16, !tbaa !13
  %316 = load <4 x float>, ptr %vi1xKLMN, align 16, !tbaa !13
  %shufp291 = shufflevector <4 x float> %315, <4 x float> %316, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp291, ptr %vi1xHJLN, align 16, !tbaa !13
  %317 = load <4 x float>, ptr %vi1xHJLN, align 16, !tbaa !13
  store <4 x float> %317, ptr %vi1x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xGIKM) #5
  %318 = load <4 x float>, ptr %vi2xGHIJ, align 16, !tbaa !13
  %319 = load <4 x float>, ptr %vi2xKLMN, align 16, !tbaa !13
  %shufp292 = shufflevector <4 x float> %318, <4 x float> %319, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp292, ptr %vi2xGIKM, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xHJLN) #5
  %320 = load <4 x float>, ptr %vi2xGHIJ, align 16, !tbaa !13
  %321 = load <4 x float>, ptr %vi2xKLMN, align 16, !tbaa !13
  %shufp293 = shufflevector <4 x float> %320, <4 x float> %321, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp293, ptr %vi2xHJLN, align 16, !tbaa !13
  %322 = load <4 x float>, ptr %vi2xHJLN, align 16, !tbaa !13
  store <4 x float> %322, ptr %vi2x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xGIKM) #5
  %323 = load <4 x float>, ptr %vi3xGHIJ, align 16, !tbaa !13
  %324 = load <4 x float>, ptr %vi3xKLMN, align 16, !tbaa !13
  %shufp294 = shufflevector <4 x float> %323, <4 x float> %324, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp294, ptr %vi3xGIKM, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xHJLN) #5
  %325 = load <4 x float>, ptr %vi3xGHIJ, align 16, !tbaa !13
  %326 = load <4 x float>, ptr %vi3xKLMN, align 16, !tbaa !13
  %shufp295 = shufflevector <4 x float> %325, <4 x float> %326, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp295, ptr %vi3xHJLN, align 16, !tbaa !13
  %327 = load <4 x float>, ptr %vi3xHJLN, align 16, !tbaa !13
  store <4 x float> %327, ptr %vi3x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xGIKM) #5
  %328 = load <4 x float>, ptr %vi4xGHIJ, align 16, !tbaa !13
  %329 = load <4 x float>, ptr %vi4xKLMN, align 16, !tbaa !13
  %shufp296 = shufflevector <4 x float> %328, <4 x float> %329, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp296, ptr %vi4xGIKM, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xHJLN) #5
  %330 = load <4 x float>, ptr %vi4xGHIJ, align 16, !tbaa !13
  %331 = load <4 x float>, ptr %vi4xKLMN, align 16, !tbaa !13
  %shufp297 = shufflevector <4 x float> %330, <4 x float> %331, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp297, ptr %vi4xHJLN, align 16, !tbaa !13
  %332 = load <4 x float>, ptr %vi4xHJLN, align 16, !tbaa !13
  store <4 x float> %332, ptr %vi4x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xGIKM) #5
  %333 = load <4 x float>, ptr %vi5xGHIJ, align 16, !tbaa !13
  %334 = load <4 x float>, ptr %vi5xKLMN, align 16, !tbaa !13
  %shufp298 = shufflevector <4 x float> %333, <4 x float> %334, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp298, ptr %vi5xGIKM, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xHJLN) #5
  %335 = load <4 x float>, ptr %vi5xGHIJ, align 16, !tbaa !13
  %336 = load <4 x float>, ptr %vi5xKLMN, align 16, !tbaa !13
  %shufp299 = shufflevector <4 x float> %335, <4 x float> %336, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp299, ptr %vi5xHJLN, align 16, !tbaa !13
  %337 = load <4 x float>, ptr %vi5xHJLN, align 16, !tbaa !13
  store <4 x float> %337, ptr %vi5x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xGIKM) #5
  %338 = load <4 x float>, ptr %vi6xGHIJ, align 16, !tbaa !13
  %339 = load <4 x float>, ptr %vi6xKLMN, align 16, !tbaa !13
  %shufp300 = shufflevector <4 x float> %338, <4 x float> %339, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %shufp300, ptr %vi6xGIKM, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xHJLN) #5
  %340 = load <4 x float>, ptr %vi6xGHIJ, align 16, !tbaa !13
  %341 = load <4 x float>, ptr %vi6xKLMN, align 16, !tbaa !13
  %shufp301 = shufflevector <4 x float> %340, <4 x float> %341, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %shufp301, ptr %vi6xHJLN, align 16, !tbaa !13
  %342 = load <4 x float>, ptr %vi6xHJLN, align 16, !tbaa !13
  store <4 x float> %342, ptr %vi6x9BDF, align 16, !tbaa !13
  %343 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %344 = load <4 x float>, ptr %vi0x79BD, align 16, !tbaa !13
  %345 = load <4 x float>, ptr %vk01, align 16, !tbaa !13
  %call302 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %344, <4 x float> noundef %345)
  %call303 = call <4 x float> @_mm_add_ps(<4 x float> noundef %343, <4 x float> noundef %call302)
  store <4 x float> %call303, ptr %vo0p1, align 16, !tbaa !13
  %346 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %347 = load <4 x float>, ptr %vi2x79BD, align 16, !tbaa !13
  %348 = load <4 x float>, ptr %vk01, align 16, !tbaa !13
  %call304 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %347, <4 x float> noundef %348)
  %call305 = call <4 x float> @_mm_add_ps(<4 x float> noundef %346, <4 x float> noundef %call304)
  store <4 x float> %call305, ptr %vo1p1, align 16, !tbaa !13
  %349 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %350 = load <4 x float>, ptr %vi1x79BD, align 16, !tbaa !13
  %351 = load <4 x float>, ptr %vk11, align 16, !tbaa !13
  %call306 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %350, <4 x float> noundef %351)
  %call307 = call <4 x float> @_mm_add_ps(<4 x float> noundef %349, <4 x float> noundef %call306)
  store <4 x float> %call307, ptr %vo0p0, align 16, !tbaa !13
  %352 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %353 = load <4 x float>, ptr %vi3x79BD, align 16, !tbaa !13
  %354 = load <4 x float>, ptr %vk11, align 16, !tbaa !13
  %call308 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %353, <4 x float> noundef %354)
  %call309 = call <4 x float> @_mm_add_ps(<4 x float> noundef %352, <4 x float> noundef %call308)
  store <4 x float> %call309, ptr %vo1p0, align 16, !tbaa !13
  %355 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %356 = load <4 x float>, ptr %vi2x79BD, align 16, !tbaa !13
  %357 = load <4 x float>, ptr %vk21, align 16, !tbaa !13
  %call310 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %356, <4 x float> noundef %357)
  %call311 = call <4 x float> @_mm_add_ps(<4 x float> noundef %355, <4 x float> noundef %call310)
  store <4 x float> %call311, ptr %vo0p1, align 16, !tbaa !13
  %358 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %359 = load <4 x float>, ptr %vi4x79BD, align 16, !tbaa !13
  %360 = load <4 x float>, ptr %vk21, align 16, !tbaa !13
  %call312 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %359, <4 x float> noundef %360)
  %call313 = call <4 x float> @_mm_add_ps(<4 x float> noundef %358, <4 x float> noundef %call312)
  store <4 x float> %call313, ptr %vo1p1, align 16, !tbaa !13
  %361 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %362 = load <4 x float>, ptr %vi3x79BD, align 16, !tbaa !13
  %363 = load <4 x float>, ptr %vk31, align 16, !tbaa !13
  %call314 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %362, <4 x float> noundef %363)
  %call315 = call <4 x float> @_mm_add_ps(<4 x float> noundef %361, <4 x float> noundef %call314)
  store <4 x float> %call315, ptr %vo0p0, align 16, !tbaa !13
  %364 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %365 = load <4 x float>, ptr %vi5x79BD, align 16, !tbaa !13
  %366 = load <4 x float>, ptr %vk31, align 16, !tbaa !13
  %call316 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %365, <4 x float> noundef %366)
  %call317 = call <4 x float> @_mm_add_ps(<4 x float> noundef %364, <4 x float> noundef %call316)
  store <4 x float> %call317, ptr %vo1p0, align 16, !tbaa !13
  %367 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %368 = load <4 x float>, ptr %vi4x79BD, align 16, !tbaa !13
  %369 = load <4 x float>, ptr %vk41, align 16, !tbaa !13
  %call318 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %368, <4 x float> noundef %369)
  %call319 = call <4 x float> @_mm_add_ps(<4 x float> noundef %367, <4 x float> noundef %call318)
  store <4 x float> %call319, ptr %vo0p1, align 16, !tbaa !13
  %370 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %371 = load <4 x float>, ptr %vi6x79BD, align 16, !tbaa !13
  %372 = load <4 x float>, ptr %vk41, align 16, !tbaa !13
  %call320 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %371, <4 x float> noundef %372)
  %call321 = call <4 x float> @_mm_add_ps(<4 x float> noundef %370, <4 x float> noundef %call320)
  store <4 x float> %call321, ptr %vo1p1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xGACE) #5
  %373 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %374 = load <4 x float>, ptr %vi0xGIKM, align 16, !tbaa !13
  %call322 = call <4 x float> @_mm_move_ss(<4 x float> noundef %373, <4 x float> noundef %374)
  store <4 x float> %call322, ptr %vi0xGACE, align 16, !tbaa !13
  %375 = load <4 x float>, ptr %vi0xGIKM, align 16, !tbaa !13
  store <4 x float> %375, ptr %vi0x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xGACE) #5
  %376 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %377 = load <4 x float>, ptr %vi1xGIKM, align 16, !tbaa !13
  %call323 = call <4 x float> @_mm_move_ss(<4 x float> noundef %376, <4 x float> noundef %377)
  store <4 x float> %call323, ptr %vi1xGACE, align 16, !tbaa !13
  %378 = load <4 x float>, ptr %vi1xGIKM, align 16, !tbaa !13
  store <4 x float> %378, ptr %vi1x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xGACE) #5
  %379 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %380 = load <4 x float>, ptr %vi2xGIKM, align 16, !tbaa !13
  %call324 = call <4 x float> @_mm_move_ss(<4 x float> noundef %379, <4 x float> noundef %380)
  store <4 x float> %call324, ptr %vi2xGACE, align 16, !tbaa !13
  %381 = load <4 x float>, ptr %vi2xGIKM, align 16, !tbaa !13
  store <4 x float> %381, ptr %vi2x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xGACE) #5
  %382 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %383 = load <4 x float>, ptr %vi3xGIKM, align 16, !tbaa !13
  %call325 = call <4 x float> @_mm_move_ss(<4 x float> noundef %382, <4 x float> noundef %383)
  store <4 x float> %call325, ptr %vi3xGACE, align 16, !tbaa !13
  %384 = load <4 x float>, ptr %vi3xGIKM, align 16, !tbaa !13
  store <4 x float> %384, ptr %vi3x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xGACE) #5
  %385 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %386 = load <4 x float>, ptr %vi4xGIKM, align 16, !tbaa !13
  %call326 = call <4 x float> @_mm_move_ss(<4 x float> noundef %385, <4 x float> noundef %386)
  store <4 x float> %call326, ptr %vi4xGACE, align 16, !tbaa !13
  %387 = load <4 x float>, ptr %vi4xGIKM, align 16, !tbaa !13
  store <4 x float> %387, ptr %vi4x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xGACE) #5
  %388 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %389 = load <4 x float>, ptr %vi5xGIKM, align 16, !tbaa !13
  %call327 = call <4 x float> @_mm_move_ss(<4 x float> noundef %388, <4 x float> noundef %389)
  store <4 x float> %call327, ptr %vi5xGACE, align 16, !tbaa !13
  %390 = load <4 x float>, ptr %vi5xGIKM, align 16, !tbaa !13
  store <4 x float> %390, ptr %vi5x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xGACE) #5
  %391 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %392 = load <4 x float>, ptr %vi6xGIKM, align 16, !tbaa !13
  %call328 = call <4 x float> @_mm_move_ss(<4 x float> noundef %391, <4 x float> noundef %392)
  store <4 x float> %call328, ptr %vi6xGACE, align 16, !tbaa !13
  %393 = load <4 x float>, ptr %vi6xGIKM, align 16, !tbaa !13
  store <4 x float> %393, ptr %vi6x8ACE, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xACEG) #5
  %394 = load <4 x float>, ptr %vi0xGACE, align 16, !tbaa !13
  %395 = load <4 x float>, ptr %vi0xGACE, align 16, !tbaa !13
  %shufp329 = shufflevector <4 x float> %394, <4 x float> %395, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp329, ptr %vi0xACEG, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xACEG) #5
  %396 = load <4 x float>, ptr %vi1xGACE, align 16, !tbaa !13
  %397 = load <4 x float>, ptr %vi1xGACE, align 16, !tbaa !13
  %shufp330 = shufflevector <4 x float> %396, <4 x float> %397, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp330, ptr %vi1xACEG, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xACEG) #5
  %398 = load <4 x float>, ptr %vi2xGACE, align 16, !tbaa !13
  %399 = load <4 x float>, ptr %vi2xGACE, align 16, !tbaa !13
  %shufp331 = shufflevector <4 x float> %398, <4 x float> %399, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp331, ptr %vi2xACEG, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xACEG) #5
  %400 = load <4 x float>, ptr %vi3xGACE, align 16, !tbaa !13
  %401 = load <4 x float>, ptr %vi3xGACE, align 16, !tbaa !13
  %shufp332 = shufflevector <4 x float> %400, <4 x float> %401, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp332, ptr %vi3xACEG, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xACEG) #5
  %402 = load <4 x float>, ptr %vi4xGACE, align 16, !tbaa !13
  %403 = load <4 x float>, ptr %vi4xGACE, align 16, !tbaa !13
  %shufp333 = shufflevector <4 x float> %402, <4 x float> %403, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp333, ptr %vi4xACEG, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xACEG) #5
  %404 = load <4 x float>, ptr %vi5xGACE, align 16, !tbaa !13
  %405 = load <4 x float>, ptr %vi5xGACE, align 16, !tbaa !13
  %shufp334 = shufflevector <4 x float> %404, <4 x float> %405, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp334, ptr %vi5xACEG, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xACEG) #5
  %406 = load <4 x float>, ptr %vi6xGACE, align 16, !tbaa !13
  %407 = load <4 x float>, ptr %vi6xGACE, align 16, !tbaa !13
  %shufp335 = shufflevector <4 x float> %406, <4 x float> %407, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp335, ptr %vi6xACEG, align 16, !tbaa !13
  %408 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %409 = load <4 x float>, ptr %vi0xACEG, align 16, !tbaa !13
  %410 = load <4 x float>, ptr %vk04, align 16, !tbaa !13
  %call336 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %409, <4 x float> noundef %410)
  %call337 = call <4 x float> @_mm_add_ps(<4 x float> noundef %408, <4 x float> noundef %call336)
  store <4 x float> %call337, ptr %vo0p0, align 16, !tbaa !13
  %411 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %412 = load <4 x float>, ptr %vi2xACEG, align 16, !tbaa !13
  %413 = load <4 x float>, ptr %vk04, align 16, !tbaa !13
  %call338 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %412, <4 x float> noundef %413)
  %call339 = call <4 x float> @_mm_add_ps(<4 x float> noundef %411, <4 x float> noundef %call338)
  store <4 x float> %call339, ptr %vo1p0, align 16, !tbaa !13
  %414 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %415 = load <4 x float>, ptr %vi1xACEG, align 16, !tbaa !13
  %416 = load <4 x float>, ptr %vk14, align 16, !tbaa !13
  %call340 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %415, <4 x float> noundef %416)
  %call341 = call <4 x float> @_mm_add_ps(<4 x float> noundef %414, <4 x float> noundef %call340)
  store <4 x float> %call341, ptr %vo0p1, align 16, !tbaa !13
  %417 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %418 = load <4 x float>, ptr %vi3xACEG, align 16, !tbaa !13
  %419 = load <4 x float>, ptr %vk14, align 16, !tbaa !13
  %call342 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %418, <4 x float> noundef %419)
  %call343 = call <4 x float> @_mm_add_ps(<4 x float> noundef %417, <4 x float> noundef %call342)
  store <4 x float> %call343, ptr %vo1p1, align 16, !tbaa !13
  %420 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %421 = load <4 x float>, ptr %vi2xACEG, align 16, !tbaa !13
  %422 = load <4 x float>, ptr %vk24, align 16, !tbaa !13
  %call344 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %421, <4 x float> noundef %422)
  %call345 = call <4 x float> @_mm_add_ps(<4 x float> noundef %420, <4 x float> noundef %call344)
  store <4 x float> %call345, ptr %vo0p0, align 16, !tbaa !13
  %423 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %424 = load <4 x float>, ptr %vi4xACEG, align 16, !tbaa !13
  %425 = load <4 x float>, ptr %vk24, align 16, !tbaa !13
  %call346 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %424, <4 x float> noundef %425)
  %call347 = call <4 x float> @_mm_add_ps(<4 x float> noundef %423, <4 x float> noundef %call346)
  store <4 x float> %call347, ptr %vo1p0, align 16, !tbaa !13
  %426 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %427 = load <4 x float>, ptr %vi3xACEG, align 16, !tbaa !13
  %428 = load <4 x float>, ptr %vk34, align 16, !tbaa !13
  %call348 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %427, <4 x float> noundef %428)
  %call349 = call <4 x float> @_mm_add_ps(<4 x float> noundef %426, <4 x float> noundef %call348)
  store <4 x float> %call349, ptr %vo0p1, align 16, !tbaa !13
  %429 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %430 = load <4 x float>, ptr %vi5xACEG, align 16, !tbaa !13
  %431 = load <4 x float>, ptr %vk34, align 16, !tbaa !13
  %call350 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %430, <4 x float> noundef %431)
  %call351 = call <4 x float> @_mm_add_ps(<4 x float> noundef %429, <4 x float> noundef %call350)
  store <4 x float> %call351, ptr %vo1p1, align 16, !tbaa !13
  %432 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %433 = load <4 x float>, ptr %vi4xACEG, align 16, !tbaa !13
  %434 = load <4 x float>, ptr %vk44, align 16, !tbaa !13
  %call352 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %433, <4 x float> noundef %434)
  %call353 = call <4 x float> @_mm_add_ps(<4 x float> noundef %432, <4 x float> noundef %call352)
  store <4 x float> %call353, ptr %vo0p0, align 16, !tbaa !13
  %435 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %436 = load <4 x float>, ptr %vi6xACEG, align 16, !tbaa !13
  %437 = load <4 x float>, ptr %vk44, align 16, !tbaa !13
  %call354 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %436, <4 x float> noundef %437)
  %call355 = call <4 x float> @_mm_add_ps(<4 x float> noundef %435, <4 x float> noundef %call354)
  store <4 x float> %call355, ptr %vo1p0, align 16, !tbaa !13
  %438 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %439 = load <4 x float>, ptr %vo0p1, align 16, !tbaa !13
  %call356 = call <4 x float> @_mm_add_ps(<4 x float> noundef %438, <4 x float> noundef %439)
  store <4 x float> %call356, ptr %vo0p0, align 16, !tbaa !13
  %440 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %441 = load <4 x float>, ptr %vo1p1, align 16, !tbaa !13
  %call357 = call <4 x float> @_mm_add_ps(<4 x float> noundef %440, <4 x float> noundef %441)
  store <4 x float> %call357, ptr %vo1p0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo0) #5
  %442 = load <4 x float>, ptr %vo0p0, align 16, !tbaa !13
  %443 = load <4 x float>, ptr %vmin, align 16, !tbaa !13
  %call358 = call <4 x float> @_mm_max_ps(<4 x float> noundef %442, <4 x float> noundef %443)
  store <4 x float> %call358, ptr %vo0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo1) #5
  %444 = load <4 x float>, ptr %vo1p0, align 16, !tbaa !13
  %445 = load <4 x float>, ptr %vmin, align 16, !tbaa !13
  %call359 = call <4 x float> @_mm_max_ps(<4 x float> noundef %444, <4 x float> noundef %445)
  store <4 x float> %call359, ptr %vo1, align 16, !tbaa !13
  %446 = load <4 x float>, ptr %vo0, align 16, !tbaa !13
  %447 = load <4 x float>, ptr %vmax, align 16, !tbaa !13
  %call360 = call <4 x float> @_mm_min_ps(<4 x float> noundef %446, <4 x float> noundef %447)
  store <4 x float> %call360, ptr %vo0, align 16, !tbaa !13
  %448 = load <4 x float>, ptr %vo1, align 16, !tbaa !13
  %449 = load <4 x float>, ptr %vmax, align 16, !tbaa !13
  %call361 = call <4 x float> @_mm_min_ps(<4 x float> noundef %448, <4 x float> noundef %449)
  store <4 x float> %call361, ptr %vo1, align 16, !tbaa !13
  %450 = load ptr, ptr %o1, align 8, !tbaa !9
  %451 = load <4 x float>, ptr %vo1, align 16, !tbaa !13
  call void @_mm_storeu_ps(ptr noundef %450, <4 x float> noundef %451)
  %452 = load ptr, ptr %o1, align 8, !tbaa !9
  %add.ptr362 = getelementptr inbounds float, ptr %452, i64 4
  store ptr %add.ptr362, ptr %o1, align 8, !tbaa !9
  %453 = load ptr, ptr %o0, align 8, !tbaa !9
  %454 = load <4 x float>, ptr %vo0, align 16, !tbaa !13
  call void @_mm_storeu_ps(ptr noundef %453, <4 x float> noundef %454)
  %455 = load ptr, ptr %o0, align 8, !tbaa !9
  %add.ptr363 = getelementptr inbounds float, ptr %455, i64 4
  store ptr %add.ptr363, ptr %o0, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo0) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xACEG) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xACEG) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xACEG) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xACEG) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xACEG) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xACEG) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xACEG) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xGACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xGACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xGACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xGACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xGACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xGACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xGACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xHJLN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xGIKM) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xHJLN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xGIKM) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xHJLN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xGIKM) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xHJLN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xGIKM) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xHJLN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xGIKM) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xHJLN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xGIKM) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xHJLN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xGIKM) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x79BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x79BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x79BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x79BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x79BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x79BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x79BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xF9BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xF9BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xF9BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xF9BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xF9BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xF9BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xF9BD) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x68AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x68AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x68AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x68AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x68AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x68AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x68AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xE8AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xE8AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xE8AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xE8AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xE8AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xE8AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xE8AC) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo1p1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo0p1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo1p0) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo0p0) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %456 = load i64, ptr %w, align 8, !tbaa !5
  %sub364 = sub i64 %456, 32
  store i64 %sub364, ptr %w, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %457 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %458 = load <4 x float>, ptr %vmask_even, align 16, !tbaa !13
  %call365 = call <4 x float> @_mm_and_ps(<4 x float> noundef %457, <4 x float> noundef %458)
  store <4 x float> %call365, ptr %vi0x8ACE, align 16, !tbaa !13
  %459 = load <4 x float>, ptr %vi0x9BDF, align 16, !tbaa !13
  %460 = load <4 x float>, ptr %vmask_odd, align 16, !tbaa !13
  %call366 = call <4 x float> @_mm_and_ps(<4 x float> noundef %459, <4 x float> noundef %460)
  store <4 x float> %call366, ptr %vi0x9BDF, align 16, !tbaa !13
  %461 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %462 = load <4 x float>, ptr %vmask_even, align 16, !tbaa !13
  %call367 = call <4 x float> @_mm_and_ps(<4 x float> noundef %461, <4 x float> noundef %462)
  store <4 x float> %call367, ptr %vi1x8ACE, align 16, !tbaa !13
  %463 = load <4 x float>, ptr %vi1x9BDF, align 16, !tbaa !13
  %464 = load <4 x float>, ptr %vmask_odd, align 16, !tbaa !13
  %call368 = call <4 x float> @_mm_and_ps(<4 x float> noundef %463, <4 x float> noundef %464)
  store <4 x float> %call368, ptr %vi1x9BDF, align 16, !tbaa !13
  %465 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %466 = load <4 x float>, ptr %vmask_even, align 16, !tbaa !13
  %call369 = call <4 x float> @_mm_and_ps(<4 x float> noundef %465, <4 x float> noundef %466)
  store <4 x float> %call369, ptr %vi2x8ACE, align 16, !tbaa !13
  %467 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %468 = load <4 x float>, ptr %vmask_odd, align 16, !tbaa !13
  %call370 = call <4 x float> @_mm_and_ps(<4 x float> noundef %467, <4 x float> noundef %468)
  store <4 x float> %call370, ptr %vi2x9BDF, align 16, !tbaa !13
  %469 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %470 = load <4 x float>, ptr %vmask_even, align 16, !tbaa !13
  %call371 = call <4 x float> @_mm_and_ps(<4 x float> noundef %469, <4 x float> noundef %470)
  store <4 x float> %call371, ptr %vi3x8ACE, align 16, !tbaa !13
  %471 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %472 = load <4 x float>, ptr %vmask_odd, align 16, !tbaa !13
  %call372 = call <4 x float> @_mm_and_ps(<4 x float> noundef %471, <4 x float> noundef %472)
  store <4 x float> %call372, ptr %vi3x9BDF, align 16, !tbaa !13
  %473 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %474 = load <4 x float>, ptr %vmask_even, align 16, !tbaa !13
  %call373 = call <4 x float> @_mm_and_ps(<4 x float> noundef %473, <4 x float> noundef %474)
  store <4 x float> %call373, ptr %vi4x8ACE, align 16, !tbaa !13
  %475 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %476 = load <4 x float>, ptr %vmask_odd, align 16, !tbaa !13
  %call374 = call <4 x float> @_mm_and_ps(<4 x float> noundef %475, <4 x float> noundef %476)
  store <4 x float> %call374, ptr %vi4x9BDF, align 16, !tbaa !13
  %477 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %478 = load <4 x float>, ptr %vmask_even, align 16, !tbaa !13
  %call375 = call <4 x float> @_mm_and_ps(<4 x float> noundef %477, <4 x float> noundef %478)
  store <4 x float> %call375, ptr %vi5x8ACE, align 16, !tbaa !13
  %479 = load <4 x float>, ptr %vi5x9BDF, align 16, !tbaa !13
  %480 = load <4 x float>, ptr %vmask_odd, align 16, !tbaa !13
  %call376 = call <4 x float> @_mm_and_ps(<4 x float> noundef %479, <4 x float> noundef %480)
  store <4 x float> %call376, ptr %vi5x9BDF, align 16, !tbaa !13
  %481 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %482 = load <4 x float>, ptr %vmask_even, align 16, !tbaa !13
  %call377 = call <4 x float> @_mm_and_ps(<4 x float> noundef %481, <4 x float> noundef %482)
  store <4 x float> %call377, ptr %vi6x8ACE, align 16, !tbaa !13
  %483 = load <4 x float>, ptr %vi6x9BDF, align 16, !tbaa !13
  %484 = load <4 x float>, ptr %vmask_odd, align 16, !tbaa !13
  %call378 = call <4 x float> @_mm_and_ps(<4 x float> noundef %483, <4 x float> noundef %484)
  store <4 x float> %call378, ptr %vi6x9BDF, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo0p0379) #5
  %485 = load <4 x float>, ptr %vbias, align 16, !tbaa !13
  %486 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %487 = load <4 x float>, ptr %vk02, align 16, !tbaa !13
  %call380 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %486, <4 x float> noundef %487)
  %call381 = call <4 x float> @_mm_add_ps(<4 x float> noundef %485, <4 x float> noundef %call380)
  store <4 x float> %call381, ptr %vo0p0379, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo1p0382) #5
  %488 = load <4 x float>, ptr %vbias, align 16, !tbaa !13
  %489 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %490 = load <4 x float>, ptr %vk02, align 16, !tbaa !13
  %call383 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %489, <4 x float> noundef %490)
  %call384 = call <4 x float> @_mm_add_ps(<4 x float> noundef %488, <4 x float> noundef %call383)
  store <4 x float> %call384, ptr %vo1p0382, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo0p1385) #5
  %491 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %492 = load <4 x float>, ptr %vk12, align 16, !tbaa !13
  %call386 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %491, <4 x float> noundef %492)
  store <4 x float> %call386, ptr %vo0p1385, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo1p1387) #5
  %493 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %494 = load <4 x float>, ptr %vk12, align 16, !tbaa !13
  %call388 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %493, <4 x float> noundef %494)
  store <4 x float> %call388, ptr %vo1p1387, align 16, !tbaa !13
  %495 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %496 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %497 = load <4 x float>, ptr %vk22, align 16, !tbaa !13
  %call389 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %496, <4 x float> noundef %497)
  %call390 = call <4 x float> @_mm_add_ps(<4 x float> noundef %495, <4 x float> noundef %call389)
  store <4 x float> %call390, ptr %vo0p0379, align 16, !tbaa !13
  %498 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %499 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %500 = load <4 x float>, ptr %vk22, align 16, !tbaa !13
  %call391 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %499, <4 x float> noundef %500)
  %call392 = call <4 x float> @_mm_add_ps(<4 x float> noundef %498, <4 x float> noundef %call391)
  store <4 x float> %call392, ptr %vo1p0382, align 16, !tbaa !13
  %501 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %502 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %503 = load <4 x float>, ptr %vk32, align 16, !tbaa !13
  %call393 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %502, <4 x float> noundef %503)
  %call394 = call <4 x float> @_mm_add_ps(<4 x float> noundef %501, <4 x float> noundef %call393)
  store <4 x float> %call394, ptr %vo0p1385, align 16, !tbaa !13
  %504 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %505 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %506 = load <4 x float>, ptr %vk32, align 16, !tbaa !13
  %call395 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %505, <4 x float> noundef %506)
  %call396 = call <4 x float> @_mm_add_ps(<4 x float> noundef %504, <4 x float> noundef %call395)
  store <4 x float> %call396, ptr %vo1p1387, align 16, !tbaa !13
  %507 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %508 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %509 = load <4 x float>, ptr %vk42, align 16, !tbaa !13
  %call397 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %508, <4 x float> noundef %509)
  %call398 = call <4 x float> @_mm_add_ps(<4 x float> noundef %507, <4 x float> noundef %call397)
  store <4 x float> %call398, ptr %vo0p0379, align 16, !tbaa !13
  %510 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %511 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %512 = load <4 x float>, ptr %vk42, align 16, !tbaa !13
  %call399 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %511, <4 x float> noundef %512)
  %call400 = call <4 x float> @_mm_add_ps(<4 x float> noundef %510, <4 x float> noundef %call399)
  store <4 x float> %call400, ptr %vo1p0382, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xE8AC401) #5
  %513 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %514 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %shufp402 = shufflevector <4 x float> %513, <4 x float> %514, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp402, ptr %vi0xE8AC401, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xE8AC403) #5
  %515 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %516 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %shufp404 = shufflevector <4 x float> %515, <4 x float> %516, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp404, ptr %vi1xE8AC403, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xE8AC405) #5
  %517 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %518 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %shufp406 = shufflevector <4 x float> %517, <4 x float> %518, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp406, ptr %vi2xE8AC405, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xE8AC407) #5
  %519 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %520 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %shufp408 = shufflevector <4 x float> %519, <4 x float> %520, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp408, ptr %vi3xE8AC407, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xE8AC409) #5
  %521 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %522 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %shufp410 = shufflevector <4 x float> %521, <4 x float> %522, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp410, ptr %vi4xE8AC409, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xE8AC411) #5
  %523 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %524 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %shufp412 = shufflevector <4 x float> %523, <4 x float> %524, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp412, ptr %vi5xE8AC411, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xE8AC413) #5
  %525 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %526 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %shufp414 = shufflevector <4 x float> %525, <4 x float> %526, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp414, ptr %vi6xE8AC413, align 16, !tbaa !13
  %527 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %528 = load <4 x float>, ptr %vi0x9BDF, align 16, !tbaa !13
  %529 = load <4 x float>, ptr %vk03, align 16, !tbaa !13
  %call415 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %528, <4 x float> noundef %529)
  %call416 = call <4 x float> @_mm_add_ps(<4 x float> noundef %527, <4 x float> noundef %call415)
  store <4 x float> %call416, ptr %vo0p1385, align 16, !tbaa !13
  %530 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %531 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %532 = load <4 x float>, ptr %vk03, align 16, !tbaa !13
  %call417 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %531, <4 x float> noundef %532)
  %call418 = call <4 x float> @_mm_add_ps(<4 x float> noundef %530, <4 x float> noundef %call417)
  store <4 x float> %call418, ptr %vo1p1387, align 16, !tbaa !13
  %533 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %534 = load <4 x float>, ptr %vi1x9BDF, align 16, !tbaa !13
  %535 = load <4 x float>, ptr %vk13, align 16, !tbaa !13
  %call419 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %534, <4 x float> noundef %535)
  %call420 = call <4 x float> @_mm_add_ps(<4 x float> noundef %533, <4 x float> noundef %call419)
  store <4 x float> %call420, ptr %vo0p0379, align 16, !tbaa !13
  %536 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %537 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %538 = load <4 x float>, ptr %vk13, align 16, !tbaa !13
  %call421 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %537, <4 x float> noundef %538)
  %call422 = call <4 x float> @_mm_add_ps(<4 x float> noundef %536, <4 x float> noundef %call421)
  store <4 x float> %call422, ptr %vo1p0382, align 16, !tbaa !13
  %539 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %540 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %541 = load <4 x float>, ptr %vk23, align 16, !tbaa !13
  %call423 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %540, <4 x float> noundef %541)
  %call424 = call <4 x float> @_mm_add_ps(<4 x float> noundef %539, <4 x float> noundef %call423)
  store <4 x float> %call424, ptr %vo0p1385, align 16, !tbaa !13
  %542 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %543 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %544 = load <4 x float>, ptr %vk23, align 16, !tbaa !13
  %call425 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %543, <4 x float> noundef %544)
  %call426 = call <4 x float> @_mm_add_ps(<4 x float> noundef %542, <4 x float> noundef %call425)
  store <4 x float> %call426, ptr %vo1p1387, align 16, !tbaa !13
  %545 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %546 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %547 = load <4 x float>, ptr %vk33, align 16, !tbaa !13
  %call427 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %546, <4 x float> noundef %547)
  %call428 = call <4 x float> @_mm_add_ps(<4 x float> noundef %545, <4 x float> noundef %call427)
  store <4 x float> %call428, ptr %vo0p0379, align 16, !tbaa !13
  %548 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %549 = load <4 x float>, ptr %vi5x9BDF, align 16, !tbaa !13
  %550 = load <4 x float>, ptr %vk33, align 16, !tbaa !13
  %call429 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %549, <4 x float> noundef %550)
  %call430 = call <4 x float> @_mm_add_ps(<4 x float> noundef %548, <4 x float> noundef %call429)
  store <4 x float> %call430, ptr %vo1p0382, align 16, !tbaa !13
  %551 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %552 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %553 = load <4 x float>, ptr %vk43, align 16, !tbaa !13
  %call431 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %552, <4 x float> noundef %553)
  %call432 = call <4 x float> @_mm_add_ps(<4 x float> noundef %551, <4 x float> noundef %call431)
  store <4 x float> %call432, ptr %vo0p1385, align 16, !tbaa !13
  %554 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %555 = load <4 x float>, ptr %vi6x9BDF, align 16, !tbaa !13
  %556 = load <4 x float>, ptr %vk43, align 16, !tbaa !13
  %call433 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %555, <4 x float> noundef %556)
  %call434 = call <4 x float> @_mm_add_ps(<4 x float> noundef %554, <4 x float> noundef %call433)
  store <4 x float> %call434, ptr %vo1p1387, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x68AC435) #5
  %557 = load <4 x float>, ptr %vi0xE8AC401, align 16, !tbaa !13
  %558 = load <4 x float>, ptr %vi0x6024, align 16, !tbaa !13
  %call436 = call <4 x float> @_mm_move_ss(<4 x float> noundef %557, <4 x float> noundef %558)
  store <4 x float> %call436, ptr %vi0x68AC435, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x68AC437) #5
  %559 = load <4 x float>, ptr %vi1xE8AC403, align 16, !tbaa !13
  %560 = load <4 x float>, ptr %vi1x6024, align 16, !tbaa !13
  %call438 = call <4 x float> @_mm_move_ss(<4 x float> noundef %559, <4 x float> noundef %560)
  store <4 x float> %call438, ptr %vi1x68AC437, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x68AC439) #5
  %561 = load <4 x float>, ptr %vi2xE8AC405, align 16, !tbaa !13
  %562 = load <4 x float>, ptr %vi2x6024, align 16, !tbaa !13
  %call440 = call <4 x float> @_mm_move_ss(<4 x float> noundef %561, <4 x float> noundef %562)
  store <4 x float> %call440, ptr %vi2x68AC439, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x68AC441) #5
  %563 = load <4 x float>, ptr %vi3xE8AC407, align 16, !tbaa !13
  %564 = load <4 x float>, ptr %vi3x6024, align 16, !tbaa !13
  %call442 = call <4 x float> @_mm_move_ss(<4 x float> noundef %563, <4 x float> noundef %564)
  store <4 x float> %call442, ptr %vi3x68AC441, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x68AC443) #5
  %565 = load <4 x float>, ptr %vi4xE8AC409, align 16, !tbaa !13
  %566 = load <4 x float>, ptr %vi4x6024, align 16, !tbaa !13
  %call444 = call <4 x float> @_mm_move_ss(<4 x float> noundef %565, <4 x float> noundef %566)
  store <4 x float> %call444, ptr %vi4x68AC443, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x68AC445) #5
  %567 = load <4 x float>, ptr %vi5xE8AC411, align 16, !tbaa !13
  %568 = load <4 x float>, ptr %vi5x6024, align 16, !tbaa !13
  %call446 = call <4 x float> @_mm_move_ss(<4 x float> noundef %567, <4 x float> noundef %568)
  store <4 x float> %call446, ptr %vi5x68AC445, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x68AC447) #5
  %569 = load <4 x float>, ptr %vi6xE8AC413, align 16, !tbaa !13
  %570 = load <4 x float>, ptr %vi6x6024, align 16, !tbaa !13
  %call448 = call <4 x float> @_mm_move_ss(<4 x float> noundef %569, <4 x float> noundef %570)
  store <4 x float> %call448, ptr %vi6x68AC447, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xF9BD449) #5
  %571 = load <4 x float>, ptr %vi0x9BDF, align 16, !tbaa !13
  %572 = load <4 x float>, ptr %vi0x9BDF, align 16, !tbaa !13
  %shufp450 = shufflevector <4 x float> %571, <4 x float> %572, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp450, ptr %vi0xF9BD449, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xF9BD451) #5
  %573 = load <4 x float>, ptr %vi1x9BDF, align 16, !tbaa !13
  %574 = load <4 x float>, ptr %vi1x9BDF, align 16, !tbaa !13
  %shufp452 = shufflevector <4 x float> %573, <4 x float> %574, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp452, ptr %vi1xF9BD451, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xF9BD453) #5
  %575 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %576 = load <4 x float>, ptr %vi2x9BDF, align 16, !tbaa !13
  %shufp454 = shufflevector <4 x float> %575, <4 x float> %576, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp454, ptr %vi2xF9BD453, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xF9BD455) #5
  %577 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %578 = load <4 x float>, ptr %vi3x9BDF, align 16, !tbaa !13
  %shufp456 = shufflevector <4 x float> %577, <4 x float> %578, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp456, ptr %vi3xF9BD455, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xF9BD457) #5
  %579 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %580 = load <4 x float>, ptr %vi4x9BDF, align 16, !tbaa !13
  %shufp458 = shufflevector <4 x float> %579, <4 x float> %580, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp458, ptr %vi4xF9BD457, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xF9BD459) #5
  %581 = load <4 x float>, ptr %vi5x9BDF, align 16, !tbaa !13
  %582 = load <4 x float>, ptr %vi5x9BDF, align 16, !tbaa !13
  %shufp460 = shufflevector <4 x float> %581, <4 x float> %582, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp460, ptr %vi5xF9BD459, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xF9BD461) #5
  %583 = load <4 x float>, ptr %vi6x9BDF, align 16, !tbaa !13
  %584 = load <4 x float>, ptr %vi6x9BDF, align 16, !tbaa !13
  %shufp462 = shufflevector <4 x float> %583, <4 x float> %584, <4 x i32> <i32 3, i32 0, i32 5, i32 6>
  store <4 x float> %shufp462, ptr %vi6xF9BD461, align 16, !tbaa !13
  %585 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %586 = load <4 x float>, ptr %vi0x68AC435, align 16, !tbaa !13
  %587 = load <4 x float>, ptr %vk00, align 16, !tbaa !13
  %call463 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %586, <4 x float> noundef %587)
  %call464 = call <4 x float> @_mm_add_ps(<4 x float> noundef %585, <4 x float> noundef %call463)
  store <4 x float> %call464, ptr %vo0p0379, align 16, !tbaa !13
  %588 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %589 = load <4 x float>, ptr %vi2x68AC439, align 16, !tbaa !13
  %590 = load <4 x float>, ptr %vk00, align 16, !tbaa !13
  %call465 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %589, <4 x float> noundef %590)
  %call466 = call <4 x float> @_mm_add_ps(<4 x float> noundef %588, <4 x float> noundef %call465)
  store <4 x float> %call466, ptr %vo1p0382, align 16, !tbaa !13
  %591 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %592 = load <4 x float>, ptr %vi1x68AC437, align 16, !tbaa !13
  %593 = load <4 x float>, ptr %vk10, align 16, !tbaa !13
  %call467 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %592, <4 x float> noundef %593)
  %call468 = call <4 x float> @_mm_add_ps(<4 x float> noundef %591, <4 x float> noundef %call467)
  store <4 x float> %call468, ptr %vo0p1385, align 16, !tbaa !13
  %594 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %595 = load <4 x float>, ptr %vi3x68AC441, align 16, !tbaa !13
  %596 = load <4 x float>, ptr %vk10, align 16, !tbaa !13
  %call469 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %595, <4 x float> noundef %596)
  %call470 = call <4 x float> @_mm_add_ps(<4 x float> noundef %594, <4 x float> noundef %call469)
  store <4 x float> %call470, ptr %vo1p1387, align 16, !tbaa !13
  %597 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %598 = load <4 x float>, ptr %vi2x68AC439, align 16, !tbaa !13
  %599 = load <4 x float>, ptr %vk20, align 16, !tbaa !13
  %call471 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %598, <4 x float> noundef %599)
  %call472 = call <4 x float> @_mm_add_ps(<4 x float> noundef %597, <4 x float> noundef %call471)
  store <4 x float> %call472, ptr %vo0p0379, align 16, !tbaa !13
  %600 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %601 = load <4 x float>, ptr %vi4x68AC443, align 16, !tbaa !13
  %602 = load <4 x float>, ptr %vk20, align 16, !tbaa !13
  %call473 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %601, <4 x float> noundef %602)
  %call474 = call <4 x float> @_mm_add_ps(<4 x float> noundef %600, <4 x float> noundef %call473)
  store <4 x float> %call474, ptr %vo1p0382, align 16, !tbaa !13
  %603 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %604 = load <4 x float>, ptr %vi3x68AC441, align 16, !tbaa !13
  %605 = load <4 x float>, ptr %vk30, align 16, !tbaa !13
  %call475 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %604, <4 x float> noundef %605)
  %call476 = call <4 x float> @_mm_add_ps(<4 x float> noundef %603, <4 x float> noundef %call475)
  store <4 x float> %call476, ptr %vo0p1385, align 16, !tbaa !13
  %606 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %607 = load <4 x float>, ptr %vi5x68AC445, align 16, !tbaa !13
  %608 = load <4 x float>, ptr %vk30, align 16, !tbaa !13
  %call477 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %607, <4 x float> noundef %608)
  %call478 = call <4 x float> @_mm_add_ps(<4 x float> noundef %606, <4 x float> noundef %call477)
  store <4 x float> %call478, ptr %vo1p1387, align 16, !tbaa !13
  %609 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %610 = load <4 x float>, ptr %vi4x68AC443, align 16, !tbaa !13
  %611 = load <4 x float>, ptr %vk40, align 16, !tbaa !13
  %call479 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %610, <4 x float> noundef %611)
  %call480 = call <4 x float> @_mm_add_ps(<4 x float> noundef %609, <4 x float> noundef %call479)
  store <4 x float> %call480, ptr %vo0p0379, align 16, !tbaa !13
  %612 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %613 = load <4 x float>, ptr %vi6x68AC447, align 16, !tbaa !13
  %614 = load <4 x float>, ptr %vk40, align 16, !tbaa !13
  %call481 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %613, <4 x float> noundef %614)
  %call482 = call <4 x float> @_mm_add_ps(<4 x float> noundef %612, <4 x float> noundef %call481)
  store <4 x float> %call482, ptr %vo1p0382, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x79BD483) #5
  %615 = load <4 x float>, ptr %vi0xF9BD449, align 16, !tbaa !13
  %616 = load <4 x float>, ptr %vi0x7135, align 16, !tbaa !13
  %call484 = call <4 x float> @_mm_move_ss(<4 x float> noundef %615, <4 x float> noundef %616)
  store <4 x float> %call484, ptr %vi0x79BD483, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x79BD485) #5
  %617 = load <4 x float>, ptr %vi1xF9BD451, align 16, !tbaa !13
  %618 = load <4 x float>, ptr %vi1x7135, align 16, !tbaa !13
  %call486 = call <4 x float> @_mm_move_ss(<4 x float> noundef %617, <4 x float> noundef %618)
  store <4 x float> %call486, ptr %vi1x79BD485, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x79BD487) #5
  %619 = load <4 x float>, ptr %vi2xF9BD453, align 16, !tbaa !13
  %620 = load <4 x float>, ptr %vi2x7135, align 16, !tbaa !13
  %call488 = call <4 x float> @_mm_move_ss(<4 x float> noundef %619, <4 x float> noundef %620)
  store <4 x float> %call488, ptr %vi2x79BD487, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x79BD489) #5
  %621 = load <4 x float>, ptr %vi3xF9BD455, align 16, !tbaa !13
  %622 = load <4 x float>, ptr %vi3x7135, align 16, !tbaa !13
  %call490 = call <4 x float> @_mm_move_ss(<4 x float> noundef %621, <4 x float> noundef %622)
  store <4 x float> %call490, ptr %vi3x79BD489, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x79BD491) #5
  %623 = load <4 x float>, ptr %vi4xF9BD457, align 16, !tbaa !13
  %624 = load <4 x float>, ptr %vi4x7135, align 16, !tbaa !13
  %call492 = call <4 x float> @_mm_move_ss(<4 x float> noundef %623, <4 x float> noundef %624)
  store <4 x float> %call492, ptr %vi4x79BD491, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x79BD493) #5
  %625 = load <4 x float>, ptr %vi5xF9BD459, align 16, !tbaa !13
  %626 = load <4 x float>, ptr %vi5x7135, align 16, !tbaa !13
  %call494 = call <4 x float> @_mm_move_ss(<4 x float> noundef %625, <4 x float> noundef %626)
  store <4 x float> %call494, ptr %vi5x79BD493, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x79BD495) #5
  %627 = load <4 x float>, ptr %vi6xF9BD461, align 16, !tbaa !13
  %628 = load <4 x float>, ptr %vi6x7135, align 16, !tbaa !13
  %call496 = call <4 x float> @_mm_move_ss(<4 x float> noundef %627, <4 x float> noundef %628)
  store <4 x float> %call496, ptr %vi6x79BD495, align 16, !tbaa !13
  %629 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %630 = load <4 x float>, ptr %vi0x79BD483, align 16, !tbaa !13
  %631 = load <4 x float>, ptr %vk01, align 16, !tbaa !13
  %call497 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %630, <4 x float> noundef %631)
  %call498 = call <4 x float> @_mm_add_ps(<4 x float> noundef %629, <4 x float> noundef %call497)
  store <4 x float> %call498, ptr %vo0p1385, align 16, !tbaa !13
  %632 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %633 = load <4 x float>, ptr %vi2x79BD487, align 16, !tbaa !13
  %634 = load <4 x float>, ptr %vk01, align 16, !tbaa !13
  %call499 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %633, <4 x float> noundef %634)
  %call500 = call <4 x float> @_mm_add_ps(<4 x float> noundef %632, <4 x float> noundef %call499)
  store <4 x float> %call500, ptr %vo1p1387, align 16, !tbaa !13
  %635 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %636 = load <4 x float>, ptr %vi1x79BD485, align 16, !tbaa !13
  %637 = load <4 x float>, ptr %vk11, align 16, !tbaa !13
  %call501 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %636, <4 x float> noundef %637)
  %call502 = call <4 x float> @_mm_add_ps(<4 x float> noundef %635, <4 x float> noundef %call501)
  store <4 x float> %call502, ptr %vo0p0379, align 16, !tbaa !13
  %638 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %639 = load <4 x float>, ptr %vi3x79BD489, align 16, !tbaa !13
  %640 = load <4 x float>, ptr %vk11, align 16, !tbaa !13
  %call503 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %639, <4 x float> noundef %640)
  %call504 = call <4 x float> @_mm_add_ps(<4 x float> noundef %638, <4 x float> noundef %call503)
  store <4 x float> %call504, ptr %vo1p0382, align 16, !tbaa !13
  %641 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %642 = load <4 x float>, ptr %vi2x79BD487, align 16, !tbaa !13
  %643 = load <4 x float>, ptr %vk21, align 16, !tbaa !13
  %call505 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %642, <4 x float> noundef %643)
  %call506 = call <4 x float> @_mm_add_ps(<4 x float> noundef %641, <4 x float> noundef %call505)
  store <4 x float> %call506, ptr %vo0p1385, align 16, !tbaa !13
  %644 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %645 = load <4 x float>, ptr %vi4x79BD491, align 16, !tbaa !13
  %646 = load <4 x float>, ptr %vk21, align 16, !tbaa !13
  %call507 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %645, <4 x float> noundef %646)
  %call508 = call <4 x float> @_mm_add_ps(<4 x float> noundef %644, <4 x float> noundef %call507)
  store <4 x float> %call508, ptr %vo1p1387, align 16, !tbaa !13
  %647 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %648 = load <4 x float>, ptr %vi3x79BD489, align 16, !tbaa !13
  %649 = load <4 x float>, ptr %vk31, align 16, !tbaa !13
  %call509 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %648, <4 x float> noundef %649)
  %call510 = call <4 x float> @_mm_add_ps(<4 x float> noundef %647, <4 x float> noundef %call509)
  store <4 x float> %call510, ptr %vo0p0379, align 16, !tbaa !13
  %650 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %651 = load <4 x float>, ptr %vi5x79BD493, align 16, !tbaa !13
  %652 = load <4 x float>, ptr %vk31, align 16, !tbaa !13
  %call511 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %651, <4 x float> noundef %652)
  %call512 = call <4 x float> @_mm_add_ps(<4 x float> noundef %650, <4 x float> noundef %call511)
  store <4 x float> %call512, ptr %vo1p0382, align 16, !tbaa !13
  %653 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %654 = load <4 x float>, ptr %vi4x79BD491, align 16, !tbaa !13
  %655 = load <4 x float>, ptr %vk41, align 16, !tbaa !13
  %call513 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %654, <4 x float> noundef %655)
  %call514 = call <4 x float> @_mm_add_ps(<4 x float> noundef %653, <4 x float> noundef %call513)
  store <4 x float> %call514, ptr %vo0p1385, align 16, !tbaa !13
  %656 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %657 = load <4 x float>, ptr %vi6x79BD495, align 16, !tbaa !13
  %658 = load <4 x float>, ptr %vk41, align 16, !tbaa !13
  %call515 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %657, <4 x float> noundef %658)
  %call516 = call <4 x float> @_mm_add_ps(<4 x float> noundef %656, <4 x float> noundef %call515)
  store <4 x float> %call516, ptr %vo1p1387, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vzero) #5
  %call517 = call <4 x float> @_mm_setzero_ps()
  store <4 x float> %call517, ptr %vzero, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xGACE518) #5
  %659 = load <4 x float>, ptr %vi0x8ACE, align 16, !tbaa !13
  %660 = load <4 x float>, ptr %vzero, align 16, !tbaa !13
  %call519 = call <4 x float> @_mm_move_ss(<4 x float> noundef %659, <4 x float> noundef %660)
  store <4 x float> %call519, ptr %vi0xGACE518, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xGACE520) #5
  %661 = load <4 x float>, ptr %vi1x8ACE, align 16, !tbaa !13
  %662 = load <4 x float>, ptr %vzero, align 16, !tbaa !13
  %call521 = call <4 x float> @_mm_move_ss(<4 x float> noundef %661, <4 x float> noundef %662)
  store <4 x float> %call521, ptr %vi1xGACE520, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xGACE522) #5
  %663 = load <4 x float>, ptr %vi2x8ACE, align 16, !tbaa !13
  %664 = load <4 x float>, ptr %vzero, align 16, !tbaa !13
  %call523 = call <4 x float> @_mm_move_ss(<4 x float> noundef %663, <4 x float> noundef %664)
  store <4 x float> %call523, ptr %vi2xGACE522, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xGACE524) #5
  %665 = load <4 x float>, ptr %vi3x8ACE, align 16, !tbaa !13
  %666 = load <4 x float>, ptr %vzero, align 16, !tbaa !13
  %call525 = call <4 x float> @_mm_move_ss(<4 x float> noundef %665, <4 x float> noundef %666)
  store <4 x float> %call525, ptr %vi3xGACE524, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xGACE526) #5
  %667 = load <4 x float>, ptr %vi4x8ACE, align 16, !tbaa !13
  %668 = load <4 x float>, ptr %vzero, align 16, !tbaa !13
  %call527 = call <4 x float> @_mm_move_ss(<4 x float> noundef %667, <4 x float> noundef %668)
  store <4 x float> %call527, ptr %vi4xGACE526, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xGACE528) #5
  %669 = load <4 x float>, ptr %vi5x8ACE, align 16, !tbaa !13
  %670 = load <4 x float>, ptr %vzero, align 16, !tbaa !13
  %call529 = call <4 x float> @_mm_move_ss(<4 x float> noundef %669, <4 x float> noundef %670)
  store <4 x float> %call529, ptr %vi5xGACE528, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xGACE530) #5
  %671 = load <4 x float>, ptr %vi6x8ACE, align 16, !tbaa !13
  %672 = load <4 x float>, ptr %vzero, align 16, !tbaa !13
  %call531 = call <4 x float> @_mm_move_ss(<4 x float> noundef %671, <4 x float> noundef %672)
  store <4 x float> %call531, ptr %vi6xGACE530, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0xACEG532) #5
  %673 = load <4 x float>, ptr %vi0xGACE518, align 16, !tbaa !13
  %674 = load <4 x float>, ptr %vi0xGACE518, align 16, !tbaa !13
  %shufp533 = shufflevector <4 x float> %673, <4 x float> %674, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp533, ptr %vi0xACEG532, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1xACEG534) #5
  %675 = load <4 x float>, ptr %vi1xGACE520, align 16, !tbaa !13
  %676 = load <4 x float>, ptr %vi1xGACE520, align 16, !tbaa !13
  %shufp535 = shufflevector <4 x float> %675, <4 x float> %676, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp535, ptr %vi1xACEG534, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2xACEG536) #5
  %677 = load <4 x float>, ptr %vi2xGACE522, align 16, !tbaa !13
  %678 = load <4 x float>, ptr %vi2xGACE522, align 16, !tbaa !13
  %shufp537 = shufflevector <4 x float> %677, <4 x float> %678, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp537, ptr %vi2xACEG536, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3xACEG538) #5
  %679 = load <4 x float>, ptr %vi3xGACE524, align 16, !tbaa !13
  %680 = load <4 x float>, ptr %vi3xGACE524, align 16, !tbaa !13
  %shufp539 = shufflevector <4 x float> %679, <4 x float> %680, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp539, ptr %vi3xACEG538, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4xACEG540) #5
  %681 = load <4 x float>, ptr %vi4xGACE526, align 16, !tbaa !13
  %682 = load <4 x float>, ptr %vi4xGACE526, align 16, !tbaa !13
  %shufp541 = shufflevector <4 x float> %681, <4 x float> %682, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp541, ptr %vi4xACEG540, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5xACEG542) #5
  %683 = load <4 x float>, ptr %vi5xGACE528, align 16, !tbaa !13
  %684 = load <4 x float>, ptr %vi5xGACE528, align 16, !tbaa !13
  %shufp543 = shufflevector <4 x float> %683, <4 x float> %684, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp543, ptr %vi5xACEG542, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6xACEG544) #5
  %685 = load <4 x float>, ptr %vi6xGACE530, align 16, !tbaa !13
  %686 = load <4 x float>, ptr %vi6xGACE530, align 16, !tbaa !13
  %shufp545 = shufflevector <4 x float> %685, <4 x float> %686, <4 x i32> <i32 1, i32 2, i32 7, i32 4>
  store <4 x float> %shufp545, ptr %vi6xACEG544, align 16, !tbaa !13
  %687 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %688 = load <4 x float>, ptr %vi0xACEG532, align 16, !tbaa !13
  %689 = load <4 x float>, ptr %vk04, align 16, !tbaa !13
  %call546 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %688, <4 x float> noundef %689)
  %call547 = call <4 x float> @_mm_add_ps(<4 x float> noundef %687, <4 x float> noundef %call546)
  store <4 x float> %call547, ptr %vo0p0379, align 16, !tbaa !13
  %690 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %691 = load <4 x float>, ptr %vi2xACEG536, align 16, !tbaa !13
  %692 = load <4 x float>, ptr %vk04, align 16, !tbaa !13
  %call548 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %691, <4 x float> noundef %692)
  %call549 = call <4 x float> @_mm_add_ps(<4 x float> noundef %690, <4 x float> noundef %call548)
  store <4 x float> %call549, ptr %vo1p0382, align 16, !tbaa !13
  %693 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %694 = load <4 x float>, ptr %vi1xACEG534, align 16, !tbaa !13
  %695 = load <4 x float>, ptr %vk14, align 16, !tbaa !13
  %call550 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %694, <4 x float> noundef %695)
  %call551 = call <4 x float> @_mm_add_ps(<4 x float> noundef %693, <4 x float> noundef %call550)
  store <4 x float> %call551, ptr %vo0p1385, align 16, !tbaa !13
  %696 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %697 = load <4 x float>, ptr %vi3xACEG538, align 16, !tbaa !13
  %698 = load <4 x float>, ptr %vk14, align 16, !tbaa !13
  %call552 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %697, <4 x float> noundef %698)
  %call553 = call <4 x float> @_mm_add_ps(<4 x float> noundef %696, <4 x float> noundef %call552)
  store <4 x float> %call553, ptr %vo1p1387, align 16, !tbaa !13
  %699 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %700 = load <4 x float>, ptr %vi2xACEG536, align 16, !tbaa !13
  %701 = load <4 x float>, ptr %vk24, align 16, !tbaa !13
  %call554 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %700, <4 x float> noundef %701)
  %call555 = call <4 x float> @_mm_add_ps(<4 x float> noundef %699, <4 x float> noundef %call554)
  store <4 x float> %call555, ptr %vo0p0379, align 16, !tbaa !13
  %702 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %703 = load <4 x float>, ptr %vi4xACEG540, align 16, !tbaa !13
  %704 = load <4 x float>, ptr %vk24, align 16, !tbaa !13
  %call556 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %703, <4 x float> noundef %704)
  %call557 = call <4 x float> @_mm_add_ps(<4 x float> noundef %702, <4 x float> noundef %call556)
  store <4 x float> %call557, ptr %vo1p0382, align 16, !tbaa !13
  %705 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %706 = load <4 x float>, ptr %vi3xACEG538, align 16, !tbaa !13
  %707 = load <4 x float>, ptr %vk34, align 16, !tbaa !13
  %call558 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %706, <4 x float> noundef %707)
  %call559 = call <4 x float> @_mm_add_ps(<4 x float> noundef %705, <4 x float> noundef %call558)
  store <4 x float> %call559, ptr %vo0p1385, align 16, !tbaa !13
  %708 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %709 = load <4 x float>, ptr %vi5xACEG542, align 16, !tbaa !13
  %710 = load <4 x float>, ptr %vk34, align 16, !tbaa !13
  %call560 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %709, <4 x float> noundef %710)
  %call561 = call <4 x float> @_mm_add_ps(<4 x float> noundef %708, <4 x float> noundef %call560)
  store <4 x float> %call561, ptr %vo1p1387, align 16, !tbaa !13
  %711 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %712 = load <4 x float>, ptr %vi4xACEG540, align 16, !tbaa !13
  %713 = load <4 x float>, ptr %vk44, align 16, !tbaa !13
  %call562 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %712, <4 x float> noundef %713)
  %call563 = call <4 x float> @_mm_add_ps(<4 x float> noundef %711, <4 x float> noundef %call562)
  store <4 x float> %call563, ptr %vo0p0379, align 16, !tbaa !13
  %714 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %715 = load <4 x float>, ptr %vi6xACEG544, align 16, !tbaa !13
  %716 = load <4 x float>, ptr %vk44, align 16, !tbaa !13
  %call564 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %715, <4 x float> noundef %716)
  %call565 = call <4 x float> @_mm_add_ps(<4 x float> noundef %714, <4 x float> noundef %call564)
  store <4 x float> %call565, ptr %vo1p0382, align 16, !tbaa !13
  %717 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %718 = load <4 x float>, ptr %vo0p1385, align 16, !tbaa !13
  %call566 = call <4 x float> @_mm_add_ps(<4 x float> noundef %717, <4 x float> noundef %718)
  store <4 x float> %call566, ptr %vo0p0379, align 16, !tbaa !13
  %719 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %720 = load <4 x float>, ptr %vo1p1387, align 16, !tbaa !13
  %call567 = call <4 x float> @_mm_add_ps(<4 x float> noundef %719, <4 x float> noundef %720)
  store <4 x float> %call567, ptr %vo1p0382, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo0568) #5
  %721 = load <4 x float>, ptr %vo0p0379, align 16, !tbaa !13
  %722 = load <4 x float>, ptr %vmin, align 16, !tbaa !13
  %call569 = call <4 x float> @_mm_max_ps(<4 x float> noundef %721, <4 x float> noundef %722)
  store <4 x float> %call569, ptr %vo0568, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vo1570) #5
  %723 = load <4 x float>, ptr %vo1p0382, align 16, !tbaa !13
  %724 = load <4 x float>, ptr %vmin, align 16, !tbaa !13
  %call571 = call <4 x float> @_mm_max_ps(<4 x float> noundef %723, <4 x float> noundef %724)
  store <4 x float> %call571, ptr %vo1570, align 16, !tbaa !13
  %725 = load <4 x float>, ptr %vo0568, align 16, !tbaa !13
  %726 = load <4 x float>, ptr %vmax, align 16, !tbaa !13
  %call572 = call <4 x float> @_mm_min_ps(<4 x float> noundef %725, <4 x float> noundef %726)
  store <4 x float> %call572, ptr %vo0568, align 16, !tbaa !13
  %727 = load <4 x float>, ptr %vo1570, align 16, !tbaa !13
  %728 = load <4 x float>, ptr %vmax, align 16, !tbaa !13
  %call573 = call <4 x float> @_mm_min_ps(<4 x float> noundef %727, <4 x float> noundef %728)
  store <4 x float> %call573, ptr %vo1570, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %w_tmp) #5
  %729 = load i64, ptr %w, align 8, !tbaa !5
  %add574 = add i64 %729, 4
  %div575 = udiv i64 %add574, 8
  store i64 %div575, ptr %w_tmp, align 8, !tbaa !5
  %730 = load i64, ptr %w_tmp, align 8, !tbaa !5
  %cmp576 = icmp uge i64 %730, 4
  %lnot578 = xor i1 %cmp576, true
  %lnot580 = xor i1 %lnot578, true
  %lnot.ext581 = zext i1 %lnot580 to i32
  %conv582 = sext i32 %lnot.ext581 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv582, i64 1)
  %tobool583 = icmp ne i64 %expval, 0
  br i1 %tobool583, label %if.then584, label %if.else

if.then584:                                       ; preds = %for.end
  %731 = load ptr, ptr %o1, align 8, !tbaa !9
  %732 = load <4 x float>, ptr %vo1570, align 16, !tbaa !13
  call void @_mm_storeu_ps(ptr noundef %731, <4 x float> noundef %732)
  %733 = load ptr, ptr %o1, align 8, !tbaa !9
  %add.ptr585 = getelementptr inbounds float, ptr %733, i64 4
  store ptr %add.ptr585, ptr %o1, align 8, !tbaa !9
  %734 = load ptr, ptr %o0, align 8, !tbaa !9
  %735 = load <4 x float>, ptr %vo0568, align 16, !tbaa !13
  call void @_mm_storeu_ps(ptr noundef %734, <4 x float> noundef %735)
  %736 = load ptr, ptr %o0, align 8, !tbaa !9
  %add.ptr586 = getelementptr inbounds float, ptr %736, i64 4
  store ptr %add.ptr586, ptr %o0, align 8, !tbaa !9
  br label %if.end601

if.else:                                          ; preds = %for.end
  %737 = load i64, ptr %w_tmp, align 8, !tbaa !5
  %and587 = and i64 %737, 2
  %tobool588 = icmp ne i64 %and587, 0
  br i1 %tobool588, label %if.then589, label %if.end594

if.then589:                                       ; preds = %if.else
  %738 = load ptr, ptr %o1, align 8, !tbaa !9
  %739 = load <4 x float>, ptr %vo1570, align 16, !tbaa !13
  call void @_mm_storel_pi(ptr noundef %738, <4 x float> noundef %739)
  %740 = load ptr, ptr %o1, align 8, !tbaa !9
  %add.ptr590 = getelementptr inbounds float, ptr %740, i64 2
  store ptr %add.ptr590, ptr %o1, align 8, !tbaa !9
  %741 = load ptr, ptr %o0, align 8, !tbaa !9
  %742 = load <4 x float>, ptr %vo0568, align 16, !tbaa !13
  call void @_mm_storel_pi(ptr noundef %741, <4 x float> noundef %742)
  %743 = load ptr, ptr %o0, align 8, !tbaa !9
  %add.ptr591 = getelementptr inbounds float, ptr %743, i64 2
  store ptr %add.ptr591, ptr %o0, align 8, !tbaa !9
  %744 = load <4 x float>, ptr %vo0568, align 16, !tbaa !13
  %745 = load <4 x float>, ptr %vo0568, align 16, !tbaa !13
  %call592 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %744, <4 x float> noundef %745)
  store <4 x float> %call592, ptr %vo0568, align 16, !tbaa !13
  %746 = load <4 x float>, ptr %vo1570, align 16, !tbaa !13
  %747 = load <4 x float>, ptr %vo1570, align 16, !tbaa !13
  %call593 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %746, <4 x float> noundef %747)
  store <4 x float> %call593, ptr %vo1570, align 16, !tbaa !13
  br label %if.end594

if.end594:                                        ; preds = %if.then589, %if.else
  %748 = load i64, ptr %w_tmp, align 8, !tbaa !5
  %and595 = and i64 %748, 1
  %tobool596 = icmp ne i64 %and595, 0
  br i1 %tobool596, label %if.then597, label %if.end600

if.then597:                                       ; preds = %if.end594
  %749 = load ptr, ptr %o1, align 8, !tbaa !9
  %750 = load <4 x float>, ptr %vo1570, align 16, !tbaa !13
  call void @_mm_store_ss(ptr noundef %749, <4 x float> noundef %750)
  %751 = load ptr, ptr %o1, align 8, !tbaa !9
  %add.ptr598 = getelementptr inbounds float, ptr %751, i64 1
  store ptr %add.ptr598, ptr %o1, align 8, !tbaa !9
  %752 = load ptr, ptr %o0, align 8, !tbaa !9
  %753 = load <4 x float>, ptr %vo0568, align 16, !tbaa !13
  call void @_mm_store_ss(ptr noundef %752, <4 x float> noundef %753)
  %754 = load ptr, ptr %o0, align 8, !tbaa !9
  %add.ptr599 = getelementptr inbounds float, ptr %754, i64 1
  store ptr %add.ptr599, ptr %o0, align 8, !tbaa !9
  br label %if.end600

if.end600:                                        ; preds = %if.then597, %if.end594
  br label %if.end601

if.end601:                                        ; preds = %if.end600, %if.then584
  call void @llvm.lifetime.end.p0(i64 8, ptr %w_tmp) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo1570) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo0568) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xACEG544) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xACEG542) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xACEG540) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xACEG538) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xACEG536) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xACEG534) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xACEG532) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xGACE530) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xGACE528) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xGACE526) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xGACE524) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xGACE522) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xGACE520) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xGACE518) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vzero) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x79BD495) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x79BD493) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x79BD491) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x79BD489) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x79BD487) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x79BD485) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x79BD483) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xF9BD461) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xF9BD459) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xF9BD457) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xF9BD455) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xF9BD453) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xF9BD451) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xF9BD449) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x68AC447) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x68AC445) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x68AC443) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x68AC441) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x68AC439) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x68AC437) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x68AC435) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xE8AC413) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xE8AC411) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xE8AC409) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xE8AC407) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xE8AC405) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xE8AC403) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xE8AC401) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo1p1387) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo0p1385) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo1p0382) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vo0p0379) #5
  %755 = load ptr, ptr %i4, align 8, !tbaa !9
  %756 = ptrtoint ptr %755 to i64
  %757 = load i64, ptr %input_decrement, align 8, !tbaa !5
  %sub602 = sub i64 %756, %757
  %758 = inttoptr i64 %sub602 to ptr
  store ptr %758, ptr %i0, align 8, !tbaa !9
  %759 = load ptr, ptr %i5, align 8, !tbaa !9
  %760 = ptrtoint ptr %759 to i64
  %761 = load i64, ptr %input_decrement, align 8, !tbaa !5
  %sub603 = sub i64 %760, %761
  %762 = inttoptr i64 %sub603 to ptr
  store ptr %762, ptr %i1, align 8, !tbaa !9
  %763 = load ptr, ptr %i6, align 8, !tbaa !9
  %764 = ptrtoint ptr %763 to i64
  %765 = load i64, ptr %input_decrement, align 8, !tbaa !5
  %sub604 = sub i64 %764, %765
  %766 = inttoptr i64 %sub604 to ptr
  store ptr %766, ptr %i2, align 8, !tbaa !9
  %767 = load ptr, ptr %i2, align 8, !tbaa !9
  %768 = ptrtoint ptr %767 to i64
  %769 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add605 = add i64 %768, %769
  %770 = inttoptr i64 %add605 to ptr
  store ptr %770, ptr %i3, align 8, !tbaa !9
  %771 = load ptr, ptr %i3, align 8, !tbaa !9
  %772 = ptrtoint ptr %771 to i64
  %773 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add606 = add i64 %772, %773
  %774 = inttoptr i64 %add606 to ptr
  store ptr %774, ptr %i4, align 8, !tbaa !9
  %775 = load ptr, ptr %i4, align 8, !tbaa !9
  %776 = ptrtoint ptr %775 to i64
  %777 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add607 = add i64 %776, %777
  %778 = inttoptr i64 %add607 to ptr
  store ptr %778, ptr %i5, align 8, !tbaa !9
  %779 = load ptr, ptr %i5, align 8, !tbaa !9
  %780 = ptrtoint ptr %779 to i64
  %781 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add608 = add i64 %780, %781
  %782 = inttoptr i64 %add608 to ptr
  store ptr %782, ptr %i6, align 8, !tbaa !9
  %783 = load ptr, ptr %o1, align 8, !tbaa !9
  store ptr %783, ptr %o0, align 8, !tbaa !9
  %784 = load ptr, ptr %o0, align 8, !tbaa !9
  %785 = ptrtoint ptr %784 to i64
  %786 = load i64, ptr %output_width, align 8, !tbaa !5
  %add609 = add i64 %785, %786
  %787 = inttoptr i64 %add609 to ptr
  store ptr %787, ptr %o1, align 8, !tbaa !9
  %788 = load i64, ptr %output_height, align 8, !tbaa !5
  %call610 = call i64 @doz(i64 noundef %788, i64 noundef 2)
  store i64 %call610, ptr %output_height, align 8, !tbaa !5
  %789 = load i64, ptr %padded_input_height, align 8, !tbaa !5
  %call611 = call i64 @doz(i64 noundef %789, i64 noundef 4)
  store i64 %call611, ptr %padded_input_height, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x9BDF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x8ACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x9BDF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x8ACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x9BDF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x8ACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x9BDF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x8ACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x9BDF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x8ACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x9BDF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x8ACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x9BDF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x8ACE) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6xCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5xCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4xCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3xCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2xCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1xCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0xCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x7135) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x7135) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x7135) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x7135) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x7135) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x7135) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x7135) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x6024) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x6024) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x6024) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x6024) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x6024) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x6024) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x6024) #5
  br label %do.cond

do.cond:                                          ; preds = %if.end601
  %790 = load i64, ptr %output_height, align 8, !tbaa !5
  %cmp612 = icmp ne i64 %790, 0
  br i1 %cmp612, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_height) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %padded_input_height) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %o1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %o0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_width) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_decrement) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %padding_top_less_1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk44) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk43) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk42) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk41) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk40) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk34) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk33) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk32) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk31) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk30) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk24) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk23) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk22) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk21) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk20) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk14) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk13) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk12) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk10) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk04) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk03) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk02) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk01) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk00) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmin) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmax) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmask_odd) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmask_even) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !13
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load1_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__u = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__u) #5
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u1 = getelementptr inbounds %struct.__mm_load1_ps_struct, ptr %0, i32 0, i32 0
  %1 = load float, ptr %__u1, align 1, !tbaa !13
  store float %1, ptr %__u, align 4, !tbaa !18
  %2 = load float, ptr %__u, align 4, !tbaa !18
  %vecinit = insertelement <4 x float> undef, float %2, i32 0
  %3 = load float, ptr %__u, align 4, !tbaa !18
  %vecinit2 = insertelement <4 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %__u, align 4, !tbaa !18
  %vecinit3 = insertelement <4 x float> %vecinit2, float %4, i32 2
  %5 = load float, ptr %__u, align 4, !tbaa !18
  %vecinit4 = insertelement <4 x float> %vecinit3, float %5, i32 3
  store <4 x float> %vecinit4, ptr %.compoundliteral, align 16, !tbaa !13
  %6 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__u) #5
  ret <4 x float> %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_up_po2(i64 noundef %n, i64 noundef %q) #3 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  %2 = load i64, ptr %q.addr, align 8, !tbaa !5
  %call = call i64 @round_down_po2(i64 noundef %sub, i64 noundef %2)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #3 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <4 x float>, align 16
  store <4 x float> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !13
  ret <4 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <4 x float>, ptr %__v, align 1, !tbaa !13
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_move_ss(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load <4 x float>, ptr %__a.addr, align 16
  %vecins = insertelement <4 x float> %1, float %vecext, i32 0
  store <4 x float> %vecins, ptr %__a.addr, align 16
  %2 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_max_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %2 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %2 = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_and_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !13
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @doz(i64 noundef %a, i64 noundef %b) #3 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !5
  store i64 %b, ptr %b.addr, align 8, !tbaa !5
  %0 = load i64, ptr %b.addr, align 8, !tbaa !5
  %1 = load i64, ptr %a.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !14

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !5
  %3 = load i64, ptr %b.addr, align 8, !tbaa !5
  %sub = sub i64 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !7, i64 0}

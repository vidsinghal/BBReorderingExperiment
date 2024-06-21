; ModuleID = 'samples/124.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmopenjpeg/src/lib/openjp2/pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_image = type { i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.opj_cp = type { i16, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, %union.anon, i8 }
%union.anon = type { %struct.opj_encoding_param }
%struct.opj_encoding_param = type { i32, i32, ptr, i8, i8 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i32, ptr, ptr, ptr, i32, i32, [100 x float], ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_pi_iterator = type { i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.opj_poc, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_pi_comp = type { i32, i32, i32, ptr }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i16 }
%struct.opj_pi_resolution = type { i32, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid access to pi->include\00", align 1

; Function Attrs: nounwind uwtable
define ptr @gdcmopenjp2opj_pi_create_decode(ptr noundef %p_image, ptr noundef %p_cp, i32 noundef %p_tile_no) #0 {
entry:
  %retval = alloca ptr, align 8
  %p_image.addr = alloca ptr, align 8
  %p_cp.addr = alloca ptr, align 8
  %p_tile_no.addr = alloca i32, align 4
  %numcomps = alloca i32, align 4
  %pino = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %l_tmp_data = alloca ptr, align 8
  %l_tmp_ptr = alloca ptr, align 8
  %l_max_res = alloca i32, align 4
  %l_max_prec = alloca i32, align 4
  %l_tx0 = alloca i32, align 4
  %l_tx1 = alloca i32, align 4
  %l_ty0 = alloca i32, align 4
  %l_ty1 = alloca i32, align 4
  %l_dx_min = alloca i32, align 4
  %l_dy_min = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_step_p = alloca i32, align 4
  %l_step_c = alloca i32, align 4
  %l_step_r = alloca i32, align 4
  %l_step_l = alloca i32, align 4
  %l_data_stride = alloca i32, align 4
  %l_pi = alloca ptr, align 8
  %l_tcp = alloca ptr, align 8
  %l_tccp = alloca ptr, align 8
  %l_current_comp = alloca ptr, align 8
  %l_img_comp = alloca ptr, align 8
  %l_current_pi = alloca ptr, align 8
  %l_encoding_value_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %l_res = alloca ptr, align 8
  %l_res81 = alloca ptr, align 8
  store ptr %p_image, ptr %p_image.addr, align 8, !tbaa !4
  store ptr %p_cp, ptr %p_cp.addr, align 8, !tbaa !4
  store i32 %p_tile_no, ptr %p_tile_no.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %numcomps) #4
  %0 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %numcomps1 = getelementptr inbounds %struct.opj_image, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %numcomps1, align 8, !tbaa !10
  store i32 %1, ptr %numcomps, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tmp_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tmp_ptr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_max_res) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_max_prec) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ty0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ty1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dx_min) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dy_min) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_r) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_data_stride) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_pi) #4
  store ptr null, ptr %l_pi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tcp) #4
  store ptr null, ptr %l_tcp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tccp) #4
  store ptr null, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_comp) #4
  store ptr null, ptr %l_current_comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_img_comp) #4
  store ptr null, ptr %l_img_comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_pi) #4
  store ptr null, ptr %l_current_pi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_encoding_value_ptr) #4
  store ptr null, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %2 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %tcps, align 8, !tbaa !12
  %4 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %l_tcp, align 8, !tbaa !4
  %5 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numpocs = getelementptr inbounds %struct.opj_tcp, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %numpocs, align 4, !tbaa !15
  %add = add i32 %6, 1
  store i32 %add, ptr %l_bound, align 4, !tbaa !8
  store i32 132, ptr %l_data_stride, align 4, !tbaa !8
  %7 = load i32, ptr %l_data_stride, align 4, !tbaa !8
  %8 = load i32, ptr %numcomps, align 4, !tbaa !8
  %mul = mul i32 %7, %8
  %conv = zext i32 %mul to i64
  %mul2 = mul i64 %conv, 4
  %call = call ptr @gdcmopenjp2opj_malloc(i64 noundef %mul2)
  store ptr %call, ptr %l_tmp_data, align 8, !tbaa !4
  %9 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %numcomps, align 4, !tbaa !8
  %conv3 = zext i32 %10 to i64
  %mul4 = mul i64 %conv3, 8
  %call5 = call ptr @gdcmopenjp2opj_malloc(i64 noundef %mul4)
  store ptr %call5, ptr %l_tmp_ptr, align 8, !tbaa !4
  %11 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %12 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %12)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %15 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %call9 = call ptr @opj_pi_create(ptr noundef %13, ptr noundef %14, i32 noundef %15)
  store ptr %call9, ptr %l_pi, align 8, !tbaa !4
  %16 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %16, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  %17 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %17)
  %18 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %18)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %19 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  store ptr %19, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %20 = load i32, ptr %compno, align 4, !tbaa !8
  %21 = load i32, ptr %numcomps, align 4, !tbaa !8
  %cmp = icmp ult i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %23 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %24 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom14 = zext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %23, i64 %idxprom14
  store ptr %22, ptr %arrayidx15, align 8, !tbaa !4
  %25 = load i32, ptr %l_data_stride, align 4, !tbaa !8
  %26 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i32, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %compno, align 4, !tbaa !8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %compno, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %30 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @opj_get_all_encoding_parameters(ptr noundef %28, ptr noundef %29, i32 noundef %30, ptr noundef %l_tx0, ptr noundef %l_tx1, ptr noundef %l_ty0, ptr noundef %l_ty1, ptr noundef %l_dx_min, ptr noundef %l_dy_min, ptr noundef %l_max_prec, ptr noundef %l_max_res, ptr noundef %31)
  store i32 1, ptr %l_step_p, align 4, !tbaa !8
  %32 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %33 = load i32, ptr %l_step_p, align 4, !tbaa !8
  %mul16 = mul i32 %32, %33
  store i32 %mul16, ptr %l_step_c, align 4, !tbaa !8
  %34 = load i32, ptr %numcomps, align 4, !tbaa !8
  %35 = load i32, ptr %l_step_c, align 4, !tbaa !8
  %mul17 = mul i32 %34, %35
  store i32 %mul17, ptr %l_step_r, align 4, !tbaa !8
  %36 = load i32, ptr %l_max_res, align 4, !tbaa !8
  %37 = load i32, ptr %l_step_r, align 4, !tbaa !8
  %mul18 = mul i32 %36, %37
  store i32 %mul18, ptr %l_step_l, align 4, !tbaa !8
  %38 = load ptr, ptr %l_pi, align 8, !tbaa !4
  store ptr %38, ptr %l_current_pi, align 8, !tbaa !4
  %39 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %39, i32 0, i32 1
  store ptr null, ptr %include, align 8, !tbaa !19
  %40 = load i32, ptr %l_step_l, align 4, !tbaa !8
  %41 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numlayers = getelementptr inbounds %struct.opj_tcp, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %numlayers, align 8, !tbaa !22
  %add19 = add i32 %42, 1
  %div = udiv i32 -1, %add19
  %cmp20 = icmp ule i32 %40, %div
  br i1 %cmp20, label %if.then22, label %if.end30

if.then22:                                        ; preds = %for.end
  %43 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numlayers23 = getelementptr inbounds %struct.opj_tcp, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %numlayers23, align 8, !tbaa !22
  %add24 = add i32 %44, 1
  %45 = load i32, ptr %l_step_l, align 4, !tbaa !8
  %mul25 = mul i32 %add24, %45
  %46 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include_size = getelementptr inbounds %struct.opj_pi_iterator, ptr %46, i32 0, i32 2
  store i32 %mul25, ptr %include_size, align 8, !tbaa !23
  %47 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include_size26 = getelementptr inbounds %struct.opj_pi_iterator, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %include_size26, align 8, !tbaa !23
  %conv27 = zext i32 %48 to i64
  %call28 = call ptr @gdcmopenjp2opj_calloc(i64 noundef %conv27, i64 noundef 2)
  %49 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include29 = getelementptr inbounds %struct.opj_pi_iterator, ptr %49, i32 0, i32 1
  store ptr %call28, ptr %include29, align 8, !tbaa !19
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %for.end
  %50 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include31 = getelementptr inbounds %struct.opj_pi_iterator, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %include31, align 8, !tbaa !19
  %tobool32 = icmp ne ptr %51, null
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  %52 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %52)
  %53 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %53)
  %54 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %55 = load i32, ptr %l_bound, align 4, !tbaa !8
  call void @gdcmopenjp2opj_pi_destroy(ptr noundef %54, i32 noundef %55)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %56 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %56, i32 0, i32 14
  %57 = load ptr, ptr %comps, align 8, !tbaa !24
  store ptr %57, ptr %l_current_comp, align 8, !tbaa !4
  %58 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %comps35 = getelementptr inbounds %struct.opj_image, ptr %58, i32 0, i32 6
  %59 = load ptr, ptr %comps35, align 8, !tbaa !25
  store ptr %59, ptr %l_img_comp, align 8, !tbaa !4
  %60 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %tccps = getelementptr inbounds %struct.opj_tcp, ptr %60, i32 0, i32 15
  %61 = load ptr, ptr %tccps, align 8, !tbaa !26
  store ptr %61, ptr %l_tccp, align 8, !tbaa !4
  %62 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %63 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %63, i32 0, i32 15
  store i32 %62, ptr %tx0, align 8, !tbaa !27
  %64 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %65 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %65, i32 0, i32 16
  store i32 %64, ptr %ty0, align 4, !tbaa !28
  %66 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %67 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %67, i32 0, i32 17
  store i32 %66, ptr %tx1, align 8, !tbaa !29
  %68 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %69 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %69, i32 0, i32 18
  store i32 %68, ptr %ty1, align 4, !tbaa !30
  %70 = load i32, ptr %l_step_p, align 4, !tbaa !8
  %71 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, ptr %71, i32 0, i32 6
  store i32 %70, ptr %step_p, align 8, !tbaa !31
  %72 = load i32, ptr %l_step_c, align 4, !tbaa !8
  %73 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, ptr %73, i32 0, i32 5
  store i32 %72, ptr %step_c, align 4, !tbaa !32
  %74 = load i32, ptr %l_step_r, align 4, !tbaa !8
  %75 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, ptr %75, i32 0, i32 4
  store i32 %74, ptr %step_r, align 8, !tbaa !33
  %76 = load i32, ptr %l_step_l, align 4, !tbaa !8
  %77 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, ptr %77, i32 0, i32 3
  store i32 %76, ptr %step_l, align 4, !tbaa !34
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc58, %if.end34
  %78 = load i32, ptr %compno, align 4, !tbaa !8
  %79 = load i32, ptr %numcomps, align 4, !tbaa !8
  %cmp37 = icmp ult i32 %78, %79
  br i1 %cmp37, label %for.body39, label %for.end60

for.body39:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_res) #4
  %80 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %80, i32 0, i32 3
  %81 = load ptr, ptr %resolutions, align 8, !tbaa !35
  store ptr %81, ptr %l_res, align 8, !tbaa !4
  %82 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %83 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom40 = zext i32 %83 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %82, i64 %idxprom40
  %84 = load ptr, ptr %arrayidx41, align 8, !tbaa !4
  store ptr %84, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %85 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_image_comp, ptr %85, i32 0, i32 0
  %86 = load i32, ptr %dx, align 8, !tbaa !37
  %87 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dx42 = getelementptr inbounds %struct.opj_pi_comp, ptr %87, i32 0, i32 0
  store i32 %86, ptr %dx42, align 8, !tbaa !39
  %88 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_image_comp, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %dy, align 4, !tbaa !40
  %90 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dy43 = getelementptr inbounds %struct.opj_pi_comp, ptr %90, i32 0, i32 1
  store i32 %89, ptr %dy43, align 4, !tbaa !41
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc52, %for.body39
  %91 = load i32, ptr %resno, align 4, !tbaa !8
  %92 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %92, i32 0, i32 2
  %93 = load i32, ptr %numresolutions, align 8, !tbaa !42
  %cmp45 = icmp ult i32 %91, %93
  br i1 %cmp45, label %for.body47, label %for.end54

for.body47:                                       ; preds = %for.cond44
  %94 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %94, i32 1
  store ptr %incdec.ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %95 = load i32, ptr %94, align 4, !tbaa !8
  %96 = load ptr, ptr %l_res, align 8, !tbaa !4
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, ptr %96, i32 0, i32 0
  store i32 %95, ptr %pdx, align 4, !tbaa !43
  %97 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr48 = getelementptr inbounds i32, ptr %97, i32 1
  store ptr %incdec.ptr48, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %98 = load i32, ptr %97, align 4, !tbaa !8
  %99 = load ptr, ptr %l_res, align 8, !tbaa !4
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, ptr %99, i32 0, i32 1
  store i32 %98, ptr %pdy, align 4, !tbaa !45
  %100 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr49 = getelementptr inbounds i32, ptr %100, i32 1
  store ptr %incdec.ptr49, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %101 = load i32, ptr %100, align 4, !tbaa !8
  %102 = load ptr, ptr %l_res, align 8, !tbaa !4
  %pw = getelementptr inbounds %struct.opj_pi_resolution, ptr %102, i32 0, i32 2
  store i32 %101, ptr %pw, align 4, !tbaa !46
  %103 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr50 = getelementptr inbounds i32, ptr %103, i32 1
  store ptr %incdec.ptr50, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %104 = load i32, ptr %103, align 4, !tbaa !8
  %105 = load ptr, ptr %l_res, align 8, !tbaa !4
  %ph = getelementptr inbounds %struct.opj_pi_resolution, ptr %105, i32 0, i32 3
  store i32 %104, ptr %ph, align 4, !tbaa !47
  %106 = load ptr, ptr %l_res, align 8, !tbaa !4
  %incdec.ptr51 = getelementptr inbounds %struct.opj_pi_resolution, ptr %106, i32 1
  store ptr %incdec.ptr51, ptr %l_res, align 8, !tbaa !4
  br label %for.inc52

for.inc52:                                        ; preds = %for.body47
  %107 = load i32, ptr %resno, align 4, !tbaa !8
  %inc53 = add i32 %107, 1
  store i32 %inc53, ptr %resno, align 4, !tbaa !8
  br label %for.cond44, !llvm.loop !48

for.end54:                                        ; preds = %for.cond44
  %108 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %incdec.ptr55 = getelementptr inbounds %struct.opj_pi_comp, ptr %108, i32 1
  store ptr %incdec.ptr55, ptr %l_current_comp, align 8, !tbaa !4
  %109 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %incdec.ptr56 = getelementptr inbounds %struct.opj_image_comp, ptr %109, i32 1
  store ptr %incdec.ptr56, ptr %l_img_comp, align 8, !tbaa !4
  %110 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %incdec.ptr57 = getelementptr inbounds %struct.opj_tccp, ptr %110, i32 1
  store ptr %incdec.ptr57, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_res) #4
  br label %for.inc58

for.inc58:                                        ; preds = %for.end54
  %111 = load i32, ptr %compno, align 4, !tbaa !8
  %inc59 = add i32 %111, 1
  store i32 %inc59, ptr %compno, align 4, !tbaa !8
  br label %for.cond36, !llvm.loop !49

for.end60:                                        ; preds = %for.cond36
  %112 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr61 = getelementptr inbounds %struct.opj_pi_iterator, ptr %112, i32 1
  store ptr %incdec.ptr61, ptr %l_current_pi, align 8, !tbaa !4
  store i32 1, ptr %pino, align 4, !tbaa !8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc119, %for.end60
  %113 = load i32, ptr %pino, align 4, !tbaa !8
  %114 = load i32, ptr %l_bound, align 4, !tbaa !8
  %cmp63 = icmp ult i32 %113, %114
  br i1 %cmp63, label %for.body65, label %for.end121

for.body65:                                       ; preds = %for.cond62
  %115 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps66 = getelementptr inbounds %struct.opj_pi_iterator, ptr %115, i32 0, i32 14
  %116 = load ptr, ptr %comps66, align 8, !tbaa !24
  store ptr %116, ptr %l_current_comp, align 8, !tbaa !4
  %117 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %comps67 = getelementptr inbounds %struct.opj_image, ptr %117, i32 0, i32 6
  %118 = load ptr, ptr %comps67, align 8, !tbaa !25
  store ptr %118, ptr %l_img_comp, align 8, !tbaa !4
  %119 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %tccps68 = getelementptr inbounds %struct.opj_tcp, ptr %119, i32 0, i32 15
  %120 = load ptr, ptr %tccps68, align 8, !tbaa !26
  store ptr %120, ptr %l_tccp, align 8, !tbaa !4
  %121 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %122 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx069 = getelementptr inbounds %struct.opj_pi_iterator, ptr %122, i32 0, i32 15
  store i32 %121, ptr %tx069, align 8, !tbaa !27
  %123 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %124 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty070 = getelementptr inbounds %struct.opj_pi_iterator, ptr %124, i32 0, i32 16
  store i32 %123, ptr %ty070, align 4, !tbaa !28
  %125 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %126 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx171 = getelementptr inbounds %struct.opj_pi_iterator, ptr %126, i32 0, i32 17
  store i32 %125, ptr %tx171, align 8, !tbaa !29
  %127 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %128 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty172 = getelementptr inbounds %struct.opj_pi_iterator, ptr %128, i32 0, i32 18
  store i32 %127, ptr %ty172, align 4, !tbaa !30
  %129 = load i32, ptr %l_step_p, align 4, !tbaa !8
  %130 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_p73 = getelementptr inbounds %struct.opj_pi_iterator, ptr %130, i32 0, i32 6
  store i32 %129, ptr %step_p73, align 8, !tbaa !31
  %131 = load i32, ptr %l_step_c, align 4, !tbaa !8
  %132 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_c74 = getelementptr inbounds %struct.opj_pi_iterator, ptr %132, i32 0, i32 5
  store i32 %131, ptr %step_c74, align 4, !tbaa !32
  %133 = load i32, ptr %l_step_r, align 4, !tbaa !8
  %134 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_r75 = getelementptr inbounds %struct.opj_pi_iterator, ptr %134, i32 0, i32 4
  store i32 %133, ptr %step_r75, align 8, !tbaa !33
  %135 = load i32, ptr %l_step_l, align 4, !tbaa !8
  %136 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_l76 = getelementptr inbounds %struct.opj_pi_iterator, ptr %136, i32 0, i32 3
  store i32 %135, ptr %step_l76, align 4, !tbaa !34
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc109, %for.body65
  %137 = load i32, ptr %compno, align 4, !tbaa !8
  %138 = load i32, ptr %numcomps, align 4, !tbaa !8
  %cmp78 = icmp ult i32 %137, %138
  br i1 %cmp78, label %for.body80, label %for.end111

for.body80:                                       ; preds = %for.cond77
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_res81) #4
  %139 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %resolutions82 = getelementptr inbounds %struct.opj_pi_comp, ptr %139, i32 0, i32 3
  %140 = load ptr, ptr %resolutions82, align 8, !tbaa !35
  store ptr %140, ptr %l_res81, align 8, !tbaa !4
  %141 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %142 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom83 = zext i32 %142 to i64
  %arrayidx84 = getelementptr inbounds ptr, ptr %141, i64 %idxprom83
  %143 = load ptr, ptr %arrayidx84, align 8, !tbaa !4
  store ptr %143, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %144 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx85 = getelementptr inbounds %struct.opj_image_comp, ptr %144, i32 0, i32 0
  %145 = load i32, ptr %dx85, align 8, !tbaa !37
  %146 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dx86 = getelementptr inbounds %struct.opj_pi_comp, ptr %146, i32 0, i32 0
  store i32 %145, ptr %dx86, align 8, !tbaa !39
  %147 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy87 = getelementptr inbounds %struct.opj_image_comp, ptr %147, i32 0, i32 1
  %148 = load i32, ptr %dy87, align 4, !tbaa !40
  %149 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dy88 = getelementptr inbounds %struct.opj_pi_comp, ptr %149, i32 0, i32 1
  store i32 %148, ptr %dy88, align 4, !tbaa !41
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc103, %for.body80
  %150 = load i32, ptr %resno, align 4, !tbaa !8
  %151 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %numresolutions90 = getelementptr inbounds %struct.opj_pi_comp, ptr %151, i32 0, i32 2
  %152 = load i32, ptr %numresolutions90, align 8, !tbaa !42
  %cmp91 = icmp ult i32 %150, %152
  br i1 %cmp91, label %for.body93, label %for.end105

for.body93:                                       ; preds = %for.cond89
  %153 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr94 = getelementptr inbounds i32, ptr %153, i32 1
  store ptr %incdec.ptr94, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %154 = load i32, ptr %153, align 4, !tbaa !8
  %155 = load ptr, ptr %l_res81, align 8, !tbaa !4
  %pdx95 = getelementptr inbounds %struct.opj_pi_resolution, ptr %155, i32 0, i32 0
  store i32 %154, ptr %pdx95, align 4, !tbaa !43
  %156 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr96 = getelementptr inbounds i32, ptr %156, i32 1
  store ptr %incdec.ptr96, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %157 = load i32, ptr %156, align 4, !tbaa !8
  %158 = load ptr, ptr %l_res81, align 8, !tbaa !4
  %pdy97 = getelementptr inbounds %struct.opj_pi_resolution, ptr %158, i32 0, i32 1
  store i32 %157, ptr %pdy97, align 4, !tbaa !45
  %159 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr98 = getelementptr inbounds i32, ptr %159, i32 1
  store ptr %incdec.ptr98, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %160 = load i32, ptr %159, align 4, !tbaa !8
  %161 = load ptr, ptr %l_res81, align 8, !tbaa !4
  %pw99 = getelementptr inbounds %struct.opj_pi_resolution, ptr %161, i32 0, i32 2
  store i32 %160, ptr %pw99, align 4, !tbaa !46
  %162 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr100 = getelementptr inbounds i32, ptr %162, i32 1
  store ptr %incdec.ptr100, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %163 = load i32, ptr %162, align 4, !tbaa !8
  %164 = load ptr, ptr %l_res81, align 8, !tbaa !4
  %ph101 = getelementptr inbounds %struct.opj_pi_resolution, ptr %164, i32 0, i32 3
  store i32 %163, ptr %ph101, align 4, !tbaa !47
  %165 = load ptr, ptr %l_res81, align 8, !tbaa !4
  %incdec.ptr102 = getelementptr inbounds %struct.opj_pi_resolution, ptr %165, i32 1
  store ptr %incdec.ptr102, ptr %l_res81, align 8, !tbaa !4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body93
  %166 = load i32, ptr %resno, align 4, !tbaa !8
  %inc104 = add i32 %166, 1
  store i32 %inc104, ptr %resno, align 4, !tbaa !8
  br label %for.cond89, !llvm.loop !50

for.end105:                                       ; preds = %for.cond89
  %167 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %incdec.ptr106 = getelementptr inbounds %struct.opj_pi_comp, ptr %167, i32 1
  store ptr %incdec.ptr106, ptr %l_current_comp, align 8, !tbaa !4
  %168 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %incdec.ptr107 = getelementptr inbounds %struct.opj_image_comp, ptr %168, i32 1
  store ptr %incdec.ptr107, ptr %l_img_comp, align 8, !tbaa !4
  %169 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %incdec.ptr108 = getelementptr inbounds %struct.opj_tccp, ptr %169, i32 1
  store ptr %incdec.ptr108, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_res81) #4
  br label %for.inc109

for.inc109:                                       ; preds = %for.end105
  %170 = load i32, ptr %compno, align 4, !tbaa !8
  %inc110 = add i32 %170, 1
  store i32 %inc110, ptr %compno, align 4, !tbaa !8
  br label %for.cond77, !llvm.loop !51

for.end111:                                       ; preds = %for.cond77
  %171 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %add.ptr112 = getelementptr inbounds %struct.opj_pi_iterator, ptr %171, i64 -1
  %include113 = getelementptr inbounds %struct.opj_pi_iterator, ptr %add.ptr112, i32 0, i32 1
  %172 = load ptr, ptr %include113, align 8, !tbaa !19
  %173 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include114 = getelementptr inbounds %struct.opj_pi_iterator, ptr %173, i32 0, i32 1
  store ptr %172, ptr %include114, align 8, !tbaa !19
  %174 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %add.ptr115 = getelementptr inbounds %struct.opj_pi_iterator, ptr %174, i64 -1
  %include_size116 = getelementptr inbounds %struct.opj_pi_iterator, ptr %add.ptr115, i32 0, i32 2
  %175 = load i32, ptr %include_size116, align 8, !tbaa !23
  %176 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include_size117 = getelementptr inbounds %struct.opj_pi_iterator, ptr %176, i32 0, i32 2
  store i32 %175, ptr %include_size117, align 8, !tbaa !23
  %177 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr118 = getelementptr inbounds %struct.opj_pi_iterator, ptr %177, i32 1
  store ptr %incdec.ptr118, ptr %l_current_pi, align 8, !tbaa !4
  br label %for.inc119

for.inc119:                                       ; preds = %for.end111
  %178 = load i32, ptr %pino, align 4, !tbaa !8
  %inc120 = add i32 %178, 1
  store i32 %inc120, ptr %pino, align 4, !tbaa !8
  br label %for.cond62, !llvm.loop !52

for.end121:                                       ; preds = %for.cond62
  %179 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %179)
  store ptr null, ptr %l_tmp_data, align 8, !tbaa !4
  %180 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %180)
  store ptr null, ptr %l_tmp_ptr, align 8, !tbaa !4
  %181 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %POC = getelementptr inbounds %struct.opj_tcp, ptr %181, i32 0, i32 29
  %bf.load = load i8, ptr %POC, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool122 = icmp ne i32 %bf.cast, 0
  br i1 %tobool122, label %if.then123, label %if.else

if.then123:                                       ; preds = %for.end121
  %182 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %183 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %184 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %185 = load i32, ptr %l_max_res, align 4, !tbaa !8
  call void @opj_pi_update_decode_poc(ptr noundef %182, ptr noundef %183, i32 noundef %184, i32 noundef %185)
  br label %if.end124

if.else:                                          ; preds = %for.end121
  %186 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %187 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %188 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %189 = load i32, ptr %l_max_res, align 4, !tbaa !8
  call void @opj_pi_update_decode_not_poc(ptr noundef %186, ptr noundef %187, i32 noundef %188, i32 noundef %189)
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.then123
  %190 = load ptr, ptr %l_pi, align 8, !tbaa !4
  store ptr %190, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.then33, %if.then11, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_encoding_value_ptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_pi) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_img_comp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_comp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tccp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tcp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_pi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_data_stride) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dy_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dx_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ty1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ty0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_max_prec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_max_res) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tmp_ptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tmp_data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %numcomps) #4
  %191 = load ptr, ptr %retval, align 8
  ret ptr %191
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gdcmopenjp2opj_malloc(i64 noundef) #2

declare void @gdcmopenjp2opj_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @opj_pi_create(ptr noundef %image, ptr noundef %cp, i32 noundef %tileno) #0 {
entry:
  %retval = alloca ptr, align 8
  %image.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %tileno.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %compno = alloca i32, align 4
  %l_poc_bound = alloca i32, align 4
  %l_pi = alloca ptr, align 8
  %tcp = alloca ptr, align 8
  %tccp = alloca ptr, align 8
  %l_current_pi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %comp = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store ptr %cp, ptr %cp.addr, align 8, !tbaa !4
  store i32 %tileno, ptr %tileno.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_poc_bound) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_pi) #4
  store ptr null, ptr %l_pi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp) #4
  store ptr null, ptr %tcp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tccp) #4
  store ptr null, ptr %tccp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_pi) #4
  store ptr null, ptr %l_current_pi, align 8, !tbaa !4
  %0 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %tcps, align 8, !tbaa !12
  %2 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %tcp, align 8, !tbaa !4
  %3 = load ptr, ptr %tcp, align 8, !tbaa !4
  %numpocs = getelementptr inbounds %struct.opj_tcp, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %numpocs, align 4, !tbaa !15
  %add = add i32 %4, 1
  store i32 %add, ptr %l_poc_bound, align 4, !tbaa !8
  %5 = load i32, ptr %l_poc_bound, align 4, !tbaa !8
  %conv = zext i32 %5 to i64
  %call = call ptr @gdcmopenjp2opj_calloc(i64 noundef %conv, i64 noundef 248)
  store ptr %call, ptr %l_pi, align 8, !tbaa !4
  %6 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %l_pi, align 8, !tbaa !4
  store ptr %7, ptr %l_current_pi, align 8, !tbaa !4
  store i32 0, ptr %pino, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.end
  %8 = load i32, ptr %pino, align 4, !tbaa !8
  %9 = load i32, ptr %l_poc_bound, align 4, !tbaa !8
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_image, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %numcomps, align 8, !tbaa !10
  %conv2 = zext i32 %11 to i64
  %call3 = call ptr @gdcmopenjp2opj_calloc(i64 noundef %conv2, i64 noundef 24)
  %12 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %12, i32 0, i32 14
  store ptr %call3, ptr %comps, align 8, !tbaa !24
  %13 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps4 = getelementptr inbounds %struct.opj_pi_iterator, ptr %13, i32 0, i32 14
  %14 = load ptr, ptr %comps4, align 8, !tbaa !24
  %tobool5 = icmp ne ptr %14, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.body
  %15 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %16 = load i32, ptr %l_poc_bound, align 4, !tbaa !8
  call void @gdcmopenjp2opj_pi_destroy(ptr noundef %15, i32 noundef %16)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

if.end7:                                          ; preds = %for.body
  %17 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %numcomps8 = getelementptr inbounds %struct.opj_image, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %numcomps8, align 8, !tbaa !10
  %19 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %numcomps9 = getelementptr inbounds %struct.opj_pi_iterator, ptr %19, i32 0, i32 13
  store i32 %18, ptr %numcomps9, align 4, !tbaa !53
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.end7
  %20 = load i32, ptr %compno, align 4, !tbaa !8
  %21 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %numcomps11 = getelementptr inbounds %struct.opj_image, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %numcomps11, align 8, !tbaa !10
  %cmp12 = icmp ult i32 %20, %22
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #4
  %23 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps15 = getelementptr inbounds %struct.opj_pi_iterator, ptr %23, i32 0, i32 14
  %24 = load ptr, ptr %comps15, align 8, !tbaa !24
  %25 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom16 = zext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds %struct.opj_pi_comp, ptr %24, i64 %idxprom16
  store ptr %arrayidx17, ptr %comp, align 8, !tbaa !4
  %26 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tccps = getelementptr inbounds %struct.opj_tcp, ptr %26, i32 0, i32 15
  %27 = load ptr, ptr %tccps, align 8, !tbaa !26
  %28 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom18 = zext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds %struct.opj_tccp, ptr %27, i64 %idxprom18
  store ptr %arrayidx19, ptr %tccp, align 8, !tbaa !4
  %29 = load ptr, ptr %tccp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_tccp, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %numresolutions, align 4, !tbaa !54
  %conv20 = zext i32 %30 to i64
  %call21 = call ptr @gdcmopenjp2opj_calloc(i64 noundef %conv20, i64 noundef 16)
  %31 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %31, i32 0, i32 3
  store ptr %call21, ptr %resolutions, align 8, !tbaa !35
  %32 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions22 = getelementptr inbounds %struct.opj_pi_comp, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %resolutions22, align 8, !tbaa !35
  %tobool23 = icmp ne ptr %33, null
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %for.body14
  %34 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %35 = load i32, ptr %l_poc_bound, align 4, !tbaa !8
  call void @gdcmopenjp2opj_pi_destroy(ptr noundef %34, i32 noundef %35)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.body14
  %36 = load ptr, ptr %tccp, align 8, !tbaa !4
  %numresolutions26 = getelementptr inbounds %struct.opj_tccp, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %numresolutions26, align 4, !tbaa !54
  %38 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions27 = getelementptr inbounds %struct.opj_pi_comp, ptr %38, i32 0, i32 2
  store i32 %37, ptr %numresolutions27, align 8, !tbaa !42
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %39 = load i32, ptr %compno, align 4, !tbaa !8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %compno, align 4, !tbaa !8
  br label %for.cond10, !llvm.loop !56

for.end:                                          ; preds = %for.cond10
  %40 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %l_current_pi, align 8, !tbaa !4
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %41 = load i32, ptr %pino, align 4, !tbaa !8
  %inc29 = add i32 %41, 1
  store i32 %inc29, ptr %pino, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !57

for.end30:                                        ; preds = %for.cond
  %42 = load ptr, ptr %l_pi, align 8, !tbaa !4
  store ptr %42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %for.end30, %cleanup, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_pi) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tccp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_pi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_poc_bound) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
}

; Function Attrs: nounwind uwtable
define internal void @opj_get_all_encoding_parameters(ptr noundef %p_image, ptr noundef %p_cp, i32 noundef %tileno, ptr noundef %p_tx0, ptr noundef %p_tx1, ptr noundef %p_ty0, ptr noundef %p_ty1, ptr noundef %p_dx_min, ptr noundef %p_dy_min, ptr noundef %p_max_prec, ptr noundef %p_max_res, ptr noundef %p_resolutions) #0 {
entry:
  %p_image.addr = alloca ptr, align 8
  %p_cp.addr = alloca ptr, align 8
  %tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca ptr, align 8
  %p_tx1.addr = alloca ptr, align 8
  %p_ty0.addr = alloca ptr, align 8
  %p_ty1.addr = alloca ptr, align 8
  %p_dx_min.addr = alloca ptr, align 8
  %p_dy_min.addr = alloca ptr, align 8
  %p_max_prec.addr = alloca ptr, align 8
  %p_max_res.addr = alloca ptr, align 8
  %p_resolutions.addr = alloca ptr, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %tcp = alloca ptr, align 8
  %l_tccp = alloca ptr, align 8
  %l_img_comp = alloca ptr, align 8
  %lResolutionPtr = alloca ptr, align 8
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %l_tx0 = alloca i32, align 4
  %l_ty0 = alloca i32, align 4
  %l_level_no = alloca i32, align 4
  %l_rx0 = alloca i32, align 4
  %l_ry0 = alloca i32, align 4
  %l_rx1 = alloca i32, align 4
  %l_ry1 = alloca i32, align 4
  %l_px0 = alloca i32, align 4
  %l_py0 = alloca i32, align 4
  %l_px1 = alloca i32, align 4
  %py1 = alloca i32, align 4
  %l_product = alloca i32, align 4
  %l_tcx0 = alloca i32, align 4
  %l_tcy0 = alloca i32, align 4
  %l_tcx1 = alloca i32, align 4
  %l_tcy1 = alloca i32, align 4
  %l_pdx = alloca i32, align 4
  %l_pdy = alloca i32, align 4
  %l_pw = alloca i32, align 4
  %l_ph = alloca i32, align 4
  %l_dx = alloca i32, align 4
  %l_dy = alloca i32, align 4
  store ptr %p_image, ptr %p_image.addr, align 8, !tbaa !4
  store ptr %p_cp, ptr %p_cp.addr, align 8, !tbaa !4
  store i32 %tileno, ptr %tileno.addr, align 4, !tbaa !8
  store ptr %p_tx0, ptr %p_tx0.addr, align 8, !tbaa !4
  store ptr %p_tx1, ptr %p_tx1.addr, align 8, !tbaa !4
  store ptr %p_ty0, ptr %p_ty0.addr, align 8, !tbaa !4
  store ptr %p_ty1, ptr %p_ty1.addr, align 8, !tbaa !4
  store ptr %p_dx_min, ptr %p_dx_min.addr, align 8, !tbaa !4
  store ptr %p_dy_min, ptr %p_dy_min.addr, align 8, !tbaa !4
  store ptr %p_max_prec, ptr %p_max_prec.addr, align 8, !tbaa !4
  store ptr %p_max_res, ptr %p_max_res.addr, align 8, !tbaa !4
  store ptr %p_resolutions, ptr %p_resolutions.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp) #4
  store ptr null, ptr %tcp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tccp) #4
  store ptr null, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_img_comp) #4
  store ptr null, ptr %l_img_comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lResolutionPtr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ty0) #4
  %0 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %tcps, align 8, !tbaa !12
  %2 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %tcp, align 8, !tbaa !4
  %3 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tccps = getelementptr inbounds %struct.opj_tcp, ptr %3, i32 0, i32 15
  %4 = load ptr, ptr %tccps, align 8, !tbaa !26
  store ptr %4, ptr %l_tccp, align 8, !tbaa !4
  %5 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_image, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %comps, align 8, !tbaa !25
  store ptr %6, ptr %l_img_comp, align 8, !tbaa !4
  %7 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %8 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tw = getelementptr inbounds %struct.opj_cp, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %tw, align 8, !tbaa !58
  %rem = urem i32 %7, %9
  store i32 %rem, ptr %p, align 4, !tbaa !8
  %10 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tw1 = getelementptr inbounds %struct.opj_cp, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %tw1, align 8, !tbaa !58
  %div = udiv i32 %10, %12
  store i32 %div, ptr %q, align 4, !tbaa !8
  %13 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tx0 = getelementptr inbounds %struct.opj_cp, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %tx0, align 4, !tbaa !59
  %15 = load i32, ptr %p, align 4, !tbaa !8
  %16 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdx = getelementptr inbounds %struct.opj_cp, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %tdx, align 4, !tbaa !60
  %mul = mul i32 %15, %17
  %add = add i32 %14, %mul
  store i32 %add, ptr %l_tx0, align 4, !tbaa !8
  %18 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %19 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %x0 = getelementptr inbounds %struct.opj_image, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %x0, align 8, !tbaa !61
  %call = call i32 @opj_uint_max(i32 noundef %18, i32 noundef %20)
  %21 = load ptr, ptr %p_tx0.addr, align 8, !tbaa !4
  store i32 %call, ptr %21, align 4, !tbaa !8
  %22 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %23 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdx2 = getelementptr inbounds %struct.opj_cp, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %tdx2, align 4, !tbaa !60
  %call3 = call i32 @opj_uint_adds(i32 noundef %22, i32 noundef %24)
  %25 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %x1 = getelementptr inbounds %struct.opj_image, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %x1, align 8, !tbaa !62
  %call4 = call i32 @opj_uint_min(i32 noundef %call3, i32 noundef %26)
  %27 = load ptr, ptr %p_tx1.addr, align 8, !tbaa !4
  store i32 %call4, ptr %27, align 4, !tbaa !8
  %28 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %ty0 = getelementptr inbounds %struct.opj_cp, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %ty0, align 8, !tbaa !63
  %30 = load i32, ptr %q, align 4, !tbaa !8
  %31 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdy = getelementptr inbounds %struct.opj_cp, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %tdy, align 8, !tbaa !64
  %mul5 = mul i32 %30, %32
  %add6 = add i32 %29, %mul5
  store i32 %add6, ptr %l_ty0, align 4, !tbaa !8
  %33 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %34 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %y0 = getelementptr inbounds %struct.opj_image, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %y0, align 4, !tbaa !65
  %call7 = call i32 @opj_uint_max(i32 noundef %33, i32 noundef %35)
  %36 = load ptr, ptr %p_ty0.addr, align 8, !tbaa !4
  store i32 %call7, ptr %36, align 4, !tbaa !8
  %37 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %38 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdy8 = getelementptr inbounds %struct.opj_cp, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %tdy8, align 8, !tbaa !64
  %call9 = call i32 @opj_uint_adds(i32 noundef %37, i32 noundef %39)
  %40 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %y1 = getelementptr inbounds %struct.opj_image, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %y1, align 4, !tbaa !66
  %call10 = call i32 @opj_uint_min(i32 noundef %call9, i32 noundef %41)
  %42 = load ptr, ptr %p_ty1.addr, align 8, !tbaa !4
  store i32 %call10, ptr %42, align 4, !tbaa !8
  %43 = load ptr, ptr %p_max_prec.addr, align 8, !tbaa !4
  store i32 0, ptr %43, align 4, !tbaa !8
  %44 = load ptr, ptr %p_max_res.addr, align 8, !tbaa !4
  store i32 0, ptr %44, align 4, !tbaa !8
  %45 = load ptr, ptr %p_dx_min.addr, align 8, !tbaa !4
  store i32 2147483647, ptr %45, align 4, !tbaa !8
  %46 = load ptr, ptr %p_dy_min.addr, align 8, !tbaa !4
  store i32 2147483647, ptr %46, align 4, !tbaa !8
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc87, %entry
  %47 = load i32, ptr %compno, align 4, !tbaa !8
  %48 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_image, ptr %48, i32 0, i32 4
  %49 = load i32, ptr %numcomps, align 8, !tbaa !10
  %cmp = icmp ult i32 %47, %49
  br i1 %cmp, label %for.body, label %for.end89

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_level_no) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_rx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ry0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_rx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ry1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_px0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_py0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_px1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %py1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_product) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcy0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcy1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_pdx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_pdy) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_pw) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ph) #4
  %50 = load ptr, ptr %p_resolutions.addr, align 8, !tbaa !4
  %51 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom11 = zext i32 %51 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %50, i64 %idxprom11
  %52 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  store ptr %52, ptr %lResolutionPtr, align 8, !tbaa !4
  %53 = load ptr, ptr %p_tx0.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %55 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_image_comp, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %dx, align 8, !tbaa !37
  %call13 = call i32 @opj_int_ceildiv(i32 noundef %54, i32 noundef %56)
  store i32 %call13, ptr %l_tcx0, align 4, !tbaa !8
  %57 = load ptr, ptr %p_ty0.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  %59 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_image_comp, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %dy, align 4, !tbaa !40
  %call14 = call i32 @opj_int_ceildiv(i32 noundef %58, i32 noundef %60)
  store i32 %call14, ptr %l_tcy0, align 4, !tbaa !8
  %61 = load ptr, ptr %p_tx1.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %63 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx15 = getelementptr inbounds %struct.opj_image_comp, ptr %63, i32 0, i32 0
  %64 = load i32, ptr %dx15, align 8, !tbaa !37
  %call16 = call i32 @opj_int_ceildiv(i32 noundef %62, i32 noundef %64)
  store i32 %call16, ptr %l_tcx1, align 4, !tbaa !8
  %65 = load ptr, ptr %p_ty1.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %67 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy17 = getelementptr inbounds %struct.opj_image_comp, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %dy17, align 4, !tbaa !40
  %call18 = call i32 @opj_int_ceildiv(i32 noundef %66, i32 noundef %68)
  store i32 %call18, ptr %l_tcy1, align 4, !tbaa !8
  %69 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_tccp, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %numresolutions, align 4, !tbaa !54
  %71 = load ptr, ptr %p_max_res.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  %cmp19 = icmp ugt i32 %70, %72
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %73 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions20 = getelementptr inbounds %struct.opj_tccp, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %numresolutions20, align 4, !tbaa !54
  %75 = load ptr, ptr %p_max_res.addr, align 8, !tbaa !4
  store i32 %74, ptr %75, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %76 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions21 = getelementptr inbounds %struct.opj_tccp, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %numresolutions21, align 4, !tbaa !54
  store i32 %77, ptr %l_level_no, align 4, !tbaa !8
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %if.end
  %78 = load i32, ptr %resno, align 4, !tbaa !8
  %79 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions23 = getelementptr inbounds %struct.opj_tccp, ptr %79, i32 0, i32 1
  %80 = load i32, ptr %numresolutions23, align 4, !tbaa !54
  %cmp24 = icmp ult i32 %78, %80
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond22
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dy) #4
  %81 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %dec = add i32 %81, -1
  store i32 %dec, ptr %l_level_no, align 4, !tbaa !8
  %82 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %prcw = getelementptr inbounds %struct.opj_tccp, ptr %82, i32 0, i32 10
  %83 = load i32, ptr %resno, align 4, !tbaa !8
  %idxprom26 = zext i32 %83 to i64
  %arrayidx27 = getelementptr inbounds [33 x i32], ptr %prcw, i64 0, i64 %idxprom26
  %84 = load i32, ptr %arrayidx27, align 4, !tbaa !8
  store i32 %84, ptr %l_pdx, align 4, !tbaa !8
  %85 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %prch = getelementptr inbounds %struct.opj_tccp, ptr %85, i32 0, i32 11
  %86 = load i32, ptr %resno, align 4, !tbaa !8
  %idxprom28 = zext i32 %86 to i64
  %arrayidx29 = getelementptr inbounds [33 x i32], ptr %prch, i64 0, i64 %idxprom28
  %87 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  store i32 %87, ptr %l_pdy, align 4, !tbaa !8
  %88 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %89 = load ptr, ptr %lResolutionPtr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %89, i32 1
  store ptr %incdec.ptr, ptr %lResolutionPtr, align 8, !tbaa !4
  store i32 %88, ptr %89, align 4, !tbaa !8
  %90 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %91 = load ptr, ptr %lResolutionPtr, align 8, !tbaa !4
  %incdec.ptr30 = getelementptr inbounds i32, ptr %91, i32 1
  store ptr %incdec.ptr30, ptr %lResolutionPtr, align 8, !tbaa !4
  store i32 %90, ptr %91, align 4, !tbaa !8
  %92 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %93 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %add31 = add i32 %92, %93
  %cmp32 = icmp ult i32 %add31, 32
  br i1 %cmp32, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %for.body25
  %94 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx33 = getelementptr inbounds %struct.opj_image_comp, ptr %94, i32 0, i32 0
  %95 = load i32, ptr %dx33, align 8, !tbaa !37
  %96 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %97 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %add34 = add i32 %96, %97
  %shl = shl i32 1, %add34
  %div35 = udiv i32 -1, %shl
  %cmp36 = icmp ule i32 %95, %div35
  br i1 %cmp36, label %if.then37, label %if.end43

if.then37:                                        ; preds = %land.lhs.true
  %98 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx38 = getelementptr inbounds %struct.opj_image_comp, ptr %98, i32 0, i32 0
  %99 = load i32, ptr %dx38, align 8, !tbaa !37
  %100 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %101 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %add39 = add i32 %100, %101
  %shl40 = shl i32 1, %add39
  %mul41 = mul i32 %99, %shl40
  store i32 %mul41, ptr %l_dx, align 4, !tbaa !8
  %102 = load ptr, ptr %p_dx_min.addr, align 8, !tbaa !4
  %103 = load i32, ptr %102, align 4, !tbaa !8
  %104 = load i32, ptr %l_dx, align 4, !tbaa !8
  %call42 = call i32 @opj_int_min(i32 noundef %103, i32 noundef %104)
  %105 = load ptr, ptr %p_dx_min.addr, align 8, !tbaa !4
  store i32 %call42, ptr %105, align 4, !tbaa !8
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %land.lhs.true, %for.body25
  %106 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %107 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %add44 = add i32 %106, %107
  %cmp45 = icmp ult i32 %add44, 32
  br i1 %cmp45, label %land.lhs.true46, label %if.end58

land.lhs.true46:                                  ; preds = %if.end43
  %108 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy47 = getelementptr inbounds %struct.opj_image_comp, ptr %108, i32 0, i32 1
  %109 = load i32, ptr %dy47, align 4, !tbaa !40
  %110 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %111 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %add48 = add i32 %110, %111
  %shl49 = shl i32 1, %add48
  %div50 = udiv i32 -1, %shl49
  %cmp51 = icmp ule i32 %109, %div50
  br i1 %cmp51, label %if.then52, label %if.end58

if.then52:                                        ; preds = %land.lhs.true46
  %112 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy53 = getelementptr inbounds %struct.opj_image_comp, ptr %112, i32 0, i32 1
  %113 = load i32, ptr %dy53, align 4, !tbaa !40
  %114 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %115 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %add54 = add i32 %114, %115
  %shl55 = shl i32 1, %add54
  %mul56 = mul i32 %113, %shl55
  store i32 %mul56, ptr %l_dy, align 4, !tbaa !8
  %116 = load ptr, ptr %p_dy_min.addr, align 8, !tbaa !4
  %117 = load i32, ptr %116, align 4, !tbaa !8
  %118 = load i32, ptr %l_dy, align 4, !tbaa !8
  %call57 = call i32 @opj_int_min(i32 noundef %117, i32 noundef %118)
  %119 = load ptr, ptr %p_dy_min.addr, align 8, !tbaa !4
  store i32 %call57, ptr %119, align 4, !tbaa !8
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %land.lhs.true46, %if.end43
  %120 = load i32, ptr %l_tcx0, align 4, !tbaa !8
  %121 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call59 = call i32 @opj_int_ceildivpow2(i32 noundef %120, i32 noundef %121)
  store i32 %call59, ptr %l_rx0, align 4, !tbaa !8
  %122 = load i32, ptr %l_tcy0, align 4, !tbaa !8
  %123 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call60 = call i32 @opj_int_ceildivpow2(i32 noundef %122, i32 noundef %123)
  store i32 %call60, ptr %l_ry0, align 4, !tbaa !8
  %124 = load i32, ptr %l_tcx1, align 4, !tbaa !8
  %125 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call61 = call i32 @opj_int_ceildivpow2(i32 noundef %124, i32 noundef %125)
  store i32 %call61, ptr %l_rx1, align 4, !tbaa !8
  %126 = load i32, ptr %l_tcy1, align 4, !tbaa !8
  %127 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call62 = call i32 @opj_int_ceildivpow2(i32 noundef %126, i32 noundef %127)
  store i32 %call62, ptr %l_ry1, align 4, !tbaa !8
  %128 = load i32, ptr %l_rx0, align 4, !tbaa !8
  %129 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %call63 = call i32 @opj_int_floordivpow2(i32 noundef %128, i32 noundef %129)
  %130 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %shl64 = shl i32 %call63, %130
  store i32 %shl64, ptr %l_px0, align 4, !tbaa !8
  %131 = load i32, ptr %l_ry0, align 4, !tbaa !8
  %132 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %call65 = call i32 @opj_int_floordivpow2(i32 noundef %131, i32 noundef %132)
  %133 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %shl66 = shl i32 %call65, %133
  store i32 %shl66, ptr %l_py0, align 4, !tbaa !8
  %134 = load i32, ptr %l_rx1, align 4, !tbaa !8
  %135 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %call67 = call i32 @opj_int_ceildivpow2(i32 noundef %134, i32 noundef %135)
  %136 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %shl68 = shl i32 %call67, %136
  store i32 %shl68, ptr %l_px1, align 4, !tbaa !8
  %137 = load i32, ptr %l_ry1, align 4, !tbaa !8
  %138 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %call69 = call i32 @opj_int_ceildivpow2(i32 noundef %137, i32 noundef %138)
  %139 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %shl70 = shl i32 %call69, %139
  store i32 %shl70, ptr %py1, align 4, !tbaa !8
  %140 = load i32, ptr %l_rx0, align 4, !tbaa !8
  %141 = load i32, ptr %l_rx1, align 4, !tbaa !8
  %cmp71 = icmp eq i32 %140, %141
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end58
  br label %cond.end

cond.false:                                       ; preds = %if.end58
  %142 = load i32, ptr %l_px1, align 4, !tbaa !8
  %143 = load i32, ptr %l_px0, align 4, !tbaa !8
  %sub = sub nsw i32 %142, %143
  %144 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %shr = ashr i32 %sub, %144
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shr, %cond.false ]
  store i32 %cond, ptr %l_pw, align 4, !tbaa !8
  %145 = load i32, ptr %l_ry0, align 4, !tbaa !8
  %146 = load i32, ptr %l_ry1, align 4, !tbaa !8
  %cmp72 = icmp eq i32 %145, %146
  br i1 %cmp72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %cond.end
  br label %cond.end77

cond.false74:                                     ; preds = %cond.end
  %147 = load i32, ptr %py1, align 4, !tbaa !8
  %148 = load i32, ptr %l_py0, align 4, !tbaa !8
  %sub75 = sub nsw i32 %147, %148
  %149 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %shr76 = ashr i32 %sub75, %149
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false74, %cond.true73
  %cond78 = phi i32 [ 0, %cond.true73 ], [ %shr76, %cond.false74 ]
  store i32 %cond78, ptr %l_ph, align 4, !tbaa !8
  %150 = load i32, ptr %l_pw, align 4, !tbaa !8
  %151 = load ptr, ptr %lResolutionPtr, align 8, !tbaa !4
  %incdec.ptr79 = getelementptr inbounds i32, ptr %151, i32 1
  store ptr %incdec.ptr79, ptr %lResolutionPtr, align 8, !tbaa !4
  store i32 %150, ptr %151, align 4, !tbaa !8
  %152 = load i32, ptr %l_ph, align 4, !tbaa !8
  %153 = load ptr, ptr %lResolutionPtr, align 8, !tbaa !4
  %incdec.ptr80 = getelementptr inbounds i32, ptr %153, i32 1
  store ptr %incdec.ptr80, ptr %lResolutionPtr, align 8, !tbaa !4
  store i32 %152, ptr %153, align 4, !tbaa !8
  %154 = load i32, ptr %l_pw, align 4, !tbaa !8
  %155 = load i32, ptr %l_ph, align 4, !tbaa !8
  %mul81 = mul i32 %154, %155
  store i32 %mul81, ptr %l_product, align 4, !tbaa !8
  %156 = load i32, ptr %l_product, align 4, !tbaa !8
  %157 = load ptr, ptr %p_max_prec.addr, align 8, !tbaa !4
  %158 = load i32, ptr %157, align 4, !tbaa !8
  %cmp82 = icmp ugt i32 %156, %158
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %cond.end77
  %159 = load i32, ptr %l_product, align 4, !tbaa !8
  %160 = load ptr, ptr %p_max_prec.addr, align 8, !tbaa !4
  store i32 %159, ptr %160, align 4, !tbaa !8
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %cond.end77
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dx) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end84
  %161 = load i32, ptr %resno, align 4, !tbaa !8
  %inc = add i32 %161, 1
  store i32 %inc, ptr %resno, align 4, !tbaa !8
  br label %for.cond22, !llvm.loop !67

for.end:                                          ; preds = %for.cond22
  %162 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %incdec.ptr85 = getelementptr inbounds %struct.opj_tccp, ptr %162, i32 1
  store ptr %incdec.ptr85, ptr %l_tccp, align 8, !tbaa !4
  %163 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %incdec.ptr86 = getelementptr inbounds %struct.opj_image_comp, ptr %163, i32 1
  store ptr %incdec.ptr86, ptr %l_img_comp, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ph) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_pw) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_pdy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_pdx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcy1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcy0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_product) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %py1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_px1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_py0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_px0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ry1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_rx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ry0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_rx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_level_no) #4
  br label %for.inc87

for.inc87:                                        ; preds = %for.end
  %164 = load i32, ptr %compno, align 4, !tbaa !8
  %inc88 = add i32 %164, 1
  store i32 %inc88, ptr %compno, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !68

for.end89:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ty0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lResolutionPtr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_img_comp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tccp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno) #4
  ret void
}

declare ptr @gdcmopenjp2opj_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define void @gdcmopenjp2opj_pi_destroy(ptr noundef %p_pi, i32 noundef %p_nb_elements) #0 {
entry:
  %p_pi.addr = alloca ptr, align 8
  %p_nb_elements.addr = alloca i32, align 4
  %compno = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_current_pi = alloca ptr, align 8
  %l_current_component = alloca ptr, align 8
  store ptr %p_pi, ptr %p_pi.addr, align 8, !tbaa !4
  store i32 %p_nb_elements, ptr %p_nb_elements.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_pi) #4
  %0 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  store ptr %0, ptr %l_current_pi, align 8, !tbaa !4
  %1 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %include, align 8, !tbaa !19
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  %include3 = getelementptr inbounds %struct.opj_pi_iterator, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %include3, align 8, !tbaa !19
  call void @gdcmopenjp2opj_free(ptr noundef %5)
  %6 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  %include4 = getelementptr inbounds %struct.opj_pi_iterator, ptr %6, i32 0, i32 1
  store ptr null, ptr %include4, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, ptr %pino, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %if.end
  %7 = load i32, ptr %pino, align 4, !tbaa !8
  %8 = load i32, ptr %p_nb_elements.addr, align 4, !tbaa !8
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %9, i32 0, i32 14
  %10 = load ptr, ptr %comps, align 8, !tbaa !24
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.then6, label %if.end18

if.then6:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_component) #4
  %11 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps7 = getelementptr inbounds %struct.opj_pi_iterator, ptr %11, i32 0, i32 14
  %12 = load ptr, ptr %comps7, align 8, !tbaa !24
  store ptr %12, ptr %l_current_component, align 8, !tbaa !4
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.then6
  %13 = load i32, ptr %compno, align 4, !tbaa !8
  %14 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, ptr %14, i32 0, i32 13
  %15 = load i32, ptr %numcomps, align 4, !tbaa !53
  %cmp9 = icmp ult i32 %13, %15
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %16 = load ptr, ptr %l_current_component, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %resolutions, align 8, !tbaa !35
  %tobool11 = icmp ne ptr %17, null
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %for.body10
  %18 = load ptr, ptr %l_current_component, align 8, !tbaa !4
  %resolutions13 = getelementptr inbounds %struct.opj_pi_comp, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %resolutions13, align 8, !tbaa !35
  call void @gdcmopenjp2opj_free(ptr noundef %19)
  %20 = load ptr, ptr %l_current_component, align 8, !tbaa !4
  %resolutions14 = getelementptr inbounds %struct.opj_pi_comp, ptr %20, i32 0, i32 3
  store ptr null, ptr %resolutions14, align 8, !tbaa !35
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.body10
  %21 = load ptr, ptr %l_current_component, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_comp, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %l_current_component, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %22 = load i32, ptr %compno, align 4, !tbaa !8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %compno, align 4, !tbaa !8
  br label %for.cond8, !llvm.loop !69

for.end:                                          ; preds = %for.cond8
  %23 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps16 = getelementptr inbounds %struct.opj_pi_iterator, ptr %23, i32 0, i32 14
  %24 = load ptr, ptr %comps16, align 8, !tbaa !24
  call void @gdcmopenjp2opj_free(ptr noundef %24)
  %25 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps17 = getelementptr inbounds %struct.opj_pi_iterator, ptr %25, i32 0, i32 14
  store ptr null, ptr %comps17, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_component) #4
  br label %if.end18

if.end18:                                         ; preds = %for.end, %for.body
  %26 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds %struct.opj_pi_iterator, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %l_current_pi, align 8, !tbaa !4
  br label %for.inc20

for.inc20:                                        ; preds = %if.end18
  %27 = load i32, ptr %pino, align 4, !tbaa !8
  %inc21 = add i32 %27, 1
  store i32 %inc21, ptr %pino, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !70

for.end22:                                        ; preds = %for.cond
  %28 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %28)
  br label %if.end23

if.end23:                                         ; preds = %for.end22, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_pi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_decode_poc(ptr noundef %p_pi, ptr noundef %p_tcp, i32 noundef %p_max_precision, i32 noundef %p_max_res) #0 {
entry:
  %p_pi.addr = alloca ptr, align 8
  %p_tcp.addr = alloca ptr, align 8
  %p_max_precision.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_current_pi = alloca ptr, align 8
  %l_current_poc = alloca ptr, align 8
  store ptr %p_pi, ptr %p_pi.addr, align 8, !tbaa !4
  store ptr %p_tcp, ptr %p_tcp.addr, align 8, !tbaa !4
  store i32 %p_max_precision, ptr %p_max_precision.addr, align 4, !tbaa !8
  store i32 %p_max_res, ptr %p_max_res.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_pi) #4
  store ptr null, ptr %l_current_pi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_poc) #4
  store ptr null, ptr %l_current_poc, align 8, !tbaa !4
  %0 = load i32, ptr %p_max_res.addr, align 4, !tbaa !8
  %1 = load ptr, ptr %p_tcp.addr, align 8, !tbaa !4
  %numpocs = getelementptr inbounds %struct.opj_tcp, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %numpocs, align 4, !tbaa !15
  %add = add i32 %2, 1
  store i32 %add, ptr %l_bound, align 4, !tbaa !8
  %3 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  store ptr %3, ptr %l_current_pi, align 8, !tbaa !4
  %4 = load ptr, ptr %p_tcp.addr, align 8, !tbaa !4
  %pocs = getelementptr inbounds %struct.opj_tcp, ptr %4, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x %struct.opj_poc], ptr %pocs, i64 0, i64 0
  store ptr %arraydecay, ptr %l_current_poc, align 8, !tbaa !4
  store i32 0, ptr %pino, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %pino, align 4, !tbaa !8
  %6 = load i32, ptr %l_bound, align 4, !tbaa !8
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prg = getelementptr inbounds %struct.opj_poc, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %prg, align 4, !tbaa !71
  %9 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %9, i32 0, i32 12
  %prg1 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 9
  store i32 %8, ptr %prg1, align 4, !tbaa !72
  %10 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %10, i32 0, i32 11
  store i32 1, ptr %first, align 4, !tbaa !73
  %11 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %resno0, align 4, !tbaa !74
  %13 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc2 = getelementptr inbounds %struct.opj_pi_iterator, ptr %13, i32 0, i32 12
  %resno03 = getelementptr inbounds %struct.opj_poc, ptr %poc2, i32 0, i32 0
  store i32 %12, ptr %resno03, align 8, !tbaa !75
  %14 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %compno0, align 4, !tbaa !76
  %16 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc4 = getelementptr inbounds %struct.opj_pi_iterator, ptr %16, i32 0, i32 12
  %compno05 = getelementptr inbounds %struct.opj_poc, ptr %poc4, i32 0, i32 1
  store i32 %15, ptr %compno05, align 4, !tbaa !77
  %17 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc6 = getelementptr inbounds %struct.opj_pi_iterator, ptr %17, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc6, i32 0, i32 5
  store i32 0, ptr %layno0, align 4, !tbaa !78
  %18 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc7 = getelementptr inbounds %struct.opj_pi_iterator, ptr %18, i32 0, i32 12
  %precno0 = getelementptr inbounds %struct.opj_poc, ptr %poc7, i32 0, i32 6
  store i32 0, ptr %precno0, align 8, !tbaa !79
  %19 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %resno1, align 4, !tbaa !80
  %21 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc8 = getelementptr inbounds %struct.opj_pi_iterator, ptr %21, i32 0, i32 12
  %resno19 = getelementptr inbounds %struct.opj_poc, ptr %poc8, i32 0, i32 3
  store i32 %20, ptr %resno19, align 4, !tbaa !81
  %22 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %compno1, align 4, !tbaa !82
  %24 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc10 = getelementptr inbounds %struct.opj_pi_iterator, ptr %24, i32 0, i32 12
  %compno111 = getelementptr inbounds %struct.opj_poc, ptr %poc10, i32 0, i32 4
  store i32 %23, ptr %compno111, align 8, !tbaa !83
  %25 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %layno1, align 4, !tbaa !84
  %27 = load ptr, ptr %p_tcp.addr, align 8, !tbaa !4
  %numlayers = getelementptr inbounds %struct.opj_tcp, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %numlayers, align 8, !tbaa !22
  %call = call i32 @opj_uint_min(i32 noundef %26, i32 noundef %28)
  %29 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc12 = getelementptr inbounds %struct.opj_pi_iterator, ptr %29, i32 0, i32 12
  %layno113 = getelementptr inbounds %struct.opj_poc, ptr %poc12, i32 0, i32 2
  store i32 %call, ptr %layno113, align 8, !tbaa !85
  %30 = load i32, ptr %p_max_precision.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc14 = getelementptr inbounds %struct.opj_pi_iterator, ptr %31, i32 0, i32 12
  %precno1 = getelementptr inbounds %struct.opj_poc, ptr %poc14, i32 0, i32 7
  store i32 %30, ptr %precno1, align 4, !tbaa !86
  %32 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %l_current_pi, align 8, !tbaa !4
  %33 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %incdec.ptr15 = getelementptr inbounds %struct.opj_poc, ptr %33, i32 1
  store ptr %incdec.ptr15, ptr %l_current_poc, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %pino, align 4, !tbaa !8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %pino, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_poc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_pi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_decode_not_poc(ptr noundef %p_pi, ptr noundef %p_tcp, i32 noundef %p_max_precision, i32 noundef %p_max_res) #0 {
entry:
  %p_pi.addr = alloca ptr, align 8
  %p_tcp.addr = alloca ptr, align 8
  %p_max_precision.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_current_pi = alloca ptr, align 8
  store ptr %p_pi, ptr %p_pi.addr, align 8, !tbaa !4
  store ptr %p_tcp, ptr %p_tcp.addr, align 8, !tbaa !4
  store i32 %p_max_precision, ptr %p_max_precision.addr, align 4, !tbaa !8
  store i32 %p_max_res, ptr %p_max_res.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_pi) #4
  store ptr null, ptr %l_current_pi, align 8, !tbaa !4
  %0 = load ptr, ptr %p_tcp.addr, align 8, !tbaa !4
  %numpocs = getelementptr inbounds %struct.opj_tcp, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %numpocs, align 4, !tbaa !15
  %add = add i32 %1, 1
  store i32 %add, ptr %l_bound, align 4, !tbaa !8
  %2 = load ptr, ptr %p_pi.addr, align 8, !tbaa !4
  store ptr %2, ptr %l_current_pi, align 8, !tbaa !4
  store i32 0, ptr %pino, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %pino, align 4, !tbaa !8
  %4 = load i32, ptr %l_bound, align 4, !tbaa !8
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p_tcp.addr, align 8, !tbaa !4
  %prg = getelementptr inbounds %struct.opj_tcp, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %prg, align 4, !tbaa !88
  %7 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %7, i32 0, i32 12
  %prg1 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 9
  store i32 %6, ptr %prg1, align 4, !tbaa !72
  %8 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %8, i32 0, i32 11
  store i32 1, ptr %first, align 4, !tbaa !73
  %9 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc2 = getelementptr inbounds %struct.opj_pi_iterator, ptr %9, i32 0, i32 12
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %poc2, i32 0, i32 0
  store i32 0, ptr %resno0, align 8, !tbaa !75
  %10 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc3 = getelementptr inbounds %struct.opj_pi_iterator, ptr %10, i32 0, i32 12
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %poc3, i32 0, i32 1
  store i32 0, ptr %compno0, align 4, !tbaa !77
  %11 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc4 = getelementptr inbounds %struct.opj_pi_iterator, ptr %11, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc4, i32 0, i32 5
  store i32 0, ptr %layno0, align 4, !tbaa !78
  %12 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc5 = getelementptr inbounds %struct.opj_pi_iterator, ptr %12, i32 0, i32 12
  %precno0 = getelementptr inbounds %struct.opj_poc, ptr %poc5, i32 0, i32 6
  store i32 0, ptr %precno0, align 8, !tbaa !79
  %13 = load i32, ptr %p_max_res.addr, align 4, !tbaa !8
  %14 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc6 = getelementptr inbounds %struct.opj_pi_iterator, ptr %14, i32 0, i32 12
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %poc6, i32 0, i32 3
  store i32 %13, ptr %resno1, align 4, !tbaa !81
  %15 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, ptr %15, i32 0, i32 13
  %16 = load i32, ptr %numcomps, align 4, !tbaa !53
  %17 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc7 = getelementptr inbounds %struct.opj_pi_iterator, ptr %17, i32 0, i32 12
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %poc7, i32 0, i32 4
  store i32 %16, ptr %compno1, align 8, !tbaa !83
  %18 = load ptr, ptr %p_tcp.addr, align 8, !tbaa !4
  %numlayers = getelementptr inbounds %struct.opj_tcp, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %numlayers, align 8, !tbaa !22
  %20 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc8 = getelementptr inbounds %struct.opj_pi_iterator, ptr %20, i32 0, i32 12
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %poc8, i32 0, i32 2
  store i32 %19, ptr %layno1, align 8, !tbaa !85
  %21 = load i32, ptr %p_max_precision.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %poc9 = getelementptr inbounds %struct.opj_pi_iterator, ptr %22, i32 0, i32 12
  %precno1 = getelementptr inbounds %struct.opj_poc, ptr %poc9, i32 0, i32 7
  store i32 %21, ptr %precno1, align 4, !tbaa !86
  %23 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %l_current_pi, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %pino, align 4, !tbaa !8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %pino, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_pi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @gdcmopenjp2opj_pi_initialise_encode(ptr noundef %p_image, ptr noundef %p_cp, i32 noundef %p_tile_no, i32 noundef %p_t2_mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %p_image.addr = alloca ptr, align 8
  %p_cp.addr = alloca ptr, align 8
  %p_tile_no.addr = alloca i32, align 4
  %p_t2_mode.addr = alloca i32, align 4
  %numcomps = alloca i32, align 4
  %pino = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %l_tmp_data = alloca ptr, align 8
  %l_tmp_ptr = alloca ptr, align 8
  %l_max_res = alloca i32, align 4
  %l_max_prec = alloca i32, align 4
  %l_tx0 = alloca i32, align 4
  %l_tx1 = alloca i32, align 4
  %l_ty0 = alloca i32, align 4
  %l_ty1 = alloca i32, align 4
  %l_dx_min = alloca i32, align 4
  %l_dy_min = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_step_p = alloca i32, align 4
  %l_step_c = alloca i32, align 4
  %l_step_r = alloca i32, align 4
  %l_step_l = alloca i32, align 4
  %l_data_stride = alloca i32, align 4
  %l_pi = alloca ptr, align 8
  %l_tcp = alloca ptr, align 8
  %l_tccp = alloca ptr, align 8
  %l_current_comp = alloca ptr, align 8
  %l_img_comp = alloca ptr, align 8
  %l_current_pi = alloca ptr, align 8
  %l_encoding_value_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %l_res = alloca ptr, align 8
  %l_res78 = alloca ptr, align 8
  store ptr %p_image, ptr %p_image.addr, align 8, !tbaa !4
  store ptr %p_cp, ptr %p_cp.addr, align 8, !tbaa !4
  store i32 %p_tile_no, ptr %p_tile_no.addr, align 4, !tbaa !8
  store i32 %p_t2_mode, ptr %p_t2_mode.addr, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr %numcomps) #4
  %0 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %numcomps1 = getelementptr inbounds %struct.opj_image, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %numcomps1, align 8, !tbaa !10
  store i32 %1, ptr %numcomps, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tmp_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tmp_ptr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_max_res) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_max_prec) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ty0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ty1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dx_min) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dy_min) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_r) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_step_l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_data_stride) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_pi) #4
  store ptr null, ptr %l_pi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tcp) #4
  store ptr null, ptr %l_tcp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tccp) #4
  store ptr null, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_comp) #4
  store ptr null, ptr %l_current_comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_img_comp) #4
  store ptr null, ptr %l_img_comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_pi) #4
  store ptr null, ptr %l_current_pi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_encoding_value_ptr) #4
  store ptr null, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %2 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %tcps, align 8, !tbaa !12
  %4 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %l_tcp, align 8, !tbaa !4
  %5 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numpocs = getelementptr inbounds %struct.opj_tcp, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %numpocs, align 4, !tbaa !15
  %add = add i32 %6, 1
  store i32 %add, ptr %l_bound, align 4, !tbaa !8
  store i32 132, ptr %l_data_stride, align 4, !tbaa !8
  %7 = load i32, ptr %l_data_stride, align 4, !tbaa !8
  %8 = load i32, ptr %numcomps, align 4, !tbaa !8
  %mul = mul i32 %7, %8
  %conv = zext i32 %mul to i64
  %mul2 = mul i64 %conv, 4
  %call = call ptr @gdcmopenjp2opj_malloc(i64 noundef %mul2)
  store ptr %call, ptr %l_tmp_data, align 8, !tbaa !4
  %9 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %numcomps, align 4, !tbaa !8
  %conv3 = zext i32 %10 to i64
  %mul4 = mul i64 %conv3, 8
  %call5 = call ptr @gdcmopenjp2opj_malloc(i64 noundef %mul4)
  store ptr %call5, ptr %l_tmp_ptr, align 8, !tbaa !4
  %11 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %12 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %12)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %15 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %call9 = call ptr @opj_pi_create(ptr noundef %13, ptr noundef %14, i32 noundef %15)
  store ptr %call9, ptr %l_pi, align 8, !tbaa !4
  %16 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %16, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  %17 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %17)
  %18 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %18)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %19 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  store ptr %19, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %20 = load i32, ptr %compno, align 4, !tbaa !8
  %21 = load i32, ptr %numcomps, align 4, !tbaa !8
  %cmp = icmp ult i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %23 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %24 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom14 = zext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %23, i64 %idxprom14
  store ptr %22, ptr %arrayidx15, align 8, !tbaa !4
  %25 = load i32, ptr %l_data_stride, align 4, !tbaa !8
  %26 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i32, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %compno, align 4, !tbaa !8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %compno, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %30 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @opj_get_all_encoding_parameters(ptr noundef %28, ptr noundef %29, i32 noundef %30, ptr noundef %l_tx0, ptr noundef %l_tx1, ptr noundef %l_ty0, ptr noundef %l_ty1, ptr noundef %l_dx_min, ptr noundef %l_dy_min, ptr noundef %l_max_prec, ptr noundef %l_max_res, ptr noundef %31)
  store i32 1, ptr %l_step_p, align 4, !tbaa !8
  %32 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %33 = load i32, ptr %l_step_p, align 4, !tbaa !8
  %mul16 = mul i32 %32, %33
  store i32 %mul16, ptr %l_step_c, align 4, !tbaa !8
  %34 = load i32, ptr %numcomps, align 4, !tbaa !8
  %35 = load i32, ptr %l_step_c, align 4, !tbaa !8
  %mul17 = mul i32 %34, %35
  store i32 %mul17, ptr %l_step_r, align 4, !tbaa !8
  %36 = load i32, ptr %l_max_res, align 4, !tbaa !8
  %37 = load i32, ptr %l_step_r, align 4, !tbaa !8
  %mul18 = mul i32 %36, %37
  store i32 %mul18, ptr %l_step_l, align 4, !tbaa !8
  %38 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %m_specific_param = getelementptr inbounds %struct.opj_cp, ptr %38, i32 0, i32 20
  %m_tp_on = getelementptr inbounds %struct.opj_encoding_param, ptr %m_specific_param, i32 0, i32 4
  %bf.load = load i8, ptr %m_tp_on, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %conv19 = trunc i32 %bf.cast to i8
  %39 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, ptr %39, i32 0, i32 0
  store i8 %conv19, ptr %tp_on, align 8, !tbaa !92
  %40 = load ptr, ptr %l_pi, align 8, !tbaa !4
  store ptr %40, ptr %l_current_pi, align 8, !tbaa !4
  %41 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numlayers = getelementptr inbounds %struct.opj_tcp, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %numlayers, align 8, !tbaa !22
  %43 = load i32, ptr %l_step_l, align 4, !tbaa !8
  %mul20 = mul i32 %42, %43
  %44 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include_size = getelementptr inbounds %struct.opj_pi_iterator, ptr %44, i32 0, i32 2
  store i32 %mul20, ptr %include_size, align 8, !tbaa !23
  %45 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include_size21 = getelementptr inbounds %struct.opj_pi_iterator, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %include_size21, align 8, !tbaa !23
  %conv22 = zext i32 %46 to i64
  %call23 = call ptr @gdcmopenjp2opj_calloc(i64 noundef %conv22, i64 noundef 2)
  %47 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %47, i32 0, i32 1
  store ptr %call23, ptr %include, align 8, !tbaa !19
  %48 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include24 = getelementptr inbounds %struct.opj_pi_iterator, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %include24, align 8, !tbaa !19
  %tobool25 = icmp ne ptr %49, null
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %for.end
  %50 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %50)
  %51 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %51)
  %52 = load ptr, ptr %l_pi, align 8, !tbaa !4
  %53 = load i32, ptr %l_bound, align 4, !tbaa !8
  call void @gdcmopenjp2opj_pi_destroy(ptr noundef %52, i32 noundef %53)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %for.end
  %54 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %54, i32 0, i32 14
  %55 = load ptr, ptr %comps, align 8, !tbaa !24
  store ptr %55, ptr %l_current_comp, align 8, !tbaa !4
  %56 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %comps28 = getelementptr inbounds %struct.opj_image, ptr %56, i32 0, i32 6
  %57 = load ptr, ptr %comps28, align 8, !tbaa !25
  store ptr %57, ptr %l_img_comp, align 8, !tbaa !4
  %58 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %tccps = getelementptr inbounds %struct.opj_tcp, ptr %58, i32 0, i32 15
  %59 = load ptr, ptr %tccps, align 8, !tbaa !26
  store ptr %59, ptr %l_tccp, align 8, !tbaa !4
  %60 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %61 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %61, i32 0, i32 15
  store i32 %60, ptr %tx0, align 8, !tbaa !27
  %62 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %63 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %63, i32 0, i32 16
  store i32 %62, ptr %ty0, align 4, !tbaa !28
  %64 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %65 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %65, i32 0, i32 17
  store i32 %64, ptr %tx1, align 8, !tbaa !29
  %66 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %67 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %67, i32 0, i32 18
  store i32 %66, ptr %ty1, align 4, !tbaa !30
  %68 = load i32, ptr %l_dx_min, align 4, !tbaa !8
  %69 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_pi_iterator, ptr %69, i32 0, i32 21
  store i32 %68, ptr %dx, align 8, !tbaa !93
  %70 = load i32, ptr %l_dy_min, align 4, !tbaa !8
  %71 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_pi_iterator, ptr %71, i32 0, i32 22
  store i32 %70, ptr %dy, align 4, !tbaa !94
  %72 = load i32, ptr %l_step_p, align 4, !tbaa !8
  %73 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, ptr %73, i32 0, i32 6
  store i32 %72, ptr %step_p, align 8, !tbaa !31
  %74 = load i32, ptr %l_step_c, align 4, !tbaa !8
  %75 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, ptr %75, i32 0, i32 5
  store i32 %74, ptr %step_c, align 4, !tbaa !32
  %76 = load i32, ptr %l_step_r, align 4, !tbaa !8
  %77 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, ptr %77, i32 0, i32 4
  store i32 %76, ptr %step_r, align 8, !tbaa !33
  %78 = load i32, ptr %l_step_l, align 4, !tbaa !8
  %79 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, ptr %79, i32 0, i32 3
  store i32 %78, ptr %step_l, align 4, !tbaa !34
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc53, %if.end27
  %80 = load i32, ptr %compno, align 4, !tbaa !8
  %81 = load i32, ptr %numcomps, align 4, !tbaa !8
  %cmp30 = icmp ult i32 %80, %81
  br i1 %cmp30, label %for.body32, label %for.end55

for.body32:                                       ; preds = %for.cond29
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_res) #4
  %82 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %82, i32 0, i32 3
  %83 = load ptr, ptr %resolutions, align 8, !tbaa !35
  store ptr %83, ptr %l_res, align 8, !tbaa !4
  %84 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %85 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom33 = zext i32 %85 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %84, i64 %idxprom33
  %86 = load ptr, ptr %arrayidx34, align 8, !tbaa !4
  store ptr %86, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %87 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx35 = getelementptr inbounds %struct.opj_image_comp, ptr %87, i32 0, i32 0
  %88 = load i32, ptr %dx35, align 8, !tbaa !37
  %89 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dx36 = getelementptr inbounds %struct.opj_pi_comp, ptr %89, i32 0, i32 0
  store i32 %88, ptr %dx36, align 8, !tbaa !39
  %90 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy37 = getelementptr inbounds %struct.opj_image_comp, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %dy37, align 4, !tbaa !40
  %92 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dy38 = getelementptr inbounds %struct.opj_pi_comp, ptr %92, i32 0, i32 1
  store i32 %91, ptr %dy38, align 4, !tbaa !41
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %for.body32
  %93 = load i32, ptr %resno, align 4, !tbaa !8
  %94 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %94, i32 0, i32 2
  %95 = load i32, ptr %numresolutions, align 8, !tbaa !42
  %cmp40 = icmp ult i32 %93, %95
  br i1 %cmp40, label %for.body42, label %for.end49

for.body42:                                       ; preds = %for.cond39
  %96 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %96, i32 1
  store ptr %incdec.ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %97 = load i32, ptr %96, align 4, !tbaa !8
  %98 = load ptr, ptr %l_res, align 8, !tbaa !4
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, ptr %98, i32 0, i32 0
  store i32 %97, ptr %pdx, align 4, !tbaa !43
  %99 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr43 = getelementptr inbounds i32, ptr %99, i32 1
  store ptr %incdec.ptr43, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %100 = load i32, ptr %99, align 4, !tbaa !8
  %101 = load ptr, ptr %l_res, align 8, !tbaa !4
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, ptr %101, i32 0, i32 1
  store i32 %100, ptr %pdy, align 4, !tbaa !45
  %102 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr44 = getelementptr inbounds i32, ptr %102, i32 1
  store ptr %incdec.ptr44, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %103 = load i32, ptr %102, align 4, !tbaa !8
  %104 = load ptr, ptr %l_res, align 8, !tbaa !4
  %pw = getelementptr inbounds %struct.opj_pi_resolution, ptr %104, i32 0, i32 2
  store i32 %103, ptr %pw, align 4, !tbaa !46
  %105 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr45 = getelementptr inbounds i32, ptr %105, i32 1
  store ptr %incdec.ptr45, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %106 = load i32, ptr %105, align 4, !tbaa !8
  %107 = load ptr, ptr %l_res, align 8, !tbaa !4
  %ph = getelementptr inbounds %struct.opj_pi_resolution, ptr %107, i32 0, i32 3
  store i32 %106, ptr %ph, align 4, !tbaa !47
  %108 = load ptr, ptr %l_res, align 8, !tbaa !4
  %incdec.ptr46 = getelementptr inbounds %struct.opj_pi_resolution, ptr %108, i32 1
  store ptr %incdec.ptr46, ptr %l_res, align 8, !tbaa !4
  br label %for.inc47

for.inc47:                                        ; preds = %for.body42
  %109 = load i32, ptr %resno, align 4, !tbaa !8
  %inc48 = add i32 %109, 1
  store i32 %inc48, ptr %resno, align 4, !tbaa !8
  br label %for.cond39, !llvm.loop !95

for.end49:                                        ; preds = %for.cond39
  %110 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %incdec.ptr50 = getelementptr inbounds %struct.opj_pi_comp, ptr %110, i32 1
  store ptr %incdec.ptr50, ptr %l_current_comp, align 8, !tbaa !4
  %111 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %incdec.ptr51 = getelementptr inbounds %struct.opj_image_comp, ptr %111, i32 1
  store ptr %incdec.ptr51, ptr %l_img_comp, align 8, !tbaa !4
  %112 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %incdec.ptr52 = getelementptr inbounds %struct.opj_tccp, ptr %112, i32 1
  store ptr %incdec.ptr52, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_res) #4
  br label %for.inc53

for.inc53:                                        ; preds = %for.end49
  %113 = load i32, ptr %compno, align 4, !tbaa !8
  %inc54 = add i32 %113, 1
  store i32 %inc54, ptr %compno, align 4, !tbaa !8
  br label %for.cond29, !llvm.loop !96

for.end55:                                        ; preds = %for.cond29
  %114 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr56 = getelementptr inbounds %struct.opj_pi_iterator, ptr %114, i32 1
  store ptr %incdec.ptr56, ptr %l_current_pi, align 8, !tbaa !4
  store i32 1, ptr %pino, align 4, !tbaa !8
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc116, %for.end55
  %115 = load i32, ptr %pino, align 4, !tbaa !8
  %116 = load i32, ptr %l_bound, align 4, !tbaa !8
  %cmp58 = icmp ult i32 %115, %116
  br i1 %cmp58, label %for.body60, label %for.end118

for.body60:                                       ; preds = %for.cond57
  %117 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %comps61 = getelementptr inbounds %struct.opj_pi_iterator, ptr %117, i32 0, i32 14
  %118 = load ptr, ptr %comps61, align 8, !tbaa !24
  store ptr %118, ptr %l_current_comp, align 8, !tbaa !4
  %119 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %comps62 = getelementptr inbounds %struct.opj_image, ptr %119, i32 0, i32 6
  %120 = load ptr, ptr %comps62, align 8, !tbaa !25
  store ptr %120, ptr %l_img_comp, align 8, !tbaa !4
  %121 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %tccps63 = getelementptr inbounds %struct.opj_tcp, ptr %121, i32 0, i32 15
  %122 = load ptr, ptr %tccps63, align 8, !tbaa !26
  store ptr %122, ptr %l_tccp, align 8, !tbaa !4
  %123 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %124 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx064 = getelementptr inbounds %struct.opj_pi_iterator, ptr %124, i32 0, i32 15
  store i32 %123, ptr %tx064, align 8, !tbaa !27
  %125 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %126 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty065 = getelementptr inbounds %struct.opj_pi_iterator, ptr %126, i32 0, i32 16
  store i32 %125, ptr %ty065, align 4, !tbaa !28
  %127 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %128 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %tx166 = getelementptr inbounds %struct.opj_pi_iterator, ptr %128, i32 0, i32 17
  store i32 %127, ptr %tx166, align 8, !tbaa !29
  %129 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %130 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %ty167 = getelementptr inbounds %struct.opj_pi_iterator, ptr %130, i32 0, i32 18
  store i32 %129, ptr %ty167, align 4, !tbaa !30
  %131 = load i32, ptr %l_dx_min, align 4, !tbaa !8
  %132 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %dx68 = getelementptr inbounds %struct.opj_pi_iterator, ptr %132, i32 0, i32 21
  store i32 %131, ptr %dx68, align 8, !tbaa !93
  %133 = load i32, ptr %l_dy_min, align 4, !tbaa !8
  %134 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %dy69 = getelementptr inbounds %struct.opj_pi_iterator, ptr %134, i32 0, i32 22
  store i32 %133, ptr %dy69, align 4, !tbaa !94
  %135 = load i32, ptr %l_step_p, align 4, !tbaa !8
  %136 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_p70 = getelementptr inbounds %struct.opj_pi_iterator, ptr %136, i32 0, i32 6
  store i32 %135, ptr %step_p70, align 8, !tbaa !31
  %137 = load i32, ptr %l_step_c, align 4, !tbaa !8
  %138 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_c71 = getelementptr inbounds %struct.opj_pi_iterator, ptr %138, i32 0, i32 5
  store i32 %137, ptr %step_c71, align 4, !tbaa !32
  %139 = load i32, ptr %l_step_r, align 4, !tbaa !8
  %140 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_r72 = getelementptr inbounds %struct.opj_pi_iterator, ptr %140, i32 0, i32 4
  store i32 %139, ptr %step_r72, align 8, !tbaa !33
  %141 = load i32, ptr %l_step_l, align 4, !tbaa !8
  %142 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %step_l73 = getelementptr inbounds %struct.opj_pi_iterator, ptr %142, i32 0, i32 3
  store i32 %141, ptr %step_l73, align 4, !tbaa !34
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc106, %for.body60
  %143 = load i32, ptr %compno, align 4, !tbaa !8
  %144 = load i32, ptr %numcomps, align 4, !tbaa !8
  %cmp75 = icmp ult i32 %143, %144
  br i1 %cmp75, label %for.body77, label %for.end108

for.body77:                                       ; preds = %for.cond74
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_res78) #4
  %145 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %resolutions79 = getelementptr inbounds %struct.opj_pi_comp, ptr %145, i32 0, i32 3
  %146 = load ptr, ptr %resolutions79, align 8, !tbaa !35
  store ptr %146, ptr %l_res78, align 8, !tbaa !4
  %147 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  %148 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom80 = zext i32 %148 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %147, i64 %idxprom80
  %149 = load ptr, ptr %arrayidx81, align 8, !tbaa !4
  store ptr %149, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %150 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx82 = getelementptr inbounds %struct.opj_image_comp, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %dx82, align 8, !tbaa !37
  %152 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dx83 = getelementptr inbounds %struct.opj_pi_comp, ptr %152, i32 0, i32 0
  store i32 %151, ptr %dx83, align 8, !tbaa !39
  %153 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy84 = getelementptr inbounds %struct.opj_image_comp, ptr %153, i32 0, i32 1
  %154 = load i32, ptr %dy84, align 4, !tbaa !40
  %155 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %dy85 = getelementptr inbounds %struct.opj_pi_comp, ptr %155, i32 0, i32 1
  store i32 %154, ptr %dy85, align 4, !tbaa !41
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc100, %for.body77
  %156 = load i32, ptr %resno, align 4, !tbaa !8
  %157 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %numresolutions87 = getelementptr inbounds %struct.opj_pi_comp, ptr %157, i32 0, i32 2
  %158 = load i32, ptr %numresolutions87, align 8, !tbaa !42
  %cmp88 = icmp ult i32 %156, %158
  br i1 %cmp88, label %for.body90, label %for.end102

for.body90:                                       ; preds = %for.cond86
  %159 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr91 = getelementptr inbounds i32, ptr %159, i32 1
  store ptr %incdec.ptr91, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %160 = load i32, ptr %159, align 4, !tbaa !8
  %161 = load ptr, ptr %l_res78, align 8, !tbaa !4
  %pdx92 = getelementptr inbounds %struct.opj_pi_resolution, ptr %161, i32 0, i32 0
  store i32 %160, ptr %pdx92, align 4, !tbaa !43
  %162 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr93 = getelementptr inbounds i32, ptr %162, i32 1
  store ptr %incdec.ptr93, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %163 = load i32, ptr %162, align 4, !tbaa !8
  %164 = load ptr, ptr %l_res78, align 8, !tbaa !4
  %pdy94 = getelementptr inbounds %struct.opj_pi_resolution, ptr %164, i32 0, i32 1
  store i32 %163, ptr %pdy94, align 4, !tbaa !45
  %165 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr95 = getelementptr inbounds i32, ptr %165, i32 1
  store ptr %incdec.ptr95, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %166 = load i32, ptr %165, align 4, !tbaa !8
  %167 = load ptr, ptr %l_res78, align 8, !tbaa !4
  %pw96 = getelementptr inbounds %struct.opj_pi_resolution, ptr %167, i32 0, i32 2
  store i32 %166, ptr %pw96, align 4, !tbaa !46
  %168 = load ptr, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %incdec.ptr97 = getelementptr inbounds i32, ptr %168, i32 1
  store ptr %incdec.ptr97, ptr %l_encoding_value_ptr, align 8, !tbaa !4
  %169 = load i32, ptr %168, align 4, !tbaa !8
  %170 = load ptr, ptr %l_res78, align 8, !tbaa !4
  %ph98 = getelementptr inbounds %struct.opj_pi_resolution, ptr %170, i32 0, i32 3
  store i32 %169, ptr %ph98, align 4, !tbaa !47
  %171 = load ptr, ptr %l_res78, align 8, !tbaa !4
  %incdec.ptr99 = getelementptr inbounds %struct.opj_pi_resolution, ptr %171, i32 1
  store ptr %incdec.ptr99, ptr %l_res78, align 8, !tbaa !4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body90
  %172 = load i32, ptr %resno, align 4, !tbaa !8
  %inc101 = add i32 %172, 1
  store i32 %inc101, ptr %resno, align 4, !tbaa !8
  br label %for.cond86, !llvm.loop !97

for.end102:                                       ; preds = %for.cond86
  %173 = load ptr, ptr %l_current_comp, align 8, !tbaa !4
  %incdec.ptr103 = getelementptr inbounds %struct.opj_pi_comp, ptr %173, i32 1
  store ptr %incdec.ptr103, ptr %l_current_comp, align 8, !tbaa !4
  %174 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %incdec.ptr104 = getelementptr inbounds %struct.opj_image_comp, ptr %174, i32 1
  store ptr %incdec.ptr104, ptr %l_img_comp, align 8, !tbaa !4
  %175 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %incdec.ptr105 = getelementptr inbounds %struct.opj_tccp, ptr %175, i32 1
  store ptr %incdec.ptr105, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_res78) #4
  br label %for.inc106

for.inc106:                                       ; preds = %for.end102
  %176 = load i32, ptr %compno, align 4, !tbaa !8
  %inc107 = add i32 %176, 1
  store i32 %inc107, ptr %compno, align 4, !tbaa !8
  br label %for.cond74, !llvm.loop !98

for.end108:                                       ; preds = %for.cond74
  %177 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %add.ptr109 = getelementptr inbounds %struct.opj_pi_iterator, ptr %177, i64 -1
  %include110 = getelementptr inbounds %struct.opj_pi_iterator, ptr %add.ptr109, i32 0, i32 1
  %178 = load ptr, ptr %include110, align 8, !tbaa !19
  %179 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include111 = getelementptr inbounds %struct.opj_pi_iterator, ptr %179, i32 0, i32 1
  store ptr %178, ptr %include111, align 8, !tbaa !19
  %180 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %add.ptr112 = getelementptr inbounds %struct.opj_pi_iterator, ptr %180, i64 -1
  %include_size113 = getelementptr inbounds %struct.opj_pi_iterator, ptr %add.ptr112, i32 0, i32 2
  %181 = load i32, ptr %include_size113, align 8, !tbaa !23
  %182 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %include_size114 = getelementptr inbounds %struct.opj_pi_iterator, ptr %182, i32 0, i32 2
  store i32 %181, ptr %include_size114, align 8, !tbaa !23
  %183 = load ptr, ptr %l_current_pi, align 8, !tbaa !4
  %incdec.ptr115 = getelementptr inbounds %struct.opj_pi_iterator, ptr %183, i32 1
  store ptr %incdec.ptr115, ptr %l_current_pi, align 8, !tbaa !4
  br label %for.inc116

for.inc116:                                       ; preds = %for.end108
  %184 = load i32, ptr %pino, align 4, !tbaa !8
  %inc117 = add i32 %184, 1
  store i32 %inc117, ptr %pino, align 4, !tbaa !8
  br label %for.cond57, !llvm.loop !99

for.end118:                                       ; preds = %for.cond57
  %185 = load ptr, ptr %l_tmp_data, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %185)
  store ptr null, ptr %l_tmp_data, align 8, !tbaa !4
  %186 = load ptr, ptr %l_tmp_ptr, align 8, !tbaa !4
  call void @gdcmopenjp2opj_free(ptr noundef %186)
  store ptr null, ptr %l_tmp_ptr, align 8, !tbaa !4
  %187 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %POC = getelementptr inbounds %struct.opj_tcp, ptr %187, i32 0, i32 29
  %bf.load119 = load i8, ptr %POC, align 8
  %bf.lshr120 = lshr i8 %bf.load119, 2
  %bf.clear121 = and i8 %bf.lshr120, 1
  %bf.cast122 = zext i8 %bf.clear121 to i32
  %tobool123 = icmp ne i32 %bf.cast122, 0
  br i1 %tobool123, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end118
  %188 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %rsiz = getelementptr inbounds %struct.opj_cp, ptr %188, i32 0, i32 0
  %189 = load i16, ptr %rsiz, align 8, !tbaa !100
  %conv124 = zext i16 %189 to i32
  %cmp125 = icmp sge i32 %conv124, 3
  br i1 %cmp125, label %land.lhs.true127, label %lor.lhs.false

land.lhs.true127:                                 ; preds = %land.lhs.true
  %190 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %rsiz128 = getelementptr inbounds %struct.opj_cp, ptr %190, i32 0, i32 0
  %191 = load i16, ptr %rsiz128, align 8, !tbaa !100
  %conv129 = zext i16 %191 to i32
  %cmp130 = icmp sle i32 %conv129, 6
  br i1 %cmp130, label %if.then134, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true127, %land.lhs.true
  %192 = load i32, ptr %p_t2_mode.addr, align 4, !tbaa !90
  %cmp132 = icmp eq i32 %192, 1
  br i1 %cmp132, label %if.then134, label %if.else

if.then134:                                       ; preds = %lor.lhs.false, %land.lhs.true127
  %193 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %194 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %195 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %196 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %197 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %198 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %199 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %200 = load i32, ptr %l_max_res, align 4, !tbaa !8
  %201 = load i32, ptr %l_dx_min, align 4, !tbaa !8
  %202 = load i32, ptr %l_dy_min, align 4, !tbaa !8
  call void @opj_pi_update_encode_poc_and_final(ptr noundef %193, i32 noundef %194, i32 noundef %195, i32 noundef %196, i32 noundef %197, i32 noundef %198, i32 noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef %202)
  br label %if.end135

if.else:                                          ; preds = %lor.lhs.false, %for.end118
  %203 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %204 = load i32, ptr %numcomps, align 4, !tbaa !8
  %205 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %206 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %207 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %208 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %209 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %210 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %211 = load i32, ptr %l_max_res, align 4, !tbaa !8
  %212 = load i32, ptr %l_dx_min, align 4, !tbaa !8
  %213 = load i32, ptr %l_dy_min, align 4, !tbaa !8
  call void @opj_pi_update_encode_not_poc(ptr noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207, i32 noundef %208, i32 noundef %209, i32 noundef %210, i32 noundef %211, i32 noundef %212, i32 noundef %213)
  br label %if.end135

if.end135:                                        ; preds = %if.else, %if.then134
  %214 = load ptr, ptr %l_pi, align 8, !tbaa !4
  store ptr %214, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.then26, %if.then11, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_encoding_value_ptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_pi) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_img_comp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_comp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tccp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tcp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_pi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_data_stride) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_step_p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_bound) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dy_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dx_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ty1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ty0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_max_prec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_max_res) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tmp_ptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tmp_data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %numcomps) #4
  %215 = load ptr, ptr %retval, align 8
  ret ptr %215
}

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_encode_poc_and_final(ptr noundef %p_cp, i32 noundef %p_tileno, i32 noundef %p_tx0, i32 noundef %p_tx1, i32 noundef %p_ty0, i32 noundef %p_ty1, i32 noundef %p_max_prec, i32 noundef %p_max_res, i32 noundef %p_dx_min, i32 noundef %p_dy_min) #0 {
entry:
  %p_cp.addr = alloca ptr, align 8
  %p_tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca i32, align 4
  %p_tx1.addr = alloca i32, align 4
  %p_ty0.addr = alloca i32, align 4
  %p_ty1.addr = alloca i32, align 4
  %p_max_prec.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %p_dx_min.addr = alloca i32, align 4
  %p_dy_min.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_tcp = alloca ptr, align 8
  %l_current_poc = alloca ptr, align 8
  %l_poc_bound = alloca i32, align 4
  store ptr %p_cp, ptr %p_cp.addr, align 8, !tbaa !4
  store i32 %p_tileno, ptr %p_tileno.addr, align 4, !tbaa !8
  store i32 %p_tx0, ptr %p_tx0.addr, align 4, !tbaa !8
  store i32 %p_tx1, ptr %p_tx1.addr, align 4, !tbaa !8
  store i32 %p_ty0, ptr %p_ty0.addr, align 4, !tbaa !8
  store i32 %p_ty1, ptr %p_ty1.addr, align 4, !tbaa !8
  store i32 %p_max_prec, ptr %p_max_prec.addr, align 4, !tbaa !8
  store i32 %p_max_res, ptr %p_max_res.addr, align 4, !tbaa !8
  store i32 %p_dx_min, ptr %p_dx_min.addr, align 4, !tbaa !8
  store i32 %p_dy_min, ptr %p_dy_min.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tcp) #4
  store ptr null, ptr %l_tcp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_poc) #4
  store ptr null, ptr %l_current_poc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_poc_bound) #4
  %0 = load i32, ptr %p_max_res.addr, align 4, !tbaa !8
  %1 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %tcps, align 8, !tbaa !12
  %3 = load i32, ptr %p_tileno.addr, align 4, !tbaa !8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %l_tcp, align 8, !tbaa !4
  %4 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numpocs = getelementptr inbounds %struct.opj_tcp, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %numpocs, align 4, !tbaa !15
  %add = add i32 %5, 1
  store i32 %add, ptr %l_poc_bound, align 4, !tbaa !8
  %6 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %pocs = getelementptr inbounds %struct.opj_tcp, ptr %6, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x %struct.opj_poc], ptr %pocs, i64 0, i64 0
  store ptr %arraydecay, ptr %l_current_poc, align 8, !tbaa !4
  %7 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %compno0, align 4, !tbaa !76
  %9 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compS = getelementptr inbounds %struct.opj_poc, ptr %9, i32 0, i32 18
  store i32 %8, ptr %compS, align 4, !tbaa !101
  %10 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %compno1, align 4, !tbaa !82
  %12 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compE = getelementptr inbounds %struct.opj_poc, ptr %12, i32 0, i32 22
  store i32 %11, ptr %compE, align 4, !tbaa !102
  %13 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %resno0, align 4, !tbaa !74
  %15 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resS = getelementptr inbounds %struct.opj_poc, ptr %15, i32 0, i32 17
  store i32 %14, ptr %resS, align 4, !tbaa !103
  %16 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %resno1, align 4, !tbaa !80
  %18 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resE = getelementptr inbounds %struct.opj_poc, ptr %18, i32 0, i32 21
  store i32 %17, ptr %resE, align 4, !tbaa !104
  %19 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %layno1, align 4, !tbaa !84
  %21 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layE = getelementptr inbounds %struct.opj_poc, ptr %21, i32 0, i32 20
  store i32 %20, ptr %layE, align 4, !tbaa !105
  %22 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layS = getelementptr inbounds %struct.opj_poc, ptr %22, i32 0, i32 16
  store i32 0, ptr %layS, align 4, !tbaa !106
  %23 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prg1 = getelementptr inbounds %struct.opj_poc, ptr %23, i32 0, i32 8
  %24 = load i32, ptr %prg1, align 4, !tbaa !107
  %25 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prg = getelementptr inbounds %struct.opj_poc, ptr %25, i32 0, i32 9
  store i32 %24, ptr %prg, align 4, !tbaa !71
  %26 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prcS = getelementptr inbounds %struct.opj_poc, ptr %26, i32 0, i32 19
  store i32 0, ptr %prcS, align 4, !tbaa !108
  %27 = load i32, ptr %p_max_prec.addr, align 4, !tbaa !8
  %28 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prcE = getelementptr inbounds %struct.opj_poc, ptr %28, i32 0, i32 23
  store i32 %27, ptr %prcE, align 4, !tbaa !109
  %29 = load i32, ptr %p_tx0.addr, align 4, !tbaa !8
  %30 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %txS = getelementptr inbounds %struct.opj_poc, ptr %30, i32 0, i32 24
  store i32 %29, ptr %txS, align 4, !tbaa !110
  %31 = load i32, ptr %p_tx1.addr, align 4, !tbaa !8
  %32 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %txE = getelementptr inbounds %struct.opj_poc, ptr %32, i32 0, i32 25
  store i32 %31, ptr %txE, align 4, !tbaa !111
  %33 = load i32, ptr %p_ty0.addr, align 4, !tbaa !8
  %34 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %tyS = getelementptr inbounds %struct.opj_poc, ptr %34, i32 0, i32 26
  store i32 %33, ptr %tyS, align 4, !tbaa !112
  %35 = load i32, ptr %p_ty1.addr, align 4, !tbaa !8
  %36 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %tyE = getelementptr inbounds %struct.opj_poc, ptr %36, i32 0, i32 27
  store i32 %35, ptr %tyE, align 4, !tbaa !113
  %37 = load i32, ptr %p_dx_min.addr, align 4, !tbaa !8
  %38 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_poc, ptr %38, i32 0, i32 28
  store i32 %37, ptr %dx, align 4, !tbaa !114
  %39 = load i32, ptr %p_dy_min.addr, align 4, !tbaa !8
  %40 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_poc, ptr %40, i32 0, i32 29
  store i32 %39, ptr %dy, align 4, !tbaa !115
  %41 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.opj_poc, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %l_current_poc, align 8, !tbaa !4
  store i32 1, ptr %pino, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %42 = load i32, ptr %pino, align 4, !tbaa !8
  %43 = load i32, ptr %l_poc_bound, align 4, !tbaa !8
  %cmp = icmp ult i32 %42, %43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compno01 = getelementptr inbounds %struct.opj_poc, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %compno01, align 4, !tbaa !76
  %46 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compS2 = getelementptr inbounds %struct.opj_poc, ptr %46, i32 0, i32 18
  store i32 %45, ptr %compS2, align 4, !tbaa !101
  %47 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compno13 = getelementptr inbounds %struct.opj_poc, ptr %47, i32 0, i32 4
  %48 = load i32, ptr %compno13, align 4, !tbaa !82
  %49 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compE4 = getelementptr inbounds %struct.opj_poc, ptr %49, i32 0, i32 22
  store i32 %48, ptr %compE4, align 4, !tbaa !102
  %50 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resno05 = getelementptr inbounds %struct.opj_poc, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %resno05, align 4, !tbaa !74
  %52 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resS6 = getelementptr inbounds %struct.opj_poc, ptr %52, i32 0, i32 17
  store i32 %51, ptr %resS6, align 4, !tbaa !103
  %53 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resno17 = getelementptr inbounds %struct.opj_poc, ptr %53, i32 0, i32 3
  %54 = load i32, ptr %resno17, align 4, !tbaa !80
  %55 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resE8 = getelementptr inbounds %struct.opj_poc, ptr %55, i32 0, i32 21
  store i32 %54, ptr %resE8, align 4, !tbaa !104
  %56 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layno19 = getelementptr inbounds %struct.opj_poc, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %layno19, align 4, !tbaa !84
  %58 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layE10 = getelementptr inbounds %struct.opj_poc, ptr %58, i32 0, i32 20
  store i32 %57, ptr %layE10, align 4, !tbaa !105
  %59 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prg111 = getelementptr inbounds %struct.opj_poc, ptr %59, i32 0, i32 8
  %60 = load i32, ptr %prg111, align 4, !tbaa !107
  %61 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prg12 = getelementptr inbounds %struct.opj_poc, ptr %61, i32 0, i32 9
  store i32 %60, ptr %prg12, align 4, !tbaa !71
  %62 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prcS13 = getelementptr inbounds %struct.opj_poc, ptr %62, i32 0, i32 19
  store i32 0, ptr %prcS13, align 4, !tbaa !108
  %63 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layE14 = getelementptr inbounds %struct.opj_poc, ptr %63, i32 0, i32 20
  %64 = load i32, ptr %layE14, align 4, !tbaa !105
  %65 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.opj_poc, ptr %65, i64 -1
  %layE15 = getelementptr inbounds %struct.opj_poc, ptr %add.ptr, i32 0, i32 20
  %66 = load i32, ptr %layE15, align 4, !tbaa !105
  %cmp16 = icmp ugt i32 %64, %66
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %67 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layE17 = getelementptr inbounds %struct.opj_poc, ptr %67, i32 0, i32 20
  %68 = load i32, ptr %layE17, align 4, !tbaa !105
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %68, %cond.true ], [ 0, %cond.false ]
  %69 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layS18 = getelementptr inbounds %struct.opj_poc, ptr %69, i32 0, i32 16
  store i32 %cond, ptr %layS18, align 4, !tbaa !106
  %70 = load i32, ptr %p_max_prec.addr, align 4, !tbaa !8
  %71 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prcE19 = getelementptr inbounds %struct.opj_poc, ptr %71, i32 0, i32 23
  store i32 %70, ptr %prcE19, align 4, !tbaa !109
  %72 = load i32, ptr %p_tx0.addr, align 4, !tbaa !8
  %73 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %txS20 = getelementptr inbounds %struct.opj_poc, ptr %73, i32 0, i32 24
  store i32 %72, ptr %txS20, align 4, !tbaa !110
  %74 = load i32, ptr %p_tx1.addr, align 4, !tbaa !8
  %75 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %txE21 = getelementptr inbounds %struct.opj_poc, ptr %75, i32 0, i32 25
  store i32 %74, ptr %txE21, align 4, !tbaa !111
  %76 = load i32, ptr %p_ty0.addr, align 4, !tbaa !8
  %77 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %tyS22 = getelementptr inbounds %struct.opj_poc, ptr %77, i32 0, i32 26
  store i32 %76, ptr %tyS22, align 4, !tbaa !112
  %78 = load i32, ptr %p_ty1.addr, align 4, !tbaa !8
  %79 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %tyE23 = getelementptr inbounds %struct.opj_poc, ptr %79, i32 0, i32 27
  store i32 %78, ptr %tyE23, align 4, !tbaa !113
  %80 = load i32, ptr %p_dx_min.addr, align 4, !tbaa !8
  %81 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %dx24 = getelementptr inbounds %struct.opj_poc, ptr %81, i32 0, i32 28
  store i32 %80, ptr %dx24, align 4, !tbaa !114
  %82 = load i32, ptr %p_dy_min.addr, align 4, !tbaa !8
  %83 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %dy25 = getelementptr inbounds %struct.opj_poc, ptr %83, i32 0, i32 29
  store i32 %82, ptr %dy25, align 4, !tbaa !115
  %84 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %incdec.ptr26 = getelementptr inbounds %struct.opj_poc, ptr %84, i32 1
  store ptr %incdec.ptr26, ptr %l_current_poc, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %85 = load i32, ptr %pino, align 4, !tbaa !8
  %inc = add i32 %85, 1
  store i32 %inc, ptr %pino, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_poc_bound) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_poc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tcp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_encode_not_poc(ptr noundef %p_cp, i32 noundef %p_num_comps, i32 noundef %p_tileno, i32 noundef %p_tx0, i32 noundef %p_tx1, i32 noundef %p_ty0, i32 noundef %p_ty1, i32 noundef %p_max_prec, i32 noundef %p_max_res, i32 noundef %p_dx_min, i32 noundef %p_dy_min) #0 {
entry:
  %p_cp.addr = alloca ptr, align 8
  %p_num_comps.addr = alloca i32, align 4
  %p_tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca i32, align 4
  %p_tx1.addr = alloca i32, align 4
  %p_ty0.addr = alloca i32, align 4
  %p_ty1.addr = alloca i32, align 4
  %p_max_prec.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %p_dx_min.addr = alloca i32, align 4
  %p_dy_min.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_tcp = alloca ptr, align 8
  %l_current_poc = alloca ptr, align 8
  %l_poc_bound = alloca i32, align 4
  store ptr %p_cp, ptr %p_cp.addr, align 8, !tbaa !4
  store i32 %p_num_comps, ptr %p_num_comps.addr, align 4, !tbaa !8
  store i32 %p_tileno, ptr %p_tileno.addr, align 4, !tbaa !8
  store i32 %p_tx0, ptr %p_tx0.addr, align 4, !tbaa !8
  store i32 %p_tx1, ptr %p_tx1.addr, align 4, !tbaa !8
  store i32 %p_ty0, ptr %p_ty0.addr, align 4, !tbaa !8
  store i32 %p_ty1, ptr %p_ty1.addr, align 4, !tbaa !8
  store i32 %p_max_prec, ptr %p_max_prec.addr, align 4, !tbaa !8
  store i32 %p_max_res, ptr %p_max_res.addr, align 4, !tbaa !8
  store i32 %p_dx_min, ptr %p_dx_min.addr, align 4, !tbaa !8
  store i32 %p_dy_min, ptr %p_dy_min.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pino) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tcp) #4
  store ptr null, ptr %l_tcp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_current_poc) #4
  store ptr null, ptr %l_current_poc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_poc_bound) #4
  %0 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %tcps, align 8, !tbaa !12
  %2 = load i32, ptr %p_tileno.addr, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %l_tcp, align 8, !tbaa !4
  %3 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numpocs = getelementptr inbounds %struct.opj_tcp, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %numpocs, align 4, !tbaa !15
  %add = add i32 %4, 1
  store i32 %add, ptr %l_poc_bound, align 4, !tbaa !8
  %5 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %pocs = getelementptr inbounds %struct.opj_tcp, ptr %5, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x %struct.opj_poc], ptr %pocs, i64 0, i64 0
  store ptr %arraydecay, ptr %l_current_poc, align 8, !tbaa !4
  store i32 0, ptr %pino, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %pino, align 4, !tbaa !8
  %7 = load i32, ptr %l_poc_bound, align 4, !tbaa !8
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compS = getelementptr inbounds %struct.opj_poc, ptr %8, i32 0, i32 18
  store i32 0, ptr %compS, align 4, !tbaa !101
  %9 = load i32, ptr %p_num_comps.addr, align 4, !tbaa !8
  %10 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %compE = getelementptr inbounds %struct.opj_poc, ptr %10, i32 0, i32 22
  store i32 %9, ptr %compE, align 4, !tbaa !102
  %11 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resS = getelementptr inbounds %struct.opj_poc, ptr %11, i32 0, i32 17
  store i32 0, ptr %resS, align 4, !tbaa !103
  %12 = load i32, ptr %p_max_res.addr, align 4, !tbaa !8
  %13 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %resE = getelementptr inbounds %struct.opj_poc, ptr %13, i32 0, i32 21
  store i32 %12, ptr %resE, align 4, !tbaa !104
  %14 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layS = getelementptr inbounds %struct.opj_poc, ptr %14, i32 0, i32 16
  store i32 0, ptr %layS, align 4, !tbaa !106
  %15 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %numlayers = getelementptr inbounds %struct.opj_tcp, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %numlayers, align 8, !tbaa !22
  %17 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %layE = getelementptr inbounds %struct.opj_poc, ptr %17, i32 0, i32 20
  store i32 %16, ptr %layE, align 4, !tbaa !105
  %18 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %prg = getelementptr inbounds %struct.opj_tcp, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %prg, align 4, !tbaa !88
  %20 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prg1 = getelementptr inbounds %struct.opj_poc, ptr %20, i32 0, i32 9
  store i32 %19, ptr %prg1, align 4, !tbaa !71
  %21 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prcS = getelementptr inbounds %struct.opj_poc, ptr %21, i32 0, i32 19
  store i32 0, ptr %prcS, align 4, !tbaa !108
  %22 = load i32, ptr %p_max_prec.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %prcE = getelementptr inbounds %struct.opj_poc, ptr %23, i32 0, i32 23
  store i32 %22, ptr %prcE, align 4, !tbaa !109
  %24 = load i32, ptr %p_tx0.addr, align 4, !tbaa !8
  %25 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %txS = getelementptr inbounds %struct.opj_poc, ptr %25, i32 0, i32 24
  store i32 %24, ptr %txS, align 4, !tbaa !110
  %26 = load i32, ptr %p_tx1.addr, align 4, !tbaa !8
  %27 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %txE = getelementptr inbounds %struct.opj_poc, ptr %27, i32 0, i32 25
  store i32 %26, ptr %txE, align 4, !tbaa !111
  %28 = load i32, ptr %p_ty0.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %tyS = getelementptr inbounds %struct.opj_poc, ptr %29, i32 0, i32 26
  store i32 %28, ptr %tyS, align 4, !tbaa !112
  %30 = load i32, ptr %p_ty1.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %tyE = getelementptr inbounds %struct.opj_poc, ptr %31, i32 0, i32 27
  store i32 %30, ptr %tyE, align 4, !tbaa !113
  %32 = load i32, ptr %p_dx_min.addr, align 4, !tbaa !8
  %33 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_poc, ptr %33, i32 0, i32 28
  store i32 %32, ptr %dx, align 4, !tbaa !114
  %34 = load i32, ptr %p_dy_min.addr, align 4, !tbaa !8
  %35 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_poc, ptr %35, i32 0, i32 29
  store i32 %34, ptr %dy, align 4, !tbaa !115
  %36 = load ptr, ptr %l_current_poc, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.opj_poc, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %l_current_poc, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %pino, align 4, !tbaa !8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %pino, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !117

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_poc_bound) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_current_poc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tcp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pino) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gdcmopenjp2opj_pi_create_encode(ptr noundef %pi, ptr noundef %cp, i32 noundef %tileno, i32 noundef %pino, i32 noundef %tpnum, i32 noundef %tppos, i32 noundef %t2_mode) #0 {
entry:
  %pi.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %tileno.addr = alloca i32, align 4
  %pino.addr = alloca i32, align 4
  %tpnum.addr = alloca i32, align 4
  %tppos.addr = alloca i32, align 4
  %t2_mode.addr = alloca i32, align 4
  %prog = alloca ptr, align 8
  %i = alloca i32, align 4
  %incr_top = alloca i32, align 4
  %resetX = alloca i32, align 4
  %tcps = alloca ptr, align 8
  %tcp = alloca ptr, align 8
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  store ptr %cp, ptr %cp.addr, align 8, !tbaa !4
  store i32 %tileno, ptr %tileno.addr, align 4, !tbaa !8
  store i32 %pino, ptr %pino.addr, align 4, !tbaa !8
  store i32 %tpnum, ptr %tpnum.addr, align 4, !tbaa !8
  store i32 %tppos, ptr %tppos.addr, align 4, !tbaa !8
  store i32 %t2_mode, ptr %t2_mode.addr, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %prog) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %incr_top) #4
  store i32 1, ptr %incr_top, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %resetX) #4
  store i32 0, ptr %resetX, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcps) #4
  %0 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %tcps1 = getelementptr inbounds %struct.opj_cp, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %tcps1, align 8, !tbaa !12
  %2 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %tcps, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp) #4
  %3 = load ptr, ptr %tcps, align 8, !tbaa !4
  %pocs = getelementptr inbounds %struct.opj_tcp, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [32 x %struct.opj_poc], ptr %pocs, i64 0, i64 %idxprom2
  store ptr %arrayidx3, ptr %tcp, align 8, !tbaa !4
  %5 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prg = getelementptr inbounds %struct.opj_poc, ptr %5, i32 0, i32 9
  %6 = load i32, ptr %prg, align 4, !tbaa !71
  %call = call ptr @gdcmopenjp2opj_j2k_convert_progression_order(i32 noundef %6)
  store ptr %call, ptr %prog, align 8, !tbaa !4
  %7 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %8 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom4 = zext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct.opj_pi_iterator, ptr %7, i64 %idxprom4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx5, i32 0, i32 11
  store i32 1, ptr %first, align 4, !tbaa !73
  %9 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prg6 = getelementptr inbounds %struct.opj_poc, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %prg6, align 4, !tbaa !71
  %11 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %12 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom7 = zext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds %struct.opj_pi_iterator, ptr %11, i64 %idxprom7
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx8, i32 0, i32 12
  %prg9 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 9
  store i32 %10, ptr %prg9, align 4, !tbaa !72
  %13 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %m_specific_param = getelementptr inbounds %struct.opj_cp, ptr %13, i32 0, i32 20
  %m_tp_on = getelementptr inbounds %struct.opj_encoding_param, ptr %m_specific_param, i32 0, i32 4
  %bf.load = load i8, ptr %m_tp_on, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %14 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %rsiz = getelementptr inbounds %struct.opj_cp, ptr %14, i32 0, i32 0
  %15 = load i16, ptr %rsiz, align 8, !tbaa !100
  %conv = zext i16 %15 to i32
  %cmp = icmp sge i32 %conv, 3
  br i1 %cmp, label %land.lhs.true11, label %land.lhs.true16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %16 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %rsiz12 = getelementptr inbounds %struct.opj_cp, ptr %16, i32 0, i32 0
  %17 = load i16, ptr %rsiz12, align 8, !tbaa !100
  %conv13 = zext i16 %17 to i32
  %cmp14 = icmp sle i32 %conv13, 6
  br i1 %cmp14, label %lor.lhs.false, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true11, %land.lhs.true
  %18 = load i32, ptr %t2_mode.addr, align 4, !tbaa !90
  %cmp17 = icmp eq i32 %18, 1
  br i1 %cmp17, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true16, %land.lhs.true11
  %19 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %rsiz19 = getelementptr inbounds %struct.opj_cp, ptr %19, i32 0, i32 0
  %20 = load i16, ptr %rsiz19, align 8, !tbaa !100
  %conv20 = zext i16 %20 to i32
  %cmp21 = icmp sge i32 %conv20, 3
  br i1 %cmp21, label %land.lhs.true23, label %if.then

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %21 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %rsiz24 = getelementptr inbounds %struct.opj_cp, ptr %21, i32 0, i32 0
  %22 = load i16, ptr %rsiz24, align 8, !tbaa !100
  %conv25 = zext i16 %22 to i32
  %cmp26 = icmp sle i32 %conv25, 6
  br i1 %cmp26, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true23, %lor.lhs.false, %entry
  %23 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resS = getelementptr inbounds %struct.opj_poc, ptr %23, i32 0, i32 17
  %24 = load i32, ptr %resS, align 4, !tbaa !103
  %25 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %26 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom28 = zext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds %struct.opj_pi_iterator, ptr %25, i64 %idxprom28
  %poc30 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx29, i32 0, i32 12
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %poc30, i32 0, i32 0
  store i32 %24, ptr %resno0, align 8, !tbaa !75
  %27 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resE = getelementptr inbounds %struct.opj_poc, ptr %27, i32 0, i32 21
  %28 = load i32, ptr %resE, align 4, !tbaa !104
  %29 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %30 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom31 = zext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds %struct.opj_pi_iterator, ptr %29, i64 %idxprom31
  %poc33 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx32, i32 0, i32 12
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %poc33, i32 0, i32 3
  store i32 %28, ptr %resno1, align 4, !tbaa !81
  %31 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compS = getelementptr inbounds %struct.opj_poc, ptr %31, i32 0, i32 18
  %32 = load i32, ptr %compS, align 4, !tbaa !101
  %33 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %34 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom34 = zext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds %struct.opj_pi_iterator, ptr %33, i64 %idxprom34
  %poc36 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx35, i32 0, i32 12
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %poc36, i32 0, i32 1
  store i32 %32, ptr %compno0, align 4, !tbaa !77
  %35 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compE = getelementptr inbounds %struct.opj_poc, ptr %35, i32 0, i32 22
  %36 = load i32, ptr %compE, align 4, !tbaa !102
  %37 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %38 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom37 = zext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds %struct.opj_pi_iterator, ptr %37, i64 %idxprom37
  %poc39 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx38, i32 0, i32 12
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %poc39, i32 0, i32 4
  store i32 %36, ptr %compno1, align 8, !tbaa !83
  %39 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layS = getelementptr inbounds %struct.opj_poc, ptr %39, i32 0, i32 16
  %40 = load i32, ptr %layS, align 4, !tbaa !106
  %41 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %42 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom40 = zext i32 %42 to i64
  %arrayidx41 = getelementptr inbounds %struct.opj_pi_iterator, ptr %41, i64 %idxprom40
  %poc42 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx41, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc42, i32 0, i32 5
  store i32 %40, ptr %layno0, align 4, !tbaa !78
  %43 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layE = getelementptr inbounds %struct.opj_poc, ptr %43, i32 0, i32 20
  %44 = load i32, ptr %layE, align 4, !tbaa !105
  %45 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %46 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom43 = zext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds %struct.opj_pi_iterator, ptr %45, i64 %idxprom43
  %poc45 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx44, i32 0, i32 12
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %poc45, i32 0, i32 2
  store i32 %44, ptr %layno1, align 8, !tbaa !85
  %47 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcS = getelementptr inbounds %struct.opj_poc, ptr %47, i32 0, i32 19
  %48 = load i32, ptr %prcS, align 4, !tbaa !108
  %49 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %50 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom46 = zext i32 %50 to i64
  %arrayidx47 = getelementptr inbounds %struct.opj_pi_iterator, ptr %49, i64 %idxprom46
  %poc48 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx47, i32 0, i32 12
  %precno0 = getelementptr inbounds %struct.opj_poc, ptr %poc48, i32 0, i32 6
  store i32 %48, ptr %precno0, align 8, !tbaa !79
  %51 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcE = getelementptr inbounds %struct.opj_poc, ptr %51, i32 0, i32 23
  %52 = load i32, ptr %prcE, align 4, !tbaa !109
  %53 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %54 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom49 = zext i32 %54 to i64
  %arrayidx50 = getelementptr inbounds %struct.opj_pi_iterator, ptr %53, i64 %idxprom49
  %poc51 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx50, i32 0, i32 12
  %precno1 = getelementptr inbounds %struct.opj_poc, ptr %poc51, i32 0, i32 7
  store i32 %52, ptr %precno1, align 4, !tbaa !86
  %55 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txS = getelementptr inbounds %struct.opj_poc, ptr %55, i32 0, i32 24
  %56 = load i32, ptr %txS, align 4, !tbaa !110
  %57 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %58 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom52 = zext i32 %58 to i64
  %arrayidx53 = getelementptr inbounds %struct.opj_pi_iterator, ptr %57, i64 %idxprom52
  %poc54 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx53, i32 0, i32 12
  %tx0 = getelementptr inbounds %struct.opj_poc, ptr %poc54, i32 0, i32 12
  store i32 %56, ptr %tx0, align 4, !tbaa !118
  %59 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyS = getelementptr inbounds %struct.opj_poc, ptr %59, i32 0, i32 26
  %60 = load i32, ptr %tyS, align 4, !tbaa !112
  %61 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %62 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom55 = zext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds %struct.opj_pi_iterator, ptr %61, i64 %idxprom55
  %poc57 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx56, i32 0, i32 12
  %ty0 = getelementptr inbounds %struct.opj_poc, ptr %poc57, i32 0, i32 14
  store i32 %60, ptr %ty0, align 4, !tbaa !119
  %63 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txE = getelementptr inbounds %struct.opj_poc, ptr %63, i32 0, i32 25
  %64 = load i32, ptr %txE, align 4, !tbaa !111
  %65 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %66 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom58 = zext i32 %66 to i64
  %arrayidx59 = getelementptr inbounds %struct.opj_pi_iterator, ptr %65, i64 %idxprom58
  %poc60 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx59, i32 0, i32 12
  %tx1 = getelementptr inbounds %struct.opj_poc, ptr %poc60, i32 0, i32 13
  store i32 %64, ptr %tx1, align 8, !tbaa !120
  %67 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyE = getelementptr inbounds %struct.opj_poc, ptr %67, i32 0, i32 27
  %68 = load i32, ptr %tyE, align 4, !tbaa !113
  %69 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %70 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom61 = zext i32 %70 to i64
  %arrayidx62 = getelementptr inbounds %struct.opj_pi_iterator, ptr %69, i64 %idxprom61
  %poc63 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx62, i32 0, i32 12
  %ty1 = getelementptr inbounds %struct.opj_poc, ptr %poc63, i32 0, i32 15
  store i32 %68, ptr %ty1, align 8, !tbaa !121
  br label %if.end640

if.else:                                          ; preds = %land.lhs.true23, %land.lhs.true16
  %71 = load i32, ptr %tppos.addr, align 4, !tbaa !8
  %add = add nsw i32 %71, 1
  store i32 %add, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %cmp64 = icmp slt i32 %72, 4
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load ptr, ptr %prog, align 8, !tbaa !4
  %74 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom66 = sext i32 %74 to i64
  %arrayidx67 = getelementptr inbounds i8, ptr %73, i64 %idxprom66
  %75 = load i8, ptr %arrayidx67, align 1, !tbaa !90
  %conv68 = sext i8 %75 to i32
  switch i32 %conv68, label %sw.epilog134 [
    i32 82, label %sw.bb
    i32 67, label %sw.bb79
    i32 76, label %sw.bb90
    i32 80, label %sw.bb101
  ]

sw.bb:                                            ; preds = %for.body
  %76 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resS69 = getelementptr inbounds %struct.opj_poc, ptr %76, i32 0, i32 17
  %77 = load i32, ptr %resS69, align 4, !tbaa !103
  %78 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %79 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom70 = zext i32 %79 to i64
  %arrayidx71 = getelementptr inbounds %struct.opj_pi_iterator, ptr %78, i64 %idxprom70
  %poc72 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx71, i32 0, i32 12
  %resno073 = getelementptr inbounds %struct.opj_poc, ptr %poc72, i32 0, i32 0
  store i32 %77, ptr %resno073, align 8, !tbaa !75
  %80 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resE74 = getelementptr inbounds %struct.opj_poc, ptr %80, i32 0, i32 21
  %81 = load i32, ptr %resE74, align 4, !tbaa !104
  %82 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %83 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom75 = zext i32 %83 to i64
  %arrayidx76 = getelementptr inbounds %struct.opj_pi_iterator, ptr %82, i64 %idxprom75
  %poc77 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx76, i32 0, i32 12
  %resno178 = getelementptr inbounds %struct.opj_poc, ptr %poc77, i32 0, i32 3
  store i32 %81, ptr %resno178, align 4, !tbaa !81
  br label %sw.epilog134

sw.bb79:                                          ; preds = %for.body
  %84 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compS80 = getelementptr inbounds %struct.opj_poc, ptr %84, i32 0, i32 18
  %85 = load i32, ptr %compS80, align 4, !tbaa !101
  %86 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %87 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom81 = zext i32 %87 to i64
  %arrayidx82 = getelementptr inbounds %struct.opj_pi_iterator, ptr %86, i64 %idxprom81
  %poc83 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx82, i32 0, i32 12
  %compno084 = getelementptr inbounds %struct.opj_poc, ptr %poc83, i32 0, i32 1
  store i32 %85, ptr %compno084, align 4, !tbaa !77
  %88 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compE85 = getelementptr inbounds %struct.opj_poc, ptr %88, i32 0, i32 22
  %89 = load i32, ptr %compE85, align 4, !tbaa !102
  %90 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %91 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom86 = zext i32 %91 to i64
  %arrayidx87 = getelementptr inbounds %struct.opj_pi_iterator, ptr %90, i64 %idxprom86
  %poc88 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx87, i32 0, i32 12
  %compno189 = getelementptr inbounds %struct.opj_poc, ptr %poc88, i32 0, i32 4
  store i32 %89, ptr %compno189, align 8, !tbaa !83
  br label %sw.epilog134

sw.bb90:                                          ; preds = %for.body
  %92 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layS91 = getelementptr inbounds %struct.opj_poc, ptr %92, i32 0, i32 16
  %93 = load i32, ptr %layS91, align 4, !tbaa !106
  %94 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %95 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom92 = zext i32 %95 to i64
  %arrayidx93 = getelementptr inbounds %struct.opj_pi_iterator, ptr %94, i64 %idxprom92
  %poc94 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx93, i32 0, i32 12
  %layno095 = getelementptr inbounds %struct.opj_poc, ptr %poc94, i32 0, i32 5
  store i32 %93, ptr %layno095, align 4, !tbaa !78
  %96 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layE96 = getelementptr inbounds %struct.opj_poc, ptr %96, i32 0, i32 20
  %97 = load i32, ptr %layE96, align 4, !tbaa !105
  %98 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %99 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom97 = zext i32 %99 to i64
  %arrayidx98 = getelementptr inbounds %struct.opj_pi_iterator, ptr %98, i64 %idxprom97
  %poc99 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx98, i32 0, i32 12
  %layno1100 = getelementptr inbounds %struct.opj_poc, ptr %poc99, i32 0, i32 2
  store i32 %97, ptr %layno1100, align 8, !tbaa !85
  br label %sw.epilog134

sw.bb101:                                         ; preds = %for.body
  %100 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prg102 = getelementptr inbounds %struct.opj_poc, ptr %100, i32 0, i32 9
  %101 = load i32, ptr %prg102, align 4, !tbaa !71
  switch i32 %101, label %sw.default [
    i32 0, label %sw.bb103
    i32 1, label %sw.bb103
  ]

sw.bb103:                                         ; preds = %sw.bb101, %sw.bb101
  %102 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcS104 = getelementptr inbounds %struct.opj_poc, ptr %102, i32 0, i32 19
  %103 = load i32, ptr %prcS104, align 4, !tbaa !108
  %104 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %105 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom105 = zext i32 %105 to i64
  %arrayidx106 = getelementptr inbounds %struct.opj_pi_iterator, ptr %104, i64 %idxprom105
  %poc107 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx106, i32 0, i32 12
  %precno0108 = getelementptr inbounds %struct.opj_poc, ptr %poc107, i32 0, i32 6
  store i32 %103, ptr %precno0108, align 8, !tbaa !79
  %106 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcE109 = getelementptr inbounds %struct.opj_poc, ptr %106, i32 0, i32 23
  %107 = load i32, ptr %prcE109, align 4, !tbaa !109
  %108 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %109 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom110 = zext i32 %109 to i64
  %arrayidx111 = getelementptr inbounds %struct.opj_pi_iterator, ptr %108, i64 %idxprom110
  %poc112 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx111, i32 0, i32 12
  %precno1113 = getelementptr inbounds %struct.opj_poc, ptr %poc112, i32 0, i32 7
  store i32 %107, ptr %precno1113, align 4, !tbaa !86
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb101
  %110 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txS114 = getelementptr inbounds %struct.opj_poc, ptr %110, i32 0, i32 24
  %111 = load i32, ptr %txS114, align 4, !tbaa !110
  %112 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %113 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom115 = zext i32 %113 to i64
  %arrayidx116 = getelementptr inbounds %struct.opj_pi_iterator, ptr %112, i64 %idxprom115
  %poc117 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx116, i32 0, i32 12
  %tx0118 = getelementptr inbounds %struct.opj_poc, ptr %poc117, i32 0, i32 12
  store i32 %111, ptr %tx0118, align 4, !tbaa !118
  %114 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyS119 = getelementptr inbounds %struct.opj_poc, ptr %114, i32 0, i32 26
  %115 = load i32, ptr %tyS119, align 4, !tbaa !112
  %116 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %117 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom120 = zext i32 %117 to i64
  %arrayidx121 = getelementptr inbounds %struct.opj_pi_iterator, ptr %116, i64 %idxprom120
  %poc122 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx121, i32 0, i32 12
  %ty0123 = getelementptr inbounds %struct.opj_poc, ptr %poc122, i32 0, i32 14
  store i32 %115, ptr %ty0123, align 4, !tbaa !119
  %118 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txE124 = getelementptr inbounds %struct.opj_poc, ptr %118, i32 0, i32 25
  %119 = load i32, ptr %txE124, align 4, !tbaa !111
  %120 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %121 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom125 = zext i32 %121 to i64
  %arrayidx126 = getelementptr inbounds %struct.opj_pi_iterator, ptr %120, i64 %idxprom125
  %poc127 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx126, i32 0, i32 12
  %tx1128 = getelementptr inbounds %struct.opj_poc, ptr %poc127, i32 0, i32 13
  store i32 %119, ptr %tx1128, align 8, !tbaa !120
  %122 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyE129 = getelementptr inbounds %struct.opj_poc, ptr %122, i32 0, i32 27
  %123 = load i32, ptr %tyE129, align 4, !tbaa !113
  %124 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %125 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom130 = zext i32 %125 to i64
  %arrayidx131 = getelementptr inbounds %struct.opj_pi_iterator, ptr %124, i64 %idxprom130
  %poc132 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx131, i32 0, i32 12
  %ty1133 = getelementptr inbounds %struct.opj_poc, ptr %poc132, i32 0, i32 15
  store i32 %123, ptr %ty1133, align 8, !tbaa !121
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb103
  br label %sw.epilog134

sw.epilog134:                                     ; preds = %for.body, %sw.epilog, %sw.bb90, %sw.bb79, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog134
  %126 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %126, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  %127 = load i32, ptr %tpnum.addr, align 4, !tbaa !8
  %cmp135 = icmp eq i32 %127, 0
  br i1 %cmp135, label %if.then137, label %if.else252

if.then137:                                       ; preds = %for.end
  %128 = load i32, ptr %tppos.addr, align 4, !tbaa !8
  store i32 %128, ptr %i, align 4, !tbaa !8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc250, %if.then137
  %129 = load i32, ptr %i, align 4, !tbaa !8
  %cmp139 = icmp sge i32 %129, 0
  br i1 %cmp139, label %for.body141, label %for.end251

for.body141:                                      ; preds = %for.cond138
  %130 = load ptr, ptr %prog, align 8, !tbaa !4
  %131 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom142 = sext i32 %131 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %130, i64 %idxprom142
  %132 = load i8, ptr %arrayidx143, align 1, !tbaa !90
  %conv144 = sext i8 %132 to i32
  switch i32 %conv144, label %sw.epilog249 [
    i32 67, label %sw.bb145
    i32 82, label %sw.bb160
    i32 76, label %sw.bb175
    i32 80, label %sw.bb190
  ]

sw.bb145:                                         ; preds = %for.body141
  %133 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compS146 = getelementptr inbounds %struct.opj_poc, ptr %133, i32 0, i32 18
  %134 = load i32, ptr %compS146, align 4, !tbaa !101
  %135 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t = getelementptr inbounds %struct.opj_poc, ptr %135, i32 0, i32 32
  store i32 %134, ptr %comp_t, align 4, !tbaa !123
  %136 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t147 = getelementptr inbounds %struct.opj_poc, ptr %136, i32 0, i32 32
  %137 = load i32, ptr %comp_t147, align 4, !tbaa !123
  %138 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %139 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom148 = zext i32 %139 to i64
  %arrayidx149 = getelementptr inbounds %struct.opj_pi_iterator, ptr %138, i64 %idxprom148
  %poc150 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx149, i32 0, i32 12
  %compno0151 = getelementptr inbounds %struct.opj_poc, ptr %poc150, i32 0, i32 1
  store i32 %137, ptr %compno0151, align 4, !tbaa !77
  %140 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t152 = getelementptr inbounds %struct.opj_poc, ptr %140, i32 0, i32 32
  %141 = load i32, ptr %comp_t152, align 4, !tbaa !123
  %add153 = add i32 %141, 1
  %142 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %143 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom154 = zext i32 %143 to i64
  %arrayidx155 = getelementptr inbounds %struct.opj_pi_iterator, ptr %142, i64 %idxprom154
  %poc156 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx155, i32 0, i32 12
  %compno1157 = getelementptr inbounds %struct.opj_poc, ptr %poc156, i32 0, i32 4
  store i32 %add153, ptr %compno1157, align 8, !tbaa !83
  %144 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t158 = getelementptr inbounds %struct.opj_poc, ptr %144, i32 0, i32 32
  %145 = load i32, ptr %comp_t158, align 4, !tbaa !123
  %add159 = add i32 %145, 1
  store i32 %add159, ptr %comp_t158, align 4, !tbaa !123
  br label %sw.epilog249

sw.bb160:                                         ; preds = %for.body141
  %146 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resS161 = getelementptr inbounds %struct.opj_poc, ptr %146, i32 0, i32 17
  %147 = load i32, ptr %resS161, align 4, !tbaa !103
  %148 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t = getelementptr inbounds %struct.opj_poc, ptr %148, i32 0, i32 31
  store i32 %147, ptr %res_t, align 4, !tbaa !124
  %149 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t162 = getelementptr inbounds %struct.opj_poc, ptr %149, i32 0, i32 31
  %150 = load i32, ptr %res_t162, align 4, !tbaa !124
  %151 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %152 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom163 = zext i32 %152 to i64
  %arrayidx164 = getelementptr inbounds %struct.opj_pi_iterator, ptr %151, i64 %idxprom163
  %poc165 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx164, i32 0, i32 12
  %resno0166 = getelementptr inbounds %struct.opj_poc, ptr %poc165, i32 0, i32 0
  store i32 %150, ptr %resno0166, align 8, !tbaa !75
  %153 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t167 = getelementptr inbounds %struct.opj_poc, ptr %153, i32 0, i32 31
  %154 = load i32, ptr %res_t167, align 4, !tbaa !124
  %add168 = add i32 %154, 1
  %155 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %156 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom169 = zext i32 %156 to i64
  %arrayidx170 = getelementptr inbounds %struct.opj_pi_iterator, ptr %155, i64 %idxprom169
  %poc171 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx170, i32 0, i32 12
  %resno1172 = getelementptr inbounds %struct.opj_poc, ptr %poc171, i32 0, i32 3
  store i32 %add168, ptr %resno1172, align 4, !tbaa !81
  %157 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t173 = getelementptr inbounds %struct.opj_poc, ptr %157, i32 0, i32 31
  %158 = load i32, ptr %res_t173, align 4, !tbaa !124
  %add174 = add i32 %158, 1
  store i32 %add174, ptr %res_t173, align 4, !tbaa !124
  br label %sw.epilog249

sw.bb175:                                         ; preds = %for.body141
  %159 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layS176 = getelementptr inbounds %struct.opj_poc, ptr %159, i32 0, i32 16
  %160 = load i32, ptr %layS176, align 4, !tbaa !106
  %161 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t = getelementptr inbounds %struct.opj_poc, ptr %161, i32 0, i32 30
  store i32 %160, ptr %lay_t, align 4, !tbaa !125
  %162 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t177 = getelementptr inbounds %struct.opj_poc, ptr %162, i32 0, i32 30
  %163 = load i32, ptr %lay_t177, align 4, !tbaa !125
  %164 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %165 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom178 = zext i32 %165 to i64
  %arrayidx179 = getelementptr inbounds %struct.opj_pi_iterator, ptr %164, i64 %idxprom178
  %poc180 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx179, i32 0, i32 12
  %layno0181 = getelementptr inbounds %struct.opj_poc, ptr %poc180, i32 0, i32 5
  store i32 %163, ptr %layno0181, align 4, !tbaa !78
  %166 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t182 = getelementptr inbounds %struct.opj_poc, ptr %166, i32 0, i32 30
  %167 = load i32, ptr %lay_t182, align 4, !tbaa !125
  %add183 = add i32 %167, 1
  %168 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %169 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom184 = zext i32 %169 to i64
  %arrayidx185 = getelementptr inbounds %struct.opj_pi_iterator, ptr %168, i64 %idxprom184
  %poc186 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx185, i32 0, i32 12
  %layno1187 = getelementptr inbounds %struct.opj_poc, ptr %poc186, i32 0, i32 2
  store i32 %add183, ptr %layno1187, align 8, !tbaa !85
  %170 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t188 = getelementptr inbounds %struct.opj_poc, ptr %170, i32 0, i32 30
  %171 = load i32, ptr %lay_t188, align 4, !tbaa !125
  %add189 = add i32 %171, 1
  store i32 %add189, ptr %lay_t188, align 4, !tbaa !125
  br label %sw.epilog249

sw.bb190:                                         ; preds = %for.body141
  %172 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prg191 = getelementptr inbounds %struct.opj_poc, ptr %172, i32 0, i32 9
  %173 = load i32, ptr %prg191, align 4, !tbaa !71
  switch i32 %173, label %sw.default207 [
    i32 0, label %sw.bb192
    i32 1, label %sw.bb192
  ]

sw.bb192:                                         ; preds = %sw.bb190, %sw.bb190
  %174 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcS193 = getelementptr inbounds %struct.opj_poc, ptr %174, i32 0, i32 19
  %175 = load i32, ptr %prcS193, align 4, !tbaa !108
  %176 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t = getelementptr inbounds %struct.opj_poc, ptr %176, i32 0, i32 33
  store i32 %175, ptr %prc_t, align 4, !tbaa !126
  %177 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t194 = getelementptr inbounds %struct.opj_poc, ptr %177, i32 0, i32 33
  %178 = load i32, ptr %prc_t194, align 4, !tbaa !126
  %179 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %180 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom195 = zext i32 %180 to i64
  %arrayidx196 = getelementptr inbounds %struct.opj_pi_iterator, ptr %179, i64 %idxprom195
  %poc197 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx196, i32 0, i32 12
  %precno0198 = getelementptr inbounds %struct.opj_poc, ptr %poc197, i32 0, i32 6
  store i32 %178, ptr %precno0198, align 8, !tbaa !79
  %181 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t199 = getelementptr inbounds %struct.opj_poc, ptr %181, i32 0, i32 33
  %182 = load i32, ptr %prc_t199, align 4, !tbaa !126
  %add200 = add i32 %182, 1
  %183 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %184 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom201 = zext i32 %184 to i64
  %arrayidx202 = getelementptr inbounds %struct.opj_pi_iterator, ptr %183, i64 %idxprom201
  %poc203 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx202, i32 0, i32 12
  %precno1204 = getelementptr inbounds %struct.opj_poc, ptr %poc203, i32 0, i32 7
  store i32 %add200, ptr %precno1204, align 4, !tbaa !86
  %185 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t205 = getelementptr inbounds %struct.opj_poc, ptr %185, i32 0, i32 33
  %186 = load i32, ptr %prc_t205, align 4, !tbaa !126
  %add206 = add i32 %186, 1
  store i32 %add206, ptr %prc_t205, align 4, !tbaa !126
  br label %sw.epilog248

sw.default207:                                    ; preds = %sw.bb190
  %187 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txS208 = getelementptr inbounds %struct.opj_poc, ptr %187, i32 0, i32 24
  %188 = load i32, ptr %txS208, align 4, !tbaa !110
  %189 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t = getelementptr inbounds %struct.opj_poc, ptr %189, i32 0, i32 34
  store i32 %188, ptr %tx0_t, align 4, !tbaa !127
  %190 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyS209 = getelementptr inbounds %struct.opj_poc, ptr %190, i32 0, i32 26
  %191 = load i32, ptr %tyS209, align 4, !tbaa !112
  %192 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t = getelementptr inbounds %struct.opj_poc, ptr %192, i32 0, i32 35
  store i32 %191, ptr %ty0_t, align 4, !tbaa !128
  %193 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t210 = getelementptr inbounds %struct.opj_poc, ptr %193, i32 0, i32 34
  %194 = load i32, ptr %tx0_t210, align 4, !tbaa !127
  %195 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %196 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom211 = zext i32 %196 to i64
  %arrayidx212 = getelementptr inbounds %struct.opj_pi_iterator, ptr %195, i64 %idxprom211
  %poc213 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx212, i32 0, i32 12
  %tx0214 = getelementptr inbounds %struct.opj_poc, ptr %poc213, i32 0, i32 12
  store i32 %194, ptr %tx0214, align 4, !tbaa !118
  %197 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t215 = getelementptr inbounds %struct.opj_poc, ptr %197, i32 0, i32 34
  %198 = load i32, ptr %tx0_t215, align 4, !tbaa !127
  %199 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_poc, ptr %199, i32 0, i32 28
  %200 = load i32, ptr %dx, align 4, !tbaa !114
  %add216 = add i32 %198, %200
  %201 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t217 = getelementptr inbounds %struct.opj_poc, ptr %201, i32 0, i32 34
  %202 = load i32, ptr %tx0_t217, align 4, !tbaa !127
  %203 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx218 = getelementptr inbounds %struct.opj_poc, ptr %203, i32 0, i32 28
  %204 = load i32, ptr %dx218, align 4, !tbaa !114
  %rem = urem i32 %202, %204
  %sub = sub i32 %add216, %rem
  %205 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %206 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom219 = zext i32 %206 to i64
  %arrayidx220 = getelementptr inbounds %struct.opj_pi_iterator, ptr %205, i64 %idxprom219
  %poc221 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx220, i32 0, i32 12
  %tx1222 = getelementptr inbounds %struct.opj_poc, ptr %poc221, i32 0, i32 13
  store i32 %sub, ptr %tx1222, align 8, !tbaa !120
  %207 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t223 = getelementptr inbounds %struct.opj_poc, ptr %207, i32 0, i32 35
  %208 = load i32, ptr %ty0_t223, align 4, !tbaa !128
  %209 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %210 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom224 = zext i32 %210 to i64
  %arrayidx225 = getelementptr inbounds %struct.opj_pi_iterator, ptr %209, i64 %idxprom224
  %poc226 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx225, i32 0, i32 12
  %ty0227 = getelementptr inbounds %struct.opj_poc, ptr %poc226, i32 0, i32 14
  store i32 %208, ptr %ty0227, align 4, !tbaa !119
  %211 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t228 = getelementptr inbounds %struct.opj_poc, ptr %211, i32 0, i32 35
  %212 = load i32, ptr %ty0_t228, align 4, !tbaa !128
  %213 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_poc, ptr %213, i32 0, i32 29
  %214 = load i32, ptr %dy, align 4, !tbaa !115
  %add229 = add i32 %212, %214
  %215 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t230 = getelementptr inbounds %struct.opj_poc, ptr %215, i32 0, i32 35
  %216 = load i32, ptr %ty0_t230, align 4, !tbaa !128
  %217 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy231 = getelementptr inbounds %struct.opj_poc, ptr %217, i32 0, i32 29
  %218 = load i32, ptr %dy231, align 4, !tbaa !115
  %rem232 = urem i32 %216, %218
  %sub233 = sub i32 %add229, %rem232
  %219 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %220 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom234 = zext i32 %220 to i64
  %arrayidx235 = getelementptr inbounds %struct.opj_pi_iterator, ptr %219, i64 %idxprom234
  %poc236 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx235, i32 0, i32 12
  %ty1237 = getelementptr inbounds %struct.opj_poc, ptr %poc236, i32 0, i32 15
  store i32 %sub233, ptr %ty1237, align 8, !tbaa !121
  %221 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %222 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom238 = zext i32 %222 to i64
  %arrayidx239 = getelementptr inbounds %struct.opj_pi_iterator, ptr %221, i64 %idxprom238
  %poc240 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx239, i32 0, i32 12
  %tx1241 = getelementptr inbounds %struct.opj_poc, ptr %poc240, i32 0, i32 13
  %223 = load i32, ptr %tx1241, align 8, !tbaa !120
  %224 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t242 = getelementptr inbounds %struct.opj_poc, ptr %224, i32 0, i32 34
  store i32 %223, ptr %tx0_t242, align 4, !tbaa !127
  %225 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %226 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom243 = zext i32 %226 to i64
  %arrayidx244 = getelementptr inbounds %struct.opj_pi_iterator, ptr %225, i64 %idxprom243
  %poc245 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx244, i32 0, i32 12
  %ty1246 = getelementptr inbounds %struct.opj_poc, ptr %poc245, i32 0, i32 15
  %227 = load i32, ptr %ty1246, align 8, !tbaa !121
  %228 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t247 = getelementptr inbounds %struct.opj_poc, ptr %228, i32 0, i32 35
  store i32 %227, ptr %ty0_t247, align 4, !tbaa !128
  br label %sw.epilog248

sw.epilog248:                                     ; preds = %sw.default207, %sw.bb192
  br label %sw.epilog249

sw.epilog249:                                     ; preds = %for.body141, %sw.epilog248, %sw.bb175, %sw.bb160, %sw.bb145
  br label %for.inc250

for.inc250:                                       ; preds = %sw.epilog249
  %229 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %229, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond138, !llvm.loop !129

for.end251:                                       ; preds = %for.cond138
  store i32 1, ptr %incr_top, align 4, !tbaa !8
  br label %if.end639

if.else252:                                       ; preds = %for.end
  %230 = load i32, ptr %tppos.addr, align 4, !tbaa !8
  store i32 %230, ptr %i, align 4, !tbaa !8
  br label %for.cond253

for.cond253:                                      ; preds = %for.inc636, %if.else252
  %231 = load i32, ptr %i, align 4, !tbaa !8
  %cmp254 = icmp sge i32 %231, 0
  br i1 %cmp254, label %for.body256, label %for.end638

for.body256:                                      ; preds = %for.cond253
  %232 = load ptr, ptr %prog, align 8, !tbaa !4
  %233 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom257 = sext i32 %233 to i64
  %arrayidx258 = getelementptr inbounds i8, ptr %232, i64 %idxprom257
  %234 = load i8, ptr %arrayidx258, align 1, !tbaa !90
  %conv259 = sext i8 %234 to i32
  switch i32 %conv259, label %sw.epilog344 [
    i32 67, label %sw.bb260
    i32 82, label %sw.bb272
    i32 76, label %sw.bb284
    i32 80, label %sw.bb296
  ]

sw.bb260:                                         ; preds = %for.body256
  %235 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t261 = getelementptr inbounds %struct.opj_poc, ptr %235, i32 0, i32 32
  %236 = load i32, ptr %comp_t261, align 4, !tbaa !123
  %sub262 = sub i32 %236, 1
  %237 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %238 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom263 = zext i32 %238 to i64
  %arrayidx264 = getelementptr inbounds %struct.opj_pi_iterator, ptr %237, i64 %idxprom263
  %poc265 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx264, i32 0, i32 12
  %compno0266 = getelementptr inbounds %struct.opj_poc, ptr %poc265, i32 0, i32 1
  store i32 %sub262, ptr %compno0266, align 4, !tbaa !77
  %239 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t267 = getelementptr inbounds %struct.opj_poc, ptr %239, i32 0, i32 32
  %240 = load i32, ptr %comp_t267, align 4, !tbaa !123
  %241 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %242 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom268 = zext i32 %242 to i64
  %arrayidx269 = getelementptr inbounds %struct.opj_pi_iterator, ptr %241, i64 %idxprom268
  %poc270 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx269, i32 0, i32 12
  %compno1271 = getelementptr inbounds %struct.opj_poc, ptr %poc270, i32 0, i32 4
  store i32 %240, ptr %compno1271, align 8, !tbaa !83
  br label %sw.epilog344

sw.bb272:                                         ; preds = %for.body256
  %243 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t273 = getelementptr inbounds %struct.opj_poc, ptr %243, i32 0, i32 31
  %244 = load i32, ptr %res_t273, align 4, !tbaa !124
  %sub274 = sub i32 %244, 1
  %245 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %246 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom275 = zext i32 %246 to i64
  %arrayidx276 = getelementptr inbounds %struct.opj_pi_iterator, ptr %245, i64 %idxprom275
  %poc277 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx276, i32 0, i32 12
  %resno0278 = getelementptr inbounds %struct.opj_poc, ptr %poc277, i32 0, i32 0
  store i32 %sub274, ptr %resno0278, align 8, !tbaa !75
  %247 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t279 = getelementptr inbounds %struct.opj_poc, ptr %247, i32 0, i32 31
  %248 = load i32, ptr %res_t279, align 4, !tbaa !124
  %249 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %250 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom280 = zext i32 %250 to i64
  %arrayidx281 = getelementptr inbounds %struct.opj_pi_iterator, ptr %249, i64 %idxprom280
  %poc282 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx281, i32 0, i32 12
  %resno1283 = getelementptr inbounds %struct.opj_poc, ptr %poc282, i32 0, i32 3
  store i32 %248, ptr %resno1283, align 4, !tbaa !81
  br label %sw.epilog344

sw.bb284:                                         ; preds = %for.body256
  %251 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t285 = getelementptr inbounds %struct.opj_poc, ptr %251, i32 0, i32 30
  %252 = load i32, ptr %lay_t285, align 4, !tbaa !125
  %sub286 = sub i32 %252, 1
  %253 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %254 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom287 = zext i32 %254 to i64
  %arrayidx288 = getelementptr inbounds %struct.opj_pi_iterator, ptr %253, i64 %idxprom287
  %poc289 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx288, i32 0, i32 12
  %layno0290 = getelementptr inbounds %struct.opj_poc, ptr %poc289, i32 0, i32 5
  store i32 %sub286, ptr %layno0290, align 4, !tbaa !78
  %255 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t291 = getelementptr inbounds %struct.opj_poc, ptr %255, i32 0, i32 30
  %256 = load i32, ptr %lay_t291, align 4, !tbaa !125
  %257 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %258 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom292 = zext i32 %258 to i64
  %arrayidx293 = getelementptr inbounds %struct.opj_pi_iterator, ptr %257, i64 %idxprom292
  %poc294 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx293, i32 0, i32 12
  %layno1295 = getelementptr inbounds %struct.opj_poc, ptr %poc294, i32 0, i32 2
  store i32 %256, ptr %layno1295, align 8, !tbaa !85
  br label %sw.epilog344

sw.bb296:                                         ; preds = %for.body256
  %259 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prg297 = getelementptr inbounds %struct.opj_poc, ptr %259, i32 0, i32 9
  %260 = load i32, ptr %prg297, align 4, !tbaa !71
  switch i32 %260, label %sw.default310 [
    i32 0, label %sw.bb298
    i32 1, label %sw.bb298
  ]

sw.bb298:                                         ; preds = %sw.bb296, %sw.bb296
  %261 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t299 = getelementptr inbounds %struct.opj_poc, ptr %261, i32 0, i32 33
  %262 = load i32, ptr %prc_t299, align 4, !tbaa !126
  %sub300 = sub i32 %262, 1
  %263 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %264 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom301 = zext i32 %264 to i64
  %arrayidx302 = getelementptr inbounds %struct.opj_pi_iterator, ptr %263, i64 %idxprom301
  %poc303 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx302, i32 0, i32 12
  %precno0304 = getelementptr inbounds %struct.opj_poc, ptr %poc303, i32 0, i32 6
  store i32 %sub300, ptr %precno0304, align 8, !tbaa !79
  %265 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t305 = getelementptr inbounds %struct.opj_poc, ptr %265, i32 0, i32 33
  %266 = load i32, ptr %prc_t305, align 4, !tbaa !126
  %267 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %268 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom306 = zext i32 %268 to i64
  %arrayidx307 = getelementptr inbounds %struct.opj_pi_iterator, ptr %267, i64 %idxprom306
  %poc308 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx307, i32 0, i32 12
  %precno1309 = getelementptr inbounds %struct.opj_poc, ptr %poc308, i32 0, i32 7
  store i32 %266, ptr %precno1309, align 4, !tbaa !86
  br label %sw.epilog343

sw.default310:                                    ; preds = %sw.bb296
  %269 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t311 = getelementptr inbounds %struct.opj_poc, ptr %269, i32 0, i32 34
  %270 = load i32, ptr %tx0_t311, align 4, !tbaa !127
  %271 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx312 = getelementptr inbounds %struct.opj_poc, ptr %271, i32 0, i32 28
  %272 = load i32, ptr %dx312, align 4, !tbaa !114
  %sub313 = sub i32 %270, %272
  %273 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t314 = getelementptr inbounds %struct.opj_poc, ptr %273, i32 0, i32 34
  %274 = load i32, ptr %tx0_t314, align 4, !tbaa !127
  %275 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx315 = getelementptr inbounds %struct.opj_poc, ptr %275, i32 0, i32 28
  %276 = load i32, ptr %dx315, align 4, !tbaa !114
  %rem316 = urem i32 %274, %276
  %sub317 = sub i32 %sub313, %rem316
  %277 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %278 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom318 = zext i32 %278 to i64
  %arrayidx319 = getelementptr inbounds %struct.opj_pi_iterator, ptr %277, i64 %idxprom318
  %poc320 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx319, i32 0, i32 12
  %tx0321 = getelementptr inbounds %struct.opj_poc, ptr %poc320, i32 0, i32 12
  store i32 %sub317, ptr %tx0321, align 4, !tbaa !118
  %279 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t322 = getelementptr inbounds %struct.opj_poc, ptr %279, i32 0, i32 34
  %280 = load i32, ptr %tx0_t322, align 4, !tbaa !127
  %281 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %282 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom323 = zext i32 %282 to i64
  %arrayidx324 = getelementptr inbounds %struct.opj_pi_iterator, ptr %281, i64 %idxprom323
  %poc325 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx324, i32 0, i32 12
  %tx1326 = getelementptr inbounds %struct.opj_poc, ptr %poc325, i32 0, i32 13
  store i32 %280, ptr %tx1326, align 8, !tbaa !120
  %283 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t327 = getelementptr inbounds %struct.opj_poc, ptr %283, i32 0, i32 35
  %284 = load i32, ptr %ty0_t327, align 4, !tbaa !128
  %285 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy328 = getelementptr inbounds %struct.opj_poc, ptr %285, i32 0, i32 29
  %286 = load i32, ptr %dy328, align 4, !tbaa !115
  %sub329 = sub i32 %284, %286
  %287 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t330 = getelementptr inbounds %struct.opj_poc, ptr %287, i32 0, i32 35
  %288 = load i32, ptr %ty0_t330, align 4, !tbaa !128
  %289 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy331 = getelementptr inbounds %struct.opj_poc, ptr %289, i32 0, i32 29
  %290 = load i32, ptr %dy331, align 4, !tbaa !115
  %rem332 = urem i32 %288, %290
  %sub333 = sub i32 %sub329, %rem332
  %291 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %292 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom334 = zext i32 %292 to i64
  %arrayidx335 = getelementptr inbounds %struct.opj_pi_iterator, ptr %291, i64 %idxprom334
  %poc336 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx335, i32 0, i32 12
  %ty0337 = getelementptr inbounds %struct.opj_poc, ptr %poc336, i32 0, i32 14
  store i32 %sub333, ptr %ty0337, align 4, !tbaa !119
  %293 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t338 = getelementptr inbounds %struct.opj_poc, ptr %293, i32 0, i32 35
  %294 = load i32, ptr %ty0_t338, align 4, !tbaa !128
  %295 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %296 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom339 = zext i32 %296 to i64
  %arrayidx340 = getelementptr inbounds %struct.opj_pi_iterator, ptr %295, i64 %idxprom339
  %poc341 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx340, i32 0, i32 12
  %ty1342 = getelementptr inbounds %struct.opj_poc, ptr %poc341, i32 0, i32 15
  store i32 %294, ptr %ty1342, align 8, !tbaa !121
  br label %sw.epilog343

sw.epilog343:                                     ; preds = %sw.default310, %sw.bb298
  br label %sw.epilog344

sw.epilog344:                                     ; preds = %for.body256, %sw.epilog343, %sw.bb284, %sw.bb272, %sw.bb260
  %297 = load i32, ptr %incr_top, align 4, !tbaa !8
  %cmp345 = icmp eq i32 %297, 1
  br i1 %cmp345, label %if.then347, label %if.end635

if.then347:                                       ; preds = %sw.epilog344
  %298 = load ptr, ptr %prog, align 8, !tbaa !4
  %299 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom348 = sext i32 %299 to i64
  %arrayidx349 = getelementptr inbounds i8, ptr %298, i64 %idxprom348
  %300 = load i8, ptr %arrayidx349, align 1, !tbaa !90
  %conv350 = sext i8 %300 to i32
  switch i32 %conv350, label %sw.epilog634 [
    i32 82, label %sw.bb351
    i32 67, label %sw.bb392
    i32 76, label %sw.bb434
    i32 80, label %sw.bb476
  ]

sw.bb351:                                         ; preds = %if.then347
  %301 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t352 = getelementptr inbounds %struct.opj_poc, ptr %301, i32 0, i32 31
  %302 = load i32, ptr %res_t352, align 4, !tbaa !124
  %303 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resE353 = getelementptr inbounds %struct.opj_poc, ptr %303, i32 0, i32 21
  %304 = load i32, ptr %resE353, align 4, !tbaa !104
  %cmp354 = icmp eq i32 %302, %304
  br i1 %cmp354, label %if.then356, label %if.else377

if.then356:                                       ; preds = %sw.bb351
  %305 = load i32, ptr %i, align 4, !tbaa !8
  %sub357 = sub nsw i32 %305, 1
  %306 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %307 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %308 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %309 = load ptr, ptr %prog, align 8, !tbaa !4
  %call358 = call i32 @opj_pi_check_next_level(i32 noundef %sub357, ptr noundef %306, i32 noundef %307, i32 noundef %308, ptr noundef %309)
  %tobool359 = icmp ne i32 %call358, 0
  br i1 %tobool359, label %if.then360, label %if.else376

if.then360:                                       ; preds = %if.then356
  %310 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resS361 = getelementptr inbounds %struct.opj_poc, ptr %310, i32 0, i32 17
  %311 = load i32, ptr %resS361, align 4, !tbaa !103
  %312 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t362 = getelementptr inbounds %struct.opj_poc, ptr %312, i32 0, i32 31
  store i32 %311, ptr %res_t362, align 4, !tbaa !124
  %313 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t363 = getelementptr inbounds %struct.opj_poc, ptr %313, i32 0, i32 31
  %314 = load i32, ptr %res_t363, align 4, !tbaa !124
  %315 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %316 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom364 = zext i32 %316 to i64
  %arrayidx365 = getelementptr inbounds %struct.opj_pi_iterator, ptr %315, i64 %idxprom364
  %poc366 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx365, i32 0, i32 12
  %resno0367 = getelementptr inbounds %struct.opj_poc, ptr %poc366, i32 0, i32 0
  store i32 %314, ptr %resno0367, align 8, !tbaa !75
  %317 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t368 = getelementptr inbounds %struct.opj_poc, ptr %317, i32 0, i32 31
  %318 = load i32, ptr %res_t368, align 4, !tbaa !124
  %add369 = add i32 %318, 1
  %319 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %320 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom370 = zext i32 %320 to i64
  %arrayidx371 = getelementptr inbounds %struct.opj_pi_iterator, ptr %319, i64 %idxprom370
  %poc372 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx371, i32 0, i32 12
  %resno1373 = getelementptr inbounds %struct.opj_poc, ptr %poc372, i32 0, i32 3
  store i32 %add369, ptr %resno1373, align 4, !tbaa !81
  %321 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t374 = getelementptr inbounds %struct.opj_poc, ptr %321, i32 0, i32 31
  %322 = load i32, ptr %res_t374, align 4, !tbaa !124
  %add375 = add i32 %322, 1
  store i32 %add375, ptr %res_t374, align 4, !tbaa !124
  store i32 1, ptr %incr_top, align 4, !tbaa !8
  br label %if.end

if.else376:                                       ; preds = %if.then356
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else376, %if.then360
  br label %if.end391

if.else377:                                       ; preds = %sw.bb351
  %323 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t378 = getelementptr inbounds %struct.opj_poc, ptr %323, i32 0, i32 31
  %324 = load i32, ptr %res_t378, align 4, !tbaa !124
  %325 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %326 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom379 = zext i32 %326 to i64
  %arrayidx380 = getelementptr inbounds %struct.opj_pi_iterator, ptr %325, i64 %idxprom379
  %poc381 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx380, i32 0, i32 12
  %resno0382 = getelementptr inbounds %struct.opj_poc, ptr %poc381, i32 0, i32 0
  store i32 %324, ptr %resno0382, align 8, !tbaa !75
  %327 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t383 = getelementptr inbounds %struct.opj_poc, ptr %327, i32 0, i32 31
  %328 = load i32, ptr %res_t383, align 4, !tbaa !124
  %add384 = add i32 %328, 1
  %329 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %330 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom385 = zext i32 %330 to i64
  %arrayidx386 = getelementptr inbounds %struct.opj_pi_iterator, ptr %329, i64 %idxprom385
  %poc387 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx386, i32 0, i32 12
  %resno1388 = getelementptr inbounds %struct.opj_poc, ptr %poc387, i32 0, i32 3
  store i32 %add384, ptr %resno1388, align 4, !tbaa !81
  %331 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t389 = getelementptr inbounds %struct.opj_poc, ptr %331, i32 0, i32 31
  %332 = load i32, ptr %res_t389, align 4, !tbaa !124
  %add390 = add i32 %332, 1
  store i32 %add390, ptr %res_t389, align 4, !tbaa !124
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end391

if.end391:                                        ; preds = %if.else377, %if.end
  br label %sw.epilog634

sw.bb392:                                         ; preds = %if.then347
  %333 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t393 = getelementptr inbounds %struct.opj_poc, ptr %333, i32 0, i32 32
  %334 = load i32, ptr %comp_t393, align 4, !tbaa !123
  %335 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compE394 = getelementptr inbounds %struct.opj_poc, ptr %335, i32 0, i32 22
  %336 = load i32, ptr %compE394, align 4, !tbaa !102
  %cmp395 = icmp eq i32 %334, %336
  br i1 %cmp395, label %if.then397, label %if.else419

if.then397:                                       ; preds = %sw.bb392
  %337 = load i32, ptr %i, align 4, !tbaa !8
  %sub398 = sub nsw i32 %337, 1
  %338 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %339 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %340 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %341 = load ptr, ptr %prog, align 8, !tbaa !4
  %call399 = call i32 @opj_pi_check_next_level(i32 noundef %sub398, ptr noundef %338, i32 noundef %339, i32 noundef %340, ptr noundef %341)
  %tobool400 = icmp ne i32 %call399, 0
  br i1 %tobool400, label %if.then401, label %if.else417

if.then401:                                       ; preds = %if.then397
  %342 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compS402 = getelementptr inbounds %struct.opj_poc, ptr %342, i32 0, i32 18
  %343 = load i32, ptr %compS402, align 4, !tbaa !101
  %344 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t403 = getelementptr inbounds %struct.opj_poc, ptr %344, i32 0, i32 32
  store i32 %343, ptr %comp_t403, align 4, !tbaa !123
  %345 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t404 = getelementptr inbounds %struct.opj_poc, ptr %345, i32 0, i32 32
  %346 = load i32, ptr %comp_t404, align 4, !tbaa !123
  %347 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %348 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom405 = zext i32 %348 to i64
  %arrayidx406 = getelementptr inbounds %struct.opj_pi_iterator, ptr %347, i64 %idxprom405
  %poc407 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx406, i32 0, i32 12
  %compno0408 = getelementptr inbounds %struct.opj_poc, ptr %poc407, i32 0, i32 1
  store i32 %346, ptr %compno0408, align 4, !tbaa !77
  %349 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t409 = getelementptr inbounds %struct.opj_poc, ptr %349, i32 0, i32 32
  %350 = load i32, ptr %comp_t409, align 4, !tbaa !123
  %add410 = add i32 %350, 1
  %351 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %352 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom411 = zext i32 %352 to i64
  %arrayidx412 = getelementptr inbounds %struct.opj_pi_iterator, ptr %351, i64 %idxprom411
  %poc413 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx412, i32 0, i32 12
  %compno1414 = getelementptr inbounds %struct.opj_poc, ptr %poc413, i32 0, i32 4
  store i32 %add410, ptr %compno1414, align 8, !tbaa !83
  %353 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t415 = getelementptr inbounds %struct.opj_poc, ptr %353, i32 0, i32 32
  %354 = load i32, ptr %comp_t415, align 4, !tbaa !123
  %add416 = add i32 %354, 1
  store i32 %add416, ptr %comp_t415, align 4, !tbaa !123
  store i32 1, ptr %incr_top, align 4, !tbaa !8
  br label %if.end418

if.else417:                                       ; preds = %if.then397
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end418

if.end418:                                        ; preds = %if.else417, %if.then401
  br label %if.end433

if.else419:                                       ; preds = %sw.bb392
  %355 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t420 = getelementptr inbounds %struct.opj_poc, ptr %355, i32 0, i32 32
  %356 = load i32, ptr %comp_t420, align 4, !tbaa !123
  %357 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %358 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom421 = zext i32 %358 to i64
  %arrayidx422 = getelementptr inbounds %struct.opj_pi_iterator, ptr %357, i64 %idxprom421
  %poc423 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx422, i32 0, i32 12
  %compno0424 = getelementptr inbounds %struct.opj_poc, ptr %poc423, i32 0, i32 1
  store i32 %356, ptr %compno0424, align 4, !tbaa !77
  %359 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t425 = getelementptr inbounds %struct.opj_poc, ptr %359, i32 0, i32 32
  %360 = load i32, ptr %comp_t425, align 4, !tbaa !123
  %add426 = add i32 %360, 1
  %361 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %362 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom427 = zext i32 %362 to i64
  %arrayidx428 = getelementptr inbounds %struct.opj_pi_iterator, ptr %361, i64 %idxprom427
  %poc429 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx428, i32 0, i32 12
  %compno1430 = getelementptr inbounds %struct.opj_poc, ptr %poc429, i32 0, i32 4
  store i32 %add426, ptr %compno1430, align 8, !tbaa !83
  %363 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t431 = getelementptr inbounds %struct.opj_poc, ptr %363, i32 0, i32 32
  %364 = load i32, ptr %comp_t431, align 4, !tbaa !123
  %add432 = add i32 %364, 1
  store i32 %add432, ptr %comp_t431, align 4, !tbaa !123
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end433

if.end433:                                        ; preds = %if.else419, %if.end418
  br label %sw.epilog634

sw.bb434:                                         ; preds = %if.then347
  %365 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t435 = getelementptr inbounds %struct.opj_poc, ptr %365, i32 0, i32 30
  %366 = load i32, ptr %lay_t435, align 4, !tbaa !125
  %367 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layE436 = getelementptr inbounds %struct.opj_poc, ptr %367, i32 0, i32 20
  %368 = load i32, ptr %layE436, align 4, !tbaa !105
  %cmp437 = icmp eq i32 %366, %368
  br i1 %cmp437, label %if.then439, label %if.else461

if.then439:                                       ; preds = %sw.bb434
  %369 = load i32, ptr %i, align 4, !tbaa !8
  %sub440 = sub nsw i32 %369, 1
  %370 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %371 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %372 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %373 = load ptr, ptr %prog, align 8, !tbaa !4
  %call441 = call i32 @opj_pi_check_next_level(i32 noundef %sub440, ptr noundef %370, i32 noundef %371, i32 noundef %372, ptr noundef %373)
  %tobool442 = icmp ne i32 %call441, 0
  br i1 %tobool442, label %if.then443, label %if.else459

if.then443:                                       ; preds = %if.then439
  %374 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layS444 = getelementptr inbounds %struct.opj_poc, ptr %374, i32 0, i32 16
  %375 = load i32, ptr %layS444, align 4, !tbaa !106
  %376 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t445 = getelementptr inbounds %struct.opj_poc, ptr %376, i32 0, i32 30
  store i32 %375, ptr %lay_t445, align 4, !tbaa !125
  %377 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t446 = getelementptr inbounds %struct.opj_poc, ptr %377, i32 0, i32 30
  %378 = load i32, ptr %lay_t446, align 4, !tbaa !125
  %379 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %380 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom447 = zext i32 %380 to i64
  %arrayidx448 = getelementptr inbounds %struct.opj_pi_iterator, ptr %379, i64 %idxprom447
  %poc449 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx448, i32 0, i32 12
  %layno0450 = getelementptr inbounds %struct.opj_poc, ptr %poc449, i32 0, i32 5
  store i32 %378, ptr %layno0450, align 4, !tbaa !78
  %381 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t451 = getelementptr inbounds %struct.opj_poc, ptr %381, i32 0, i32 30
  %382 = load i32, ptr %lay_t451, align 4, !tbaa !125
  %add452 = add i32 %382, 1
  %383 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %384 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom453 = zext i32 %384 to i64
  %arrayidx454 = getelementptr inbounds %struct.opj_pi_iterator, ptr %383, i64 %idxprom453
  %poc455 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx454, i32 0, i32 12
  %layno1456 = getelementptr inbounds %struct.opj_poc, ptr %poc455, i32 0, i32 2
  store i32 %add452, ptr %layno1456, align 8, !tbaa !85
  %385 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t457 = getelementptr inbounds %struct.opj_poc, ptr %385, i32 0, i32 30
  %386 = load i32, ptr %lay_t457, align 4, !tbaa !125
  %add458 = add i32 %386, 1
  store i32 %add458, ptr %lay_t457, align 4, !tbaa !125
  store i32 1, ptr %incr_top, align 4, !tbaa !8
  br label %if.end460

if.else459:                                       ; preds = %if.then439
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end460

if.end460:                                        ; preds = %if.else459, %if.then443
  br label %if.end475

if.else461:                                       ; preds = %sw.bb434
  %387 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t462 = getelementptr inbounds %struct.opj_poc, ptr %387, i32 0, i32 30
  %388 = load i32, ptr %lay_t462, align 4, !tbaa !125
  %389 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %390 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom463 = zext i32 %390 to i64
  %arrayidx464 = getelementptr inbounds %struct.opj_pi_iterator, ptr %389, i64 %idxprom463
  %poc465 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx464, i32 0, i32 12
  %layno0466 = getelementptr inbounds %struct.opj_poc, ptr %poc465, i32 0, i32 5
  store i32 %388, ptr %layno0466, align 4, !tbaa !78
  %391 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t467 = getelementptr inbounds %struct.opj_poc, ptr %391, i32 0, i32 30
  %392 = load i32, ptr %lay_t467, align 4, !tbaa !125
  %add468 = add i32 %392, 1
  %393 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %394 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom469 = zext i32 %394 to i64
  %arrayidx470 = getelementptr inbounds %struct.opj_pi_iterator, ptr %393, i64 %idxprom469
  %poc471 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx470, i32 0, i32 12
  %layno1472 = getelementptr inbounds %struct.opj_poc, ptr %poc471, i32 0, i32 2
  store i32 %add468, ptr %layno1472, align 8, !tbaa !85
  %395 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t473 = getelementptr inbounds %struct.opj_poc, ptr %395, i32 0, i32 30
  %396 = load i32, ptr %lay_t473, align 4, !tbaa !125
  %add474 = add i32 %396, 1
  store i32 %add474, ptr %lay_t473, align 4, !tbaa !125
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end475

if.end475:                                        ; preds = %if.else461, %if.end460
  br label %sw.epilog634

sw.bb476:                                         ; preds = %if.then347
  %397 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prg477 = getelementptr inbounds %struct.opj_poc, ptr %397, i32 0, i32 9
  %398 = load i32, ptr %prg477, align 4, !tbaa !71
  switch i32 %398, label %sw.default520 [
    i32 0, label %sw.bb478
    i32 1, label %sw.bb478
  ]

sw.bb478:                                         ; preds = %sw.bb476, %sw.bb476
  %399 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t479 = getelementptr inbounds %struct.opj_poc, ptr %399, i32 0, i32 33
  %400 = load i32, ptr %prc_t479, align 4, !tbaa !126
  %401 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcE480 = getelementptr inbounds %struct.opj_poc, ptr %401, i32 0, i32 23
  %402 = load i32, ptr %prcE480, align 4, !tbaa !109
  %cmp481 = icmp eq i32 %400, %402
  br i1 %cmp481, label %if.then483, label %if.else505

if.then483:                                       ; preds = %sw.bb478
  %403 = load i32, ptr %i, align 4, !tbaa !8
  %sub484 = sub nsw i32 %403, 1
  %404 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %405 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %406 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %407 = load ptr, ptr %prog, align 8, !tbaa !4
  %call485 = call i32 @opj_pi_check_next_level(i32 noundef %sub484, ptr noundef %404, i32 noundef %405, i32 noundef %406, ptr noundef %407)
  %tobool486 = icmp ne i32 %call485, 0
  br i1 %tobool486, label %if.then487, label %if.else503

if.then487:                                       ; preds = %if.then483
  %408 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcS488 = getelementptr inbounds %struct.opj_poc, ptr %408, i32 0, i32 19
  %409 = load i32, ptr %prcS488, align 4, !tbaa !108
  %410 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t489 = getelementptr inbounds %struct.opj_poc, ptr %410, i32 0, i32 33
  store i32 %409, ptr %prc_t489, align 4, !tbaa !126
  %411 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t490 = getelementptr inbounds %struct.opj_poc, ptr %411, i32 0, i32 33
  %412 = load i32, ptr %prc_t490, align 4, !tbaa !126
  %413 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %414 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom491 = zext i32 %414 to i64
  %arrayidx492 = getelementptr inbounds %struct.opj_pi_iterator, ptr %413, i64 %idxprom491
  %poc493 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx492, i32 0, i32 12
  %precno0494 = getelementptr inbounds %struct.opj_poc, ptr %poc493, i32 0, i32 6
  store i32 %412, ptr %precno0494, align 8, !tbaa !79
  %415 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t495 = getelementptr inbounds %struct.opj_poc, ptr %415, i32 0, i32 33
  %416 = load i32, ptr %prc_t495, align 4, !tbaa !126
  %add496 = add i32 %416, 1
  %417 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %418 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom497 = zext i32 %418 to i64
  %arrayidx498 = getelementptr inbounds %struct.opj_pi_iterator, ptr %417, i64 %idxprom497
  %poc499 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx498, i32 0, i32 12
  %precno1500 = getelementptr inbounds %struct.opj_poc, ptr %poc499, i32 0, i32 7
  store i32 %add496, ptr %precno1500, align 4, !tbaa !86
  %419 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t501 = getelementptr inbounds %struct.opj_poc, ptr %419, i32 0, i32 33
  %420 = load i32, ptr %prc_t501, align 4, !tbaa !126
  %add502 = add i32 %420, 1
  store i32 %add502, ptr %prc_t501, align 4, !tbaa !126
  store i32 1, ptr %incr_top, align 4, !tbaa !8
  br label %if.end504

if.else503:                                       ; preds = %if.then483
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end504

if.end504:                                        ; preds = %if.else503, %if.then487
  br label %if.end519

if.else505:                                       ; preds = %sw.bb478
  %421 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t506 = getelementptr inbounds %struct.opj_poc, ptr %421, i32 0, i32 33
  %422 = load i32, ptr %prc_t506, align 4, !tbaa !126
  %423 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %424 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom507 = zext i32 %424 to i64
  %arrayidx508 = getelementptr inbounds %struct.opj_pi_iterator, ptr %423, i64 %idxprom507
  %poc509 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx508, i32 0, i32 12
  %precno0510 = getelementptr inbounds %struct.opj_poc, ptr %poc509, i32 0, i32 6
  store i32 %422, ptr %precno0510, align 8, !tbaa !79
  %425 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t511 = getelementptr inbounds %struct.opj_poc, ptr %425, i32 0, i32 33
  %426 = load i32, ptr %prc_t511, align 4, !tbaa !126
  %add512 = add i32 %426, 1
  %427 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %428 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom513 = zext i32 %428 to i64
  %arrayidx514 = getelementptr inbounds %struct.opj_pi_iterator, ptr %427, i64 %idxprom513
  %poc515 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx514, i32 0, i32 12
  %precno1516 = getelementptr inbounds %struct.opj_poc, ptr %poc515, i32 0, i32 7
  store i32 %add512, ptr %precno1516, align 4, !tbaa !86
  %429 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t517 = getelementptr inbounds %struct.opj_poc, ptr %429, i32 0, i32 33
  %430 = load i32, ptr %prc_t517, align 4, !tbaa !126
  %add518 = add i32 %430, 1
  store i32 %add518, ptr %prc_t517, align 4, !tbaa !126
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end519

if.end519:                                        ; preds = %if.else505, %if.end504
  br label %sw.epilog633

sw.default520:                                    ; preds = %sw.bb476
  %431 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t521 = getelementptr inbounds %struct.opj_poc, ptr %431, i32 0, i32 34
  %432 = load i32, ptr %tx0_t521, align 4, !tbaa !127
  %433 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txE522 = getelementptr inbounds %struct.opj_poc, ptr %433, i32 0, i32 25
  %434 = load i32, ptr %txE522, align 4, !tbaa !111
  %cmp523 = icmp uge i32 %432, %434
  br i1 %cmp523, label %if.then525, label %if.else610

if.then525:                                       ; preds = %sw.default520
  %435 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t526 = getelementptr inbounds %struct.opj_poc, ptr %435, i32 0, i32 35
  %436 = load i32, ptr %ty0_t526, align 4, !tbaa !128
  %437 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyE527 = getelementptr inbounds %struct.opj_poc, ptr %437, i32 0, i32 27
  %438 = load i32, ptr %tyE527, align 4, !tbaa !113
  %cmp528 = icmp uge i32 %436, %438
  br i1 %cmp528, label %if.then530, label %if.else560

if.then530:                                       ; preds = %if.then525
  %439 = load i32, ptr %i, align 4, !tbaa !8
  %sub531 = sub nsw i32 %439, 1
  %440 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %441 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %442 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %443 = load ptr, ptr %prog, align 8, !tbaa !4
  %call532 = call i32 @opj_pi_check_next_level(i32 noundef %sub531, ptr noundef %440, i32 noundef %441, i32 noundef %442, ptr noundef %443)
  %tobool533 = icmp ne i32 %call532, 0
  br i1 %tobool533, label %if.then534, label %if.else558

if.then534:                                       ; preds = %if.then530
  %444 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyS535 = getelementptr inbounds %struct.opj_poc, ptr %444, i32 0, i32 26
  %445 = load i32, ptr %tyS535, align 4, !tbaa !112
  %446 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t536 = getelementptr inbounds %struct.opj_poc, ptr %446, i32 0, i32 35
  store i32 %445, ptr %ty0_t536, align 4, !tbaa !128
  %447 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t537 = getelementptr inbounds %struct.opj_poc, ptr %447, i32 0, i32 35
  %448 = load i32, ptr %ty0_t537, align 4, !tbaa !128
  %449 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %450 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom538 = zext i32 %450 to i64
  %arrayidx539 = getelementptr inbounds %struct.opj_pi_iterator, ptr %449, i64 %idxprom538
  %poc540 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx539, i32 0, i32 12
  %ty0541 = getelementptr inbounds %struct.opj_poc, ptr %poc540, i32 0, i32 14
  store i32 %448, ptr %ty0541, align 4, !tbaa !119
  %451 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t542 = getelementptr inbounds %struct.opj_poc, ptr %451, i32 0, i32 35
  %452 = load i32, ptr %ty0_t542, align 4, !tbaa !128
  %453 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy543 = getelementptr inbounds %struct.opj_poc, ptr %453, i32 0, i32 29
  %454 = load i32, ptr %dy543, align 4, !tbaa !115
  %add544 = add i32 %452, %454
  %455 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t545 = getelementptr inbounds %struct.opj_poc, ptr %455, i32 0, i32 35
  %456 = load i32, ptr %ty0_t545, align 4, !tbaa !128
  %457 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy546 = getelementptr inbounds %struct.opj_poc, ptr %457, i32 0, i32 29
  %458 = load i32, ptr %dy546, align 4, !tbaa !115
  %rem547 = urem i32 %456, %458
  %sub548 = sub i32 %add544, %rem547
  %459 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %460 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom549 = zext i32 %460 to i64
  %arrayidx550 = getelementptr inbounds %struct.opj_pi_iterator, ptr %459, i64 %idxprom549
  %poc551 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx550, i32 0, i32 12
  %ty1552 = getelementptr inbounds %struct.opj_poc, ptr %poc551, i32 0, i32 15
  store i32 %sub548, ptr %ty1552, align 8, !tbaa !121
  %461 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %462 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom553 = zext i32 %462 to i64
  %arrayidx554 = getelementptr inbounds %struct.opj_pi_iterator, ptr %461, i64 %idxprom553
  %poc555 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx554, i32 0, i32 12
  %ty1556 = getelementptr inbounds %struct.opj_poc, ptr %poc555, i32 0, i32 15
  %463 = load i32, ptr %ty1556, align 8, !tbaa !121
  %464 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t557 = getelementptr inbounds %struct.opj_poc, ptr %464, i32 0, i32 35
  store i32 %463, ptr %ty0_t557, align 4, !tbaa !128
  store i32 1, ptr %incr_top, align 4, !tbaa !8
  store i32 1, ptr %resetX, align 4, !tbaa !8
  br label %if.end559

if.else558:                                       ; preds = %if.then530
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  store i32 0, ptr %resetX, align 4, !tbaa !8
  br label %if.end559

if.end559:                                        ; preds = %if.else558, %if.then534
  br label %if.end582

if.else560:                                       ; preds = %if.then525
  %465 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t561 = getelementptr inbounds %struct.opj_poc, ptr %465, i32 0, i32 35
  %466 = load i32, ptr %ty0_t561, align 4, !tbaa !128
  %467 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %468 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom562 = zext i32 %468 to i64
  %arrayidx563 = getelementptr inbounds %struct.opj_pi_iterator, ptr %467, i64 %idxprom562
  %poc564 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx563, i32 0, i32 12
  %ty0565 = getelementptr inbounds %struct.opj_poc, ptr %poc564, i32 0, i32 14
  store i32 %466, ptr %ty0565, align 4, !tbaa !119
  %469 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t566 = getelementptr inbounds %struct.opj_poc, ptr %469, i32 0, i32 35
  %470 = load i32, ptr %ty0_t566, align 4, !tbaa !128
  %471 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy567 = getelementptr inbounds %struct.opj_poc, ptr %471, i32 0, i32 29
  %472 = load i32, ptr %dy567, align 4, !tbaa !115
  %add568 = add i32 %470, %472
  %473 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t569 = getelementptr inbounds %struct.opj_poc, ptr %473, i32 0, i32 35
  %474 = load i32, ptr %ty0_t569, align 4, !tbaa !128
  %475 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dy570 = getelementptr inbounds %struct.opj_poc, ptr %475, i32 0, i32 29
  %476 = load i32, ptr %dy570, align 4, !tbaa !115
  %rem571 = urem i32 %474, %476
  %sub572 = sub i32 %add568, %rem571
  %477 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %478 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom573 = zext i32 %478 to i64
  %arrayidx574 = getelementptr inbounds %struct.opj_pi_iterator, ptr %477, i64 %idxprom573
  %poc575 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx574, i32 0, i32 12
  %ty1576 = getelementptr inbounds %struct.opj_poc, ptr %poc575, i32 0, i32 15
  store i32 %sub572, ptr %ty1576, align 8, !tbaa !121
  %479 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %480 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom577 = zext i32 %480 to i64
  %arrayidx578 = getelementptr inbounds %struct.opj_pi_iterator, ptr %479, i64 %idxprom577
  %poc579 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx578, i32 0, i32 12
  %ty1580 = getelementptr inbounds %struct.opj_poc, ptr %poc579, i32 0, i32 15
  %481 = load i32, ptr %ty1580, align 8, !tbaa !121
  %482 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t581 = getelementptr inbounds %struct.opj_poc, ptr %482, i32 0, i32 35
  store i32 %481, ptr %ty0_t581, align 4, !tbaa !128
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  store i32 1, ptr %resetX, align 4, !tbaa !8
  br label %if.end582

if.end582:                                        ; preds = %if.else560, %if.end559
  %483 = load i32, ptr %resetX, align 4, !tbaa !8
  %cmp583 = icmp eq i32 %483, 1
  br i1 %cmp583, label %if.then585, label %if.end609

if.then585:                                       ; preds = %if.end582
  %484 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txS586 = getelementptr inbounds %struct.opj_poc, ptr %484, i32 0, i32 24
  %485 = load i32, ptr %txS586, align 4, !tbaa !110
  %486 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t587 = getelementptr inbounds %struct.opj_poc, ptr %486, i32 0, i32 34
  store i32 %485, ptr %tx0_t587, align 4, !tbaa !127
  %487 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t588 = getelementptr inbounds %struct.opj_poc, ptr %487, i32 0, i32 34
  %488 = load i32, ptr %tx0_t588, align 4, !tbaa !127
  %489 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %490 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom589 = zext i32 %490 to i64
  %arrayidx590 = getelementptr inbounds %struct.opj_pi_iterator, ptr %489, i64 %idxprom589
  %poc591 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx590, i32 0, i32 12
  %tx0592 = getelementptr inbounds %struct.opj_poc, ptr %poc591, i32 0, i32 12
  store i32 %488, ptr %tx0592, align 4, !tbaa !118
  %491 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t593 = getelementptr inbounds %struct.opj_poc, ptr %491, i32 0, i32 34
  %492 = load i32, ptr %tx0_t593, align 4, !tbaa !127
  %493 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx594 = getelementptr inbounds %struct.opj_poc, ptr %493, i32 0, i32 28
  %494 = load i32, ptr %dx594, align 4, !tbaa !114
  %add595 = add i32 %492, %494
  %495 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t596 = getelementptr inbounds %struct.opj_poc, ptr %495, i32 0, i32 34
  %496 = load i32, ptr %tx0_t596, align 4, !tbaa !127
  %497 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx597 = getelementptr inbounds %struct.opj_poc, ptr %497, i32 0, i32 28
  %498 = load i32, ptr %dx597, align 4, !tbaa !114
  %rem598 = urem i32 %496, %498
  %sub599 = sub i32 %add595, %rem598
  %499 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %500 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom600 = zext i32 %500 to i64
  %arrayidx601 = getelementptr inbounds %struct.opj_pi_iterator, ptr %499, i64 %idxprom600
  %poc602 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx601, i32 0, i32 12
  %tx1603 = getelementptr inbounds %struct.opj_poc, ptr %poc602, i32 0, i32 13
  store i32 %sub599, ptr %tx1603, align 8, !tbaa !120
  %501 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %502 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom604 = zext i32 %502 to i64
  %arrayidx605 = getelementptr inbounds %struct.opj_pi_iterator, ptr %501, i64 %idxprom604
  %poc606 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx605, i32 0, i32 12
  %tx1607 = getelementptr inbounds %struct.opj_poc, ptr %poc606, i32 0, i32 13
  %503 = load i32, ptr %tx1607, align 8, !tbaa !120
  %504 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t608 = getelementptr inbounds %struct.opj_poc, ptr %504, i32 0, i32 34
  store i32 %503, ptr %tx0_t608, align 4, !tbaa !127
  br label %if.end609

if.end609:                                        ; preds = %if.then585, %if.end582
  br label %if.end632

if.else610:                                       ; preds = %sw.default520
  %505 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t611 = getelementptr inbounds %struct.opj_poc, ptr %505, i32 0, i32 34
  %506 = load i32, ptr %tx0_t611, align 4, !tbaa !127
  %507 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %508 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom612 = zext i32 %508 to i64
  %arrayidx613 = getelementptr inbounds %struct.opj_pi_iterator, ptr %507, i64 %idxprom612
  %poc614 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx613, i32 0, i32 12
  %tx0615 = getelementptr inbounds %struct.opj_poc, ptr %poc614, i32 0, i32 12
  store i32 %506, ptr %tx0615, align 4, !tbaa !118
  %509 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t616 = getelementptr inbounds %struct.opj_poc, ptr %509, i32 0, i32 34
  %510 = load i32, ptr %tx0_t616, align 4, !tbaa !127
  %511 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx617 = getelementptr inbounds %struct.opj_poc, ptr %511, i32 0, i32 28
  %512 = load i32, ptr %dx617, align 4, !tbaa !114
  %add618 = add i32 %510, %512
  %513 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t619 = getelementptr inbounds %struct.opj_poc, ptr %513, i32 0, i32 34
  %514 = load i32, ptr %tx0_t619, align 4, !tbaa !127
  %515 = load ptr, ptr %tcp, align 8, !tbaa !4
  %dx620 = getelementptr inbounds %struct.opj_poc, ptr %515, i32 0, i32 28
  %516 = load i32, ptr %dx620, align 4, !tbaa !114
  %rem621 = urem i32 %514, %516
  %sub622 = sub i32 %add618, %rem621
  %517 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %518 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom623 = zext i32 %518 to i64
  %arrayidx624 = getelementptr inbounds %struct.opj_pi_iterator, ptr %517, i64 %idxprom623
  %poc625 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx624, i32 0, i32 12
  %tx1626 = getelementptr inbounds %struct.opj_poc, ptr %poc625, i32 0, i32 13
  store i32 %sub622, ptr %tx1626, align 8, !tbaa !120
  %519 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %520 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom627 = zext i32 %520 to i64
  %arrayidx628 = getelementptr inbounds %struct.opj_pi_iterator, ptr %519, i64 %idxprom627
  %poc629 = getelementptr inbounds %struct.opj_pi_iterator, ptr %arrayidx628, i32 0, i32 12
  %tx1630 = getelementptr inbounds %struct.opj_poc, ptr %poc629, i32 0, i32 13
  %521 = load i32, ptr %tx1630, align 8, !tbaa !120
  %522 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t631 = getelementptr inbounds %struct.opj_poc, ptr %522, i32 0, i32 34
  store i32 %521, ptr %tx0_t631, align 4, !tbaa !127
  store i32 0, ptr %incr_top, align 4, !tbaa !8
  br label %if.end632

if.end632:                                        ; preds = %if.else610, %if.end609
  br label %sw.epilog633

sw.epilog633:                                     ; preds = %if.end632, %if.end519
  br label %sw.epilog634

sw.epilog634:                                     ; preds = %if.then347, %sw.epilog633, %if.end475, %if.end433, %if.end391
  br label %if.end635

if.end635:                                        ; preds = %sw.epilog634, %sw.epilog344
  br label %for.inc636

for.inc636:                                       ; preds = %if.end635
  %523 = load i32, ptr %i, align 4, !tbaa !8
  %dec637 = add nsw i32 %523, -1
  store i32 %dec637, ptr %i, align 4, !tbaa !8
  br label %for.cond253, !llvm.loop !130

for.end638:                                       ; preds = %for.cond253
  br label %if.end639

if.end639:                                        ; preds = %for.end638, %for.end251
  br label %if.end640

if.end640:                                        ; preds = %if.end639, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcps) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %resetX) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %incr_top) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %prog) #4
  ret void
}

declare ptr @gdcmopenjp2opj_j2k_convert_progression_order(i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_check_next_level(i32 noundef %pos, ptr noundef %cp, i32 noundef %tileno, i32 noundef %pino, ptr noundef %prog) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %cp.addr = alloca ptr, align 8
  %tileno.addr = alloca i32, align 4
  %pino.addr = alloca i32, align 4
  %prog.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %tcps = alloca ptr, align 8
  %tcp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pos, ptr %pos.addr, align 4, !tbaa !8
  store ptr %cp, ptr %cp.addr, align 8, !tbaa !4
  store i32 %tileno, ptr %tileno.addr, align 4, !tbaa !8
  store i32 %pino, ptr %pino.addr, align 4, !tbaa !8
  store ptr %prog, ptr %prog.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcps) #4
  %0 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %tcps1 = getelementptr inbounds %struct.opj_cp, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %tcps1, align 8, !tbaa !12
  %2 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %tcps, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp) #4
  %3 = load ptr, ptr %tcps, align 8, !tbaa !4
  %pocs = getelementptr inbounds %struct.opj_tcp, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [32 x %struct.opj_poc], ptr %pocs, i64 0, i64 %idxprom2
  store ptr %arrayidx3, ptr %tcp, align 8, !tbaa !4
  %5 = load i32, ptr %pos.addr, align 4, !tbaa !8
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %pos.addr, align 4, !tbaa !8
  store i32 %6, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %pos.addr, align 4, !tbaa !8
  %cmp4 = icmp sge i32 %7, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %prog.addr, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5
  %10 = load i8, ptr %arrayidx6, align 1, !tbaa !90
  %conv = sext i8 %10 to i32
  switch i32 %conv, label %sw.epilog [
    i32 82, label %sw.bb
    i32 67, label %sw.bb12
    i32 76, label %sw.bb22
    i32 80, label %sw.bb32
  ]

sw.bb:                                            ; preds = %for.body
  %11 = load ptr, ptr %tcp, align 8, !tbaa !4
  %res_t = getelementptr inbounds %struct.opj_poc, ptr %11, i32 0, i32 31
  %12 = load i32, ptr %res_t, align 4, !tbaa !124
  %13 = load ptr, ptr %tcp, align 8, !tbaa !4
  %resE = getelementptr inbounds %struct.opj_poc, ptr %13, i32 0, i32 21
  %14 = load i32, ptr %resE, align 4, !tbaa !104
  %cmp7 = icmp eq i32 %12, %14
  br i1 %cmp7, label %if.then9, label %if.else11

if.then9:                                         ; preds = %sw.bb
  %15 = load i32, ptr %pos.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %15, 1
  %16 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %17 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %18 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %prog.addr, align 8, !tbaa !4
  %call = call i32 @opj_pi_check_next_level(i32 noundef %sub, ptr noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then9
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else11:                                        ; preds = %sw.bb
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %for.body
  %20 = load ptr, ptr %tcp, align 8, !tbaa !4
  %comp_t = getelementptr inbounds %struct.opj_poc, ptr %20, i32 0, i32 32
  %21 = load i32, ptr %comp_t, align 4, !tbaa !123
  %22 = load ptr, ptr %tcp, align 8, !tbaa !4
  %compE = getelementptr inbounds %struct.opj_poc, ptr %22, i32 0, i32 22
  %23 = load i32, ptr %compE, align 4, !tbaa !102
  %cmp13 = icmp eq i32 %21, %23
  br i1 %cmp13, label %if.then15, label %if.else21

if.then15:                                        ; preds = %sw.bb12
  %24 = load i32, ptr %pos.addr, align 4, !tbaa !8
  %sub16 = sub nsw i32 %24, 1
  %25 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %26 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %27 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %28 = load ptr, ptr %prog.addr, align 8, !tbaa !4
  %call17 = call i32 @opj_pi_check_next_level(i32 noundef %sub16, ptr noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef %28)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.then15
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else20:                                        ; preds = %if.then15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else21:                                        ; preds = %sw.bb12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %for.body
  %29 = load ptr, ptr %tcp, align 8, !tbaa !4
  %lay_t = getelementptr inbounds %struct.opj_poc, ptr %29, i32 0, i32 30
  %30 = load i32, ptr %lay_t, align 4, !tbaa !125
  %31 = load ptr, ptr %tcp, align 8, !tbaa !4
  %layE = getelementptr inbounds %struct.opj_poc, ptr %31, i32 0, i32 20
  %32 = load i32, ptr %layE, align 4, !tbaa !105
  %cmp23 = icmp eq i32 %30, %32
  br i1 %cmp23, label %if.then25, label %if.else31

if.then25:                                        ; preds = %sw.bb22
  %33 = load i32, ptr %pos.addr, align 4, !tbaa !8
  %sub26 = sub nsw i32 %33, 1
  %34 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %35 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %36 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %37 = load ptr, ptr %prog.addr, align 8, !tbaa !4
  %call27 = call i32 @opj_pi_check_next_level(i32 noundef %sub26, ptr noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %37)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then25
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else30:                                        ; preds = %if.then25
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else31:                                        ; preds = %sw.bb22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %for.body
  %38 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prg = getelementptr inbounds %struct.opj_poc, ptr %38, i32 0, i32 9
  %39 = load i32, ptr %prg, align 4, !tbaa !71
  switch i32 %39, label %sw.default [
    i32 0, label %sw.bb33
    i32 1, label %sw.bb33
  ]

sw.bb33:                                          ; preds = %sw.bb32, %sw.bb32
  %40 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prc_t = getelementptr inbounds %struct.opj_poc, ptr %40, i32 0, i32 33
  %41 = load i32, ptr %prc_t, align 4, !tbaa !126
  %42 = load ptr, ptr %tcp, align 8, !tbaa !4
  %prcE = getelementptr inbounds %struct.opj_poc, ptr %42, i32 0, i32 23
  %43 = load i32, ptr %prcE, align 4, !tbaa !109
  %cmp34 = icmp eq i32 %41, %43
  br i1 %cmp34, label %if.then36, label %if.else42

if.then36:                                        ; preds = %sw.bb33
  %44 = load i32, ptr %i, align 4, !tbaa !8
  %sub37 = sub nsw i32 %44, 1
  %45 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %46 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %47 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %48 = load ptr, ptr %prog.addr, align 8, !tbaa !4
  %call38 = call i32 @opj_pi_check_next_level(i32 noundef %sub37, ptr noundef %45, i32 noundef %46, i32 noundef %47, ptr noundef %48)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.then36
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.then36
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else42:                                        ; preds = %sw.bb33
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb32
  %49 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tx0_t = getelementptr inbounds %struct.opj_poc, ptr %49, i32 0, i32 34
  %50 = load i32, ptr %tx0_t, align 4, !tbaa !127
  %51 = load ptr, ptr %tcp, align 8, !tbaa !4
  %txE = getelementptr inbounds %struct.opj_poc, ptr %51, i32 0, i32 25
  %52 = load i32, ptr %txE, align 4, !tbaa !111
  %cmp43 = icmp eq i32 %50, %52
  br i1 %cmp43, label %if.then45, label %if.else55

if.then45:                                        ; preds = %sw.default
  %53 = load ptr, ptr %tcp, align 8, !tbaa !4
  %ty0_t = getelementptr inbounds %struct.opj_poc, ptr %53, i32 0, i32 35
  %54 = load i32, ptr %ty0_t, align 4, !tbaa !128
  %55 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tyE = getelementptr inbounds %struct.opj_poc, ptr %55, i32 0, i32 27
  %56 = load i32, ptr %tyE, align 4, !tbaa !113
  %cmp46 = icmp eq i32 %54, %56
  br i1 %cmp46, label %if.then48, label %if.else54

if.then48:                                        ; preds = %if.then45
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %sub49 = sub nsw i32 %57, 1
  %58 = load ptr, ptr %cp.addr, align 8, !tbaa !4
  %59 = load i32, ptr %tileno.addr, align 4, !tbaa !8
  %60 = load i32, ptr %pino.addr, align 4, !tbaa !8
  %61 = load ptr, ptr %prog.addr, align 8, !tbaa !4
  %call50 = call i32 @opj_pi_check_next_level(i32 noundef %sub49, ptr noundef %58, i32 noundef %59, i32 noundef %60, ptr noundef %61)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.then48
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else53:                                        ; preds = %if.then48
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else54:                                        ; preds = %if.then45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else55:                                        ; preds = %sw.default
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %62 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %62, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else55, %if.else54, %if.else53, %if.then52, %if.else42, %if.else41, %if.then40, %if.else31, %if.else30, %if.then29, %if.else21, %if.else20, %if.then19, %if.else11, %if.else, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcps) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define void @gdcmopenjp2opj_pi_update_encoding_parameters(ptr noundef %p_image, ptr noundef %p_cp, i32 noundef %p_tile_no) #0 {
entry:
  %p_image.addr = alloca ptr, align 8
  %p_cp.addr = alloca ptr, align 8
  %p_tile_no.addr = alloca i32, align 4
  %l_max_res = alloca i32, align 4
  %l_max_prec = alloca i32, align 4
  %l_tx0 = alloca i32, align 4
  %l_tx1 = alloca i32, align 4
  %l_ty0 = alloca i32, align 4
  %l_ty1 = alloca i32, align 4
  %l_dx_min = alloca i32, align 4
  %l_dy_min = alloca i32, align 4
  %l_tcp = alloca ptr, align 8
  store ptr %p_image, ptr %p_image.addr, align 8, !tbaa !4
  store ptr %p_cp, ptr %p_cp.addr, align 8, !tbaa !4
  store i32 %p_tile_no, ptr %p_tile_no.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_max_res) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_max_prec) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ty0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ty1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dx_min) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dy_min) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tcp) #4
  store ptr null, ptr %l_tcp, align 8, !tbaa !4
  %0 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %tcps, align 8, !tbaa !12
  %2 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %l_tcp, align 8, !tbaa !4
  %3 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %5 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  call void @opj_get_encoding_parameters(ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %l_tx0, ptr noundef %l_tx1, ptr noundef %l_ty0, ptr noundef %l_ty1, ptr noundef %l_dx_min, ptr noundef %l_dy_min, ptr noundef %l_max_prec, ptr noundef %l_max_res)
  %6 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %POC = getelementptr inbounds %struct.opj_tcp, ptr %6, i32 0, i32 29
  %bf.load = load i8, ptr %POC, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %8 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %9 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %10 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %11 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %12 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %13 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %14 = load i32, ptr %l_max_res, align 4, !tbaa !8
  %15 = load i32, ptr %l_dx_min, align 4, !tbaa !8
  %16 = load i32, ptr %l_dy_min, align 4, !tbaa !8
  call void @opj_pi_update_encode_poc_and_final(ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16)
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_image, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %numcomps, align 8, !tbaa !10
  %20 = load i32, ptr %p_tile_no.addr, align 4, !tbaa !8
  %21 = load i32, ptr %l_tx0, align 4, !tbaa !8
  %22 = load i32, ptr %l_tx1, align 4, !tbaa !8
  %23 = load i32, ptr %l_ty0, align 4, !tbaa !8
  %24 = load i32, ptr %l_ty1, align 4, !tbaa !8
  %25 = load i32, ptr %l_max_prec, align 4, !tbaa !8
  %26 = load i32, ptr %l_max_res, align 4, !tbaa !8
  %27 = load i32, ptr %l_dx_min, align 4, !tbaa !8
  %28 = load i32, ptr %l_dy_min, align 4, !tbaa !8
  call void @opj_pi_update_encode_not_poc(ptr noundef %17, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tcp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dy_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dx_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ty1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ty0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_max_prec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_max_res) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_get_encoding_parameters(ptr noundef %p_image, ptr noundef %p_cp, i32 noundef %p_tileno, ptr noundef %p_tx0, ptr noundef %p_tx1, ptr noundef %p_ty0, ptr noundef %p_ty1, ptr noundef %p_dx_min, ptr noundef %p_dy_min, ptr noundef %p_max_prec, ptr noundef %p_max_res) #0 {
entry:
  %p_image.addr = alloca ptr, align 8
  %p_cp.addr = alloca ptr, align 8
  %p_tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca ptr, align 8
  %p_tx1.addr = alloca ptr, align 8
  %p_ty0.addr = alloca ptr, align 8
  %p_ty1.addr = alloca ptr, align 8
  %p_dx_min.addr = alloca ptr, align 8
  %p_dy_min.addr = alloca ptr, align 8
  %p_max_prec.addr = alloca ptr, align 8
  %p_max_res.addr = alloca ptr, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %l_tcp = alloca ptr, align 8
  %l_tccp = alloca ptr, align 8
  %l_img_comp = alloca ptr, align 8
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %l_level_no = alloca i32, align 4
  %l_rx0 = alloca i32, align 4
  %l_ry0 = alloca i32, align 4
  %l_rx1 = alloca i32, align 4
  %l_ry1 = alloca i32, align 4
  %l_px0 = alloca i32, align 4
  %l_py0 = alloca i32, align 4
  %l_px1 = alloca i32, align 4
  %py1 = alloca i32, align 4
  %l_pdx = alloca i32, align 4
  %l_pdy = alloca i32, align 4
  %l_pw = alloca i32, align 4
  %l_ph = alloca i32, align 4
  %l_product = alloca i32, align 4
  %l_tcx0 = alloca i32, align 4
  %l_tcy0 = alloca i32, align 4
  %l_tcx1 = alloca i32, align 4
  %l_tcy1 = alloca i32, align 4
  %l_dx = alloca i32, align 4
  %l_dy = alloca i32, align 4
  store ptr %p_image, ptr %p_image.addr, align 8, !tbaa !4
  store ptr %p_cp, ptr %p_cp.addr, align 8, !tbaa !4
  store i32 %p_tileno, ptr %p_tileno.addr, align 4, !tbaa !8
  store ptr %p_tx0, ptr %p_tx0.addr, align 8, !tbaa !4
  store ptr %p_tx1, ptr %p_tx1.addr, align 8, !tbaa !4
  store ptr %p_ty0, ptr %p_ty0.addr, align 8, !tbaa !4
  store ptr %p_ty1, ptr %p_ty1.addr, align 8, !tbaa !4
  store ptr %p_dx_min, ptr %p_dx_min.addr, align 8, !tbaa !4
  store ptr %p_dy_min, ptr %p_dy_min.addr, align 8, !tbaa !4
  store ptr %p_max_prec, ptr %p_max_prec.addr, align 8, !tbaa !4
  store ptr %p_max_res, ptr %p_max_res.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tcp) #4
  store ptr null, ptr %l_tcp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_tccp) #4
  store ptr null, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_img_comp) #4
  store ptr null, ptr %l_img_comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #4
  %0 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tcps = getelementptr inbounds %struct.opj_cp, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %tcps, align 8, !tbaa !12
  %2 = load i32, ptr %p_tileno.addr, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.opj_tcp, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %l_tcp, align 8, !tbaa !4
  %3 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_image, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %comps, align 8, !tbaa !25
  store ptr %4, ptr %l_img_comp, align 8, !tbaa !4
  %5 = load ptr, ptr %l_tcp, align 8, !tbaa !4
  %tccps = getelementptr inbounds %struct.opj_tcp, ptr %5, i32 0, i32 15
  %6 = load ptr, ptr %tccps, align 8, !tbaa !26
  store ptr %6, ptr %l_tccp, align 8, !tbaa !4
  %7 = load i32, ptr %p_tileno.addr, align 4, !tbaa !8
  %8 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tw = getelementptr inbounds %struct.opj_cp, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %tw, align 8, !tbaa !58
  %rem = urem i32 %7, %9
  store i32 %rem, ptr %p, align 4, !tbaa !8
  %10 = load i32, ptr %p_tileno.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tw1 = getelementptr inbounds %struct.opj_cp, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %tw1, align 8, !tbaa !58
  %div = udiv i32 %10, %12
  store i32 %div, ptr %q, align 4, !tbaa !8
  %13 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tx0 = getelementptr inbounds %struct.opj_cp, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %tx0, align 4, !tbaa !59
  %15 = load i32, ptr %p, align 4, !tbaa !8
  %16 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdx = getelementptr inbounds %struct.opj_cp, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %tdx, align 4, !tbaa !60
  %mul = mul i32 %15, %17
  %add = add i32 %14, %mul
  %18 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %x0 = getelementptr inbounds %struct.opj_image, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %x0, align 8, !tbaa !61
  %call = call i32 @opj_int_max(i32 noundef %add, i32 noundef %19)
  %20 = load ptr, ptr %p_tx0.addr, align 8, !tbaa !4
  store i32 %call, ptr %20, align 4, !tbaa !8
  %21 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tx02 = getelementptr inbounds %struct.opj_cp, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %tx02, align 4, !tbaa !59
  %23 = load i32, ptr %p, align 4, !tbaa !8
  %add3 = add i32 %23, 1
  %24 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdx4 = getelementptr inbounds %struct.opj_cp, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %tdx4, align 4, !tbaa !60
  %mul5 = mul i32 %add3, %25
  %add6 = add i32 %22, %mul5
  %26 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %x1 = getelementptr inbounds %struct.opj_image, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %x1, align 8, !tbaa !62
  %call7 = call i32 @opj_int_min(i32 noundef %add6, i32 noundef %27)
  %28 = load ptr, ptr %p_tx1.addr, align 8, !tbaa !4
  store i32 %call7, ptr %28, align 4, !tbaa !8
  %29 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %ty0 = getelementptr inbounds %struct.opj_cp, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %ty0, align 8, !tbaa !63
  %31 = load i32, ptr %q, align 4, !tbaa !8
  %32 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdy = getelementptr inbounds %struct.opj_cp, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %tdy, align 8, !tbaa !64
  %mul8 = mul i32 %31, %33
  %add9 = add i32 %30, %mul8
  %34 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %y0 = getelementptr inbounds %struct.opj_image, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %y0, align 4, !tbaa !65
  %call10 = call i32 @opj_int_max(i32 noundef %add9, i32 noundef %35)
  %36 = load ptr, ptr %p_ty0.addr, align 8, !tbaa !4
  store i32 %call10, ptr %36, align 4, !tbaa !8
  %37 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %ty011 = getelementptr inbounds %struct.opj_cp, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %ty011, align 8, !tbaa !63
  %39 = load i32, ptr %q, align 4, !tbaa !8
  %add12 = add i32 %39, 1
  %40 = load ptr, ptr %p_cp.addr, align 8, !tbaa !4
  %tdy13 = getelementptr inbounds %struct.opj_cp, ptr %40, i32 0, i32 4
  %41 = load i32, ptr %tdy13, align 8, !tbaa !64
  %mul14 = mul i32 %add12, %41
  %add15 = add i32 %38, %mul14
  %42 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %y1 = getelementptr inbounds %struct.opj_image, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %y1, align 4, !tbaa !66
  %call16 = call i32 @opj_int_min(i32 noundef %add15, i32 noundef %43)
  %44 = load ptr, ptr %p_ty1.addr, align 8, !tbaa !4
  store i32 %call16, ptr %44, align 4, !tbaa !8
  %45 = load ptr, ptr %p_max_prec.addr, align 8, !tbaa !4
  store i32 0, ptr %45, align 4, !tbaa !8
  %46 = load ptr, ptr %p_max_res.addr, align 8, !tbaa !4
  store i32 0, ptr %46, align 4, !tbaa !8
  %47 = load ptr, ptr %p_dx_min.addr, align 8, !tbaa !4
  store i32 2147483647, ptr %47, align 4, !tbaa !8
  %48 = load ptr, ptr %p_dy_min.addr, align 8, !tbaa !4
  store i32 2147483647, ptr %48, align 4, !tbaa !8
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc76, %entry
  %49 = load i32, ptr %compno, align 4, !tbaa !8
  %50 = load ptr, ptr %p_image.addr, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_image, ptr %50, i32 0, i32 4
  %51 = load i32, ptr %numcomps, align 8, !tbaa !10
  %cmp = icmp ult i32 %49, %51
  br i1 %cmp, label %for.body, label %for.end78

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_level_no) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_rx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ry0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_rx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ry1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_px0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_py0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_px1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %py1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_pdx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_pdy) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_pw) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_ph) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_product) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcx0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcy0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_tcy1) #4
  %52 = load ptr, ptr %p_tx0.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %54 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_image_comp, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %dx, align 8, !tbaa !37
  %call17 = call i32 @opj_int_ceildiv(i32 noundef %53, i32 noundef %55)
  store i32 %call17, ptr %l_tcx0, align 4, !tbaa !8
  %56 = load ptr, ptr %p_ty0.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !8
  %58 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_image_comp, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %dy, align 4, !tbaa !40
  %call18 = call i32 @opj_int_ceildiv(i32 noundef %57, i32 noundef %59)
  store i32 %call18, ptr %l_tcy0, align 4, !tbaa !8
  %60 = load ptr, ptr %p_tx1.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  %62 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx19 = getelementptr inbounds %struct.opj_image_comp, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %dx19, align 8, !tbaa !37
  %call20 = call i32 @opj_int_ceildiv(i32 noundef %61, i32 noundef %63)
  store i32 %call20, ptr %l_tcx1, align 4, !tbaa !8
  %64 = load ptr, ptr %p_ty1.addr, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %66 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy21 = getelementptr inbounds %struct.opj_image_comp, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %dy21, align 4, !tbaa !40
  %call22 = call i32 @opj_int_ceildiv(i32 noundef %65, i32 noundef %67)
  store i32 %call22, ptr %l_tcy1, align 4, !tbaa !8
  %68 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_tccp, ptr %68, i32 0, i32 1
  %69 = load i32, ptr %numresolutions, align 4, !tbaa !54
  %70 = load ptr, ptr %p_max_res.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %cmp23 = icmp ugt i32 %69, %71
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %72 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions24 = getelementptr inbounds %struct.opj_tccp, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %numresolutions24, align 4, !tbaa !54
  %74 = load ptr, ptr %p_max_res.addr, align 8, !tbaa !4
  store i32 %73, ptr %74, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %if.end
  %75 = load i32, ptr %resno, align 4, !tbaa !8
  %76 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions26 = getelementptr inbounds %struct.opj_tccp, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %numresolutions26, align 4, !tbaa !54
  %cmp27 = icmp ult i32 %75, %77
  br i1 %cmp27, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_dy) #4
  %78 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %prcw = getelementptr inbounds %struct.opj_tccp, ptr %78, i32 0, i32 10
  %79 = load i32, ptr %resno, align 4, !tbaa !8
  %idxprom29 = zext i32 %79 to i64
  %arrayidx30 = getelementptr inbounds [33 x i32], ptr %prcw, i64 0, i64 %idxprom29
  %80 = load i32, ptr %arrayidx30, align 4, !tbaa !8
  store i32 %80, ptr %l_pdx, align 4, !tbaa !8
  %81 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %prch = getelementptr inbounds %struct.opj_tccp, ptr %81, i32 0, i32 11
  %82 = load i32, ptr %resno, align 4, !tbaa !8
  %idxprom31 = zext i32 %82 to i64
  %arrayidx32 = getelementptr inbounds [33 x i32], ptr %prch, i64 0, i64 %idxprom31
  %83 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  store i32 %83, ptr %l_pdy, align 4, !tbaa !8
  %84 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dx33 = getelementptr inbounds %struct.opj_image_comp, ptr %84, i32 0, i32 0
  %85 = load i32, ptr %dx33, align 8, !tbaa !37
  %86 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %87 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions34 = getelementptr inbounds %struct.opj_tccp, ptr %87, i32 0, i32 1
  %88 = load i32, ptr %numresolutions34, align 4, !tbaa !54
  %add35 = add i32 %86, %88
  %sub = sub i32 %add35, 1
  %89 = load i32, ptr %resno, align 4, !tbaa !8
  %sub36 = sub i32 %sub, %89
  %shl = shl i32 1, %sub36
  %mul37 = mul i32 %85, %shl
  store i32 %mul37, ptr %l_dx, align 4, !tbaa !8
  %90 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %dy38 = getelementptr inbounds %struct.opj_image_comp, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %dy38, align 4, !tbaa !40
  %92 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %93 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions39 = getelementptr inbounds %struct.opj_tccp, ptr %93, i32 0, i32 1
  %94 = load i32, ptr %numresolutions39, align 4, !tbaa !54
  %add40 = add i32 %92, %94
  %sub41 = sub i32 %add40, 1
  %95 = load i32, ptr %resno, align 4, !tbaa !8
  %sub42 = sub i32 %sub41, %95
  %shl43 = shl i32 1, %sub42
  %mul44 = mul i32 %91, %shl43
  store i32 %mul44, ptr %l_dy, align 4, !tbaa !8
  %96 = load ptr, ptr %p_dx_min.addr, align 8, !tbaa !4
  %97 = load i32, ptr %96, align 4, !tbaa !8
  %98 = load i32, ptr %l_dx, align 4, !tbaa !8
  %call45 = call i32 @opj_uint_min(i32 noundef %97, i32 noundef %98)
  %99 = load ptr, ptr %p_dx_min.addr, align 8, !tbaa !4
  store i32 %call45, ptr %99, align 4, !tbaa !8
  %100 = load ptr, ptr %p_dy_min.addr, align 8, !tbaa !4
  %101 = load i32, ptr %100, align 4, !tbaa !8
  %102 = load i32, ptr %l_dy, align 4, !tbaa !8
  %call46 = call i32 @opj_uint_min(i32 noundef %101, i32 noundef %102)
  %103 = load ptr, ptr %p_dy_min.addr, align 8, !tbaa !4
  store i32 %call46, ptr %103, align 4, !tbaa !8
  %104 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %numresolutions47 = getelementptr inbounds %struct.opj_tccp, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %numresolutions47, align 4, !tbaa !54
  %sub48 = sub i32 %105, 1
  %106 = load i32, ptr %resno, align 4, !tbaa !8
  %sub49 = sub i32 %sub48, %106
  store i32 %sub49, ptr %l_level_no, align 4, !tbaa !8
  %107 = load i32, ptr %l_tcx0, align 4, !tbaa !8
  %108 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call50 = call i32 @opj_int_ceildivpow2(i32 noundef %107, i32 noundef %108)
  store i32 %call50, ptr %l_rx0, align 4, !tbaa !8
  %109 = load i32, ptr %l_tcy0, align 4, !tbaa !8
  %110 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call51 = call i32 @opj_int_ceildivpow2(i32 noundef %109, i32 noundef %110)
  store i32 %call51, ptr %l_ry0, align 4, !tbaa !8
  %111 = load i32, ptr %l_tcx1, align 4, !tbaa !8
  %112 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call52 = call i32 @opj_int_ceildivpow2(i32 noundef %111, i32 noundef %112)
  store i32 %call52, ptr %l_rx1, align 4, !tbaa !8
  %113 = load i32, ptr %l_tcy1, align 4, !tbaa !8
  %114 = load i32, ptr %l_level_no, align 4, !tbaa !8
  %call53 = call i32 @opj_int_ceildivpow2(i32 noundef %113, i32 noundef %114)
  store i32 %call53, ptr %l_ry1, align 4, !tbaa !8
  %115 = load i32, ptr %l_rx0, align 4, !tbaa !8
  %116 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %call54 = call i32 @opj_int_floordivpow2(i32 noundef %115, i32 noundef %116)
  %117 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %shl55 = shl i32 %call54, %117
  store i32 %shl55, ptr %l_px0, align 4, !tbaa !8
  %118 = load i32, ptr %l_ry0, align 4, !tbaa !8
  %119 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %call56 = call i32 @opj_int_floordivpow2(i32 noundef %118, i32 noundef %119)
  %120 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %shl57 = shl i32 %call56, %120
  store i32 %shl57, ptr %l_py0, align 4, !tbaa !8
  %121 = load i32, ptr %l_rx1, align 4, !tbaa !8
  %122 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %call58 = call i32 @opj_int_ceildivpow2(i32 noundef %121, i32 noundef %122)
  %123 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %shl59 = shl i32 %call58, %123
  store i32 %shl59, ptr %l_px1, align 4, !tbaa !8
  %124 = load i32, ptr %l_ry1, align 4, !tbaa !8
  %125 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %call60 = call i32 @opj_int_ceildivpow2(i32 noundef %124, i32 noundef %125)
  %126 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %shl61 = shl i32 %call60, %126
  store i32 %shl61, ptr %py1, align 4, !tbaa !8
  %127 = load i32, ptr %l_rx0, align 4, !tbaa !8
  %128 = load i32, ptr %l_rx1, align 4, !tbaa !8
  %cmp62 = icmp eq i32 %127, %128
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body28
  br label %cond.end

cond.false:                                       ; preds = %for.body28
  %129 = load i32, ptr %l_px1, align 4, !tbaa !8
  %130 = load i32, ptr %l_px0, align 4, !tbaa !8
  %sub63 = sub nsw i32 %129, %130
  %131 = load i32, ptr %l_pdx, align 4, !tbaa !8
  %shr = ashr i32 %sub63, %131
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shr, %cond.false ]
  store i32 %cond, ptr %l_pw, align 4, !tbaa !8
  %132 = load i32, ptr %l_ry0, align 4, !tbaa !8
  %133 = load i32, ptr %l_ry1, align 4, !tbaa !8
  %cmp64 = icmp eq i32 %132, %133
  br i1 %cmp64, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %cond.end
  br label %cond.end69

cond.false66:                                     ; preds = %cond.end
  %134 = load i32, ptr %py1, align 4, !tbaa !8
  %135 = load i32, ptr %l_py0, align 4, !tbaa !8
  %sub67 = sub nsw i32 %134, %135
  %136 = load i32, ptr %l_pdy, align 4, !tbaa !8
  %shr68 = ashr i32 %sub67, %136
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false66, %cond.true65
  %cond70 = phi i32 [ 0, %cond.true65 ], [ %shr68, %cond.false66 ]
  store i32 %cond70, ptr %l_ph, align 4, !tbaa !8
  %137 = load i32, ptr %l_pw, align 4, !tbaa !8
  %138 = load i32, ptr %l_ph, align 4, !tbaa !8
  %mul71 = mul i32 %137, %138
  store i32 %mul71, ptr %l_product, align 4, !tbaa !8
  %139 = load i32, ptr %l_product, align 4, !tbaa !8
  %140 = load ptr, ptr %p_max_prec.addr, align 8, !tbaa !4
  %141 = load i32, ptr %140, align 4, !tbaa !8
  %cmp72 = icmp ugt i32 %139, %141
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %cond.end69
  %142 = load i32, ptr %l_product, align 4, !tbaa !8
  %143 = load ptr, ptr %p_max_prec.addr, align 8, !tbaa !4
  store i32 %142, ptr %143, align 4, !tbaa !8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %cond.end69
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_dx) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end74
  %144 = load i32, ptr %resno, align 4, !tbaa !8
  %inc = add i32 %144, 1
  store i32 %inc, ptr %resno, align 4, !tbaa !8
  br label %for.cond25, !llvm.loop !132

for.end:                                          ; preds = %for.cond25
  %145 = load ptr, ptr %l_img_comp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.opj_image_comp, ptr %145, i32 1
  store ptr %incdec.ptr, ptr %l_img_comp, align 8, !tbaa !4
  %146 = load ptr, ptr %l_tccp, align 8, !tbaa !4
  %incdec.ptr75 = getelementptr inbounds %struct.opj_tccp, ptr %146, i32 1
  store ptr %incdec.ptr75, ptr %l_tccp, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcy1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcy0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_tcx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_product) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ph) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_pw) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_pdy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_pdx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %py1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_px1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_py0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_px0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ry1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_rx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_ry0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_rx0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_level_no) #4
  br label %for.inc76

for.inc76:                                        ; preds = %for.end
  %147 = load i32, ptr %compno, align 4, !tbaa !8
  %inc77 = add i32 %147, 1
  store i32 %inc77, ptr %compno, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !133

for.end78:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_img_comp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tccp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_tcp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gdcmopenjp2opj_pi_next(ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %0, i32 0, i32 12
  %prg = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 9
  %1 = load i32, ptr %prg, align 4, !tbaa !72
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 -1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call = call i32 @opj_pi_next_lrcp(ptr noundef %2)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call2 = call i32 @opj_pi_next_rlcp(ptr noundef %3)
  store i32 %call2, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call4 = call i32 @opj_pi_next_rpcl(ptr noundef %4)
  store i32 %call4, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %5 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call6 = call i32 @opj_pi_next_pcrl(ptr noundef %5)
  store i32 %call6, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  %6 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %call8 = call i32 @opj_pi_next_cprl(ptr noundef %6)
  store i32 %call8, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_lrcp(ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  %comp = alloca ptr, align 8
  %res = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #4
  store ptr null, ptr %comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #4
  store ptr null, ptr %res, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  store i32 0, ptr %index, align 4, !tbaa !8
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %first, align 4, !tbaa !73
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %comps, align 8, !tbaa !24
  %4 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno = getelementptr inbounds %struct.opj_pi_iterator, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %compno, align 4, !tbaa !134
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %comp, align 8, !tbaa !4
  %6 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %resolutions, align 8, !tbaa !35
  %8 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno = getelementptr inbounds %struct.opj_pi_iterator, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %resno, align 8, !tbaa !135
  %idxprom1 = zext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds %struct.opj_pi_resolution, ptr %7, i64 %idxprom1
  store ptr %arrayidx2, ptr %res, align 8, !tbaa !4
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first3 = getelementptr inbounds %struct.opj_pi_iterator, ptr %10, i32 0, i32 11
  store i32 0, ptr %first3, align 4, !tbaa !73
  br label %if.end

if.end:                                           ; preds = %if.else
  %11 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %11, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 5
  %12 = load i32, ptr %layno0, align 4, !tbaa !78
  %13 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno = getelementptr inbounds %struct.opj_pi_iterator, ptr %13, i32 0, i32 10
  store i32 %12, ptr %layno, align 8, !tbaa !136
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.end
  %14 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno4 = getelementptr inbounds %struct.opj_pi_iterator, ptr %14, i32 0, i32 10
  %15 = load i32, ptr %layno4, align 8, !tbaa !136
  %16 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc5 = getelementptr inbounds %struct.opj_pi_iterator, ptr %16, i32 0, i32 12
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %poc5, i32 0, i32 2
  %17 = load i32, ptr %layno1, align 8, !tbaa !85
  %cmp = icmp ult i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc6 = getelementptr inbounds %struct.opj_pi_iterator, ptr %18, i32 0, i32 12
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %poc6, i32 0, i32 0
  %19 = load i32, ptr %resno0, align 8, !tbaa !75
  %20 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno7 = getelementptr inbounds %struct.opj_pi_iterator, ptr %20, i32 0, i32 8
  store i32 %19, ptr %resno7, align 8, !tbaa !135
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc69, %for.body
  %21 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno9 = getelementptr inbounds %struct.opj_pi_iterator, ptr %21, i32 0, i32 8
  %22 = load i32, ptr %resno9, align 8, !tbaa !135
  %23 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc10 = getelementptr inbounds %struct.opj_pi_iterator, ptr %23, i32 0, i32 12
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %poc10, i32 0, i32 3
  %24 = load i32, ptr %resno1, align 4, !tbaa !81
  %cmp11 = icmp ult i32 %22, %24
  br i1 %cmp11, label %for.body12, label %for.end72

for.body12:                                       ; preds = %for.cond8
  %25 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc13 = getelementptr inbounds %struct.opj_pi_iterator, ptr %25, i32 0, i32 12
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %poc13, i32 0, i32 1
  %26 = load i32, ptr %compno0, align 4, !tbaa !77
  %27 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno14 = getelementptr inbounds %struct.opj_pi_iterator, ptr %27, i32 0, i32 7
  store i32 %26, ptr %compno14, align 4, !tbaa !134
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc65, %for.body12
  %28 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno16 = getelementptr inbounds %struct.opj_pi_iterator, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %compno16, align 4, !tbaa !134
  %30 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc17 = getelementptr inbounds %struct.opj_pi_iterator, ptr %30, i32 0, i32 12
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %poc17, i32 0, i32 4
  %31 = load i32, ptr %compno1, align 8, !tbaa !83
  %cmp18 = icmp ult i32 %29, %31
  br i1 %cmp18, label %for.body19, label %for.end68

for.body19:                                       ; preds = %for.cond15
  %32 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps20 = getelementptr inbounds %struct.opj_pi_iterator, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %comps20, align 8, !tbaa !24
  %34 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno21 = getelementptr inbounds %struct.opj_pi_iterator, ptr %34, i32 0, i32 7
  %35 = load i32, ptr %compno21, align 4, !tbaa !134
  %idxprom22 = zext i32 %35 to i64
  %arrayidx23 = getelementptr inbounds %struct.opj_pi_comp, ptr %33, i64 %idxprom22
  store ptr %arrayidx23, ptr %comp, align 8, !tbaa !4
  %36 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno24 = getelementptr inbounds %struct.opj_pi_iterator, ptr %36, i32 0, i32 8
  %37 = load i32, ptr %resno24, align 8, !tbaa !135
  %38 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %numresolutions, align 8, !tbaa !42
  %cmp25 = icmp uge i32 %37, %39
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body19
  br label %for.inc65

if.end27:                                         ; preds = %for.body19
  %40 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions28 = getelementptr inbounds %struct.opj_pi_comp, ptr %40, i32 0, i32 3
  %41 = load ptr, ptr %resolutions28, align 8, !tbaa !35
  %42 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno29 = getelementptr inbounds %struct.opj_pi_iterator, ptr %42, i32 0, i32 8
  %43 = load i32, ptr %resno29, align 8, !tbaa !135
  %idxprom30 = zext i32 %43 to i64
  %arrayidx31 = getelementptr inbounds %struct.opj_pi_resolution, ptr %41, i64 %idxprom30
  store ptr %arrayidx31, ptr %res, align 8, !tbaa !4
  %44 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, ptr %44, i32 0, i32 0
  %45 = load i8, ptr %tp_on, align 8, !tbaa !92
  %tobool32 = icmp ne i8 %45, 0
  br i1 %tobool32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end27
  %46 = load ptr, ptr %res, align 8, !tbaa !4
  %pw = getelementptr inbounds %struct.opj_pi_resolution, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %pw, align 4, !tbaa !46
  %48 = load ptr, ptr %res, align 8, !tbaa !4
  %ph = getelementptr inbounds %struct.opj_pi_resolution, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %ph, align 4, !tbaa !47
  %mul = mul i32 %47, %49
  %50 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc34 = getelementptr inbounds %struct.opj_pi_iterator, ptr %50, i32 0, i32 12
  %precno1 = getelementptr inbounds %struct.opj_poc, ptr %poc34, i32 0, i32 7
  store i32 %mul, ptr %precno1, align 4, !tbaa !86
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27
  %51 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc36 = getelementptr inbounds %struct.opj_pi_iterator, ptr %51, i32 0, i32 12
  %precno0 = getelementptr inbounds %struct.opj_poc, ptr %poc36, i32 0, i32 6
  %52 = load i32, ptr %precno0, align 8, !tbaa !79
  %53 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno = getelementptr inbounds %struct.opj_pi_iterator, ptr %53, i32 0, i32 9
  store i32 %52, ptr %precno, align 4, !tbaa !137
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %if.end35
  %54 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno38 = getelementptr inbounds %struct.opj_pi_iterator, ptr %54, i32 0, i32 9
  %55 = load i32, ptr %precno38, align 4, !tbaa !137
  %56 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc39 = getelementptr inbounds %struct.opj_pi_iterator, ptr %56, i32 0, i32 12
  %precno140 = getelementptr inbounds %struct.opj_poc, ptr %poc39, i32 0, i32 7
  %57 = load i32, ptr %precno140, align 4, !tbaa !86
  %cmp41 = icmp ult i32 %55, %57
  br i1 %cmp41, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond37
  %58 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno43 = getelementptr inbounds %struct.opj_pi_iterator, ptr %58, i32 0, i32 10
  %59 = load i32, ptr %layno43, align 8, !tbaa !136
  %60 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %step_l, align 4, !tbaa !34
  %mul44 = mul i32 %59, %61
  %62 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno45 = getelementptr inbounds %struct.opj_pi_iterator, ptr %62, i32 0, i32 8
  %63 = load i32, ptr %resno45, align 8, !tbaa !135
  %64 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, ptr %64, i32 0, i32 4
  %65 = load i32, ptr %step_r, align 8, !tbaa !33
  %mul46 = mul i32 %63, %65
  %add = add i32 %mul44, %mul46
  %66 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno47 = getelementptr inbounds %struct.opj_pi_iterator, ptr %66, i32 0, i32 7
  %67 = load i32, ptr %compno47, align 4, !tbaa !134
  %68 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, ptr %68, i32 0, i32 5
  %69 = load i32, ptr %step_c, align 4, !tbaa !32
  %mul48 = mul i32 %67, %69
  %add49 = add i32 %add, %mul48
  %70 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno50 = getelementptr inbounds %struct.opj_pi_iterator, ptr %70, i32 0, i32 9
  %71 = load i32, ptr %precno50, align 4, !tbaa !137
  %72 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, ptr %72, i32 0, i32 6
  %73 = load i32, ptr %step_p, align 8, !tbaa !31
  %mul51 = mul i32 %71, %73
  %add52 = add i32 %add49, %mul51
  store i32 %add52, ptr %index, align 4, !tbaa !8
  %74 = load i32, ptr %index, align 4, !tbaa !8
  %75 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include_size = getelementptr inbounds %struct.opj_pi_iterator, ptr %75, i32 0, i32 2
  %76 = load i32, ptr %include_size, align 8, !tbaa !23
  %cmp53 = icmp uge i32 %74, %76
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.body42
  %77 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  call void @opj_pi_emit_error(ptr noundef %77, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %for.body42
  %78 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %include, align 8, !tbaa !19
  %80 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom56 = zext i32 %80 to i64
  %arrayidx57 = getelementptr inbounds i16, ptr %79, i64 %idxprom56
  %81 = load i16, ptr %arrayidx57, align 2, !tbaa !138
  %tobool58 = icmp ne i16 %81, 0
  br i1 %tobool58, label %if.end63, label %if.then59

if.then59:                                        ; preds = %if.end55
  %82 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include60 = getelementptr inbounds %struct.opj_pi_iterator, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %include60, align 8, !tbaa !19
  %84 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom61 = zext i32 %84 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %83, i64 %idxprom61
  store i16 1, ptr %arrayidx62, align 2, !tbaa !138
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end55
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end63, %if.then
  br label %for.inc

for.inc:                                          ; preds = %LABEL_SKIP
  %85 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno64 = getelementptr inbounds %struct.opj_pi_iterator, ptr %85, i32 0, i32 9
  %86 = load i32, ptr %precno64, align 4, !tbaa !137
  %inc = add i32 %86, 1
  store i32 %inc, ptr %precno64, align 4, !tbaa !137
  br label %for.cond37, !llvm.loop !139

for.end:                                          ; preds = %for.cond37
  br label %for.inc65

for.inc65:                                        ; preds = %for.end, %if.then26
  %87 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno66 = getelementptr inbounds %struct.opj_pi_iterator, ptr %87, i32 0, i32 7
  %88 = load i32, ptr %compno66, align 4, !tbaa !134
  %inc67 = add i32 %88, 1
  store i32 %inc67, ptr %compno66, align 4, !tbaa !134
  br label %for.cond15, !llvm.loop !140

for.end68:                                        ; preds = %for.cond15
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %89 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno70 = getelementptr inbounds %struct.opj_pi_iterator, ptr %89, i32 0, i32 8
  %90 = load i32, ptr %resno70, align 8, !tbaa !135
  %inc71 = add i32 %90, 1
  store i32 %inc71, ptr %resno70, align 8, !tbaa !135
  br label %for.cond8, !llvm.loop !141

for.end72:                                        ; preds = %for.cond8
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %91 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno74 = getelementptr inbounds %struct.opj_pi_iterator, ptr %91, i32 0, i32 10
  %92 = load i32, ptr %layno74, align 8, !tbaa !136
  %inc75 = add i32 %92, 1
  store i32 %inc75, ptr %layno74, align 8, !tbaa !136
  br label %for.cond, !llvm.loop !142

for.end76:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end76, %if.then59, %if.then54
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #4
  %93 = load i32, ptr %retval, align 4
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_rlcp(ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  %comp = alloca ptr, align 8
  %res = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #4
  store ptr null, ptr %comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #4
  store ptr null, ptr %res, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  store i32 0, ptr %index, align 4, !tbaa !8
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %first, align 4, !tbaa !73
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %comps, align 8, !tbaa !24
  %4 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno = getelementptr inbounds %struct.opj_pi_iterator, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %compno, align 4, !tbaa !134
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %comp, align 8, !tbaa !4
  %6 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %resolutions, align 8, !tbaa !35
  %8 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno = getelementptr inbounds %struct.opj_pi_iterator, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %resno, align 8, !tbaa !135
  %idxprom1 = zext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds %struct.opj_pi_resolution, ptr %7, i64 %idxprom1
  store ptr %arrayidx2, ptr %res, align 8, !tbaa !4
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first3 = getelementptr inbounds %struct.opj_pi_iterator, ptr %10, i32 0, i32 11
  store i32 0, ptr %first3, align 4, !tbaa !73
  br label %if.end

if.end:                                           ; preds = %if.else
  %11 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %11, i32 0, i32 12
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 0
  %12 = load i32, ptr %resno0, align 8, !tbaa !75
  %13 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno4 = getelementptr inbounds %struct.opj_pi_iterator, ptr %13, i32 0, i32 8
  store i32 %12, ptr %resno4, align 8, !tbaa !135
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.end
  %14 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno5 = getelementptr inbounds %struct.opj_pi_iterator, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %resno5, align 8, !tbaa !135
  %16 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc6 = getelementptr inbounds %struct.opj_pi_iterator, ptr %16, i32 0, i32 12
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %poc6, i32 0, i32 3
  %17 = load i32, ptr %resno1, align 4, !tbaa !81
  %cmp = icmp ult i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc7 = getelementptr inbounds %struct.opj_pi_iterator, ptr %18, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc7, i32 0, i32 5
  %19 = load i32, ptr %layno0, align 4, !tbaa !78
  %20 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno = getelementptr inbounds %struct.opj_pi_iterator, ptr %20, i32 0, i32 10
  store i32 %19, ptr %layno, align 8, !tbaa !136
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc69, %for.body
  %21 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno9 = getelementptr inbounds %struct.opj_pi_iterator, ptr %21, i32 0, i32 10
  %22 = load i32, ptr %layno9, align 8, !tbaa !136
  %23 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc10 = getelementptr inbounds %struct.opj_pi_iterator, ptr %23, i32 0, i32 12
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %poc10, i32 0, i32 2
  %24 = load i32, ptr %layno1, align 8, !tbaa !85
  %cmp11 = icmp ult i32 %22, %24
  br i1 %cmp11, label %for.body12, label %for.end72

for.body12:                                       ; preds = %for.cond8
  %25 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc13 = getelementptr inbounds %struct.opj_pi_iterator, ptr %25, i32 0, i32 12
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %poc13, i32 0, i32 1
  %26 = load i32, ptr %compno0, align 4, !tbaa !77
  %27 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno14 = getelementptr inbounds %struct.opj_pi_iterator, ptr %27, i32 0, i32 7
  store i32 %26, ptr %compno14, align 4, !tbaa !134
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc65, %for.body12
  %28 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno16 = getelementptr inbounds %struct.opj_pi_iterator, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %compno16, align 4, !tbaa !134
  %30 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc17 = getelementptr inbounds %struct.opj_pi_iterator, ptr %30, i32 0, i32 12
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %poc17, i32 0, i32 4
  %31 = load i32, ptr %compno1, align 8, !tbaa !83
  %cmp18 = icmp ult i32 %29, %31
  br i1 %cmp18, label %for.body19, label %for.end68

for.body19:                                       ; preds = %for.cond15
  %32 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps20 = getelementptr inbounds %struct.opj_pi_iterator, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %comps20, align 8, !tbaa !24
  %34 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno21 = getelementptr inbounds %struct.opj_pi_iterator, ptr %34, i32 0, i32 7
  %35 = load i32, ptr %compno21, align 4, !tbaa !134
  %idxprom22 = zext i32 %35 to i64
  %arrayidx23 = getelementptr inbounds %struct.opj_pi_comp, ptr %33, i64 %idxprom22
  store ptr %arrayidx23, ptr %comp, align 8, !tbaa !4
  %36 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno24 = getelementptr inbounds %struct.opj_pi_iterator, ptr %36, i32 0, i32 8
  %37 = load i32, ptr %resno24, align 8, !tbaa !135
  %38 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %numresolutions, align 8, !tbaa !42
  %cmp25 = icmp uge i32 %37, %39
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body19
  br label %for.inc65

if.end27:                                         ; preds = %for.body19
  %40 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions28 = getelementptr inbounds %struct.opj_pi_comp, ptr %40, i32 0, i32 3
  %41 = load ptr, ptr %resolutions28, align 8, !tbaa !35
  %42 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno29 = getelementptr inbounds %struct.opj_pi_iterator, ptr %42, i32 0, i32 8
  %43 = load i32, ptr %resno29, align 8, !tbaa !135
  %idxprom30 = zext i32 %43 to i64
  %arrayidx31 = getelementptr inbounds %struct.opj_pi_resolution, ptr %41, i64 %idxprom30
  store ptr %arrayidx31, ptr %res, align 8, !tbaa !4
  %44 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, ptr %44, i32 0, i32 0
  %45 = load i8, ptr %tp_on, align 8, !tbaa !92
  %tobool32 = icmp ne i8 %45, 0
  br i1 %tobool32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end27
  %46 = load ptr, ptr %res, align 8, !tbaa !4
  %pw = getelementptr inbounds %struct.opj_pi_resolution, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %pw, align 4, !tbaa !46
  %48 = load ptr, ptr %res, align 8, !tbaa !4
  %ph = getelementptr inbounds %struct.opj_pi_resolution, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %ph, align 4, !tbaa !47
  %mul = mul i32 %47, %49
  %50 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc34 = getelementptr inbounds %struct.opj_pi_iterator, ptr %50, i32 0, i32 12
  %precno1 = getelementptr inbounds %struct.opj_poc, ptr %poc34, i32 0, i32 7
  store i32 %mul, ptr %precno1, align 4, !tbaa !86
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27
  %51 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc36 = getelementptr inbounds %struct.opj_pi_iterator, ptr %51, i32 0, i32 12
  %precno0 = getelementptr inbounds %struct.opj_poc, ptr %poc36, i32 0, i32 6
  %52 = load i32, ptr %precno0, align 8, !tbaa !79
  %53 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno = getelementptr inbounds %struct.opj_pi_iterator, ptr %53, i32 0, i32 9
  store i32 %52, ptr %precno, align 4, !tbaa !137
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %if.end35
  %54 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno38 = getelementptr inbounds %struct.opj_pi_iterator, ptr %54, i32 0, i32 9
  %55 = load i32, ptr %precno38, align 4, !tbaa !137
  %56 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc39 = getelementptr inbounds %struct.opj_pi_iterator, ptr %56, i32 0, i32 12
  %precno140 = getelementptr inbounds %struct.opj_poc, ptr %poc39, i32 0, i32 7
  %57 = load i32, ptr %precno140, align 4, !tbaa !86
  %cmp41 = icmp ult i32 %55, %57
  br i1 %cmp41, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond37
  %58 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno43 = getelementptr inbounds %struct.opj_pi_iterator, ptr %58, i32 0, i32 10
  %59 = load i32, ptr %layno43, align 8, !tbaa !136
  %60 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %step_l, align 4, !tbaa !34
  %mul44 = mul i32 %59, %61
  %62 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno45 = getelementptr inbounds %struct.opj_pi_iterator, ptr %62, i32 0, i32 8
  %63 = load i32, ptr %resno45, align 8, !tbaa !135
  %64 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, ptr %64, i32 0, i32 4
  %65 = load i32, ptr %step_r, align 8, !tbaa !33
  %mul46 = mul i32 %63, %65
  %add = add i32 %mul44, %mul46
  %66 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno47 = getelementptr inbounds %struct.opj_pi_iterator, ptr %66, i32 0, i32 7
  %67 = load i32, ptr %compno47, align 4, !tbaa !134
  %68 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, ptr %68, i32 0, i32 5
  %69 = load i32, ptr %step_c, align 4, !tbaa !32
  %mul48 = mul i32 %67, %69
  %add49 = add i32 %add, %mul48
  %70 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno50 = getelementptr inbounds %struct.opj_pi_iterator, ptr %70, i32 0, i32 9
  %71 = load i32, ptr %precno50, align 4, !tbaa !137
  %72 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, ptr %72, i32 0, i32 6
  %73 = load i32, ptr %step_p, align 8, !tbaa !31
  %mul51 = mul i32 %71, %73
  %add52 = add i32 %add49, %mul51
  store i32 %add52, ptr %index, align 4, !tbaa !8
  %74 = load i32, ptr %index, align 4, !tbaa !8
  %75 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include_size = getelementptr inbounds %struct.opj_pi_iterator, ptr %75, i32 0, i32 2
  %76 = load i32, ptr %include_size, align 8, !tbaa !23
  %cmp53 = icmp uge i32 %74, %76
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.body42
  %77 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  call void @opj_pi_emit_error(ptr noundef %77, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %for.body42
  %78 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %include, align 8, !tbaa !19
  %80 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom56 = zext i32 %80 to i64
  %arrayidx57 = getelementptr inbounds i16, ptr %79, i64 %idxprom56
  %81 = load i16, ptr %arrayidx57, align 2, !tbaa !138
  %tobool58 = icmp ne i16 %81, 0
  br i1 %tobool58, label %if.end63, label %if.then59

if.then59:                                        ; preds = %if.end55
  %82 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include60 = getelementptr inbounds %struct.opj_pi_iterator, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %include60, align 8, !tbaa !19
  %84 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom61 = zext i32 %84 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %83, i64 %idxprom61
  store i16 1, ptr %arrayidx62, align 2, !tbaa !138
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end55
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end63, %if.then
  br label %for.inc

for.inc:                                          ; preds = %LABEL_SKIP
  %85 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno64 = getelementptr inbounds %struct.opj_pi_iterator, ptr %85, i32 0, i32 9
  %86 = load i32, ptr %precno64, align 4, !tbaa !137
  %inc = add i32 %86, 1
  store i32 %inc, ptr %precno64, align 4, !tbaa !137
  br label %for.cond37, !llvm.loop !143

for.end:                                          ; preds = %for.cond37
  br label %for.inc65

for.inc65:                                        ; preds = %for.end, %if.then26
  %87 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno66 = getelementptr inbounds %struct.opj_pi_iterator, ptr %87, i32 0, i32 7
  %88 = load i32, ptr %compno66, align 4, !tbaa !134
  %inc67 = add i32 %88, 1
  store i32 %inc67, ptr %compno66, align 4, !tbaa !134
  br label %for.cond15, !llvm.loop !144

for.end68:                                        ; preds = %for.cond15
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %89 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno70 = getelementptr inbounds %struct.opj_pi_iterator, ptr %89, i32 0, i32 10
  %90 = load i32, ptr %layno70, align 8, !tbaa !136
  %inc71 = add i32 %90, 1
  store i32 %inc71, ptr %layno70, align 8, !tbaa !136
  br label %for.cond8, !llvm.loop !145

for.end72:                                        ; preds = %for.cond8
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %91 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno74 = getelementptr inbounds %struct.opj_pi_iterator, ptr %91, i32 0, i32 8
  %92 = load i32, ptr %resno74, align 8, !tbaa !135
  %inc75 = add i32 %92, 1
  store i32 %inc75, ptr %resno74, align 8, !tbaa !135
  br label %for.cond, !llvm.loop !146

for.end76:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end76, %if.then59, %if.then54
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #4
  %93 = load i32, ptr %retval, align 4
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_rpcl(ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  %comp = alloca ptr, align 8
  %res = alloca ptr, align 8
  %index = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %dx5 = alloca i32, align 4
  %dy6 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %levelno = alloca i32, align 4
  %trx0 = alloca i32, align 4
  %try0 = alloca i32, align 4
  %trx1 = alloca i32, align 4
  %try1 = alloca i32, align 4
  %rpx = alloca i32, align 4
  %rpy = alloca i32, align 4
  %prci = alloca i32, align 4
  %prcj = alloca i32, align 4
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #4
  store ptr null, ptr %comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #4
  store ptr null, ptr %res, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  store i32 0, ptr %index, align 4, !tbaa !8
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %first, align 4, !tbaa !73
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %resno) #4
  %2 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %2, i32 0, i32 11
  store i32 0, ptr %first1, align 4, !tbaa !73
  %3 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_pi_iterator, ptr %3, i32 0, i32 21
  store i32 0, ptr %dx, align 8, !tbaa !93
  %4 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_pi_iterator, ptr %4, i32 0, i32 22
  store i32 0, ptr %dy, align 4, !tbaa !94
  store i32 0, ptr %compno, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc65, %if.else
  %5 = load i32, ptr %compno, align 4, !tbaa !8
  %6 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %numcomps, align 4, !tbaa !53
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end67

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %8, i32 0, i32 14
  %9 = load ptr, ptr %comps, align 8, !tbaa !24
  %10 = load i32, ptr %compno, align 4, !tbaa !8
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %comp, align 8, !tbaa !4
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %11 = load i32, ptr %resno, align 4, !tbaa !8
  %12 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %numresolutions, align 8, !tbaa !42
  %cmp3 = icmp ult i32 %11, %13
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %dx5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dy6) #4
  %14 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %resolutions, align 8, !tbaa !35
  %16 = load i32, ptr %resno, align 4, !tbaa !8
  %idxprom7 = zext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds %struct.opj_pi_resolution, ptr %15, i64 %idxprom7
  store ptr %arrayidx8, ptr %res, align 8, !tbaa !4
  %17 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %pdx, align 4, !tbaa !43
  %19 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions9 = getelementptr inbounds %struct.opj_pi_comp, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %numresolutions9, align 8, !tbaa !42
  %add = add i32 %18, %20
  %sub = sub i32 %add, 1
  %21 = load i32, ptr %resno, align 4, !tbaa !8
  %sub10 = sub i32 %sub, %21
  %cmp11 = icmp ult i32 %sub10, 32
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body4
  %22 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx12 = getelementptr inbounds %struct.opj_pi_comp, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %dx12, align 8, !tbaa !39
  %24 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx13 = getelementptr inbounds %struct.opj_pi_resolution, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %pdx13, align 4, !tbaa !43
  %26 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions14 = getelementptr inbounds %struct.opj_pi_comp, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %numresolutions14, align 8, !tbaa !42
  %add15 = add i32 %25, %27
  %sub16 = sub i32 %add15, 1
  %28 = load i32, ptr %resno, align 4, !tbaa !8
  %sub17 = sub i32 %sub16, %28
  %shl = shl i32 1, %sub17
  %div = udiv i32 -1, %shl
  %cmp18 = icmp ule i32 %23, %div
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx20 = getelementptr inbounds %struct.opj_pi_comp, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %dx20, align 8, !tbaa !39
  %31 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx21 = getelementptr inbounds %struct.opj_pi_resolution, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %pdx21, align 4, !tbaa !43
  %33 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions22 = getelementptr inbounds %struct.opj_pi_comp, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %numresolutions22, align 8, !tbaa !42
  %add23 = add i32 %32, %34
  %sub24 = sub i32 %add23, 1
  %35 = load i32, ptr %resno, align 4, !tbaa !8
  %sub25 = sub i32 %sub24, %35
  %shl26 = shl i32 1, %sub25
  %mul = mul i32 %30, %shl26
  store i32 %mul, ptr %dx5, align 4, !tbaa !8
  %36 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx27 = getelementptr inbounds %struct.opj_pi_iterator, ptr %36, i32 0, i32 21
  %37 = load i32, ptr %dx27, align 8, !tbaa !93
  %tobool28 = icmp ne i32 %37, 0
  br i1 %tobool28, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then19
  %38 = load i32, ptr %dx5, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then19
  %39 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx29 = getelementptr inbounds %struct.opj_pi_iterator, ptr %39, i32 0, i32 21
  %40 = load i32, ptr %dx29, align 8, !tbaa !93
  %41 = load i32, ptr %dx5, align 4, !tbaa !8
  %call = call i32 @opj_uint_min(i32 noundef %40, i32 noundef %41)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %call, %cond.false ]
  %42 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx30 = getelementptr inbounds %struct.opj_pi_iterator, ptr %42, i32 0, i32 21
  store i32 %cond, ptr %dx30, align 8, !tbaa !93
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %for.body4
  %43 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %pdy, align 4, !tbaa !45
  %45 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions31 = getelementptr inbounds %struct.opj_pi_comp, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %numresolutions31, align 8, !tbaa !42
  %add32 = add i32 %44, %46
  %sub33 = sub i32 %add32, 1
  %47 = load i32, ptr %resno, align 4, !tbaa !8
  %sub34 = sub i32 %sub33, %47
  %cmp35 = icmp ult i32 %sub34, 32
  br i1 %cmp35, label %land.lhs.true36, label %if.end64

land.lhs.true36:                                  ; preds = %if.end
  %48 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy37 = getelementptr inbounds %struct.opj_pi_comp, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %dy37, align 4, !tbaa !41
  %50 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy38 = getelementptr inbounds %struct.opj_pi_resolution, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %pdy38, align 4, !tbaa !45
  %52 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions39 = getelementptr inbounds %struct.opj_pi_comp, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %numresolutions39, align 8, !tbaa !42
  %add40 = add i32 %51, %53
  %sub41 = sub i32 %add40, 1
  %54 = load i32, ptr %resno, align 4, !tbaa !8
  %sub42 = sub i32 %sub41, %54
  %shl43 = shl i32 1, %sub42
  %div44 = udiv i32 -1, %shl43
  %cmp45 = icmp ule i32 %49, %div44
  br i1 %cmp45, label %if.then46, label %if.end64

if.then46:                                        ; preds = %land.lhs.true36
  %55 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy47 = getelementptr inbounds %struct.opj_pi_comp, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %dy47, align 4, !tbaa !41
  %57 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy48 = getelementptr inbounds %struct.opj_pi_resolution, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %pdy48, align 4, !tbaa !45
  %59 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions49 = getelementptr inbounds %struct.opj_pi_comp, ptr %59, i32 0, i32 2
  %60 = load i32, ptr %numresolutions49, align 8, !tbaa !42
  %add50 = add i32 %58, %60
  %sub51 = sub i32 %add50, 1
  %61 = load i32, ptr %resno, align 4, !tbaa !8
  %sub52 = sub i32 %sub51, %61
  %shl53 = shl i32 1, %sub52
  %mul54 = mul i32 %56, %shl53
  store i32 %mul54, ptr %dy6, align 4, !tbaa !8
  %62 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy55 = getelementptr inbounds %struct.opj_pi_iterator, ptr %62, i32 0, i32 22
  %63 = load i32, ptr %dy55, align 4, !tbaa !94
  %tobool56 = icmp ne i32 %63, 0
  br i1 %tobool56, label %cond.false58, label %cond.true57

cond.true57:                                      ; preds = %if.then46
  %64 = load i32, ptr %dy6, align 4, !tbaa !8
  br label %cond.end61

cond.false58:                                     ; preds = %if.then46
  %65 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy59 = getelementptr inbounds %struct.opj_pi_iterator, ptr %65, i32 0, i32 22
  %66 = load i32, ptr %dy59, align 4, !tbaa !94
  %67 = load i32, ptr %dy6, align 4, !tbaa !8
  %call60 = call i32 @opj_uint_min(i32 noundef %66, i32 noundef %67)
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false58, %cond.true57
  %cond62 = phi i32 [ %64, %cond.true57 ], [ %call60, %cond.false58 ]
  %68 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy63 = getelementptr inbounds %struct.opj_pi_iterator, ptr %68, i32 0, i32 22
  store i32 %cond62, ptr %dy63, align 4, !tbaa !94
  br label %if.end64

if.end64:                                         ; preds = %cond.end61, %land.lhs.true36, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %dy6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dx5) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end64
  %69 = load i32, ptr %resno, align 4, !tbaa !8
  %inc = add i32 %69, 1
  store i32 %inc, ptr %resno, align 4, !tbaa !8
  br label %for.cond2, !llvm.loop !147

for.end:                                          ; preds = %for.cond2
  br label %for.inc65

for.inc65:                                        ; preds = %for.end
  %70 = load i32, ptr %compno, align 4, !tbaa !8
  %inc66 = add i32 %70, 1
  store i32 %inc66, ptr %compno, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !148

for.end67:                                        ; preds = %for.cond
  %71 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx68 = getelementptr inbounds %struct.opj_pi_iterator, ptr %71, i32 0, i32 21
  %72 = load i32, ptr %dx68, align 8, !tbaa !93
  %cmp69 = icmp eq i32 %72, 0
  br i1 %cmp69, label %if.then72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end67
  %73 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy70 = getelementptr inbounds %struct.opj_pi_iterator, ptr %73, i32 0, i32 22
  %74 = load i32, ptr %dy70, align 4, !tbaa !94
  %cmp71 = icmp eq i32 %74, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false, %for.end67
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then72
  call void @llvm.lifetime.end.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup313 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end75

if.end75:                                         ; preds = %cleanup.cont
  %75 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, ptr %75, i32 0, i32 0
  %76 = load i8, ptr %tp_on, align 8, !tbaa !92
  %tobool76 = icmp ne i8 %76, 0
  br i1 %tobool76, label %if.end85, label %if.then77

if.then77:                                        ; preds = %if.end75
  %77 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %77, i32 0, i32 16
  %78 = load i32, ptr %ty0, align 4, !tbaa !28
  %79 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %79, i32 0, i32 12
  %ty078 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 14
  store i32 %78, ptr %ty078, align 4, !tbaa !119
  %80 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %80, i32 0, i32 15
  %81 = load i32, ptr %tx0, align 8, !tbaa !27
  %82 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc79 = getelementptr inbounds %struct.opj_pi_iterator, ptr %82, i32 0, i32 12
  %tx080 = getelementptr inbounds %struct.opj_poc, ptr %poc79, i32 0, i32 12
  store i32 %81, ptr %tx080, align 4, !tbaa !118
  %83 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %83, i32 0, i32 18
  %84 = load i32, ptr %ty1, align 4, !tbaa !30
  %85 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc81 = getelementptr inbounds %struct.opj_pi_iterator, ptr %85, i32 0, i32 12
  %ty182 = getelementptr inbounds %struct.opj_poc, ptr %poc81, i32 0, i32 15
  store i32 %84, ptr %ty182, align 8, !tbaa !121
  %86 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %86, i32 0, i32 17
  %87 = load i32, ptr %tx1, align 8, !tbaa !29
  %88 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc83 = getelementptr inbounds %struct.opj_pi_iterator, ptr %88, i32 0, i32 12
  %tx184 = getelementptr inbounds %struct.opj_poc, ptr %poc83, i32 0, i32 13
  store i32 %87, ptr %tx184, align 8, !tbaa !120
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %if.end75
  %89 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc86 = getelementptr inbounds %struct.opj_pi_iterator, ptr %89, i32 0, i32 12
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %poc86, i32 0, i32 0
  %90 = load i32, ptr %resno0, align 8, !tbaa !75
  %91 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno87 = getelementptr inbounds %struct.opj_pi_iterator, ptr %91, i32 0, i32 8
  store i32 %90, ptr %resno87, align 8, !tbaa !135
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc309, %if.end85
  %92 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno89 = getelementptr inbounds %struct.opj_pi_iterator, ptr %92, i32 0, i32 8
  %93 = load i32, ptr %resno89, align 8, !tbaa !135
  %94 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc90 = getelementptr inbounds %struct.opj_pi_iterator, ptr %94, i32 0, i32 12
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %poc90, i32 0, i32 3
  %95 = load i32, ptr %resno1, align 4, !tbaa !81
  %cmp91 = icmp ult i32 %93, %95
  br i1 %cmp91, label %for.body92, label %for.end312

for.body92:                                       ; preds = %for.cond88
  %96 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc93 = getelementptr inbounds %struct.opj_pi_iterator, ptr %96, i32 0, i32 12
  %ty094 = getelementptr inbounds %struct.opj_poc, ptr %poc93, i32 0, i32 14
  %97 = load i32, ptr %ty094, align 4, !tbaa !119
  %98 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y = getelementptr inbounds %struct.opj_pi_iterator, ptr %98, i32 0, i32 20
  store i32 %97, ptr %y, align 4, !tbaa !149
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc300, %for.body92
  %99 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y96 = getelementptr inbounds %struct.opj_pi_iterator, ptr %99, i32 0, i32 20
  %100 = load i32, ptr %y96, align 4, !tbaa !149
  %101 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc97 = getelementptr inbounds %struct.opj_pi_iterator, ptr %101, i32 0, i32 12
  %ty198 = getelementptr inbounds %struct.opj_poc, ptr %poc97, i32 0, i32 15
  %102 = load i32, ptr %ty198, align 8, !tbaa !121
  %cmp99 = icmp slt i32 %100, %102
  br i1 %cmp99, label %for.body100, label %for.end308

for.body100:                                      ; preds = %for.cond95
  %103 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc101 = getelementptr inbounds %struct.opj_pi_iterator, ptr %103, i32 0, i32 12
  %tx0102 = getelementptr inbounds %struct.opj_poc, ptr %poc101, i32 0, i32 12
  %104 = load i32, ptr %tx0102, align 4, !tbaa !118
  %105 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.opj_pi_iterator, ptr %105, i32 0, i32 19
  store i32 %104, ptr %x, align 8, !tbaa !150
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc291, %for.body100
  %106 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x104 = getelementptr inbounds %struct.opj_pi_iterator, ptr %106, i32 0, i32 19
  %107 = load i32, ptr %x104, align 8, !tbaa !150
  %108 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc105 = getelementptr inbounds %struct.opj_pi_iterator, ptr %108, i32 0, i32 12
  %tx1106 = getelementptr inbounds %struct.opj_poc, ptr %poc105, i32 0, i32 13
  %109 = load i32, ptr %tx1106, align 8, !tbaa !120
  %cmp107 = icmp slt i32 %107, %109
  br i1 %cmp107, label %for.body108, label %for.end299

for.body108:                                      ; preds = %for.cond103
  %110 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc109 = getelementptr inbounds %struct.opj_pi_iterator, ptr %110, i32 0, i32 12
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %poc109, i32 0, i32 1
  %111 = load i32, ptr %compno0, align 4, !tbaa !77
  %112 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno110 = getelementptr inbounds %struct.opj_pi_iterator, ptr %112, i32 0, i32 7
  store i32 %111, ptr %compno110, align 4, !tbaa !134
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc287, %for.body108
  %113 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno112 = getelementptr inbounds %struct.opj_pi_iterator, ptr %113, i32 0, i32 7
  %114 = load i32, ptr %compno112, align 4, !tbaa !134
  %115 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc113 = getelementptr inbounds %struct.opj_pi_iterator, ptr %115, i32 0, i32 12
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %poc113, i32 0, i32 4
  %116 = load i32, ptr %compno1, align 8, !tbaa !83
  %cmp114 = icmp ult i32 %114, %116
  br i1 %cmp114, label %for.body115, label %for.end290

for.body115:                                      ; preds = %for.cond111
  %117 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps116 = getelementptr inbounds %struct.opj_pi_iterator, ptr %117, i32 0, i32 14
  %118 = load ptr, ptr %comps116, align 8, !tbaa !24
  %119 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno117 = getelementptr inbounds %struct.opj_pi_iterator, ptr %119, i32 0, i32 7
  %120 = load i32, ptr %compno117, align 4, !tbaa !134
  %idxprom118 = zext i32 %120 to i64
  %arrayidx119 = getelementptr inbounds %struct.opj_pi_comp, ptr %118, i64 %idxprom118
  store ptr %arrayidx119, ptr %comp, align 8, !tbaa !4
  %121 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno120 = getelementptr inbounds %struct.opj_pi_iterator, ptr %121, i32 0, i32 8
  %122 = load i32, ptr %resno120, align 8, !tbaa !135
  %123 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions121 = getelementptr inbounds %struct.opj_pi_comp, ptr %123, i32 0, i32 2
  %124 = load i32, ptr %numresolutions121, align 8, !tbaa !42
  %cmp122 = icmp uge i32 %122, %124
  br i1 %cmp122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %for.body115
  br label %for.inc287

if.end124:                                        ; preds = %for.body115
  %125 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions125 = getelementptr inbounds %struct.opj_pi_comp, ptr %125, i32 0, i32 3
  %126 = load ptr, ptr %resolutions125, align 8, !tbaa !35
  %127 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno126 = getelementptr inbounds %struct.opj_pi_iterator, ptr %127, i32 0, i32 8
  %128 = load i32, ptr %resno126, align 8, !tbaa !135
  %idxprom127 = zext i32 %128 to i64
  %arrayidx128 = getelementptr inbounds %struct.opj_pi_resolution, ptr %126, i64 %idxprom127
  store ptr %arrayidx128, ptr %res, align 8, !tbaa !4
  %129 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions129 = getelementptr inbounds %struct.opj_pi_comp, ptr %129, i32 0, i32 2
  %130 = load i32, ptr %numresolutions129, align 8, !tbaa !42
  %sub130 = sub i32 %130, 1
  %131 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno131 = getelementptr inbounds %struct.opj_pi_iterator, ptr %131, i32 0, i32 8
  %132 = load i32, ptr %resno131, align 8, !tbaa !135
  %sub132 = sub i32 %sub130, %132
  store i32 %sub132, ptr %levelno, align 4, !tbaa !8
  %133 = load i32, ptr %levelno, align 4, !tbaa !8
  %cmp133 = icmp uge i32 %133, 32
  br i1 %cmp133, label %if.then145, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.end124
  %134 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx135 = getelementptr inbounds %struct.opj_pi_comp, ptr %134, i32 0, i32 0
  %135 = load i32, ptr %dx135, align 8, !tbaa !39
  %136 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl136 = shl i32 %135, %136
  %137 = load i32, ptr %levelno, align 4, !tbaa !8
  %shr = lshr i32 %shl136, %137
  %138 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx137 = getelementptr inbounds %struct.opj_pi_comp, ptr %138, i32 0, i32 0
  %139 = load i32, ptr %dx137, align 8, !tbaa !39
  %cmp138 = icmp ne i32 %shr, %139
  br i1 %cmp138, label %if.then145, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false134
  %140 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy140 = getelementptr inbounds %struct.opj_pi_comp, ptr %140, i32 0, i32 1
  %141 = load i32, ptr %dy140, align 4, !tbaa !41
  %142 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl141 = shl i32 %141, %142
  %143 = load i32, ptr %levelno, align 4, !tbaa !8
  %shr142 = lshr i32 %shl141, %143
  %144 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy143 = getelementptr inbounds %struct.opj_pi_comp, ptr %144, i32 0, i32 1
  %145 = load i32, ptr %dy143, align 4, !tbaa !41
  %cmp144 = icmp ne i32 %shr142, %145
  br i1 %cmp144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %lor.lhs.false139, %lor.lhs.false134, %if.end124
  br label %for.inc287

if.end146:                                        ; preds = %lor.lhs.false139
  %146 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx147 = getelementptr inbounds %struct.opj_pi_comp, ptr %146, i32 0, i32 0
  %147 = load i32, ptr %dx147, align 8, !tbaa !39
  %148 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl148 = shl i32 %147, %148
  %cmp149 = icmp ugt i32 %shl148, 2147483647
  br i1 %cmp149, label %if.then154, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.end146
  %149 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy151 = getelementptr inbounds %struct.opj_pi_comp, ptr %149, i32 0, i32 1
  %150 = load i32, ptr %dy151, align 4, !tbaa !41
  %151 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl152 = shl i32 %150, %151
  %cmp153 = icmp ugt i32 %shl152, 2147483647
  br i1 %cmp153, label %if.then154, label %if.end155

if.then154:                                       ; preds = %lor.lhs.false150, %if.end146
  br label %for.inc287

if.end155:                                        ; preds = %lor.lhs.false150
  %152 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0156 = getelementptr inbounds %struct.opj_pi_iterator, ptr %152, i32 0, i32 15
  %153 = load i32, ptr %tx0156, align 8, !tbaa !27
  %154 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx157 = getelementptr inbounds %struct.opj_pi_comp, ptr %154, i32 0, i32 0
  %155 = load i32, ptr %dx157, align 8, !tbaa !39
  %156 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl158 = shl i32 %155, %156
  %call159 = call i32 @opj_int_ceildiv(i32 noundef %153, i32 noundef %shl158)
  store i32 %call159, ptr %trx0, align 4, !tbaa !8
  %157 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0160 = getelementptr inbounds %struct.opj_pi_iterator, ptr %157, i32 0, i32 16
  %158 = load i32, ptr %ty0160, align 4, !tbaa !28
  %159 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy161 = getelementptr inbounds %struct.opj_pi_comp, ptr %159, i32 0, i32 1
  %160 = load i32, ptr %dy161, align 4, !tbaa !41
  %161 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl162 = shl i32 %160, %161
  %call163 = call i32 @opj_int_ceildiv(i32 noundef %158, i32 noundef %shl162)
  store i32 %call163, ptr %try0, align 4, !tbaa !8
  %162 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx1164 = getelementptr inbounds %struct.opj_pi_iterator, ptr %162, i32 0, i32 17
  %163 = load i32, ptr %tx1164, align 8, !tbaa !29
  %164 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx165 = getelementptr inbounds %struct.opj_pi_comp, ptr %164, i32 0, i32 0
  %165 = load i32, ptr %dx165, align 8, !tbaa !39
  %166 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl166 = shl i32 %165, %166
  %call167 = call i32 @opj_int_ceildiv(i32 noundef %163, i32 noundef %shl166)
  store i32 %call167, ptr %trx1, align 4, !tbaa !8
  %167 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty1168 = getelementptr inbounds %struct.opj_pi_iterator, ptr %167, i32 0, i32 18
  %168 = load i32, ptr %ty1168, align 4, !tbaa !30
  %169 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy169 = getelementptr inbounds %struct.opj_pi_comp, ptr %169, i32 0, i32 1
  %170 = load i32, ptr %dy169, align 4, !tbaa !41
  %171 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl170 = shl i32 %170, %171
  %call171 = call i32 @opj_int_ceildiv(i32 noundef %168, i32 noundef %shl170)
  store i32 %call171, ptr %try1, align 4, !tbaa !8
  %172 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx172 = getelementptr inbounds %struct.opj_pi_resolution, ptr %172, i32 0, i32 0
  %173 = load i32, ptr %pdx172, align 4, !tbaa !43
  %174 = load i32, ptr %levelno, align 4, !tbaa !8
  %add173 = add i32 %173, %174
  store i32 %add173, ptr %rpx, align 4, !tbaa !8
  %175 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy174 = getelementptr inbounds %struct.opj_pi_resolution, ptr %175, i32 0, i32 1
  %176 = load i32, ptr %pdy174, align 4, !tbaa !45
  %177 = load i32, ptr %levelno, align 4, !tbaa !8
  %add175 = add i32 %176, %177
  store i32 %add175, ptr %rpy, align 4, !tbaa !8
  %178 = load i32, ptr %rpx, align 4, !tbaa !8
  %cmp176 = icmp uge i32 %178, 31
  br i1 %cmp176, label %if.then191, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %if.end155
  %179 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx178 = getelementptr inbounds %struct.opj_pi_comp, ptr %179, i32 0, i32 0
  %180 = load i32, ptr %dx178, align 8, !tbaa !39
  %181 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl179 = shl i32 %180, %181
  %182 = load i32, ptr %rpx, align 4, !tbaa !8
  %shr180 = lshr i32 %shl179, %182
  %183 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx181 = getelementptr inbounds %struct.opj_pi_comp, ptr %183, i32 0, i32 0
  %184 = load i32, ptr %dx181, align 8, !tbaa !39
  %cmp182 = icmp ne i32 %shr180, %184
  br i1 %cmp182, label %if.then191, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %lor.lhs.false177
  %185 = load i32, ptr %rpy, align 4, !tbaa !8
  %cmp184 = icmp uge i32 %185, 31
  br i1 %cmp184, label %if.then191, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %lor.lhs.false183
  %186 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy186 = getelementptr inbounds %struct.opj_pi_comp, ptr %186, i32 0, i32 1
  %187 = load i32, ptr %dy186, align 4, !tbaa !41
  %188 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl187 = shl i32 %187, %188
  %189 = load i32, ptr %rpy, align 4, !tbaa !8
  %shr188 = lshr i32 %shl187, %189
  %190 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy189 = getelementptr inbounds %struct.opj_pi_comp, ptr %190, i32 0, i32 1
  %191 = load i32, ptr %dy189, align 4, !tbaa !41
  %cmp190 = icmp ne i32 %shr188, %191
  br i1 %cmp190, label %if.then191, label %if.end192

if.then191:                                       ; preds = %lor.lhs.false185, %lor.lhs.false183, %lor.lhs.false177, %if.end155
  br label %for.inc287

if.end192:                                        ; preds = %lor.lhs.false185
  %192 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y193 = getelementptr inbounds %struct.opj_pi_iterator, ptr %192, i32 0, i32 20
  %193 = load i32, ptr %y193, align 4, !tbaa !149
  %194 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy194 = getelementptr inbounds %struct.opj_pi_comp, ptr %194, i32 0, i32 1
  %195 = load i32, ptr %dy194, align 4, !tbaa !41
  %196 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl195 = shl i32 %195, %196
  %rem = srem i32 %193, %shl195
  %cmp196 = icmp eq i32 %rem, 0
  br i1 %cmp196, label %if.end207, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %if.end192
  %197 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y198 = getelementptr inbounds %struct.opj_pi_iterator, ptr %197, i32 0, i32 20
  %198 = load i32, ptr %y198, align 4, !tbaa !149
  %199 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0199 = getelementptr inbounds %struct.opj_pi_iterator, ptr %199, i32 0, i32 16
  %200 = load i32, ptr %ty0199, align 4, !tbaa !28
  %cmp200 = icmp eq i32 %198, %200
  br i1 %cmp200, label %land.lhs.true201, label %if.then206

land.lhs.true201:                                 ; preds = %lor.lhs.false197
  %201 = load i32, ptr %try0, align 4, !tbaa !8
  %202 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl202 = shl i32 %201, %202
  %203 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl203 = shl i32 1, %203
  %rem204 = srem i32 %shl202, %shl203
  %tobool205 = icmp ne i32 %rem204, 0
  br i1 %tobool205, label %if.end207, label %if.then206

if.then206:                                       ; preds = %land.lhs.true201, %lor.lhs.false197
  br label %for.inc287

if.end207:                                        ; preds = %land.lhs.true201, %if.end192
  %204 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x208 = getelementptr inbounds %struct.opj_pi_iterator, ptr %204, i32 0, i32 19
  %205 = load i32, ptr %x208, align 8, !tbaa !150
  %206 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx209 = getelementptr inbounds %struct.opj_pi_comp, ptr %206, i32 0, i32 0
  %207 = load i32, ptr %dx209, align 8, !tbaa !39
  %208 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl210 = shl i32 %207, %208
  %rem211 = srem i32 %205, %shl210
  %cmp212 = icmp eq i32 %rem211, 0
  br i1 %cmp212, label %if.end223, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %if.end207
  %209 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x214 = getelementptr inbounds %struct.opj_pi_iterator, ptr %209, i32 0, i32 19
  %210 = load i32, ptr %x214, align 8, !tbaa !150
  %211 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0215 = getelementptr inbounds %struct.opj_pi_iterator, ptr %211, i32 0, i32 15
  %212 = load i32, ptr %tx0215, align 8, !tbaa !27
  %cmp216 = icmp eq i32 %210, %212
  br i1 %cmp216, label %land.lhs.true217, label %if.then222

land.lhs.true217:                                 ; preds = %lor.lhs.false213
  %213 = load i32, ptr %trx0, align 4, !tbaa !8
  %214 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl218 = shl i32 %213, %214
  %215 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl219 = shl i32 1, %215
  %rem220 = srem i32 %shl218, %shl219
  %tobool221 = icmp ne i32 %rem220, 0
  br i1 %tobool221, label %if.end223, label %if.then222

if.then222:                                       ; preds = %land.lhs.true217, %lor.lhs.false213
  br label %for.inc287

if.end223:                                        ; preds = %land.lhs.true217, %if.end207
  %216 = load ptr, ptr %res, align 8, !tbaa !4
  %pw = getelementptr inbounds %struct.opj_pi_resolution, ptr %216, i32 0, i32 2
  %217 = load i32, ptr %pw, align 4, !tbaa !46
  %cmp224 = icmp eq i32 %217, 0
  br i1 %cmp224, label %if.then227, label %lor.lhs.false225

lor.lhs.false225:                                 ; preds = %if.end223
  %218 = load ptr, ptr %res, align 8, !tbaa !4
  %ph = getelementptr inbounds %struct.opj_pi_resolution, ptr %218, i32 0, i32 3
  %219 = load i32, ptr %ph, align 4, !tbaa !47
  %cmp226 = icmp eq i32 %219, 0
  br i1 %cmp226, label %if.then227, label %if.end228

if.then227:                                       ; preds = %lor.lhs.false225, %if.end223
  br label %for.inc287

if.end228:                                        ; preds = %lor.lhs.false225
  %220 = load i32, ptr %trx0, align 4, !tbaa !8
  %221 = load i32, ptr %trx1, align 4, !tbaa !8
  %cmp229 = icmp eq i32 %220, %221
  br i1 %cmp229, label %if.then232, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %if.end228
  %222 = load i32, ptr %try0, align 4, !tbaa !8
  %223 = load i32, ptr %try1, align 4, !tbaa !8
  %cmp231 = icmp eq i32 %222, %223
  br i1 %cmp231, label %if.then232, label %if.end233

if.then232:                                       ; preds = %lor.lhs.false230, %if.end228
  br label %for.inc287

if.end233:                                        ; preds = %lor.lhs.false230
  %224 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x234 = getelementptr inbounds %struct.opj_pi_iterator, ptr %224, i32 0, i32 19
  %225 = load i32, ptr %x234, align 8, !tbaa !150
  %226 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx235 = getelementptr inbounds %struct.opj_pi_comp, ptr %226, i32 0, i32 0
  %227 = load i32, ptr %dx235, align 8, !tbaa !39
  %228 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl236 = shl i32 %227, %228
  %call237 = call i32 @opj_int_ceildiv(i32 noundef %225, i32 noundef %shl236)
  %229 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx238 = getelementptr inbounds %struct.opj_pi_resolution, ptr %229, i32 0, i32 0
  %230 = load i32, ptr %pdx238, align 4, !tbaa !43
  %call239 = call i32 @opj_int_floordivpow2(i32 noundef %call237, i32 noundef %230)
  %231 = load i32, ptr %trx0, align 4, !tbaa !8
  %232 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx240 = getelementptr inbounds %struct.opj_pi_resolution, ptr %232, i32 0, i32 0
  %233 = load i32, ptr %pdx240, align 4, !tbaa !43
  %call241 = call i32 @opj_int_floordivpow2(i32 noundef %231, i32 noundef %233)
  %sub242 = sub nsw i32 %call239, %call241
  store i32 %sub242, ptr %prci, align 4, !tbaa !8
  %234 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y243 = getelementptr inbounds %struct.opj_pi_iterator, ptr %234, i32 0, i32 20
  %235 = load i32, ptr %y243, align 4, !tbaa !149
  %236 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy244 = getelementptr inbounds %struct.opj_pi_comp, ptr %236, i32 0, i32 1
  %237 = load i32, ptr %dy244, align 4, !tbaa !41
  %238 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl245 = shl i32 %237, %238
  %call246 = call i32 @opj_int_ceildiv(i32 noundef %235, i32 noundef %shl245)
  %239 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy247 = getelementptr inbounds %struct.opj_pi_resolution, ptr %239, i32 0, i32 1
  %240 = load i32, ptr %pdy247, align 4, !tbaa !45
  %call248 = call i32 @opj_int_floordivpow2(i32 noundef %call246, i32 noundef %240)
  %241 = load i32, ptr %try0, align 4, !tbaa !8
  %242 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy249 = getelementptr inbounds %struct.opj_pi_resolution, ptr %242, i32 0, i32 1
  %243 = load i32, ptr %pdy249, align 4, !tbaa !45
  %call250 = call i32 @opj_int_floordivpow2(i32 noundef %241, i32 noundef %243)
  %sub251 = sub nsw i32 %call248, %call250
  store i32 %sub251, ptr %prcj, align 4, !tbaa !8
  %244 = load i32, ptr %prci, align 4, !tbaa !8
  %245 = load i32, ptr %prcj, align 4, !tbaa !8
  %246 = load ptr, ptr %res, align 8, !tbaa !4
  %pw252 = getelementptr inbounds %struct.opj_pi_resolution, ptr %246, i32 0, i32 2
  %247 = load i32, ptr %pw252, align 4, !tbaa !46
  %mul253 = mul nsw i32 %245, %247
  %add254 = add nsw i32 %244, %mul253
  %248 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno = getelementptr inbounds %struct.opj_pi_iterator, ptr %248, i32 0, i32 9
  store i32 %add254, ptr %precno, align 4, !tbaa !137
  %249 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc255 = getelementptr inbounds %struct.opj_pi_iterator, ptr %249, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc255, i32 0, i32 5
  %250 = load i32, ptr %layno0, align 4, !tbaa !78
  %251 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno = getelementptr inbounds %struct.opj_pi_iterator, ptr %251, i32 0, i32 10
  store i32 %250, ptr %layno, align 8, !tbaa !136
  br label %for.cond256

for.cond256:                                      ; preds = %for.inc283, %if.end233
  %252 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno257 = getelementptr inbounds %struct.opj_pi_iterator, ptr %252, i32 0, i32 10
  %253 = load i32, ptr %layno257, align 8, !tbaa !136
  %254 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc258 = getelementptr inbounds %struct.opj_pi_iterator, ptr %254, i32 0, i32 12
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %poc258, i32 0, i32 2
  %255 = load i32, ptr %layno1, align 8, !tbaa !85
  %cmp259 = icmp ult i32 %253, %255
  br i1 %cmp259, label %for.body260, label %for.end286

for.body260:                                      ; preds = %for.cond256
  %256 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno261 = getelementptr inbounds %struct.opj_pi_iterator, ptr %256, i32 0, i32 10
  %257 = load i32, ptr %layno261, align 8, !tbaa !136
  %258 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, ptr %258, i32 0, i32 3
  %259 = load i32, ptr %step_l, align 4, !tbaa !34
  %mul262 = mul i32 %257, %259
  %260 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno263 = getelementptr inbounds %struct.opj_pi_iterator, ptr %260, i32 0, i32 8
  %261 = load i32, ptr %resno263, align 8, !tbaa !135
  %262 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, ptr %262, i32 0, i32 4
  %263 = load i32, ptr %step_r, align 8, !tbaa !33
  %mul264 = mul i32 %261, %263
  %add265 = add i32 %mul262, %mul264
  %264 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno266 = getelementptr inbounds %struct.opj_pi_iterator, ptr %264, i32 0, i32 7
  %265 = load i32, ptr %compno266, align 4, !tbaa !134
  %266 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, ptr %266, i32 0, i32 5
  %267 = load i32, ptr %step_c, align 4, !tbaa !32
  %mul267 = mul i32 %265, %267
  %add268 = add i32 %add265, %mul267
  %268 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno269 = getelementptr inbounds %struct.opj_pi_iterator, ptr %268, i32 0, i32 9
  %269 = load i32, ptr %precno269, align 4, !tbaa !137
  %270 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, ptr %270, i32 0, i32 6
  %271 = load i32, ptr %step_p, align 8, !tbaa !31
  %mul270 = mul i32 %269, %271
  %add271 = add i32 %add268, %mul270
  store i32 %add271, ptr %index, align 4, !tbaa !8
  %272 = load i32, ptr %index, align 4, !tbaa !8
  %273 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include_size = getelementptr inbounds %struct.opj_pi_iterator, ptr %273, i32 0, i32 2
  %274 = load i32, ptr %include_size, align 8, !tbaa !23
  %cmp272 = icmp uge i32 %272, %274
  br i1 %cmp272, label %if.then273, label %if.end274

if.then273:                                       ; preds = %for.body260
  %275 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  call void @opj_pi_emit_error(ptr noundef %275, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup313

if.end274:                                        ; preds = %for.body260
  %276 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %276, i32 0, i32 1
  %277 = load ptr, ptr %include, align 8, !tbaa !19
  %278 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom275 = zext i32 %278 to i64
  %arrayidx276 = getelementptr inbounds i16, ptr %277, i64 %idxprom275
  %279 = load i16, ptr %arrayidx276, align 2, !tbaa !138
  %tobool277 = icmp ne i16 %279, 0
  br i1 %tobool277, label %if.end282, label %if.then278

if.then278:                                       ; preds = %if.end274
  %280 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include279 = getelementptr inbounds %struct.opj_pi_iterator, ptr %280, i32 0, i32 1
  %281 = load ptr, ptr %include279, align 8, !tbaa !19
  %282 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom280 = zext i32 %282 to i64
  %arrayidx281 = getelementptr inbounds i16, ptr %281, i64 %idxprom280
  store i16 1, ptr %arrayidx281, align 2, !tbaa !138
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup313

if.end282:                                        ; preds = %if.end274
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end282, %if.then
  br label %for.inc283

for.inc283:                                       ; preds = %LABEL_SKIP
  %283 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno284 = getelementptr inbounds %struct.opj_pi_iterator, ptr %283, i32 0, i32 10
  %284 = load i32, ptr %layno284, align 8, !tbaa !136
  %inc285 = add i32 %284, 1
  store i32 %inc285, ptr %layno284, align 8, !tbaa !136
  br label %for.cond256, !llvm.loop !151

for.end286:                                       ; preds = %for.cond256
  br label %for.inc287

for.inc287:                                       ; preds = %for.end286, %if.then232, %if.then227, %if.then222, %if.then206, %if.then191, %if.then154, %if.then145, %if.then123
  %285 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno288 = getelementptr inbounds %struct.opj_pi_iterator, ptr %285, i32 0, i32 7
  %286 = load i32, ptr %compno288, align 4, !tbaa !134
  %inc289 = add i32 %286, 1
  store i32 %inc289, ptr %compno288, align 4, !tbaa !134
  br label %for.cond111, !llvm.loop !152

for.end290:                                       ; preds = %for.cond111
  br label %for.inc291

for.inc291:                                       ; preds = %for.end290
  %287 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx292 = getelementptr inbounds %struct.opj_pi_iterator, ptr %287, i32 0, i32 21
  %288 = load i32, ptr %dx292, align 8, !tbaa !93
  %289 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x293 = getelementptr inbounds %struct.opj_pi_iterator, ptr %289, i32 0, i32 19
  %290 = load i32, ptr %x293, align 8, !tbaa !150
  %291 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx294 = getelementptr inbounds %struct.opj_pi_iterator, ptr %291, i32 0, i32 21
  %292 = load i32, ptr %dx294, align 8, !tbaa !93
  %rem295 = srem i32 %290, %292
  %sub296 = sub i32 %288, %rem295
  %293 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x297 = getelementptr inbounds %struct.opj_pi_iterator, ptr %293, i32 0, i32 19
  %294 = load i32, ptr %x297, align 8, !tbaa !150
  %add298 = add nsw i32 %294, %sub296
  store i32 %add298, ptr %x297, align 8, !tbaa !150
  br label %for.cond103, !llvm.loop !153

for.end299:                                       ; preds = %for.cond103
  br label %for.inc300

for.inc300:                                       ; preds = %for.end299
  %295 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy301 = getelementptr inbounds %struct.opj_pi_iterator, ptr %295, i32 0, i32 22
  %296 = load i32, ptr %dy301, align 4, !tbaa !94
  %297 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y302 = getelementptr inbounds %struct.opj_pi_iterator, ptr %297, i32 0, i32 20
  %298 = load i32, ptr %y302, align 4, !tbaa !149
  %299 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy303 = getelementptr inbounds %struct.opj_pi_iterator, ptr %299, i32 0, i32 22
  %300 = load i32, ptr %dy303, align 4, !tbaa !94
  %rem304 = srem i32 %298, %300
  %sub305 = sub i32 %296, %rem304
  %301 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y306 = getelementptr inbounds %struct.opj_pi_iterator, ptr %301, i32 0, i32 20
  %302 = load i32, ptr %y306, align 4, !tbaa !149
  %add307 = add nsw i32 %302, %sub305
  store i32 %add307, ptr %y306, align 4, !tbaa !149
  br label %for.cond95, !llvm.loop !154

for.end308:                                       ; preds = %for.cond95
  br label %for.inc309

for.inc309:                                       ; preds = %for.end308
  %303 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno310 = getelementptr inbounds %struct.opj_pi_iterator, ptr %303, i32 0, i32 8
  %304 = load i32, ptr %resno310, align 8, !tbaa !135
  %inc311 = add i32 %304, 1
  store i32 %inc311, ptr %resno310, align 8, !tbaa !135
  br label %for.cond88, !llvm.loop !155

for.end312:                                       ; preds = %for.cond88
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup313

cleanup313:                                       ; preds = %for.end312, %if.then278, %if.then273, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #4
  %305 = load i32, ptr %retval, align 4
  ret i32 %305
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_pcrl(ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  %comp = alloca ptr, align 8
  %res = alloca ptr, align 8
  %index = alloca i32, align 4
  %compno1 = alloca i32, align 4
  %resno = alloca i32, align 4
  %dx9 = alloca i32, align 4
  %dy10 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %levelno = alloca i32, align 4
  %trx0 = alloca i32, align 4
  %try0 = alloca i32, align 4
  %trx1 = alloca i32, align 4
  %try1 = alloca i32, align 4
  %rpx = alloca i32, align 4
  %rpy = alloca i32, align 4
  %prci = alloca i32, align 4
  %prcj = alloca i32, align 4
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #4
  store ptr null, ptr %comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #4
  store ptr null, ptr %res, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  store i32 0, ptr %index, align 4, !tbaa !8
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %first, align 4, !tbaa !73
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %comps, align 8, !tbaa !24
  %4 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno = getelementptr inbounds %struct.opj_pi_iterator, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %compno, align 4, !tbaa !134
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %comp, align 8, !tbaa !4
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %compno1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %resno) #4
  %6 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first2 = getelementptr inbounds %struct.opj_pi_iterator, ptr %6, i32 0, i32 11
  store i32 0, ptr %first2, align 4, !tbaa !73
  %7 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_pi_iterator, ptr %7, i32 0, i32 21
  store i32 0, ptr %dx, align 8, !tbaa !93
  %8 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_pi_iterator, ptr %8, i32 0, i32 22
  store i32 0, ptr %dy, align 4, !tbaa !94
  store i32 0, ptr %compno1, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc69, %if.else
  %9 = load i32, ptr %compno1, align 4, !tbaa !8
  %10 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, ptr %10, i32 0, i32 13
  %11 = load i32, ptr %numcomps, align 4, !tbaa !53
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end71

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps3 = getelementptr inbounds %struct.opj_pi_iterator, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %comps3, align 8, !tbaa !24
  %14 = load i32, ptr %compno1, align 4, !tbaa !8
  %idxprom4 = zext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds %struct.opj_pi_comp, ptr %13, i64 %idxprom4
  store ptr %arrayidx5, ptr %comp, align 8, !tbaa !4
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %15 = load i32, ptr %resno, align 4, !tbaa !8
  %16 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %numresolutions, align 8, !tbaa !42
  %cmp7 = icmp ult i32 %15, %17
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %dx9) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dy10) #4
  %18 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %resolutions, align 8, !tbaa !35
  %20 = load i32, ptr %resno, align 4, !tbaa !8
  %idxprom11 = zext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds %struct.opj_pi_resolution, ptr %19, i64 %idxprom11
  store ptr %arrayidx12, ptr %res, align 8, !tbaa !4
  %21 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %pdx, align 4, !tbaa !43
  %23 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions13 = getelementptr inbounds %struct.opj_pi_comp, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %numresolutions13, align 8, !tbaa !42
  %add = add i32 %22, %24
  %sub = sub i32 %add, 1
  %25 = load i32, ptr %resno, align 4, !tbaa !8
  %sub14 = sub i32 %sub, %25
  %cmp15 = icmp ult i32 %sub14, 32
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %26 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx16 = getelementptr inbounds %struct.opj_pi_comp, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %dx16, align 8, !tbaa !39
  %28 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx17 = getelementptr inbounds %struct.opj_pi_resolution, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %pdx17, align 4, !tbaa !43
  %30 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions18 = getelementptr inbounds %struct.opj_pi_comp, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %numresolutions18, align 8, !tbaa !42
  %add19 = add i32 %29, %31
  %sub20 = sub i32 %add19, 1
  %32 = load i32, ptr %resno, align 4, !tbaa !8
  %sub21 = sub i32 %sub20, %32
  %shl = shl i32 1, %sub21
  %div = udiv i32 -1, %shl
  %cmp22 = icmp ule i32 %27, %div
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx24 = getelementptr inbounds %struct.opj_pi_comp, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %dx24, align 8, !tbaa !39
  %35 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx25 = getelementptr inbounds %struct.opj_pi_resolution, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %pdx25, align 4, !tbaa !43
  %37 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions26 = getelementptr inbounds %struct.opj_pi_comp, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %numresolutions26, align 8, !tbaa !42
  %add27 = add i32 %36, %38
  %sub28 = sub i32 %add27, 1
  %39 = load i32, ptr %resno, align 4, !tbaa !8
  %sub29 = sub i32 %sub28, %39
  %shl30 = shl i32 1, %sub29
  %mul = mul i32 %34, %shl30
  store i32 %mul, ptr %dx9, align 4, !tbaa !8
  %40 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx31 = getelementptr inbounds %struct.opj_pi_iterator, ptr %40, i32 0, i32 21
  %41 = load i32, ptr %dx31, align 8, !tbaa !93
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then23
  %42 = load i32, ptr %dx9, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then23
  %43 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx33 = getelementptr inbounds %struct.opj_pi_iterator, ptr %43, i32 0, i32 21
  %44 = load i32, ptr %dx33, align 8, !tbaa !93
  %45 = load i32, ptr %dx9, align 4, !tbaa !8
  %call = call i32 @opj_uint_min(i32 noundef %44, i32 noundef %45)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %42, %cond.true ], [ %call, %cond.false ]
  %46 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx34 = getelementptr inbounds %struct.opj_pi_iterator, ptr %46, i32 0, i32 21
  store i32 %cond, ptr %dx34, align 8, !tbaa !93
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %for.body8
  %47 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %pdy, align 4, !tbaa !45
  %49 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions35 = getelementptr inbounds %struct.opj_pi_comp, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %numresolutions35, align 8, !tbaa !42
  %add36 = add i32 %48, %50
  %sub37 = sub i32 %add36, 1
  %51 = load i32, ptr %resno, align 4, !tbaa !8
  %sub38 = sub i32 %sub37, %51
  %cmp39 = icmp ult i32 %sub38, 32
  br i1 %cmp39, label %land.lhs.true40, label %if.end68

land.lhs.true40:                                  ; preds = %if.end
  %52 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy41 = getelementptr inbounds %struct.opj_pi_comp, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %dy41, align 4, !tbaa !41
  %54 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy42 = getelementptr inbounds %struct.opj_pi_resolution, ptr %54, i32 0, i32 1
  %55 = load i32, ptr %pdy42, align 4, !tbaa !45
  %56 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions43 = getelementptr inbounds %struct.opj_pi_comp, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %numresolutions43, align 8, !tbaa !42
  %add44 = add i32 %55, %57
  %sub45 = sub i32 %add44, 1
  %58 = load i32, ptr %resno, align 4, !tbaa !8
  %sub46 = sub i32 %sub45, %58
  %shl47 = shl i32 1, %sub46
  %div48 = udiv i32 -1, %shl47
  %cmp49 = icmp ule i32 %53, %div48
  br i1 %cmp49, label %if.then50, label %if.end68

if.then50:                                        ; preds = %land.lhs.true40
  %59 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy51 = getelementptr inbounds %struct.opj_pi_comp, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %dy51, align 4, !tbaa !41
  %61 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy52 = getelementptr inbounds %struct.opj_pi_resolution, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %pdy52, align 4, !tbaa !45
  %63 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions53 = getelementptr inbounds %struct.opj_pi_comp, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %numresolutions53, align 8, !tbaa !42
  %add54 = add i32 %62, %64
  %sub55 = sub i32 %add54, 1
  %65 = load i32, ptr %resno, align 4, !tbaa !8
  %sub56 = sub i32 %sub55, %65
  %shl57 = shl i32 1, %sub56
  %mul58 = mul i32 %60, %shl57
  store i32 %mul58, ptr %dy10, align 4, !tbaa !8
  %66 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy59 = getelementptr inbounds %struct.opj_pi_iterator, ptr %66, i32 0, i32 22
  %67 = load i32, ptr %dy59, align 4, !tbaa !94
  %tobool60 = icmp ne i32 %67, 0
  br i1 %tobool60, label %cond.false62, label %cond.true61

cond.true61:                                      ; preds = %if.then50
  %68 = load i32, ptr %dy10, align 4, !tbaa !8
  br label %cond.end65

cond.false62:                                     ; preds = %if.then50
  %69 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy63 = getelementptr inbounds %struct.opj_pi_iterator, ptr %69, i32 0, i32 22
  %70 = load i32, ptr %dy63, align 4, !tbaa !94
  %71 = load i32, ptr %dy10, align 4, !tbaa !8
  %call64 = call i32 @opj_uint_min(i32 noundef %70, i32 noundef %71)
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false62, %cond.true61
  %cond66 = phi i32 [ %68, %cond.true61 ], [ %call64, %cond.false62 ]
  %72 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy67 = getelementptr inbounds %struct.opj_pi_iterator, ptr %72, i32 0, i32 22
  store i32 %cond66, ptr %dy67, align 4, !tbaa !94
  br label %if.end68

if.end68:                                         ; preds = %cond.end65, %land.lhs.true40, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %dy10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dx9) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end68
  %73 = load i32, ptr %resno, align 4, !tbaa !8
  %inc = add i32 %73, 1
  store i32 %inc, ptr %resno, align 4, !tbaa !8
  br label %for.cond6, !llvm.loop !156

for.end:                                          ; preds = %for.cond6
  br label %for.inc69

for.inc69:                                        ; preds = %for.end
  %74 = load i32, ptr %compno1, align 4, !tbaa !8
  %inc70 = add i32 %74, 1
  store i32 %inc70, ptr %compno1, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !157

for.end71:                                        ; preds = %for.cond
  %75 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx72 = getelementptr inbounds %struct.opj_pi_iterator, ptr %75, i32 0, i32 21
  %76 = load i32, ptr %dx72, align 8, !tbaa !93
  %cmp73 = icmp eq i32 %76, 0
  br i1 %cmp73, label %if.then76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end71
  %77 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy74 = getelementptr inbounds %struct.opj_pi_iterator, ptr %77, i32 0, i32 22
  %78 = load i32, ptr %dy74, align 4, !tbaa !94
  %cmp75 = icmp eq i32 %78, 0
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %lor.lhs.false, %for.end71
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then76
  call void @llvm.lifetime.end.p0(i64 4, ptr %resno) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %compno1) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup315 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end79

if.end79:                                         ; preds = %cleanup.cont
  %79 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, ptr %79, i32 0, i32 0
  %80 = load i8, ptr %tp_on, align 8, !tbaa !92
  %tobool80 = icmp ne i8 %80, 0
  br i1 %tobool80, label %if.end89, label %if.then81

if.then81:                                        ; preds = %if.end79
  %81 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %81, i32 0, i32 16
  %82 = load i32, ptr %ty0, align 4, !tbaa !28
  %83 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %83, i32 0, i32 12
  %ty082 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 14
  store i32 %82, ptr %ty082, align 4, !tbaa !119
  %84 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %84, i32 0, i32 15
  %85 = load i32, ptr %tx0, align 8, !tbaa !27
  %86 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc83 = getelementptr inbounds %struct.opj_pi_iterator, ptr %86, i32 0, i32 12
  %tx084 = getelementptr inbounds %struct.opj_poc, ptr %poc83, i32 0, i32 12
  store i32 %85, ptr %tx084, align 4, !tbaa !118
  %87 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %87, i32 0, i32 18
  %88 = load i32, ptr %ty1, align 4, !tbaa !30
  %89 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc85 = getelementptr inbounds %struct.opj_pi_iterator, ptr %89, i32 0, i32 12
  %ty186 = getelementptr inbounds %struct.opj_poc, ptr %poc85, i32 0, i32 15
  store i32 %88, ptr %ty186, align 8, !tbaa !121
  %90 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %90, i32 0, i32 17
  %91 = load i32, ptr %tx1, align 8, !tbaa !29
  %92 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc87 = getelementptr inbounds %struct.opj_pi_iterator, ptr %92, i32 0, i32 12
  %tx188 = getelementptr inbounds %struct.opj_poc, ptr %poc87, i32 0, i32 13
  store i32 %91, ptr %tx188, align 8, !tbaa !120
  br label %if.end89

if.end89:                                         ; preds = %if.then81, %if.end79
  %93 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc90 = getelementptr inbounds %struct.opj_pi_iterator, ptr %93, i32 0, i32 12
  %ty091 = getelementptr inbounds %struct.opj_poc, ptr %poc90, i32 0, i32 14
  %94 = load i32, ptr %ty091, align 4, !tbaa !119
  %95 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y = getelementptr inbounds %struct.opj_pi_iterator, ptr %95, i32 0, i32 20
  store i32 %94, ptr %y, align 4, !tbaa !149
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc306, %if.end89
  %96 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y93 = getelementptr inbounds %struct.opj_pi_iterator, ptr %96, i32 0, i32 20
  %97 = load i32, ptr %y93, align 4, !tbaa !149
  %98 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc94 = getelementptr inbounds %struct.opj_pi_iterator, ptr %98, i32 0, i32 12
  %ty195 = getelementptr inbounds %struct.opj_poc, ptr %poc94, i32 0, i32 15
  %99 = load i32, ptr %ty195, align 8, !tbaa !121
  %cmp96 = icmp slt i32 %97, %99
  br i1 %cmp96, label %for.body97, label %for.end314

for.body97:                                       ; preds = %for.cond92
  %100 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc98 = getelementptr inbounds %struct.opj_pi_iterator, ptr %100, i32 0, i32 12
  %tx099 = getelementptr inbounds %struct.opj_poc, ptr %poc98, i32 0, i32 12
  %101 = load i32, ptr %tx099, align 4, !tbaa !118
  %102 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.opj_pi_iterator, ptr %102, i32 0, i32 19
  store i32 %101, ptr %x, align 8, !tbaa !150
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc297, %for.body97
  %103 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x101 = getelementptr inbounds %struct.opj_pi_iterator, ptr %103, i32 0, i32 19
  %104 = load i32, ptr %x101, align 8, !tbaa !150
  %105 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc102 = getelementptr inbounds %struct.opj_pi_iterator, ptr %105, i32 0, i32 12
  %tx1103 = getelementptr inbounds %struct.opj_poc, ptr %poc102, i32 0, i32 13
  %106 = load i32, ptr %tx1103, align 8, !tbaa !120
  %cmp104 = icmp slt i32 %104, %106
  br i1 %cmp104, label %for.body105, label %for.end305

for.body105:                                      ; preds = %for.cond100
  %107 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc106 = getelementptr inbounds %struct.opj_pi_iterator, ptr %107, i32 0, i32 12
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %poc106, i32 0, i32 1
  %108 = load i32, ptr %compno0, align 4, !tbaa !77
  %109 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno107 = getelementptr inbounds %struct.opj_pi_iterator, ptr %109, i32 0, i32 7
  store i32 %108, ptr %compno107, align 4, !tbaa !134
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc293, %for.body105
  %110 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno109 = getelementptr inbounds %struct.opj_pi_iterator, ptr %110, i32 0, i32 7
  %111 = load i32, ptr %compno109, align 4, !tbaa !134
  %112 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc110 = getelementptr inbounds %struct.opj_pi_iterator, ptr %112, i32 0, i32 12
  %compno1111 = getelementptr inbounds %struct.opj_poc, ptr %poc110, i32 0, i32 4
  %113 = load i32, ptr %compno1111, align 8, !tbaa !83
  %cmp112 = icmp ult i32 %111, %113
  br i1 %cmp112, label %for.body113, label %for.end296

for.body113:                                      ; preds = %for.cond108
  %114 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps114 = getelementptr inbounds %struct.opj_pi_iterator, ptr %114, i32 0, i32 14
  %115 = load ptr, ptr %comps114, align 8, !tbaa !24
  %116 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno115 = getelementptr inbounds %struct.opj_pi_iterator, ptr %116, i32 0, i32 7
  %117 = load i32, ptr %compno115, align 4, !tbaa !134
  %idxprom116 = zext i32 %117 to i64
  %arrayidx117 = getelementptr inbounds %struct.opj_pi_comp, ptr %115, i64 %idxprom116
  store ptr %arrayidx117, ptr %comp, align 8, !tbaa !4
  %118 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc118 = getelementptr inbounds %struct.opj_pi_iterator, ptr %118, i32 0, i32 12
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %poc118, i32 0, i32 0
  %119 = load i32, ptr %resno0, align 8, !tbaa !75
  %120 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno119 = getelementptr inbounds %struct.opj_pi_iterator, ptr %120, i32 0, i32 8
  store i32 %119, ptr %resno119, align 8, !tbaa !135
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc289, %for.body113
  %121 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno121 = getelementptr inbounds %struct.opj_pi_iterator, ptr %121, i32 0, i32 8
  %122 = load i32, ptr %resno121, align 8, !tbaa !135
  %123 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc122 = getelementptr inbounds %struct.opj_pi_iterator, ptr %123, i32 0, i32 12
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %poc122, i32 0, i32 3
  %124 = load i32, ptr %resno1, align 4, !tbaa !81
  %125 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions123 = getelementptr inbounds %struct.opj_pi_comp, ptr %125, i32 0, i32 2
  %126 = load i32, ptr %numresolutions123, align 8, !tbaa !42
  %call124 = call i32 @opj_uint_min(i32 noundef %124, i32 noundef %126)
  %cmp125 = icmp ult i32 %122, %call124
  br i1 %cmp125, label %for.body126, label %for.end292

for.body126:                                      ; preds = %for.cond120
  %127 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions127 = getelementptr inbounds %struct.opj_pi_comp, ptr %127, i32 0, i32 3
  %128 = load ptr, ptr %resolutions127, align 8, !tbaa !35
  %129 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno128 = getelementptr inbounds %struct.opj_pi_iterator, ptr %129, i32 0, i32 8
  %130 = load i32, ptr %resno128, align 8, !tbaa !135
  %idxprom129 = zext i32 %130 to i64
  %arrayidx130 = getelementptr inbounds %struct.opj_pi_resolution, ptr %128, i64 %idxprom129
  store ptr %arrayidx130, ptr %res, align 8, !tbaa !4
  %131 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions131 = getelementptr inbounds %struct.opj_pi_comp, ptr %131, i32 0, i32 2
  %132 = load i32, ptr %numresolutions131, align 8, !tbaa !42
  %sub132 = sub i32 %132, 1
  %133 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno133 = getelementptr inbounds %struct.opj_pi_iterator, ptr %133, i32 0, i32 8
  %134 = load i32, ptr %resno133, align 8, !tbaa !135
  %sub134 = sub i32 %sub132, %134
  store i32 %sub134, ptr %levelno, align 4, !tbaa !8
  %135 = load i32, ptr %levelno, align 4, !tbaa !8
  %cmp135 = icmp uge i32 %135, 32
  br i1 %cmp135, label %if.then147, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %for.body126
  %136 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx137 = getelementptr inbounds %struct.opj_pi_comp, ptr %136, i32 0, i32 0
  %137 = load i32, ptr %dx137, align 8, !tbaa !39
  %138 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl138 = shl i32 %137, %138
  %139 = load i32, ptr %levelno, align 4, !tbaa !8
  %shr = lshr i32 %shl138, %139
  %140 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx139 = getelementptr inbounds %struct.opj_pi_comp, ptr %140, i32 0, i32 0
  %141 = load i32, ptr %dx139, align 8, !tbaa !39
  %cmp140 = icmp ne i32 %shr, %141
  br i1 %cmp140, label %if.then147, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false136
  %142 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy142 = getelementptr inbounds %struct.opj_pi_comp, ptr %142, i32 0, i32 1
  %143 = load i32, ptr %dy142, align 4, !tbaa !41
  %144 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl143 = shl i32 %143, %144
  %145 = load i32, ptr %levelno, align 4, !tbaa !8
  %shr144 = lshr i32 %shl143, %145
  %146 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy145 = getelementptr inbounds %struct.opj_pi_comp, ptr %146, i32 0, i32 1
  %147 = load i32, ptr %dy145, align 4, !tbaa !41
  %cmp146 = icmp ne i32 %shr144, %147
  br i1 %cmp146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %lor.lhs.false141, %lor.lhs.false136, %for.body126
  br label %for.inc289

if.end148:                                        ; preds = %lor.lhs.false141
  %148 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx149 = getelementptr inbounds %struct.opj_pi_comp, ptr %148, i32 0, i32 0
  %149 = load i32, ptr %dx149, align 8, !tbaa !39
  %150 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl150 = shl i32 %149, %150
  %cmp151 = icmp ugt i32 %shl150, 2147483647
  br i1 %cmp151, label %if.then156, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %if.end148
  %151 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy153 = getelementptr inbounds %struct.opj_pi_comp, ptr %151, i32 0, i32 1
  %152 = load i32, ptr %dy153, align 4, !tbaa !41
  %153 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl154 = shl i32 %152, %153
  %cmp155 = icmp ugt i32 %shl154, 2147483647
  br i1 %cmp155, label %if.then156, label %if.end157

if.then156:                                       ; preds = %lor.lhs.false152, %if.end148
  br label %for.inc289

if.end157:                                        ; preds = %lor.lhs.false152
  %154 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0158 = getelementptr inbounds %struct.opj_pi_iterator, ptr %154, i32 0, i32 15
  %155 = load i32, ptr %tx0158, align 8, !tbaa !27
  %156 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx159 = getelementptr inbounds %struct.opj_pi_comp, ptr %156, i32 0, i32 0
  %157 = load i32, ptr %dx159, align 8, !tbaa !39
  %158 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl160 = shl i32 %157, %158
  %call161 = call i32 @opj_int_ceildiv(i32 noundef %155, i32 noundef %shl160)
  store i32 %call161, ptr %trx0, align 4, !tbaa !8
  %159 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0162 = getelementptr inbounds %struct.opj_pi_iterator, ptr %159, i32 0, i32 16
  %160 = load i32, ptr %ty0162, align 4, !tbaa !28
  %161 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy163 = getelementptr inbounds %struct.opj_pi_comp, ptr %161, i32 0, i32 1
  %162 = load i32, ptr %dy163, align 4, !tbaa !41
  %163 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl164 = shl i32 %162, %163
  %call165 = call i32 @opj_int_ceildiv(i32 noundef %160, i32 noundef %shl164)
  store i32 %call165, ptr %try0, align 4, !tbaa !8
  %164 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx1166 = getelementptr inbounds %struct.opj_pi_iterator, ptr %164, i32 0, i32 17
  %165 = load i32, ptr %tx1166, align 8, !tbaa !29
  %166 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx167 = getelementptr inbounds %struct.opj_pi_comp, ptr %166, i32 0, i32 0
  %167 = load i32, ptr %dx167, align 8, !tbaa !39
  %168 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl168 = shl i32 %167, %168
  %call169 = call i32 @opj_int_ceildiv(i32 noundef %165, i32 noundef %shl168)
  store i32 %call169, ptr %trx1, align 4, !tbaa !8
  %169 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty1170 = getelementptr inbounds %struct.opj_pi_iterator, ptr %169, i32 0, i32 18
  %170 = load i32, ptr %ty1170, align 4, !tbaa !30
  %171 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy171 = getelementptr inbounds %struct.opj_pi_comp, ptr %171, i32 0, i32 1
  %172 = load i32, ptr %dy171, align 4, !tbaa !41
  %173 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl172 = shl i32 %172, %173
  %call173 = call i32 @opj_int_ceildiv(i32 noundef %170, i32 noundef %shl172)
  store i32 %call173, ptr %try1, align 4, !tbaa !8
  %174 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx174 = getelementptr inbounds %struct.opj_pi_resolution, ptr %174, i32 0, i32 0
  %175 = load i32, ptr %pdx174, align 4, !tbaa !43
  %176 = load i32, ptr %levelno, align 4, !tbaa !8
  %add175 = add i32 %175, %176
  store i32 %add175, ptr %rpx, align 4, !tbaa !8
  %177 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy176 = getelementptr inbounds %struct.opj_pi_resolution, ptr %177, i32 0, i32 1
  %178 = load i32, ptr %pdy176, align 4, !tbaa !45
  %179 = load i32, ptr %levelno, align 4, !tbaa !8
  %add177 = add i32 %178, %179
  store i32 %add177, ptr %rpy, align 4, !tbaa !8
  %180 = load i32, ptr %rpx, align 4, !tbaa !8
  %cmp178 = icmp uge i32 %180, 31
  br i1 %cmp178, label %if.then193, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %if.end157
  %181 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx180 = getelementptr inbounds %struct.opj_pi_comp, ptr %181, i32 0, i32 0
  %182 = load i32, ptr %dx180, align 8, !tbaa !39
  %183 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl181 = shl i32 %182, %183
  %184 = load i32, ptr %rpx, align 4, !tbaa !8
  %shr182 = lshr i32 %shl181, %184
  %185 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx183 = getelementptr inbounds %struct.opj_pi_comp, ptr %185, i32 0, i32 0
  %186 = load i32, ptr %dx183, align 8, !tbaa !39
  %cmp184 = icmp ne i32 %shr182, %186
  br i1 %cmp184, label %if.then193, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %lor.lhs.false179
  %187 = load i32, ptr %rpy, align 4, !tbaa !8
  %cmp186 = icmp uge i32 %187, 31
  br i1 %cmp186, label %if.then193, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %lor.lhs.false185
  %188 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy188 = getelementptr inbounds %struct.opj_pi_comp, ptr %188, i32 0, i32 1
  %189 = load i32, ptr %dy188, align 4, !tbaa !41
  %190 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl189 = shl i32 %189, %190
  %191 = load i32, ptr %rpy, align 4, !tbaa !8
  %shr190 = lshr i32 %shl189, %191
  %192 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy191 = getelementptr inbounds %struct.opj_pi_comp, ptr %192, i32 0, i32 1
  %193 = load i32, ptr %dy191, align 4, !tbaa !41
  %cmp192 = icmp ne i32 %shr190, %193
  br i1 %cmp192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %lor.lhs.false187, %lor.lhs.false185, %lor.lhs.false179, %if.end157
  br label %for.inc289

if.end194:                                        ; preds = %lor.lhs.false187
  %194 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y195 = getelementptr inbounds %struct.opj_pi_iterator, ptr %194, i32 0, i32 20
  %195 = load i32, ptr %y195, align 4, !tbaa !149
  %196 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy196 = getelementptr inbounds %struct.opj_pi_comp, ptr %196, i32 0, i32 1
  %197 = load i32, ptr %dy196, align 4, !tbaa !41
  %198 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl197 = shl i32 %197, %198
  %rem = srem i32 %195, %shl197
  %cmp198 = icmp eq i32 %rem, 0
  br i1 %cmp198, label %if.end209, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %if.end194
  %199 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y200 = getelementptr inbounds %struct.opj_pi_iterator, ptr %199, i32 0, i32 20
  %200 = load i32, ptr %y200, align 4, !tbaa !149
  %201 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0201 = getelementptr inbounds %struct.opj_pi_iterator, ptr %201, i32 0, i32 16
  %202 = load i32, ptr %ty0201, align 4, !tbaa !28
  %cmp202 = icmp eq i32 %200, %202
  br i1 %cmp202, label %land.lhs.true203, label %if.then208

land.lhs.true203:                                 ; preds = %lor.lhs.false199
  %203 = load i32, ptr %try0, align 4, !tbaa !8
  %204 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl204 = shl i32 %203, %204
  %205 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl205 = shl i32 1, %205
  %rem206 = srem i32 %shl204, %shl205
  %tobool207 = icmp ne i32 %rem206, 0
  br i1 %tobool207, label %if.end209, label %if.then208

if.then208:                                       ; preds = %land.lhs.true203, %lor.lhs.false199
  br label %for.inc289

if.end209:                                        ; preds = %land.lhs.true203, %if.end194
  %206 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x210 = getelementptr inbounds %struct.opj_pi_iterator, ptr %206, i32 0, i32 19
  %207 = load i32, ptr %x210, align 8, !tbaa !150
  %208 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx211 = getelementptr inbounds %struct.opj_pi_comp, ptr %208, i32 0, i32 0
  %209 = load i32, ptr %dx211, align 8, !tbaa !39
  %210 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl212 = shl i32 %209, %210
  %rem213 = srem i32 %207, %shl212
  %cmp214 = icmp eq i32 %rem213, 0
  br i1 %cmp214, label %if.end225, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.end209
  %211 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x216 = getelementptr inbounds %struct.opj_pi_iterator, ptr %211, i32 0, i32 19
  %212 = load i32, ptr %x216, align 8, !tbaa !150
  %213 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0217 = getelementptr inbounds %struct.opj_pi_iterator, ptr %213, i32 0, i32 15
  %214 = load i32, ptr %tx0217, align 8, !tbaa !27
  %cmp218 = icmp eq i32 %212, %214
  br i1 %cmp218, label %land.lhs.true219, label %if.then224

land.lhs.true219:                                 ; preds = %lor.lhs.false215
  %215 = load i32, ptr %trx0, align 4, !tbaa !8
  %216 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl220 = shl i32 %215, %216
  %217 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl221 = shl i32 1, %217
  %rem222 = srem i32 %shl220, %shl221
  %tobool223 = icmp ne i32 %rem222, 0
  br i1 %tobool223, label %if.end225, label %if.then224

if.then224:                                       ; preds = %land.lhs.true219, %lor.lhs.false215
  br label %for.inc289

if.end225:                                        ; preds = %land.lhs.true219, %if.end209
  %218 = load ptr, ptr %res, align 8, !tbaa !4
  %pw = getelementptr inbounds %struct.opj_pi_resolution, ptr %218, i32 0, i32 2
  %219 = load i32, ptr %pw, align 4, !tbaa !46
  %cmp226 = icmp eq i32 %219, 0
  br i1 %cmp226, label %if.then229, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %if.end225
  %220 = load ptr, ptr %res, align 8, !tbaa !4
  %ph = getelementptr inbounds %struct.opj_pi_resolution, ptr %220, i32 0, i32 3
  %221 = load i32, ptr %ph, align 4, !tbaa !47
  %cmp228 = icmp eq i32 %221, 0
  br i1 %cmp228, label %if.then229, label %if.end230

if.then229:                                       ; preds = %lor.lhs.false227, %if.end225
  br label %for.inc289

if.end230:                                        ; preds = %lor.lhs.false227
  %222 = load i32, ptr %trx0, align 4, !tbaa !8
  %223 = load i32, ptr %trx1, align 4, !tbaa !8
  %cmp231 = icmp eq i32 %222, %223
  br i1 %cmp231, label %if.then234, label %lor.lhs.false232

lor.lhs.false232:                                 ; preds = %if.end230
  %224 = load i32, ptr %try0, align 4, !tbaa !8
  %225 = load i32, ptr %try1, align 4, !tbaa !8
  %cmp233 = icmp eq i32 %224, %225
  br i1 %cmp233, label %if.then234, label %if.end235

if.then234:                                       ; preds = %lor.lhs.false232, %if.end230
  br label %for.inc289

if.end235:                                        ; preds = %lor.lhs.false232
  %226 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x236 = getelementptr inbounds %struct.opj_pi_iterator, ptr %226, i32 0, i32 19
  %227 = load i32, ptr %x236, align 8, !tbaa !150
  %228 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx237 = getelementptr inbounds %struct.opj_pi_comp, ptr %228, i32 0, i32 0
  %229 = load i32, ptr %dx237, align 8, !tbaa !39
  %230 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl238 = shl i32 %229, %230
  %call239 = call i32 @opj_int_ceildiv(i32 noundef %227, i32 noundef %shl238)
  %231 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx240 = getelementptr inbounds %struct.opj_pi_resolution, ptr %231, i32 0, i32 0
  %232 = load i32, ptr %pdx240, align 4, !tbaa !43
  %call241 = call i32 @opj_int_floordivpow2(i32 noundef %call239, i32 noundef %232)
  %233 = load i32, ptr %trx0, align 4, !tbaa !8
  %234 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx242 = getelementptr inbounds %struct.opj_pi_resolution, ptr %234, i32 0, i32 0
  %235 = load i32, ptr %pdx242, align 4, !tbaa !43
  %call243 = call i32 @opj_int_floordivpow2(i32 noundef %233, i32 noundef %235)
  %sub244 = sub nsw i32 %call241, %call243
  store i32 %sub244, ptr %prci, align 4, !tbaa !8
  %236 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y245 = getelementptr inbounds %struct.opj_pi_iterator, ptr %236, i32 0, i32 20
  %237 = load i32, ptr %y245, align 4, !tbaa !149
  %238 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy246 = getelementptr inbounds %struct.opj_pi_comp, ptr %238, i32 0, i32 1
  %239 = load i32, ptr %dy246, align 4, !tbaa !41
  %240 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl247 = shl i32 %239, %240
  %call248 = call i32 @opj_int_ceildiv(i32 noundef %237, i32 noundef %shl247)
  %241 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy249 = getelementptr inbounds %struct.opj_pi_resolution, ptr %241, i32 0, i32 1
  %242 = load i32, ptr %pdy249, align 4, !tbaa !45
  %call250 = call i32 @opj_int_floordivpow2(i32 noundef %call248, i32 noundef %242)
  %243 = load i32, ptr %try0, align 4, !tbaa !8
  %244 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy251 = getelementptr inbounds %struct.opj_pi_resolution, ptr %244, i32 0, i32 1
  %245 = load i32, ptr %pdy251, align 4, !tbaa !45
  %call252 = call i32 @opj_int_floordivpow2(i32 noundef %243, i32 noundef %245)
  %sub253 = sub nsw i32 %call250, %call252
  store i32 %sub253, ptr %prcj, align 4, !tbaa !8
  %246 = load i32, ptr %prci, align 4, !tbaa !8
  %247 = load i32, ptr %prcj, align 4, !tbaa !8
  %248 = load ptr, ptr %res, align 8, !tbaa !4
  %pw254 = getelementptr inbounds %struct.opj_pi_resolution, ptr %248, i32 0, i32 2
  %249 = load i32, ptr %pw254, align 4, !tbaa !46
  %mul255 = mul nsw i32 %247, %249
  %add256 = add nsw i32 %246, %mul255
  %250 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno = getelementptr inbounds %struct.opj_pi_iterator, ptr %250, i32 0, i32 9
  store i32 %add256, ptr %precno, align 4, !tbaa !137
  %251 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc257 = getelementptr inbounds %struct.opj_pi_iterator, ptr %251, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc257, i32 0, i32 5
  %252 = load i32, ptr %layno0, align 4, !tbaa !78
  %253 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno = getelementptr inbounds %struct.opj_pi_iterator, ptr %253, i32 0, i32 10
  store i32 %252, ptr %layno, align 8, !tbaa !136
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc285, %if.end235
  %254 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno259 = getelementptr inbounds %struct.opj_pi_iterator, ptr %254, i32 0, i32 10
  %255 = load i32, ptr %layno259, align 8, !tbaa !136
  %256 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc260 = getelementptr inbounds %struct.opj_pi_iterator, ptr %256, i32 0, i32 12
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %poc260, i32 0, i32 2
  %257 = load i32, ptr %layno1, align 8, !tbaa !85
  %cmp261 = icmp ult i32 %255, %257
  br i1 %cmp261, label %for.body262, label %for.end288

for.body262:                                      ; preds = %for.cond258
  %258 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno263 = getelementptr inbounds %struct.opj_pi_iterator, ptr %258, i32 0, i32 10
  %259 = load i32, ptr %layno263, align 8, !tbaa !136
  %260 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, ptr %260, i32 0, i32 3
  %261 = load i32, ptr %step_l, align 4, !tbaa !34
  %mul264 = mul i32 %259, %261
  %262 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno265 = getelementptr inbounds %struct.opj_pi_iterator, ptr %262, i32 0, i32 8
  %263 = load i32, ptr %resno265, align 8, !tbaa !135
  %264 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, ptr %264, i32 0, i32 4
  %265 = load i32, ptr %step_r, align 8, !tbaa !33
  %mul266 = mul i32 %263, %265
  %add267 = add i32 %mul264, %mul266
  %266 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno268 = getelementptr inbounds %struct.opj_pi_iterator, ptr %266, i32 0, i32 7
  %267 = load i32, ptr %compno268, align 4, !tbaa !134
  %268 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, ptr %268, i32 0, i32 5
  %269 = load i32, ptr %step_c, align 4, !tbaa !32
  %mul269 = mul i32 %267, %269
  %add270 = add i32 %add267, %mul269
  %270 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno271 = getelementptr inbounds %struct.opj_pi_iterator, ptr %270, i32 0, i32 9
  %271 = load i32, ptr %precno271, align 4, !tbaa !137
  %272 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, ptr %272, i32 0, i32 6
  %273 = load i32, ptr %step_p, align 8, !tbaa !31
  %mul272 = mul i32 %271, %273
  %add273 = add i32 %add270, %mul272
  store i32 %add273, ptr %index, align 4, !tbaa !8
  %274 = load i32, ptr %index, align 4, !tbaa !8
  %275 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include_size = getelementptr inbounds %struct.opj_pi_iterator, ptr %275, i32 0, i32 2
  %276 = load i32, ptr %include_size, align 8, !tbaa !23
  %cmp274 = icmp uge i32 %274, %276
  br i1 %cmp274, label %if.then275, label %if.end276

if.then275:                                       ; preds = %for.body262
  %277 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  call void @opj_pi_emit_error(ptr noundef %277, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup315

if.end276:                                        ; preds = %for.body262
  %278 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %278, i32 0, i32 1
  %279 = load ptr, ptr %include, align 8, !tbaa !19
  %280 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom277 = zext i32 %280 to i64
  %arrayidx278 = getelementptr inbounds i16, ptr %279, i64 %idxprom277
  %281 = load i16, ptr %arrayidx278, align 2, !tbaa !138
  %tobool279 = icmp ne i16 %281, 0
  br i1 %tobool279, label %if.end284, label %if.then280

if.then280:                                       ; preds = %if.end276
  %282 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include281 = getelementptr inbounds %struct.opj_pi_iterator, ptr %282, i32 0, i32 1
  %283 = load ptr, ptr %include281, align 8, !tbaa !19
  %284 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom282 = zext i32 %284 to i64
  %arrayidx283 = getelementptr inbounds i16, ptr %283, i64 %idxprom282
  store i16 1, ptr %arrayidx283, align 2, !tbaa !138
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup315

if.end284:                                        ; preds = %if.end276
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end284, %if.then
  br label %for.inc285

for.inc285:                                       ; preds = %LABEL_SKIP
  %285 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno286 = getelementptr inbounds %struct.opj_pi_iterator, ptr %285, i32 0, i32 10
  %286 = load i32, ptr %layno286, align 8, !tbaa !136
  %inc287 = add i32 %286, 1
  store i32 %inc287, ptr %layno286, align 8, !tbaa !136
  br label %for.cond258, !llvm.loop !158

for.end288:                                       ; preds = %for.cond258
  br label %for.inc289

for.inc289:                                       ; preds = %for.end288, %if.then234, %if.then229, %if.then224, %if.then208, %if.then193, %if.then156, %if.then147
  %287 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno290 = getelementptr inbounds %struct.opj_pi_iterator, ptr %287, i32 0, i32 8
  %288 = load i32, ptr %resno290, align 8, !tbaa !135
  %inc291 = add i32 %288, 1
  store i32 %inc291, ptr %resno290, align 8, !tbaa !135
  br label %for.cond120, !llvm.loop !159

for.end292:                                       ; preds = %for.cond120
  br label %for.inc293

for.inc293:                                       ; preds = %for.end292
  %289 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno294 = getelementptr inbounds %struct.opj_pi_iterator, ptr %289, i32 0, i32 7
  %290 = load i32, ptr %compno294, align 4, !tbaa !134
  %inc295 = add i32 %290, 1
  store i32 %inc295, ptr %compno294, align 4, !tbaa !134
  br label %for.cond108, !llvm.loop !160

for.end296:                                       ; preds = %for.cond108
  br label %for.inc297

for.inc297:                                       ; preds = %for.end296
  %291 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx298 = getelementptr inbounds %struct.opj_pi_iterator, ptr %291, i32 0, i32 21
  %292 = load i32, ptr %dx298, align 8, !tbaa !93
  %293 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x299 = getelementptr inbounds %struct.opj_pi_iterator, ptr %293, i32 0, i32 19
  %294 = load i32, ptr %x299, align 8, !tbaa !150
  %295 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx300 = getelementptr inbounds %struct.opj_pi_iterator, ptr %295, i32 0, i32 21
  %296 = load i32, ptr %dx300, align 8, !tbaa !93
  %rem301 = srem i32 %294, %296
  %sub302 = sub i32 %292, %rem301
  %297 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x303 = getelementptr inbounds %struct.opj_pi_iterator, ptr %297, i32 0, i32 19
  %298 = load i32, ptr %x303, align 8, !tbaa !150
  %add304 = add nsw i32 %298, %sub302
  store i32 %add304, ptr %x303, align 8, !tbaa !150
  br label %for.cond100, !llvm.loop !161

for.end305:                                       ; preds = %for.cond100
  br label %for.inc306

for.inc306:                                       ; preds = %for.end305
  %299 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy307 = getelementptr inbounds %struct.opj_pi_iterator, ptr %299, i32 0, i32 22
  %300 = load i32, ptr %dy307, align 4, !tbaa !94
  %301 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y308 = getelementptr inbounds %struct.opj_pi_iterator, ptr %301, i32 0, i32 20
  %302 = load i32, ptr %y308, align 4, !tbaa !149
  %303 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy309 = getelementptr inbounds %struct.opj_pi_iterator, ptr %303, i32 0, i32 22
  %304 = load i32, ptr %dy309, align 4, !tbaa !94
  %rem310 = srem i32 %302, %304
  %sub311 = sub i32 %300, %rem310
  %305 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y312 = getelementptr inbounds %struct.opj_pi_iterator, ptr %305, i32 0, i32 20
  %306 = load i32, ptr %y312, align 4, !tbaa !149
  %add313 = add nsw i32 %306, %sub311
  store i32 %add313, ptr %y312, align 4, !tbaa !149
  br label %for.cond92, !llvm.loop !162

for.end314:                                       ; preds = %for.cond92
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup315

cleanup315:                                       ; preds = %for.end314, %if.then280, %if.then275, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #4
  %307 = load i32, ptr %retval, align 4
  ret i32 %307
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_cprl(ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  %comp = alloca ptr, align 8
  %res = alloca ptr, align 8
  %index = alloca i32, align 4
  %resno = alloca i32, align 4
  %dx12 = alloca i32, align 4
  %dy13 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %levelno = alloca i32, align 4
  %trx0 = alloca i32, align 4
  %try0 = alloca i32, align 4
  %trx1 = alloca i32, align 4
  %try1 = alloca i32, align 4
  %rpx = alloca i32, align 4
  %rpy = alloca i32, align 4
  %prci = alloca i32, align 4
  %prcj = alloca i32, align 4
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #4
  store ptr null, ptr %comp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #4
  store ptr null, ptr %res, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  store i32 0, ptr %index, align 4, !tbaa !8
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.opj_pi_iterator, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %first, align 4, !tbaa !73
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps = getelementptr inbounds %struct.opj_pi_iterator, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %comps, align 8, !tbaa !24
  %4 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno = getelementptr inbounds %struct.opj_pi_iterator, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %compno, align 4, !tbaa !134
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %comp, align 8, !tbaa !4
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %first1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %6, i32 0, i32 11
  store i32 0, ptr %first1, align 4, !tbaa !73
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc = getelementptr inbounds %struct.opj_pi_iterator, ptr %7, i32 0, i32 12
  %compno0 = getelementptr inbounds %struct.opj_poc, ptr %poc, i32 0, i32 1
  %8 = load i32, ptr %compno0, align 4, !tbaa !77
  %9 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno2 = getelementptr inbounds %struct.opj_pi_iterator, ptr %9, i32 0, i32 7
  store i32 %8, ptr %compno2, align 4, !tbaa !134
  br label %for.cond

for.cond:                                         ; preds = %for.inc299, %if.end
  %10 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno3 = getelementptr inbounds %struct.opj_pi_iterator, ptr %10, i32 0, i32 7
  %11 = load i32, ptr %compno3, align 4, !tbaa !134
  %12 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc4 = getelementptr inbounds %struct.opj_pi_iterator, ptr %12, i32 0, i32 12
  %compno1 = getelementptr inbounds %struct.opj_poc, ptr %poc4, i32 0, i32 4
  %13 = load i32, ptr %compno1, align 8, !tbaa !83
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end302

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %comps5 = getelementptr inbounds %struct.opj_pi_iterator, ptr %14, i32 0, i32 14
  %15 = load ptr, ptr %comps5, align 8, !tbaa !24
  %16 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno6 = getelementptr inbounds %struct.opj_pi_iterator, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %compno6, align 4, !tbaa !134
  %idxprom7 = zext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds %struct.opj_pi_comp, ptr %15, i64 %idxprom7
  store ptr %arrayidx8, ptr %comp, align 8, !tbaa !4
  %18 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx = getelementptr inbounds %struct.opj_pi_iterator, ptr %18, i32 0, i32 21
  store i32 0, ptr %dx, align 8, !tbaa !93
  %19 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy = getelementptr inbounds %struct.opj_pi_iterator, ptr %19, i32 0, i32 22
  store i32 0, ptr %dy, align 4, !tbaa !94
  store i32 0, ptr %resno, align 4, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %20 = load i32, ptr %resno, align 4, !tbaa !8
  %21 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %numresolutions, align 8, !tbaa !42
  %cmp10 = icmp ult i32 %20, %22
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dx12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dy13) #4
  %23 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %resolutions, align 8, !tbaa !35
  %25 = load i32, ptr %resno, align 4, !tbaa !8
  %idxprom14 = zext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds %struct.opj_pi_resolution, ptr %24, i64 %idxprom14
  store ptr %arrayidx15, ptr %res, align 8, !tbaa !4
  %26 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %pdx, align 4, !tbaa !43
  %28 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions16 = getelementptr inbounds %struct.opj_pi_comp, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %numresolutions16, align 8, !tbaa !42
  %add = add i32 %27, %29
  %sub = sub i32 %add, 1
  %30 = load i32, ptr %resno, align 4, !tbaa !8
  %sub17 = sub i32 %sub, %30
  %cmp18 = icmp ult i32 %sub17, 32
  br i1 %cmp18, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %for.body11
  %31 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx19 = getelementptr inbounds %struct.opj_pi_comp, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %dx19, align 8, !tbaa !39
  %33 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx20 = getelementptr inbounds %struct.opj_pi_resolution, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %pdx20, align 4, !tbaa !43
  %35 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions21 = getelementptr inbounds %struct.opj_pi_comp, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %numresolutions21, align 8, !tbaa !42
  %add22 = add i32 %34, %36
  %sub23 = sub i32 %add22, 1
  %37 = load i32, ptr %resno, align 4, !tbaa !8
  %sub24 = sub i32 %sub23, %37
  %shl = shl i32 1, %sub24
  %div = udiv i32 -1, %shl
  %cmp25 = icmp ule i32 %32, %div
  br i1 %cmp25, label %if.then26, label %if.end38

if.then26:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx27 = getelementptr inbounds %struct.opj_pi_comp, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %dx27, align 8, !tbaa !39
  %40 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx28 = getelementptr inbounds %struct.opj_pi_resolution, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %pdx28, align 4, !tbaa !43
  %42 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions29 = getelementptr inbounds %struct.opj_pi_comp, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %numresolutions29, align 8, !tbaa !42
  %add30 = add i32 %41, %43
  %sub31 = sub i32 %add30, 1
  %44 = load i32, ptr %resno, align 4, !tbaa !8
  %sub32 = sub i32 %sub31, %44
  %shl33 = shl i32 1, %sub32
  %mul = mul i32 %39, %shl33
  store i32 %mul, ptr %dx12, align 4, !tbaa !8
  %45 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx34 = getelementptr inbounds %struct.opj_pi_iterator, ptr %45, i32 0, i32 21
  %46 = load i32, ptr %dx34, align 8, !tbaa !93
  %tobool35 = icmp ne i32 %46, 0
  br i1 %tobool35, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then26
  %47 = load i32, ptr %dx12, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then26
  %48 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx36 = getelementptr inbounds %struct.opj_pi_iterator, ptr %48, i32 0, i32 21
  %49 = load i32, ptr %dx36, align 8, !tbaa !93
  %50 = load i32, ptr %dx12, align 4, !tbaa !8
  %call = call i32 @opj_uint_min(i32 noundef %49, i32 noundef %50)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ %call, %cond.false ]
  %51 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx37 = getelementptr inbounds %struct.opj_pi_iterator, ptr %51, i32 0, i32 21
  store i32 %cond, ptr %dx37, align 8, !tbaa !93
  br label %if.end38

if.end38:                                         ; preds = %cond.end, %land.lhs.true, %for.body11
  %52 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %pdy, align 4, !tbaa !45
  %54 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions39 = getelementptr inbounds %struct.opj_pi_comp, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %numresolutions39, align 8, !tbaa !42
  %add40 = add i32 %53, %55
  %sub41 = sub i32 %add40, 1
  %56 = load i32, ptr %resno, align 4, !tbaa !8
  %sub42 = sub i32 %sub41, %56
  %cmp43 = icmp ult i32 %sub42, 32
  br i1 %cmp43, label %land.lhs.true44, label %if.end72

land.lhs.true44:                                  ; preds = %if.end38
  %57 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy45 = getelementptr inbounds %struct.opj_pi_comp, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %dy45, align 4, !tbaa !41
  %59 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy46 = getelementptr inbounds %struct.opj_pi_resolution, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %pdy46, align 4, !tbaa !45
  %61 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions47 = getelementptr inbounds %struct.opj_pi_comp, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %numresolutions47, align 8, !tbaa !42
  %add48 = add i32 %60, %62
  %sub49 = sub i32 %add48, 1
  %63 = load i32, ptr %resno, align 4, !tbaa !8
  %sub50 = sub i32 %sub49, %63
  %shl51 = shl i32 1, %sub50
  %div52 = udiv i32 -1, %shl51
  %cmp53 = icmp ule i32 %58, %div52
  br i1 %cmp53, label %if.then54, label %if.end72

if.then54:                                        ; preds = %land.lhs.true44
  %64 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy55 = getelementptr inbounds %struct.opj_pi_comp, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %dy55, align 4, !tbaa !41
  %66 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy56 = getelementptr inbounds %struct.opj_pi_resolution, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %pdy56, align 4, !tbaa !45
  %68 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions57 = getelementptr inbounds %struct.opj_pi_comp, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %numresolutions57, align 8, !tbaa !42
  %add58 = add i32 %67, %69
  %sub59 = sub i32 %add58, 1
  %70 = load i32, ptr %resno, align 4, !tbaa !8
  %sub60 = sub i32 %sub59, %70
  %shl61 = shl i32 1, %sub60
  %mul62 = mul i32 %65, %shl61
  store i32 %mul62, ptr %dy13, align 4, !tbaa !8
  %71 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy63 = getelementptr inbounds %struct.opj_pi_iterator, ptr %71, i32 0, i32 22
  %72 = load i32, ptr %dy63, align 4, !tbaa !94
  %tobool64 = icmp ne i32 %72, 0
  br i1 %tobool64, label %cond.false66, label %cond.true65

cond.true65:                                      ; preds = %if.then54
  %73 = load i32, ptr %dy13, align 4, !tbaa !8
  br label %cond.end69

cond.false66:                                     ; preds = %if.then54
  %74 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy67 = getelementptr inbounds %struct.opj_pi_iterator, ptr %74, i32 0, i32 22
  %75 = load i32, ptr %dy67, align 4, !tbaa !94
  %76 = load i32, ptr %dy13, align 4, !tbaa !8
  %call68 = call i32 @opj_uint_min(i32 noundef %75, i32 noundef %76)
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false66, %cond.true65
  %cond70 = phi i32 [ %73, %cond.true65 ], [ %call68, %cond.false66 ]
  %77 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy71 = getelementptr inbounds %struct.opj_pi_iterator, ptr %77, i32 0, i32 22
  store i32 %cond70, ptr %dy71, align 4, !tbaa !94
  br label %if.end72

if.end72:                                         ; preds = %cond.end69, %land.lhs.true44, %if.end38
  call void @llvm.lifetime.end.p0(i64 4, ptr %dy13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dx12) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end72
  %78 = load i32, ptr %resno, align 4, !tbaa !8
  %inc = add i32 %78, 1
  store i32 %inc, ptr %resno, align 4, !tbaa !8
  br label %for.cond9, !llvm.loop !163

for.end:                                          ; preds = %for.cond9
  %79 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx73 = getelementptr inbounds %struct.opj_pi_iterator, ptr %79, i32 0, i32 21
  %80 = load i32, ptr %dx73, align 8, !tbaa !93
  %cmp74 = icmp eq i32 %80, 0
  br i1 %cmp74, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %81 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy75 = getelementptr inbounds %struct.opj_pi_iterator, ptr %81, i32 0, i32 22
  %82 = load i32, ptr %dy75, align 4, !tbaa !94
  %cmp76 = icmp eq i32 %82, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %lor.lhs.false, %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %lor.lhs.false
  %83 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, ptr %83, i32 0, i32 0
  %84 = load i8, ptr %tp_on, align 8, !tbaa !92
  %tobool79 = icmp ne i8 %84, 0
  br i1 %tobool79, label %if.end89, label %if.then80

if.then80:                                        ; preds = %if.end78
  %85 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %85, i32 0, i32 16
  %86 = load i32, ptr %ty0, align 4, !tbaa !28
  %87 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc81 = getelementptr inbounds %struct.opj_pi_iterator, ptr %87, i32 0, i32 12
  %ty082 = getelementptr inbounds %struct.opj_poc, ptr %poc81, i32 0, i32 14
  store i32 %86, ptr %ty082, align 4, !tbaa !119
  %88 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, ptr %88, i32 0, i32 15
  %89 = load i32, ptr %tx0, align 8, !tbaa !27
  %90 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc83 = getelementptr inbounds %struct.opj_pi_iterator, ptr %90, i32 0, i32 12
  %tx084 = getelementptr inbounds %struct.opj_poc, ptr %poc83, i32 0, i32 12
  store i32 %89, ptr %tx084, align 4, !tbaa !118
  %91 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %91, i32 0, i32 18
  %92 = load i32, ptr %ty1, align 4, !tbaa !30
  %93 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc85 = getelementptr inbounds %struct.opj_pi_iterator, ptr %93, i32 0, i32 12
  %ty186 = getelementptr inbounds %struct.opj_poc, ptr %poc85, i32 0, i32 15
  store i32 %92, ptr %ty186, align 8, !tbaa !121
  %94 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, ptr %94, i32 0, i32 17
  %95 = load i32, ptr %tx1, align 8, !tbaa !29
  %96 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc87 = getelementptr inbounds %struct.opj_pi_iterator, ptr %96, i32 0, i32 12
  %tx188 = getelementptr inbounds %struct.opj_poc, ptr %poc87, i32 0, i32 13
  store i32 %95, ptr %tx188, align 8, !tbaa !120
  br label %if.end89

if.end89:                                         ; preds = %if.then80, %if.end78
  %97 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc90 = getelementptr inbounds %struct.opj_pi_iterator, ptr %97, i32 0, i32 12
  %ty091 = getelementptr inbounds %struct.opj_poc, ptr %poc90, i32 0, i32 14
  %98 = load i32, ptr %ty091, align 4, !tbaa !119
  %99 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y = getelementptr inbounds %struct.opj_pi_iterator, ptr %99, i32 0, i32 20
  store i32 %98, ptr %y, align 4, !tbaa !149
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc290, %if.end89
  %100 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y93 = getelementptr inbounds %struct.opj_pi_iterator, ptr %100, i32 0, i32 20
  %101 = load i32, ptr %y93, align 4, !tbaa !149
  %102 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc94 = getelementptr inbounds %struct.opj_pi_iterator, ptr %102, i32 0, i32 12
  %ty195 = getelementptr inbounds %struct.opj_poc, ptr %poc94, i32 0, i32 15
  %103 = load i32, ptr %ty195, align 8, !tbaa !121
  %cmp96 = icmp slt i32 %101, %103
  br i1 %cmp96, label %for.body97, label %for.end298

for.body97:                                       ; preds = %for.cond92
  %104 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc98 = getelementptr inbounds %struct.opj_pi_iterator, ptr %104, i32 0, i32 12
  %tx099 = getelementptr inbounds %struct.opj_poc, ptr %poc98, i32 0, i32 12
  %105 = load i32, ptr %tx099, align 4, !tbaa !118
  %106 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.opj_pi_iterator, ptr %106, i32 0, i32 19
  store i32 %105, ptr %x, align 8, !tbaa !150
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc281, %for.body97
  %107 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x101 = getelementptr inbounds %struct.opj_pi_iterator, ptr %107, i32 0, i32 19
  %108 = load i32, ptr %x101, align 8, !tbaa !150
  %109 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc102 = getelementptr inbounds %struct.opj_pi_iterator, ptr %109, i32 0, i32 12
  %tx1103 = getelementptr inbounds %struct.opj_poc, ptr %poc102, i32 0, i32 13
  %110 = load i32, ptr %tx1103, align 8, !tbaa !120
  %cmp104 = icmp slt i32 %108, %110
  br i1 %cmp104, label %for.body105, label %for.end289

for.body105:                                      ; preds = %for.cond100
  %111 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc106 = getelementptr inbounds %struct.opj_pi_iterator, ptr %111, i32 0, i32 12
  %resno0 = getelementptr inbounds %struct.opj_poc, ptr %poc106, i32 0, i32 0
  %112 = load i32, ptr %resno0, align 8, !tbaa !75
  %113 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno107 = getelementptr inbounds %struct.opj_pi_iterator, ptr %113, i32 0, i32 8
  store i32 %112, ptr %resno107, align 8, !tbaa !135
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc277, %for.body105
  %114 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno109 = getelementptr inbounds %struct.opj_pi_iterator, ptr %114, i32 0, i32 8
  %115 = load i32, ptr %resno109, align 8, !tbaa !135
  %116 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc110 = getelementptr inbounds %struct.opj_pi_iterator, ptr %116, i32 0, i32 12
  %resno1 = getelementptr inbounds %struct.opj_poc, ptr %poc110, i32 0, i32 3
  %117 = load i32, ptr %resno1, align 4, !tbaa !81
  %118 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions111 = getelementptr inbounds %struct.opj_pi_comp, ptr %118, i32 0, i32 2
  %119 = load i32, ptr %numresolutions111, align 8, !tbaa !42
  %call112 = call i32 @opj_uint_min(i32 noundef %117, i32 noundef %119)
  %cmp113 = icmp ult i32 %115, %call112
  br i1 %cmp113, label %for.body114, label %for.end280

for.body114:                                      ; preds = %for.cond108
  %120 = load ptr, ptr %comp, align 8, !tbaa !4
  %resolutions115 = getelementptr inbounds %struct.opj_pi_comp, ptr %120, i32 0, i32 3
  %121 = load ptr, ptr %resolutions115, align 8, !tbaa !35
  %122 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno116 = getelementptr inbounds %struct.opj_pi_iterator, ptr %122, i32 0, i32 8
  %123 = load i32, ptr %resno116, align 8, !tbaa !135
  %idxprom117 = zext i32 %123 to i64
  %arrayidx118 = getelementptr inbounds %struct.opj_pi_resolution, ptr %121, i64 %idxprom117
  store ptr %arrayidx118, ptr %res, align 8, !tbaa !4
  %124 = load ptr, ptr %comp, align 8, !tbaa !4
  %numresolutions119 = getelementptr inbounds %struct.opj_pi_comp, ptr %124, i32 0, i32 2
  %125 = load i32, ptr %numresolutions119, align 8, !tbaa !42
  %sub120 = sub i32 %125, 1
  %126 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno121 = getelementptr inbounds %struct.opj_pi_iterator, ptr %126, i32 0, i32 8
  %127 = load i32, ptr %resno121, align 8, !tbaa !135
  %sub122 = sub i32 %sub120, %127
  store i32 %sub122, ptr %levelno, align 4, !tbaa !8
  %128 = load i32, ptr %levelno, align 4, !tbaa !8
  %cmp123 = icmp uge i32 %128, 32
  br i1 %cmp123, label %if.then135, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %for.body114
  %129 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx125 = getelementptr inbounds %struct.opj_pi_comp, ptr %129, i32 0, i32 0
  %130 = load i32, ptr %dx125, align 8, !tbaa !39
  %131 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl126 = shl i32 %130, %131
  %132 = load i32, ptr %levelno, align 4, !tbaa !8
  %shr = lshr i32 %shl126, %132
  %133 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx127 = getelementptr inbounds %struct.opj_pi_comp, ptr %133, i32 0, i32 0
  %134 = load i32, ptr %dx127, align 8, !tbaa !39
  %cmp128 = icmp ne i32 %shr, %134
  br i1 %cmp128, label %if.then135, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false124
  %135 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy130 = getelementptr inbounds %struct.opj_pi_comp, ptr %135, i32 0, i32 1
  %136 = load i32, ptr %dy130, align 4, !tbaa !41
  %137 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl131 = shl i32 %136, %137
  %138 = load i32, ptr %levelno, align 4, !tbaa !8
  %shr132 = lshr i32 %shl131, %138
  %139 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy133 = getelementptr inbounds %struct.opj_pi_comp, ptr %139, i32 0, i32 1
  %140 = load i32, ptr %dy133, align 4, !tbaa !41
  %cmp134 = icmp ne i32 %shr132, %140
  br i1 %cmp134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %lor.lhs.false129, %lor.lhs.false124, %for.body114
  br label %for.inc277

if.end136:                                        ; preds = %lor.lhs.false129
  %141 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx137 = getelementptr inbounds %struct.opj_pi_comp, ptr %141, i32 0, i32 0
  %142 = load i32, ptr %dx137, align 8, !tbaa !39
  %143 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl138 = shl i32 %142, %143
  %cmp139 = icmp ugt i32 %shl138, 2147483647
  br i1 %cmp139, label %if.then144, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %if.end136
  %144 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy141 = getelementptr inbounds %struct.opj_pi_comp, ptr %144, i32 0, i32 1
  %145 = load i32, ptr %dy141, align 4, !tbaa !41
  %146 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl142 = shl i32 %145, %146
  %cmp143 = icmp ugt i32 %shl142, 2147483647
  br i1 %cmp143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %lor.lhs.false140, %if.end136
  br label %for.inc277

if.end145:                                        ; preds = %lor.lhs.false140
  %147 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0146 = getelementptr inbounds %struct.opj_pi_iterator, ptr %147, i32 0, i32 15
  %148 = load i32, ptr %tx0146, align 8, !tbaa !27
  %149 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx147 = getelementptr inbounds %struct.opj_pi_comp, ptr %149, i32 0, i32 0
  %150 = load i32, ptr %dx147, align 8, !tbaa !39
  %151 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl148 = shl i32 %150, %151
  %call149 = call i32 @opj_int_ceildiv(i32 noundef %148, i32 noundef %shl148)
  store i32 %call149, ptr %trx0, align 4, !tbaa !8
  %152 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0150 = getelementptr inbounds %struct.opj_pi_iterator, ptr %152, i32 0, i32 16
  %153 = load i32, ptr %ty0150, align 4, !tbaa !28
  %154 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy151 = getelementptr inbounds %struct.opj_pi_comp, ptr %154, i32 0, i32 1
  %155 = load i32, ptr %dy151, align 4, !tbaa !41
  %156 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl152 = shl i32 %155, %156
  %call153 = call i32 @opj_int_ceildiv(i32 noundef %153, i32 noundef %shl152)
  store i32 %call153, ptr %try0, align 4, !tbaa !8
  %157 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx1154 = getelementptr inbounds %struct.opj_pi_iterator, ptr %157, i32 0, i32 17
  %158 = load i32, ptr %tx1154, align 8, !tbaa !29
  %159 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx155 = getelementptr inbounds %struct.opj_pi_comp, ptr %159, i32 0, i32 0
  %160 = load i32, ptr %dx155, align 8, !tbaa !39
  %161 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl156 = shl i32 %160, %161
  %call157 = call i32 @opj_int_ceildiv(i32 noundef %158, i32 noundef %shl156)
  store i32 %call157, ptr %trx1, align 4, !tbaa !8
  %162 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty1158 = getelementptr inbounds %struct.opj_pi_iterator, ptr %162, i32 0, i32 18
  %163 = load i32, ptr %ty1158, align 4, !tbaa !30
  %164 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy159 = getelementptr inbounds %struct.opj_pi_comp, ptr %164, i32 0, i32 1
  %165 = load i32, ptr %dy159, align 4, !tbaa !41
  %166 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl160 = shl i32 %165, %166
  %call161 = call i32 @opj_int_ceildiv(i32 noundef %163, i32 noundef %shl160)
  store i32 %call161, ptr %try1, align 4, !tbaa !8
  %167 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx162 = getelementptr inbounds %struct.opj_pi_resolution, ptr %167, i32 0, i32 0
  %168 = load i32, ptr %pdx162, align 4, !tbaa !43
  %169 = load i32, ptr %levelno, align 4, !tbaa !8
  %add163 = add i32 %168, %169
  store i32 %add163, ptr %rpx, align 4, !tbaa !8
  %170 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy164 = getelementptr inbounds %struct.opj_pi_resolution, ptr %170, i32 0, i32 1
  %171 = load i32, ptr %pdy164, align 4, !tbaa !45
  %172 = load i32, ptr %levelno, align 4, !tbaa !8
  %add165 = add i32 %171, %172
  store i32 %add165, ptr %rpy, align 4, !tbaa !8
  %173 = load i32, ptr %rpx, align 4, !tbaa !8
  %cmp166 = icmp uge i32 %173, 31
  br i1 %cmp166, label %if.then181, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.end145
  %174 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx168 = getelementptr inbounds %struct.opj_pi_comp, ptr %174, i32 0, i32 0
  %175 = load i32, ptr %dx168, align 8, !tbaa !39
  %176 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl169 = shl i32 %175, %176
  %177 = load i32, ptr %rpx, align 4, !tbaa !8
  %shr170 = lshr i32 %shl169, %177
  %178 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx171 = getelementptr inbounds %struct.opj_pi_comp, ptr %178, i32 0, i32 0
  %179 = load i32, ptr %dx171, align 8, !tbaa !39
  %cmp172 = icmp ne i32 %shr170, %179
  br i1 %cmp172, label %if.then181, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %lor.lhs.false167
  %180 = load i32, ptr %rpy, align 4, !tbaa !8
  %cmp174 = icmp uge i32 %180, 31
  br i1 %cmp174, label %if.then181, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %lor.lhs.false173
  %181 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy176 = getelementptr inbounds %struct.opj_pi_comp, ptr %181, i32 0, i32 1
  %182 = load i32, ptr %dy176, align 4, !tbaa !41
  %183 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl177 = shl i32 %182, %183
  %184 = load i32, ptr %rpy, align 4, !tbaa !8
  %shr178 = lshr i32 %shl177, %184
  %185 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy179 = getelementptr inbounds %struct.opj_pi_comp, ptr %185, i32 0, i32 1
  %186 = load i32, ptr %dy179, align 4, !tbaa !41
  %cmp180 = icmp ne i32 %shr178, %186
  br i1 %cmp180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %lor.lhs.false175, %lor.lhs.false173, %lor.lhs.false167, %if.end145
  br label %for.inc277

if.end182:                                        ; preds = %lor.lhs.false175
  %187 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y183 = getelementptr inbounds %struct.opj_pi_iterator, ptr %187, i32 0, i32 20
  %188 = load i32, ptr %y183, align 4, !tbaa !149
  %189 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy184 = getelementptr inbounds %struct.opj_pi_comp, ptr %189, i32 0, i32 1
  %190 = load i32, ptr %dy184, align 4, !tbaa !41
  %191 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl185 = shl i32 %190, %191
  %rem = srem i32 %188, %shl185
  %cmp186 = icmp eq i32 %rem, 0
  br i1 %cmp186, label %if.end197, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %if.end182
  %192 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y188 = getelementptr inbounds %struct.opj_pi_iterator, ptr %192, i32 0, i32 20
  %193 = load i32, ptr %y188, align 4, !tbaa !149
  %194 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %ty0189 = getelementptr inbounds %struct.opj_pi_iterator, ptr %194, i32 0, i32 16
  %195 = load i32, ptr %ty0189, align 4, !tbaa !28
  %cmp190 = icmp eq i32 %193, %195
  br i1 %cmp190, label %land.lhs.true191, label %if.then196

land.lhs.true191:                                 ; preds = %lor.lhs.false187
  %196 = load i32, ptr %try0, align 4, !tbaa !8
  %197 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl192 = shl i32 %196, %197
  %198 = load i32, ptr %rpy, align 4, !tbaa !8
  %shl193 = shl i32 1, %198
  %rem194 = srem i32 %shl192, %shl193
  %tobool195 = icmp ne i32 %rem194, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %land.lhs.true191, %lor.lhs.false187
  br label %for.inc277

if.end197:                                        ; preds = %land.lhs.true191, %if.end182
  %199 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x198 = getelementptr inbounds %struct.opj_pi_iterator, ptr %199, i32 0, i32 19
  %200 = load i32, ptr %x198, align 8, !tbaa !150
  %201 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx199 = getelementptr inbounds %struct.opj_pi_comp, ptr %201, i32 0, i32 0
  %202 = load i32, ptr %dx199, align 8, !tbaa !39
  %203 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl200 = shl i32 %202, %203
  %rem201 = srem i32 %200, %shl200
  %cmp202 = icmp eq i32 %rem201, 0
  br i1 %cmp202, label %if.end213, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %if.end197
  %204 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x204 = getelementptr inbounds %struct.opj_pi_iterator, ptr %204, i32 0, i32 19
  %205 = load i32, ptr %x204, align 8, !tbaa !150
  %206 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %tx0205 = getelementptr inbounds %struct.opj_pi_iterator, ptr %206, i32 0, i32 15
  %207 = load i32, ptr %tx0205, align 8, !tbaa !27
  %cmp206 = icmp eq i32 %205, %207
  br i1 %cmp206, label %land.lhs.true207, label %if.then212

land.lhs.true207:                                 ; preds = %lor.lhs.false203
  %208 = load i32, ptr %trx0, align 4, !tbaa !8
  %209 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl208 = shl i32 %208, %209
  %210 = load i32, ptr %rpx, align 4, !tbaa !8
  %shl209 = shl i32 1, %210
  %rem210 = srem i32 %shl208, %shl209
  %tobool211 = icmp ne i32 %rem210, 0
  br i1 %tobool211, label %if.end213, label %if.then212

if.then212:                                       ; preds = %land.lhs.true207, %lor.lhs.false203
  br label %for.inc277

if.end213:                                        ; preds = %land.lhs.true207, %if.end197
  %211 = load ptr, ptr %res, align 8, !tbaa !4
  %pw = getelementptr inbounds %struct.opj_pi_resolution, ptr %211, i32 0, i32 2
  %212 = load i32, ptr %pw, align 4, !tbaa !46
  %cmp214 = icmp eq i32 %212, 0
  br i1 %cmp214, label %if.then217, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.end213
  %213 = load ptr, ptr %res, align 8, !tbaa !4
  %ph = getelementptr inbounds %struct.opj_pi_resolution, ptr %213, i32 0, i32 3
  %214 = load i32, ptr %ph, align 4, !tbaa !47
  %cmp216 = icmp eq i32 %214, 0
  br i1 %cmp216, label %if.then217, label %if.end218

if.then217:                                       ; preds = %lor.lhs.false215, %if.end213
  br label %for.inc277

if.end218:                                        ; preds = %lor.lhs.false215
  %215 = load i32, ptr %trx0, align 4, !tbaa !8
  %216 = load i32, ptr %trx1, align 4, !tbaa !8
  %cmp219 = icmp eq i32 %215, %216
  br i1 %cmp219, label %if.then222, label %lor.lhs.false220

lor.lhs.false220:                                 ; preds = %if.end218
  %217 = load i32, ptr %try0, align 4, !tbaa !8
  %218 = load i32, ptr %try1, align 4, !tbaa !8
  %cmp221 = icmp eq i32 %217, %218
  br i1 %cmp221, label %if.then222, label %if.end223

if.then222:                                       ; preds = %lor.lhs.false220, %if.end218
  br label %for.inc277

if.end223:                                        ; preds = %lor.lhs.false220
  %219 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x224 = getelementptr inbounds %struct.opj_pi_iterator, ptr %219, i32 0, i32 19
  %220 = load i32, ptr %x224, align 8, !tbaa !150
  %221 = load ptr, ptr %comp, align 8, !tbaa !4
  %dx225 = getelementptr inbounds %struct.opj_pi_comp, ptr %221, i32 0, i32 0
  %222 = load i32, ptr %dx225, align 8, !tbaa !39
  %223 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl226 = shl i32 %222, %223
  %call227 = call i32 @opj_int_ceildiv(i32 noundef %220, i32 noundef %shl226)
  %224 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx228 = getelementptr inbounds %struct.opj_pi_resolution, ptr %224, i32 0, i32 0
  %225 = load i32, ptr %pdx228, align 4, !tbaa !43
  %call229 = call i32 @opj_int_floordivpow2(i32 noundef %call227, i32 noundef %225)
  %226 = load i32, ptr %trx0, align 4, !tbaa !8
  %227 = load ptr, ptr %res, align 8, !tbaa !4
  %pdx230 = getelementptr inbounds %struct.opj_pi_resolution, ptr %227, i32 0, i32 0
  %228 = load i32, ptr %pdx230, align 4, !tbaa !43
  %call231 = call i32 @opj_int_floordivpow2(i32 noundef %226, i32 noundef %228)
  %sub232 = sub nsw i32 %call229, %call231
  store i32 %sub232, ptr %prci, align 4, !tbaa !8
  %229 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y233 = getelementptr inbounds %struct.opj_pi_iterator, ptr %229, i32 0, i32 20
  %230 = load i32, ptr %y233, align 4, !tbaa !149
  %231 = load ptr, ptr %comp, align 8, !tbaa !4
  %dy234 = getelementptr inbounds %struct.opj_pi_comp, ptr %231, i32 0, i32 1
  %232 = load i32, ptr %dy234, align 4, !tbaa !41
  %233 = load i32, ptr %levelno, align 4, !tbaa !8
  %shl235 = shl i32 %232, %233
  %call236 = call i32 @opj_int_ceildiv(i32 noundef %230, i32 noundef %shl235)
  %234 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy237 = getelementptr inbounds %struct.opj_pi_resolution, ptr %234, i32 0, i32 1
  %235 = load i32, ptr %pdy237, align 4, !tbaa !45
  %call238 = call i32 @opj_int_floordivpow2(i32 noundef %call236, i32 noundef %235)
  %236 = load i32, ptr %try0, align 4, !tbaa !8
  %237 = load ptr, ptr %res, align 8, !tbaa !4
  %pdy239 = getelementptr inbounds %struct.opj_pi_resolution, ptr %237, i32 0, i32 1
  %238 = load i32, ptr %pdy239, align 4, !tbaa !45
  %call240 = call i32 @opj_int_floordivpow2(i32 noundef %236, i32 noundef %238)
  %sub241 = sub nsw i32 %call238, %call240
  store i32 %sub241, ptr %prcj, align 4, !tbaa !8
  %239 = load i32, ptr %prci, align 4, !tbaa !8
  %240 = load i32, ptr %prcj, align 4, !tbaa !8
  %241 = load ptr, ptr %res, align 8, !tbaa !4
  %pw242 = getelementptr inbounds %struct.opj_pi_resolution, ptr %241, i32 0, i32 2
  %242 = load i32, ptr %pw242, align 4, !tbaa !46
  %mul243 = mul nsw i32 %240, %242
  %add244 = add nsw i32 %239, %mul243
  %243 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno = getelementptr inbounds %struct.opj_pi_iterator, ptr %243, i32 0, i32 9
  store i32 %add244, ptr %precno, align 4, !tbaa !137
  %244 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc245 = getelementptr inbounds %struct.opj_pi_iterator, ptr %244, i32 0, i32 12
  %layno0 = getelementptr inbounds %struct.opj_poc, ptr %poc245, i32 0, i32 5
  %245 = load i32, ptr %layno0, align 4, !tbaa !78
  %246 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno = getelementptr inbounds %struct.opj_pi_iterator, ptr %246, i32 0, i32 10
  store i32 %245, ptr %layno, align 8, !tbaa !136
  br label %for.cond246

for.cond246:                                      ; preds = %for.inc273, %if.end223
  %247 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno247 = getelementptr inbounds %struct.opj_pi_iterator, ptr %247, i32 0, i32 10
  %248 = load i32, ptr %layno247, align 8, !tbaa !136
  %249 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %poc248 = getelementptr inbounds %struct.opj_pi_iterator, ptr %249, i32 0, i32 12
  %layno1 = getelementptr inbounds %struct.opj_poc, ptr %poc248, i32 0, i32 2
  %250 = load i32, ptr %layno1, align 8, !tbaa !85
  %cmp249 = icmp ult i32 %248, %250
  br i1 %cmp249, label %for.body250, label %for.end276

for.body250:                                      ; preds = %for.cond246
  %251 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno251 = getelementptr inbounds %struct.opj_pi_iterator, ptr %251, i32 0, i32 10
  %252 = load i32, ptr %layno251, align 8, !tbaa !136
  %253 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, ptr %253, i32 0, i32 3
  %254 = load i32, ptr %step_l, align 4, !tbaa !34
  %mul252 = mul i32 %252, %254
  %255 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno253 = getelementptr inbounds %struct.opj_pi_iterator, ptr %255, i32 0, i32 8
  %256 = load i32, ptr %resno253, align 8, !tbaa !135
  %257 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, ptr %257, i32 0, i32 4
  %258 = load i32, ptr %step_r, align 8, !tbaa !33
  %mul254 = mul i32 %256, %258
  %add255 = add i32 %mul252, %mul254
  %259 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno256 = getelementptr inbounds %struct.opj_pi_iterator, ptr %259, i32 0, i32 7
  %260 = load i32, ptr %compno256, align 4, !tbaa !134
  %261 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, ptr %261, i32 0, i32 5
  %262 = load i32, ptr %step_c, align 4, !tbaa !32
  %mul257 = mul i32 %260, %262
  %add258 = add i32 %add255, %mul257
  %263 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %precno259 = getelementptr inbounds %struct.opj_pi_iterator, ptr %263, i32 0, i32 9
  %264 = load i32, ptr %precno259, align 4, !tbaa !137
  %265 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, ptr %265, i32 0, i32 6
  %266 = load i32, ptr %step_p, align 8, !tbaa !31
  %mul260 = mul i32 %264, %266
  %add261 = add i32 %add258, %mul260
  store i32 %add261, ptr %index, align 4, !tbaa !8
  %267 = load i32, ptr %index, align 4, !tbaa !8
  %268 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include_size = getelementptr inbounds %struct.opj_pi_iterator, ptr %268, i32 0, i32 2
  %269 = load i32, ptr %include_size, align 8, !tbaa !23
  %cmp262 = icmp uge i32 %267, %269
  br i1 %cmp262, label %if.then263, label %if.end264

if.then263:                                       ; preds = %for.body250
  %270 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  call void @opj_pi_emit_error(ptr noundef %270, ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end264:                                        ; preds = %for.body250
  %271 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include = getelementptr inbounds %struct.opj_pi_iterator, ptr %271, i32 0, i32 1
  %272 = load ptr, ptr %include, align 8, !tbaa !19
  %273 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom265 = zext i32 %273 to i64
  %arrayidx266 = getelementptr inbounds i16, ptr %272, i64 %idxprom265
  %274 = load i16, ptr %arrayidx266, align 2, !tbaa !138
  %tobool267 = icmp ne i16 %274, 0
  br i1 %tobool267, label %if.end272, label %if.then268

if.then268:                                       ; preds = %if.end264
  %275 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %include269 = getelementptr inbounds %struct.opj_pi_iterator, ptr %275, i32 0, i32 1
  %276 = load ptr, ptr %include269, align 8, !tbaa !19
  %277 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom270 = zext i32 %277 to i64
  %arrayidx271 = getelementptr inbounds i16, ptr %276, i64 %idxprom270
  store i16 1, ptr %arrayidx271, align 2, !tbaa !138
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end272:                                        ; preds = %if.end264
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end272, %if.then
  br label %for.inc273

for.inc273:                                       ; preds = %LABEL_SKIP
  %278 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %layno274 = getelementptr inbounds %struct.opj_pi_iterator, ptr %278, i32 0, i32 10
  %279 = load i32, ptr %layno274, align 8, !tbaa !136
  %inc275 = add i32 %279, 1
  store i32 %inc275, ptr %layno274, align 8, !tbaa !136
  br label %for.cond246, !llvm.loop !164

for.end276:                                       ; preds = %for.cond246
  br label %for.inc277

for.inc277:                                       ; preds = %for.end276, %if.then222, %if.then217, %if.then212, %if.then196, %if.then181, %if.then144, %if.then135
  %280 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %resno278 = getelementptr inbounds %struct.opj_pi_iterator, ptr %280, i32 0, i32 8
  %281 = load i32, ptr %resno278, align 8, !tbaa !135
  %inc279 = add i32 %281, 1
  store i32 %inc279, ptr %resno278, align 8, !tbaa !135
  br label %for.cond108, !llvm.loop !165

for.end280:                                       ; preds = %for.cond108
  br label %for.inc281

for.inc281:                                       ; preds = %for.end280
  %282 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx282 = getelementptr inbounds %struct.opj_pi_iterator, ptr %282, i32 0, i32 21
  %283 = load i32, ptr %dx282, align 8, !tbaa !93
  %284 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x283 = getelementptr inbounds %struct.opj_pi_iterator, ptr %284, i32 0, i32 19
  %285 = load i32, ptr %x283, align 8, !tbaa !150
  %286 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dx284 = getelementptr inbounds %struct.opj_pi_iterator, ptr %286, i32 0, i32 21
  %287 = load i32, ptr %dx284, align 8, !tbaa !93
  %rem285 = srem i32 %285, %287
  %sub286 = sub i32 %283, %rem285
  %288 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %x287 = getelementptr inbounds %struct.opj_pi_iterator, ptr %288, i32 0, i32 19
  %289 = load i32, ptr %x287, align 8, !tbaa !150
  %add288 = add nsw i32 %289, %sub286
  store i32 %add288, ptr %x287, align 8, !tbaa !150
  br label %for.cond100, !llvm.loop !166

for.end289:                                       ; preds = %for.cond100
  br label %for.inc290

for.inc290:                                       ; preds = %for.end289
  %290 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy291 = getelementptr inbounds %struct.opj_pi_iterator, ptr %290, i32 0, i32 22
  %291 = load i32, ptr %dy291, align 4, !tbaa !94
  %292 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y292 = getelementptr inbounds %struct.opj_pi_iterator, ptr %292, i32 0, i32 20
  %293 = load i32, ptr %y292, align 4, !tbaa !149
  %294 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %dy293 = getelementptr inbounds %struct.opj_pi_iterator, ptr %294, i32 0, i32 22
  %295 = load i32, ptr %dy293, align 4, !tbaa !94
  %rem294 = srem i32 %293, %295
  %sub295 = sub i32 %291, %rem294
  %296 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %y296 = getelementptr inbounds %struct.opj_pi_iterator, ptr %296, i32 0, i32 20
  %297 = load i32, ptr %y296, align 4, !tbaa !149
  %add297 = add nsw i32 %297, %sub295
  store i32 %add297, ptr %y296, align 4, !tbaa !149
  br label %for.cond92, !llvm.loop !167

for.end298:                                       ; preds = %for.cond92
  br label %for.inc299

for.inc299:                                       ; preds = %for.end298
  %298 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %compno300 = getelementptr inbounds %struct.opj_pi_iterator, ptr %298, i32 0, i32 7
  %299 = load i32, ptr %compno300, align 4, !tbaa !134
  %inc301 = add i32 %299, 1
  store i32 %inc301, ptr %compno300, align 4, !tbaa !134
  br label %for.cond, !llvm.loop !168

for.end302:                                       ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end302, %if.then268, %if.then263, %if.then77
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #4
  %300 = load i32, ptr %retval, align 4
  ret i32 %300
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_uint_max(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_uint_min(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_uint_adds(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %sum = alloca i64, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #4
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %conv = zext i32 %0 to i64
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %conv1 = zext i32 %1 to i64
  %add = add i64 %conv, %conv1
  store i64 %add, ptr %sum, align 8, !tbaa !169
  %2 = load i64, ptr %sum, align 8, !tbaa !169
  %shr = lshr i64 %2, 32
  %conv2 = trunc i64 %shr to i32
  %sub = sub nsw i32 0, %conv2
  %3 = load i64, ptr %sum, align 8, !tbaa !169
  %conv3 = trunc i64 %3 to i32
  %or = or i32 %sub, %conv3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #4
  ret i32 %or
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildiv(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %conv1 = sext i32 %1 to i64
  %add = add nsw i64 %conv, %conv1
  %sub = sub nsw i64 %add, 1
  %2 = load i32, ptr %b.addr, align 4, !tbaa !8
  %conv2 = sext i32 %2 to i64
  %div = sdiv i64 %sub, %conv2
  %conv3 = trunc i64 %div to i32
  ret i32 %conv3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_min(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildivpow2(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  %add = add nsw i64 %conv, %shl
  %sub = sub nsw i64 %add, 1
  %2 = load i32, ptr %b.addr, align 4, !tbaa !8
  %sh_prom1 = zext i32 %2 to i64
  %shr = ashr i64 %sub, %sh_prom1
  %conv2 = trunc i64 %shr to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_floordivpow2(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %shr = ashr i32 %0, %1
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_max(i32 noundef %a, i32 noundef %b) #3 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  %0 = load i32, ptr %a.addr, align 4, !tbaa !8
  %1 = load i32, ptr %b.addr, align 4, !tbaa !8
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @opj_pi_emit_error(ptr noundef %pi, ptr noundef %msg) #0 {
entry:
  %pi.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !4
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pi.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !9, i64 16}
!11 = !{!"opj_image", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !6, i64 20, !5, i64 24, !5, i64 32, !9, i64 40}
!12 = !{!13, !5, i64 112}
!13 = !{!"opj_cp", !14, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !9, i64 68, !5, i64 72, !5, i64 80, !5, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !5, i64 112, !6, i64 120, !9, i64 144, !9, i64 144, !9, i64 144}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !9, i64 420}
!16 = !{!"opj_tcp", !9, i64 0, !6, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !6, i64 20, !9, i64 420, !6, i64 424, !9, i64 5160, !5, i64 5168, !5, i64 5176, !5, i64 5184, !9, i64 5192, !9, i64 5196, !6, i64 5200, !5, i64 5600, !9, i64 5608, !9, i64 5612, !5, i64 5616, !9, i64 5624, !5, i64 5632, !5, i64 5640, !5, i64 5648, !5, i64 5656, !9, i64 5664, !9, i64 5668, !5, i64 5672, !9, i64 5680, !9, i64 5684, !9, i64 5688, !9, i64 5688, !9, i64 5688}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !5, i64 8}
!20 = !{!"opj_pi_iterator", !6, i64 0, !5, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !21, i64 56, !9, i64 204, !5, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244}
!21 = !{!"opj_poc", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144}
!22 = !{!16, !9, i64 8}
!23 = !{!20, !9, i64 16}
!24 = !{!20, !5, i64 208}
!25 = !{!11, !5, i64 24}
!26 = !{!16, !5, i64 5600}
!27 = !{!20, !9, i64 216}
!28 = !{!20, !9, i64 220}
!29 = !{!20, !9, i64 224}
!30 = !{!20, !9, i64 228}
!31 = !{!20, !9, i64 32}
!32 = !{!20, !9, i64 28}
!33 = !{!20, !9, i64 24}
!34 = !{!20, !9, i64 20}
!35 = !{!36, !5, i64 16}
!36 = !{!"opj_pi_comp", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 16}
!37 = !{!38, !9, i64 0}
!38 = !{!"opj_image_comp", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !5, i64 48, !14, i64 56}
!39 = !{!36, !9, i64 0}
!40 = !{!38, !9, i64 4}
!41 = !{!36, !9, i64 4}
!42 = !{!36, !9, i64 8}
!43 = !{!44, !9, i64 0}
!44 = !{!"opj_pi_resolution", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!45 = !{!44, !9, i64 4}
!46 = !{!44, !9, i64 8}
!47 = !{!44, !9, i64 12}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = !{!20, !9, i64 204}
!54 = !{!55, !9, i64 4}
!55 = !{!"opj_tccp", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !6, i64 28, !9, i64 804, !9, i64 808, !6, i64 812, !6, i64 944, !9, i64 1076}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = !{!13, !9, i64 32}
!59 = !{!13, !9, i64 4}
!60 = !{!13, !9, i64 12}
!61 = !{!11, !9, i64 0}
!62 = !{!11, !9, i64 8}
!63 = !{!13, !9, i64 8}
!64 = !{!13, !9, i64 16}
!65 = !{!11, !9, i64 4}
!66 = !{!11, !9, i64 12}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !18}
!71 = !{!21, !6, i64 36}
!72 = !{!20, !6, i64 92}
!73 = !{!20, !9, i64 52}
!74 = !{!21, !9, i64 0}
!75 = !{!20, !9, i64 56}
!76 = !{!21, !9, i64 4}
!77 = !{!20, !9, i64 60}
!78 = !{!20, !9, i64 76}
!79 = !{!20, !9, i64 80}
!80 = !{!21, !9, i64 12}
!81 = !{!20, !9, i64 68}
!82 = !{!21, !9, i64 16}
!83 = !{!20, !9, i64 72}
!84 = !{!21, !9, i64 8}
!85 = !{!20, !9, i64 64}
!86 = !{!20, !9, i64 84}
!87 = distinct !{!87, !18}
!88 = !{!16, !6, i64 4}
!89 = distinct !{!89, !18}
!90 = !{!6, !6, i64 0}
!91 = distinct !{!91, !18}
!92 = !{!20, !6, i64 0}
!93 = !{!20, !9, i64 240}
!94 = !{!20, !9, i64 244}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !18}
!100 = !{!13, !14, i64 0}
!101 = !{!21, !9, i64 76}
!102 = !{!21, !9, i64 92}
!103 = !{!21, !9, i64 72}
!104 = !{!21, !9, i64 88}
!105 = !{!21, !9, i64 84}
!106 = !{!21, !9, i64 68}
!107 = !{!21, !6, i64 32}
!108 = !{!21, !9, i64 80}
!109 = !{!21, !9, i64 96}
!110 = !{!21, !9, i64 100}
!111 = !{!21, !9, i64 104}
!112 = !{!21, !9, i64 108}
!113 = !{!21, !9, i64 112}
!114 = !{!21, !9, i64 116}
!115 = !{!21, !9, i64 120}
!116 = distinct !{!116, !18}
!117 = distinct !{!117, !18}
!118 = !{!20, !9, i64 108}
!119 = !{!20, !9, i64 116}
!120 = !{!20, !9, i64 112}
!121 = !{!20, !9, i64 120}
!122 = distinct !{!122, !18}
!123 = !{!21, !9, i64 132}
!124 = !{!21, !9, i64 128}
!125 = !{!21, !9, i64 124}
!126 = !{!21, !9, i64 136}
!127 = !{!21, !9, i64 140}
!128 = !{!21, !9, i64 144}
!129 = distinct !{!129, !18}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18}
!133 = distinct !{!133, !18}
!134 = !{!20, !9, i64 36}
!135 = !{!20, !9, i64 40}
!136 = !{!20, !9, i64 48}
!137 = !{!20, !9, i64 44}
!138 = !{!14, !14, i64 0}
!139 = distinct !{!139, !18}
!140 = distinct !{!140, !18}
!141 = distinct !{!141, !18}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !18}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18}
!146 = distinct !{!146, !18}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !18}
!149 = !{!20, !9, i64 236}
!150 = !{!20, !9, i64 232}
!151 = distinct !{!151, !18}
!152 = distinct !{!152, !18}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = distinct !{!156, !18}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !18}
!161 = distinct !{!161, !18}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = distinct !{!164, !18}
!165 = distinct !{!165, !18}
!166 = distinct !{!166, !18}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18}
!169 = !{!170, !170, i64 0}
!170 = !{!"long", !6, i64 0}

; ModuleID = 'samples/630.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-raddstoreexpminusmax/gen/avx512f-rr1-p5-scalef-x192-acc3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { float, float, float, float, float, float, float, float }
%struct.__loadu_ps = type { <16 x float> }
%struct.__storeu_ps = type { <16 x float> }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_raddstoreexpminusmax_ukernel__avx512f_rr1_p5_scalef_x192_acc3(i64 noundef %elements, ptr noundef %input, ptr noundef %max, ptr noundef %output, ptr noundef %sum, ptr noalias noundef align 32 dereferenceable(352) %params) #0 {
entry:
  %elements.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %sum.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vi_max = alloca <16 x float>, align 64
  %vlog2e = alloca <16 x float>, align 64
  %vminus_ln2 = alloca <16 x float>, align 64
  %vc5 = alloca <16 x float>, align 64
  %vc4 = alloca <16 x float>, align 64
  %vc3 = alloca <16 x float>, align 64
  %vc2 = alloca <16 x float>, align 64
  %vc1 = alloca <16 x float>, align 64
  %vc0 = alloca <16 x float>, align 64
  %vacc0 = alloca <16 x float>, align 64
  %vacc1 = alloca <16 x float>, align 64
  %vacc2 = alloca <16 x float>, align 64
  %vi0 = alloca <16 x float>, align 64
  %vi1 = alloca <16 x float>, align 64
  %vi2 = alloca <16 x float>, align 64
  %vi3 = alloca <16 x float>, align 64
  %vi4 = alloca <16 x float>, align 64
  %vi5 = alloca <16 x float>, align 64
  %vi6 = alloca <16 x float>, align 64
  %vi7 = alloca <16 x float>, align 64
  %vi8 = alloca <16 x float>, align 64
  %vi9 = alloca <16 x float>, align 64
  %vi10 = alloca <16 x float>, align 64
  %vi11 = alloca <16 x float>, align 64
  %vx0 = alloca <16 x float>, align 64
  %vx1 = alloca <16 x float>, align 64
  %vx2 = alloca <16 x float>, align 64
  %vx3 = alloca <16 x float>, align 64
  %vx4 = alloca <16 x float>, align 64
  %vx5 = alloca <16 x float>, align 64
  %vx6 = alloca <16 x float>, align 64
  %vx7 = alloca <16 x float>, align 64
  %vx8 = alloca <16 x float>, align 64
  %vx9 = alloca <16 x float>, align 64
  %vx10 = alloca <16 x float>, align 64
  %vx11 = alloca <16 x float>, align 64
  %vn0 = alloca <16 x float>, align 64
  %vn1 = alloca <16 x float>, align 64
  %vn2 = alloca <16 x float>, align 64
  %vn3 = alloca <16 x float>, align 64
  %vn4 = alloca <16 x float>, align 64
  %vn5 = alloca <16 x float>, align 64
  %vn6 = alloca <16 x float>, align 64
  %vn7 = alloca <16 x float>, align 64
  %vn8 = alloca <16 x float>, align 64
  %vn9 = alloca <16 x float>, align 64
  %vn10 = alloca <16 x float>, align 64
  %vn11 = alloca <16 x float>, align 64
  %vt0 = alloca <16 x float>, align 64
  %vt1 = alloca <16 x float>, align 64
  %vt2 = alloca <16 x float>, align 64
  %vt3 = alloca <16 x float>, align 64
  %vt4 = alloca <16 x float>, align 64
  %vt5 = alloca <16 x float>, align 64
  %vt6 = alloca <16 x float>, align 64
  %vt7 = alloca <16 x float>, align 64
  %vt8 = alloca <16 x float>, align 64
  %vt9 = alloca <16 x float>, align 64
  %vt10 = alloca <16 x float>, align 64
  %vt11 = alloca <16 x float>, align 64
  %vp0 = alloca <16 x float>, align 64
  %vp1 = alloca <16 x float>, align 64
  %vp2 = alloca <16 x float>, align 64
  %vp3 = alloca <16 x float>, align 64
  %vp4 = alloca <16 x float>, align 64
  %vp5 = alloca <16 x float>, align 64
  %vp6 = alloca <16 x float>, align 64
  %vp7 = alloca <16 x float>, align 64
  %vp8 = alloca <16 x float>, align 64
  %vp9 = alloca <16 x float>, align 64
  %vp10 = alloca <16 x float>, align 64
  %vp11 = alloca <16 x float>, align 64
  %vf0 = alloca <16 x float>, align 64
  %vf1 = alloca <16 x float>, align 64
  %vf2 = alloca <16 x float>, align 64
  %vf3 = alloca <16 x float>, align 64
  %vf4 = alloca <16 x float>, align 64
  %vf5 = alloca <16 x float>, align 64
  %vf6 = alloca <16 x float>, align 64
  %vf7 = alloca <16 x float>, align 64
  %vf8 = alloca <16 x float>, align 64
  %vf9 = alloca <16 x float>, align 64
  %vf10 = alloca <16 x float>, align 64
  %vf11 = alloca <16 x float>, align 64
  %vacc = alloca <16 x float>, align 64
  %vi = alloca <16 x float>, align 64
  %vx = alloca <16 x float>, align 64
  %vn = alloca <16 x float>, align 64
  %vt = alloca <16 x float>, align 64
  %vp = alloca <16 x float>, align 64
  %vf = alloca <16 x float>, align 64
  %vmask = alloca i16, align 2
  %vi205 = alloca <16 x float>, align 64
  %vx207 = alloca <16 x float>, align 64
  %vn209 = alloca <16 x float>, align 64
  %vt212 = alloca <16 x float>, align 64
  %vp214 = alloca <16 x float>, align 64
  %vf220 = alloca <16 x float>, align 64
  store i64 %elements, ptr %elements.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %max, ptr %max.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %sum, ptr %sum.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi_max) #8
  %0 = load ptr, ptr %max.addr, align 8, !tbaa !9
  %1 = load float, ptr %0, align 4, !tbaa !11
  %call = call <16 x float> @_mm512_set1_ps(float noundef %1)
  store <16 x float> %call, ptr %vi_max, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vlog2e) #8
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %log2e = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 0
  %3 = load float, ptr %log2e, align 32, !tbaa !13
  %call1 = call <16 x float> @_mm512_set1_ps(float noundef %3)
  store <16 x float> %call1, ptr %vlog2e, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vminus_ln2) #8
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %minus_ln2 = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 1
  %5 = load float, ptr %minus_ln2, align 4, !tbaa !13
  %call2 = call <16 x float> @_mm512_set1_ps(float noundef %5)
  store <16 x float> %call2, ptr %vminus_ln2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc5) #8
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c5 = getelementptr inbounds %struct.anon.3, ptr %6, i32 0, i32 2
  %7 = load float, ptr %c5, align 8, !tbaa !13
  %call3 = call <16 x float> @_mm512_set1_ps(float noundef %7)
  store <16 x float> %call3, ptr %vc5, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc4) #8
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c4 = getelementptr inbounds %struct.anon.3, ptr %8, i32 0, i32 3
  %9 = load float, ptr %c4, align 4, !tbaa !13
  %call4 = call <16 x float> @_mm512_set1_ps(float noundef %9)
  store <16 x float> %call4, ptr %vc4, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc3) #8
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c3 = getelementptr inbounds %struct.anon.3, ptr %10, i32 0, i32 4
  %11 = load float, ptr %c3, align 16, !tbaa !13
  %call5 = call <16 x float> @_mm512_set1_ps(float noundef %11)
  store <16 x float> %call5, ptr %vc3, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc2) #8
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c2 = getelementptr inbounds %struct.anon.3, ptr %12, i32 0, i32 5
  %13 = load float, ptr %c2, align 4, !tbaa !13
  %call6 = call <16 x float> @_mm512_set1_ps(float noundef %13)
  store <16 x float> %call6, ptr %vc2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc1) #8
  %14 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c1 = getelementptr inbounds %struct.anon.3, ptr %14, i32 0, i32 6
  %15 = load float, ptr %c1, align 8, !tbaa !13
  %call7 = call <16 x float> @_mm512_set1_ps(float noundef %15)
  store <16 x float> %call7, ptr %vc1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc0) #8
  %16 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c0 = getelementptr inbounds %struct.anon.3, ptr %16, i32 0, i32 7
  %17 = load float, ptr %c0, align 4, !tbaa !13
  %call8 = call <16 x float> @_mm512_set1_ps(float noundef %17)
  store <16 x float> %call8, ptr %vc0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0) #8
  %call9 = call <16 x float> @_mm512_setzero_ps()
  store <16 x float> %call9, ptr %vacc0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1) #8
  %call10 = call <16 x float> @_mm512_setzero_ps()
  store <16 x float> %call10, ptr %vacc1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc2) #8
  %call11 = call <16 x float> @_mm512_setzero_ps()
  store <16 x float> %call11, ptr %vacc2, align 64, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %18, 768
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi0) #8
  %19 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call12 = call <16 x float> @_mm512_loadu_ps(ptr noundef %19)
  store <16 x float> %call12, ptr %vi0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi1) #8
  %20 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %20, i64 16
  %call13 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr)
  store <16 x float> %call13, ptr %vi1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi2) #8
  %21 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr14 = getelementptr inbounds float, ptr %21, i64 32
  %call15 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr14)
  store <16 x float> %call15, ptr %vi2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi3) #8
  %22 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr16 = getelementptr inbounds float, ptr %22, i64 48
  %call17 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr16)
  store <16 x float> %call17, ptr %vi3, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi4) #8
  %23 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr18 = getelementptr inbounds float, ptr %23, i64 64
  %call19 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr18)
  store <16 x float> %call19, ptr %vi4, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi5) #8
  %24 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr20 = getelementptr inbounds float, ptr %24, i64 80
  %call21 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr20)
  store <16 x float> %call21, ptr %vi5, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi6) #8
  %25 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr22 = getelementptr inbounds float, ptr %25, i64 96
  %call23 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr22)
  store <16 x float> %call23, ptr %vi6, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi7) #8
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr24 = getelementptr inbounds float, ptr %26, i64 112
  %call25 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr24)
  store <16 x float> %call25, ptr %vi7, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi8) #8
  %27 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr26 = getelementptr inbounds float, ptr %27, i64 128
  %call27 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr26)
  store <16 x float> %call27, ptr %vi8, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi9) #8
  %28 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr28 = getelementptr inbounds float, ptr %28, i64 144
  %call29 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr28)
  store <16 x float> %call29, ptr %vi9, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi10) #8
  %29 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr30 = getelementptr inbounds float, ptr %29, i64 160
  %call31 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr30)
  store <16 x float> %call31, ptr %vi10, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi11) #8
  %30 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr32 = getelementptr inbounds float, ptr %30, i64 176
  %call33 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr32)
  store <16 x float> %call33, ptr %vi11, align 64, !tbaa !13
  %31 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr34 = getelementptr inbounds float, ptr %31, i64 192
  store ptr %add.ptr34, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx0) #8
  %32 = load <16 x float>, ptr %vi0, align 64, !tbaa !13
  %33 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call35 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %32, <16 x float> noundef %33)
  store <16 x float> %call35, ptr %vx0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx1) #8
  %34 = load <16 x float>, ptr %vi1, align 64, !tbaa !13
  %35 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call36 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %34, <16 x float> noundef %35)
  store <16 x float> %call36, ptr %vx1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx2) #8
  %36 = load <16 x float>, ptr %vi2, align 64, !tbaa !13
  %37 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call37 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %36, <16 x float> noundef %37)
  store <16 x float> %call37, ptr %vx2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx3) #8
  %38 = load <16 x float>, ptr %vi3, align 64, !tbaa !13
  %39 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call38 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %38, <16 x float> noundef %39)
  store <16 x float> %call38, ptr %vx3, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx4) #8
  %40 = load <16 x float>, ptr %vi4, align 64, !tbaa !13
  %41 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call39 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %40, <16 x float> noundef %41)
  store <16 x float> %call39, ptr %vx4, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx5) #8
  %42 = load <16 x float>, ptr %vi5, align 64, !tbaa !13
  %43 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call40 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %42, <16 x float> noundef %43)
  store <16 x float> %call40, ptr %vx5, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx6) #8
  %44 = load <16 x float>, ptr %vi6, align 64, !tbaa !13
  %45 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call41 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %44, <16 x float> noundef %45)
  store <16 x float> %call41, ptr %vx6, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx7) #8
  %46 = load <16 x float>, ptr %vi7, align 64, !tbaa !13
  %47 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call42 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %46, <16 x float> noundef %47)
  store <16 x float> %call42, ptr %vx7, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx8) #8
  %48 = load <16 x float>, ptr %vi8, align 64, !tbaa !13
  %49 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call43 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %48, <16 x float> noundef %49)
  store <16 x float> %call43, ptr %vx8, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx9) #8
  %50 = load <16 x float>, ptr %vi9, align 64, !tbaa !13
  %51 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call44 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %50, <16 x float> noundef %51)
  store <16 x float> %call44, ptr %vx9, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx10) #8
  %52 = load <16 x float>, ptr %vi10, align 64, !tbaa !13
  %53 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call45 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %52, <16 x float> noundef %53)
  store <16 x float> %call45, ptr %vx10, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx11) #8
  %54 = load <16 x float>, ptr %vi11, align 64, !tbaa !13
  %55 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call46 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %54, <16 x float> noundef %55)
  store <16 x float> %call46, ptr %vx11, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn0) #8
  %56 = load <16 x float>, ptr %vx0, align 64, !tbaa !13
  %57 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call47 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %56, <16 x float> noundef %57)
  %call48 = call <16 x float> @_mm512_undefined_ps()
  %58 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call47, i32 0, <16 x float> %call48, i16 -1, i32 4)
  store <16 x float> %58, ptr %vn0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn1) #8
  %59 = load <16 x float>, ptr %vx1, align 64, !tbaa !13
  %60 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call49 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %59, <16 x float> noundef %60)
  %call50 = call <16 x float> @_mm512_undefined_ps()
  %61 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call49, i32 0, <16 x float> %call50, i16 -1, i32 4)
  store <16 x float> %61, ptr %vn1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn2) #8
  %62 = load <16 x float>, ptr %vx2, align 64, !tbaa !13
  %63 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call51 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %62, <16 x float> noundef %63)
  %call52 = call <16 x float> @_mm512_undefined_ps()
  %64 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call51, i32 0, <16 x float> %call52, i16 -1, i32 4)
  store <16 x float> %64, ptr %vn2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn3) #8
  %65 = load <16 x float>, ptr %vx3, align 64, !tbaa !13
  %66 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call53 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %65, <16 x float> noundef %66)
  %call54 = call <16 x float> @_mm512_undefined_ps()
  %67 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call53, i32 0, <16 x float> %call54, i16 -1, i32 4)
  store <16 x float> %67, ptr %vn3, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn4) #8
  %68 = load <16 x float>, ptr %vx4, align 64, !tbaa !13
  %69 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call55 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %68, <16 x float> noundef %69)
  %call56 = call <16 x float> @_mm512_undefined_ps()
  %70 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call55, i32 0, <16 x float> %call56, i16 -1, i32 4)
  store <16 x float> %70, ptr %vn4, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn5) #8
  %71 = load <16 x float>, ptr %vx5, align 64, !tbaa !13
  %72 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call57 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %71, <16 x float> noundef %72)
  %call58 = call <16 x float> @_mm512_undefined_ps()
  %73 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call57, i32 0, <16 x float> %call58, i16 -1, i32 4)
  store <16 x float> %73, ptr %vn5, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn6) #8
  %74 = load <16 x float>, ptr %vx6, align 64, !tbaa !13
  %75 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call59 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %74, <16 x float> noundef %75)
  %call60 = call <16 x float> @_mm512_undefined_ps()
  %76 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call59, i32 0, <16 x float> %call60, i16 -1, i32 4)
  store <16 x float> %76, ptr %vn6, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn7) #8
  %77 = load <16 x float>, ptr %vx7, align 64, !tbaa !13
  %78 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call61 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %77, <16 x float> noundef %78)
  %call62 = call <16 x float> @_mm512_undefined_ps()
  %79 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call61, i32 0, <16 x float> %call62, i16 -1, i32 4)
  store <16 x float> %79, ptr %vn7, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn8) #8
  %80 = load <16 x float>, ptr %vx8, align 64, !tbaa !13
  %81 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call63 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %80, <16 x float> noundef %81)
  %call64 = call <16 x float> @_mm512_undefined_ps()
  %82 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call63, i32 0, <16 x float> %call64, i16 -1, i32 4)
  store <16 x float> %82, ptr %vn8, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn9) #8
  %83 = load <16 x float>, ptr %vx9, align 64, !tbaa !13
  %84 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call65 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %83, <16 x float> noundef %84)
  %call66 = call <16 x float> @_mm512_undefined_ps()
  %85 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call65, i32 0, <16 x float> %call66, i16 -1, i32 4)
  store <16 x float> %85, ptr %vn9, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn10) #8
  %86 = load <16 x float>, ptr %vx10, align 64, !tbaa !13
  %87 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call67 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %86, <16 x float> noundef %87)
  %call68 = call <16 x float> @_mm512_undefined_ps()
  %88 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call67, i32 0, <16 x float> %call68, i16 -1, i32 4)
  store <16 x float> %88, ptr %vn10, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn11) #8
  %89 = load <16 x float>, ptr %vx11, align 64, !tbaa !13
  %90 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call69 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %89, <16 x float> noundef %90)
  %call70 = call <16 x float> @_mm512_undefined_ps()
  %91 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call69, i32 0, <16 x float> %call70, i16 -1, i32 4)
  store <16 x float> %91, ptr %vn11, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt0) #8
  %92 = load <16 x float>, ptr %vn0, align 64, !tbaa !13
  %93 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %94 = load <16 x float>, ptr %vx0, align 64, !tbaa !13
  %call71 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %92, <16 x float> noundef %93, <16 x float> noundef %94)
  store <16 x float> %call71, ptr %vt0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt1) #8
  %95 = load <16 x float>, ptr %vn1, align 64, !tbaa !13
  %96 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %97 = load <16 x float>, ptr %vx1, align 64, !tbaa !13
  %call72 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %95, <16 x float> noundef %96, <16 x float> noundef %97)
  store <16 x float> %call72, ptr %vt1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt2) #8
  %98 = load <16 x float>, ptr %vn2, align 64, !tbaa !13
  %99 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %100 = load <16 x float>, ptr %vx2, align 64, !tbaa !13
  %call73 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %98, <16 x float> noundef %99, <16 x float> noundef %100)
  store <16 x float> %call73, ptr %vt2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt3) #8
  %101 = load <16 x float>, ptr %vn3, align 64, !tbaa !13
  %102 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %103 = load <16 x float>, ptr %vx3, align 64, !tbaa !13
  %call74 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %101, <16 x float> noundef %102, <16 x float> noundef %103)
  store <16 x float> %call74, ptr %vt3, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt4) #8
  %104 = load <16 x float>, ptr %vn4, align 64, !tbaa !13
  %105 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %106 = load <16 x float>, ptr %vx4, align 64, !tbaa !13
  %call75 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %104, <16 x float> noundef %105, <16 x float> noundef %106)
  store <16 x float> %call75, ptr %vt4, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt5) #8
  %107 = load <16 x float>, ptr %vn5, align 64, !tbaa !13
  %108 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %109 = load <16 x float>, ptr %vx5, align 64, !tbaa !13
  %call76 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %107, <16 x float> noundef %108, <16 x float> noundef %109)
  store <16 x float> %call76, ptr %vt5, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt6) #8
  %110 = load <16 x float>, ptr %vn6, align 64, !tbaa !13
  %111 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %112 = load <16 x float>, ptr %vx6, align 64, !tbaa !13
  %call77 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %110, <16 x float> noundef %111, <16 x float> noundef %112)
  store <16 x float> %call77, ptr %vt6, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt7) #8
  %113 = load <16 x float>, ptr %vn7, align 64, !tbaa !13
  %114 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %115 = load <16 x float>, ptr %vx7, align 64, !tbaa !13
  %call78 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %113, <16 x float> noundef %114, <16 x float> noundef %115)
  store <16 x float> %call78, ptr %vt7, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt8) #8
  %116 = load <16 x float>, ptr %vn8, align 64, !tbaa !13
  %117 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %118 = load <16 x float>, ptr %vx8, align 64, !tbaa !13
  %call79 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %116, <16 x float> noundef %117, <16 x float> noundef %118)
  store <16 x float> %call79, ptr %vt8, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt9) #8
  %119 = load <16 x float>, ptr %vn9, align 64, !tbaa !13
  %120 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %121 = load <16 x float>, ptr %vx9, align 64, !tbaa !13
  %call80 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %119, <16 x float> noundef %120, <16 x float> noundef %121)
  store <16 x float> %call80, ptr %vt9, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt10) #8
  %122 = load <16 x float>, ptr %vn10, align 64, !tbaa !13
  %123 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %124 = load <16 x float>, ptr %vx10, align 64, !tbaa !13
  %call81 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %122, <16 x float> noundef %123, <16 x float> noundef %124)
  store <16 x float> %call81, ptr %vt10, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt11) #8
  %125 = load <16 x float>, ptr %vn11, align 64, !tbaa !13
  %126 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %127 = load <16 x float>, ptr %vx11, align 64, !tbaa !13
  %call82 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %125, <16 x float> noundef %126, <16 x float> noundef %127)
  store <16 x float> %call82, ptr %vt11, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp0) #8
  %128 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %129 = load <16 x float>, ptr %vt0, align 64, !tbaa !13
  %130 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call83 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %128, <16 x float> noundef %129, <16 x float> noundef %130)
  store <16 x float> %call83, ptr %vp0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp1) #8
  %131 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %132 = load <16 x float>, ptr %vt1, align 64, !tbaa !13
  %133 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call84 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %131, <16 x float> noundef %132, <16 x float> noundef %133)
  store <16 x float> %call84, ptr %vp1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp2) #8
  %134 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %135 = load <16 x float>, ptr %vt2, align 64, !tbaa !13
  %136 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call85 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %134, <16 x float> noundef %135, <16 x float> noundef %136)
  store <16 x float> %call85, ptr %vp2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp3) #8
  %137 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %138 = load <16 x float>, ptr %vt3, align 64, !tbaa !13
  %139 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call86 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %137, <16 x float> noundef %138, <16 x float> noundef %139)
  store <16 x float> %call86, ptr %vp3, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp4) #8
  %140 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %141 = load <16 x float>, ptr %vt4, align 64, !tbaa !13
  %142 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call87 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %140, <16 x float> noundef %141, <16 x float> noundef %142)
  store <16 x float> %call87, ptr %vp4, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp5) #8
  %143 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %144 = load <16 x float>, ptr %vt5, align 64, !tbaa !13
  %145 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call88 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %143, <16 x float> noundef %144, <16 x float> noundef %145)
  store <16 x float> %call88, ptr %vp5, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp6) #8
  %146 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %147 = load <16 x float>, ptr %vt6, align 64, !tbaa !13
  %148 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call89 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %146, <16 x float> noundef %147, <16 x float> noundef %148)
  store <16 x float> %call89, ptr %vp6, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp7) #8
  %149 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %150 = load <16 x float>, ptr %vt7, align 64, !tbaa !13
  %151 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call90 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %149, <16 x float> noundef %150, <16 x float> noundef %151)
  store <16 x float> %call90, ptr %vp7, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp8) #8
  %152 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %153 = load <16 x float>, ptr %vt8, align 64, !tbaa !13
  %154 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call91 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %152, <16 x float> noundef %153, <16 x float> noundef %154)
  store <16 x float> %call91, ptr %vp8, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp9) #8
  %155 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %156 = load <16 x float>, ptr %vt9, align 64, !tbaa !13
  %157 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call92 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %155, <16 x float> noundef %156, <16 x float> noundef %157)
  store <16 x float> %call92, ptr %vp9, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp10) #8
  %158 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %159 = load <16 x float>, ptr %vt10, align 64, !tbaa !13
  %160 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call93 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %158, <16 x float> noundef %159, <16 x float> noundef %160)
  store <16 x float> %call93, ptr %vp10, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp11) #8
  %161 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %162 = load <16 x float>, ptr %vt11, align 64, !tbaa !13
  %163 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call94 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %161, <16 x float> noundef %162, <16 x float> noundef %163)
  store <16 x float> %call94, ptr %vp11, align 64, !tbaa !13
  %164 = load <16 x float>, ptr %vp0, align 64, !tbaa !13
  %165 = load <16 x float>, ptr %vt0, align 64, !tbaa !13
  %166 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call95 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %164, <16 x float> noundef %165, <16 x float> noundef %166)
  store <16 x float> %call95, ptr %vp0, align 64, !tbaa !13
  %167 = load <16 x float>, ptr %vp1, align 64, !tbaa !13
  %168 = load <16 x float>, ptr %vt1, align 64, !tbaa !13
  %169 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call96 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %167, <16 x float> noundef %168, <16 x float> noundef %169)
  store <16 x float> %call96, ptr %vp1, align 64, !tbaa !13
  %170 = load <16 x float>, ptr %vp2, align 64, !tbaa !13
  %171 = load <16 x float>, ptr %vt2, align 64, !tbaa !13
  %172 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call97 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %170, <16 x float> noundef %171, <16 x float> noundef %172)
  store <16 x float> %call97, ptr %vp2, align 64, !tbaa !13
  %173 = load <16 x float>, ptr %vp3, align 64, !tbaa !13
  %174 = load <16 x float>, ptr %vt3, align 64, !tbaa !13
  %175 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call98 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %173, <16 x float> noundef %174, <16 x float> noundef %175)
  store <16 x float> %call98, ptr %vp3, align 64, !tbaa !13
  %176 = load <16 x float>, ptr %vp4, align 64, !tbaa !13
  %177 = load <16 x float>, ptr %vt4, align 64, !tbaa !13
  %178 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call99 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %176, <16 x float> noundef %177, <16 x float> noundef %178)
  store <16 x float> %call99, ptr %vp4, align 64, !tbaa !13
  %179 = load <16 x float>, ptr %vp5, align 64, !tbaa !13
  %180 = load <16 x float>, ptr %vt5, align 64, !tbaa !13
  %181 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call100 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %179, <16 x float> noundef %180, <16 x float> noundef %181)
  store <16 x float> %call100, ptr %vp5, align 64, !tbaa !13
  %182 = load <16 x float>, ptr %vp6, align 64, !tbaa !13
  %183 = load <16 x float>, ptr %vt6, align 64, !tbaa !13
  %184 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call101 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %182, <16 x float> noundef %183, <16 x float> noundef %184)
  store <16 x float> %call101, ptr %vp6, align 64, !tbaa !13
  %185 = load <16 x float>, ptr %vp7, align 64, !tbaa !13
  %186 = load <16 x float>, ptr %vt7, align 64, !tbaa !13
  %187 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call102 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %185, <16 x float> noundef %186, <16 x float> noundef %187)
  store <16 x float> %call102, ptr %vp7, align 64, !tbaa !13
  %188 = load <16 x float>, ptr %vp8, align 64, !tbaa !13
  %189 = load <16 x float>, ptr %vt8, align 64, !tbaa !13
  %190 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call103 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %188, <16 x float> noundef %189, <16 x float> noundef %190)
  store <16 x float> %call103, ptr %vp8, align 64, !tbaa !13
  %191 = load <16 x float>, ptr %vp9, align 64, !tbaa !13
  %192 = load <16 x float>, ptr %vt9, align 64, !tbaa !13
  %193 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call104 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %191, <16 x float> noundef %192, <16 x float> noundef %193)
  store <16 x float> %call104, ptr %vp9, align 64, !tbaa !13
  %194 = load <16 x float>, ptr %vp10, align 64, !tbaa !13
  %195 = load <16 x float>, ptr %vt10, align 64, !tbaa !13
  %196 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call105 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %194, <16 x float> noundef %195, <16 x float> noundef %196)
  store <16 x float> %call105, ptr %vp10, align 64, !tbaa !13
  %197 = load <16 x float>, ptr %vp11, align 64, !tbaa !13
  %198 = load <16 x float>, ptr %vt11, align 64, !tbaa !13
  %199 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call106 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %197, <16 x float> noundef %198, <16 x float> noundef %199)
  store <16 x float> %call106, ptr %vp11, align 64, !tbaa !13
  %200 = load <16 x float>, ptr %vp0, align 64, !tbaa !13
  %201 = load <16 x float>, ptr %vt0, align 64, !tbaa !13
  %202 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call107 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %200, <16 x float> noundef %201, <16 x float> noundef %202)
  store <16 x float> %call107, ptr %vp0, align 64, !tbaa !13
  %203 = load <16 x float>, ptr %vp1, align 64, !tbaa !13
  %204 = load <16 x float>, ptr %vt1, align 64, !tbaa !13
  %205 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call108 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %203, <16 x float> noundef %204, <16 x float> noundef %205)
  store <16 x float> %call108, ptr %vp1, align 64, !tbaa !13
  %206 = load <16 x float>, ptr %vp2, align 64, !tbaa !13
  %207 = load <16 x float>, ptr %vt2, align 64, !tbaa !13
  %208 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call109 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %206, <16 x float> noundef %207, <16 x float> noundef %208)
  store <16 x float> %call109, ptr %vp2, align 64, !tbaa !13
  %209 = load <16 x float>, ptr %vp3, align 64, !tbaa !13
  %210 = load <16 x float>, ptr %vt3, align 64, !tbaa !13
  %211 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call110 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %209, <16 x float> noundef %210, <16 x float> noundef %211)
  store <16 x float> %call110, ptr %vp3, align 64, !tbaa !13
  %212 = load <16 x float>, ptr %vp4, align 64, !tbaa !13
  %213 = load <16 x float>, ptr %vt4, align 64, !tbaa !13
  %214 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call111 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %212, <16 x float> noundef %213, <16 x float> noundef %214)
  store <16 x float> %call111, ptr %vp4, align 64, !tbaa !13
  %215 = load <16 x float>, ptr %vp5, align 64, !tbaa !13
  %216 = load <16 x float>, ptr %vt5, align 64, !tbaa !13
  %217 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call112 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %215, <16 x float> noundef %216, <16 x float> noundef %217)
  store <16 x float> %call112, ptr %vp5, align 64, !tbaa !13
  %218 = load <16 x float>, ptr %vp6, align 64, !tbaa !13
  %219 = load <16 x float>, ptr %vt6, align 64, !tbaa !13
  %220 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call113 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %218, <16 x float> noundef %219, <16 x float> noundef %220)
  store <16 x float> %call113, ptr %vp6, align 64, !tbaa !13
  %221 = load <16 x float>, ptr %vp7, align 64, !tbaa !13
  %222 = load <16 x float>, ptr %vt7, align 64, !tbaa !13
  %223 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call114 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %221, <16 x float> noundef %222, <16 x float> noundef %223)
  store <16 x float> %call114, ptr %vp7, align 64, !tbaa !13
  %224 = load <16 x float>, ptr %vp8, align 64, !tbaa !13
  %225 = load <16 x float>, ptr %vt8, align 64, !tbaa !13
  %226 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call115 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %224, <16 x float> noundef %225, <16 x float> noundef %226)
  store <16 x float> %call115, ptr %vp8, align 64, !tbaa !13
  %227 = load <16 x float>, ptr %vp9, align 64, !tbaa !13
  %228 = load <16 x float>, ptr %vt9, align 64, !tbaa !13
  %229 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call116 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %227, <16 x float> noundef %228, <16 x float> noundef %229)
  store <16 x float> %call116, ptr %vp9, align 64, !tbaa !13
  %230 = load <16 x float>, ptr %vp10, align 64, !tbaa !13
  %231 = load <16 x float>, ptr %vt10, align 64, !tbaa !13
  %232 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call117 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %230, <16 x float> noundef %231, <16 x float> noundef %232)
  store <16 x float> %call117, ptr %vp10, align 64, !tbaa !13
  %233 = load <16 x float>, ptr %vp11, align 64, !tbaa !13
  %234 = load <16 x float>, ptr %vt11, align 64, !tbaa !13
  %235 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call118 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %233, <16 x float> noundef %234, <16 x float> noundef %235)
  store <16 x float> %call118, ptr %vp11, align 64, !tbaa !13
  %236 = load <16 x float>, ptr %vp0, align 64, !tbaa !13
  %237 = load <16 x float>, ptr %vt0, align 64, !tbaa !13
  %238 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call119 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %236, <16 x float> noundef %237, <16 x float> noundef %238)
  store <16 x float> %call119, ptr %vp0, align 64, !tbaa !13
  %239 = load <16 x float>, ptr %vp1, align 64, !tbaa !13
  %240 = load <16 x float>, ptr %vt1, align 64, !tbaa !13
  %241 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call120 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %239, <16 x float> noundef %240, <16 x float> noundef %241)
  store <16 x float> %call120, ptr %vp1, align 64, !tbaa !13
  %242 = load <16 x float>, ptr %vp2, align 64, !tbaa !13
  %243 = load <16 x float>, ptr %vt2, align 64, !tbaa !13
  %244 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call121 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %242, <16 x float> noundef %243, <16 x float> noundef %244)
  store <16 x float> %call121, ptr %vp2, align 64, !tbaa !13
  %245 = load <16 x float>, ptr %vp3, align 64, !tbaa !13
  %246 = load <16 x float>, ptr %vt3, align 64, !tbaa !13
  %247 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call122 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %245, <16 x float> noundef %246, <16 x float> noundef %247)
  store <16 x float> %call122, ptr %vp3, align 64, !tbaa !13
  %248 = load <16 x float>, ptr %vp4, align 64, !tbaa !13
  %249 = load <16 x float>, ptr %vt4, align 64, !tbaa !13
  %250 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call123 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %248, <16 x float> noundef %249, <16 x float> noundef %250)
  store <16 x float> %call123, ptr %vp4, align 64, !tbaa !13
  %251 = load <16 x float>, ptr %vp5, align 64, !tbaa !13
  %252 = load <16 x float>, ptr %vt5, align 64, !tbaa !13
  %253 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call124 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %251, <16 x float> noundef %252, <16 x float> noundef %253)
  store <16 x float> %call124, ptr %vp5, align 64, !tbaa !13
  %254 = load <16 x float>, ptr %vp6, align 64, !tbaa !13
  %255 = load <16 x float>, ptr %vt6, align 64, !tbaa !13
  %256 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call125 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %254, <16 x float> noundef %255, <16 x float> noundef %256)
  store <16 x float> %call125, ptr %vp6, align 64, !tbaa !13
  %257 = load <16 x float>, ptr %vp7, align 64, !tbaa !13
  %258 = load <16 x float>, ptr %vt7, align 64, !tbaa !13
  %259 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call126 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %257, <16 x float> noundef %258, <16 x float> noundef %259)
  store <16 x float> %call126, ptr %vp7, align 64, !tbaa !13
  %260 = load <16 x float>, ptr %vp8, align 64, !tbaa !13
  %261 = load <16 x float>, ptr %vt8, align 64, !tbaa !13
  %262 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call127 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %260, <16 x float> noundef %261, <16 x float> noundef %262)
  store <16 x float> %call127, ptr %vp8, align 64, !tbaa !13
  %263 = load <16 x float>, ptr %vp9, align 64, !tbaa !13
  %264 = load <16 x float>, ptr %vt9, align 64, !tbaa !13
  %265 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call128 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %263, <16 x float> noundef %264, <16 x float> noundef %265)
  store <16 x float> %call128, ptr %vp9, align 64, !tbaa !13
  %266 = load <16 x float>, ptr %vp10, align 64, !tbaa !13
  %267 = load <16 x float>, ptr %vt10, align 64, !tbaa !13
  %268 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call129 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %266, <16 x float> noundef %267, <16 x float> noundef %268)
  store <16 x float> %call129, ptr %vp10, align 64, !tbaa !13
  %269 = load <16 x float>, ptr %vp11, align 64, !tbaa !13
  %270 = load <16 x float>, ptr %vt11, align 64, !tbaa !13
  %271 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call130 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %269, <16 x float> noundef %270, <16 x float> noundef %271)
  store <16 x float> %call130, ptr %vp11, align 64, !tbaa !13
  %272 = load <16 x float>, ptr %vp0, align 64, !tbaa !13
  %273 = load <16 x float>, ptr %vt0, align 64, !tbaa !13
  %274 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call131 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %272, <16 x float> noundef %273, <16 x float> noundef %274)
  store <16 x float> %call131, ptr %vp0, align 64, !tbaa !13
  %275 = load <16 x float>, ptr %vp1, align 64, !tbaa !13
  %276 = load <16 x float>, ptr %vt1, align 64, !tbaa !13
  %277 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call132 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %275, <16 x float> noundef %276, <16 x float> noundef %277)
  store <16 x float> %call132, ptr %vp1, align 64, !tbaa !13
  %278 = load <16 x float>, ptr %vp2, align 64, !tbaa !13
  %279 = load <16 x float>, ptr %vt2, align 64, !tbaa !13
  %280 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call133 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %278, <16 x float> noundef %279, <16 x float> noundef %280)
  store <16 x float> %call133, ptr %vp2, align 64, !tbaa !13
  %281 = load <16 x float>, ptr %vp3, align 64, !tbaa !13
  %282 = load <16 x float>, ptr %vt3, align 64, !tbaa !13
  %283 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call134 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %281, <16 x float> noundef %282, <16 x float> noundef %283)
  store <16 x float> %call134, ptr %vp3, align 64, !tbaa !13
  %284 = load <16 x float>, ptr %vp4, align 64, !tbaa !13
  %285 = load <16 x float>, ptr %vt4, align 64, !tbaa !13
  %286 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call135 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %284, <16 x float> noundef %285, <16 x float> noundef %286)
  store <16 x float> %call135, ptr %vp4, align 64, !tbaa !13
  %287 = load <16 x float>, ptr %vp5, align 64, !tbaa !13
  %288 = load <16 x float>, ptr %vt5, align 64, !tbaa !13
  %289 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call136 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %287, <16 x float> noundef %288, <16 x float> noundef %289)
  store <16 x float> %call136, ptr %vp5, align 64, !tbaa !13
  %290 = load <16 x float>, ptr %vp6, align 64, !tbaa !13
  %291 = load <16 x float>, ptr %vt6, align 64, !tbaa !13
  %292 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call137 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %290, <16 x float> noundef %291, <16 x float> noundef %292)
  store <16 x float> %call137, ptr %vp6, align 64, !tbaa !13
  %293 = load <16 x float>, ptr %vp7, align 64, !tbaa !13
  %294 = load <16 x float>, ptr %vt7, align 64, !tbaa !13
  %295 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call138 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %293, <16 x float> noundef %294, <16 x float> noundef %295)
  store <16 x float> %call138, ptr %vp7, align 64, !tbaa !13
  %296 = load <16 x float>, ptr %vp8, align 64, !tbaa !13
  %297 = load <16 x float>, ptr %vt8, align 64, !tbaa !13
  %298 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call139 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %296, <16 x float> noundef %297, <16 x float> noundef %298)
  store <16 x float> %call139, ptr %vp8, align 64, !tbaa !13
  %299 = load <16 x float>, ptr %vp9, align 64, !tbaa !13
  %300 = load <16 x float>, ptr %vt9, align 64, !tbaa !13
  %301 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call140 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %299, <16 x float> noundef %300, <16 x float> noundef %301)
  store <16 x float> %call140, ptr %vp9, align 64, !tbaa !13
  %302 = load <16 x float>, ptr %vp10, align 64, !tbaa !13
  %303 = load <16 x float>, ptr %vt10, align 64, !tbaa !13
  %304 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call141 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %302, <16 x float> noundef %303, <16 x float> noundef %304)
  store <16 x float> %call141, ptr %vp10, align 64, !tbaa !13
  %305 = load <16 x float>, ptr %vp11, align 64, !tbaa !13
  %306 = load <16 x float>, ptr %vt11, align 64, !tbaa !13
  %307 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call142 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %305, <16 x float> noundef %306, <16 x float> noundef %307)
  store <16 x float> %call142, ptr %vp11, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf0) #8
  %308 = load <16 x float>, ptr %vp0, align 64, !tbaa !13
  %309 = load <16 x float>, ptr %vn0, align 64, !tbaa !13
  %call143 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %308, <16 x float> noundef %309)
  store <16 x float> %call143, ptr %vf0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf1) #8
  %310 = load <16 x float>, ptr %vp1, align 64, !tbaa !13
  %311 = load <16 x float>, ptr %vn1, align 64, !tbaa !13
  %call144 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %310, <16 x float> noundef %311)
  store <16 x float> %call144, ptr %vf1, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf2) #8
  %312 = load <16 x float>, ptr %vp2, align 64, !tbaa !13
  %313 = load <16 x float>, ptr %vn2, align 64, !tbaa !13
  %call145 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %312, <16 x float> noundef %313)
  store <16 x float> %call145, ptr %vf2, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf3) #8
  %314 = load <16 x float>, ptr %vp3, align 64, !tbaa !13
  %315 = load <16 x float>, ptr %vn3, align 64, !tbaa !13
  %call146 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %314, <16 x float> noundef %315)
  store <16 x float> %call146, ptr %vf3, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf4) #8
  %316 = load <16 x float>, ptr %vp4, align 64, !tbaa !13
  %317 = load <16 x float>, ptr %vn4, align 64, !tbaa !13
  %call147 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %316, <16 x float> noundef %317)
  store <16 x float> %call147, ptr %vf4, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf5) #8
  %318 = load <16 x float>, ptr %vp5, align 64, !tbaa !13
  %319 = load <16 x float>, ptr %vn5, align 64, !tbaa !13
  %call148 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %318, <16 x float> noundef %319)
  store <16 x float> %call148, ptr %vf5, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf6) #8
  %320 = load <16 x float>, ptr %vp6, align 64, !tbaa !13
  %321 = load <16 x float>, ptr %vn6, align 64, !tbaa !13
  %call149 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %320, <16 x float> noundef %321)
  store <16 x float> %call149, ptr %vf6, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf7) #8
  %322 = load <16 x float>, ptr %vp7, align 64, !tbaa !13
  %323 = load <16 x float>, ptr %vn7, align 64, !tbaa !13
  %call150 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %322, <16 x float> noundef %323)
  store <16 x float> %call150, ptr %vf7, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf8) #8
  %324 = load <16 x float>, ptr %vp8, align 64, !tbaa !13
  %325 = load <16 x float>, ptr %vn8, align 64, !tbaa !13
  %call151 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %324, <16 x float> noundef %325)
  store <16 x float> %call151, ptr %vf8, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf9) #8
  %326 = load <16 x float>, ptr %vp9, align 64, !tbaa !13
  %327 = load <16 x float>, ptr %vn9, align 64, !tbaa !13
  %call152 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %326, <16 x float> noundef %327)
  store <16 x float> %call152, ptr %vf9, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf10) #8
  %328 = load <16 x float>, ptr %vp10, align 64, !tbaa !13
  %329 = load <16 x float>, ptr %vn10, align 64, !tbaa !13
  %call153 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %328, <16 x float> noundef %329)
  store <16 x float> %call153, ptr %vf10, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf11) #8
  %330 = load <16 x float>, ptr %vp11, align 64, !tbaa !13
  %331 = load <16 x float>, ptr %vn11, align 64, !tbaa !13
  %call154 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %330, <16 x float> noundef %331)
  store <16 x float> %call154, ptr %vf11, align 64, !tbaa !13
  %332 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %333 = load <16 x float>, ptr %vf0, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %332, <16 x float> noundef %333)
  %334 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr155 = getelementptr inbounds float, ptr %334, i64 16
  %335 = load <16 x float>, ptr %vf1, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr155, <16 x float> noundef %335)
  %336 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr156 = getelementptr inbounds float, ptr %336, i64 32
  %337 = load <16 x float>, ptr %vf2, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr156, <16 x float> noundef %337)
  %338 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr157 = getelementptr inbounds float, ptr %338, i64 48
  %339 = load <16 x float>, ptr %vf3, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr157, <16 x float> noundef %339)
  %340 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr158 = getelementptr inbounds float, ptr %340, i64 64
  %341 = load <16 x float>, ptr %vf4, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr158, <16 x float> noundef %341)
  %342 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr159 = getelementptr inbounds float, ptr %342, i64 80
  %343 = load <16 x float>, ptr %vf5, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr159, <16 x float> noundef %343)
  %344 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr160 = getelementptr inbounds float, ptr %344, i64 96
  %345 = load <16 x float>, ptr %vf6, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr160, <16 x float> noundef %345)
  %346 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr161 = getelementptr inbounds float, ptr %346, i64 112
  %347 = load <16 x float>, ptr %vf7, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr161, <16 x float> noundef %347)
  %348 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr162 = getelementptr inbounds float, ptr %348, i64 128
  %349 = load <16 x float>, ptr %vf8, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr162, <16 x float> noundef %349)
  %350 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr163 = getelementptr inbounds float, ptr %350, i64 144
  %351 = load <16 x float>, ptr %vf9, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr163, <16 x float> noundef %351)
  %352 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr164 = getelementptr inbounds float, ptr %352, i64 160
  %353 = load <16 x float>, ptr %vf10, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr164, <16 x float> noundef %353)
  %354 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr165 = getelementptr inbounds float, ptr %354, i64 176
  %355 = load <16 x float>, ptr %vf11, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %add.ptr165, <16 x float> noundef %355)
  %356 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr166 = getelementptr inbounds float, ptr %356, i64 192
  store ptr %add.ptr166, ptr %output.addr, align 8, !tbaa !9
  %357 = load <16 x float>, ptr %vacc0, align 64, !tbaa !13
  %358 = load <16 x float>, ptr %vf0, align 64, !tbaa !13
  %call167 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %357, <16 x float> noundef %358)
  store <16 x float> %call167, ptr %vacc0, align 64, !tbaa !13
  %359 = load <16 x float>, ptr %vacc1, align 64, !tbaa !13
  %360 = load <16 x float>, ptr %vf1, align 64, !tbaa !13
  %call168 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %359, <16 x float> noundef %360)
  store <16 x float> %call168, ptr %vacc1, align 64, !tbaa !13
  %361 = load <16 x float>, ptr %vacc2, align 64, !tbaa !13
  %362 = load <16 x float>, ptr %vf2, align 64, !tbaa !13
  %call169 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %361, <16 x float> noundef %362)
  store <16 x float> %call169, ptr %vacc2, align 64, !tbaa !13
  %363 = load <16 x float>, ptr %vacc0, align 64, !tbaa !13
  %364 = load <16 x float>, ptr %vf3, align 64, !tbaa !13
  %call170 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %363, <16 x float> noundef %364)
  store <16 x float> %call170, ptr %vacc0, align 64, !tbaa !13
  %365 = load <16 x float>, ptr %vacc1, align 64, !tbaa !13
  %366 = load <16 x float>, ptr %vf4, align 64, !tbaa !13
  %call171 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %365, <16 x float> noundef %366)
  store <16 x float> %call171, ptr %vacc1, align 64, !tbaa !13
  %367 = load <16 x float>, ptr %vacc2, align 64, !tbaa !13
  %368 = load <16 x float>, ptr %vf5, align 64, !tbaa !13
  %call172 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %367, <16 x float> noundef %368)
  store <16 x float> %call172, ptr %vacc2, align 64, !tbaa !13
  %369 = load <16 x float>, ptr %vacc0, align 64, !tbaa !13
  %370 = load <16 x float>, ptr %vf6, align 64, !tbaa !13
  %call173 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %369, <16 x float> noundef %370)
  store <16 x float> %call173, ptr %vacc0, align 64, !tbaa !13
  %371 = load <16 x float>, ptr %vacc1, align 64, !tbaa !13
  %372 = load <16 x float>, ptr %vf7, align 64, !tbaa !13
  %call174 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %371, <16 x float> noundef %372)
  store <16 x float> %call174, ptr %vacc1, align 64, !tbaa !13
  %373 = load <16 x float>, ptr %vacc2, align 64, !tbaa !13
  %374 = load <16 x float>, ptr %vf8, align 64, !tbaa !13
  %call175 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %373, <16 x float> noundef %374)
  store <16 x float> %call175, ptr %vacc2, align 64, !tbaa !13
  %375 = load <16 x float>, ptr %vacc0, align 64, !tbaa !13
  %376 = load <16 x float>, ptr %vf9, align 64, !tbaa !13
  %call176 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %375, <16 x float> noundef %376)
  store <16 x float> %call176, ptr %vacc0, align 64, !tbaa !13
  %377 = load <16 x float>, ptr %vacc1, align 64, !tbaa !13
  %378 = load <16 x float>, ptr %vf10, align 64, !tbaa !13
  %call177 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %377, <16 x float> noundef %378)
  store <16 x float> %call177, ptr %vacc1, align 64, !tbaa !13
  %379 = load <16 x float>, ptr %vacc2, align 64, !tbaa !13
  %380 = load <16 x float>, ptr %vf11, align 64, !tbaa !13
  %call178 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %379, <16 x float> noundef %380)
  store <16 x float> %call178, ptr %vacc2, align 64, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %381 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %sub = sub i64 %381, 768
  store i64 %sub, ptr %elements.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %382 = load <16 x float>, ptr %vacc0, align 64, !tbaa !13
  %383 = load <16 x float>, ptr %vacc1, align 64, !tbaa !13
  %call179 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %382, <16 x float> noundef %383)
  store <16 x float> %call179, ptr %vacc0, align 64, !tbaa !13
  %384 = load <16 x float>, ptr %vacc0, align 64, !tbaa !13
  %385 = load <16 x float>, ptr %vacc2, align 64, !tbaa !13
  %call180 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %384, <16 x float> noundef %385)
  store <16 x float> %call180, ptr %vacc0, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc) #8
  %386 = load <16 x float>, ptr %vacc0, align 64, !tbaa !13
  store <16 x float> %386, ptr %vacc, align 64, !tbaa !13
  br label %for.cond181

for.cond181:                                      ; preds = %for.inc198, %for.end
  %387 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %cmp182 = icmp uge i64 %387, 64
  br i1 %cmp182, label %for.body183, label %for.end200

for.body183:                                      ; preds = %for.cond181
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi) #8
  %388 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call184 = call <16 x float> @_mm512_loadu_ps(ptr noundef %388)
  store <16 x float> %call184, ptr %vi, align 64, !tbaa !13
  %389 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr185 = getelementptr inbounds float, ptr %389, i64 16
  store ptr %add.ptr185, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx) #8
  %390 = load <16 x float>, ptr %vi, align 64, !tbaa !13
  %391 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call186 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %390, <16 x float> noundef %391)
  store <16 x float> %call186, ptr %vx, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn) #8
  %392 = load <16 x float>, ptr %vx, align 64, !tbaa !13
  %393 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call187 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %392, <16 x float> noundef %393)
  %call188 = call <16 x float> @_mm512_undefined_ps()
  %394 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call187, i32 0, <16 x float> %call188, i16 -1, i32 4)
  store <16 x float> %394, ptr %vn, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt) #8
  %395 = load <16 x float>, ptr %vn, align 64, !tbaa !13
  %396 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %397 = load <16 x float>, ptr %vx, align 64, !tbaa !13
  %call189 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %395, <16 x float> noundef %396, <16 x float> noundef %397)
  store <16 x float> %call189, ptr %vt, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp) #8
  %398 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %399 = load <16 x float>, ptr %vt, align 64, !tbaa !13
  %400 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call190 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %398, <16 x float> noundef %399, <16 x float> noundef %400)
  store <16 x float> %call190, ptr %vp, align 64, !tbaa !13
  %401 = load <16 x float>, ptr %vp, align 64, !tbaa !13
  %402 = load <16 x float>, ptr %vt, align 64, !tbaa !13
  %403 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call191 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %401, <16 x float> noundef %402, <16 x float> noundef %403)
  store <16 x float> %call191, ptr %vp, align 64, !tbaa !13
  %404 = load <16 x float>, ptr %vp, align 64, !tbaa !13
  %405 = load <16 x float>, ptr %vt, align 64, !tbaa !13
  %406 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call192 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %404, <16 x float> noundef %405, <16 x float> noundef %406)
  store <16 x float> %call192, ptr %vp, align 64, !tbaa !13
  %407 = load <16 x float>, ptr %vp, align 64, !tbaa !13
  %408 = load <16 x float>, ptr %vt, align 64, !tbaa !13
  %409 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call193 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %407, <16 x float> noundef %408, <16 x float> noundef %409)
  store <16 x float> %call193, ptr %vp, align 64, !tbaa !13
  %410 = load <16 x float>, ptr %vp, align 64, !tbaa !13
  %411 = load <16 x float>, ptr %vt, align 64, !tbaa !13
  %412 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call194 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %410, <16 x float> noundef %411, <16 x float> noundef %412)
  store <16 x float> %call194, ptr %vp, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf) #8
  %413 = load <16 x float>, ptr %vp, align 64, !tbaa !13
  %414 = load <16 x float>, ptr %vn, align 64, !tbaa !13
  %call195 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %413, <16 x float> noundef %414)
  store <16 x float> %call195, ptr %vf, align 64, !tbaa !13
  %415 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %416 = load <16 x float>, ptr %vf, align 64, !tbaa !13
  call void @_mm512_storeu_ps(ptr noundef %415, <16 x float> noundef %416)
  %417 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr196 = getelementptr inbounds float, ptr %417, i64 16
  store ptr %add.ptr196, ptr %output.addr, align 8, !tbaa !9
  %418 = load <16 x float>, ptr %vacc, align 64, !tbaa !13
  %419 = load <16 x float>, ptr %vf, align 64, !tbaa !13
  %call197 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %418, <16 x float> noundef %419)
  store <16 x float> %call197, ptr %vacc, align 64, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi) #8
  br label %for.inc198

for.inc198:                                       ; preds = %for.body183
  %420 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %sub199 = sub i64 %420, 64
  store i64 %sub199, ptr %elements.addr, align 8, !tbaa !5
  br label %for.cond181, !llvm.loop !16

for.end200:                                       ; preds = %for.cond181
  %421 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %cmp201 = icmp ne i64 %421, 0
  br i1 %cmp201, label %if.then, label %if.end

if.then:                                          ; preds = %for.end200
  %422 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %shr = lshr i64 %422, 2
  store i64 %shr, ptr %elements.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %vmask) #8
  %423 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %sh_prom = trunc i64 %423 to i32
  %shl = shl i32 1, %sh_prom
  %sub202 = sub i32 %shl, 1
  %conv = trunc i32 %sub202 to i16
  %conv203 = zext i16 %conv to i32
  %call204 = call zeroext i16 @_cvtu32_mask16(i32 noundef %conv203)
  store i16 %call204, ptr %vmask, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi205) #8
  %424 = load i16, ptr %vmask, align 2, !tbaa !17
  %425 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call206 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %424, ptr noundef %425)
  store <16 x float> %call206, ptr %vi205, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx207) #8
  %426 = load <16 x float>, ptr %vi205, align 64, !tbaa !13
  %427 = load <16 x float>, ptr %vi_max, align 64, !tbaa !13
  %call208 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %426, <16 x float> noundef %427)
  store <16 x float> %call208, ptr %vx207, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn209) #8
  %428 = load <16 x float>, ptr %vx207, align 64, !tbaa !13
  %429 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !13
  %call210 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %428, <16 x float> noundef %429)
  %call211 = call <16 x float> @_mm512_undefined_ps()
  %430 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call210, i32 0, <16 x float> %call211, i16 -1, i32 4)
  store <16 x float> %430, ptr %vn209, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt212) #8
  %431 = load <16 x float>, ptr %vn209, align 64, !tbaa !13
  %432 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !13
  %433 = load <16 x float>, ptr %vx207, align 64, !tbaa !13
  %call213 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %431, <16 x float> noundef %432, <16 x float> noundef %433)
  store <16 x float> %call213, ptr %vt212, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp214) #8
  %434 = load <16 x float>, ptr %vc5, align 64, !tbaa !13
  %435 = load <16 x float>, ptr %vt212, align 64, !tbaa !13
  %436 = load <16 x float>, ptr %vc4, align 64, !tbaa !13
  %call215 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %434, <16 x float> noundef %435, <16 x float> noundef %436)
  store <16 x float> %call215, ptr %vp214, align 64, !tbaa !13
  %437 = load <16 x float>, ptr %vp214, align 64, !tbaa !13
  %438 = load <16 x float>, ptr %vt212, align 64, !tbaa !13
  %439 = load <16 x float>, ptr %vc3, align 64, !tbaa !13
  %call216 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %437, <16 x float> noundef %438, <16 x float> noundef %439)
  store <16 x float> %call216, ptr %vp214, align 64, !tbaa !13
  %440 = load <16 x float>, ptr %vp214, align 64, !tbaa !13
  %441 = load <16 x float>, ptr %vt212, align 64, !tbaa !13
  %442 = load <16 x float>, ptr %vc2, align 64, !tbaa !13
  %call217 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %440, <16 x float> noundef %441, <16 x float> noundef %442)
  store <16 x float> %call217, ptr %vp214, align 64, !tbaa !13
  %443 = load <16 x float>, ptr %vp214, align 64, !tbaa !13
  %444 = load <16 x float>, ptr %vt212, align 64, !tbaa !13
  %445 = load <16 x float>, ptr %vc1, align 64, !tbaa !13
  %call218 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %443, <16 x float> noundef %444, <16 x float> noundef %445)
  store <16 x float> %call218, ptr %vp214, align 64, !tbaa !13
  %446 = load <16 x float>, ptr %vp214, align 64, !tbaa !13
  %447 = load <16 x float>, ptr %vt212, align 64, !tbaa !13
  %448 = load <16 x float>, ptr %vc0, align 64, !tbaa !13
  %call219 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %446, <16 x float> noundef %447, <16 x float> noundef %448)
  store <16 x float> %call219, ptr %vp214, align 64, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf220) #8
  %449 = load <16 x float>, ptr %vp214, align 64, !tbaa !13
  %450 = load <16 x float>, ptr %vn209, align 64, !tbaa !13
  %call221 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %449, <16 x float> noundef %450)
  store <16 x float> %call221, ptr %vf220, align 64, !tbaa !13
  %451 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %452 = load i16, ptr %vmask, align 2, !tbaa !17
  %453 = load <16 x float>, ptr %vf220, align 64, !tbaa !13
  call void @_mm512_mask_storeu_ps(ptr noundef %451, i16 noundef zeroext %452, <16 x float> noundef %453)
  %454 = load <16 x float>, ptr %vacc, align 64, !tbaa !13
  %455 = load i16, ptr %vmask, align 2, !tbaa !17
  %456 = load <16 x float>, ptr %vacc, align 64, !tbaa !13
  %457 = load <16 x float>, ptr %vf220, align 64, !tbaa !13
  %call222 = call <16 x float> @_mm512_mask_add_ps(<16 x float> noundef %454, i16 noundef zeroext %455, <16 x float> noundef %456, <16 x float> noundef %457)
  store <16 x float> %call222, ptr %vacc, align 64, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf220) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp214) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt212) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn209) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx207) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi205) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %vmask) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end200
  %458 = load <16 x float>, ptr %vacc, align 64, !tbaa !13
  %call223 = call float @_mm512_reduce_add_ps(<16 x float> noundef %458)
  %459 = load ptr, ptr %sum.addr, align 8, !tbaa !9
  store float %call223, ptr %459, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vminus_ln2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vlog2e) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi_max) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <16 x float>, align 64
  store float %__w, ptr %__w.addr, align 4, !tbaa !11
  %0 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit = insertelement <16 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, ptr %__w.addr, align 4, !tbaa !11
  %vecinit15 = insertelement <16 x float> %vecinit14, float %15, i32 15
  store <16 x float> %vecinit15, ptr %.compoundliteral, align 64, !tbaa !13
  %16 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !13
  ret <16 x float> %16
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <16 x float>, align 64
  store <16 x float> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !13
  ret <16 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <16 x float>, ptr %__v, align 1, !tbaa !13
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_sub_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !13
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !13
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !13
  %sub = fsub <16 x float> %0, %1
  ret <16 x float> %sub
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_mul_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !13
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !13
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !13
  %mul = fmul <16 x float> %0, %1
  ret <16 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_undefined_ps() #2 {
entry:
  ret <16 x float> zeroinitializer
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %__A, <16 x float> noundef %__B, <16 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  %__C.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !13
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !13
  store <16 x float> %__C, ptr %__C.addr, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !13
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !13
  %2 = load <16 x float>, ptr %__C.addr, align 64, !tbaa !13
  %3 = call <16 x float> @llvm.fma.v16f32(<16 x float> %0, <16 x float> %1, <16 x float> %2)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_scalef_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !13
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !13
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !13
  %call = call <16 x float> @_mm512_undefined_ps()
  %2 = call <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float> %0, <16 x float> %1, <16 x float> %call, i16 -1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_storeu_ps(ptr noundef %__P, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !13
  %1 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <16 x float> %0, ptr %__v, align 1, !tbaa !13
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_add_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !13
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !13
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !13
  %add = fadd <16 x float> %0, %1
  ret <16 x float> %add
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @_cvtu32_mask16(i32 noundef %__A) #4 {
entry:
  %__A.addr = alloca i32, align 4
  store i32 %__A, ptr %__A.addr, align 4, !tbaa !19
  %0 = load i32, ptr %__A.addr, align 4, !tbaa !19
  %conv = trunc i32 %0 to i16
  %1 = bitcast i16 %conv to <16 x i1>
  %2 = bitcast <16 x i1> %1 to i16
  ret i16 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %__U, ptr noundef %__P) #2 {
entry:
  %__U.addr = alloca i16, align 2
  %__P.addr = alloca ptr, align 8
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !17
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %call = call <16 x float> @_mm512_setzero_ps()
  %1 = load i16, ptr %__U.addr, align 2, !tbaa !17
  %2 = bitcast i16 %1 to <16 x i1>
  %3 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr %0, i32 1, <16 x i1> %2, <16 x float> %call)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_mask_storeu_ps(ptr noundef %__P, i16 noundef zeroext %__U, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__U.addr = alloca i16, align 2
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !17
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !13
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !13
  %2 = load i16, ptr %__U.addr, align 2, !tbaa !17
  %3 = bitcast i16 %2 to <16 x i1>
  call void @llvm.masked.store.v16f32.p0(<16 x float> %1, ptr %0, i32 1, <16 x i1> %3)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_mask_add_ps(<16 x float> noundef %__W, i16 noundef zeroext %__U, <16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__W.addr = alloca <16 x float>, align 64
  %__U.addr = alloca i16, align 2
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__W, ptr %__W.addr, align 64, !tbaa !13
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !17
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !13
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !13
  %0 = load i16, ptr %__U.addr, align 2, !tbaa !17
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !13
  %2 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !13
  %call = call <16 x float> @_mm512_add_ps(<16 x float> noundef %1, <16 x float> noundef %2)
  %3 = load <16 x float>, ptr %__W.addr, align 64, !tbaa !13
  %4 = bitcast i16 %0 to <16 x i1>
  %5 = select <16 x i1> %4, <16 x float> %call, <16 x float> %3
  ret <16 x float> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal float @_mm512_reduce_add_ps(<16 x float> noundef %__W) #2 {
entry:
  %__W.addr = alloca <16 x float>, align 64
  store <16 x float> %__W, ptr %__W.addr, align 64, !tbaa !13
  %0 = load <16 x float>, ptr %__W.addr, align 64, !tbaa !13
  %1 = call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %0)
  ret float %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr nocapture, i32 immarg, <16 x i1>, <16 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr nocapture, i32 immarg, <16 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!12 = !{!"float", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !7, i64 0}

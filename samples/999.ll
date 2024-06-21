; ModuleID = 'samples/999.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-raddextexp/gen/avx2-p5-x72.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_ps = type { <8 x float> }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__mm_store_ss_struct = type { float }

@mask_table = internal constant [14 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_raddextexp_ukernel__avx2_p5_x72(i64 noundef %elements, ptr noundef %x, ptr noundef %sum) #0 {
entry:
  %elements.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %sum.addr = alloca ptr, align 8
  %vlog2e = alloca <8 x float>, align 32
  %vminus_ln2_hi = alloca <8 x float>, align 32
  %vminus_ln2_lo = alloca <8 x float>, align 32
  %vmin_exponent = alloca <8 x float>, align 32
  %vmagic_bias = alloca <8 x float>, align 32
  %vminus_inf = alloca <8 x float>, align 32
  %vc0 = alloca <8 x float>, align 32
  %vc1 = alloca <8 x float>, align 32
  %vc2 = alloca <8 x float>, align 32
  %vc3 = alloca <8 x float>, align 32
  %vc4 = alloca <8 x float>, align 32
  %vc5 = alloca <8 x float>, align 32
  %vaccv0 = alloca <8 x float>, align 32
  %vacce0 = alloca <8 x float>, align 32
  %vx0 = alloca <8 x float>, align 32
  %vx1 = alloca <8 x float>, align 32
  %vx2 = alloca <8 x float>, align 32
  %vx3 = alloca <8 x float>, align 32
  %vx4 = alloca <8 x float>, align 32
  %vx5 = alloca <8 x float>, align 32
  %vx6 = alloca <8 x float>, align 32
  %vx7 = alloca <8 x float>, align 32
  %vx8 = alloca <8 x float>, align 32
  %vn0 = alloca <8 x float>, align 32
  %vn1 = alloca <8 x float>, align 32
  %vn2 = alloca <8 x float>, align 32
  %vn3 = alloca <8 x float>, align 32
  %vn4 = alloca <8 x float>, align 32
  %vn5 = alloca <8 x float>, align 32
  %vn6 = alloca <8 x float>, align 32
  %vn7 = alloca <8 x float>, align 32
  %vn8 = alloca <8 x float>, align 32
  %vt0 = alloca <8 x float>, align 32
  %vt1 = alloca <8 x float>, align 32
  %vt2 = alloca <8 x float>, align 32
  %vt3 = alloca <8 x float>, align 32
  %vt4 = alloca <8 x float>, align 32
  %vt5 = alloca <8 x float>, align 32
  %vt6 = alloca <8 x float>, align 32
  %vt7 = alloca <8 x float>, align 32
  %vt8 = alloca <8 x float>, align 32
  %vp0 = alloca <8 x float>, align 32
  %vp1 = alloca <8 x float>, align 32
  %vp2 = alloca <8 x float>, align 32
  %vp3 = alloca <8 x float>, align 32
  %vp4 = alloca <8 x float>, align 32
  %vp5 = alloca <8 x float>, align 32
  %vp6 = alloca <8 x float>, align 32
  %vp7 = alloca <8 x float>, align 32
  %vp8 = alloca <8 x float>, align 32
  %vmax_e0 = alloca <8 x float>, align 32
  %vdelta_acce0 = alloca <8 x float>, align 32
  %vdelta_e0 = alloca <8 x float>, align 32
  %vdelta_e1 = alloca <8 x float>, align 32
  %vdelta_e2 = alloca <8 x float>, align 32
  %vdelta_e3 = alloca <8 x float>, align 32
  %vdelta_e4 = alloca <8 x float>, align 32
  %vdelta_e5 = alloca <8 x float>, align 32
  %vdelta_e6 = alloca <8 x float>, align 32
  %vdelta_e7 = alloca <8 x float>, align 32
  %vdelta_e8 = alloca <8 x float>, align 32
  %vaccs0 = alloca <8 x float>, align 32
  %vs0 = alloca <8 x float>, align 32
  %vs1 = alloca <8 x float>, align 32
  %vs2 = alloca <8 x float>, align 32
  %vs3 = alloca <8 x float>, align 32
  %vs4 = alloca <8 x float>, align 32
  %vs5 = alloca <8 x float>, align 32
  %vs6 = alloca <8 x float>, align 32
  %vs7 = alloca <8 x float>, align 32
  %vs8 = alloca <8 x float>, align 32
  %vaccv = alloca <8 x float>, align 32
  %vacce = alloca <8 x float>, align 32
  %vx = alloca <8 x float>, align 32
  %vn = alloca <8 x float>, align 32
  %vt = alloca <8 x float>, align 32
  %vp = alloca <8 x float>, align 32
  %vmax_e = alloca <8 x float>, align 32
  %vdelta_acce = alloca <8 x float>, align 32
  %vdelta_e = alloca <8 x float>, align 32
  %vaccs = alloca <8 x float>, align 32
  %vs = alloca <8 x float>, align 32
  %vmask = alloca <4 x i64>, align 32
  %vx216 = alloca <8 x float>, align 32
  %vn218 = alloca <8 x float>, align 32
  %vt220 = alloca <8 x float>, align 32
  %vp225 = alloca <8 x float>, align 32
  %vmax_e233 = alloca <8 x float>, align 32
  %vdelta_e235 = alloca <8 x float>, align 32
  %vdelta_acce238 = alloca <8 x float>, align 32
  %vs241 = alloca <8 x float>, align 32
  %vaccs246 = alloca <8 x float>, align 32
  %vmax_acce = alloca <8 x float>, align 32
  %vdelta_acce257 = alloca <8 x float>, align 32
  %vaccs260 = alloca <8 x float>, align 32
  %vaccv_sum = alloca <4 x float>, align 16
  store i64 %elements, ptr %elements.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %sum, ptr %sum.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vlog2e) #8
  %call = call <8 x float> @_mm256_set1_ps(float noundef 0x3FF7154760000000)
  store <8 x float> %call, ptr %vlog2e, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vminus_ln2_hi) #8
  %call1 = call <8 x float> @_mm256_set1_ps(float noundef 0xBFE62E4300000000)
  store <8 x float> %call1, ptr %vminus_ln2_hi, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vminus_ln2_lo) #8
  %call2 = call <8 x float> @_mm256_set1_ps(float noundef 0x3E205C6100000000)
  store <8 x float> %call2, ptr %vminus_ln2_lo, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin_exponent) #8
  %call3 = call <8 x float> @_mm256_set1_ps(float noundef -1.270000e+02)
  store <8 x float> %call3, ptr %vmin_exponent, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmagic_bias) #8
  %call4 = call <8 x float> @_mm256_set1_ps(float noundef 0x4168000FE0000000)
  store <8 x float> %call4, ptr %vmagic_bias, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vminus_inf) #8
  %call5 = call <8 x float> @_mm256_set1_ps(float noundef 0xFFF0000000000000)
  store <8 x float> %call5, ptr %vminus_inf, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc0) #8
  %call6 = call <8 x float> @_mm256_set1_ps(float noundef 1.000000e+00)
  store <8 x float> %call6, ptr %vc0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc1) #8
  %call7 = call <8 x float> @_mm256_set1_ps(float noundef 0x3FEFFFFF60000000)
  store <8 x float> %call7, ptr %vc1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc2) #8
  %call8 = call <8 x float> @_mm256_set1_ps(float noundef 0x3FDFFFDC60000000)
  store <8 x float> %call8, ptr %vc2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc3) #8
  %call9 = call <8 x float> @_mm256_set1_ps(float noundef 0x3FC555A800000000)
  store <8 x float> %call9, ptr %vc3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc4) #8
  %call10 = call <8 x float> @_mm256_set1_ps(float noundef 0x3FA573A1A0000000)
  store <8 x float> %call10, ptr %vc4, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc5) #8
  %call11 = call <8 x float> @_mm256_set1_ps(float noundef 0x3F80F9F9C0000000)
  store <8 x float> %call11, ptr %vc5, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccv0) #8
  %call12 = call <8 x float> @_mm256_setzero_ps()
  store <8 x float> %call12, ptr %vaccv0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacce0) #8
  %0 = load <8 x float>, ptr %vminus_inf, align 32, !tbaa !11
  store <8 x float> %0, ptr %vacce0, align 32, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %1, 288
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx0) #8
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call13 = call <8 x float> @_mm256_loadu_ps(ptr noundef %2)
  store <8 x float> %call13, ptr %vx0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx1) #8
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %3, i64 8
  %call14 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr)
  store <8 x float> %call14, ptr %vx1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx2) #8
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr15 = getelementptr inbounds float, ptr %4, i64 16
  %call16 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr15)
  store <8 x float> %call16, ptr %vx2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx3) #8
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr17 = getelementptr inbounds float, ptr %5, i64 24
  %call18 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr17)
  store <8 x float> %call18, ptr %vx3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx4) #8
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr19 = getelementptr inbounds float, ptr %6, i64 32
  %call20 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr19)
  store <8 x float> %call20, ptr %vx4, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx5) #8
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr21 = getelementptr inbounds float, ptr %7, i64 40
  %call22 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr21)
  store <8 x float> %call22, ptr %vx5, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx6) #8
  %8 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr23 = getelementptr inbounds float, ptr %8, i64 48
  %call24 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr23)
  store <8 x float> %call24, ptr %vx6, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx7) #8
  %9 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr25 = getelementptr inbounds float, ptr %9, i64 56
  %call26 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr25)
  store <8 x float> %call26, ptr %vx7, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx8) #8
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr27 = getelementptr inbounds float, ptr %10, i64 64
  %call28 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr27)
  store <8 x float> %call28, ptr %vx8, align 32, !tbaa !11
  %11 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr29 = getelementptr inbounds float, ptr %11, i64 72
  store ptr %add.ptr29, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn0) #8
  %12 = load <8 x float>, ptr %vx0, align 32, !tbaa !11
  %13 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call30 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %12, <8 x float> noundef %13)
  %14 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call30, i32 8)
  store <8 x float> %14, ptr %vn0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn1) #8
  %15 = load <8 x float>, ptr %vx1, align 32, !tbaa !11
  %16 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call31 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %15, <8 x float> noundef %16)
  %17 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call31, i32 8)
  store <8 x float> %17, ptr %vn1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn2) #8
  %18 = load <8 x float>, ptr %vx2, align 32, !tbaa !11
  %19 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call32 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %18, <8 x float> noundef %19)
  %20 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call32, i32 8)
  store <8 x float> %20, ptr %vn2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn3) #8
  %21 = load <8 x float>, ptr %vx3, align 32, !tbaa !11
  %22 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call33 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %21, <8 x float> noundef %22)
  %23 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call33, i32 8)
  store <8 x float> %23, ptr %vn3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn4) #8
  %24 = load <8 x float>, ptr %vx4, align 32, !tbaa !11
  %25 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call34 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %24, <8 x float> noundef %25)
  %26 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call34, i32 8)
  store <8 x float> %26, ptr %vn4, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn5) #8
  %27 = load <8 x float>, ptr %vx5, align 32, !tbaa !11
  %28 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call35 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %27, <8 x float> noundef %28)
  %29 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call35, i32 8)
  store <8 x float> %29, ptr %vn5, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn6) #8
  %30 = load <8 x float>, ptr %vx6, align 32, !tbaa !11
  %31 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call36 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %30, <8 x float> noundef %31)
  %32 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call36, i32 8)
  store <8 x float> %32, ptr %vn6, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn7) #8
  %33 = load <8 x float>, ptr %vx7, align 32, !tbaa !11
  %34 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call37 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %33, <8 x float> noundef %34)
  %35 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call37, i32 8)
  store <8 x float> %35, ptr %vn7, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn8) #8
  %36 = load <8 x float>, ptr %vx8, align 32, !tbaa !11
  %37 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call38 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %36, <8 x float> noundef %37)
  %38 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call38, i32 8)
  store <8 x float> %38, ptr %vn8, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt0) #8
  %39 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %40 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %41 = load <8 x float>, ptr %vx0, align 32, !tbaa !11
  %call39 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %39, <8 x float> noundef %40, <8 x float> noundef %41)
  store <8 x float> %call39, ptr %vt0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt1) #8
  %42 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %43 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %44 = load <8 x float>, ptr %vx1, align 32, !tbaa !11
  %call40 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %42, <8 x float> noundef %43, <8 x float> noundef %44)
  store <8 x float> %call40, ptr %vt1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt2) #8
  %45 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %46 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %47 = load <8 x float>, ptr %vx2, align 32, !tbaa !11
  %call41 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %45, <8 x float> noundef %46, <8 x float> noundef %47)
  store <8 x float> %call41, ptr %vt2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt3) #8
  %48 = load <8 x float>, ptr %vn3, align 32, !tbaa !11
  %49 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %50 = load <8 x float>, ptr %vx3, align 32, !tbaa !11
  %call42 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %48, <8 x float> noundef %49, <8 x float> noundef %50)
  store <8 x float> %call42, ptr %vt3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt4) #8
  %51 = load <8 x float>, ptr %vn4, align 32, !tbaa !11
  %52 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %53 = load <8 x float>, ptr %vx4, align 32, !tbaa !11
  %call43 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %51, <8 x float> noundef %52, <8 x float> noundef %53)
  store <8 x float> %call43, ptr %vt4, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt5) #8
  %54 = load <8 x float>, ptr %vn5, align 32, !tbaa !11
  %55 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %56 = load <8 x float>, ptr %vx5, align 32, !tbaa !11
  %call44 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %54, <8 x float> noundef %55, <8 x float> noundef %56)
  store <8 x float> %call44, ptr %vt5, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt6) #8
  %57 = load <8 x float>, ptr %vn6, align 32, !tbaa !11
  %58 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %59 = load <8 x float>, ptr %vx6, align 32, !tbaa !11
  %call45 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %57, <8 x float> noundef %58, <8 x float> noundef %59)
  store <8 x float> %call45, ptr %vt6, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt7) #8
  %60 = load <8 x float>, ptr %vn7, align 32, !tbaa !11
  %61 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %62 = load <8 x float>, ptr %vx7, align 32, !tbaa !11
  %call46 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %60, <8 x float> noundef %61, <8 x float> noundef %62)
  store <8 x float> %call46, ptr %vt7, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt8) #8
  %63 = load <8 x float>, ptr %vn8, align 32, !tbaa !11
  %64 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %65 = load <8 x float>, ptr %vx8, align 32, !tbaa !11
  %call47 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %63, <8 x float> noundef %64, <8 x float> noundef %65)
  store <8 x float> %call47, ptr %vt8, align 32, !tbaa !11
  %66 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %67 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %68 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %call48 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %66, <8 x float> noundef %67, <8 x float> noundef %68)
  store <8 x float> %call48, ptr %vt0, align 32, !tbaa !11
  %69 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %70 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %71 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %call49 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %69, <8 x float> noundef %70, <8 x float> noundef %71)
  store <8 x float> %call49, ptr %vt1, align 32, !tbaa !11
  %72 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %73 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %74 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %call50 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %72, <8 x float> noundef %73, <8 x float> noundef %74)
  store <8 x float> %call50, ptr %vt2, align 32, !tbaa !11
  %75 = load <8 x float>, ptr %vn3, align 32, !tbaa !11
  %76 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %77 = load <8 x float>, ptr %vt3, align 32, !tbaa !11
  %call51 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %75, <8 x float> noundef %76, <8 x float> noundef %77)
  store <8 x float> %call51, ptr %vt3, align 32, !tbaa !11
  %78 = load <8 x float>, ptr %vn4, align 32, !tbaa !11
  %79 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %80 = load <8 x float>, ptr %vt4, align 32, !tbaa !11
  %call52 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %78, <8 x float> noundef %79, <8 x float> noundef %80)
  store <8 x float> %call52, ptr %vt4, align 32, !tbaa !11
  %81 = load <8 x float>, ptr %vn5, align 32, !tbaa !11
  %82 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %83 = load <8 x float>, ptr %vt5, align 32, !tbaa !11
  %call53 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %81, <8 x float> noundef %82, <8 x float> noundef %83)
  store <8 x float> %call53, ptr %vt5, align 32, !tbaa !11
  %84 = load <8 x float>, ptr %vn6, align 32, !tbaa !11
  %85 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %86 = load <8 x float>, ptr %vt6, align 32, !tbaa !11
  %call54 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %84, <8 x float> noundef %85, <8 x float> noundef %86)
  store <8 x float> %call54, ptr %vt6, align 32, !tbaa !11
  %87 = load <8 x float>, ptr %vn7, align 32, !tbaa !11
  %88 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %89 = load <8 x float>, ptr %vt7, align 32, !tbaa !11
  %call55 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %87, <8 x float> noundef %88, <8 x float> noundef %89)
  store <8 x float> %call55, ptr %vt7, align 32, !tbaa !11
  %90 = load <8 x float>, ptr %vn8, align 32, !tbaa !11
  %91 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %92 = load <8 x float>, ptr %vt8, align 32, !tbaa !11
  %call56 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %90, <8 x float> noundef %91, <8 x float> noundef %92)
  store <8 x float> %call56, ptr %vt8, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp0) #8
  %93 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %94 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %95 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call57 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %93, <8 x float> noundef %94, <8 x float> noundef %95)
  store <8 x float> %call57, ptr %vp0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp1) #8
  %96 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %97 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %98 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call58 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %96, <8 x float> noundef %97, <8 x float> noundef %98)
  store <8 x float> %call58, ptr %vp1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp2) #8
  %99 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %100 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %101 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call59 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %99, <8 x float> noundef %100, <8 x float> noundef %101)
  store <8 x float> %call59, ptr %vp2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp3) #8
  %102 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %103 = load <8 x float>, ptr %vt3, align 32, !tbaa !11
  %104 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call60 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %102, <8 x float> noundef %103, <8 x float> noundef %104)
  store <8 x float> %call60, ptr %vp3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp4) #8
  %105 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %106 = load <8 x float>, ptr %vt4, align 32, !tbaa !11
  %107 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call61 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %105, <8 x float> noundef %106, <8 x float> noundef %107)
  store <8 x float> %call61, ptr %vp4, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp5) #8
  %108 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %109 = load <8 x float>, ptr %vt5, align 32, !tbaa !11
  %110 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call62 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %108, <8 x float> noundef %109, <8 x float> noundef %110)
  store <8 x float> %call62, ptr %vp5, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp6) #8
  %111 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %112 = load <8 x float>, ptr %vt6, align 32, !tbaa !11
  %113 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call63 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %111, <8 x float> noundef %112, <8 x float> noundef %113)
  store <8 x float> %call63, ptr %vp6, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp7) #8
  %114 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %115 = load <8 x float>, ptr %vt7, align 32, !tbaa !11
  %116 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call64 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %114, <8 x float> noundef %115, <8 x float> noundef %116)
  store <8 x float> %call64, ptr %vp7, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp8) #8
  %117 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %118 = load <8 x float>, ptr %vt8, align 32, !tbaa !11
  %119 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call65 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %117, <8 x float> noundef %118, <8 x float> noundef %119)
  store <8 x float> %call65, ptr %vp8, align 32, !tbaa !11
  %120 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %121 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %122 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call66 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %120, <8 x float> noundef %121, <8 x float> noundef %122)
  store <8 x float> %call66, ptr %vp0, align 32, !tbaa !11
  %123 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %124 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %125 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call67 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %123, <8 x float> noundef %124, <8 x float> noundef %125)
  store <8 x float> %call67, ptr %vp1, align 32, !tbaa !11
  %126 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %127 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %128 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call68 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %126, <8 x float> noundef %127, <8 x float> noundef %128)
  store <8 x float> %call68, ptr %vp2, align 32, !tbaa !11
  %129 = load <8 x float>, ptr %vp3, align 32, !tbaa !11
  %130 = load <8 x float>, ptr %vt3, align 32, !tbaa !11
  %131 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call69 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %129, <8 x float> noundef %130, <8 x float> noundef %131)
  store <8 x float> %call69, ptr %vp3, align 32, !tbaa !11
  %132 = load <8 x float>, ptr %vp4, align 32, !tbaa !11
  %133 = load <8 x float>, ptr %vt4, align 32, !tbaa !11
  %134 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call70 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %132, <8 x float> noundef %133, <8 x float> noundef %134)
  store <8 x float> %call70, ptr %vp4, align 32, !tbaa !11
  %135 = load <8 x float>, ptr %vp5, align 32, !tbaa !11
  %136 = load <8 x float>, ptr %vt5, align 32, !tbaa !11
  %137 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call71 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %135, <8 x float> noundef %136, <8 x float> noundef %137)
  store <8 x float> %call71, ptr %vp5, align 32, !tbaa !11
  %138 = load <8 x float>, ptr %vp6, align 32, !tbaa !11
  %139 = load <8 x float>, ptr %vt6, align 32, !tbaa !11
  %140 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call72 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %138, <8 x float> noundef %139, <8 x float> noundef %140)
  store <8 x float> %call72, ptr %vp6, align 32, !tbaa !11
  %141 = load <8 x float>, ptr %vp7, align 32, !tbaa !11
  %142 = load <8 x float>, ptr %vt7, align 32, !tbaa !11
  %143 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call73 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %141, <8 x float> noundef %142, <8 x float> noundef %143)
  store <8 x float> %call73, ptr %vp7, align 32, !tbaa !11
  %144 = load <8 x float>, ptr %vp8, align 32, !tbaa !11
  %145 = load <8 x float>, ptr %vt8, align 32, !tbaa !11
  %146 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call74 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %144, <8 x float> noundef %145, <8 x float> noundef %146)
  store <8 x float> %call74, ptr %vp8, align 32, !tbaa !11
  %147 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %148 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %149 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call75 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %147, <8 x float> noundef %148, <8 x float> noundef %149)
  store <8 x float> %call75, ptr %vp0, align 32, !tbaa !11
  %150 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %151 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %152 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call76 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %150, <8 x float> noundef %151, <8 x float> noundef %152)
  store <8 x float> %call76, ptr %vp1, align 32, !tbaa !11
  %153 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %154 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %155 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call77 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %153, <8 x float> noundef %154, <8 x float> noundef %155)
  store <8 x float> %call77, ptr %vp2, align 32, !tbaa !11
  %156 = load <8 x float>, ptr %vp3, align 32, !tbaa !11
  %157 = load <8 x float>, ptr %vt3, align 32, !tbaa !11
  %158 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call78 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %156, <8 x float> noundef %157, <8 x float> noundef %158)
  store <8 x float> %call78, ptr %vp3, align 32, !tbaa !11
  %159 = load <8 x float>, ptr %vp4, align 32, !tbaa !11
  %160 = load <8 x float>, ptr %vt4, align 32, !tbaa !11
  %161 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call79 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %159, <8 x float> noundef %160, <8 x float> noundef %161)
  store <8 x float> %call79, ptr %vp4, align 32, !tbaa !11
  %162 = load <8 x float>, ptr %vp5, align 32, !tbaa !11
  %163 = load <8 x float>, ptr %vt5, align 32, !tbaa !11
  %164 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call80 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %162, <8 x float> noundef %163, <8 x float> noundef %164)
  store <8 x float> %call80, ptr %vp5, align 32, !tbaa !11
  %165 = load <8 x float>, ptr %vp6, align 32, !tbaa !11
  %166 = load <8 x float>, ptr %vt6, align 32, !tbaa !11
  %167 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call81 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %165, <8 x float> noundef %166, <8 x float> noundef %167)
  store <8 x float> %call81, ptr %vp6, align 32, !tbaa !11
  %168 = load <8 x float>, ptr %vp7, align 32, !tbaa !11
  %169 = load <8 x float>, ptr %vt7, align 32, !tbaa !11
  %170 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call82 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %168, <8 x float> noundef %169, <8 x float> noundef %170)
  store <8 x float> %call82, ptr %vp7, align 32, !tbaa !11
  %171 = load <8 x float>, ptr %vp8, align 32, !tbaa !11
  %172 = load <8 x float>, ptr %vt8, align 32, !tbaa !11
  %173 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call83 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %171, <8 x float> noundef %172, <8 x float> noundef %173)
  store <8 x float> %call83, ptr %vp8, align 32, !tbaa !11
  %174 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %175 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %176 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call84 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %174, <8 x float> noundef %175, <8 x float> noundef %176)
  store <8 x float> %call84, ptr %vp0, align 32, !tbaa !11
  %177 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %178 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %179 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call85 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %177, <8 x float> noundef %178, <8 x float> noundef %179)
  store <8 x float> %call85, ptr %vp1, align 32, !tbaa !11
  %180 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %181 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %182 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call86 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %180, <8 x float> noundef %181, <8 x float> noundef %182)
  store <8 x float> %call86, ptr %vp2, align 32, !tbaa !11
  %183 = load <8 x float>, ptr %vp3, align 32, !tbaa !11
  %184 = load <8 x float>, ptr %vt3, align 32, !tbaa !11
  %185 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call87 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %183, <8 x float> noundef %184, <8 x float> noundef %185)
  store <8 x float> %call87, ptr %vp3, align 32, !tbaa !11
  %186 = load <8 x float>, ptr %vp4, align 32, !tbaa !11
  %187 = load <8 x float>, ptr %vt4, align 32, !tbaa !11
  %188 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call88 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %186, <8 x float> noundef %187, <8 x float> noundef %188)
  store <8 x float> %call88, ptr %vp4, align 32, !tbaa !11
  %189 = load <8 x float>, ptr %vp5, align 32, !tbaa !11
  %190 = load <8 x float>, ptr %vt5, align 32, !tbaa !11
  %191 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call89 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %189, <8 x float> noundef %190, <8 x float> noundef %191)
  store <8 x float> %call89, ptr %vp5, align 32, !tbaa !11
  %192 = load <8 x float>, ptr %vp6, align 32, !tbaa !11
  %193 = load <8 x float>, ptr %vt6, align 32, !tbaa !11
  %194 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call90 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %192, <8 x float> noundef %193, <8 x float> noundef %194)
  store <8 x float> %call90, ptr %vp6, align 32, !tbaa !11
  %195 = load <8 x float>, ptr %vp7, align 32, !tbaa !11
  %196 = load <8 x float>, ptr %vt7, align 32, !tbaa !11
  %197 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call91 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %195, <8 x float> noundef %196, <8 x float> noundef %197)
  store <8 x float> %call91, ptr %vp7, align 32, !tbaa !11
  %198 = load <8 x float>, ptr %vp8, align 32, !tbaa !11
  %199 = load <8 x float>, ptr %vt8, align 32, !tbaa !11
  %200 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call92 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %198, <8 x float> noundef %199, <8 x float> noundef %200)
  store <8 x float> %call92, ptr %vp8, align 32, !tbaa !11
  %201 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %202 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %203 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call93 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %201, <8 x float> noundef %202, <8 x float> noundef %203)
  store <8 x float> %call93, ptr %vp0, align 32, !tbaa !11
  %204 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %205 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %206 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call94 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %204, <8 x float> noundef %205, <8 x float> noundef %206)
  store <8 x float> %call94, ptr %vp1, align 32, !tbaa !11
  %207 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %208 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %209 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call95 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %207, <8 x float> noundef %208, <8 x float> noundef %209)
  store <8 x float> %call95, ptr %vp2, align 32, !tbaa !11
  %210 = load <8 x float>, ptr %vp3, align 32, !tbaa !11
  %211 = load <8 x float>, ptr %vt3, align 32, !tbaa !11
  %212 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call96 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %210, <8 x float> noundef %211, <8 x float> noundef %212)
  store <8 x float> %call96, ptr %vp3, align 32, !tbaa !11
  %213 = load <8 x float>, ptr %vp4, align 32, !tbaa !11
  %214 = load <8 x float>, ptr %vt4, align 32, !tbaa !11
  %215 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call97 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %213, <8 x float> noundef %214, <8 x float> noundef %215)
  store <8 x float> %call97, ptr %vp4, align 32, !tbaa !11
  %216 = load <8 x float>, ptr %vp5, align 32, !tbaa !11
  %217 = load <8 x float>, ptr %vt5, align 32, !tbaa !11
  %218 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call98 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %216, <8 x float> noundef %217, <8 x float> noundef %218)
  store <8 x float> %call98, ptr %vp5, align 32, !tbaa !11
  %219 = load <8 x float>, ptr %vp6, align 32, !tbaa !11
  %220 = load <8 x float>, ptr %vt6, align 32, !tbaa !11
  %221 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call99 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %219, <8 x float> noundef %220, <8 x float> noundef %221)
  store <8 x float> %call99, ptr %vp6, align 32, !tbaa !11
  %222 = load <8 x float>, ptr %vp7, align 32, !tbaa !11
  %223 = load <8 x float>, ptr %vt7, align 32, !tbaa !11
  %224 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call100 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %222, <8 x float> noundef %223, <8 x float> noundef %224)
  store <8 x float> %call100, ptr %vp7, align 32, !tbaa !11
  %225 = load <8 x float>, ptr %vp8, align 32, !tbaa !11
  %226 = load <8 x float>, ptr %vt8, align 32, !tbaa !11
  %227 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call101 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %225, <8 x float> noundef %226, <8 x float> noundef %227)
  store <8 x float> %call101, ptr %vp8, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax_e0) #8
  %228 = load <8 x float>, ptr %vacce0, align 32, !tbaa !11
  %229 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %call102 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %228, <8 x float> noundef %229)
  store <8 x float> %call102, ptr %vmax_e0, align 32, !tbaa !11
  %230 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %231 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %call103 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %230, <8 x float> noundef %231)
  store <8 x float> %call103, ptr %vmax_e0, align 32, !tbaa !11
  %232 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %233 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %call104 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %232, <8 x float> noundef %233)
  store <8 x float> %call104, ptr %vmax_e0, align 32, !tbaa !11
  %234 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %235 = load <8 x float>, ptr %vn3, align 32, !tbaa !11
  %call105 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %234, <8 x float> noundef %235)
  store <8 x float> %call105, ptr %vmax_e0, align 32, !tbaa !11
  %236 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %237 = load <8 x float>, ptr %vn4, align 32, !tbaa !11
  %call106 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %236, <8 x float> noundef %237)
  store <8 x float> %call106, ptr %vmax_e0, align 32, !tbaa !11
  %238 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %239 = load <8 x float>, ptr %vn5, align 32, !tbaa !11
  %call107 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %238, <8 x float> noundef %239)
  store <8 x float> %call107, ptr %vmax_e0, align 32, !tbaa !11
  %240 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %241 = load <8 x float>, ptr %vn6, align 32, !tbaa !11
  %call108 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %240, <8 x float> noundef %241)
  store <8 x float> %call108, ptr %vmax_e0, align 32, !tbaa !11
  %242 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %243 = load <8 x float>, ptr %vn7, align 32, !tbaa !11
  %call109 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %242, <8 x float> noundef %243)
  store <8 x float> %call109, ptr %vmax_e0, align 32, !tbaa !11
  %244 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %245 = load <8 x float>, ptr %vn8, align 32, !tbaa !11
  %call110 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %244, <8 x float> noundef %245)
  store <8 x float> %call110, ptr %vmax_e0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_acce0) #8
  %246 = load <8 x float>, ptr %vacce0, align 32, !tbaa !11
  %247 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call111 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %246, <8 x float> noundef %247)
  %248 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call112 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call111, <8 x float> noundef %248)
  store <8 x float> %call112, ptr %vdelta_acce0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e0) #8
  %249 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %250 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call113 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %249, <8 x float> noundef %250)
  %251 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call114 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call113, <8 x float> noundef %251)
  store <8 x float> %call114, ptr %vdelta_e0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e1) #8
  %252 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %253 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call115 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %252, <8 x float> noundef %253)
  %254 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call116 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call115, <8 x float> noundef %254)
  store <8 x float> %call116, ptr %vdelta_e1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e2) #8
  %255 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %256 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call117 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %255, <8 x float> noundef %256)
  %257 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call118 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call117, <8 x float> noundef %257)
  store <8 x float> %call118, ptr %vdelta_e2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e3) #8
  %258 = load <8 x float>, ptr %vn3, align 32, !tbaa !11
  %259 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call119 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %258, <8 x float> noundef %259)
  %260 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call120 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call119, <8 x float> noundef %260)
  store <8 x float> %call120, ptr %vdelta_e3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e4) #8
  %261 = load <8 x float>, ptr %vn4, align 32, !tbaa !11
  %262 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call121 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %261, <8 x float> noundef %262)
  %263 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call122 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call121, <8 x float> noundef %263)
  store <8 x float> %call122, ptr %vdelta_e4, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e5) #8
  %264 = load <8 x float>, ptr %vn5, align 32, !tbaa !11
  %265 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call123 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %264, <8 x float> noundef %265)
  %266 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call124 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call123, <8 x float> noundef %266)
  store <8 x float> %call124, ptr %vdelta_e5, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e6) #8
  %267 = load <8 x float>, ptr %vn6, align 32, !tbaa !11
  %268 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call125 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %267, <8 x float> noundef %268)
  %269 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call126 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call125, <8 x float> noundef %269)
  store <8 x float> %call126, ptr %vdelta_e6, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e7) #8
  %270 = load <8 x float>, ptr %vn7, align 32, !tbaa !11
  %271 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call127 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %270, <8 x float> noundef %271)
  %272 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call128 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call127, <8 x float> noundef %272)
  store <8 x float> %call128, ptr %vdelta_e7, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e8) #8
  %273 = load <8 x float>, ptr %vn8, align 32, !tbaa !11
  %274 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  %call129 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %273, <8 x float> noundef %274)
  %275 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call130 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call129, <8 x float> noundef %275)
  store <8 x float> %call130, ptr %vdelta_e8, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccs0) #8
  %276 = load <8 x float>, ptr %vdelta_acce0, align 32, !tbaa !11
  %277 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call131 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %276, <8 x float> noundef %277)
  %call132 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call131)
  %call133 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call132, i32 noundef 23)
  %call134 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call133)
  store <8 x float> %call134, ptr %vaccs0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs0) #8
  %278 = load <8 x float>, ptr %vdelta_e0, align 32, !tbaa !11
  %279 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call135 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %278, <8 x float> noundef %279)
  %call136 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call135)
  %call137 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call136, i32 noundef 23)
  %call138 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call137)
  store <8 x float> %call138, ptr %vs0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs1) #8
  %280 = load <8 x float>, ptr %vdelta_e1, align 32, !tbaa !11
  %281 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call139 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %280, <8 x float> noundef %281)
  %call140 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call139)
  %call141 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call140, i32 noundef 23)
  %call142 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call141)
  store <8 x float> %call142, ptr %vs1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs2) #8
  %282 = load <8 x float>, ptr %vdelta_e2, align 32, !tbaa !11
  %283 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call143 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %282, <8 x float> noundef %283)
  %call144 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call143)
  %call145 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call144, i32 noundef 23)
  %call146 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call145)
  store <8 x float> %call146, ptr %vs2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs3) #8
  %284 = load <8 x float>, ptr %vdelta_e3, align 32, !tbaa !11
  %285 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call147 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %284, <8 x float> noundef %285)
  %call148 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call147)
  %call149 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call148, i32 noundef 23)
  %call150 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call149)
  store <8 x float> %call150, ptr %vs3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs4) #8
  %286 = load <8 x float>, ptr %vdelta_e4, align 32, !tbaa !11
  %287 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call151 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %286, <8 x float> noundef %287)
  %call152 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call151)
  %call153 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call152, i32 noundef 23)
  %call154 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call153)
  store <8 x float> %call154, ptr %vs4, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs5) #8
  %288 = load <8 x float>, ptr %vdelta_e5, align 32, !tbaa !11
  %289 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call155 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %288, <8 x float> noundef %289)
  %call156 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call155)
  %call157 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call156, i32 noundef 23)
  %call158 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call157)
  store <8 x float> %call158, ptr %vs5, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs6) #8
  %290 = load <8 x float>, ptr %vdelta_e6, align 32, !tbaa !11
  %291 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call159 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %290, <8 x float> noundef %291)
  %call160 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call159)
  %call161 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call160, i32 noundef 23)
  %call162 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call161)
  store <8 x float> %call162, ptr %vs6, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs7) #8
  %292 = load <8 x float>, ptr %vdelta_e7, align 32, !tbaa !11
  %293 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call163 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %292, <8 x float> noundef %293)
  %call164 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call163)
  %call165 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call164, i32 noundef 23)
  %call166 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call165)
  store <8 x float> %call166, ptr %vs7, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs8) #8
  %294 = load <8 x float>, ptr %vdelta_e8, align 32, !tbaa !11
  %295 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call167 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %294, <8 x float> noundef %295)
  %call168 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call167)
  %call169 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call168, i32 noundef 23)
  %call170 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call169)
  store <8 x float> %call170, ptr %vs8, align 32, !tbaa !11
  %296 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %297 = load <8 x float>, ptr %vaccs0, align 32, !tbaa !11
  %call171 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %296, <8 x float> noundef %297)
  store <8 x float> %call171, ptr %vaccv0, align 32, !tbaa !11
  %298 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %299 = load <8 x float>, ptr %vs0, align 32, !tbaa !11
  %300 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call172 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %298, <8 x float> noundef %299, <8 x float> noundef %300)
  store <8 x float> %call172, ptr %vaccv0, align 32, !tbaa !11
  %301 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %302 = load <8 x float>, ptr %vs1, align 32, !tbaa !11
  %303 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call173 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %301, <8 x float> noundef %302, <8 x float> noundef %303)
  store <8 x float> %call173, ptr %vaccv0, align 32, !tbaa !11
  %304 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %305 = load <8 x float>, ptr %vs2, align 32, !tbaa !11
  %306 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call174 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %304, <8 x float> noundef %305, <8 x float> noundef %306)
  store <8 x float> %call174, ptr %vaccv0, align 32, !tbaa !11
  %307 = load <8 x float>, ptr %vp3, align 32, !tbaa !11
  %308 = load <8 x float>, ptr %vs3, align 32, !tbaa !11
  %309 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call175 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %307, <8 x float> noundef %308, <8 x float> noundef %309)
  store <8 x float> %call175, ptr %vaccv0, align 32, !tbaa !11
  %310 = load <8 x float>, ptr %vp4, align 32, !tbaa !11
  %311 = load <8 x float>, ptr %vs4, align 32, !tbaa !11
  %312 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call176 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %310, <8 x float> noundef %311, <8 x float> noundef %312)
  store <8 x float> %call176, ptr %vaccv0, align 32, !tbaa !11
  %313 = load <8 x float>, ptr %vp5, align 32, !tbaa !11
  %314 = load <8 x float>, ptr %vs5, align 32, !tbaa !11
  %315 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call177 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %313, <8 x float> noundef %314, <8 x float> noundef %315)
  store <8 x float> %call177, ptr %vaccv0, align 32, !tbaa !11
  %316 = load <8 x float>, ptr %vp6, align 32, !tbaa !11
  %317 = load <8 x float>, ptr %vs6, align 32, !tbaa !11
  %318 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call178 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %316, <8 x float> noundef %317, <8 x float> noundef %318)
  store <8 x float> %call178, ptr %vaccv0, align 32, !tbaa !11
  %319 = load <8 x float>, ptr %vp7, align 32, !tbaa !11
  %320 = load <8 x float>, ptr %vs7, align 32, !tbaa !11
  %321 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call179 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %319, <8 x float> noundef %320, <8 x float> noundef %321)
  store <8 x float> %call179, ptr %vaccv0, align 32, !tbaa !11
  %322 = load <8 x float>, ptr %vp8, align 32, !tbaa !11
  %323 = load <8 x float>, ptr %vs8, align 32, !tbaa !11
  %324 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  %call180 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %322, <8 x float> noundef %323, <8 x float> noundef %324)
  store <8 x float> %call180, ptr %vaccv0, align 32, !tbaa !11
  %325 = load <8 x float>, ptr %vmax_e0, align 32, !tbaa !11
  store <8 x float> %325, ptr %vacce0, align 32, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccs0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_acce0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax_e0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %326 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %sub = sub i64 %326, 288
  store i64 %sub, ptr %elements.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccv) #8
  %327 = load <8 x float>, ptr %vaccv0, align 32, !tbaa !11
  store <8 x float> %327, ptr %vaccv, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacce) #8
  %328 = load <8 x float>, ptr %vacce0, align 32, !tbaa !11
  store <8 x float> %328, ptr %vacce, align 32, !tbaa !11
  br label %for.cond181

for.cond181:                                      ; preds = %for.inc209, %for.end
  %329 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %cmp182 = icmp uge i64 %329, 32
  br i1 %cmp182, label %for.body183, label %for.end211

for.body183:                                      ; preds = %for.cond181
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx) #8
  %330 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call184 = call <8 x float> @_mm256_loadu_ps(ptr noundef %330)
  store <8 x float> %call184, ptr %vx, align 32, !tbaa !11
  %331 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr185 = getelementptr inbounds float, ptr %331, i64 8
  store ptr %add.ptr185, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn) #8
  %332 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %333 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call186 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %332, <8 x float> noundef %333)
  %334 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call186, i32 8)
  store <8 x float> %334, ptr %vn, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt) #8
  %335 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %336 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %337 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %call187 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %335, <8 x float> noundef %336, <8 x float> noundef %337)
  store <8 x float> %call187, ptr %vt, align 32, !tbaa !11
  %338 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %339 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %340 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %call188 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %338, <8 x float> noundef %339, <8 x float> noundef %340)
  store <8 x float> %call188, ptr %vt, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp) #8
  %341 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %342 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %343 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call189 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %341, <8 x float> noundef %342, <8 x float> noundef %343)
  store <8 x float> %call189, ptr %vp, align 32, !tbaa !11
  %344 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %345 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %346 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call190 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %344, <8 x float> noundef %345, <8 x float> noundef %346)
  store <8 x float> %call190, ptr %vp, align 32, !tbaa !11
  %347 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %348 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %349 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call191 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %347, <8 x float> noundef %348, <8 x float> noundef %349)
  store <8 x float> %call191, ptr %vp, align 32, !tbaa !11
  %350 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %351 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %352 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call192 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %350, <8 x float> noundef %351, <8 x float> noundef %352)
  store <8 x float> %call192, ptr %vp, align 32, !tbaa !11
  %353 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %354 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %355 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call193 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %353, <8 x float> noundef %354, <8 x float> noundef %355)
  store <8 x float> %call193, ptr %vp, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax_e) #8
  %356 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %357 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %call194 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %356, <8 x float> noundef %357)
  store <8 x float> %call194, ptr %vmax_e, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_acce) #8
  %358 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %359 = load <8 x float>, ptr %vmax_e, align 32, !tbaa !11
  %call195 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %358, <8 x float> noundef %359)
  %360 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call196 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call195, <8 x float> noundef %360)
  store <8 x float> %call196, ptr %vdelta_acce, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e) #8
  %361 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %362 = load <8 x float>, ptr %vmax_e, align 32, !tbaa !11
  %call197 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %361, <8 x float> noundef %362)
  %363 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call198 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call197, <8 x float> noundef %363)
  store <8 x float> %call198, ptr %vdelta_e, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccs) #8
  %364 = load <8 x float>, ptr %vdelta_acce, align 32, !tbaa !11
  %365 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call199 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %364, <8 x float> noundef %365)
  %call200 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call199)
  %call201 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call200, i32 noundef 23)
  %call202 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call201)
  store <8 x float> %call202, ptr %vaccs, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs) #8
  %366 = load <8 x float>, ptr %vdelta_e, align 32, !tbaa !11
  %367 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call203 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %366, <8 x float> noundef %367)
  %call204 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call203)
  %call205 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call204, i32 noundef 23)
  %call206 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call205)
  store <8 x float> %call206, ptr %vs, align 32, !tbaa !11
  %368 = load <8 x float>, ptr %vaccv, align 32, !tbaa !11
  %369 = load <8 x float>, ptr %vaccs, align 32, !tbaa !11
  %call207 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %368, <8 x float> noundef %369)
  store <8 x float> %call207, ptr %vaccv, align 32, !tbaa !11
  %370 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %371 = load <8 x float>, ptr %vs, align 32, !tbaa !11
  %372 = load <8 x float>, ptr %vaccv, align 32, !tbaa !11
  %call208 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %370, <8 x float> noundef %371, <8 x float> noundef %372)
  store <8 x float> %call208, ptr %vaccv, align 32, !tbaa !11
  %373 = load <8 x float>, ptr %vmax_e, align 32, !tbaa !11
  store <8 x float> %373, ptr %vacce, align 32, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccs) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_acce) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax_e) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx) #8
  br label %for.inc209

for.inc209:                                       ; preds = %for.body183
  %374 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %sub210 = sub i64 %374, 32
  store i64 %sub210, ptr %elements.addr, align 8, !tbaa !5
  br label %for.cond181, !llvm.loop !14

for.end211:                                       ; preds = %for.cond181
  %375 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %cmp212 = icmp ne i64 %375, 0
  %lnot = xor i1 %cmp212, true
  %lnot213 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot213 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end211
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmask) #8
  %376 = load i64, ptr %elements.addr, align 8, !tbaa !5
  %sub214 = sub i64 ptrtoint (ptr getelementptr inbounds ([14 x i32], ptr @mask_table, i64 0, i64 7) to i64), %376
  %377 = inttoptr i64 %sub214 to ptr
  %call215 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %377)
  store <4 x i64> %call215, ptr %vmask, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx216) #8
  %378 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %379 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call217 = call <8 x float> @_mm256_maskload_ps(ptr noundef %378, <4 x i64> noundef %379)
  store <8 x float> %call217, ptr %vx216, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn218) #8
  %380 = load <8 x float>, ptr %vx216, align 32, !tbaa !11
  %381 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %call219 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %380, <8 x float> noundef %381)
  %382 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %call219, i32 8)
  store <8 x float> %382, ptr %vn218, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt220) #8
  %383 = load <8 x float>, ptr %vn218, align 32, !tbaa !11
  %384 = load <8 x float>, ptr %vminus_ln2_hi, align 32, !tbaa !11
  %385 = load <8 x float>, ptr %vx216, align 32, !tbaa !11
  %call221 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %383, <8 x float> noundef %384, <8 x float> noundef %385)
  store <8 x float> %call221, ptr %vt220, align 32, !tbaa !11
  %386 = load <8 x float>, ptr %vn218, align 32, !tbaa !11
  %387 = load <8 x float>, ptr %vminus_ln2_lo, align 32, !tbaa !11
  %388 = load <8 x float>, ptr %vt220, align 32, !tbaa !11
  %call222 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %386, <8 x float> noundef %387, <8 x float> noundef %388)
  store <8 x float> %call222, ptr %vt220, align 32, !tbaa !11
  %389 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %390 = load <8 x float>, ptr %vn218, align 32, !tbaa !11
  %391 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call223 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %391)
  %call224 = call <8 x float> @_mm256_blendv_ps(<8 x float> noundef %389, <8 x float> noundef %390, <8 x float> noundef %call223)
  store <8 x float> %call224, ptr %vn218, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp225) #8
  %392 = load <8 x float>, ptr %vc5, align 32, !tbaa !11
  %393 = load <8 x float>, ptr %vt220, align 32, !tbaa !11
  %394 = load <8 x float>, ptr %vc4, align 32, !tbaa !11
  %call226 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %392, <8 x float> noundef %393, <8 x float> noundef %394)
  store <8 x float> %call226, ptr %vp225, align 32, !tbaa !11
  %395 = load <8 x float>, ptr %vp225, align 32, !tbaa !11
  %396 = load <8 x float>, ptr %vt220, align 32, !tbaa !11
  %397 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %call227 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %395, <8 x float> noundef %396, <8 x float> noundef %397)
  store <8 x float> %call227, ptr %vp225, align 32, !tbaa !11
  %398 = load <8 x float>, ptr %vp225, align 32, !tbaa !11
  %399 = load <8 x float>, ptr %vt220, align 32, !tbaa !11
  %400 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call228 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %398, <8 x float> noundef %399, <8 x float> noundef %400)
  store <8 x float> %call228, ptr %vp225, align 32, !tbaa !11
  %401 = load <8 x float>, ptr %vp225, align 32, !tbaa !11
  %402 = load <8 x float>, ptr %vt220, align 32, !tbaa !11
  %403 = load <8 x float>, ptr %vc1, align 32, !tbaa !11
  %call229 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %401, <8 x float> noundef %402, <8 x float> noundef %403)
  store <8 x float> %call229, ptr %vp225, align 32, !tbaa !11
  %404 = load <8 x float>, ptr %vp225, align 32, !tbaa !11
  %405 = load <8 x float>, ptr %vt220, align 32, !tbaa !11
  %406 = load <8 x float>, ptr %vc0, align 32, !tbaa !11
  %call230 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %404, <8 x float> noundef %405, <8 x float> noundef %406)
  store <8 x float> %call230, ptr %vp225, align 32, !tbaa !11
  %407 = load <8 x float>, ptr %vp225, align 32, !tbaa !11
  %408 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call231 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %408)
  %call232 = call <8 x float> @_mm256_and_ps(<8 x float> noundef %407, <8 x float> noundef %call231)
  store <8 x float> %call232, ptr %vp225, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax_e233) #8
  %409 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %410 = load <8 x float>, ptr %vn218, align 32, !tbaa !11
  %call234 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %409, <8 x float> noundef %410)
  store <8 x float> %call234, ptr %vmax_e233, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_e235) #8
  %411 = load <8 x float>, ptr %vn218, align 32, !tbaa !11
  %412 = load <8 x float>, ptr %vmax_e233, align 32, !tbaa !11
  %call236 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %411, <8 x float> noundef %412)
  %413 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call237 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call236, <8 x float> noundef %413)
  store <8 x float> %call237, ptr %vdelta_e235, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_acce238) #8
  %414 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %415 = load <8 x float>, ptr %vmax_e233, align 32, !tbaa !11
  %call239 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %414, <8 x float> noundef %415)
  %416 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call240 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call239, <8 x float> noundef %416)
  store <8 x float> %call240, ptr %vdelta_acce238, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs241) #8
  %417 = load <8 x float>, ptr %vdelta_e235, align 32, !tbaa !11
  %418 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call242 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %417, <8 x float> noundef %418)
  %call243 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call242)
  %call244 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call243, i32 noundef 23)
  %call245 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call244)
  store <8 x float> %call245, ptr %vs241, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccs246) #8
  %419 = load <8 x float>, ptr %vdelta_acce238, align 32, !tbaa !11
  %420 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call247 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %419, <8 x float> noundef %420)
  %call248 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call247)
  %call249 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call248, i32 noundef 23)
  %call250 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call249)
  store <8 x float> %call250, ptr %vaccs246, align 32, !tbaa !11
  %421 = load <8 x float>, ptr %vaccv, align 32, !tbaa !11
  %422 = load <8 x float>, ptr %vaccs246, align 32, !tbaa !11
  %call251 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %421, <8 x float> noundef %422)
  store <8 x float> %call251, ptr %vaccv, align 32, !tbaa !11
  %423 = load <8 x float>, ptr %vp225, align 32, !tbaa !11
  %424 = load <8 x float>, ptr %vs241, align 32, !tbaa !11
  %425 = load <8 x float>, ptr %vaccv, align 32, !tbaa !11
  %call252 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %423, <8 x float> noundef %424, <8 x float> noundef %425)
  store <8 x float> %call252, ptr %vaccv, align 32, !tbaa !11
  %426 = load <8 x float>, ptr %vmax_e233, align 32, !tbaa !11
  store <8 x float> %426, ptr %vacce, align 32, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccs246) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs241) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_acce238) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_e235) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax_e233) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp225) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt220) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn218) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx216) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmask) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end211
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax_acce) #8
  %427 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %428 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %429 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %vperm = shufflevector <8 x float> %428, <8 x float> %428, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %call253 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %427, <8 x float> noundef %vperm)
  store <8 x float> %call253, ptr %vmax_acce, align 32, !tbaa !11
  %430 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %431 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %432 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %shufp = shufflevector <8 x float> %431, <8 x float> %432, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>
  %call254 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %430, <8 x float> noundef %shufp)
  store <8 x float> %call254, ptr %vmax_acce, align 32, !tbaa !11
  %433 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %434 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %435 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %shufp255 = shufflevector <8 x float> %434, <8 x float> %435, <8 x i32> <i32 1, i32 0, i32 11, i32 10, i32 5, i32 4, i32 15, i32 14>
  %call256 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %433, <8 x float> noundef %shufp255)
  store <8 x float> %call256, ptr %vmax_acce, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdelta_acce257) #8
  %436 = load <8 x float>, ptr %vacce, align 32, !tbaa !11
  %437 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %call258 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %436, <8 x float> noundef %437)
  %438 = load <8 x float>, ptr %vmin_exponent, align 32, !tbaa !11
  %call259 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call258, <8 x float> noundef %438)
  store <8 x float> %call259, ptr %vdelta_acce257, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccs260) #8
  %439 = load <8 x float>, ptr %vdelta_acce257, align 32, !tbaa !11
  %440 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call261 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %439, <8 x float> noundef %440)
  %call262 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call261)
  %call263 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call262, i32 noundef 23)
  %call264 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call263)
  store <8 x float> %call264, ptr %vaccs260, align 32, !tbaa !11
  %441 = load <8 x float>, ptr %vaccv, align 32, !tbaa !11
  %442 = load <8 x float>, ptr %vaccs260, align 32, !tbaa !11
  %call265 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %441, <8 x float> noundef %442)
  store <8 x float> %call265, ptr %vaccv, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccv_sum) #8
  %443 = load <8 x float>, ptr %vaccv, align 32, !tbaa !11
  %call266 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %443)
  %444 = load <8 x float>, ptr %vaccv, align 32, !tbaa !11
  %extract = shufflevector <8 x float> %444, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %call267 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call266, <4 x float> noundef %extract)
  store <4 x float> %call267, ptr %vaccv_sum, align 16, !tbaa !11
  %445 = load <4 x float>, ptr %vaccv_sum, align 16, !tbaa !11
  %446 = load <4 x float>, ptr %vaccv_sum, align 16, !tbaa !11
  %447 = load <4 x float>, ptr %vaccv_sum, align 16, !tbaa !11
  %call268 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %446, <4 x float> noundef %447)
  %call269 = call <4 x float> @_mm_add_ps(<4 x float> noundef %445, <4 x float> noundef %call268)
  store <4 x float> %call269, ptr %vaccv_sum, align 16, !tbaa !11
  %448 = load <4 x float>, ptr %vaccv_sum, align 16, !tbaa !11
  %449 = load <4 x float>, ptr %vaccv_sum, align 16, !tbaa !11
  %call270 = call <4 x float> @_mm_movehdup_ps(<4 x float> noundef %449)
  %call271 = call <4 x float> @_mm_add_ss(<4 x float> noundef %448, <4 x float> noundef %call270)
  store <4 x float> %call271, ptr %vaccv_sum, align 16, !tbaa !11
  %450 = load ptr, ptr %sum.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %450, i64 0
  %451 = load <4 x float>, ptr %vaccv_sum, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %arrayidx, <4 x float> noundef %451)
  %452 = load ptr, ptr %sum.addr, align 8, !tbaa !9
  %arrayidx272 = getelementptr inbounds float, ptr %452, i64 1
  %453 = load <8 x float>, ptr %vmax_acce, align 32, !tbaa !11
  %call273 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %453)
  call void @_mm_store_ss(ptr noundef %arrayidx272, <4 x float> noundef %call273)
  call void @_mm256_zeroupper()
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccv_sum) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccs260) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdelta_acce257) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax_acce) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacce) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccv) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacce0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccv0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vminus_inf) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmagic_bias) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmin_exponent) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vminus_ln2_lo) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vminus_ln2_hi) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vlog2e) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  store float %__w, ptr %__w.addr, align 4, !tbaa !15
  %0 = load float, ptr %__w.addr, align 4, !tbaa !15
  %1 = load float, ptr %__w.addr, align 4, !tbaa !15
  %2 = load float, ptr %__w.addr, align 4, !tbaa !15
  %3 = load float, ptr %__w.addr, align 4, !tbaa !15
  %4 = load float, ptr %__w.addr, align 4, !tbaa !15
  %5 = load float, ptr %__w.addr, align 4, !tbaa !15
  %6 = load float, ptr %__w.addr, align 4, !tbaa !15
  %7 = load float, ptr %__w.addr, align 4, !tbaa !15
  %call = call <8 x float> @_mm256_set_ps(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7)
  ret <8 x float> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <8 x float>, align 32
  store <8 x float> zeroinitializer, ptr %.compoundliteral, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !11
  ret <8 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <8 x float>, ptr %__v, align 1, !tbaa !11
  ret <8 x float> %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <8 x float>, align 32
  %__B.addr = alloca <8 x float>, align 32
  %__C.addr = alloca <8 x float>, align 32
  store <8 x float> %__A, ptr %__A.addr, align 32, !tbaa !11
  store <8 x float> %__B, ptr %__B.addr, align 32, !tbaa !11
  store <8 x float> %__C, ptr %__C.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__A.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__B.addr, align 32, !tbaa !11
  %2 = load <8 x float>, ptr %__C.addr, align 32, !tbaa !11
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_max_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %2 = call <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_sub_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %sub = fsub <8 x float> %0, %1
  ret <8 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x float>
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__count.addr = alloca i32, align 4
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !17
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !17
  %3 = call <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32> %1, i32 %2)
  %4 = bitcast <8 x i32> %3 to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_castps_si256(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <8 x float> %0 to <4 x i64>
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_loadu_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si256, ptr %0, i32 0, i32 0
  %1 = load <4 x i64>, ptr %__v, align 1, !tbaa !11
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_maskload_ps(ptr noundef %__p, <4 x i64> noundef %__m) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__m.addr = alloca <4 x i64>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x i64> %__m, ptr %__m.addr, align 32, !tbaa !11
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x i64>, ptr %__m.addr, align 32, !tbaa !11
  %2 = bitcast <4 x i64> %1 to <8 x i32>
  %3 = call <8 x float> @llvm.x86.avx.maskload.ps.256(ptr %0, <8 x i32> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_blendv_ps(<8 x float> noundef %__a, <8 x float> noundef %__b, <8 x float> noundef %__c) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  %__c.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  store <8 x float> %__c, ptr %__c.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %2 = load <8 x float>, ptr %__c.addr, align 32, !tbaa !11
  %3 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_and_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <8 x float> %0 to <8 x i32>
  %2 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <8 x float> %2 to <8 x i32>
  %and = and <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %and to <8 x float>
  ret <8 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %shuffle = shufflevector <8 x float> %0, <8 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ss(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load <4 x float>, ptr %__a.addr, align 16
  %vecext1 = extractelement <4 x float> %1, i32 0
  %add = fadd float %vecext1, %vecext
  %2 = load <4 x float>, ptr %__a.addr, align 16
  %vecins = insertelement <4 x float> %2, float %add, i32 0
  store <4 x float> %vecins, ptr %__a.addr, align 16
  %3 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  ret <4 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehdup_ps(<4 x float> noundef %__a) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_zeroupper() #5 {
entry:
  call void @llvm.x86.avx.vzeroupper()
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_set_ps(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d, float noundef %__e, float noundef %__f, float noundef %__g, float noundef %__h) #2 {
entry:
  %__a.addr = alloca float, align 4
  %__b.addr = alloca float, align 4
  %__c.addr = alloca float, align 4
  %__d.addr = alloca float, align 4
  %__e.addr = alloca float, align 4
  %__f.addr = alloca float, align 4
  %__g.addr = alloca float, align 4
  %__h.addr = alloca float, align 4
  %.compoundliteral = alloca <8 x float>, align 32
  store float %__a, ptr %__a.addr, align 4, !tbaa !15
  store float %__b, ptr %__b.addr, align 4, !tbaa !15
  store float %__c, ptr %__c.addr, align 4, !tbaa !15
  store float %__d, ptr %__d.addr, align 4, !tbaa !15
  store float %__e, ptr %__e.addr, align 4, !tbaa !15
  store float %__f, ptr %__f.addr, align 4, !tbaa !15
  store float %__g, ptr %__g.addr, align 4, !tbaa !15
  store float %__h, ptr %__h.addr, align 4, !tbaa !15
  %0 = load float, ptr %__h.addr, align 4, !tbaa !15
  %vecinit = insertelement <8 x float> undef, float %0, i32 0
  %1 = load float, ptr %__g.addr, align 4, !tbaa !15
  %vecinit1 = insertelement <8 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__f.addr, align 4, !tbaa !15
  %vecinit2 = insertelement <8 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__e.addr, align 4, !tbaa !15
  %vecinit3 = insertelement <8 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__d.addr, align 4, !tbaa !15
  %vecinit4 = insertelement <8 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__c.addr, align 4, !tbaa !15
  %vecinit5 = insertelement <8 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__b.addr, align 4, !tbaa !15
  %vecinit6 = insertelement <8 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__a.addr, align 4, !tbaa !15
  %vecinit7 = insertelement <8 x float> %vecinit6, float %7, i32 7
  store <8 x float> %vecinit7, ptr %.compoundliteral, align 32, !tbaa !11
  %8 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !11
  ret <8 x float> %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.x86.avx.maskload.ps.256(ptr, <8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #3

; Function Attrs: nounwind
declare void @llvm.x86.avx.vzeroupper() #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
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
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}

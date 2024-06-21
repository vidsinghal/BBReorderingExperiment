; ModuleID = 'samples/149.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-velu/gen/velu-avx2-rr1-lut16-p3-gather-x24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.6 = type { [8 x float], [8 x float], [8 x float], [8 x float], [8 x float], [8 x float], [8 x i32], [8 x float], [8 x float], [8 x float], [14 x i32], [8 x i8] }
%struct.__loadu_ps = type { <8 x float> }
%struct.__storeu_ps = type { <8 x float> }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__storeu_ps.12 = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

@xnn_table_exp2minus_k_over_16 = external hidden constant [16 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 64 dereferenceable(512) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vprescale = alloca <8 x float>, align 32
  %valpha = alloca <8 x float>, align 32
  %vbeta = alloca <8 x float>, align 32
  %vsat_cutoff = alloca <8 x float>, align 32
  %vmagic_bias = alloca <8 x float>, align 32
  %vlog2e = alloca <8 x float>, align 32
  %vindex_mask = alloca <4 x i64>, align 32
  %vminus_ln2 = alloca <8 x float>, align 32
  %vc3 = alloca <8 x float>, align 32
  %vc2 = alloca <8 x float>, align 32
  %vx0 = alloca <8 x float>, align 32
  %vx1 = alloca <8 x float>, align 32
  %vx2 = alloca <8 x float>, align 32
  %vz0 = alloca <8 x float>, align 32
  %vz1 = alloca <8 x float>, align 32
  %vz2 = alloca <8 x float>, align 32
  %vn0 = alloca <8 x float>, align 32
  %vn1 = alloca <8 x float>, align 32
  %vn2 = alloca <8 x float>, align 32
  %vidx0 = alloca <4 x i64>, align 32
  %vl0 = alloca <4 x i64>, align 32
  %vidx1 = alloca <4 x i64>, align 32
  %vl1 = alloca <4 x i64>, align 32
  %vidx2 = alloca <4 x i64>, align 32
  %vl2 = alloca <4 x i64>, align 32
  %ven0 = alloca <4 x i64>, align 32
  %ven1 = alloca <4 x i64>, align 32
  %ven2 = alloca <4 x i64>, align 32
  %vs0 = alloca <8 x float>, align 32
  %vt0 = alloca <8 x float>, align 32
  %vs1 = alloca <8 x float>, align 32
  %vt1 = alloca <8 x float>, align 32
  %vs2 = alloca <8 x float>, align 32
  %vt2 = alloca <8 x float>, align 32
  %vp0 = alloca <8 x float>, align 32
  %vp1 = alloca <8 x float>, align 32
  %vp2 = alloca <8 x float>, align 32
  %ve0 = alloca <8 x float>, align 32
  %ve1 = alloca <8 x float>, align 32
  %ve2 = alloca <8 x float>, align 32
  %vy0 = alloca <8 x float>, align 32
  %vy1 = alloca <8 x float>, align 32
  %vy2 = alloca <8 x float>, align 32
  %vx = alloca <8 x float>, align 32
  %vz = alloca <8 x float>, align 32
  %vn = alloca <8 x float>, align 32
  %vidx = alloca <4 x i64>, align 32
  %vl = alloca <4 x i64>, align 32
  %ven = alloca <4 x i64>, align 32
  %vs = alloca <8 x float>, align 32
  %vt = alloca <8 x float>, align 32
  %vp = alloca <8 x float>, align 32
  %ve = alloca <8 x float>, align 32
  %vy = alloca <8 x float>, align 32
  %vmask = alloca <4 x i64>, align 32
  %vx124 = alloca <8 x float>, align 32
  %vz126 = alloca <8 x float>, align 32
  %vn129 = alloca <8 x float>, align 32
  %vidx131 = alloca <4 x i64>, align 32
  %vl134 = alloca <4 x i64>, align 32
  %ven137 = alloca <4 x i64>, align 32
  %vs141 = alloca <8 x float>, align 32
  %vt144 = alloca <8 x float>, align 32
  %vp146 = alloca <8 x float>, align 32
  %ve152 = alloca <8 x float>, align 32
  %vy155 = alloca <8 x float>, align 32
  %vy_lo = alloca <4 x float>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprescale) #8
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %prescale = getelementptr inbounds %struct.anon.6, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %prescale, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vprescale, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %valpha) #8
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %alpha = getelementptr inbounds %struct.anon.6, ptr %1, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %alpha, i64 0, i64 0
  %call2 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1)
  store <8 x float> %call2, ptr %valpha, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vbeta) #8
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %beta = getelementptr inbounds %struct.anon.6, ptr %2, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [8 x float], ptr %beta, i64 0, i64 0
  %call4 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay3)
  store <8 x float> %call4, ptr %vbeta, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vsat_cutoff) #8
  %3 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %sat_cutoff = getelementptr inbounds %struct.anon.6, ptr %3, i32 0, i32 3
  %arraydecay5 = getelementptr inbounds [8 x float], ptr %sat_cutoff, i64 0, i64 0
  %call6 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay5)
  store <8 x float> %call6, ptr %vsat_cutoff, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmagic_bias) #8
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.6, ptr %4, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [8 x float], ptr %magic_bias, i64 0, i64 0
  %call8 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay7)
  store <8 x float> %call8, ptr %vmagic_bias, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vlog2e) #8
  %5 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %log2e = getelementptr inbounds %struct.anon.6, ptr %5, i32 0, i32 5
  %arraydecay9 = getelementptr inbounds [8 x float], ptr %log2e, i64 0, i64 0
  %call10 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay9)
  store <8 x float> %call10, ptr %vlog2e, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vindex_mask) #8
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %index_mask = getelementptr inbounds %struct.anon.6, ptr %6, i32 0, i32 6
  %arraydecay11 = getelementptr inbounds [8 x i32], ptr %index_mask, i64 0, i64 0
  %call12 = call <4 x i64> @_mm256_load_si256(ptr noundef %arraydecay11)
  store <4 x i64> %call12, ptr %vindex_mask, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vminus_ln2) #8
  %7 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %minus_ln2 = getelementptr inbounds %struct.anon.6, ptr %7, i32 0, i32 7
  %arraydecay13 = getelementptr inbounds [8 x float], ptr %minus_ln2, i64 0, i64 0
  %call14 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay13)
  store <8 x float> %call14, ptr %vminus_ln2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc3) #8
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c3 = getelementptr inbounds %struct.anon.6, ptr %8, i32 0, i32 8
  %arraydecay15 = getelementptr inbounds [8 x float], ptr %c3, i64 0, i64 0
  %call16 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay15)
  store <8 x float> %call16, ptr %vc3, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc2) #8
  %9 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c2 = getelementptr inbounds %struct.anon.6, ptr %9, i32 0, i32 9
  %arraydecay17 = getelementptr inbounds [8 x float], ptr %c2, i64 0, i64 0
  %call18 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay17)
  store <8 x float> %call18, ptr %vc2, align 32, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %10, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx0) #8
  %11 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call19 = call <8 x float> @_mm256_loadu_ps(ptr noundef %11)
  store <8 x float> %call19, ptr %vx0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx1) #8
  %12 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %12, i64 8
  %call20 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr)
  store <8 x float> %call20, ptr %vx1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx2) #8
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr21 = getelementptr inbounds float, ptr %13, i64 16
  %call22 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr21)
  store <8 x float> %call22, ptr %vx2, align 32, !tbaa !11
  %14 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr23 = getelementptr inbounds float, ptr %14, i64 24
  store ptr %add.ptr23, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vz0) #8
  %15 = load <8 x float>, ptr %vsat_cutoff, align 32, !tbaa !11
  %16 = load <8 x float>, ptr %vx0, align 32, !tbaa !11
  %17 = load <8 x float>, ptr %vprescale, align 32, !tbaa !11
  %call24 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %16, <8 x float> noundef %17)
  %call25 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %15, <8 x float> noundef %call24)
  store <8 x float> %call25, ptr %vz0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vz1) #8
  %18 = load <8 x float>, ptr %vsat_cutoff, align 32, !tbaa !11
  %19 = load <8 x float>, ptr %vx1, align 32, !tbaa !11
  %20 = load <8 x float>, ptr %vprescale, align 32, !tbaa !11
  %call26 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %19, <8 x float> noundef %20)
  %call27 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %18, <8 x float> noundef %call26)
  store <8 x float> %call27, ptr %vz1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vz2) #8
  %21 = load <8 x float>, ptr %vsat_cutoff, align 32, !tbaa !11
  %22 = load <8 x float>, ptr %vx2, align 32, !tbaa !11
  %23 = load <8 x float>, ptr %vprescale, align 32, !tbaa !11
  %call28 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %22, <8 x float> noundef %23)
  %call29 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %21, <8 x float> noundef %call28)
  store <8 x float> %call29, ptr %vz2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn0) #8
  %24 = load <8 x float>, ptr %vz0, align 32, !tbaa !11
  %25 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %26 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call30 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %24, <8 x float> noundef %25, <8 x float> noundef %26)
  store <8 x float> %call30, ptr %vn0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn1) #8
  %27 = load <8 x float>, ptr %vz1, align 32, !tbaa !11
  %28 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %29 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call31 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %27, <8 x float> noundef %28, <8 x float> noundef %29)
  store <8 x float> %call31, ptr %vn1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn2) #8
  %30 = load <8 x float>, ptr %vz2, align 32, !tbaa !11
  %31 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %32 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call32 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %30, <8 x float> noundef %31, <8 x float> noundef %32)
  store <8 x float> %call32, ptr %vn2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vidx0) #8
  %33 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %call33 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %33)
  %34 = load <4 x i64>, ptr %vindex_mask, align 32, !tbaa !11
  %call34 = call <4 x i64> @_mm256_and_si256(<4 x i64> noundef %call33, <4 x i64> noundef %34)
  store <4 x i64> %call34, ptr %vidx0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vl0) #8
  %call35 = call <4 x i64> @_mm256_undefined_si256()
  %35 = bitcast <4 x i64> %call35 to <8 x i32>
  %36 = load <4 x i64>, ptr %vidx0, align 32, !tbaa !11
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %call36 = call <4 x i64> @_mm256_set1_epi32(i32 noundef -1)
  %38 = bitcast <4 x i64> %call36 to <8 x i32>
  %39 = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> %35, ptr @xnn_table_exp2minus_k_over_16, <8 x i32> %37, <8 x i32> %38, i8 4)
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  store <4 x i64> %40, ptr %vl0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vidx1) #8
  %41 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %call37 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %41)
  %42 = load <4 x i64>, ptr %vindex_mask, align 32, !tbaa !11
  %call38 = call <4 x i64> @_mm256_and_si256(<4 x i64> noundef %call37, <4 x i64> noundef %42)
  store <4 x i64> %call38, ptr %vidx1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vl1) #8
  %call39 = call <4 x i64> @_mm256_undefined_si256()
  %43 = bitcast <4 x i64> %call39 to <8 x i32>
  %44 = load <4 x i64>, ptr %vidx1, align 32, !tbaa !11
  %45 = bitcast <4 x i64> %44 to <8 x i32>
  %call40 = call <4 x i64> @_mm256_set1_epi32(i32 noundef -1)
  %46 = bitcast <4 x i64> %call40 to <8 x i32>
  %47 = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> %43, ptr @xnn_table_exp2minus_k_over_16, <8 x i32> %45, <8 x i32> %46, i8 4)
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  store <4 x i64> %48, ptr %vl1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vidx2) #8
  %49 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %call41 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %49)
  %50 = load <4 x i64>, ptr %vindex_mask, align 32, !tbaa !11
  %call42 = call <4 x i64> @_mm256_and_si256(<4 x i64> noundef %call41, <4 x i64> noundef %50)
  store <4 x i64> %call42, ptr %vidx2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vl2) #8
  %call43 = call <4 x i64> @_mm256_undefined_si256()
  %51 = bitcast <4 x i64> %call43 to <8 x i32>
  %52 = load <4 x i64>, ptr %vidx2, align 32, !tbaa !11
  %53 = bitcast <4 x i64> %52 to <8 x i32>
  %call44 = call <4 x i64> @_mm256_set1_epi32(i32 noundef -1)
  %54 = bitcast <4 x i64> %call44 to <8 x i32>
  %55 = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> %51, ptr @xnn_table_exp2minus_k_over_16, <8 x i32> %53, <8 x i32> %54, i8 4)
  %56 = bitcast <8 x i32> %55 to <4 x i64>
  store <4 x i64> %56, ptr %vl2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ven0) #8
  %57 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %call45 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %57)
  %call46 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call45, i32 noundef 19)
  store <4 x i64> %call46, ptr %ven0, align 32, !tbaa !11
  %58 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %59 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call47 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %58, <8 x float> noundef %59)
  store <8 x float> %call47, ptr %vn0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ven1) #8
  %60 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %call48 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %60)
  %call49 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call48, i32 noundef 19)
  store <4 x i64> %call49, ptr %ven1, align 32, !tbaa !11
  %61 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %62 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call50 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %61, <8 x float> noundef %62)
  store <8 x float> %call50, ptr %vn1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ven2) #8
  %63 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %call51 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %63)
  %call52 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call51, i32 noundef 19)
  store <4 x i64> %call52, ptr %ven2, align 32, !tbaa !11
  %64 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %65 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call53 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %64, <8 x float> noundef %65)
  store <8 x float> %call53, ptr %vn2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs0) #8
  %66 = load <4 x i64>, ptr %vl0, align 32, !tbaa !11
  %67 = load <4 x i64>, ptr %ven0, align 32, !tbaa !11
  %call54 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %66, <4 x i64> noundef %67)
  %call55 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call54)
  store <8 x float> %call55, ptr %vs0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt0) #8
  %68 = load <8 x float>, ptr %vn0, align 32, !tbaa !11
  %69 = load <8 x float>, ptr %vminus_ln2, align 32, !tbaa !11
  %70 = load <8 x float>, ptr %vz0, align 32, !tbaa !11
  %call56 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %68, <8 x float> noundef %69, <8 x float> noundef %70)
  store <8 x float> %call56, ptr %vt0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs1) #8
  %71 = load <4 x i64>, ptr %vl1, align 32, !tbaa !11
  %72 = load <4 x i64>, ptr %ven1, align 32, !tbaa !11
  %call57 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %71, <4 x i64> noundef %72)
  %call58 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call57)
  store <8 x float> %call58, ptr %vs1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt1) #8
  %73 = load <8 x float>, ptr %vn1, align 32, !tbaa !11
  %74 = load <8 x float>, ptr %vminus_ln2, align 32, !tbaa !11
  %75 = load <8 x float>, ptr %vz1, align 32, !tbaa !11
  %call59 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %73, <8 x float> noundef %74, <8 x float> noundef %75)
  store <8 x float> %call59, ptr %vt1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs2) #8
  %76 = load <4 x i64>, ptr %vl2, align 32, !tbaa !11
  %77 = load <4 x i64>, ptr %ven2, align 32, !tbaa !11
  %call60 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %76, <4 x i64> noundef %77)
  %call61 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call60)
  store <8 x float> %call61, ptr %vs2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt2) #8
  %78 = load <8 x float>, ptr %vn2, align 32, !tbaa !11
  %79 = load <8 x float>, ptr %vminus_ln2, align 32, !tbaa !11
  %80 = load <8 x float>, ptr %vz2, align 32, !tbaa !11
  %call62 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %78, <8 x float> noundef %79, <8 x float> noundef %80)
  store <8 x float> %call62, ptr %vt2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp0) #8
  %81 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %82 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %83 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call63 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %81, <8 x float> noundef %82, <8 x float> noundef %83)
  store <8 x float> %call63, ptr %vp0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp1) #8
  %84 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %85 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %86 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call64 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %84, <8 x float> noundef %85, <8 x float> noundef %86)
  store <8 x float> %call64, ptr %vp1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp2) #8
  %87 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %88 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %89 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call65 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %87, <8 x float> noundef %88, <8 x float> noundef %89)
  store <8 x float> %call65, ptr %vp2, align 32, !tbaa !11
  %90 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %91 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %call66 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %90, <8 x float> noundef %91)
  store <8 x float> %call66, ptr %vp0, align 32, !tbaa !11
  %92 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %93 = load <8 x float>, ptr %vs0, align 32, !tbaa !11
  %call67 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %92, <8 x float> noundef %93)
  store <8 x float> %call67, ptr %vt0, align 32, !tbaa !11
  %94 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %95 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %call68 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %94, <8 x float> noundef %95)
  store <8 x float> %call68, ptr %vp1, align 32, !tbaa !11
  %96 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %97 = load <8 x float>, ptr %vs1, align 32, !tbaa !11
  %call69 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %96, <8 x float> noundef %97)
  store <8 x float> %call69, ptr %vt1, align 32, !tbaa !11
  %98 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %99 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %call70 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %98, <8 x float> noundef %99)
  store <8 x float> %call70, ptr %vp2, align 32, !tbaa !11
  %100 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %101 = load <8 x float>, ptr %vs2, align 32, !tbaa !11
  %call71 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %100, <8 x float> noundef %101)
  store <8 x float> %call71, ptr %vt2, align 32, !tbaa !11
  %102 = load <8 x float>, ptr %vs0, align 32, !tbaa !11
  %103 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %104 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %call72 = call <8 x float> @_mm256_fmsub_ps(<8 x float> noundef %102, <8 x float> noundef %103, <8 x float> noundef %104)
  store <8 x float> %call72, ptr %vs0, align 32, !tbaa !11
  %105 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %106 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %107 = load <8 x float>, ptr %vt0, align 32, !tbaa !11
  %call73 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %105, <8 x float> noundef %106, <8 x float> noundef %107)
  store <8 x float> %call73, ptr %vp0, align 32, !tbaa !11
  %108 = load <8 x float>, ptr %vs1, align 32, !tbaa !11
  %109 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %110 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %call74 = call <8 x float> @_mm256_fmsub_ps(<8 x float> noundef %108, <8 x float> noundef %109, <8 x float> noundef %110)
  store <8 x float> %call74, ptr %vs1, align 32, !tbaa !11
  %111 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %112 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %113 = load <8 x float>, ptr %vt1, align 32, !tbaa !11
  %call75 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %111, <8 x float> noundef %112, <8 x float> noundef %113)
  store <8 x float> %call75, ptr %vp1, align 32, !tbaa !11
  %114 = load <8 x float>, ptr %vs2, align 32, !tbaa !11
  %115 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %116 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %call76 = call <8 x float> @_mm256_fmsub_ps(<8 x float> noundef %114, <8 x float> noundef %115, <8 x float> noundef %116)
  store <8 x float> %call76, ptr %vs2, align 32, !tbaa !11
  %117 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %118 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %119 = load <8 x float>, ptr %vt2, align 32, !tbaa !11
  %call77 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %117, <8 x float> noundef %118, <8 x float> noundef %119)
  store <8 x float> %call77, ptr %vp2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ve0) #8
  %120 = load <8 x float>, ptr %vp0, align 32, !tbaa !11
  %121 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %122 = load <8 x float>, ptr %vs0, align 32, !tbaa !11
  %call78 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %120, <8 x float> noundef %121, <8 x float> noundef %122)
  store <8 x float> %call78, ptr %ve0, align 32, !tbaa !11
  %123 = load <8 x float>, ptr %vx0, align 32, !tbaa !11
  %124 = load <8 x float>, ptr %vbeta, align 32, !tbaa !11
  %call79 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %123, <8 x float> noundef %124)
  store <8 x float> %call79, ptr %vx0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ve1) #8
  %125 = load <8 x float>, ptr %vp1, align 32, !tbaa !11
  %126 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %127 = load <8 x float>, ptr %vs1, align 32, !tbaa !11
  %call80 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %125, <8 x float> noundef %126, <8 x float> noundef %127)
  store <8 x float> %call80, ptr %ve1, align 32, !tbaa !11
  %128 = load <8 x float>, ptr %vx1, align 32, !tbaa !11
  %129 = load <8 x float>, ptr %vbeta, align 32, !tbaa !11
  %call81 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %128, <8 x float> noundef %129)
  store <8 x float> %call81, ptr %vx1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ve2) #8
  %130 = load <8 x float>, ptr %vp2, align 32, !tbaa !11
  %131 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %132 = load <8 x float>, ptr %vs2, align 32, !tbaa !11
  %call82 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %130, <8 x float> noundef %131, <8 x float> noundef %132)
  store <8 x float> %call82, ptr %ve2, align 32, !tbaa !11
  %133 = load <8 x float>, ptr %vx2, align 32, !tbaa !11
  %134 = load <8 x float>, ptr %vbeta, align 32, !tbaa !11
  %call83 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %133, <8 x float> noundef %134)
  store <8 x float> %call83, ptr %vx2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy0) #8
  %135 = load <8 x float>, ptr %vx0, align 32, !tbaa !11
  %136 = load <8 x float>, ptr %ve0, align 32, !tbaa !11
  %137 = load <8 x float>, ptr %vx0, align 32, !tbaa !11
  %call84 = call <8 x float> @_mm256_blendv_ps(<8 x float> noundef %135, <8 x float> noundef %136, <8 x float> noundef %137)
  store <8 x float> %call84, ptr %vy0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy1) #8
  %138 = load <8 x float>, ptr %vx1, align 32, !tbaa !11
  %139 = load <8 x float>, ptr %ve1, align 32, !tbaa !11
  %140 = load <8 x float>, ptr %vx1, align 32, !tbaa !11
  %call85 = call <8 x float> @_mm256_blendv_ps(<8 x float> noundef %138, <8 x float> noundef %139, <8 x float> noundef %140)
  store <8 x float> %call85, ptr %vy1, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy2) #8
  %141 = load <8 x float>, ptr %vx2, align 32, !tbaa !11
  %142 = load <8 x float>, ptr %ve2, align 32, !tbaa !11
  %143 = load <8 x float>, ptr %vx2, align 32, !tbaa !11
  %call86 = call <8 x float> @_mm256_blendv_ps(<8 x float> noundef %141, <8 x float> noundef %142, <8 x float> noundef %143)
  store <8 x float> %call86, ptr %vy2, align 32, !tbaa !11
  %144 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %145 = load <8 x float>, ptr %vy0, align 32, !tbaa !11
  call void @_mm256_storeu_ps(ptr noundef %144, <8 x float> noundef %145)
  %146 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr87 = getelementptr inbounds float, ptr %146, i64 8
  %147 = load <8 x float>, ptr %vy1, align 32, !tbaa !11
  call void @_mm256_storeu_ps(ptr noundef %add.ptr87, <8 x float> noundef %147)
  %148 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr88 = getelementptr inbounds float, ptr %148, i64 16
  %149 = load <8 x float>, ptr %vy2, align 32, !tbaa !11
  call void @_mm256_storeu_ps(ptr noundef %add.ptr88, <8 x float> noundef %149)
  %150 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr89 = getelementptr inbounds float, ptr %150, i64 24
  store ptr %add.ptr89, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ve2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ve1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ve0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ven2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ven1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ven0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vl2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vidx2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vl1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vidx1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vl0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vidx0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vz2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vz1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vz0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %151 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %151, 96
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc117, %for.end
  %152 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp91 = icmp uge i64 %152, 32
  br i1 %cmp91, label %for.body92, label %for.end119

for.body92:                                       ; preds = %for.cond90
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx) #8
  %153 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call93 = call <8 x float> @_mm256_loadu_ps(ptr noundef %153)
  store <8 x float> %call93, ptr %vx, align 32, !tbaa !11
  %154 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr94 = getelementptr inbounds float, ptr %154, i64 8
  store ptr %add.ptr94, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vz) #8
  %155 = load <8 x float>, ptr %vsat_cutoff, align 32, !tbaa !11
  %156 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %157 = load <8 x float>, ptr %vprescale, align 32, !tbaa !11
  %call95 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %156, <8 x float> noundef %157)
  %call96 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %155, <8 x float> noundef %call95)
  store <8 x float> %call96, ptr %vz, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn) #8
  %158 = load <8 x float>, ptr %vz, align 32, !tbaa !11
  %159 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %160 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call97 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %158, <8 x float> noundef %159, <8 x float> noundef %160)
  store <8 x float> %call97, ptr %vn, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vidx) #8
  %161 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %call98 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %161)
  %162 = load <4 x i64>, ptr %vindex_mask, align 32, !tbaa !11
  %call99 = call <4 x i64> @_mm256_and_si256(<4 x i64> noundef %call98, <4 x i64> noundef %162)
  store <4 x i64> %call99, ptr %vidx, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vl) #8
  %call100 = call <4 x i64> @_mm256_undefined_si256()
  %163 = bitcast <4 x i64> %call100 to <8 x i32>
  %164 = load <4 x i64>, ptr %vidx, align 32, !tbaa !11
  %165 = bitcast <4 x i64> %164 to <8 x i32>
  %call101 = call <4 x i64> @_mm256_set1_epi32(i32 noundef -1)
  %166 = bitcast <4 x i64> %call101 to <8 x i32>
  %167 = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> %163, ptr @xnn_table_exp2minus_k_over_16, <8 x i32> %165, <8 x i32> %166, i8 4)
  %168 = bitcast <8 x i32> %167 to <4 x i64>
  store <4 x i64> %168, ptr %vl, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ven) #8
  %169 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %call102 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %169)
  %call103 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call102, i32 noundef 19)
  store <4 x i64> %call103, ptr %ven, align 32, !tbaa !11
  %170 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %171 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call104 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %170, <8 x float> noundef %171)
  store <8 x float> %call104, ptr %vn, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs) #8
  %172 = load <4 x i64>, ptr %vl, align 32, !tbaa !11
  %173 = load <4 x i64>, ptr %ven, align 32, !tbaa !11
  %call105 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %172, <4 x i64> noundef %173)
  %call106 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call105)
  store <8 x float> %call106, ptr %vs, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt) #8
  %174 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %175 = load <8 x float>, ptr %vminus_ln2, align 32, !tbaa !11
  %176 = load <8 x float>, ptr %vz, align 32, !tbaa !11
  %call107 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %174, <8 x float> noundef %175, <8 x float> noundef %176)
  store <8 x float> %call107, ptr %vt, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp) #8
  %177 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %178 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %179 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call108 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %177, <8 x float> noundef %178, <8 x float> noundef %179)
  store <8 x float> %call108, ptr %vp, align 32, !tbaa !11
  %180 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %181 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %call109 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %180, <8 x float> noundef %181)
  store <8 x float> %call109, ptr %vp, align 32, !tbaa !11
  %182 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %183 = load <8 x float>, ptr %vs, align 32, !tbaa !11
  %call110 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %182, <8 x float> noundef %183)
  store <8 x float> %call110, ptr %vt, align 32, !tbaa !11
  %184 = load <8 x float>, ptr %vs, align 32, !tbaa !11
  %185 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %186 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %call111 = call <8 x float> @_mm256_fmsub_ps(<8 x float> noundef %184, <8 x float> noundef %185, <8 x float> noundef %186)
  store <8 x float> %call111, ptr %vs, align 32, !tbaa !11
  %187 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %188 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %189 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %call112 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %187, <8 x float> noundef %188, <8 x float> noundef %189)
  store <8 x float> %call112, ptr %vp, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ve) #8
  %190 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %191 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %192 = load <8 x float>, ptr %vs, align 32, !tbaa !11
  %call113 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %190, <8 x float> noundef %191, <8 x float> noundef %192)
  store <8 x float> %call113, ptr %ve, align 32, !tbaa !11
  %193 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %194 = load <8 x float>, ptr %vbeta, align 32, !tbaa !11
  %call114 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %193, <8 x float> noundef %194)
  store <8 x float> %call114, ptr %vx, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy) #8
  %195 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %196 = load <8 x float>, ptr %ve, align 32, !tbaa !11
  %197 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %call115 = call <8 x float> @_mm256_blendv_ps(<8 x float> noundef %195, <8 x float> noundef %196, <8 x float> noundef %197)
  store <8 x float> %call115, ptr %vy, align 32, !tbaa !11
  %198 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %199 = load <8 x float>, ptr %vy, align 32, !tbaa !11
  call void @_mm256_storeu_ps(ptr noundef %198, <8 x float> noundef %199)
  %200 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr116 = getelementptr inbounds float, ptr %200, i64 8
  store ptr %add.ptr116, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ve) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ven) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vl) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vidx) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vz) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx) #8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body92
  %201 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub118 = sub i64 %201, 32
  store i64 %sub118, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond90, !llvm.loop !14

for.end119:                                       ; preds = %for.cond90
  %202 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp120 = icmp ne i64 %202, 0
  %lnot = xor i1 %cmp120, true
  %lnot121 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot121 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end171

if.then:                                          ; preds = %for.end119
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmask) #8
  %203 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %mask_table = getelementptr inbounds %struct.anon.6, ptr %203, i32 0, i32 10
  %arrayidx = getelementptr inbounds [14 x i32], ptr %mask_table, i64 0, i64 7
  %204 = ptrtoint ptr %arrayidx to i64
  %205 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub122 = sub i64 %204, %205
  %206 = inttoptr i64 %sub122 to ptr
  %call123 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %206)
  store <4 x i64> %call123, ptr %vmask, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx124) #8
  %207 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %208 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call125 = call <8 x float> @_mm256_maskload_ps(ptr noundef %207, <4 x i64> noundef %208)
  store <8 x float> %call125, ptr %vx124, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vz126) #8
  %209 = load <8 x float>, ptr %vsat_cutoff, align 32, !tbaa !11
  %210 = load <8 x float>, ptr %vx124, align 32, !tbaa !11
  %211 = load <8 x float>, ptr %vprescale, align 32, !tbaa !11
  %call127 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %210, <8 x float> noundef %211)
  %call128 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %209, <8 x float> noundef %call127)
  store <8 x float> %call128, ptr %vz126, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn129) #8
  %212 = load <8 x float>, ptr %vz126, align 32, !tbaa !11
  %213 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %214 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call130 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %212, <8 x float> noundef %213, <8 x float> noundef %214)
  store <8 x float> %call130, ptr %vn129, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vidx131) #8
  %215 = load <8 x float>, ptr %vn129, align 32, !tbaa !11
  %call132 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %215)
  %216 = load <4 x i64>, ptr %vindex_mask, align 32, !tbaa !11
  %call133 = call <4 x i64> @_mm256_and_si256(<4 x i64> noundef %call132, <4 x i64> noundef %216)
  store <4 x i64> %call133, ptr %vidx131, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vl134) #8
  %call135 = call <4 x i64> @_mm256_undefined_si256()
  %217 = bitcast <4 x i64> %call135 to <8 x i32>
  %218 = load <4 x i64>, ptr %vidx131, align 32, !tbaa !11
  %219 = bitcast <4 x i64> %218 to <8 x i32>
  %call136 = call <4 x i64> @_mm256_set1_epi32(i32 noundef -1)
  %220 = bitcast <4 x i64> %call136 to <8 x i32>
  %221 = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> %217, ptr @xnn_table_exp2minus_k_over_16, <8 x i32> %219, <8 x i32> %220, i8 4)
  %222 = bitcast <8 x i32> %221 to <4 x i64>
  store <4 x i64> %222, ptr %vl134, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ven137) #8
  %223 = load <8 x float>, ptr %vn129, align 32, !tbaa !11
  %call138 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %223)
  %call139 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call138, i32 noundef 19)
  store <4 x i64> %call139, ptr %ven137, align 32, !tbaa !11
  %224 = load <8 x float>, ptr %vn129, align 32, !tbaa !11
  %225 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call140 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %224, <8 x float> noundef %225)
  store <8 x float> %call140, ptr %vn129, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs141) #8
  %226 = load <4 x i64>, ptr %vl134, align 32, !tbaa !11
  %227 = load <4 x i64>, ptr %ven137, align 32, !tbaa !11
  %call142 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %226, <4 x i64> noundef %227)
  %call143 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call142)
  store <8 x float> %call143, ptr %vs141, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt144) #8
  %228 = load <8 x float>, ptr %vn129, align 32, !tbaa !11
  %229 = load <8 x float>, ptr %vminus_ln2, align 32, !tbaa !11
  %230 = load <8 x float>, ptr %vz126, align 32, !tbaa !11
  %call145 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %228, <8 x float> noundef %229, <8 x float> noundef %230)
  store <8 x float> %call145, ptr %vt144, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp146) #8
  %231 = load <8 x float>, ptr %vc3, align 32, !tbaa !11
  %232 = load <8 x float>, ptr %vt144, align 32, !tbaa !11
  %233 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call147 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %231, <8 x float> noundef %232, <8 x float> noundef %233)
  store <8 x float> %call147, ptr %vp146, align 32, !tbaa !11
  %234 = load <8 x float>, ptr %vp146, align 32, !tbaa !11
  %235 = load <8 x float>, ptr %vt144, align 32, !tbaa !11
  %call148 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %234, <8 x float> noundef %235)
  store <8 x float> %call148, ptr %vp146, align 32, !tbaa !11
  %236 = load <8 x float>, ptr %vt144, align 32, !tbaa !11
  %237 = load <8 x float>, ptr %vs141, align 32, !tbaa !11
  %call149 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %236, <8 x float> noundef %237)
  store <8 x float> %call149, ptr %vt144, align 32, !tbaa !11
  %238 = load <8 x float>, ptr %vs141, align 32, !tbaa !11
  %239 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %240 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %call150 = call <8 x float> @_mm256_fmsub_ps(<8 x float> noundef %238, <8 x float> noundef %239, <8 x float> noundef %240)
  store <8 x float> %call150, ptr %vs141, align 32, !tbaa !11
  %241 = load <8 x float>, ptr %vp146, align 32, !tbaa !11
  %242 = load <8 x float>, ptr %vt144, align 32, !tbaa !11
  %243 = load <8 x float>, ptr %vt144, align 32, !tbaa !11
  %call151 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %241, <8 x float> noundef %242, <8 x float> noundef %243)
  store <8 x float> %call151, ptr %vp146, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ve152) #8
  %244 = load <8 x float>, ptr %vp146, align 32, !tbaa !11
  %245 = load <8 x float>, ptr %valpha, align 32, !tbaa !11
  %246 = load <8 x float>, ptr %vs141, align 32, !tbaa !11
  %call153 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %244, <8 x float> noundef %245, <8 x float> noundef %246)
  store <8 x float> %call153, ptr %ve152, align 32, !tbaa !11
  %247 = load <8 x float>, ptr %vx124, align 32, !tbaa !11
  %248 = load <8 x float>, ptr %vbeta, align 32, !tbaa !11
  %call154 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %247, <8 x float> noundef %248)
  store <8 x float> %call154, ptr %vx124, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy155) #8
  %249 = load <8 x float>, ptr %vx124, align 32, !tbaa !11
  %250 = load <8 x float>, ptr %ve152, align 32, !tbaa !11
  %251 = load <8 x float>, ptr %vx124, align 32, !tbaa !11
  %call156 = call <8 x float> @_mm256_blendv_ps(<8 x float> noundef %249, <8 x float> noundef %250, <8 x float> noundef %251)
  store <8 x float> %call156, ptr %vy155, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy_lo) #8
  %252 = load <8 x float>, ptr %vy155, align 32, !tbaa !11
  %call157 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %252)
  store <4 x float> %call157, ptr %vy_lo, align 16, !tbaa !11
  %253 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %253, 16
  %tobool158 = icmp ne i64 %and, 0
  br i1 %tobool158, label %if.then159, label %if.end

if.then159:                                       ; preds = %if.then
  %254 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %255 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %254, <4 x float> noundef %255)
  %256 = load <8 x float>, ptr %vy155, align 32, !tbaa !11
  %extract = shufflevector <8 x float> %256, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract, ptr %vy_lo, align 16, !tbaa !11
  %257 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr160 = getelementptr inbounds float, ptr %257, i64 4
  store ptr %add.ptr160, ptr %y.addr, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then159, %if.then
  %258 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and161 = and i64 %258, 8
  %tobool162 = icmp ne i64 %and161, 0
  br i1 %tobool162, label %if.then163, label %if.end166

if.then163:                                       ; preds = %if.end
  %259 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %260 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %259, <4 x float> noundef %260)
  %261 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !11
  %262 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !11
  %call164 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %261, <4 x float> noundef %262)
  store <4 x float> %call164, ptr %vy_lo, align 16, !tbaa !11
  %263 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr165 = getelementptr inbounds float, ptr %263, i64 2
  store ptr %add.ptr165, ptr %y.addr, align 8, !tbaa !9
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end
  %264 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and167 = and i64 %264, 4
  %tobool168 = icmp ne i64 %and167, 0
  br i1 %tobool168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end166
  %265 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %266 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %265, <4 x float> noundef %266)
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.end166
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy_lo) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy155) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ve152) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp146) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt144) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs141) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ven137) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vl134) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vidx131) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn129) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vz126) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx124) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmask) #8
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %for.end119
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vminus_ln2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vindex_mask) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vlog2e) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmagic_bias) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vsat_cutoff) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vbeta) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %valpha) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprescale) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !11
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_load_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x i64>, ptr %0, align 32, !tbaa !11
  ret <4 x i64> %1
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
define internal <4 x i64> @_mm256_and_si256(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %and = and <4 x i64> %0, %1
  ret <4 x i64> %and
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_undefined_si256() #2 {
entry:
  ret <4 x i64> zeroinitializer
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set1_epi32(i32 noundef %__i) #2 {
entry:
  %__i.addr = alloca i32, align 4
  store i32 %__i, ptr %__i.addr, align 4, !tbaa !15
  %0 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %1 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %2 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %3 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %4 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %5 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %6 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %7 = load i32, ptr %__i.addr, align 4, !tbaa !15
  %call = call <4 x i64> @_mm256_set_epi32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret <4 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__count.addr = alloca i32, align 4
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32> %1, i32 %2)
  %4 = bitcast <8 x i32> %3 to <4 x i64>
  ret <4 x i64> %4
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
define internal <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %add = add <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %add to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fmsub_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #2 {
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
  %fneg = fneg <8 x float> %2
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> %1, <8 x float> %fneg)
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
define internal void @_mm256_storeu_ps(ptr noundef %__p, <8 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <8 x float>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <8 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

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
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #5 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps.12, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #5 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #5 {
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
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #5 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set_epi32(i32 noundef %__i0, i32 noundef %__i1, i32 noundef %__i2, i32 noundef %__i3, i32 noundef %__i4, i32 noundef %__i5, i32 noundef %__i6, i32 noundef %__i7) #2 {
entry:
  %__i0.addr = alloca i32, align 4
  %__i1.addr = alloca i32, align 4
  %__i2.addr = alloca i32, align 4
  %__i3.addr = alloca i32, align 4
  %__i4.addr = alloca i32, align 4
  %__i5.addr = alloca i32, align 4
  %__i6.addr = alloca i32, align 4
  %__i7.addr = alloca i32, align 4
  %.compoundliteral = alloca <8 x i32>, align 32
  store i32 %__i0, ptr %__i0.addr, align 4, !tbaa !15
  store i32 %__i1, ptr %__i1.addr, align 4, !tbaa !15
  store i32 %__i2, ptr %__i2.addr, align 4, !tbaa !15
  store i32 %__i3, ptr %__i3.addr, align 4, !tbaa !15
  store i32 %__i4, ptr %__i4.addr, align 4, !tbaa !15
  store i32 %__i5, ptr %__i5.addr, align 4, !tbaa !15
  store i32 %__i6, ptr %__i6.addr, align 4, !tbaa !15
  store i32 %__i7, ptr %__i7.addr, align 4, !tbaa !15
  %0 = load i32, ptr %__i7.addr, align 4, !tbaa !15
  %vecinit = insertelement <8 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__i6.addr, align 4, !tbaa !15
  %vecinit1 = insertelement <8 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__i5.addr, align 4, !tbaa !15
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__i4.addr, align 4, !tbaa !15
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, ptr %__i3.addr, align 4, !tbaa !15
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, ptr %__i2.addr, align 4, !tbaa !15
  %vecinit5 = insertelement <8 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, ptr %__i1.addr, align 4, !tbaa !15
  %vecinit6 = insertelement <8 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, ptr %__i0.addr, align 4, !tbaa !15
  %vecinit7 = insertelement <8 x i32> %vecinit6, i32 %7, i32 7
  store <8 x i32> %vecinit7, ptr %.compoundliteral, align 32, !tbaa !11
  %8 = load <8 x i32>, ptr %.compoundliteral, align 32, !tbaa !11
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  ret <4 x i64> %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.x86.avx.maskload.ps.256(ptr, <8 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!16 = !{!"int", !7, i64 0}

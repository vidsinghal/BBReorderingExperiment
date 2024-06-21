; ModuleID = 'samples/866.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vrsubc-minmax-avx-x16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { [8 x float], [8 x float], [14 x i32], [8 x i8] }
%struct.__mm256_broadcast_ss_struct = type { float }
%struct.__loadu_ps = type { <8 x float> }
%struct.__storeu_ps = type { <8 x float> }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__storeu_ps.2 = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vrsubc_minmax_ukernel__avx_x16(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vy_min = alloca <8 x float>, align 32
  %vy_max = alloca <8 x float>, align 32
  %vb = alloca <8 x float>, align 32
  %va01234567 = alloca <8 x float>, align 32
  %va89ABCDEF = alloca <8 x float>, align 32
  %vy01234567 = alloca <8 x float>, align 32
  %vy89ABCDEF = alloca <8 x float>, align 32
  %va = alloca <8 x float>, align 32
  %vy = alloca <8 x float>, align 32
  %vmask = alloca <4 x i64>, align 32
  %va31 = alloca <8 x float>, align 32
  %vy33 = alloca <8 x float>, align 32
  %vy_lo = alloca <4 x float>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store ptr %b, ptr %b.addr, align 8, !tbaa !8
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy_min) #6
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %min = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vy_min, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy_max) #6
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %max = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call2 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1)
  store <8 x float> %call2, ptr %vy_max, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vb) #6
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %call3 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %2)
  store <8 x float> %call3, ptr %vb, align 32, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %3, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %va01234567) #6
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %call4 = call <8 x float> @_mm256_loadu_ps(ptr noundef %4)
  store <8 x float> %call4, ptr %va01234567, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %va89ABCDEF) #6
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds float, ptr %5, i64 8
  %call5 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr)
  store <8 x float> %call5, ptr %va89ABCDEF, align 32, !tbaa !10
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %add.ptr6 = getelementptr inbounds float, ptr %6, i64 16
  store ptr %add.ptr6, ptr %a.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy01234567) #6
  %7 = load <8 x float>, ptr %vb, align 32, !tbaa !10
  %8 = load <8 x float>, ptr %va01234567, align 32, !tbaa !10
  %call7 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %7, <8 x float> noundef %8)
  store <8 x float> %call7, ptr %vy01234567, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy89ABCDEF) #6
  %9 = load <8 x float>, ptr %vb, align 32, !tbaa !10
  %10 = load <8 x float>, ptr %va89ABCDEF, align 32, !tbaa !10
  %call8 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %9, <8 x float> noundef %10)
  store <8 x float> %call8, ptr %vy89ABCDEF, align 32, !tbaa !10
  %11 = load <8 x float>, ptr %vy01234567, align 32, !tbaa !10
  %12 = load <8 x float>, ptr %vy_min, align 32, !tbaa !10
  %call9 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %11, <8 x float> noundef %12)
  store <8 x float> %call9, ptr %vy01234567, align 32, !tbaa !10
  %13 = load <8 x float>, ptr %vy89ABCDEF, align 32, !tbaa !10
  %14 = load <8 x float>, ptr %vy_min, align 32, !tbaa !10
  %call10 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %13, <8 x float> noundef %14)
  store <8 x float> %call10, ptr %vy89ABCDEF, align 32, !tbaa !10
  %15 = load <8 x float>, ptr %vy01234567, align 32, !tbaa !10
  %16 = load <8 x float>, ptr %vy_max, align 32, !tbaa !10
  %call11 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %15, <8 x float> noundef %16)
  store <8 x float> %call11, ptr %vy01234567, align 32, !tbaa !10
  %17 = load <8 x float>, ptr %vy89ABCDEF, align 32, !tbaa !10
  %18 = load <8 x float>, ptr %vy_max, align 32, !tbaa !10
  %call12 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %17, <8 x float> noundef %18)
  store <8 x float> %call12, ptr %vy89ABCDEF, align 32, !tbaa !10
  %19 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %20 = load <8 x float>, ptr %vy01234567, align 32, !tbaa !10
  call void @_mm256_storeu_ps(ptr noundef %19, <8 x float> noundef %20)
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr13 = getelementptr inbounds float, ptr %21, i64 8
  %22 = load <8 x float>, ptr %vy89ABCDEF, align 32, !tbaa !10
  call void @_mm256_storeu_ps(ptr noundef %add.ptr13, <8 x float> noundef %22)
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr14 = getelementptr inbounds float, ptr %23, i64 16
  store ptr %add.ptr14, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub i64 %24, 64
  store i64 %sub, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc24, %for.end
  %25 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp16 = icmp uge i64 %25, 32
  br i1 %cmp16, label %for.body17, label %for.end26

for.body17:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 32, ptr %va) #6
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %call18 = call <8 x float> @_mm256_loadu_ps(ptr noundef %26)
  store <8 x float> %call18, ptr %va, align 32, !tbaa !10
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %add.ptr19 = getelementptr inbounds float, ptr %27, i64 8
  store ptr %add.ptr19, ptr %a.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy) #6
  %28 = load <8 x float>, ptr %vb, align 32, !tbaa !10
  %29 = load <8 x float>, ptr %va, align 32, !tbaa !10
  %call20 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %28, <8 x float> noundef %29)
  store <8 x float> %call20, ptr %vy, align 32, !tbaa !10
  %30 = load <8 x float>, ptr %vy, align 32, !tbaa !10
  %31 = load <8 x float>, ptr %vy_min, align 32, !tbaa !10
  %call21 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %30, <8 x float> noundef %31)
  store <8 x float> %call21, ptr %vy, align 32, !tbaa !10
  %32 = load <8 x float>, ptr %vy, align 32, !tbaa !10
  %33 = load <8 x float>, ptr %vy_max, align 32, !tbaa !10
  %call22 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %32, <8 x float> noundef %33)
  store <8 x float> %call22, ptr %vy, align 32, !tbaa !10
  %34 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %35 = load <8 x float>, ptr %vy, align 32, !tbaa !10
  call void @_mm256_storeu_ps(ptr noundef %34, <8 x float> noundef %35)
  %36 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr23 = getelementptr inbounds float, ptr %36, i64 8
  store ptr %add.ptr23, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va) #6
  br label %for.inc24

for.inc24:                                        ; preds = %for.body17
  %37 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub25 = sub i64 %37, 32
  store i64 %sub25, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond15

for.end26:                                        ; preds = %for.cond15
  %38 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp27 = icmp ne i64 %38, 0
  %lnot = xor i1 %cmp27, true
  %lnot28 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot28 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end51

if.then:                                          ; preds = %for.end26
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmask) #6
  %39 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %mask_table = getelementptr inbounds %struct.anon.1, ptr %39, i32 0, i32 2
  %arrayidx = getelementptr inbounds [14 x i32], ptr %mask_table, i64 0, i64 7
  %40 = ptrtoint ptr %arrayidx to i64
  %41 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub29 = sub i64 %40, %41
  %42 = inttoptr i64 %sub29 to ptr
  %call30 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %42)
  store <4 x i64> %call30, ptr %vmask, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %va31) #6
  %43 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %44 = load <4 x i64>, ptr %vmask, align 32, !tbaa !10
  %call32 = call <8 x float> @_mm256_maskload_ps(ptr noundef %43, <4 x i64> noundef %44)
  store <8 x float> %call32, ptr %va31, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy33) #6
  %45 = load <8 x float>, ptr %vb, align 32, !tbaa !10
  %46 = load <8 x float>, ptr %va31, align 32, !tbaa !10
  %call34 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %45, <8 x float> noundef %46)
  store <8 x float> %call34, ptr %vy33, align 32, !tbaa !10
  %47 = load <8 x float>, ptr %vy33, align 32, !tbaa !10
  %48 = load <8 x float>, ptr %vy_min, align 32, !tbaa !10
  %call35 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %47, <8 x float> noundef %48)
  store <8 x float> %call35, ptr %vy33, align 32, !tbaa !10
  %49 = load <8 x float>, ptr %vy33, align 32, !tbaa !10
  %50 = load <8 x float>, ptr %vy_max, align 32, !tbaa !10
  %call36 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %49, <8 x float> noundef %50)
  store <8 x float> %call36, ptr %vy33, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy_lo) #6
  %51 = load <8 x float>, ptr %vy33, align 32, !tbaa !10
  %call37 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %51)
  store <4 x float> %call37, ptr %vy_lo, align 16, !tbaa !10
  %52 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and = and i64 %52, 16
  %tobool38 = icmp ne i64 %and, 0
  br i1 %tobool38, label %if.then39, label %if.end

if.then39:                                        ; preds = %if.then
  %53 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %54 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  call void @_mm_storeu_ps(ptr noundef %53, <4 x float> noundef %54)
  %55 = load <8 x float>, ptr %vy33, align 32, !tbaa !10
  %extract = shufflevector <8 x float> %55, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract, ptr %vy_lo, align 16, !tbaa !10
  %56 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr40 = getelementptr inbounds float, ptr %56, i64 4
  store ptr %add.ptr40, ptr %y.addr, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then39, %if.then
  %57 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and41 = and i64 %57, 8
  %tobool42 = icmp ne i64 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end
  %58 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %59 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  call void @_mm_storel_pi(ptr noundef %58, <4 x float> noundef %59)
  %60 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  %61 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  %call44 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %60, <4 x float> noundef %61)
  store <4 x float> %call44, ptr %vy_lo, align 16, !tbaa !10
  %62 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr45 = getelementptr inbounds float, ptr %62, i64 2
  store ptr %add.ptr45, ptr %y.addr, align 8, !tbaa !8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end
  %63 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and47 = and i64 %63, 4
  %tobool48 = icmp ne i64 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  %64 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %65 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  call void @_mm_store_ss(ptr noundef %64, <4 x float> noundef %65)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy_lo) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy33) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va31) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmask) #6
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %for.end26
  call void @llvm.lifetime.end.p0(i64 32, ptr %vb) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy_max) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy_min) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !10
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_broadcast_ss(ptr noundef %__a) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__f = alloca float, align 4
  %.compoundliteral = alloca <8 x float>, align 32
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__f) #6
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !8
  %__f1 = getelementptr inbounds %struct.__mm256_broadcast_ss_struct, ptr %0, i32 0, i32 0
  %1 = load float, ptr %__f1, align 1, !tbaa !10
  store float %1, ptr %__f, align 4, !tbaa !11
  %2 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit = insertelement <8 x float> undef, float %2, i32 0
  %3 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit2 = insertelement <8 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit3 = insertelement <8 x float> %vecinit2, float %4, i32 2
  %5 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit4 = insertelement <8 x float> %vecinit3, float %5, i32 3
  %6 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit5 = insertelement <8 x float> %vecinit4, float %6, i32 4
  %7 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit6 = insertelement <8 x float> %vecinit5, float %7, i32 5
  %8 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit7 = insertelement <8 x float> %vecinit6, float %8, i32 6
  %9 = load float, ptr %__f, align 4, !tbaa !11
  %vecinit8 = insertelement <8 x float> %vecinit7, float %9, i32 7
  store <8 x float> %vecinit8, ptr %.compoundliteral, align 32, !tbaa !10
  %10 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %__f) #6
  ret <8 x float> %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <8 x float>, ptr %__v, align 1, !tbaa !10
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_sub_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !10
  %sub = fsub <8 x float> %0, %1
  ret <8 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_max_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !10
  %2 = call <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_min_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !10
  %2 = call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_storeu_ps(ptr noundef %__p, <8 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <8 x float>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <8 x float> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_loadu_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si256, ptr %0, i32 0, i32 0
  %1 = load <4 x i64>, ptr %__v, align 1, !tbaa !10
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_maskload_ps(ptr noundef %__p, <4 x i64> noundef %__m) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__m.addr = alloca <4 x i64>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x i64> %__m, ptr %__m.addr, align 32, !tbaa !10
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <4 x i64>, ptr %__m.addr, align 32, !tbaa !10
  %2 = bitcast <4 x i64> %1 to <8 x i32>
  %3 = call <8 x float> @llvm.x86.avx.maskload.ps.256(ptr %0, <8 x i32> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %shuffle = shufflevector <8 x float> %0, <8 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_ps.2, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !10
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.x86.avx.maskload.ps.256(ptr, <8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}

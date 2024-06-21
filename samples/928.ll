; ModuleID = 'samples/928.bc'
source_filename = "/local-ssd/libcint-tccpyxz4b6k2ulsddqvgyt3h3ccdk6ok-build/aidengro/spack-stage-libcint-5.3.0-tccpyxz4b6k2ulsddqvgyt3h3ccdk6ok/spack-src/src/cint1e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CINTEnvVars = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon, %union.anon.0, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, [3 x double], [3 x double], ptr, ptr, ptr, ptr, ptr, %union.anon.1, ptr, ptr, ptr, ptr, ptr, [1 x double], [1 x double], [1 x double], [1 x double], [1 x double], [3 x double], [3 x double] }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { ptr }
%struct.PairData = type { [3 x double], double, double }

@__const.CINT1e_loop.empty = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@__const.int1e_ovlp_sph.ng = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], align 16
@__const.int1e_ovlp_cart.ng = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], align 16
@__const.int1e_ovlp_spinor.ng = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], align 16
@__const.int1e_nuc_sph.ng = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 16
@__const.int1e_nuc_cart.ng = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 16
@__const.int1e_nuc_spinor.ng = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 16

; Function Attrs: nounwind uwtable
define i32 @CINT1e_loop(ptr noundef %gctr, ptr noundef %envs, ptr noundef %cache, i32 noundef %int1e_type) #0 {
entry:
  %retval = alloca i32, align 4
  %gctr.addr = alloca ptr, align 8
  %envs.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %int1e_type.addr = alloca i32, align 4
  %shls = alloca ptr, align 8
  %bas = alloca ptr, align 8
  %env = alloca ptr, align 8
  %i_sh = alloca i32, align 4
  %j_sh = alloca i32, align 4
  %i_ctr = alloca i32, align 4
  %j_ctr = alloca i32, align 4
  %i_prim = alloca i32, align 4
  %j_prim = alloca i32, align 4
  %ai = alloca ptr, align 8
  %aj = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %cj = alloca ptr, align 8
  %n_comp = alloca i32, align 4
  %expcutoff = alloca double, align 8
  %log_maxci = alloca ptr, align 8
  %log_maxcj = alloca ptr, align 8
  %pdata_base = alloca ptr, align 8
  %pdata_ij = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fac1i = alloca double, align 8
  %fac1j = alloca double, align 8
  %expij = alloca double, align 8
  %ip = alloca i32, align 4
  %jp = alloca i32, align 4
  %empty = alloca [4 x i32], align 16
  %gempty = alloca ptr, align 8
  %iempty = alloca ptr, align 8
  %jempty = alloca ptr, align 8
  %rij = alloca ptr, align 8
  %idx = alloca ptr, align 8
  %non0ctri = alloca ptr, align 8
  %non0ctrj = alloca ptr, align 8
  %non0idxi = alloca ptr, align 8
  %non0idxj = alloca ptr, align 8
  %nc = alloca i32, align 4
  %leng = alloca i32, align 4
  %lenj = alloca i32, align 4
  %leni = alloca i32, align 4
  %len0 = alloca i32, align 4
  %len = alloca i32, align 4
  %g = alloca ptr, align 8
  %gout = alloca ptr, align 8
  %gctri = alloca ptr, align 8
  %gctrj = alloca ptr, align 8
  %g1 = alloca ptr, align 8
  %common_factor = alloca double, align 8
  store ptr %gctr, ptr %gctr.addr, align 8, !tbaa !4
  store ptr %envs, ptr %envs.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store i32 %int1e_type, ptr %int1e_type.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %shls) #7
  %0 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %shls1 = getelementptr inbounds %struct.CINTEnvVars, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %shls1, align 8, !tbaa !10
  store ptr %1, ptr %shls, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bas) #7
  %2 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %bas2 = getelementptr inbounds %struct.CINTEnvVars, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %bas2, align 8, !tbaa !13
  store ptr %3, ptr %bas, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %env) #7
  %4 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %env3 = getelementptr inbounds %struct.CINTEnvVars, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %env3, align 8, !tbaa !14
  store ptr %5, ptr %env, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_sh) #7
  %6 = load ptr, ptr %shls, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %7, ptr %i_sh, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_sh) #7
  %8 = load ptr, ptr %shls, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %arrayidx4, align 4, !tbaa !8
  store i32 %9, ptr %j_sh, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_ctr) #7
  %10 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %x_ctr = getelementptr inbounds %struct.CINTEnvVars, ptr %10, i32 0, i32 16
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %x_ctr, i64 0, i64 0
  %11 = load i32, ptr %arrayidx5, align 8, !tbaa !8
  store i32 %11, ptr %i_ctr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_ctr) #7
  %12 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %x_ctr6 = getelementptr inbounds %struct.CINTEnvVars, ptr %12, i32 0, i32 16
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %x_ctr6, i64 0, i64 1
  %13 = load i32, ptr %arrayidx7, align 4, !tbaa !8
  store i32 %13, ptr %j_ctr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_prim) #7
  %14 = load ptr, ptr %bas, align 8, !tbaa !4
  %15 = load i32, ptr %i_sh, align 4, !tbaa !8
  %mul = mul nsw i32 8, %15
  %add = add nsw i32 %mul, 2
  %idxprom = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom
  %16 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  store i32 %16, ptr %i_prim, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_prim) #7
  %17 = load ptr, ptr %bas, align 8, !tbaa !4
  %18 = load i32, ptr %j_sh, align 4, !tbaa !8
  %mul9 = mul nsw i32 8, %18
  %add10 = add nsw i32 %mul9, 2
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %17, i64 %idxprom11
  %19 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  store i32 %19, ptr %j_prim, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #7
  %20 = load ptr, ptr %env, align 8, !tbaa !4
  %21 = load ptr, ptr %bas, align 8, !tbaa !4
  %22 = load i32, ptr %i_sh, align 4, !tbaa !8
  %mul13 = mul nsw i32 8, %22
  %add14 = add nsw i32 %mul13, 5
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %21, i64 %idxprom15
  %23 = load i32, ptr %arrayidx16, align 4, !tbaa !8
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds double, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %ai, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aj) #7
  %24 = load ptr, ptr %env, align 8, !tbaa !4
  %25 = load ptr, ptr %bas, align 8, !tbaa !4
  %26 = load i32, ptr %j_sh, align 4, !tbaa !8
  %mul17 = mul nsw i32 8, %26
  %add18 = add nsw i32 %mul17, 5
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %25, i64 %idxprom19
  %27 = load i32, ptr %arrayidx20, align 4, !tbaa !8
  %idx.ext21 = sext i32 %27 to i64
  %add.ptr22 = getelementptr inbounds double, ptr %24, i64 %idx.ext21
  store ptr %add.ptr22, ptr %aj, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ci) #7
  %28 = load ptr, ptr %env, align 8, !tbaa !4
  %29 = load ptr, ptr %bas, align 8, !tbaa !4
  %30 = load i32, ptr %i_sh, align 4, !tbaa !8
  %mul23 = mul nsw i32 8, %30
  %add24 = add nsw i32 %mul23, 6
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %29, i64 %idxprom25
  %31 = load i32, ptr %arrayidx26, align 4, !tbaa !8
  %idx.ext27 = sext i32 %31 to i64
  %add.ptr28 = getelementptr inbounds double, ptr %28, i64 %idx.ext27
  store ptr %add.ptr28, ptr %ci, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cj) #7
  %32 = load ptr, ptr %env, align 8, !tbaa !4
  %33 = load ptr, ptr %bas, align 8, !tbaa !4
  %34 = load i32, ptr %j_sh, align 4, !tbaa !8
  %mul29 = mul nsw i32 8, %34
  %add30 = add nsw i32 %mul29, 6
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %33, i64 %idxprom31
  %35 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %idx.ext33 = sext i32 %35 to i64
  %add.ptr34 = getelementptr inbounds double, ptr %32, i64 %idx.ext33
  store ptr %add.ptr34, ptr %cj, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_comp) #7
  %36 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_e1 = getelementptr inbounds %struct.CINTEnvVars, ptr %36, i32 0, i32 18
  %37 = load i32, ptr %ncomp_e1, align 4, !tbaa !15
  %38 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_tensor = getelementptr inbounds %struct.CINTEnvVars, ptr %38, i32 0, i32 20
  %39 = load i32, ptr %ncomp_tensor, align 4, !tbaa !16
  %mul35 = mul nsw i32 %37, %39
  store i32 %mul35, ptr %n_comp, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %expcutoff) #7
  %40 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %expcutoff36 = getelementptr inbounds %struct.CINTEnvVars, ptr %40, i32 0, i32 34
  %41 = load double, ptr %expcutoff36, align 8, !tbaa !17
  store double %41, ptr %expcutoff, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %log_maxci) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %log_maxcj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdata_base) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdata_ij) #7
  %42 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %43 = ptrtoint ptr %42 to i64
  %add37 = add i64 %43, 7
  %and = and i64 %add37, -8
  %44 = inttoptr i64 %and to ptr
  store ptr %44, ptr %log_maxci, align 8, !tbaa !4
  %45 = load ptr, ptr %log_maxci, align 8, !tbaa !4
  %46 = load i32, ptr %i_prim, align 4, !tbaa !8
  %47 = load i32, ptr %j_prim, align 4, !tbaa !8
  %add38 = add nsw i32 %46, %47
  %idx.ext39 = sext i32 %add38 to i64
  %add.ptr40 = getelementptr inbounds double, ptr %45, i64 %idx.ext39
  store ptr %add.ptr40, ptr %cache.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %49 = ptrtoint ptr %48 to i64
  %add41 = add i64 %49, 7
  %and42 = and i64 %add41, -8
  %50 = inttoptr i64 %and42 to ptr
  store ptr %50, ptr %pdata_base, align 8, !tbaa !4
  %51 = load ptr, ptr %pdata_base, align 8, !tbaa !4
  %52 = load i32, ptr %i_prim, align 4, !tbaa !8
  %53 = load i32, ptr %j_prim, align 4, !tbaa !8
  %mul43 = mul nsw i32 %52, %53
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds %struct.PairData, ptr %51, i64 %idx.ext44
  store ptr %add.ptr45, ptr %cache.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %log_maxci, align 8, !tbaa !4
  %55 = load i32, ptr %i_prim, align 4, !tbaa !8
  %idx.ext46 = sext i32 %55 to i64
  %add.ptr47 = getelementptr inbounds double, ptr %54, i64 %idx.ext46
  store ptr %add.ptr47, ptr %log_maxcj, align 8, !tbaa !4
  %56 = load ptr, ptr %log_maxci, align 8, !tbaa !4
  %57 = load ptr, ptr %ci, align 8, !tbaa !4
  %58 = load i32, ptr %i_prim, align 4, !tbaa !8
  %59 = load i32, ptr %i_ctr, align 4, !tbaa !8
  call void @CINTOpt_log_max_pgto_coeff(ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef %59)
  %60 = load ptr, ptr %log_maxcj, align 8, !tbaa !4
  %61 = load ptr, ptr %cj, align 8, !tbaa !4
  %62 = load i32, ptr %j_prim, align 4, !tbaa !8
  %63 = load i32, ptr %j_ctr, align 4, !tbaa !8
  call void @CINTOpt_log_max_pgto_coeff(ptr noundef %60, ptr noundef %61, i32 noundef %62, i32 noundef %63)
  %64 = load ptr, ptr %pdata_base, align 8, !tbaa !4
  %65 = load ptr, ptr %ai, align 8, !tbaa !4
  %66 = load ptr, ptr %aj, align 8, !tbaa !4
  %67 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ri = getelementptr inbounds %struct.CINTEnvVars, ptr %67, i32 0, i32 39
  %68 = load ptr, ptr %ri, align 8, !tbaa !19
  %69 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rj = getelementptr inbounds %struct.CINTEnvVars, ptr %69, i32 0, i32 40
  %70 = load ptr, ptr %rj, align 8, !tbaa !20
  %71 = load ptr, ptr %log_maxci, align 8, !tbaa !4
  %72 = load ptr, ptr %log_maxcj, align 8, !tbaa !4
  %73 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %li_ceil = getelementptr inbounds %struct.CINTEnvVars, ptr %73, i32 0, i32 21
  %74 = load i32, ptr %li_ceil, align 8, !tbaa !21
  %75 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %lj_ceil = getelementptr inbounds %struct.CINTEnvVars, ptr %75, i32 0, i32 22
  %76 = load i32, ptr %lj_ceil, align 4, !tbaa !22
  %77 = load i32, ptr %i_prim, align 4, !tbaa !8
  %78 = load i32, ptr %j_prim, align 4, !tbaa !8
  %79 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rirj = getelementptr inbounds %struct.CINTEnvVars, ptr %79, i32 0, i32 35
  %arrayidx48 = getelementptr inbounds [3 x double], ptr %rirj, i64 0, i64 0
  %80 = load double, ptr %arrayidx48, align 8, !tbaa !18
  %81 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rirj49 = getelementptr inbounds %struct.CINTEnvVars, ptr %81, i32 0, i32 35
  %arrayidx50 = getelementptr inbounds [3 x double], ptr %rirj49, i64 0, i64 0
  %82 = load double, ptr %arrayidx50, align 8, !tbaa !18
  %83 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rirj52 = getelementptr inbounds %struct.CINTEnvVars, ptr %83, i32 0, i32 35
  %arrayidx53 = getelementptr inbounds [3 x double], ptr %rirj52, i64 0, i64 1
  %84 = load double, ptr %arrayidx53, align 8, !tbaa !18
  %85 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rirj54 = getelementptr inbounds %struct.CINTEnvVars, ptr %85, i32 0, i32 35
  %arrayidx55 = getelementptr inbounds [3 x double], ptr %rirj54, i64 0, i64 1
  %86 = load double, ptr %arrayidx55, align 8, !tbaa !18
  %mul56 = fmul double %84, %86
  %87 = call double @llvm.fmuladd.f64(double %80, double %82, double %mul56)
  %88 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rirj57 = getelementptr inbounds %struct.CINTEnvVars, ptr %88, i32 0, i32 35
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %rirj57, i64 0, i64 2
  %89 = load double, ptr %arrayidx58, align 8, !tbaa !18
  %90 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rirj59 = getelementptr inbounds %struct.CINTEnvVars, ptr %90, i32 0, i32 35
  %arrayidx60 = getelementptr inbounds [3 x double], ptr %rirj59, i64 0, i64 2
  %91 = load double, ptr %arrayidx60, align 8, !tbaa !18
  %92 = call double @llvm.fmuladd.f64(double %89, double %91, double %87)
  %93 = load double, ptr %expcutoff, align 8, !tbaa !18
  %94 = load ptr, ptr %env, align 8, !tbaa !4
  %call = call i32 @CINTset_pairdata(ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %68, ptr noundef %70, ptr noundef %71, ptr noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %77, i32 noundef %78, double noundef %92, double noundef %93, ptr noundef %94)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fac1i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fac1j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %expij) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %jp) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %empty) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %empty, ptr align 16 @__const.CINT1e_loop.empty, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %gempty) #7
  %arraydecay = getelementptr inbounds [4 x i32], ptr %empty, i64 0, i64 0
  %add.ptr62 = getelementptr inbounds i32, ptr %arraydecay, i64 0
  store ptr %add.ptr62, ptr %gempty, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %iempty) #7
  %arraydecay63 = getelementptr inbounds [4 x i32], ptr %empty, i64 0, i64 0
  %add.ptr64 = getelementptr inbounds i32, ptr %arraydecay63, i64 1
  store ptr %add.ptr64, ptr %iempty, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %jempty) #7
  %arraydecay65 = getelementptr inbounds [4 x i32], ptr %empty, i64 0, i64 0
  %add.ptr66 = getelementptr inbounds i32, ptr %arraydecay65, i64 2
  store ptr %add.ptr66, ptr %jempty, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rij) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7
  %95 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %96 = ptrtoint ptr %95 to i64
  %add67 = add i64 %96, 7
  %and68 = and i64 %add67, -8
  %97 = inttoptr i64 %and68 to ptr
  store ptr %97, ptr %idx, align 8, !tbaa !4
  %98 = load ptr, ptr %idx, align 8, !tbaa !4
  %99 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf = getelementptr inbounds %struct.CINTEnvVars, ptr %99, i32 0, i32 14
  %100 = load i32, ptr %nf, align 8, !tbaa !23
  %mul69 = mul nsw i32 %100, 3
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds i32, ptr %98, i64 %idx.ext70
  store ptr %add.ptr71, ptr %cache.addr, align 8, !tbaa !4
  %101 = load ptr, ptr %idx, align 8, !tbaa !4
  %102 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  call void @CINTg1e_index_xyz(ptr noundef %101, ptr noundef %102)
  call void @llvm.lifetime.start.p0(i64 8, ptr %non0ctri) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %non0ctrj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %non0idxi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %non0idxj) #7
  %103 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %104 = ptrtoint ptr %103 to i64
  %add72 = add i64 %104, 7
  %and73 = and i64 %add72, -8
  %105 = inttoptr i64 %and73 to ptr
  store ptr %105, ptr %non0ctri, align 8, !tbaa !4
  %106 = load ptr, ptr %non0ctri, align 8, !tbaa !4
  %107 = load i32, ptr %i_prim, align 4, !tbaa !8
  %108 = load i32, ptr %j_prim, align 4, !tbaa !8
  %add74 = add nsw i32 %107, %108
  %109 = load i32, ptr %i_prim, align 4, !tbaa !8
  %110 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %mul75 = mul nsw i32 %109, %110
  %add76 = add nsw i32 %add74, %mul75
  %111 = load i32, ptr %j_prim, align 4, !tbaa !8
  %112 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %mul77 = mul nsw i32 %111, %112
  %add78 = add nsw i32 %add76, %mul77
  %idx.ext79 = sext i32 %add78 to i64
  %add.ptr80 = getelementptr inbounds i32, ptr %106, i64 %idx.ext79
  store ptr %add.ptr80, ptr %cache.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %non0ctri, align 8, !tbaa !4
  %114 = load i32, ptr %i_prim, align 4, !tbaa !8
  %idx.ext81 = sext i32 %114 to i64
  %add.ptr82 = getelementptr inbounds i32, ptr %113, i64 %idx.ext81
  store ptr %add.ptr82, ptr %non0ctrj, align 8, !tbaa !4
  %115 = load ptr, ptr %non0ctrj, align 8, !tbaa !4
  %116 = load i32, ptr %j_prim, align 4, !tbaa !8
  %idx.ext83 = sext i32 %116 to i64
  %add.ptr84 = getelementptr inbounds i32, ptr %115, i64 %idx.ext83
  store ptr %add.ptr84, ptr %non0idxi, align 8, !tbaa !4
  %117 = load ptr, ptr %non0idxi, align 8, !tbaa !4
  %118 = load i32, ptr %i_prim, align 4, !tbaa !8
  %119 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %mul85 = mul nsw i32 %118, %119
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds i32, ptr %117, i64 %idx.ext86
  store ptr %add.ptr87, ptr %non0idxj, align 8, !tbaa !4
  %120 = load ptr, ptr %non0idxi, align 8, !tbaa !4
  %121 = load ptr, ptr %non0ctri, align 8, !tbaa !4
  %122 = load ptr, ptr %ci, align 8, !tbaa !4
  %123 = load i32, ptr %i_prim, align 4, !tbaa !8
  %124 = load i32, ptr %i_ctr, align 4, !tbaa !8
  call void @CINTOpt_non0coeff_byshell(ptr noundef %120, ptr noundef %121, ptr noundef %122, i32 noundef %123, i32 noundef %124)
  %125 = load ptr, ptr %non0idxj, align 8, !tbaa !4
  %126 = load ptr, ptr %non0ctrj, align 8, !tbaa !4
  %127 = load ptr, ptr %cj, align 8, !tbaa !4
  %128 = load i32, ptr %j_prim, align 4, !tbaa !8
  %129 = load i32, ptr %j_ctr, align 4, !tbaa !8
  call void @CINTOpt_non0coeff_byshell(ptr noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %128, i32 noundef %129)
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #7
  %130 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %131 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %mul88 = mul nsw i32 %130, %131
  store i32 %mul88, ptr %nc, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %leng) #7
  %132 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %g_size = getelementptr inbounds %struct.CINTEnvVars, ptr %132, i32 0, i32 30
  %133 = load i32, ptr %g_size, align 4, !tbaa !24
  %mul89 = mul nsw i32 %133, 3
  %134 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %gbits = getelementptr inbounds %struct.CINTEnvVars, ptr %134, i32 0, i32 17
  %135 = load i32, ptr %gbits, align 8, !tbaa !25
  %shl = shl i32 1, %135
  %add90 = add nsw i32 %shl, 1
  %mul91 = mul nsw i32 %mul89, %add90
  store i32 %mul91, ptr %leng, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %lenj) #7
  %136 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf92 = getelementptr inbounds %struct.CINTEnvVars, ptr %136, i32 0, i32 14
  %137 = load i32, ptr %nf92, align 8, !tbaa !23
  %138 = load i32, ptr %nc, align 4, !tbaa !8
  %mul93 = mul nsw i32 %137, %138
  %139 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul94 = mul nsw i32 %mul93, %139
  store i32 %mul94, ptr %lenj, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %leni) #7
  %140 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf95 = getelementptr inbounds %struct.CINTEnvVars, ptr %140, i32 0, i32 14
  %141 = load i32, ptr %nf95, align 8, !tbaa !23
  %142 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %mul96 = mul nsw i32 %141, %142
  %143 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul97 = mul nsw i32 %mul96, %143
  store i32 %mul97, ptr %leni, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len0) #7
  %144 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf98 = getelementptr inbounds %struct.CINTEnvVars, ptr %144, i32 0, i32 14
  %145 = load i32, ptr %nf98, align 8, !tbaa !23
  %146 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul99 = mul nsw i32 %145, %146
  store i32 %mul99, ptr %len0, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7
  %147 = load i32, ptr %leng, align 4, !tbaa !8
  %148 = load i32, ptr %lenj, align 4, !tbaa !8
  %add100 = add nsw i32 %147, %148
  %149 = load i32, ptr %leni, align 4, !tbaa !8
  %add101 = add nsw i32 %add100, %149
  %150 = load i32, ptr %len0, align 4, !tbaa !8
  %add102 = add nsw i32 %add101, %150
  store i32 %add102, ptr %len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gout) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gctri) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gctrj) #7
  %151 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %152 = ptrtoint ptr %151 to i64
  %add103 = add i64 %152, 7
  %and104 = and i64 %add103, -8
  %153 = inttoptr i64 %and104 to ptr
  store ptr %153, ptr %g, align 8, !tbaa !4
  %154 = load ptr, ptr %g, align 8, !tbaa !4
  %155 = load i32, ptr %len, align 4, !tbaa !8
  %idx.ext105 = sext i32 %155 to i64
  %add.ptr106 = getelementptr inbounds double, ptr %154, i64 %idx.ext105
  store ptr %add.ptr106, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %g1) #7
  %156 = load ptr, ptr %g, align 8, !tbaa !4
  %157 = load i32, ptr %leng, align 4, !tbaa !8
  %idx.ext107 = sext i32 %157 to i64
  %add.ptr108 = getelementptr inbounds double, ptr %156, i64 %idx.ext107
  store ptr %add.ptr108, ptr %g1, align 8, !tbaa !4
  %158 = load i32, ptr %n_comp, align 4, !tbaa !8
  %cmp = icmp eq i32 %158, 1
  br i1 %cmp, label %if.then109, label %if.else

if.then109:                                       ; preds = %if.end
  %159 = load ptr, ptr %gctr.addr, align 8, !tbaa !4
  store ptr %159, ptr %gctrj, align 8, !tbaa !4
  br label %if.end112

if.else:                                          ; preds = %if.end
  %160 = load ptr, ptr %g1, align 8, !tbaa !4
  store ptr %160, ptr %gctrj, align 8, !tbaa !4
  %161 = load i32, ptr %lenj, align 4, !tbaa !8
  %162 = load ptr, ptr %g1, align 8, !tbaa !4
  %idx.ext110 = sext i32 %161 to i64
  %add.ptr111 = getelementptr inbounds double, ptr %162, i64 %idx.ext110
  store ptr %add.ptr111, ptr %g1, align 8, !tbaa !4
  br label %if.end112

if.end112:                                        ; preds = %if.else, %if.then109
  %163 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %cmp113 = icmp eq i32 %163, 1
  br i1 %cmp113, label %if.then114, label %if.else115

if.then114:                                       ; preds = %if.end112
  %164 = load ptr, ptr %gctrj, align 8, !tbaa !4
  store ptr %164, ptr %gctri, align 8, !tbaa !4
  %165 = load ptr, ptr %jempty, align 8, !tbaa !4
  store ptr %165, ptr %iempty, align 8, !tbaa !4
  br label %if.end118

if.else115:                                       ; preds = %if.end112
  %166 = load ptr, ptr %g1, align 8, !tbaa !4
  store ptr %166, ptr %gctri, align 8, !tbaa !4
  %167 = load i32, ptr %leni, align 4, !tbaa !8
  %168 = load ptr, ptr %g1, align 8, !tbaa !4
  %idx.ext116 = sext i32 %167 to i64
  %add.ptr117 = getelementptr inbounds double, ptr %168, i64 %idx.ext116
  store ptr %add.ptr117, ptr %g1, align 8, !tbaa !4
  br label %if.end118

if.end118:                                        ; preds = %if.else115, %if.then114
  %169 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %cmp119 = icmp eq i32 %169, 1
  br i1 %cmp119, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.end118
  %170 = load ptr, ptr %gctri, align 8, !tbaa !4
  store ptr %170, ptr %gout, align 8, !tbaa !4
  %171 = load ptr, ptr %iempty, align 8, !tbaa !4
  store ptr %171, ptr %gempty, align 8, !tbaa !4
  br label %if.end122

if.else121:                                       ; preds = %if.end118
  %172 = load ptr, ptr %g1, align 8, !tbaa !4
  store ptr %172, ptr %gout, align 8, !tbaa !4
  br label %if.end122

if.end122:                                        ; preds = %if.else121, %if.then120
  call void @llvm.lifetime.start.p0(i64 8, ptr %common_factor) #7
  %173 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %common_factor123 = getelementptr inbounds %struct.CINTEnvVars, ptr %173, i32 0, i32 33
  %174 = load double, ptr %common_factor123, align 8, !tbaa !26
  %175 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %i_l = getelementptr inbounds %struct.CINTEnvVars, ptr %175, i32 0, i32 6
  %176 = load i32, ptr %i_l, align 8, !tbaa !27
  %call124 = call double @CINTcommon_fac_sp(i32 noundef %176)
  %mul125 = fmul double %174, %call124
  %177 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %j_l = getelementptr inbounds %struct.CINTEnvVars, ptr %177, i32 0, i32 7
  %178 = load i32, ptr %j_l, align 4, !tbaa !28
  %call126 = call double @CINTcommon_fac_sp(i32 noundef %178)
  %mul127 = fmul double %mul125, %call126
  store double %mul127, ptr %common_factor, align 8, !tbaa !18
  %179 = load ptr, ptr %pdata_base, align 8, !tbaa !4
  store ptr %179, ptr %pdata_ij, align 8, !tbaa !4
  store i32 0, ptr %jp, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc230, %if.end122
  %180 = load i32, ptr %jp, align 4, !tbaa !8
  %181 = load i32, ptr %j_prim, align 4, !tbaa !8
  %cmp128 = icmp slt i32 %180, %181
  br i1 %cmp128, label %for.body, label %for.end232

for.body:                                         ; preds = %for.cond
  %182 = load ptr, ptr %aj, align 8, !tbaa !4
  %183 = load i32, ptr %jp, align 4, !tbaa !8
  %idxprom129 = sext i32 %183 to i64
  %arrayidx130 = getelementptr inbounds double, ptr %182, i64 %idxprom129
  %184 = load double, ptr %arrayidx130, align 8, !tbaa !18
  %185 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %aj131 = getelementptr inbounds %struct.CINTEnvVars, ptr %185, i32 0, i32 49
  %arrayidx132 = getelementptr inbounds [1 x double], ptr %aj131, i64 0, i64 0
  store double %184, ptr %arrayidx132, align 8, !tbaa !18
  %186 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %cmp133 = icmp eq i32 %186, 1
  br i1 %cmp133, label %if.then134, label %if.else138

if.then134:                                       ; preds = %for.body
  %187 = load double, ptr %common_factor, align 8, !tbaa !18
  %188 = load ptr, ptr %cj, align 8, !tbaa !4
  %189 = load i32, ptr %jp, align 4, !tbaa !8
  %idxprom135 = sext i32 %189 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %188, i64 %idxprom135
  %190 = load double, ptr %arrayidx136, align 8, !tbaa !18
  %mul137 = fmul double %187, %190
  store double %mul137, ptr %fac1j, align 8, !tbaa !18
  br label %if.end139

if.else138:                                       ; preds = %for.body
  %191 = load double, ptr %common_factor, align 8, !tbaa !18
  store double %191, ptr %fac1j, align 8, !tbaa !18
  %192 = load ptr, ptr %iempty, align 8, !tbaa !4
  store i32 1, ptr %192, align 4, !tbaa !8
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then134
  store i32 0, ptr %ip, align 4, !tbaa !8
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc, %if.end139
  %193 = load i32, ptr %ip, align 4, !tbaa !8
  %194 = load i32, ptr %i_prim, align 4, !tbaa !8
  %cmp141 = icmp slt i32 %193, %194
  br i1 %cmp141, label %for.body142, label %for.end

for.body142:                                      ; preds = %for.cond140
  %195 = load ptr, ptr %pdata_ij, align 8, !tbaa !4
  %cceij = getelementptr inbounds %struct.PairData, ptr %195, i32 0, i32 2
  %196 = load double, ptr %cceij, align 8, !tbaa !29
  %197 = load double, ptr %expcutoff, align 8, !tbaa !18
  %cmp143 = fcmp ogt double %196, %197
  br i1 %cmp143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %for.body142
  br label %for.inc

if.end145:                                        ; preds = %for.body142
  %198 = load ptr, ptr %ai, align 8, !tbaa !4
  %199 = load i32, ptr %ip, align 4, !tbaa !8
  %idxprom146 = sext i32 %199 to i64
  %arrayidx147 = getelementptr inbounds double, ptr %198, i64 %idxprom146
  %200 = load double, ptr %arrayidx147, align 8, !tbaa !18
  %201 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ai148 = getelementptr inbounds %struct.CINTEnvVars, ptr %201, i32 0, i32 48
  %arrayidx149 = getelementptr inbounds [1 x double], ptr %ai148, i64 0, i64 0
  store double %200, ptr %arrayidx149, align 8, !tbaa !18
  %202 = load ptr, ptr %pdata_ij, align 8, !tbaa !4
  %eij = getelementptr inbounds %struct.PairData, ptr %202, i32 0, i32 1
  %203 = load double, ptr %eij, align 8, !tbaa !31
  store double %203, ptr %expij, align 8, !tbaa !18
  %204 = load ptr, ptr %pdata_ij, align 8, !tbaa !4
  %rij150 = getelementptr inbounds %struct.PairData, ptr %204, i32 0, i32 0
  %arraydecay151 = getelementptr inbounds [3 x double], ptr %rij150, i64 0, i64 0
  store ptr %arraydecay151, ptr %rij, align 8, !tbaa !4
  %205 = load ptr, ptr %rij, align 8, !tbaa !4
  %arrayidx152 = getelementptr inbounds double, ptr %205, i64 0
  %206 = load double, ptr %arrayidx152, align 8, !tbaa !18
  %207 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rij153 = getelementptr inbounds %struct.CINTEnvVars, ptr %207, i32 0, i32 53
  %arrayidx154 = getelementptr inbounds [3 x double], ptr %rij153, i64 0, i64 0
  store double %206, ptr %arrayidx154, align 8, !tbaa !18
  %208 = load ptr, ptr %rij, align 8, !tbaa !4
  %arrayidx155 = getelementptr inbounds double, ptr %208, i64 1
  %209 = load double, ptr %arrayidx155, align 8, !tbaa !18
  %210 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rij156 = getelementptr inbounds %struct.CINTEnvVars, ptr %210, i32 0, i32 53
  %arrayidx157 = getelementptr inbounds [3 x double], ptr %rij156, i64 0, i64 1
  store double %209, ptr %arrayidx157, align 8, !tbaa !18
  %211 = load ptr, ptr %rij, align 8, !tbaa !4
  %arrayidx158 = getelementptr inbounds double, ptr %211, i64 2
  %212 = load double, ptr %arrayidx158, align 8, !tbaa !18
  %213 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %rij159 = getelementptr inbounds %struct.CINTEnvVars, ptr %213, i32 0, i32 53
  %arrayidx160 = getelementptr inbounds [3 x double], ptr %rij159, i64 0, i64 2
  store double %212, ptr %arrayidx160, align 8, !tbaa !18
  %214 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %cmp161 = icmp eq i32 %214, 1
  br i1 %cmp161, label %if.then162, label %if.else167

if.then162:                                       ; preds = %if.end145
  %215 = load double, ptr %fac1j, align 8, !tbaa !18
  %216 = load ptr, ptr %ci, align 8, !tbaa !4
  %217 = load i32, ptr %ip, align 4, !tbaa !8
  %idxprom163 = sext i32 %217 to i64
  %arrayidx164 = getelementptr inbounds double, ptr %216, i64 %idxprom163
  %218 = load double, ptr %arrayidx164, align 8, !tbaa !18
  %mul165 = fmul double %215, %218
  %219 = load double, ptr %expij, align 8, !tbaa !18
  %mul166 = fmul double %mul165, %219
  store double %mul166, ptr %fac1i, align 8, !tbaa !18
  br label %if.end169

if.else167:                                       ; preds = %if.end145
  %220 = load double, ptr %fac1j, align 8, !tbaa !18
  %221 = load double, ptr %expij, align 8, !tbaa !18
  %mul168 = fmul double %220, %221
  store double %mul168, ptr %fac1i, align 8, !tbaa !18
  br label %if.end169

if.end169:                                        ; preds = %if.else167, %if.then162
  %222 = load double, ptr %fac1i, align 8, !tbaa !18
  %223 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %fac = getelementptr inbounds %struct.CINTEnvVars, ptr %223, i32 0, i32 52
  %arrayidx170 = getelementptr inbounds [1 x double], ptr %fac, i64 0, i64 0
  store double %222, ptr %arrayidx170, align 8, !tbaa !18
  %224 = load ptr, ptr %gout, align 8, !tbaa !4
  %225 = load ptr, ptr %g, align 8, !tbaa !4
  %226 = load ptr, ptr %idx, align 8, !tbaa !4
  %227 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %228 = load ptr, ptr %gempty, align 8, !tbaa !4
  %229 = load i32, ptr %228, align 4, !tbaa !8
  %230 = load i32, ptr %int1e_type.addr, align 4, !tbaa !8
  call void @make_g1e_gout(ptr noundef %224, ptr noundef %225, ptr noundef %226, ptr noundef %227, i32 noundef %229, i32 noundef %230)
  %231 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %cmp171 = icmp sgt i32 %231, 1
  br i1 %cmp171, label %if.then172, label %if.end196

if.then172:                                       ; preds = %if.end169
  %232 = load ptr, ptr %iempty, align 8, !tbaa !4
  %233 = load i32, ptr %232, align 4, !tbaa !8
  %tobool173 = icmp ne i32 %233, 0
  br i1 %tobool173, label %if.then174, label %if.else184

if.then174:                                       ; preds = %if.then172
  %234 = load ptr, ptr %gctri, align 8, !tbaa !4
  %235 = load ptr, ptr %gout, align 8, !tbaa !4
  %236 = load ptr, ptr %ci, align 8, !tbaa !4
  %237 = load i32, ptr %ip, align 4, !tbaa !8
  %idx.ext175 = sext i32 %237 to i64
  %add.ptr176 = getelementptr inbounds double, ptr %236, i64 %idx.ext175
  %238 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf177 = getelementptr inbounds %struct.CINTEnvVars, ptr %238, i32 0, i32 14
  %239 = load i32, ptr %nf177, align 8, !tbaa !23
  %240 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul178 = mul nsw i32 %239, %240
  %conv = sext i32 %mul178 to i64
  %241 = load i32, ptr %i_prim, align 4, !tbaa !8
  %242 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %243 = load ptr, ptr %non0ctri, align 8, !tbaa !4
  %244 = load i32, ptr %ip, align 4, !tbaa !8
  %idxprom179 = sext i32 %244 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %243, i64 %idxprom179
  %245 = load i32, ptr %arrayidx180, align 4, !tbaa !8
  %246 = load ptr, ptr %non0idxi, align 8, !tbaa !4
  %247 = load i32, ptr %ip, align 4, !tbaa !8
  %248 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %mul181 = mul nsw i32 %247, %248
  %idx.ext182 = sext i32 %mul181 to i64
  %add.ptr183 = getelementptr inbounds i32, ptr %246, i64 %idx.ext182
  call void @CINTprim_to_ctr_0(ptr noundef %234, ptr noundef %235, ptr noundef %add.ptr176, i64 noundef %conv, i32 noundef %241, i32 noundef %242, i32 noundef %245, ptr noundef %add.ptr183)
  br label %if.end195

if.else184:                                       ; preds = %if.then172
  %249 = load ptr, ptr %gctri, align 8, !tbaa !4
  %250 = load ptr, ptr %gout, align 8, !tbaa !4
  %251 = load ptr, ptr %ci, align 8, !tbaa !4
  %252 = load i32, ptr %ip, align 4, !tbaa !8
  %idx.ext185 = sext i32 %252 to i64
  %add.ptr186 = getelementptr inbounds double, ptr %251, i64 %idx.ext185
  %253 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf187 = getelementptr inbounds %struct.CINTEnvVars, ptr %253, i32 0, i32 14
  %254 = load i32, ptr %nf187, align 8, !tbaa !23
  %255 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul188 = mul nsw i32 %254, %255
  %conv189 = sext i32 %mul188 to i64
  %256 = load i32, ptr %i_prim, align 4, !tbaa !8
  %257 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %258 = load ptr, ptr %non0ctri, align 8, !tbaa !4
  %259 = load i32, ptr %ip, align 4, !tbaa !8
  %idxprom190 = sext i32 %259 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %258, i64 %idxprom190
  %260 = load i32, ptr %arrayidx191, align 4, !tbaa !8
  %261 = load ptr, ptr %non0idxi, align 8, !tbaa !4
  %262 = load i32, ptr %ip, align 4, !tbaa !8
  %263 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %mul192 = mul nsw i32 %262, %263
  %idx.ext193 = sext i32 %mul192 to i64
  %add.ptr194 = getelementptr inbounds i32, ptr %261, i64 %idx.ext193
  call void @CINTprim_to_ctr_1(ptr noundef %249, ptr noundef %250, ptr noundef %add.ptr186, i64 noundef %conv189, i32 noundef %256, i32 noundef %257, i32 noundef %260, ptr noundef %add.ptr194)
  br label %if.end195

if.end195:                                        ; preds = %if.else184, %if.then174
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.end169
  %264 = load ptr, ptr %iempty, align 8, !tbaa !4
  store i32 0, ptr %264, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end196, %if.then144
  %265 = load i32, ptr %ip, align 4, !tbaa !8
  %inc = add nsw i32 %265, 1
  store i32 %inc, ptr %ip, align 4, !tbaa !8
  %266 = load ptr, ptr %pdata_ij, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.PairData, ptr %266, i32 1
  store ptr %incdec.ptr, ptr %pdata_ij, align 8, !tbaa !4
  br label %for.cond140, !llvm.loop !32

for.end:                                          ; preds = %for.cond140
  %267 = load ptr, ptr %iempty, align 8, !tbaa !4
  %268 = load i32, ptr %267, align 4, !tbaa !8
  %tobool197 = icmp ne i32 %268, 0
  br i1 %tobool197, label %if.end229, label %if.then198

if.then198:                                       ; preds = %for.end
  %269 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %cmp199 = icmp sgt i32 %269, 1
  br i1 %cmp199, label %if.then201, label %if.end228

if.then201:                                       ; preds = %if.then198
  %270 = load ptr, ptr %jempty, align 8, !tbaa !4
  %271 = load i32, ptr %270, align 4, !tbaa !8
  %tobool202 = icmp ne i32 %271, 0
  br i1 %tobool202, label %if.then203, label %if.else215

if.then203:                                       ; preds = %if.then201
  %272 = load ptr, ptr %gctrj, align 8, !tbaa !4
  %273 = load ptr, ptr %gctri, align 8, !tbaa !4
  %274 = load ptr, ptr %cj, align 8, !tbaa !4
  %275 = load i32, ptr %jp, align 4, !tbaa !8
  %idx.ext204 = sext i32 %275 to i64
  %add.ptr205 = getelementptr inbounds double, ptr %274, i64 %idx.ext204
  %276 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf206 = getelementptr inbounds %struct.CINTEnvVars, ptr %276, i32 0, i32 14
  %277 = load i32, ptr %nf206, align 8, !tbaa !23
  %278 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %mul207 = mul nsw i32 %277, %278
  %279 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul208 = mul nsw i32 %mul207, %279
  %conv209 = sext i32 %mul208 to i64
  %280 = load i32, ptr %j_prim, align 4, !tbaa !8
  %281 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %282 = load ptr, ptr %non0ctrj, align 8, !tbaa !4
  %283 = load i32, ptr %jp, align 4, !tbaa !8
  %idxprom210 = sext i32 %283 to i64
  %arrayidx211 = getelementptr inbounds i32, ptr %282, i64 %idxprom210
  %284 = load i32, ptr %arrayidx211, align 4, !tbaa !8
  %285 = load ptr, ptr %non0idxj, align 8, !tbaa !4
  %286 = load i32, ptr %jp, align 4, !tbaa !8
  %287 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %mul212 = mul nsw i32 %286, %287
  %idx.ext213 = sext i32 %mul212 to i64
  %add.ptr214 = getelementptr inbounds i32, ptr %285, i64 %idx.ext213
  call void @CINTprim_to_ctr_0(ptr noundef %272, ptr noundef %273, ptr noundef %add.ptr205, i64 noundef %conv209, i32 noundef %280, i32 noundef %281, i32 noundef %284, ptr noundef %add.ptr214)
  br label %if.end227

if.else215:                                       ; preds = %if.then201
  %288 = load ptr, ptr %gctrj, align 8, !tbaa !4
  %289 = load ptr, ptr %gctri, align 8, !tbaa !4
  %290 = load ptr, ptr %cj, align 8, !tbaa !4
  %291 = load i32, ptr %jp, align 4, !tbaa !8
  %idx.ext216 = sext i32 %291 to i64
  %add.ptr217 = getelementptr inbounds double, ptr %290, i64 %idx.ext216
  %292 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf218 = getelementptr inbounds %struct.CINTEnvVars, ptr %292, i32 0, i32 14
  %293 = load i32, ptr %nf218, align 8, !tbaa !23
  %294 = load i32, ptr %i_ctr, align 4, !tbaa !8
  %mul219 = mul nsw i32 %293, %294
  %295 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul220 = mul nsw i32 %mul219, %295
  %conv221 = sext i32 %mul220 to i64
  %296 = load i32, ptr %j_prim, align 4, !tbaa !8
  %297 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %298 = load ptr, ptr %non0ctrj, align 8, !tbaa !4
  %299 = load i32, ptr %jp, align 4, !tbaa !8
  %idxprom222 = sext i32 %299 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %298, i64 %idxprom222
  %300 = load i32, ptr %arrayidx223, align 4, !tbaa !8
  %301 = load ptr, ptr %non0idxj, align 8, !tbaa !4
  %302 = load i32, ptr %jp, align 4, !tbaa !8
  %303 = load i32, ptr %j_ctr, align 4, !tbaa !8
  %mul224 = mul nsw i32 %302, %303
  %idx.ext225 = sext i32 %mul224 to i64
  %add.ptr226 = getelementptr inbounds i32, ptr %301, i64 %idx.ext225
  call void @CINTprim_to_ctr_1(ptr noundef %288, ptr noundef %289, ptr noundef %add.ptr217, i64 noundef %conv221, i32 noundef %296, i32 noundef %297, i32 noundef %300, ptr noundef %add.ptr226)
  br label %if.end227

if.end227:                                        ; preds = %if.else215, %if.then203
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.then198
  %304 = load ptr, ptr %jempty, align 8, !tbaa !4
  store i32 0, ptr %304, align 4, !tbaa !8
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %for.end
  br label %for.inc230

for.inc230:                                       ; preds = %if.end229
  %305 = load i32, ptr %jp, align 4, !tbaa !8
  %inc231 = add nsw i32 %305, 1
  store i32 %inc231, ptr %jp, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !34

for.end232:                                       ; preds = %for.cond
  %306 = load i32, ptr %n_comp, align 4, !tbaa !8
  %cmp233 = icmp sgt i32 %306, 1
  br i1 %cmp233, label %land.lhs.true, label %if.end239

land.lhs.true:                                    ; preds = %for.end232
  %307 = load ptr, ptr %jempty, align 8, !tbaa !4
  %308 = load i32, ptr %307, align 4, !tbaa !8
  %tobool235 = icmp ne i32 %308, 0
  br i1 %tobool235, label %if.end239, label %if.then236

if.then236:                                       ; preds = %land.lhs.true
  %309 = load ptr, ptr %gctr.addr, align 8, !tbaa !4
  %310 = load ptr, ptr %gctrj, align 8, !tbaa !4
  %311 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf237 = getelementptr inbounds %struct.CINTEnvVars, ptr %311, i32 0, i32 14
  %312 = load i32, ptr %nf237, align 8, !tbaa !23
  %313 = load i32, ptr %nc, align 4, !tbaa !8
  %mul238 = mul nsw i32 %312, %313
  %314 = load i32, ptr %n_comp, align 4, !tbaa !8
  call void @CINTdmat_transpose(ptr noundef %309, ptr noundef %310, i32 noundef %mul238, i32 noundef %314)
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %land.lhs.true, %for.end232
  %315 = load ptr, ptr %jempty, align 8, !tbaa !4
  %316 = load i32, ptr %315, align 4, !tbaa !8
  %tobool240 = icmp ne i32 %316, 0
  %lnot = xor i1 %tobool240, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %common_factor) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %g1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gctrj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gctri) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gout) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %len0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %leni) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lenj) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %leng) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %non0idxj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %non0idxi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %non0ctrj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %non0ctri) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %rij) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jempty) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iempty) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gempty) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %empty) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ip) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %expij) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fac1j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fac1i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end239, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdata_ij) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdata_base) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %log_maxcj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %log_maxci) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %expcutoff) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_comp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ci) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %aj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_prim) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_prim) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_ctr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_ctr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_sh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_sh) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %env) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bas) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %shls) #7
  %317 = load i32, ptr %retval, align 4
  ret i32 %317
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @CINTOpt_log_max_pgto_coeff(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @CINTset_pairdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @CINTg1e_index_xyz(ptr noundef, ptr noundef) #2

declare void @CINTOpt_non0coeff_byshell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare double @CINTcommon_fac_sp(i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @make_g1e_gout(ptr noundef %gout, ptr noundef %g, ptr noundef %idx, ptr noundef %envs, i32 noundef %empty, i32 noundef %int1e_type) #0 {
entry:
  %gout.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %idx.addr = alloca ptr, align 8
  %envs.addr = alloca ptr, align 8
  %empty.addr = alloca i32, align 4
  %int1e_type.addr = alloca i32, align 4
  %ia = alloca i32, align 4
  store ptr %gout, ptr %gout.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %idx, ptr %idx.addr, align 8, !tbaa !4
  store ptr %envs, ptr %envs.addr, align 8, !tbaa !4
  store i32 %empty, ptr %empty.addr, align 4, !tbaa !8
  store i32 %int1e_type, ptr %int1e_type.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia) #7
  %0 = load i32, ptr %int1e_type.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %call = call i32 @CINTg1e_ovlp(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %f_gout = getelementptr inbounds %struct.CINTEnvVars, ptr %3, i32 0, i32 45
  %4 = load ptr, ptr %f_gout, align 8, !tbaa !35
  %5 = load ptr, ptr %gout.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %9 = load i32, ptr %empty.addr, align 4, !tbaa !8
  call void (ptr, ptr, ptr, ptr, i32, ...) %4(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %10 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %call2 = call i32 @CINTg1e_nuc(ptr noundef %10, ptr noundef %11, i32 noundef -1)
  %12 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %f_gout3 = getelementptr inbounds %struct.CINTEnvVars, ptr %12, i32 0, i32 45
  %13 = load ptr, ptr %f_gout3, align 8, !tbaa !35
  %14 = load ptr, ptr %gout.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %18 = load i32, ptr %empty.addr, align 4, !tbaa !8
  call void (ptr, ptr, ptr, ptr, i32, ...) %13(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 0, ptr %ia, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb4
  %19 = load i32, ptr %ia, align 4, !tbaa !8
  %20 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %natm = getelementptr inbounds %struct.CINTEnvVars, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %natm, align 8, !tbaa !36
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %24 = load i32, ptr %ia, align 4, !tbaa !8
  %call5 = call i32 @CINTg1e_nuc(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  %25 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %f_gout6 = getelementptr inbounds %struct.CINTEnvVars, ptr %25, i32 0, i32 45
  %26 = load ptr, ptr %f_gout6, align 8, !tbaa !35
  %27 = load ptr, ptr %gout.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %31 = load i32, ptr %empty.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %32 = load i32, ptr %ia, align 4, !tbaa !8
  %cmp7 = icmp eq i32 %32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %33 = phi i1 [ false, %for.body ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %33 to i32
  call void (ptr, ptr, ptr, ptr, i32, ...) %26(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %land.ext)
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %34 = load i32, ptr %ia, align 4, !tbaa !8
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %ia, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia) #7
  ret void
}

declare void @CINTprim_to_ctr_0(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @CINTprim_to_ctr_1(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @CINTdmat_transpose(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @int1e_cache_size(ptr noundef %envs) #0 {
entry:
  %envs.addr = alloca ptr, align 8
  %shls = alloca ptr, align 8
  %bas = alloca ptr, align 8
  %i_prim = alloca i32, align 4
  %j_prim = alloca i32, align 4
  %x_ctr = alloca ptr, align 8
  %nc = alloca i32, align 4
  %n_comp = alloca i32, align 4
  %leng = alloca i32, align 4
  %lenj = alloca i32, align 4
  %leni = alloca i32, align 4
  %len0 = alloca i32, align 4
  %pdata_size = alloca i32, align 4
  %cache_size = alloca i32, align 4
  store ptr %envs, ptr %envs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %shls) #7
  %0 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %shls1 = getelementptr inbounds %struct.CINTEnvVars, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %shls1, align 8, !tbaa !10
  store ptr %1, ptr %shls, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bas) #7
  %2 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %bas2 = getelementptr inbounds %struct.CINTEnvVars, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %bas2, align 8, !tbaa !13
  store ptr %3, ptr %bas, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_prim) #7
  %4 = load ptr, ptr %bas, align 8, !tbaa !4
  %5 = load ptr, ptr %shls, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %mul = mul nsw i32 8, %6
  %add = add nsw i32 %mul, 2
  %idxprom = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %7 = load i32, ptr %arrayidx3, align 4, !tbaa !8
  store i32 %7, ptr %i_prim, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_prim) #7
  %8 = load ptr, ptr %bas, align 8, !tbaa !4
  %9 = load ptr, ptr %shls, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i32, ptr %9, i64 1
  %10 = load i32, ptr %arrayidx4, align 4, !tbaa !8
  %mul5 = mul nsw i32 8, %10
  %add6 = add nsw i32 %mul5, 2
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %8, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  store i32 %11, ptr %j_prim, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ctr) #7
  %12 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %x_ctr9 = getelementptr inbounds %struct.CINTEnvVars, ptr %12, i32 0, i32 16
  %arraydecay = getelementptr inbounds [4 x i32], ptr %x_ctr9, i64 0, i64 0
  store ptr %arraydecay, ptr %x_ctr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #7
  %13 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf = getelementptr inbounds %struct.CINTEnvVars, ptr %13, i32 0, i32 14
  %14 = load i32, ptr %nf, align 8, !tbaa !23
  %15 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 0
  %16 = load i32, ptr %arrayidx10, align 4, !tbaa !8
  %mul11 = mul nsw i32 %14, %16
  %17 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i32, ptr %17, i64 1
  %18 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %mul13 = mul nsw i32 %mul11, %18
  store i32 %mul13, ptr %nc, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_comp) #7
  %19 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_e1 = getelementptr inbounds %struct.CINTEnvVars, ptr %19, i32 0, i32 18
  %20 = load i32, ptr %ncomp_e1, align 4, !tbaa !15
  %21 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_tensor = getelementptr inbounds %struct.CINTEnvVars, ptr %21, i32 0, i32 20
  %22 = load i32, ptr %ncomp_tensor, align 4, !tbaa !16
  %mul14 = mul nsw i32 %20, %22
  store i32 %mul14, ptr %n_comp, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %leng) #7
  %23 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %g_size = getelementptr inbounds %struct.CINTEnvVars, ptr %23, i32 0, i32 30
  %24 = load i32, ptr %g_size, align 4, !tbaa !24
  %mul15 = mul nsw i32 %24, 3
  %25 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %gbits = getelementptr inbounds %struct.CINTEnvVars, ptr %25, i32 0, i32 17
  %26 = load i32, ptr %gbits, align 8, !tbaa !25
  %shl = shl i32 1, %26
  %add16 = add nsw i32 %shl, 1
  %mul17 = mul nsw i32 %mul15, %add16
  store i32 %mul17, ptr %leng, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %lenj) #7
  %27 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf18 = getelementptr inbounds %struct.CINTEnvVars, ptr %27, i32 0, i32 14
  %28 = load i32, ptr %nf18, align 8, !tbaa !23
  %29 = load i32, ptr %nc, align 4, !tbaa !8
  %mul19 = mul nsw i32 %28, %29
  %30 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul20 = mul nsw i32 %mul19, %30
  store i32 %mul20, ptr %lenj, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %leni) #7
  %31 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf21 = getelementptr inbounds %struct.CINTEnvVars, ptr %31, i32 0, i32 14
  %32 = load i32, ptr %nf21, align 8, !tbaa !23
  %33 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i32, ptr %33, i64 0
  %34 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %mul23 = mul nsw i32 %32, %34
  %35 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul24 = mul nsw i32 %mul23, %35
  store i32 %mul24, ptr %leni, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len0) #7
  %36 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf25 = getelementptr inbounds %struct.CINTEnvVars, ptr %36, i32 0, i32 14
  %37 = load i32, ptr %nf25, align 8, !tbaa !23
  %38 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul26 = mul nsw i32 %37, %38
  store i32 %mul26, ptr %len0, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pdata_size) #7
  %39 = load i32, ptr %i_prim, align 4, !tbaa !8
  %40 = load i32, ptr %j_prim, align 4, !tbaa !8
  %mul27 = mul nsw i32 %39, %40
  %mul28 = mul nsw i32 %mul27, 5
  %41 = load i32, ptr %i_prim, align 4, !tbaa !8
  %42 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds i32, ptr %42, i64 0
  %43 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  %mul30 = mul nsw i32 %41, %43
  %add31 = add nsw i32 %mul28, %mul30
  %44 = load i32, ptr %j_prim, align 4, !tbaa !8
  %45 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds i32, ptr %45, i64 1
  %46 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %mul33 = mul nsw i32 %44, %46
  %add34 = add nsw i32 %add31, %mul33
  %47 = load i32, ptr %i_prim, align 4, !tbaa !8
  %48 = load i32, ptr %j_prim, align 4, !tbaa !8
  %add35 = add nsw i32 %47, %48
  %mul36 = mul nsw i32 %add35, 2
  %add37 = add nsw i32 %add34, %mul36
  %49 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf38 = getelementptr inbounds %struct.CINTEnvVars, ptr %49, i32 0, i32 14
  %50 = load i32, ptr %nf38, align 8, !tbaa !23
  %mul39 = mul nsw i32 %50, 3
  %add40 = add nsw i32 %add37, %mul39
  store i32 %add40, ptr %pdata_size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cache_size) #7
  %51 = load i32, ptr %nc, align 4, !tbaa !8
  %52 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul41 = mul nsw i32 %51, %52
  %53 = load i32, ptr %leng, align 4, !tbaa !8
  %add42 = add nsw i32 %mul41, %53
  %54 = load i32, ptr %lenj, align 4, !tbaa !8
  %add43 = add nsw i32 %add42, %54
  %55 = load i32, ptr %leni, align 4, !tbaa !8
  %add44 = add nsw i32 %add43, %55
  %56 = load i32, ptr %len0, align 4, !tbaa !8
  %add45 = add nsw i32 %add44, %56
  %57 = load i32, ptr %pdata_size, align 4, !tbaa !8
  %add46 = add nsw i32 %add45, %57
  %58 = load i32, ptr %nc, align 4, !tbaa !8
  %59 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul47 = mul nsw i32 %58, %59
  %60 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf48 = getelementptr inbounds %struct.CINTEnvVars, ptr %60, i32 0, i32 14
  %61 = load i32, ptr %nf48, align 8, !tbaa !23
  %mul49 = mul nsw i32 %61, 8
  %mul50 = mul nsw i32 %mul49, 2
  %add51 = add nsw i32 %mul47, %mul50
  %cmp = icmp sgt i32 %add46, %add51
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %62 = load i32, ptr %nc, align 4, !tbaa !8
  %63 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul52 = mul nsw i32 %62, %63
  %64 = load i32, ptr %leng, align 4, !tbaa !8
  %add53 = add nsw i32 %mul52, %64
  %65 = load i32, ptr %lenj, align 4, !tbaa !8
  %add54 = add nsw i32 %add53, %65
  %66 = load i32, ptr %leni, align 4, !tbaa !8
  %add55 = add nsw i32 %add54, %66
  %67 = load i32, ptr %len0, align 4, !tbaa !8
  %add56 = add nsw i32 %add55, %67
  %68 = load i32, ptr %pdata_size, align 4, !tbaa !8
  %add57 = add nsw i32 %add56, %68
  br label %cond.end

cond.false:                                       ; preds = %entry
  %69 = load i32, ptr %nc, align 4, !tbaa !8
  %70 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul58 = mul nsw i32 %69, %70
  %71 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf59 = getelementptr inbounds %struct.CINTEnvVars, ptr %71, i32 0, i32 14
  %72 = load i32, ptr %nf59, align 8, !tbaa !23
  %mul60 = mul nsw i32 %72, 8
  %mul61 = mul nsw i32 %mul60, 2
  %add62 = add nsw i32 %mul58, %mul61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add57, %cond.true ], [ %add62, %cond.false ]
  store i32 %cond, ptr %cache_size, align 4, !tbaa !8
  %73 = load i32, ptr %cache_size, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %cache_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %pdata_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %len0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %leni) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lenj) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %leng) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_comp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ctr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_prim) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_prim) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bas) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %shls) #7
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define i32 @CINT1e_drv(ptr noundef %out, ptr noundef %dims, ptr noundef %envs, ptr noundef %cache, ptr noundef %f_c2s, i32 noundef %int1e_type) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %envs.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %f_c2s.addr = alloca ptr, align 8
  %int1e_type.addr = alloca i32, align 4
  %x_ctr = alloca ptr, align 8
  %nc = alloca i32, align 4
  %n_comp = alloca i32, align 4
  %stack = alloca ptr, align 8
  %cache_size = alloca i64, align 8
  %gctr = alloca ptr, align 8
  %has_value = alloca i32, align 4
  %counts = alloca [4 x i32], align 16
  %nout = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %envs, ptr %envs.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store ptr %f_c2s, ptr %f_c2s.addr, align 8, !tbaa !4
  store i32 %int1e_type, ptr %int1e_type.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %call = call i32 @int1e_cache_size(ptr noundef %1)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ctr) #7
  %2 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %x_ctr1 = getelementptr inbounds %struct.CINTEnvVars, ptr %2, i32 0, i32 16
  %arraydecay = getelementptr inbounds [4 x i32], ptr %x_ctr1, i64 0, i64 0
  store ptr %arraydecay, ptr %x_ctr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #7
  %3 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf = getelementptr inbounds %struct.CINTEnvVars, ptr %3, i32 0, i32 14
  %4 = load i32, ptr %nf, align 8, !tbaa !23
  %5 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %mul = mul nsw i32 %4, %6
  %7 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load i32, ptr %arrayidx2, align 4, !tbaa !8
  %mul3 = mul nsw i32 %mul, %8
  store i32 %mul3, ptr %nc, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_comp) #7
  %9 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_e1 = getelementptr inbounds %struct.CINTEnvVars, ptr %9, i32 0, i32 18
  %10 = load i32, ptr %ncomp_e1, align 4, !tbaa !15
  %11 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_tensor = getelementptr inbounds %struct.CINTEnvVars, ptr %11, i32 0, i32 20
  %12 = load i32, ptr %ncomp_tensor, align 4, !tbaa !16
  %mul4 = mul nsw i32 %10, %12
  store i32 %mul4, ptr %n_comp, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #7
  store ptr null, ptr %stack, align 8, !tbaa !4
  %13 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %13, null
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache_size) #7
  %14 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %call7 = call i32 @int1e_cache_size(ptr noundef %14)
  %conv = sext i32 %call7 to i64
  store i64 %conv, ptr %cache_size, align 8, !tbaa !38
  %15 = load i64, ptr %cache_size, align 8, !tbaa !38
  %mul8 = mul i64 8, %15
  %call9 = call noalias ptr @malloc(i64 noundef %mul8) #8
  store ptr %call9, ptr %stack, align 8, !tbaa !4
  %16 = load ptr, ptr %stack, align 8, !tbaa !4
  store ptr %16, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache_size) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %gctr) #7
  %17 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %18 = ptrtoint ptr %17 to i64
  %add = add i64 %18, 7
  %and = and i64 %add, -8
  %19 = inttoptr i64 %and to ptr
  store ptr %19, ptr %gctr, align 8, !tbaa !4
  %20 = load ptr, ptr %gctr, align 8, !tbaa !4
  %21 = load i32, ptr %nc, align 4, !tbaa !8
  %22 = load i32, ptr %n_comp, align 4, !tbaa !8
  %mul11 = mul nsw i32 %21, %22
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds double, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_value) #7
  %23 = load ptr, ptr %gctr, align 8, !tbaa !4
  %24 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %26 = load i32, ptr %int1e_type.addr, align 4, !tbaa !8
  %call12 = call i32 @CINT1e_loop(ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %26)
  store i32 %call12, ptr %has_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %counts) #7
  %27 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %27, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end10
  %arraydecay16 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 0
  store ptr %arraydecay16, ptr %dims.addr, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10
  %28 = load ptr, ptr %f_c2s.addr, align 8, !tbaa !4
  %cmp18 = icmp eq ptr %28, @c2s_sph_1e
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %29 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %i_l = getelementptr inbounds %struct.CINTEnvVars, ptr %29, i32 0, i32 6
  %30 = load i32, ptr %i_l, align 8, !tbaa !27
  %mul21 = mul nsw i32 %30, 2
  %add22 = add nsw i32 %mul21, 1
  %31 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds i32, ptr %31, i64 0
  %32 = load i32, ptr %arrayidx23, align 4, !tbaa !8
  %mul24 = mul nsw i32 %add22, %32
  %arrayidx25 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 0
  store i32 %mul24, ptr %arrayidx25, align 16, !tbaa !8
  %33 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %j_l = getelementptr inbounds %struct.CINTEnvVars, ptr %33, i32 0, i32 7
  %34 = load i32, ptr %j_l, align 4, !tbaa !28
  %mul26 = mul nsw i32 %34, 2
  %add27 = add nsw i32 %mul26, 1
  %35 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 1
  %36 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %mul29 = mul nsw i32 %add27, %36
  %arrayidx30 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 1
  store i32 %mul29, ptr %arrayidx30, align 4, !tbaa !8
  br label %if.end41

if.else:                                          ; preds = %if.end17
  %37 = load ptr, ptr %f_c2s.addr, align 8, !tbaa !4
  %cmp31 = icmp eq ptr %37, @c2s_cart_1e
  br i1 %cmp31, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.else
  %38 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nfi = getelementptr inbounds %struct.CINTEnvVars, ptr %38, i32 0, i32 10
  %39 = load i32, ptr %nfi, align 8, !tbaa !40
  %40 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds i32, ptr %40, i64 0
  %41 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %mul35 = mul nsw i32 %39, %41
  %arrayidx36 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 0
  store i32 %mul35, ptr %arrayidx36, align 16, !tbaa !8
  %42 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nfj = getelementptr inbounds %struct.CINTEnvVars, ptr %42, i32 0, i32 11
  %43 = load i32, ptr %nfj, align 4, !tbaa !41
  %44 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds i32, ptr %44, i64 1
  %45 = load i32, ptr %arrayidx37, align 4, !tbaa !8
  %mul38 = mul nsw i32 %43, %45
  %arrayidx39 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 1
  store i32 %mul38, ptr %arrayidx39, align 4, !tbaa !8
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.else
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then20
  %arrayidx42 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 2
  store i32 1, ptr %arrayidx42, align 8, !tbaa !8
  %arrayidx43 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 3
  store i32 1, ptr %arrayidx43, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nout) #7
  %46 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds i32, ptr %46, i64 0
  %47 = load i32, ptr %arrayidx44, align 4, !tbaa !8
  %48 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds i32, ptr %48, i64 1
  %49 = load i32, ptr %arrayidx45, align 4, !tbaa !8
  %mul46 = mul nsw i32 %47, %49
  store i32 %mul46, ptr %nout, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  %50 = load i32, ptr %has_value, align 4, !tbaa !8
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.then47, label %if.else56

if.then47:                                        ; preds = %if.end41
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then47
  %51 = load i32, ptr %n, align 4, !tbaa !8
  %52 = load i32, ptr %n_comp, align 4, !tbaa !8
  %cmp48 = icmp slt i32 %51, %52
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load ptr, ptr %f_c2s.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %55 = load i32, ptr %nout, align 4, !tbaa !8
  %56 = load i32, ptr %n, align 4, !tbaa !8
  %mul50 = mul nsw i32 %55, %56
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds double, ptr %54, i64 %idx.ext51
  %57 = load ptr, ptr %gctr, align 8, !tbaa !4
  %58 = load i32, ptr %nc, align 4, !tbaa !8
  %59 = load i32, ptr %n, align 4, !tbaa !8
  %mul53 = mul nsw i32 %58, %59
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds double, ptr %57, i64 %idx.ext54
  %60 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  call void (ptr, ptr, ptr, ptr, ptr, ...) %53(ptr noundef %add.ptr52, ptr noundef %add.ptr55, ptr noundef %60, ptr noundef %61, ptr noundef %62)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, ptr %n, align 4, !tbaa !8
  %inc = add nsw i32 %63, 1
  store i32 %inc, ptr %n, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  br label %if.end68

if.else56:                                        ; preds = %if.end41
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc65, %if.else56
  %64 = load i32, ptr %n, align 4, !tbaa !8
  %65 = load i32, ptr %n_comp, align 4, !tbaa !8
  %cmp58 = icmp slt i32 %64, %65
  br i1 %cmp58, label %for.body60, label %for.end67

for.body60:                                       ; preds = %for.cond57
  %66 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %67 = load i32, ptr %nout, align 4, !tbaa !8
  %68 = load i32, ptr %n, align 4, !tbaa !8
  %mul61 = mul nsw i32 %67, %68
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds double, ptr %66, i64 %idx.ext62
  %69 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %arraydecay64 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 0
  call void @c2s_dset0(ptr noundef %add.ptr63, ptr noundef %69, ptr noundef %arraydecay64)
  br label %for.inc65

for.inc65:                                        ; preds = %for.body60
  %70 = load i32, ptr %n, align 4, !tbaa !8
  %inc66 = add nsw i32 %70, 1
  store i32 %inc66, ptr %n, align 4, !tbaa !8
  br label %for.cond57, !llvm.loop !43

for.end67:                                        ; preds = %for.cond57
  br label %if.end68

if.end68:                                         ; preds = %for.end67, %for.end
  %71 = load ptr, ptr %stack, align 8, !tbaa !4
  %cmp69 = icmp ne ptr %71, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  %72 = load ptr, ptr %stack, align 8, !tbaa !4
  call void @free(ptr noundef %72) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68
  %73 = load i32, ptr %has_value, align 4, !tbaa !8
  store i32 %73, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nout) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %counts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gctr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_comp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ctr) #7
  br label %return

return:                                           ; preds = %if.end72, %if.then
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare void @c2s_sph_1e(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @c2s_cart_1e(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @c2s_dset0(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

; Function Attrs: nounwind uwtable
define i32 @CINT1e_spinor_drv(ptr noundef %out, ptr noundef %dims, ptr noundef %envs, ptr noundef %cache, ptr noundef %f_c2s, i32 noundef %int1e_type) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %envs.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %f_c2s.addr = alloca ptr, align 8
  %int1e_type.addr = alloca i32, align 4
  %x_ctr = alloca ptr, align 8
  %nc = alloca i32, align 4
  %stack = alloca ptr, align 8
  %cache_size = alloca i64, align 8
  %gctr = alloca ptr, align 8
  %has_value = alloca i32, align 4
  %counts = alloca [4 x i32], align 16
  %nout = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %envs, ptr %envs.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store ptr %f_c2s, ptr %f_c2s.addr, align 8, !tbaa !4
  store i32 %int1e_type, ptr %int1e_type.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %call = call i32 @int1e_cache_size(ptr noundef %1)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ctr) #7
  %2 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %x_ctr1 = getelementptr inbounds %struct.CINTEnvVars, ptr %2, i32 0, i32 16
  %arraydecay = getelementptr inbounds [4 x i32], ptr %x_ctr1, i64 0, i64 0
  store ptr %arraydecay, ptr %x_ctr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #7
  %3 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf = getelementptr inbounds %struct.CINTEnvVars, ptr %3, i32 0, i32 14
  %4 = load i32, ptr %nf, align 8, !tbaa !23
  %5 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %mul = mul nsw i32 %4, %6
  %7 = load ptr, ptr %x_ctr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load i32, ptr %arrayidx2, align 4, !tbaa !8
  %mul3 = mul nsw i32 %mul, %8
  %9 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_e1 = getelementptr inbounds %struct.CINTEnvVars, ptr %9, i32 0, i32 18
  %10 = load i32, ptr %ncomp_e1, align 4, !tbaa !15
  %mul4 = mul nsw i32 %mul3, %10
  store i32 %mul4, ptr %nc, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #7
  store ptr null, ptr %stack, align 8, !tbaa !4
  %11 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %11, null
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache_size) #7
  %12 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %call7 = call i32 @int1e_cache_size(ptr noundef %12)
  %conv = sext i32 %call7 to i64
  store i64 %conv, ptr %cache_size, align 8, !tbaa !38
  %13 = load i64, ptr %cache_size, align 8, !tbaa !38
  %mul8 = mul i64 8, %13
  %call9 = call noalias ptr @malloc(i64 noundef %mul8) #8
  store ptr %call9, ptr %stack, align 8, !tbaa !4
  %14 = load ptr, ptr %stack, align 8, !tbaa !4
  store ptr %14, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache_size) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %gctr) #7
  %15 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %16 = ptrtoint ptr %15 to i64
  %add = add i64 %16, 7
  %and = and i64 %add, -8
  %17 = inttoptr i64 %and to ptr
  store ptr %17, ptr %gctr, align 8, !tbaa !4
  %18 = load ptr, ptr %gctr, align 8, !tbaa !4
  %19 = load i32, ptr %nc, align 4, !tbaa !8
  %20 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_tensor = getelementptr inbounds %struct.CINTEnvVars, ptr %20, i32 0, i32 20
  %21 = load i32, ptr %ncomp_tensor, align 4, !tbaa !16
  %mul11 = mul nsw i32 %19, %21
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds double, ptr %18, i64 %idx.ext
  store ptr %add.ptr, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_value) #7
  %22 = load ptr, ptr %gctr, align 8, !tbaa !4
  %23 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %25 = load i32, ptr %int1e_type.addr, align 4, !tbaa !8
  %call12 = call i32 @CINT1e_loop(ptr noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef %25)
  store i32 %call12, ptr %has_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %counts) #7
  %26 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %26, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end10
  %arraydecay16 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 0
  store ptr %arraydecay16, ptr %dims.addr, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10
  %27 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %shls = getelementptr inbounds %struct.CINTEnvVars, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %shls, align 8, !tbaa !10
  %arrayidx18 = getelementptr inbounds i32, ptr %28, i64 0
  %29 = load i32, ptr %arrayidx18, align 4, !tbaa !8
  %30 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %bas = getelementptr inbounds %struct.CINTEnvVars, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %bas, align 8, !tbaa !13
  %call19 = call i32 @CINTcgto_spinor(i32 noundef %29, ptr noundef %31)
  %arrayidx20 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 0
  store i32 %call19, ptr %arrayidx20, align 16, !tbaa !8
  %32 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %shls21 = getelementptr inbounds %struct.CINTEnvVars, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %shls21, align 8, !tbaa !10
  %arrayidx22 = getelementptr inbounds i32, ptr %33, i64 1
  %34 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %35 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %bas23 = getelementptr inbounds %struct.CINTEnvVars, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %bas23, align 8, !tbaa !13
  %call24 = call i32 @CINTcgto_spinor(i32 noundef %34, ptr noundef %36)
  %arrayidx25 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 1
  store i32 %call24, ptr %arrayidx25, align 4, !tbaa !8
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 2
  store i32 1, ptr %arrayidx26, align 8, !tbaa !8
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 3
  store i32 1, ptr %arrayidx27, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nout) #7
  %37 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i32, ptr %37, i64 0
  %38 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %39 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds i32, ptr %39, i64 1
  %40 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  %mul30 = mul nsw i32 %38, %40
  store i32 %mul30, ptr %nout, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  %41 = load i32, ptr %has_value, align 4, !tbaa !8
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end17
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then31
  %42 = load i32, ptr %n, align 4, !tbaa !8
  %43 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_tensor32 = getelementptr inbounds %struct.CINTEnvVars, ptr %43, i32 0, i32 20
  %44 = load i32, ptr %ncomp_tensor32, align 4, !tbaa !16
  %cmp33 = icmp slt i32 %42, %44
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %f_c2s.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %47 = load i32, ptr %nout, align 4, !tbaa !8
  %48 = load i32, ptr %n, align 4, !tbaa !8
  %mul35 = mul nsw i32 %47, %48
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds { double, double }, ptr %46, i64 %idx.ext36
  %49 = load ptr, ptr %gctr, align 8, !tbaa !4
  %50 = load i32, ptr %nc, align 4, !tbaa !8
  %51 = load i32, ptr %n, align 4, !tbaa !8
  %mul38 = mul nsw i32 %50, %51
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds double, ptr %49, i64 %idx.ext39
  %52 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  call void (ptr, ptr, ptr, ptr, ptr, ...) %45(ptr noundef %add.ptr37, ptr noundef %add.ptr40, ptr noundef %52, ptr noundef %53, ptr noundef %54)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, ptr %n, align 4, !tbaa !8
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %n, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  br label %if.end53

if.else:                                          ; preds = %if.end17
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc50, %if.else
  %56 = load i32, ptr %n, align 4, !tbaa !8
  %57 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %ncomp_tensor42 = getelementptr inbounds %struct.CINTEnvVars, ptr %57, i32 0, i32 20
  %58 = load i32, ptr %ncomp_tensor42, align 4, !tbaa !16
  %cmp43 = icmp slt i32 %56, %58
  br i1 %cmp43, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond41
  %59 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %60 = load i32, ptr %nout, align 4, !tbaa !8
  %61 = load i32, ptr %n, align 4, !tbaa !8
  %mul46 = mul nsw i32 %60, %61
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds { double, double }, ptr %59, i64 %idx.ext47
  %62 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %arraydecay49 = getelementptr inbounds [4 x i32], ptr %counts, i64 0, i64 0
  call void @c2s_zset0(ptr noundef %add.ptr48, ptr noundef %62, ptr noundef %arraydecay49)
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %63 = load i32, ptr %n, align 4, !tbaa !8
  %inc51 = add nsw i32 %63, 1
  store i32 %inc51, ptr %n, align 4, !tbaa !8
  br label %for.cond41, !llvm.loop !45

for.end52:                                        ; preds = %for.cond41
  br label %if.end53

if.end53:                                         ; preds = %for.end52, %for.end
  %64 = load ptr, ptr %stack, align 8, !tbaa !4
  %cmp54 = icmp ne ptr %64, null
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  %65 = load ptr, ptr %stack, align 8, !tbaa !4
  call void @free(ptr noundef %65) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  %66 = load i32, ptr %has_value, align 4, !tbaa !8
  store i32 %66, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nout) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %counts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gctr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ctr) #7
  br label %return

return:                                           ; preds = %if.end57, %if.then
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

declare i32 @CINTcgto_spinor(i32 noundef, ptr noundef) #2

declare void @c2s_zset0(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @CINTgout1e(ptr noundef %gout, ptr noundef %g, ptr noundef %idx, ptr noundef %envs, i32 noundef %empty) #0 {
entry:
  %gout.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %idx.addr = alloca ptr, align 8
  %envs.addr = alloca ptr, align 8
  %empty.addr = alloca i32, align 4
  %nf = alloca i32, align 4
  %n = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  store ptr %gout, ptr %gout.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %idx, ptr %idx.addr, align 8, !tbaa !4
  store ptr %envs, ptr %envs.addr, align 8, !tbaa !4
  store i32 %empty, ptr %empty.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nf) #7
  %0 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf1 = getelementptr inbounds %struct.CINTEnvVars, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %nf1, align 8, !tbaa !23
  store i32 %1, ptr %nf, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %iz) #7
  %2 = load i32, ptr %empty.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %n, align 4, !tbaa !8
  %4 = load i32, ptr %nf, align 4, !tbaa !8
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %6 = load i32, ptr %n, align 4, !tbaa !8
  %mul = mul nsw i32 %6, 3
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %7, ptr %ix, align 4, !tbaa !8
  %8 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %mul2 = mul nsw i32 %9, 3
  %add3 = add nsw i32 %mul2, 1
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %8, i64 %idxprom4
  %10 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  store i32 %10, ptr %iy, align 4, !tbaa !8
  %11 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %12 = load i32, ptr %n, align 4, !tbaa !8
  %mul6 = mul nsw i32 %12, 3
  %add7 = add nsw i32 %mul6, 2
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %11, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4, !tbaa !8
  store i32 %13, ptr %iz, align 4, !tbaa !8
  %14 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %15 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds double, ptr %14, i64 %idxprom10
  %16 = load double, ptr %arrayidx11, align 8, !tbaa !18
  %17 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %18 = load i32, ptr %iy, align 4, !tbaa !8
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %17, i64 %idxprom12
  %19 = load double, ptr %arrayidx13, align 8, !tbaa !18
  %mul14 = fmul double %16, %19
  %20 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %21 = load i32, ptr %iz, align 4, !tbaa !8
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %20, i64 %idxprom15
  %22 = load double, ptr %arrayidx16, align 8, !tbaa !18
  %mul17 = fmul double %mul14, %22
  %23 = load ptr, ptr %gout.addr, align 8, !tbaa !4
  %24 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds double, ptr %23, i64 %idxprom18
  store double %mul17, ptr %arrayidx19, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %n, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %if.else
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %27 = load i32, ptr %nf, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %26, %27
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  %28 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %mul23 = mul nsw i32 %29, 3
  %add24 = add nsw i32 %mul23, 0
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %28, i64 %idxprom25
  %30 = load i32, ptr %arrayidx26, align 4, !tbaa !8
  store i32 %30, ptr %ix, align 4, !tbaa !8
  %31 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %32 = load i32, ptr %n, align 4, !tbaa !8
  %mul27 = mul nsw i32 %32, 3
  %add28 = add nsw i32 %mul27, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %31, i64 %idxprom29
  %33 = load i32, ptr %arrayidx30, align 4, !tbaa !8
  store i32 %33, ptr %iy, align 4, !tbaa !8
  %34 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %35 = load i32, ptr %n, align 4, !tbaa !8
  %mul31 = mul nsw i32 %35, 3
  %add32 = add nsw i32 %mul31, 2
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %34, i64 %idxprom33
  %36 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  store i32 %36, ptr %iz, align 4, !tbaa !8
  %37 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %38 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom35 = sext i32 %38 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %37, i64 %idxprom35
  %39 = load double, ptr %arrayidx36, align 8, !tbaa !18
  %40 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %41 = load i32, ptr %iy, align 4, !tbaa !8
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %40, i64 %idxprom37
  %42 = load double, ptr %arrayidx38, align 8, !tbaa !18
  %mul39 = fmul double %39, %42
  %43 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %44 = load i32, ptr %iz, align 4, !tbaa !8
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %43, i64 %idxprom40
  %45 = load double, ptr %arrayidx41, align 8, !tbaa !18
  %46 = load ptr, ptr %gout.addr, align 8, !tbaa !4
  %47 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom43 = sext i32 %47 to i64
  %arrayidx44 = getelementptr inbounds double, ptr %46, i64 %idxprom43
  %48 = load double, ptr %arrayidx44, align 8, !tbaa !18
  %49 = call double @llvm.fmuladd.f64(double %mul39, double %45, double %48)
  store double %49, ptr %arrayidx44, align 8, !tbaa !18
  br label %for.inc45

for.inc45:                                        ; preds = %for.body22
  %50 = load i32, ptr %n, align 4, !tbaa !8
  %inc46 = add nsw i32 %50, 1
  store i32 %inc46, ptr %n, align 4, !tbaa !8
  br label %for.cond20, !llvm.loop !47

for.end47:                                        ; preds = %for.cond20
  br label %if.end

if.end:                                           ; preds = %for.end47, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %iz) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nf) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @CINTgout1e_nuc(ptr noundef %gout, ptr noundef %g, ptr noundef %idx, ptr noundef %envs, i32 noundef %empty) #0 {
entry:
  %gout.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %idx.addr = alloca ptr, align 8
  %envs.addr = alloca ptr, align 8
  %empty.addr = alloca i32, align 4
  %nf = alloca i32, align 4
  %nrys_roots = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %gx = alloca ptr, align 8
  %gy = alloca ptr, align 8
  %gz = alloca ptr, align 8
  %s = alloca double, align 8
  store ptr %gout, ptr %gout.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %idx, ptr %idx.addr, align 8, !tbaa !4
  store ptr %envs, ptr %envs.addr, align 8, !tbaa !4
  store i32 %empty, ptr %empty.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nf) #7
  %0 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nf1 = getelementptr inbounds %struct.CINTEnvVars, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %nf1, align 8, !tbaa !23
  store i32 %1, ptr %nf, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrys_roots) #7
  %2 = load ptr, ptr %envs.addr, align 8, !tbaa !4
  %nrys_roots2 = getelementptr inbounds %struct.CINTEnvVars, ptr %2, i32 0, i32 29
  %3 = load i32, ptr %nrys_roots2, align 8, !tbaa !48
  store i32 %3, ptr %nrys_roots, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gx) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gy) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gz) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7
  %4 = load i32, ptr %empty.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.then
  %5 = load i32, ptr %n, align 4, !tbaa !8
  %6 = load i32, ptr %nf, align 4, !tbaa !8
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %mul = mul nsw i32 %9, 3
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds double, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %gx, align 8, !tbaa !4
  %11 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %13 = load i32, ptr %n, align 4, !tbaa !8
  %mul3 = mul nsw i32 %13, 3
  %add4 = add nsw i32 %mul3, 1
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 %idxprom5
  %14 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %idx.ext7 = sext i32 %14 to i64
  %add.ptr8 = getelementptr inbounds double, ptr %11, i64 %idx.ext7
  store ptr %add.ptr8, ptr %gy, align 8, !tbaa !4
  %15 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %17 = load i32, ptr %n, align 4, !tbaa !8
  %mul9 = mul nsw i32 %17, 3
  %add10 = add nsw i32 %mul9, 2
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %16, i64 %idxprom11
  %18 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %idx.ext13 = sext i32 %18 to i64
  %add.ptr14 = getelementptr inbounds double, ptr %15, i64 %idx.ext13
  store ptr %add.ptr14, ptr %gz, align 8, !tbaa !4
  store double 0.000000e+00, ptr %s, align 8, !tbaa !18
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %20 = load i32, ptr %nrys_roots, align 4, !tbaa !8
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body17, label %for.end

for.body17:                                       ; preds = %for.cond15
  %21 = load ptr, ptr %gx, align 8, !tbaa !4
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds double, ptr %21, i64 %idxprom18
  %23 = load double, ptr %arrayidx19, align 8, !tbaa !18
  %24 = load ptr, ptr %gy, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %24, i64 %idxprom20
  %26 = load double, ptr %arrayidx21, align 8, !tbaa !18
  %mul22 = fmul double %23, %26
  %27 = load ptr, ptr %gz, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %27, i64 %idxprom23
  %29 = load double, ptr %arrayidx24, align 8, !tbaa !18
  %30 = load double, ptr %s, align 8, !tbaa !18
  %31 = call double @llvm.fmuladd.f64(double %mul22, double %29, double %30)
  store double %31, ptr %s, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body17
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond15, !llvm.loop !49

for.end:                                          ; preds = %for.cond15
  %33 = load double, ptr %s, align 8, !tbaa !18
  %34 = load ptr, ptr %gout.addr, align 8, !tbaa !4
  %35 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds double, ptr %34, i64 %idxprom26
  store double %33, ptr %arrayidx27, align 8, !tbaa !18
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %36 = load i32, ptr %n, align 4, !tbaa !8
  %inc29 = add nsw i32 %36, 1
  store i32 %inc29, ptr %n, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !50

for.end30:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc69, %if.else
  %37 = load i32, ptr %n, align 4, !tbaa !8
  %38 = load i32, ptr %nf, align 4, !tbaa !8
  %cmp32 = icmp slt i32 %37, %38
  br i1 %cmp32, label %for.body33, label %for.end71

for.body33:                                       ; preds = %for.cond31
  %39 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %41 = load i32, ptr %n, align 4, !tbaa !8
  %mul34 = mul nsw i32 %41, 3
  %add35 = add nsw i32 %mul34, 0
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36
  %42 = load i32, ptr %arrayidx37, align 4, !tbaa !8
  %idx.ext38 = sext i32 %42 to i64
  %add.ptr39 = getelementptr inbounds double, ptr %39, i64 %idx.ext38
  store ptr %add.ptr39, ptr %gx, align 8, !tbaa !4
  %43 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %45 = load i32, ptr %n, align 4, !tbaa !8
  %mul40 = mul nsw i32 %45, 3
  %add41 = add nsw i32 %mul40, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %44, i64 %idxprom42
  %46 = load i32, ptr %arrayidx43, align 4, !tbaa !8
  %idx.ext44 = sext i32 %46 to i64
  %add.ptr45 = getelementptr inbounds double, ptr %43, i64 %idx.ext44
  store ptr %add.ptr45, ptr %gy, align 8, !tbaa !4
  %47 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %idx.addr, align 8, !tbaa !4
  %49 = load i32, ptr %n, align 4, !tbaa !8
  %mul46 = mul nsw i32 %49, 3
  %add47 = add nsw i32 %mul46, 2
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %48, i64 %idxprom48
  %50 = load i32, ptr %arrayidx49, align 4, !tbaa !8
  %idx.ext50 = sext i32 %50 to i64
  %add.ptr51 = getelementptr inbounds double, ptr %47, i64 %idx.ext50
  store ptr %add.ptr51, ptr %gz, align 8, !tbaa !4
  store double 0.000000e+00, ptr %s, align 8, !tbaa !18
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc63, %for.body33
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %52 = load i32, ptr %nrys_roots, align 4, !tbaa !8
  %cmp53 = icmp slt i32 %51, %52
  br i1 %cmp53, label %for.body54, label %for.end65

for.body54:                                       ; preds = %for.cond52
  %53 = load ptr, ptr %gx, align 8, !tbaa !4
  %54 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom55 = sext i32 %54 to i64
  %arrayidx56 = getelementptr inbounds double, ptr %53, i64 %idxprom55
  %55 = load double, ptr %arrayidx56, align 8, !tbaa !18
  %56 = load ptr, ptr %gy, align 8, !tbaa !4
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom57 = sext i32 %57 to i64
  %arrayidx58 = getelementptr inbounds double, ptr %56, i64 %idxprom57
  %58 = load double, ptr %arrayidx58, align 8, !tbaa !18
  %mul59 = fmul double %55, %58
  %59 = load ptr, ptr %gz, align 8, !tbaa !4
  %60 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom60 = sext i32 %60 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %59, i64 %idxprom60
  %61 = load double, ptr %arrayidx61, align 8, !tbaa !18
  %62 = load double, ptr %s, align 8, !tbaa !18
  %63 = call double @llvm.fmuladd.f64(double %mul59, double %61, double %62)
  store double %63, ptr %s, align 8, !tbaa !18
  br label %for.inc63

for.inc63:                                        ; preds = %for.body54
  %64 = load i32, ptr %i, align 4, !tbaa !8
  %inc64 = add nsw i32 %64, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !8
  br label %for.cond52, !llvm.loop !51

for.end65:                                        ; preds = %for.cond52
  %65 = load double, ptr %s, align 8, !tbaa !18
  %66 = load ptr, ptr %gout.addr, align 8, !tbaa !4
  %67 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom66 = sext i32 %67 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %66, i64 %idxprom66
  %68 = load double, ptr %arrayidx67, align 8, !tbaa !18
  %add68 = fadd double %68, %65
  store double %add68, ptr %arrayidx67, align 8, !tbaa !18
  br label %for.inc69

for.inc69:                                        ; preds = %for.end65
  %69 = load i32, ptr %n, align 4, !tbaa !8
  %inc70 = add nsw i32 %69, 1
  store i32 %inc70, ptr %n, align 4, !tbaa !8
  br label %for.cond31, !llvm.loop !52

for.end71:                                        ; preds = %for.cond31
  br label %if.end

if.end:                                           ; preds = %for.end71, %for.end30
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gz) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gy) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrys_roots) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nf) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @int1e_ovlp_sph(ptr noundef %out, ptr noundef %dims, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt, ptr noundef %cache) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %ng = alloca [8 x i32], align 16
  %envs = alloca %struct.CINTEnvVars, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %ng) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ng, ptr align 16 @__const.int1e_ovlp_sph.ng, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr %envs) #7
  %arraydecay = getelementptr inbounds [8 x i32], ptr %ng, i64 0, i64 0
  %0 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @CINTinit_int1e_EnvVars(ptr noundef %envs, ptr noundef %arraydecay, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %f_gout = getelementptr inbounds %struct.CINTEnvVars, ptr %envs, i32 0, i32 45
  store ptr @CINTgout1e, ptr %f_gout, align 8, !tbaa !35
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %call = call i32 @CINT1e_drv(ptr noundef %6, ptr noundef %7, ptr noundef %envs, ptr noundef %8, ptr noundef @c2s_sph_1e, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 400, ptr %envs) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %ng) #7
  ret i32 %call
}

declare void @CINTinit_int1e_EnvVars(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @int1e_ovlp_cart(ptr noundef %out, ptr noundef %dims, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt, ptr noundef %cache) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %ng = alloca [8 x i32], align 16
  %envs = alloca %struct.CINTEnvVars, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %ng) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ng, ptr align 16 @__const.int1e_ovlp_cart.ng, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr %envs) #7
  %arraydecay = getelementptr inbounds [8 x i32], ptr %ng, i64 0, i64 0
  %0 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @CINTinit_int1e_EnvVars(ptr noundef %envs, ptr noundef %arraydecay, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %f_gout = getelementptr inbounds %struct.CINTEnvVars, ptr %envs, i32 0, i32 45
  store ptr @CINTgout1e, ptr %f_gout, align 8, !tbaa !35
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %call = call i32 @CINT1e_drv(ptr noundef %6, ptr noundef %7, ptr noundef %envs, ptr noundef %8, ptr noundef @c2s_cart_1e, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 400, ptr %envs) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %ng) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @int1e_ovlp_spinor(ptr noundef %out, ptr noundef %dims, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt, ptr noundef %cache) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %ng = alloca [8 x i32], align 16
  %envs = alloca %struct.CINTEnvVars, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %ng) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ng, ptr align 16 @__const.int1e_ovlp_spinor.ng, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr %envs) #7
  %arraydecay = getelementptr inbounds [8 x i32], ptr %ng, i64 0, i64 0
  %0 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @CINTinit_int1e_EnvVars(ptr noundef %envs, ptr noundef %arraydecay, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %f_gout = getelementptr inbounds %struct.CINTEnvVars, ptr %envs, i32 0, i32 45
  store ptr @CINTgout1e, ptr %f_gout, align 8, !tbaa !35
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %call = call i32 @CINT1e_spinor_drv(ptr noundef %6, ptr noundef %7, ptr noundef %envs, ptr noundef %8, ptr noundef @c2s_sf_1e, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 400, ptr %envs) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %ng) #7
  ret i32 %call
}

declare void @c2s_sf_1e(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @int1e_ovlp_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  store ptr null, ptr %0, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @int1e_nuc_sph(ptr noundef %out, ptr noundef %dims, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt, ptr noundef %cache) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %ng = alloca [8 x i32], align 16
  %envs = alloca %struct.CINTEnvVars, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %ng) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ng, ptr align 16 @__const.int1e_nuc_sph.ng, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr %envs) #7
  %arraydecay = getelementptr inbounds [8 x i32], ptr %ng, i64 0, i64 0
  %0 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @CINTinit_int1e_EnvVars(ptr noundef %envs, ptr noundef %arraydecay, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %f_gout = getelementptr inbounds %struct.CINTEnvVars, ptr %envs, i32 0, i32 45
  store ptr @CINTgout1e_nuc, ptr %f_gout, align 8, !tbaa !35
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %call = call i32 @CINT1e_drv(ptr noundef %6, ptr noundef %7, ptr noundef %envs, ptr noundef %8, ptr noundef @c2s_sph_1e, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 400, ptr %envs) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %ng) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @int1e_nuc_cart(ptr noundef %out, ptr noundef %dims, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt, ptr noundef %cache) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %ng = alloca [8 x i32], align 16
  %envs = alloca %struct.CINTEnvVars, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %ng) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ng, ptr align 16 @__const.int1e_nuc_cart.ng, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr %envs) #7
  %arraydecay = getelementptr inbounds [8 x i32], ptr %ng, i64 0, i64 0
  %0 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @CINTinit_int1e_EnvVars(ptr noundef %envs, ptr noundef %arraydecay, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %f_gout = getelementptr inbounds %struct.CINTEnvVars, ptr %envs, i32 0, i32 45
  store ptr @CINTgout1e_nuc, ptr %f_gout, align 8, !tbaa !35
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %call = call i32 @CINT1e_drv(ptr noundef %6, ptr noundef %7, ptr noundef %envs, ptr noundef %8, ptr noundef @c2s_cart_1e, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 400, ptr %envs) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %ng) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @int1e_nuc_spinor(ptr noundef %out, ptr noundef %dims, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt, ptr noundef %cache) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %dims.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %ng = alloca [8 x i32], align 16
  %envs = alloca %struct.CINTEnvVars, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %dims, ptr %dims.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %ng) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ng, ptr align 16 @__const.int1e_nuc_spinor.ng, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr %envs) #7
  %arraydecay = getelementptr inbounds [8 x i32], ptr %ng, i64 0, i64 0
  %0 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @CINTinit_int1e_EnvVars(ptr noundef %envs, ptr noundef %arraydecay, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %f_gout = getelementptr inbounds %struct.CINTEnvVars, ptr %envs, i32 0, i32 45
  store ptr @CINTgout1e_nuc, ptr %f_gout, align 8, !tbaa !35
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %dims.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %call = call i32 @CINT1e_spinor_drv(ptr noundef %6, ptr noundef %7, ptr noundef %envs, ptr noundef %8, ptr noundef @c2s_sf_1e, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 400, ptr %envs) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %ng) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @int1e_nuc_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  store ptr null, ptr %0, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_ovlp_cart(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %call = call i32 @int1e_ovlp_cart(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_ovlp_cart_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_ovlp_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_ovlp_sph(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %call = call i32 @int1e_ovlp_sph(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_ovlp_sph_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_ovlp_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_ovlp(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %call = call i32 @int1e_ovlp_spinor(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_ovlp_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_ovlp_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_nuc_cart(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %call = call i32 @int1e_nuc_cart(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_nuc_cart_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_nuc_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_nuc_sph(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %call = call i32 @int1e_nuc_sph(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_nuc_sph_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_nuc_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_nuc(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env, ptr noundef %opt) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %call = call i32 @int1e_nuc_spinor(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_nuc_optimizer(ptr noundef %opt, ptr noundef %atm, i32 noundef %natm, ptr noundef %bas, i32 noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca i32, align 4
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca i32, align 4
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store i32 %natm, ptr %natm.addr, align 4, !tbaa !8
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store i32 %nbas, ptr %nbas.addr, align 4, !tbaa !8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load i32, ptr %natm.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nbas.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_nuc_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_ovlp_sph_(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env, i64 noundef %optptr_as_integer8) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %optptr_as_integer8.addr = alloca i64, align 8
  %opt = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %10 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %opt, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %call = call i32 @int1e_ovlp_sph(ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_ovlp_sph_optimizer_(i64 noundef %optptr_as_integer8, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env) #0 {
entry:
  %optptr_as_integer8.addr = alloca i64, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %opt = alloca ptr, align 8
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %opt, align 8, !tbaa !4
  %3 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %6 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %9 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_ovlp_optimizer(ptr noundef %2, ptr noundef %3, i32 noundef %5, ptr noundef %6, i32 noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_ovlp_cart_(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env, i64 noundef %optptr_as_integer8) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %optptr_as_integer8.addr = alloca i64, align 8
  %opt = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %10 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %opt, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %call = call i32 @int1e_ovlp_cart(ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_ovlp_cart_optimizer_(ptr noundef %opt, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_ovlp_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_ovlp_(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env, i64 noundef %optptr_as_integer8) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %optptr_as_integer8.addr = alloca i64, align 8
  %opt = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %10 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %opt, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %call = call i32 @int1e_ovlp_spinor(ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_ovlp_optimizer_(i64 noundef %optptr_as_integer8, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env) #0 {
entry:
  %optptr_as_integer8.addr = alloca i64, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %opt = alloca ptr, align 8
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %opt, align 8, !tbaa !4
  %3 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %6 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %9 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_ovlp_optimizer(ptr noundef %2, ptr noundef %3, i32 noundef %5, ptr noundef %6, i32 noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_nuc_sph_(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env, i64 noundef %optptr_as_integer8) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %optptr_as_integer8.addr = alloca i64, align 8
  %opt = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %10 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %opt, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %call = call i32 @int1e_nuc_sph(ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_nuc_sph_optimizer_(i64 noundef %optptr_as_integer8, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env) #0 {
entry:
  %optptr_as_integer8.addr = alloca i64, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %opt = alloca ptr, align 8
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %opt, align 8, !tbaa !4
  %3 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %6 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %9 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_nuc_optimizer(ptr noundef %2, ptr noundef %3, i32 noundef %5, ptr noundef %6, i32 noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_nuc_cart_(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env, i64 noundef %optptr_as_integer8) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %optptr_as_integer8.addr = alloca i64, align 8
  %opt = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %10 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %opt, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %call = call i32 @int1e_nuc_cart(ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_nuc_cart_optimizer_(ptr noundef %opt, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %opt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !8
  %4 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_nuc_optimizer(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cint1e_nuc_(ptr noundef %out, ptr noundef %shls, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env, i64 noundef %optptr_as_integer8) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %shls.addr = alloca ptr, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %optptr_as_integer8.addr = alloca i64, align 8
  %opt = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %shls, ptr %shls.addr, align 8, !tbaa !4
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %shls.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %10 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %opt, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %call = call i32 @int1e_nuc_spinor(ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %12, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cint1e_nuc_optimizer_(i64 noundef %optptr_as_integer8, ptr noundef %atm, ptr noundef %natm, ptr noundef %bas, ptr noundef %nbas, ptr noundef %env) #0 {
entry:
  %optptr_as_integer8.addr = alloca i64, align 8
  %atm.addr = alloca ptr, align 8
  %natm.addr = alloca ptr, align 8
  %bas.addr = alloca ptr, align 8
  %nbas.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %opt = alloca ptr, align 8
  store i64 %optptr_as_integer8, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  store ptr %atm, ptr %atm.addr, align 8, !tbaa !4
  store ptr %natm, ptr %natm.addr, align 8, !tbaa !4
  store ptr %bas, ptr %bas.addr, align 8, !tbaa !4
  store ptr %nbas, ptr %nbas.addr, align 8, !tbaa !4
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #7
  %0 = load i64, ptr %optptr_as_integer8.addr, align 8, !tbaa !38
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr %opt, align 8, !tbaa !4
  %2 = load ptr, ptr %opt, align 8, !tbaa !4
  %3 = load ptr, ptr %atm.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %natm.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %6 = load ptr, ptr %bas.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %nbas.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %9 = load ptr, ptr %env.addr, align 8, !tbaa !4
  call void @int1e_nuc_optimizer(ptr noundef %2, ptr noundef %3, i32 noundef %5, ptr noundef %6, i32 noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #7
  ret void
}

declare i32 @CINTg1e_ovlp(ptr noundef, ptr noundef) #2

declare i32 @CINTg1e_nuc(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!10 = !{!11, !5, i64 24}
!11 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !6, i64 64, !6, i64 68, !9, i64 72, !9, i64 76, !6, i64 80, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !12, i64 160, !12, i64 168, !6, i64 176, !6, i64 200, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !6, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 376}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !5, i64 8}
!14 = !{!11, !5, i64 16}
!15 = !{!11, !9, i64 100}
!16 = !{!11, !9, i64 108}
!17 = !{!11, !12, i64 168}
!18 = !{!12, !12, i64 0}
!19 = !{!11, !5, i64 240}
!20 = !{!11, !5, i64 248}
!21 = !{!11, !9, i64 112}
!22 = !{!11, !9, i64 116}
!23 = !{!11, !9, i64 72}
!24 = !{!11, !9, i64 148}
!25 = !{!11, !9, i64 96}
!26 = !{!11, !12, i64 160}
!27 = !{!11, !9, i64 40}
!28 = !{!11, !9, i64 44}
!29 = !{!30, !12, i64 32}
!30 = !{!"", !6, i64 0, !12, i64 24, !12, i64 32}
!31 = !{!30, !12, i64 24}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!11, !5, i64 288}
!36 = !{!11, !9, i64 32}
!37 = distinct !{!37, !33}
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !6, i64 0}
!40 = !{!11, !9, i64 56}
!41 = !{!11, !9, i64 60}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = !{!11, !9, i64 144}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}

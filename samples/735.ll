; ModuleID = 'samples/735.bc'
source_filename = "/local-ssd/proj-vvgwbgdlkvmllv7sgmjr4ouw3sqrvbvy-build/aidengro/spack-stage-proj-5.2.0-vvgwbgdlkvmllv7sgmjr4ouw3sqrvbvy/spack-src/src/PJ_misrsom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PJconsts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, double, double, double, double, double, double, double, double, double, double, double, i32, [7 x double], ptr, i32, i32, ptr, i32, double, double, i32, [4 x i8], ptr, ptr, double, ptr, %struct.PJ_REGION_S, double, ptr, %struct.PJ_REGION_S, double }
%struct.PJ_REGION_S = type { double, double, double, double }
%union.PROJVALUE = type { double }
%struct.pj_opaque = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%struct.PJ_LP = type { double, double }
%struct.PJ_XY = type { double, double }

@des_misrsom = internal constant [44 x i8] c"Space oblique for MISR\0A\09Cyl, Sph&Ell\0A\09path=\00", align 16
@pj_s_misrsom = constant ptr @des_misrsom, align 8
@.str = private unnamed_addr constant [6 x i8] c"ipath\00", align 1

; Function Attrs: nounwind uwtable
define ptr @pj_misrsom(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @pj_projection_specific_setup_misrsom(ptr noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @pj_calloc(i64 noundef 1, i64 noundef 744)
  store ptr %call1, ptr %P.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %2
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %destructor = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 17
  store ptr @pj_default_destructor, ptr %destructor, align 8, !tbaa !8
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %descr = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 1
  store ptr @des_misrsom, ptr %descr, align 8, !tbaa !13
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %need_ellps = getelementptr inbounds %struct.PJconsts, ptr %5, i32 0, i32 45
  store i32 1, ptr %need_ellps, align 4, !tbaa !14
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %left = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 50
  store i32 4, ptr %left, align 8, !tbaa !15
  %7 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %right = getelementptr inbounds %struct.PJconsts, ptr %7, i32 0, i32 51
  store i32 1, ptr %right, align 4, !tbaa !16
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define ptr @pj_projection_specific_setup_misrsom(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %path = alloca i32, align 4
  %lam = alloca double, align 8
  %alf = alloca double, align 8
  %esc = alloca double, align 8
  %ess = alloca double, align 8
  %Q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce = alloca %union.PROJVALUE, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %path) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lam) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %alf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %esc) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ess) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %call = call ptr @pj_calloc(i64 noundef 1, i64 noundef 120)
  store ptr %call, ptr %Q, align 8, !tbaa !4
  %0 = load ptr, ptr %Q, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call1 = call ptr @pj_default_destructor(ptr noundef %1, i32 noundef 12)
  store ptr %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %Q, align 8, !tbaa !4
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 9
  store ptr %2, ptr %opaque, align 8, !tbaa !17
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ctx, align 8, !tbaa !18
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %params, align 8, !tbaa !19
  %call2 = call i64 @pj_param(ptr noundef %5, ptr noundef %7, ptr noundef @.str)
  %coerce.dive = getelementptr inbounds %union.PROJVALUE, ptr %coerce, i32 0, i32 0
  store i64 %call2, ptr %coerce.dive, align 8
  %8 = load i32, ptr %coerce, align 8, !tbaa !20
  store i32 %8, ptr %path, align 4, !tbaa !21
  %9 = load i32, ptr %path, align 4, !tbaa !21
  %cmp3 = icmp sle i32 %9, 0
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, ptr %path, align 4, !tbaa !21
  %cmp4 = icmp sgt i32 %10, 233
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call6 = call ptr @pj_default_destructor(ptr noundef %11, i32 noundef -29)
  store ptr %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %12 = load i32, ptr %path, align 4, !tbaa !21
  %conv = sitofp i32 %12 to double
  %13 = call double @llvm.fmuladd.f64(double 0xBF9B9D1888886F13, double %conv, double 0x40020DF19833D0B2)
  %14 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %lam0 = getelementptr inbounds %struct.PJconsts, ptr %14, i32 0, i32 58
  store double %13, ptr %lam0, align 8, !tbaa !22
  store double 0x3FFB739C6655343E, ptr %alf, align 8, !tbaa !23
  %15 = load ptr, ptr %Q, align 8, !tbaa !4
  %p22 = getelementptr inbounds %struct.pj_opaque, ptr %15, i32 0, i32 9
  store double 0x3FB194237FA89E61, ptr %p22, align 8, !tbaa !24
  %16 = load double, ptr %alf, align 8, !tbaa !23
  %call8 = call double @sin(double noundef %16) #6
  %17 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa = getelementptr inbounds %struct.pj_opaque, ptr %17, i32 0, i32 10
  store double %call8, ptr %sa, align 8, !tbaa !26
  %18 = load double, ptr %alf, align 8, !tbaa !23
  %call9 = call double @cos(double noundef %18) #6
  %19 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 11
  store double %call9, ptr %ca, align 8, !tbaa !27
  %20 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca10 = getelementptr inbounds %struct.pj_opaque, ptr %20, i32 0, i32 11
  %21 = load double, ptr %ca10, align 8, !tbaa !27
  %22 = call double @llvm.fabs.f64(double %21)
  %cmp11 = fcmp olt double %22, 1.000000e-09
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end7
  %23 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca14 = getelementptr inbounds %struct.pj_opaque, ptr %23, i32 0, i32 11
  store double 1.000000e-09, ptr %ca14, align 8, !tbaa !27
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end7
  %24 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %24, i32 0, i32 24
  %25 = load double, ptr %es, align 8, !tbaa !28
  %26 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca16 = getelementptr inbounds %struct.pj_opaque, ptr %26, i32 0, i32 11
  %27 = load double, ptr %ca16, align 8, !tbaa !27
  %mul = fmul double %25, %27
  %28 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca17 = getelementptr inbounds %struct.pj_opaque, ptr %28, i32 0, i32 11
  %29 = load double, ptr %ca17, align 8, !tbaa !27
  %mul18 = fmul double %mul, %29
  store double %mul18, ptr %esc, align 8, !tbaa !23
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es19 = getelementptr inbounds %struct.PJconsts, ptr %30, i32 0, i32 24
  %31 = load double, ptr %es19, align 8, !tbaa !28
  %32 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa20 = getelementptr inbounds %struct.pj_opaque, ptr %32, i32 0, i32 10
  %33 = load double, ptr %sa20, align 8, !tbaa !26
  %mul21 = fmul double %31, %33
  %34 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa22 = getelementptr inbounds %struct.pj_opaque, ptr %34, i32 0, i32 10
  %35 = load double, ptr %sa22, align 8, !tbaa !26
  %mul23 = fmul double %mul21, %35
  store double %mul23, ptr %ess, align 8, !tbaa !23
  %36 = load double, ptr %esc, align 8, !tbaa !23
  %sub = fsub double 1.000000e+00, %36
  %37 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %rone_es = getelementptr inbounds %struct.PJconsts, ptr %37, i32 0, i32 30
  %38 = load double, ptr %rone_es, align 8, !tbaa !29
  %mul24 = fmul double %sub, %38
  %39 = load ptr, ptr %Q, align 8, !tbaa !4
  %w = getelementptr inbounds %struct.pj_opaque, ptr %39, i32 0, i32 8
  store double %mul24, ptr %w, align 8, !tbaa !30
  %40 = load ptr, ptr %Q, align 8, !tbaa !4
  %w25 = getelementptr inbounds %struct.pj_opaque, ptr %40, i32 0, i32 8
  %41 = load double, ptr %w25, align 8, !tbaa !30
  %42 = load ptr, ptr %Q, align 8, !tbaa !4
  %w26 = getelementptr inbounds %struct.pj_opaque, ptr %42, i32 0, i32 8
  %43 = load double, ptr %w26, align 8, !tbaa !30
  %44 = call double @llvm.fmuladd.f64(double %41, double %43, double -1.000000e+00)
  %45 = load ptr, ptr %Q, align 8, !tbaa !4
  %w28 = getelementptr inbounds %struct.pj_opaque, ptr %45, i32 0, i32 8
  store double %44, ptr %w28, align 8, !tbaa !30
  %46 = load double, ptr %ess, align 8, !tbaa !23
  %47 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %rone_es29 = getelementptr inbounds %struct.PJconsts, ptr %47, i32 0, i32 30
  %48 = load double, ptr %rone_es29, align 8, !tbaa !29
  %mul30 = fmul double %46, %48
  %49 = load ptr, ptr %Q, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.pj_opaque, ptr %49, i32 0, i32 5
  store double %mul30, ptr %q, align 8, !tbaa !31
  %50 = load double, ptr %ess, align 8, !tbaa !23
  %51 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es31 = getelementptr inbounds %struct.PJconsts, ptr %51, i32 0, i32 24
  %52 = load double, ptr %es31, align 8, !tbaa !28
  %sub32 = fsub double 2.000000e+00, %52
  %mul33 = fmul double %50, %sub32
  %53 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %rone_es34 = getelementptr inbounds %struct.PJconsts, ptr %53, i32 0, i32 30
  %54 = load double, ptr %rone_es34, align 8, !tbaa !29
  %mul35 = fmul double %mul33, %54
  %55 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %rone_es36 = getelementptr inbounds %struct.PJconsts, ptr %55, i32 0, i32 30
  %56 = load double, ptr %rone_es36, align 8, !tbaa !29
  %mul37 = fmul double %mul35, %56
  %57 = load ptr, ptr %Q, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.pj_opaque, ptr %57, i32 0, i32 6
  store double %mul37, ptr %t, align 8, !tbaa !32
  %58 = load double, ptr %esc, align 8, !tbaa !23
  %59 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %rone_es38 = getelementptr inbounds %struct.PJconsts, ptr %59, i32 0, i32 30
  %60 = load double, ptr %rone_es38, align 8, !tbaa !29
  %mul39 = fmul double %58, %60
  %61 = load ptr, ptr %Q, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.pj_opaque, ptr %61, i32 0, i32 7
  store double %mul39, ptr %u, align 8, !tbaa !33
  %62 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es = getelementptr inbounds %struct.PJconsts, ptr %62, i32 0, i32 29
  %63 = load double, ptr %one_es, align 8, !tbaa !34
  %64 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es40 = getelementptr inbounds %struct.PJconsts, ptr %64, i32 0, i32 29
  %65 = load double, ptr %one_es40, align 8, !tbaa !34
  %mul41 = fmul double %63, %65
  %66 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es42 = getelementptr inbounds %struct.PJconsts, ptr %66, i32 0, i32 29
  %67 = load double, ptr %one_es42, align 8, !tbaa !34
  %mul43 = fmul double %mul41, %67
  %68 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj = getelementptr inbounds %struct.pj_opaque, ptr %68, i32 0, i32 12
  store double %mul43, ptr %xj, align 8, !tbaa !35
  %69 = load ptr, ptr %Q, align 8, !tbaa !4
  %rlm = getelementptr inbounds %struct.pj_opaque, ptr %69, i32 0, i32 13
  store double 0.000000e+00, ptr %rlm, align 8, !tbaa !36
  %70 = load ptr, ptr %Q, align 8, !tbaa !4
  %rlm44 = getelementptr inbounds %struct.pj_opaque, ptr %70, i32 0, i32 13
  %71 = load double, ptr %rlm44, align 8, !tbaa !36
  %add = fadd double %71, 0x401921FB54442D18
  %72 = load ptr, ptr %Q, align 8, !tbaa !4
  %rlm2 = getelementptr inbounds %struct.pj_opaque, ptr %72, i32 0, i32 14
  store double %add, ptr %rlm2, align 8, !tbaa !37
  %73 = load ptr, ptr %Q, align 8, !tbaa !4
  %c3 = getelementptr inbounds %struct.pj_opaque, ptr %73, i32 0, i32 4
  store double 0.000000e+00, ptr %c3, align 8, !tbaa !38
  %74 = load ptr, ptr %Q, align 8, !tbaa !4
  %c1 = getelementptr inbounds %struct.pj_opaque, ptr %74, i32 0, i32 3
  store double 0.000000e+00, ptr %c1, align 8, !tbaa !39
  %75 = load ptr, ptr %Q, align 8, !tbaa !4
  %b = getelementptr inbounds %struct.pj_opaque, ptr %75, i32 0, i32 2
  store double 0.000000e+00, ptr %b, align 8, !tbaa !40
  %76 = load ptr, ptr %Q, align 8, !tbaa !4
  %a4 = getelementptr inbounds %struct.pj_opaque, ptr %76, i32 0, i32 1
  store double 0.000000e+00, ptr %a4, align 8, !tbaa !41
  %77 = load ptr, ptr %Q, align 8, !tbaa !4
  %a2 = getelementptr inbounds %struct.pj_opaque, ptr %77, i32 0, i32 0
  store double 0.000000e+00, ptr %a2, align 8, !tbaa !42
  %78 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @seraz0(double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %78)
  store double 9.000000e+00, ptr %lam, align 8, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %79 = load double, ptr %lam, align 8, !tbaa !23
  %cmp45 = fcmp ole double %79, 8.100010e+01
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load double, ptr %lam, align 8, !tbaa !23
  %81 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @seraz0(double noundef %80, double noundef 4.000000e+00, ptr noundef %81)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load double, ptr %lam, align 8, !tbaa !23
  %add47 = fadd double %82, 1.800000e+01
  store double %add47, ptr %lam, align 8, !tbaa !23
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  store double 1.800000e+01, ptr %lam, align 8, !tbaa !23
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc52, %for.end
  %83 = load double, ptr %lam, align 8, !tbaa !23
  %cmp49 = fcmp ole double %83, 7.200010e+01
  br i1 %cmp49, label %for.body51, label %for.end54

for.body51:                                       ; preds = %for.cond48
  %84 = load double, ptr %lam, align 8, !tbaa !23
  %85 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @seraz0(double noundef %84, double noundef 2.000000e+00, ptr noundef %85)
  br label %for.inc52

for.inc52:                                        ; preds = %for.body51
  %86 = load double, ptr %lam, align 8, !tbaa !23
  %add53 = fadd double %86, 1.800000e+01
  store double %add53, ptr %lam, align 8, !tbaa !23
  br label %for.cond48, !llvm.loop !45

for.end54:                                        ; preds = %for.cond48
  %87 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @seraz0(double noundef 9.000000e+01, double noundef 1.000000e+00, ptr noundef %87)
  %88 = load ptr, ptr %Q, align 8, !tbaa !4
  %a255 = getelementptr inbounds %struct.pj_opaque, ptr %88, i32 0, i32 0
  %89 = load double, ptr %a255, align 8, !tbaa !42
  %div = fdiv double %89, 3.000000e+01
  store double %div, ptr %a255, align 8, !tbaa !42
  %90 = load ptr, ptr %Q, align 8, !tbaa !4
  %a456 = getelementptr inbounds %struct.pj_opaque, ptr %90, i32 0, i32 1
  %91 = load double, ptr %a456, align 8, !tbaa !41
  %div57 = fdiv double %91, 6.000000e+01
  store double %div57, ptr %a456, align 8, !tbaa !41
  %92 = load ptr, ptr %Q, align 8, !tbaa !4
  %b58 = getelementptr inbounds %struct.pj_opaque, ptr %92, i32 0, i32 2
  %93 = load double, ptr %b58, align 8, !tbaa !40
  %div59 = fdiv double %93, 3.000000e+01
  store double %div59, ptr %b58, align 8, !tbaa !40
  %94 = load ptr, ptr %Q, align 8, !tbaa !4
  %c160 = getelementptr inbounds %struct.pj_opaque, ptr %94, i32 0, i32 3
  %95 = load double, ptr %c160, align 8, !tbaa !39
  %div61 = fdiv double %95, 1.500000e+01
  store double %div61, ptr %c160, align 8, !tbaa !39
  %96 = load ptr, ptr %Q, align 8, !tbaa !4
  %c362 = getelementptr inbounds %struct.pj_opaque, ptr %96, i32 0, i32 4
  %97 = load double, ptr %c362, align 8, !tbaa !38
  %div63 = fdiv double %97, 4.500000e+01
  store double %div63, ptr %c362, align 8, !tbaa !38
  %98 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv = getelementptr inbounds %struct.PJconsts, ptr %98, i32 0, i32 12
  store ptr @e_inverse, ptr %inv, align 8, !tbaa !46
  %99 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd = getelementptr inbounds %struct.PJconsts, ptr %99, i32 0, i32 11
  store ptr @e_forward, ptr %fwd, align 8, !tbaa !47
  %100 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %100, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ess) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %esc) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %alf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lam) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %path) #6
  %101 = load ptr, ptr %retval, align 8
  ret ptr %101
}

declare ptr @pj_calloc(i64 noundef, i64 noundef) #1

declare ptr @pj_default_destructor(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i64 @pj_param(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sin(double noundef) #4

; Function Attrs: nounwind
declare double @cos(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define internal void @seraz0(double noundef %lam, double noundef %mult, ptr noundef %P) #0 {
entry:
  %lam.addr = alloca double, align 8
  %mult.addr = alloca double, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %sdsq = alloca double, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %fc = alloca double, align 8
  %sd = alloca double, align 8
  %sq = alloca double, align 8
  %d__1 = alloca double, align 8
  store double %lam, ptr %lam.addr, align 8, !tbaa !23
  store double %mult, ptr %mult.addr, align 8, !tbaa !23
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %opaque, align 8, !tbaa !17
  store ptr %1, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdsq) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sq) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #6
  %2 = load double, ptr %lam.addr, align 8, !tbaa !23
  %mul = fmul double %2, 0x3F91DF46A2529D39
  store double %mul, ptr %lam.addr, align 8, !tbaa !23
  %3 = load double, ptr %lam.addr, align 8, !tbaa !23
  %call = call double @sin(double noundef %3) #6
  store double %call, ptr %sd, align 8, !tbaa !23
  %4 = load double, ptr %sd, align 8, !tbaa !23
  %5 = load double, ptr %sd, align 8, !tbaa !23
  %mul1 = fmul double %4, %5
  store double %mul1, ptr %sdsq, align 8, !tbaa !23
  %6 = load ptr, ptr %Q, align 8, !tbaa !4
  %p22 = getelementptr inbounds %struct.pj_opaque, ptr %6, i32 0, i32 9
  %7 = load double, ptr %p22, align 8, !tbaa !24
  %8 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa = getelementptr inbounds %struct.pj_opaque, ptr %8, i32 0, i32 10
  %9 = load double, ptr %sa, align 8, !tbaa !26
  %mul2 = fmul double %7, %9
  %10 = load double, ptr %lam.addr, align 8, !tbaa !23
  %call3 = call double @cos(double noundef %10) #6
  %mul4 = fmul double %mul2, %call3
  %11 = load ptr, ptr %Q, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.pj_opaque, ptr %11, i32 0, i32 6
  %12 = load double, ptr %t, align 8, !tbaa !32
  %13 = load double, ptr %sdsq, align 8, !tbaa !23
  %14 = call double @llvm.fmuladd.f64(double %12, double %13, double 1.000000e+00)
  %15 = load ptr, ptr %Q, align 8, !tbaa !4
  %w = getelementptr inbounds %struct.pj_opaque, ptr %15, i32 0, i32 8
  %16 = load double, ptr %w, align 8, !tbaa !30
  %17 = load double, ptr %sdsq, align 8, !tbaa !23
  %18 = call double @llvm.fmuladd.f64(double %16, double %17, double 1.000000e+00)
  %19 = load ptr, ptr %Q, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 5
  %20 = load double, ptr %q, align 8, !tbaa !31
  %21 = load double, ptr %sdsq, align 8, !tbaa !23
  %22 = call double @llvm.fmuladd.f64(double %20, double %21, double 1.000000e+00)
  %mul8 = fmul double %18, %22
  %div = fdiv double %14, %mul8
  %call9 = call double @sqrt(double noundef %div) #6
  %mul10 = fmul double %mul4, %call9
  store double %mul10, ptr %s, align 8, !tbaa !23
  %23 = load ptr, ptr %Q, align 8, !tbaa !4
  %q11 = getelementptr inbounds %struct.pj_opaque, ptr %23, i32 0, i32 5
  %24 = load double, ptr %q11, align 8, !tbaa !31
  %25 = load double, ptr %sdsq, align 8, !tbaa !23
  %26 = call double @llvm.fmuladd.f64(double %24, double %25, double 1.000000e+00)
  store double %26, ptr %d__1, align 8, !tbaa !23
  %27 = load ptr, ptr %Q, align 8, !tbaa !4
  %q13 = getelementptr inbounds %struct.pj_opaque, ptr %27, i32 0, i32 5
  %28 = load double, ptr %q13, align 8, !tbaa !31
  %29 = load double, ptr %sdsq, align 8, !tbaa !23
  %30 = call double @llvm.fmuladd.f64(double %28, double %29, double 1.000000e+00)
  %31 = load ptr, ptr %Q, align 8, !tbaa !4
  %w15 = getelementptr inbounds %struct.pj_opaque, ptr %31, i32 0, i32 8
  %32 = load double, ptr %w15, align 8, !tbaa !30
  %33 = load double, ptr %sdsq, align 8, !tbaa !23
  %34 = call double @llvm.fmuladd.f64(double %32, double %33, double 1.000000e+00)
  %div17 = fdiv double %30, %34
  %call18 = call double @sqrt(double noundef %div17) #6
  %35 = load ptr, ptr %Q, align 8, !tbaa !4
  %w19 = getelementptr inbounds %struct.pj_opaque, ptr %35, i32 0, i32 8
  %36 = load double, ptr %w19, align 8, !tbaa !30
  %37 = load double, ptr %sdsq, align 8, !tbaa !23
  %38 = call double @llvm.fmuladd.f64(double %36, double %37, double 1.000000e+00)
  %39 = load double, ptr %d__1, align 8, !tbaa !23
  %40 = load double, ptr %d__1, align 8, !tbaa !23
  %mul21 = fmul double %39, %40
  %div22 = fdiv double %38, %mul21
  %41 = load ptr, ptr %Q, align 8, !tbaa !4
  %p2223 = getelementptr inbounds %struct.pj_opaque, ptr %41, i32 0, i32 9
  %42 = load double, ptr %p2223, align 8, !tbaa !24
  %43 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca = getelementptr inbounds %struct.pj_opaque, ptr %43, i32 0, i32 11
  %44 = load double, ptr %ca, align 8, !tbaa !27
  %neg = fneg double %42
  %45 = call double @llvm.fmuladd.f64(double %neg, double %44, double %div22)
  %mul25 = fmul double %call18, %45
  store double %mul25, ptr %h, align 8, !tbaa !23
  %46 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj = getelementptr inbounds %struct.pj_opaque, ptr %46, i32 0, i32 12
  %47 = load double, ptr %xj, align 8, !tbaa !35
  %48 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj26 = getelementptr inbounds %struct.pj_opaque, ptr %48, i32 0, i32 12
  %49 = load double, ptr %xj26, align 8, !tbaa !35
  %50 = load double, ptr %s, align 8, !tbaa !23
  %51 = load double, ptr %s, align 8, !tbaa !23
  %mul28 = fmul double %50, %51
  %52 = call double @llvm.fmuladd.f64(double %47, double %49, double %mul28)
  %call29 = call double @sqrt(double noundef %52) #6
  store double %call29, ptr %sq, align 8, !tbaa !23
  %53 = load double, ptr %mult.addr, align 8, !tbaa !23
  %54 = load double, ptr %h, align 8, !tbaa !23
  %55 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj30 = getelementptr inbounds %struct.pj_opaque, ptr %55, i32 0, i32 12
  %56 = load double, ptr %xj30, align 8, !tbaa !35
  %57 = load double, ptr %s, align 8, !tbaa !23
  %58 = load double, ptr %s, align 8, !tbaa !23
  %mul32 = fmul double %57, %58
  %neg33 = fneg double %mul32
  %59 = call double @llvm.fmuladd.f64(double %54, double %56, double %neg33)
  %mul34 = fmul double %53, %59
  %60 = load double, ptr %sq, align 8, !tbaa !23
  %div35 = fdiv double %mul34, %60
  store double %div35, ptr %fc, align 8, !tbaa !23
  %61 = load ptr, ptr %Q, align 8, !tbaa !4
  %b = getelementptr inbounds %struct.pj_opaque, ptr %61, i32 0, i32 2
  %62 = load double, ptr %b, align 8, !tbaa !40
  %add = fadd double %62, %div35
  store double %add, ptr %b, align 8, !tbaa !40
  %63 = load double, ptr %fc, align 8, !tbaa !23
  %64 = load double, ptr %lam.addr, align 8, !tbaa !23
  %65 = load double, ptr %lam.addr, align 8, !tbaa !23
  %add36 = fadd double %64, %65
  %call37 = call double @cos(double noundef %add36) #6
  %66 = load ptr, ptr %Q, align 8, !tbaa !4
  %a2 = getelementptr inbounds %struct.pj_opaque, ptr %66, i32 0, i32 0
  %67 = load double, ptr %a2, align 8, !tbaa !42
  %68 = call double @llvm.fmuladd.f64(double %63, double %call37, double %67)
  store double %68, ptr %a2, align 8, !tbaa !42
  %69 = load double, ptr %fc, align 8, !tbaa !23
  %70 = load double, ptr %lam.addr, align 8, !tbaa !23
  %mul39 = fmul double %70, 4.000000e+00
  %call40 = call double @cos(double noundef %mul39) #6
  %71 = load ptr, ptr %Q, align 8, !tbaa !4
  %a4 = getelementptr inbounds %struct.pj_opaque, ptr %71, i32 0, i32 1
  %72 = load double, ptr %a4, align 8, !tbaa !41
  %73 = call double @llvm.fmuladd.f64(double %69, double %call40, double %72)
  store double %73, ptr %a4, align 8, !tbaa !41
  %74 = load double, ptr %mult.addr, align 8, !tbaa !23
  %75 = load double, ptr %s, align 8, !tbaa !23
  %mul42 = fmul double %74, %75
  %76 = load double, ptr %h, align 8, !tbaa !23
  %77 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj43 = getelementptr inbounds %struct.pj_opaque, ptr %77, i32 0, i32 12
  %78 = load double, ptr %xj43, align 8, !tbaa !35
  %add44 = fadd double %76, %78
  %mul45 = fmul double %mul42, %add44
  %79 = load double, ptr %sq, align 8, !tbaa !23
  %div46 = fdiv double %mul45, %79
  store double %div46, ptr %fc, align 8, !tbaa !23
  %80 = load double, ptr %fc, align 8, !tbaa !23
  %81 = load double, ptr %lam.addr, align 8, !tbaa !23
  %call47 = call double @cos(double noundef %81) #6
  %82 = load ptr, ptr %Q, align 8, !tbaa !4
  %c1 = getelementptr inbounds %struct.pj_opaque, ptr %82, i32 0, i32 3
  %83 = load double, ptr %c1, align 8, !tbaa !39
  %84 = call double @llvm.fmuladd.f64(double %80, double %call47, double %83)
  store double %84, ptr %c1, align 8, !tbaa !39
  %85 = load double, ptr %fc, align 8, !tbaa !23
  %86 = load double, ptr %lam.addr, align 8, !tbaa !23
  %mul49 = fmul double %86, 3.000000e+00
  %call50 = call double @cos(double noundef %mul49) #6
  %87 = load ptr, ptr %Q, align 8, !tbaa !4
  %c3 = getelementptr inbounds %struct.pj_opaque, ptr %87, i32 0, i32 4
  %88 = load double, ptr %c3, align 8, !tbaa !38
  %89 = call double @llvm.fmuladd.f64(double %85, double %call50, double %88)
  store double %89, ptr %c3, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sq) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdsq) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal { double, double } @e_inverse(double %xy.coerce0, double %xy.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.PJ_LP, align 8
  %xy = alloca %struct.PJ_XY, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %nn = alloca i32, align 4
  %lamt = alloca double, align 8
  %sdsq = alloca double, align 8
  %s = alloca double, align 8
  %lamdp = alloca double, align 8
  %phidp = alloca double, align 8
  %sppsq = alloca double, align 8
  %dd = alloca double, align 8
  %sd = alloca double, align 8
  %sl = alloca double, align 8
  %fac = alloca double, align 8
  %scl = alloca double, align 8
  %sav = alloca double, align 8
  %spp = alloca double, align 8
  %0 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 0
  store double %xy.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 1
  store double %xy.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %opaque, align 8, !tbaa !17
  store ptr %3, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lamt) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdsq) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lamdp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %phidp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sppsq) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sl) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fac) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %scl) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sav) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %spp) #6
  %x = getelementptr inbounds %struct.PJ_XY, ptr %xy, i32 0, i32 0
  %4 = load double, ptr %x, align 8, !tbaa !48
  %5 = load ptr, ptr %Q, align 8, !tbaa !4
  %b = getelementptr inbounds %struct.pj_opaque, ptr %5, i32 0, i32 2
  %6 = load double, ptr %b, align 8, !tbaa !40
  %div = fdiv double %4, %6
  store double %div, ptr %lamdp, align 8, !tbaa !23
  store i32 50, ptr %nn, align 4, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %7 = load double, ptr %lamdp, align 8, !tbaa !23
  store double %7, ptr %sav, align 8, !tbaa !23
  %8 = load double, ptr %lamdp, align 8, !tbaa !23
  %call = call double @sin(double noundef %8) #6
  store double %call, ptr %sd, align 8, !tbaa !23
  %9 = load double, ptr %sd, align 8, !tbaa !23
  %10 = load double, ptr %sd, align 8, !tbaa !23
  %mul = fmul double %9, %10
  store double %mul, ptr %sdsq, align 8, !tbaa !23
  %11 = load ptr, ptr %Q, align 8, !tbaa !4
  %p22 = getelementptr inbounds %struct.pj_opaque, ptr %11, i32 0, i32 9
  %12 = load double, ptr %p22, align 8, !tbaa !24
  %13 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa = getelementptr inbounds %struct.pj_opaque, ptr %13, i32 0, i32 10
  %14 = load double, ptr %sa, align 8, !tbaa !26
  %mul1 = fmul double %12, %14
  %15 = load double, ptr %lamdp, align 8, !tbaa !23
  %call2 = call double @cos(double noundef %15) #6
  %mul3 = fmul double %mul1, %call2
  %16 = load ptr, ptr %Q, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.pj_opaque, ptr %16, i32 0, i32 6
  %17 = load double, ptr %t, align 8, !tbaa !32
  %18 = load double, ptr %sdsq, align 8, !tbaa !23
  %19 = call double @llvm.fmuladd.f64(double %17, double %18, double 1.000000e+00)
  %20 = load ptr, ptr %Q, align 8, !tbaa !4
  %w = getelementptr inbounds %struct.pj_opaque, ptr %20, i32 0, i32 8
  %21 = load double, ptr %w, align 8, !tbaa !30
  %22 = load double, ptr %sdsq, align 8, !tbaa !23
  %23 = call double @llvm.fmuladd.f64(double %21, double %22, double 1.000000e+00)
  %24 = load ptr, ptr %Q, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.pj_opaque, ptr %24, i32 0, i32 5
  %25 = load double, ptr %q, align 8, !tbaa !31
  %26 = load double, ptr %sdsq, align 8, !tbaa !23
  %27 = call double @llvm.fmuladd.f64(double %25, double %26, double 1.000000e+00)
  %mul7 = fmul double %23, %27
  %div8 = fdiv double %19, %mul7
  %call9 = call double @sqrt(double noundef %div8) #6
  %mul10 = fmul double %mul3, %call9
  store double %mul10, ptr %s, align 8, !tbaa !23
  %x11 = getelementptr inbounds %struct.PJ_XY, ptr %xy, i32 0, i32 0
  %28 = load double, ptr %x11, align 8, !tbaa !48
  %y = getelementptr inbounds %struct.PJ_XY, ptr %xy, i32 0, i32 1
  %29 = load double, ptr %y, align 8, !tbaa !50
  %30 = load double, ptr %s, align 8, !tbaa !23
  %mul12 = fmul double %29, %30
  %31 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj = getelementptr inbounds %struct.pj_opaque, ptr %31, i32 0, i32 12
  %32 = load double, ptr %xj, align 8, !tbaa !35
  %div13 = fdiv double %mul12, %32
  %add = fadd double %28, %div13
  %33 = load ptr, ptr %Q, align 8, !tbaa !4
  %a2 = getelementptr inbounds %struct.pj_opaque, ptr %33, i32 0, i32 0
  %34 = load double, ptr %a2, align 8, !tbaa !42
  %35 = load double, ptr %lamdp, align 8, !tbaa !23
  %mul14 = fmul double 2.000000e+00, %35
  %call15 = call double @sin(double noundef %mul14) #6
  %neg = fneg double %34
  %36 = call double @llvm.fmuladd.f64(double %neg, double %call15, double %add)
  %37 = load ptr, ptr %Q, align 8, !tbaa !4
  %a4 = getelementptr inbounds %struct.pj_opaque, ptr %37, i32 0, i32 1
  %38 = load double, ptr %a4, align 8, !tbaa !41
  %39 = load double, ptr %lamdp, align 8, !tbaa !23
  %mul17 = fmul double %39, 4.000000e+00
  %call18 = call double @sin(double noundef %mul17) #6
  %neg20 = fneg double %38
  %40 = call double @llvm.fmuladd.f64(double %neg20, double %call18, double %36)
  %41 = load double, ptr %s, align 8, !tbaa !23
  %42 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj21 = getelementptr inbounds %struct.pj_opaque, ptr %42, i32 0, i32 12
  %43 = load double, ptr %xj21, align 8, !tbaa !35
  %div22 = fdiv double %41, %43
  %44 = load ptr, ptr %Q, align 8, !tbaa !4
  %c1 = getelementptr inbounds %struct.pj_opaque, ptr %44, i32 0, i32 3
  %45 = load double, ptr %c1, align 8, !tbaa !39
  %46 = load double, ptr %lamdp, align 8, !tbaa !23
  %call23 = call double @sin(double noundef %46) #6
  %47 = load ptr, ptr %Q, align 8, !tbaa !4
  %c3 = getelementptr inbounds %struct.pj_opaque, ptr %47, i32 0, i32 4
  %48 = load double, ptr %c3, align 8, !tbaa !38
  %49 = load double, ptr %lamdp, align 8, !tbaa !23
  %mul25 = fmul double %49, 3.000000e+00
  %call26 = call double @sin(double noundef %mul25) #6
  %mul27 = fmul double %48, %call26
  %50 = call double @llvm.fmuladd.f64(double %45, double %call23, double %mul27)
  %neg29 = fneg double %div22
  %51 = call double @llvm.fmuladd.f64(double %neg29, double %50, double %40)
  store double %51, ptr %lamdp, align 8, !tbaa !23
  %52 = load ptr, ptr %Q, align 8, !tbaa !4
  %b30 = getelementptr inbounds %struct.pj_opaque, ptr %52, i32 0, i32 2
  %53 = load double, ptr %b30, align 8, !tbaa !40
  %54 = load double, ptr %lamdp, align 8, !tbaa !23
  %div31 = fdiv double %54, %53
  store double %div31, ptr %lamdp, align 8, !tbaa !23
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %55 = load double, ptr %lamdp, align 8, !tbaa !23
  %56 = load double, ptr %sav, align 8, !tbaa !23
  %sub = fsub double %55, %56
  %57 = call double @llvm.fabs.f64(double %sub)
  %cmp = fcmp oge double %57, 0x3E7AD7F29ABCAF48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %58 = load i32, ptr %nn, align 4, !tbaa !21
  %dec = add nsw i32 %58, -1
  store i32 %dec, ptr %nn, align 4, !tbaa !21
  %tobool = icmp ne i32 %dec, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %59 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ]
  br i1 %59, label %do.body, label %do.end, !llvm.loop !51

do.end:                                           ; preds = %land.end
  %60 = load double, ptr %lamdp, align 8, !tbaa !23
  %call32 = call double @sin(double noundef %60) #6
  store double %call32, ptr %sl, align 8, !tbaa !23
  %61 = load double, ptr %s, align 8, !tbaa !23
  %62 = load double, ptr %s, align 8, !tbaa !23
  %mul33 = fmul double %61, %62
  %63 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj34 = getelementptr inbounds %struct.pj_opaque, ptr %63, i32 0, i32 12
  %64 = load double, ptr %xj34, align 8, !tbaa !35
  %div35 = fdiv double %mul33, %64
  %65 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj36 = getelementptr inbounds %struct.pj_opaque, ptr %65, i32 0, i32 12
  %66 = load double, ptr %xj36, align 8, !tbaa !35
  %div37 = fdiv double %div35, %66
  %add38 = fadd double 1.000000e+00, %div37
  %call39 = call double @sqrt(double noundef %add38) #6
  %y40 = getelementptr inbounds %struct.PJ_XY, ptr %xy, i32 0, i32 1
  %67 = load double, ptr %y40, align 8, !tbaa !50
  %68 = load ptr, ptr %Q, align 8, !tbaa !4
  %c141 = getelementptr inbounds %struct.pj_opaque, ptr %68, i32 0, i32 3
  %69 = load double, ptr %c141, align 8, !tbaa !39
  %70 = load double, ptr %sl, align 8, !tbaa !23
  %neg43 = fneg double %69
  %71 = call double @llvm.fmuladd.f64(double %neg43, double %70, double %67)
  %72 = load ptr, ptr %Q, align 8, !tbaa !4
  %c344 = getelementptr inbounds %struct.pj_opaque, ptr %72, i32 0, i32 4
  %73 = load double, ptr %c344, align 8, !tbaa !38
  %74 = load double, ptr %lamdp, align 8, !tbaa !23
  %mul45 = fmul double %74, 3.000000e+00
  %call46 = call double @sin(double noundef %mul45) #6
  %neg48 = fneg double %73
  %75 = call double @llvm.fmuladd.f64(double %neg48, double %call46, double %71)
  %mul49 = fmul double %call39, %75
  %call50 = call double @exp(double noundef %mul49) #6
  store double %call50, ptr %fac, align 8, !tbaa !23
  %76 = load double, ptr %fac, align 8, !tbaa !23
  %call51 = call double @atan(double noundef %76) #6
  %sub52 = fsub double %call51, 0x3FE921FB54442D18
  %mul53 = fmul double 2.000000e+00, %sub52
  store double %mul53, ptr %phidp, align 8, !tbaa !23
  %77 = load double, ptr %sl, align 8, !tbaa !23
  %78 = load double, ptr %sl, align 8, !tbaa !23
  %mul54 = fmul double %77, %78
  store double %mul54, ptr %dd, align 8, !tbaa !23
  %79 = load double, ptr %lamdp, align 8, !tbaa !23
  %call55 = call double @cos(double noundef %79) #6
  %80 = call double @llvm.fabs.f64(double %call55)
  %cmp56 = fcmp olt double %80, 0x3E7AD7F29ABCAF48
  br i1 %cmp56, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %81 = load double, ptr %lamdp, align 8, !tbaa !23
  %sub57 = fsub double %81, 0x3E7AD7F29ABCAF48
  store double %sub57, ptr %lamdp, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %82 = load double, ptr %phidp, align 8, !tbaa !23
  %call58 = call double @sin(double noundef %82) #6
  store double %call58, ptr %spp, align 8, !tbaa !23
  %83 = load double, ptr %spp, align 8, !tbaa !23
  %84 = load double, ptr %spp, align 8, !tbaa !23
  %mul59 = fmul double %83, %84
  store double %mul59, ptr %sppsq, align 8, !tbaa !23
  %85 = load double, ptr %sppsq, align 8, !tbaa !23
  %86 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %rone_es = getelementptr inbounds %struct.PJconsts, ptr %86, i32 0, i32 30
  %87 = load double, ptr %rone_es, align 8, !tbaa !29
  %neg61 = fneg double %85
  %88 = call double @llvm.fmuladd.f64(double %neg61, double %87, double 1.000000e+00)
  %89 = load double, ptr %lamdp, align 8, !tbaa !23
  %call62 = call double @tan(double noundef %89) #6
  %mul63 = fmul double %88, %call62
  %90 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca = getelementptr inbounds %struct.pj_opaque, ptr %90, i32 0, i32 11
  %91 = load double, ptr %ca, align 8, !tbaa !27
  %92 = load double, ptr %spp, align 8, !tbaa !23
  %93 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa65 = getelementptr inbounds %struct.pj_opaque, ptr %93, i32 0, i32 10
  %94 = load double, ptr %sa65, align 8, !tbaa !26
  %mul66 = fmul double %92, %94
  %95 = load ptr, ptr %Q, align 8, !tbaa !4
  %q67 = getelementptr inbounds %struct.pj_opaque, ptr %95, i32 0, i32 5
  %96 = load double, ptr %q67, align 8, !tbaa !31
  %97 = load double, ptr %dd, align 8, !tbaa !23
  %98 = call double @llvm.fmuladd.f64(double %96, double %97, double 1.000000e+00)
  %99 = load double, ptr %sppsq, align 8, !tbaa !23
  %sub69 = fsub double 1.000000e+00, %99
  %100 = load double, ptr %sppsq, align 8, !tbaa !23
  %101 = load ptr, ptr %Q, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.pj_opaque, ptr %101, i32 0, i32 7
  %102 = load double, ptr %u, align 8, !tbaa !33
  %mul71 = fmul double %100, %102
  %neg72 = fneg double %mul71
  %103 = call double @llvm.fmuladd.f64(double %98, double %sub69, double %neg72)
  %call73 = call double @sqrt(double noundef %103) #6
  %mul74 = fmul double %mul66, %call73
  %104 = load double, ptr %lamdp, align 8, !tbaa !23
  %call75 = call double @cos(double noundef %104) #6
  %div76 = fdiv double %mul74, %call75
  %neg77 = fneg double %div76
  %105 = call double @llvm.fmuladd.f64(double %mul63, double %91, double %neg77)
  %106 = load double, ptr %sppsq, align 8, !tbaa !23
  %107 = load ptr, ptr %Q, align 8, !tbaa !4
  %u78 = getelementptr inbounds %struct.pj_opaque, ptr %107, i32 0, i32 7
  %108 = load double, ptr %u78, align 8, !tbaa !33
  %add79 = fadd double 1.000000e+00, %108
  %neg81 = fneg double %106
  %109 = call double @llvm.fmuladd.f64(double %neg81, double %add79, double 1.000000e+00)
  %div82 = fdiv double %105, %109
  %call83 = call double @atan(double noundef %div82) #6
  store double %call83, ptr %lamt, align 8, !tbaa !23
  %110 = load double, ptr %lamt, align 8, !tbaa !23
  %cmp84 = fcmp oge double %110, 0.000000e+00
  %111 = zext i1 %cmp84 to i64
  %cond = select i1 %cmp84, double 1.000000e+00, double -1.000000e+00
  store double %cond, ptr %sl, align 8, !tbaa !23
  %112 = load double, ptr %lamdp, align 8, !tbaa !23
  %call85 = call double @cos(double noundef %112) #6
  %cmp86 = fcmp oge double %call85, 0.000000e+00
  %113 = zext i1 %cmp86 to i64
  %cond87 = select i1 %cmp86, double 1.000000e+00, double -1.000000e+00
  store double %cond87, ptr %scl, align 8, !tbaa !23
  %114 = load double, ptr %scl, align 8, !tbaa !23
  %sub88 = fsub double 1.000000e+00, %114
  %mul89 = fmul double 0x3FF921FB54442D18, %sub88
  %115 = load double, ptr %sl, align 8, !tbaa !23
  %116 = load double, ptr %lamt, align 8, !tbaa !23
  %neg91 = fneg double %mul89
  %117 = call double @llvm.fmuladd.f64(double %neg91, double %115, double %116)
  store double %117, ptr %lamt, align 8, !tbaa !23
  %118 = load double, ptr %lamt, align 8, !tbaa !23
  %119 = load ptr, ptr %Q, align 8, !tbaa !4
  %p2292 = getelementptr inbounds %struct.pj_opaque, ptr %119, i32 0, i32 9
  %120 = load double, ptr %p2292, align 8, !tbaa !24
  %121 = load double, ptr %lamdp, align 8, !tbaa !23
  %neg94 = fneg double %120
  %122 = call double @llvm.fmuladd.f64(double %neg94, double %121, double %118)
  %lam = getelementptr inbounds %struct.PJ_LP, ptr %retval, i32 0, i32 0
  store double %122, ptr %lam, align 8, !tbaa !48
  %123 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa95 = getelementptr inbounds %struct.pj_opaque, ptr %123, i32 0, i32 10
  %124 = load double, ptr %sa95, align 8, !tbaa !26
  %125 = call double @llvm.fabs.f64(double %124)
  %cmp96 = fcmp olt double %125, 0x3E7AD7F29ABCAF48
  br i1 %cmp96, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.end
  %126 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %ctx, align 8, !tbaa !18
  %128 = load double, ptr %spp, align 8, !tbaa !23
  %129 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es = getelementptr inbounds %struct.PJconsts, ptr %129, i32 0, i32 29
  %130 = load double, ptr %one_es, align 8, !tbaa !34
  %131 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es98 = getelementptr inbounds %struct.PJconsts, ptr %131, i32 0, i32 29
  %132 = load double, ptr %one_es98, align 8, !tbaa !34
  %133 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %133, i32 0, i32 24
  %134 = load double, ptr %es, align 8, !tbaa !28
  %135 = load double, ptr %sppsq, align 8, !tbaa !23
  %mul100 = fmul double %134, %135
  %136 = call double @llvm.fmuladd.f64(double %130, double %132, double %mul100)
  %call101 = call double @sqrt(double noundef %136) #6
  %div102 = fdiv double %128, %call101
  %call103 = call double @aasin(ptr noundef %127, double noundef %div102)
  %phi = getelementptr inbounds %struct.PJ_LP, ptr %retval, i32 0, i32 1
  store double %call103, ptr %phi, align 8, !tbaa !50
  br label %if.end117

if.else:                                          ; preds = %if.end
  %137 = load double, ptr %lamdp, align 8, !tbaa !23
  %call104 = call double @tan(double noundef %137) #6
  %138 = load double, ptr %lamt, align 8, !tbaa !23
  %call105 = call double @cos(double noundef %138) #6
  %139 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca107 = getelementptr inbounds %struct.pj_opaque, ptr %139, i32 0, i32 11
  %140 = load double, ptr %ca107, align 8, !tbaa !27
  %141 = load double, ptr %lamt, align 8, !tbaa !23
  %call108 = call double @sin(double noundef %141) #6
  %mul109 = fmul double %140, %call108
  %neg110 = fneg double %mul109
  %142 = call double @llvm.fmuladd.f64(double %call104, double %call105, double %neg110)
  %143 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es111 = getelementptr inbounds %struct.PJconsts, ptr %143, i32 0, i32 29
  %144 = load double, ptr %one_es111, align 8, !tbaa !34
  %145 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa112 = getelementptr inbounds %struct.pj_opaque, ptr %145, i32 0, i32 10
  %146 = load double, ptr %sa112, align 8, !tbaa !26
  %mul113 = fmul double %144, %146
  %div114 = fdiv double %142, %mul113
  %call115 = call double @atan(double noundef %div114) #6
  %phi116 = getelementptr inbounds %struct.PJ_LP, ptr %retval, i32 0, i32 1
  store double %call115, ptr %phi116, align 8, !tbaa !50
  br label %if.end117

if.end117:                                        ; preds = %if.else, %if.then97
  call void @llvm.lifetime.end.p0(i64 8, ptr %spp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sav) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %scl) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fac) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sl) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sppsq) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %phidp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lamdp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdsq) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lamt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %147 = load { double, double }, ptr %retval, align 8
  ret { double, double } %147
}

; Function Attrs: nounwind uwtable
define internal { double, double } @e_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.PJ_XY, align 8
  %lp = alloca %struct.PJ_LP, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %l = alloca i32, align 4
  %nn = alloca i32, align 4
  %lamt = alloca double, align 8
  %xlam = alloca double, align 8
  %sdsq = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %s = alloca double, align 8
  %lamdp = alloca double, align 8
  %phidp = alloca double, align 8
  %lampp = alloca double, align 8
  %tanph = alloca double, align 8
  %lamtp = alloca double, align 8
  %cl = alloca double, align 8
  %sd = alloca double, align 8
  %sp = alloca double, align 8
  %sav = alloca double, align 8
  %tanphi = alloca double, align 8
  %fac = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 0
  store double %lp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 1
  store double %lp.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %opaque, align 8, !tbaa !17
  store ptr %3, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lamt) #6
  store double 0.000000e+00, ptr %lamt, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %xlam) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdsq) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lamdp) #6
  store double 0.000000e+00, ptr %lamdp, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %phidp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lampp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tanph) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lamtp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sav) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tanphi) #6
  %phi = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  %4 = load double, ptr %phi, align 8, !tbaa !50
  %cmp = fcmp ogt double %4, 0x3FF921FB54442D18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %phi1 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  store double 0x3FF921FB54442D18, ptr %phi1, align 8, !tbaa !50
  br label %if.end6

if.else:                                          ; preds = %entry
  %phi2 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  %5 = load double, ptr %phi2, align 8, !tbaa !50
  %cmp3 = fcmp olt double %5, 0xBFF921FB54442D18
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %phi5 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  store double 0xBFF921FB54442D18, ptr %phi5, align 8, !tbaa !50
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %phi7 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  %6 = load double, ptr %phi7, align 8, !tbaa !50
  %cmp8 = fcmp oge double %6, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end6
  store double 0x3FF921FB54442D18, ptr %lampp, align 8, !tbaa !23
  br label %if.end11

if.else10:                                        ; preds = %if.end6
  store double 0x4012D97C7F3321D2, ptr %lampp, align 8, !tbaa !23
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  %phi12 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  %7 = load double, ptr %phi12, align 8, !tbaa !50
  %call = call double @tan(double noundef %7) #6
  store double %call, ptr %tanphi, align 8, !tbaa !23
  store i32 0, ptr %nn, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %fac) #6
  %8 = load double, ptr %lampp, align 8, !tbaa !23
  store double %8, ptr %sav, align 8, !tbaa !23
  %lam = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 0
  %9 = load double, ptr %lam, align 8, !tbaa !48
  %10 = load ptr, ptr %Q, align 8, !tbaa !4
  %p22 = getelementptr inbounds %struct.pj_opaque, ptr %10, i32 0, i32 9
  %11 = load double, ptr %p22, align 8, !tbaa !24
  %12 = load double, ptr %lampp, align 8, !tbaa !23
  %13 = call double @llvm.fmuladd.f64(double %11, double %12, double %9)
  store double %13, ptr %lamtp, align 8, !tbaa !23
  %14 = load double, ptr %lamtp, align 8, !tbaa !23
  %call13 = call double @cos(double noundef %14) #6
  store double %call13, ptr %cl, align 8, !tbaa !23
  %15 = load double, ptr %cl, align 8, !tbaa !23
  %cmp14 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %for.cond
  %16 = load double, ptr %lampp, align 8, !tbaa !23
  %17 = load double, ptr %lampp, align 8, !tbaa !23
  %call16 = call double @sin(double noundef %17) #6
  %18 = call double @llvm.fmuladd.f64(double %call16, double 0x3FF921FB54442D18, double %16)
  store double %18, ptr %fac, align 8, !tbaa !23
  br label %if.end19

if.else17:                                        ; preds = %for.cond
  %19 = load double, ptr %lampp, align 8, !tbaa !23
  %20 = load double, ptr %lampp, align 8, !tbaa !23
  %call18 = call double @sin(double noundef %20) #6
  %neg = fneg double %call18
  %21 = call double @llvm.fmuladd.f64(double %neg, double 0x3FF921FB54442D18, double %19)
  store double %21, ptr %fac, align 8, !tbaa !23
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  store i32 50, ptr %l, align 4, !tbaa !21
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %if.end19
  %22 = load i32, ptr %l, align 4, !tbaa !21
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond20
  %lam21 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 0
  %23 = load double, ptr %lam21, align 8, !tbaa !48
  %24 = load ptr, ptr %Q, align 8, !tbaa !4
  %p2222 = getelementptr inbounds %struct.pj_opaque, ptr %24, i32 0, i32 9
  %25 = load double, ptr %p2222, align 8, !tbaa !24
  %26 = load double, ptr %sav, align 8, !tbaa !23
  %27 = call double @llvm.fmuladd.f64(double %25, double %26, double %23)
  store double %27, ptr %lamt, align 8, !tbaa !23
  %28 = load double, ptr %lamt, align 8, !tbaa !23
  %call23 = call double @cos(double noundef %28) #6
  store double %call23, ptr %c, align 8, !tbaa !23
  %29 = call double @llvm.fabs.f64(double %call23)
  %cmp24 = fcmp olt double %29, 0x3E7AD7F29ABCAF48
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  %30 = load double, ptr %lamt, align 8, !tbaa !23
  %sub = fsub double %30, 0x3E7AD7F29ABCAF48
  store double %sub, ptr %lamt, align 8, !tbaa !23
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.body
  %31 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es = getelementptr inbounds %struct.PJconsts, ptr %31, i32 0, i32 29
  %32 = load double, ptr %one_es, align 8, !tbaa !34
  %33 = load double, ptr %tanphi, align 8, !tbaa !23
  %mul = fmul double %32, %33
  %34 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa = getelementptr inbounds %struct.pj_opaque, ptr %34, i32 0, i32 10
  %35 = load double, ptr %sa, align 8, !tbaa !26
  %36 = load double, ptr %lamt, align 8, !tbaa !23
  %call28 = call double @sin(double noundef %36) #6
  %37 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca = getelementptr inbounds %struct.pj_opaque, ptr %37, i32 0, i32 11
  %38 = load double, ptr %ca, align 8, !tbaa !27
  %mul29 = fmul double %call28, %38
  %39 = call double @llvm.fmuladd.f64(double %mul, double %35, double %mul29)
  %40 = load double, ptr %c, align 8, !tbaa !23
  %div = fdiv double %39, %40
  store double %div, ptr %xlam, align 8, !tbaa !23
  %41 = load double, ptr %xlam, align 8, !tbaa !23
  %call30 = call double @atan(double noundef %41) #6
  %42 = load double, ptr %fac, align 8, !tbaa !23
  %add = fadd double %call30, %42
  store double %add, ptr %lamdp, align 8, !tbaa !23
  %43 = load double, ptr %sav, align 8, !tbaa !23
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = load double, ptr %lamdp, align 8, !tbaa !23
  %46 = call double @llvm.fabs.f64(double %45)
  %sub31 = fsub double %44, %46
  %47 = call double @llvm.fabs.f64(double %sub31)
  %cmp32 = fcmp olt double %47, 0x3E7AD7F29ABCAF48
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  br label %for.end

if.end34:                                         ; preds = %if.end26
  %48 = load double, ptr %lamdp, align 8, !tbaa !23
  store double %48, ptr %sav, align 8, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %49 = load i32, ptr %l, align 4, !tbaa !21
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr %l, align 4, !tbaa !21
  br label %for.cond20, !llvm.loop !52

for.end:                                          ; preds = %if.then33, %for.cond20
  %50 = load i32, ptr %l, align 4, !tbaa !21
  %tobool35 = icmp ne i32 %50, 0
  br i1 %tobool35, label %lor.lhs.false, label %if.then40

lor.lhs.false:                                    ; preds = %for.end
  %51 = load i32, ptr %nn, align 4, !tbaa !21
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %nn, align 4, !tbaa !21
  %cmp36 = icmp sge i32 %inc, 3
  br i1 %cmp36, label %if.then40, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %52 = load double, ptr %lamdp, align 8, !tbaa !23
  %53 = load ptr, ptr %Q, align 8, !tbaa !4
  %rlm = getelementptr inbounds %struct.pj_opaque, ptr %53, i32 0, i32 13
  %54 = load double, ptr %rlm, align 8, !tbaa !36
  %cmp38 = fcmp ogt double %52, %54
  br i1 %cmp38, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %lor.lhs.false37
  %55 = load double, ptr %lamdp, align 8, !tbaa !23
  %56 = load ptr, ptr %Q, align 8, !tbaa !4
  %rlm2 = getelementptr inbounds %struct.pj_opaque, ptr %56, i32 0, i32 14
  %57 = load double, ptr %rlm2, align 8, !tbaa !37
  %cmp39 = fcmp olt double %55, %57
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true, %lor.lhs.false, %for.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true, %lor.lhs.false37
  %58 = load double, ptr %lamdp, align 8, !tbaa !23
  %59 = load ptr, ptr %Q, align 8, !tbaa !4
  %rlm42 = getelementptr inbounds %struct.pj_opaque, ptr %59, i32 0, i32 13
  %60 = load double, ptr %rlm42, align 8, !tbaa !36
  %cmp43 = fcmp ole double %58, %60
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.end41
  store double 0x401F6A7A2955385E, ptr %lampp, align 8, !tbaa !23
  br label %if.end50

if.else45:                                        ; preds = %if.end41
  %61 = load double, ptr %lamdp, align 8, !tbaa !23
  %62 = load ptr, ptr %Q, align 8, !tbaa !4
  %rlm246 = getelementptr inbounds %struct.pj_opaque, ptr %62, i32 0, i32 14
  %63 = load double, ptr %rlm246, align 8, !tbaa !37
  %cmp47 = fcmp oge double %61, %63
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else45
  store double 0x3FF921FB54442D18, ptr %lampp, align 8, !tbaa !23
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then44
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %fac) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end51
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end51:                                        ; preds = %cleanup
  %64 = load i32, ptr %l, align 4, !tbaa !21
  %tobool52 = icmp ne i32 %64, 0
  br i1 %tobool52, label %if.then53, label %if.else112

if.then53:                                        ; preds = %for.end51
  %phi54 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  %65 = load double, ptr %phi54, align 8, !tbaa !50
  %call55 = call double @sin(double noundef %65) #6
  store double %call55, ptr %sp, align 8, !tbaa !23
  %66 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %ctx, align 8, !tbaa !18
  %68 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %one_es56 = getelementptr inbounds %struct.PJconsts, ptr %68, i32 0, i32 29
  %69 = load double, ptr %one_es56, align 8, !tbaa !34
  %70 = load ptr, ptr %Q, align 8, !tbaa !4
  %ca57 = getelementptr inbounds %struct.pj_opaque, ptr %70, i32 0, i32 11
  %71 = load double, ptr %ca57, align 8, !tbaa !27
  %mul58 = fmul double %69, %71
  %72 = load double, ptr %sp, align 8, !tbaa !23
  %73 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa60 = getelementptr inbounds %struct.pj_opaque, ptr %73, i32 0, i32 10
  %74 = load double, ptr %sa60, align 8, !tbaa !26
  %phi61 = getelementptr inbounds %struct.PJ_LP, ptr %lp, i32 0, i32 1
  %75 = load double, ptr %phi61, align 8, !tbaa !50
  %call62 = call double @cos(double noundef %75) #6
  %mul63 = fmul double %74, %call62
  %76 = load double, ptr %lamt, align 8, !tbaa !23
  %call64 = call double @sin(double noundef %76) #6
  %mul65 = fmul double %mul63, %call64
  %neg66 = fneg double %mul65
  %77 = call double @llvm.fmuladd.f64(double %mul58, double %72, double %neg66)
  %78 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %78, i32 0, i32 24
  %79 = load double, ptr %es, align 8, !tbaa !28
  %80 = load double, ptr %sp, align 8, !tbaa !23
  %mul67 = fmul double %79, %80
  %81 = load double, ptr %sp, align 8, !tbaa !23
  %neg69 = fneg double %mul67
  %82 = call double @llvm.fmuladd.f64(double %neg69, double %81, double 1.000000e+00)
  %call70 = call double @sqrt(double noundef %82) #6
  %div71 = fdiv double %77, %call70
  %call72 = call double @aasin(ptr noundef %67, double noundef %div71)
  store double %call72, ptr %phidp, align 8, !tbaa !23
  %83 = load double, ptr %phidp, align 8, !tbaa !23
  %84 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %83, double 0x3FE921FB54442D18)
  %call74 = call double @tan(double noundef %84) #6
  %call75 = call double @log(double noundef %call74) #6
  store double %call75, ptr %tanph, align 8, !tbaa !23
  %85 = load double, ptr %lamdp, align 8, !tbaa !23
  %call76 = call double @sin(double noundef %85) #6
  store double %call76, ptr %sd, align 8, !tbaa !23
  %86 = load double, ptr %sd, align 8, !tbaa !23
  %87 = load double, ptr %sd, align 8, !tbaa !23
  %mul77 = fmul double %86, %87
  store double %mul77, ptr %sdsq, align 8, !tbaa !23
  %88 = load ptr, ptr %Q, align 8, !tbaa !4
  %p2278 = getelementptr inbounds %struct.pj_opaque, ptr %88, i32 0, i32 9
  %89 = load double, ptr %p2278, align 8, !tbaa !24
  %90 = load ptr, ptr %Q, align 8, !tbaa !4
  %sa79 = getelementptr inbounds %struct.pj_opaque, ptr %90, i32 0, i32 10
  %91 = load double, ptr %sa79, align 8, !tbaa !26
  %mul80 = fmul double %89, %91
  %92 = load double, ptr %lamdp, align 8, !tbaa !23
  %call81 = call double @cos(double noundef %92) #6
  %mul82 = fmul double %mul80, %call81
  %93 = load ptr, ptr %Q, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.pj_opaque, ptr %93, i32 0, i32 6
  %94 = load double, ptr %t, align 8, !tbaa !32
  %95 = load double, ptr %sdsq, align 8, !tbaa !23
  %96 = call double @llvm.fmuladd.f64(double %94, double %95, double 1.000000e+00)
  %97 = load ptr, ptr %Q, align 8, !tbaa !4
  %w = getelementptr inbounds %struct.pj_opaque, ptr %97, i32 0, i32 8
  %98 = load double, ptr %w, align 8, !tbaa !30
  %99 = load double, ptr %sdsq, align 8, !tbaa !23
  %100 = call double @llvm.fmuladd.f64(double %98, double %99, double 1.000000e+00)
  %101 = load ptr, ptr %Q, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.pj_opaque, ptr %101, i32 0, i32 5
  %102 = load double, ptr %q, align 8, !tbaa !31
  %103 = load double, ptr %sdsq, align 8, !tbaa !23
  %104 = call double @llvm.fmuladd.f64(double %102, double %103, double 1.000000e+00)
  %mul86 = fmul double %100, %104
  %div87 = fdiv double %96, %mul86
  %call88 = call double @sqrt(double noundef %div87) #6
  %mul89 = fmul double %mul82, %call88
  store double %mul89, ptr %s, align 8, !tbaa !23
  %105 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj = getelementptr inbounds %struct.pj_opaque, ptr %105, i32 0, i32 12
  %106 = load double, ptr %xj, align 8, !tbaa !35
  %107 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj90 = getelementptr inbounds %struct.pj_opaque, ptr %107, i32 0, i32 12
  %108 = load double, ptr %xj90, align 8, !tbaa !35
  %109 = load double, ptr %s, align 8, !tbaa !23
  %110 = load double, ptr %s, align 8, !tbaa !23
  %mul92 = fmul double %109, %110
  %111 = call double @llvm.fmuladd.f64(double %106, double %108, double %mul92)
  %call93 = call double @sqrt(double noundef %111) #6
  store double %call93, ptr %d, align 8, !tbaa !23
  %112 = load ptr, ptr %Q, align 8, !tbaa !4
  %b = getelementptr inbounds %struct.pj_opaque, ptr %112, i32 0, i32 2
  %113 = load double, ptr %b, align 8, !tbaa !40
  %114 = load double, ptr %lamdp, align 8, !tbaa !23
  %115 = load ptr, ptr %Q, align 8, !tbaa !4
  %a2 = getelementptr inbounds %struct.pj_opaque, ptr %115, i32 0, i32 0
  %116 = load double, ptr %a2, align 8, !tbaa !42
  %117 = load double, ptr %lamdp, align 8, !tbaa !23
  %mul95 = fmul double 2.000000e+00, %117
  %call96 = call double @sin(double noundef %mul95) #6
  %mul97 = fmul double %116, %call96
  %118 = call double @llvm.fmuladd.f64(double %113, double %114, double %mul97)
  %119 = load ptr, ptr %Q, align 8, !tbaa !4
  %a4 = getelementptr inbounds %struct.pj_opaque, ptr %119, i32 0, i32 1
  %120 = load double, ptr %a4, align 8, !tbaa !41
  %121 = load double, ptr %lamdp, align 8, !tbaa !23
  %mul98 = fmul double %121, 4.000000e+00
  %call99 = call double @sin(double noundef %mul98) #6
  %122 = call double @llvm.fmuladd.f64(double %120, double %call99, double %118)
  %123 = load double, ptr %tanph, align 8, !tbaa !23
  %124 = load double, ptr %s, align 8, !tbaa !23
  %mul101 = fmul double %123, %124
  %125 = load double, ptr %d, align 8, !tbaa !23
  %div102 = fdiv double %mul101, %125
  %sub103 = fsub double %122, %div102
  %x = getelementptr inbounds %struct.PJ_XY, ptr %retval, i32 0, i32 0
  store double %sub103, ptr %x, align 8, !tbaa !48
  %126 = load ptr, ptr %Q, align 8, !tbaa !4
  %c1 = getelementptr inbounds %struct.pj_opaque, ptr %126, i32 0, i32 3
  %127 = load double, ptr %c1, align 8, !tbaa !39
  %128 = load double, ptr %sd, align 8, !tbaa !23
  %129 = load ptr, ptr %Q, align 8, !tbaa !4
  %c3 = getelementptr inbounds %struct.pj_opaque, ptr %129, i32 0, i32 4
  %130 = load double, ptr %c3, align 8, !tbaa !38
  %131 = load double, ptr %lamdp, align 8, !tbaa !23
  %mul105 = fmul double %131, 3.000000e+00
  %call106 = call double @sin(double noundef %mul105) #6
  %mul107 = fmul double %130, %call106
  %132 = call double @llvm.fmuladd.f64(double %127, double %128, double %mul107)
  %133 = load double, ptr %tanph, align 8, !tbaa !23
  %134 = load ptr, ptr %Q, align 8, !tbaa !4
  %xj108 = getelementptr inbounds %struct.pj_opaque, ptr %134, i32 0, i32 12
  %135 = load double, ptr %xj108, align 8, !tbaa !35
  %mul109 = fmul double %133, %135
  %136 = load double, ptr %d, align 8, !tbaa !23
  %div110 = fdiv double %mul109, %136
  %add111 = fadd double %132, %div110
  %y = getelementptr inbounds %struct.PJ_XY, ptr %retval, i32 0, i32 1
  store double %add111, ptr %y, align 8, !tbaa !50
  br label %if.end115

if.else112:                                       ; preds = %for.end51
  %y113 = getelementptr inbounds %struct.PJ_XY, ptr %retval, i32 0, i32 1
  store double 0x7FF0000000000000, ptr %y113, align 8, !tbaa !50
  %x114 = getelementptr inbounds %struct.PJ_XY, ptr %retval, i32 0, i32 0
  store double 0x7FF0000000000000, ptr %x114, align 8, !tbaa !48
  br label %if.end115

if.end115:                                        ; preds = %if.else112, %if.then53
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tanphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sav) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lamtp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tanph) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lampp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %phidp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lamdp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdsq) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %xlam) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lamt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %137 = load { double, double }, ptr %retval, align 8
  ret { double, double } %137

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare double @exp(double noundef) #4

; Function Attrs: nounwind
declare double @atan(double noundef) #4

; Function Attrs: nounwind
declare double @tan(double noundef) #4

declare double @aasin(ptr noundef, double noundef) #1

; Function Attrs: nounwind
declare double @log(double noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!8 = !{!9, !5, i64 136}
!9 = !{!"PJconsts", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !10, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !10, i64 348, !10, i64 352, !10, i64 356, !6, i64 360, !6, i64 364, !5, i64 368, !5, i64 376, !5, i64 384, !5, i64 392, !5, i64 400, !5, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !10, i64 504, !6, i64 512, !5, i64 568, !10, i64 576, !10, i64 580, !5, i64 584, !10, i64 592, !11, i64 600, !11, i64 608, !10, i64 616, !6, i64 620, !5, i64 624, !5, i64 632, !11, i64 640, !5, i64 648, !12, i64 656, !11, i64 688, !5, i64 696, !12, i64 704, !11, i64 736}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"PJ_REGION_S", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!9, !5, i64 8}
!14 = !{!9, !10, i64 340}
!15 = !{!9, !6, i64 360}
!16 = !{!9, !6, i64 364}
!17 = !{!9, !5, i64 72}
!18 = !{!9, !5, i64 0}
!19 = !{!9, !5, i64 16}
!20 = !{!6, !6, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!9, !11, i64 416}
!23 = !{!11, !11, i64 0}
!24 = !{!25, !11, i64 72}
!25 = !{!"pj_opaque", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112}
!26 = !{!25, !11, i64 80}
!27 = !{!25, !11, i64 88}
!28 = !{!9, !11, i64 192}
!29 = !{!9, !11, i64 240}
!30 = !{!25, !11, i64 64}
!31 = !{!25, !11, i64 40}
!32 = !{!25, !11, i64 48}
!33 = !{!25, !11, i64 56}
!34 = !{!9, !11, i64 232}
!35 = !{!25, !11, i64 96}
!36 = !{!25, !11, i64 104}
!37 = !{!25, !11, i64 112}
!38 = !{!25, !11, i64 32}
!39 = !{!25, !11, i64 24}
!40 = !{!25, !11, i64 16}
!41 = !{!25, !11, i64 8}
!42 = !{!25, !11, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!9, !5, i64 96}
!47 = !{!9, !5, i64 88}
!48 = !{!49, !11, i64 0}
!49 = !{!"", !11, i64 0, !11, i64 8}
!50 = !{!49, !11, i64 8}
!51 = distinct !{!51, !44}
!52 = distinct !{!52, !44}

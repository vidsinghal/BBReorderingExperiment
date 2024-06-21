; ModuleID = 'samples/550.bc'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/libproj/vtklibproj/src/PJ_stere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PJconsts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, [7 x double], ptr, i32, i32, ptr, i32, double, double, double, double, i32, [4 x i8], ptr, ptr, double, ptr, %struct.PJ_Region, double, ptr, %struct.PJ_Region, double, ptr }
%struct.PJ_Region = type { double, double, double, double }
%union.PROJVALUE = type { double }
%struct.pj_opaque = type { double, double, double, double, i32 }
%struct.LP = type { double, double }
%struct.XY = type { double, double }

@des_stere = internal constant [37 x i8] c"Stereographic\0A\09Azi, Sph&Ell\0A\09lat_ts=\00", align 16
@vtklibproj_pj_s_stere = constant ptr @des_stere, align 8
@.str = private unnamed_addr constant [8 x i8] c"tlat_ts\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rlat_ts\00", align 1
@des_ups = internal constant [51 x i8] c"Universal Polar Stereographic\0A\09Azi, Sph&Ell\0A\09south\00", align 16
@vtklibproj_pj_s_ups = constant ptr @des_ups, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"bsouth\00", align 1

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_stere(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @vtklibproj_pj_projection_specific_setup_stere(ptr noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @vtklibproj_pj_calloc(i64 noundef 1, i64 noundef 472)
  store ptr %call1, ptr %P.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %2
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 6
  store ptr @freeup, ptr %pfree, align 8, !tbaa !8
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %descr = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 7
  store ptr @des_stere, ptr %descr, align 8, !tbaa !13
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_projection_specific_setup_stere(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce = alloca %union.PROJVALUE, align 8
  %coerce6 = alloca %union.PROJVALUE, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %call = call ptr @vtklibproj_pj_calloc(i64 noundef 1, i64 noundef 40)
  store ptr %call, ptr %Q, align 8, !tbaa !4
  %0 = load ptr, ptr %Q, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call1 = call ptr @freeup_new(ptr noundef %1)
  store ptr %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %Q, align 8, !tbaa !4
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 50
  store ptr %2, ptr %opaque, align 8, !tbaa !14
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ctx, align 8, !tbaa !15
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %params, align 8, !tbaa !16
  %call2 = call i64 @vtklibproj_pj_param(ptr noundef %5, ptr noundef %7, ptr noundef @.str)
  %coerce.dive = getelementptr inbounds %union.PROJVALUE, ptr %coerce, i32 0, i32 0
  store i64 %call2, ptr %coerce.dive, align 8
  %8 = load i32, ptr %coerce, align 8, !tbaa !17
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx3 = getelementptr inbounds %struct.PJconsts, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %ctx3, align 8, !tbaa !15
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %params4 = getelementptr inbounds %struct.PJconsts, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %params4, align 8, !tbaa !16
  %call5 = call i64 @vtklibproj_pj_param(ptr noundef %10, ptr noundef %12, ptr noundef @.str.1)
  %coerce.dive7 = getelementptr inbounds %union.PROJVALUE, ptr %coerce6, i32 0, i32 0
  store i64 %call5, ptr %coerce.dive7, align 8
  %13 = load double, ptr %coerce6, align 8, !tbaa !17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %13, %cond.true ], [ 0x3FF921FB54442D18, %cond.false ]
  %14 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits = getelementptr inbounds %struct.pj_opaque, ptr %14, i32 0, i32 0
  store double %cond, ptr %phits, align 8, !tbaa !18
  %15 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call8 = call ptr @setup(ptr noundef %15)
  store ptr %call8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

declare ptr @vtklibproj_pj_calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @freeup(ptr noundef %P) #0 {
entry:
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @freeup_new(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal ptr @freeup_new(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %1, i32 0, i32 50
  %2 = load ptr, ptr %opaque, align 8, !tbaa !14
  %call = call ptr @vtklibproj_pj_dealloc(ptr noundef %2)
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibproj_pj_dealloc(ptr noundef %3)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

declare i64 @vtklibproj_pj_param(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @setup(ptr noundef %P) #0 {
entry:
  %P.addr = alloca ptr, align 8
  %t = alloca double, align 8
  %Q = alloca ptr, align 8
  %X = alloca double, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %0, i32 0, i32 50
  %1 = load ptr, ptr %opaque, align 8, !tbaa !14
  store ptr %1, ptr %Q, align 8, !tbaa !4
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 22
  %3 = load double, ptr %phi0, align 8, !tbaa !20
  %4 = call double @llvm.fabs.f64(double %3)
  store double %4, ptr %t, align 8, !tbaa !21
  %sub = fsub double %4, 0x3FF921FB54442D18
  %5 = call double @llvm.fabs.f64(double %sub)
  %cmp = fcmp olt double %5, 1.000000e-10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi01 = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 22
  %7 = load double, ptr %phi01, align 8, !tbaa !20
  %cmp2 = fcmp olt double %7, 0.000000e+00
  %8 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 1
  %9 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct.pj_opaque, ptr %9, i32 0, i32 4
  store i32 %cond, ptr %mode, align 8, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load double, ptr %t, align 8, !tbaa !21
  %cmp3 = fcmp ogt double %10, 1.000000e-10
  %11 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i32 2, i32 3
  %12 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode5 = getelementptr inbounds %struct.pj_opaque, ptr %12, i32 0, i32 4
  store i32 %cond4, ptr %mode5, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits = getelementptr inbounds %struct.pj_opaque, ptr %13, i32 0, i32 0
  %14 = load double, ptr %phits, align 8, !tbaa !18
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits6 = getelementptr inbounds %struct.pj_opaque, ptr %16, i32 0, i32 0
  store double %15, ptr %phits6, align 8, !tbaa !18
  %17 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %17, i32 0, i32 15
  %18 = load double, ptr %es, align 8, !tbaa !23
  %tobool = fcmp une double %18, 0.000000e+00
  br i1 %tobool, label %if.then7, label %if.else61

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %X) #6
  %19 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode8 = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %mode8, align 8, !tbaa !22
  switch i32 %20, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %sw.bb39
    i32 2, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.then7, %if.then7
  %21 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits9 = getelementptr inbounds %struct.pj_opaque, ptr %21, i32 0, i32 0
  %22 = load double, ptr %phits9, align 8, !tbaa !18
  %sub10 = fsub double %22, 0x3FF921FB54442D18
  %23 = call double @llvm.fabs.f64(double %sub10)
  %cmp11 = fcmp olt double %23, 1.000000e-10
  br i1 %cmp11, label %if.then12, label %if.else22

if.then12:                                        ; preds = %sw.bb
  %24 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k0 = getelementptr inbounds %struct.PJconsts, ptr %24, i32 0, i32 25
  %25 = load double, ptr %k0, align 8, !tbaa !24
  %mul = fmul double 2.000000e+00, %25
  %26 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.PJconsts, ptr %26, i32 0, i32 17
  %27 = load double, ptr %e, align 8, !tbaa !25
  %add = fadd double 1.000000e+00, %27
  %28 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e13 = getelementptr inbounds %struct.PJconsts, ptr %28, i32 0, i32 17
  %29 = load double, ptr %e13, align 8, !tbaa !25
  %add14 = fadd double 1.000000e+00, %29
  %call = call double @pow(double noundef %add, double noundef %add14) #6
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e15 = getelementptr inbounds %struct.PJconsts, ptr %30, i32 0, i32 17
  %31 = load double, ptr %e15, align 8, !tbaa !25
  %sub16 = fsub double 1.000000e+00, %31
  %32 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e17 = getelementptr inbounds %struct.PJconsts, ptr %32, i32 0, i32 17
  %33 = load double, ptr %e17, align 8, !tbaa !25
  %sub18 = fsub double 1.000000e+00, %33
  %call19 = call double @pow(double noundef %sub16, double noundef %sub18) #6
  %mul20 = fmul double %call, %call19
  %call21 = call double @sqrt(double noundef %mul20) #6
  %div = fdiv double %mul, %call21
  %34 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm1 = getelementptr inbounds %struct.pj_opaque, ptr %34, i32 0, i32 3
  store double %div, ptr %akm1, align 8, !tbaa !26
  br label %if.end38

if.else22:                                        ; preds = %sw.bb
  %35 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits23 = getelementptr inbounds %struct.pj_opaque, ptr %35, i32 0, i32 0
  %36 = load double, ptr %phits23, align 8, !tbaa !18
  %call24 = call double @cos(double noundef %36) #6
  %37 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits25 = getelementptr inbounds %struct.pj_opaque, ptr %37, i32 0, i32 0
  %38 = load double, ptr %phits25, align 8, !tbaa !18
  %39 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits26 = getelementptr inbounds %struct.pj_opaque, ptr %39, i32 0, i32 0
  %40 = load double, ptr %phits26, align 8, !tbaa !18
  %call27 = call double @sin(double noundef %40) #6
  store double %call27, ptr %t, align 8, !tbaa !21
  %41 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e28 = getelementptr inbounds %struct.PJconsts, ptr %41, i32 0, i32 17
  %42 = load double, ptr %e28, align 8, !tbaa !25
  %call29 = call double @vtklibproj_pj_tsfn(double noundef %38, double noundef %call27, double noundef %42)
  %div30 = fdiv double %call24, %call29
  %43 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm131 = getelementptr inbounds %struct.pj_opaque, ptr %43, i32 0, i32 3
  store double %div30, ptr %akm131, align 8, !tbaa !26
  %44 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e32 = getelementptr inbounds %struct.PJconsts, ptr %44, i32 0, i32 17
  %45 = load double, ptr %e32, align 8, !tbaa !25
  %46 = load double, ptr %t, align 8, !tbaa !21
  %mul33 = fmul double %46, %45
  store double %mul33, ptr %t, align 8, !tbaa !21
  %47 = load double, ptr %t, align 8, !tbaa !21
  %48 = load double, ptr %t, align 8, !tbaa !21
  %neg = fneg double %47
  %49 = call double @llvm.fmuladd.f64(double %neg, double %48, double 1.000000e+00)
  %call35 = call double @sqrt(double noundef %49) #6
  %50 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm136 = getelementptr inbounds %struct.pj_opaque, ptr %50, i32 0, i32 3
  %51 = load double, ptr %akm136, align 8, !tbaa !26
  %div37 = fdiv double %51, %call35
  store double %div37, ptr %akm136, align 8, !tbaa !26
  br label %if.end38

if.end38:                                         ; preds = %if.else22, %if.then12
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then7, %if.then7
  %52 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi040 = getelementptr inbounds %struct.PJconsts, ptr %52, i32 0, i32 22
  %53 = load double, ptr %phi040, align 8, !tbaa !20
  %call41 = call double @sin(double noundef %53) #6
  store double %call41, ptr %t, align 8, !tbaa !21
  %54 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi042 = getelementptr inbounds %struct.PJconsts, ptr %54, i32 0, i32 22
  %55 = load double, ptr %phi042, align 8, !tbaa !20
  %56 = load double, ptr %t, align 8, !tbaa !21
  %57 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e43 = getelementptr inbounds %struct.PJconsts, ptr %57, i32 0, i32 17
  %58 = load double, ptr %e43, align 8, !tbaa !25
  %call44 = call double @ssfn_(double noundef %55, double noundef %56, double noundef %58)
  %call45 = call double @atan(double noundef %call44) #6
  %59 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %call45, double 0xBFF921FB54442D18)
  store double %59, ptr %X, align 8, !tbaa !21
  %60 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e47 = getelementptr inbounds %struct.PJconsts, ptr %60, i32 0, i32 17
  %61 = load double, ptr %e47, align 8, !tbaa !25
  %62 = load double, ptr %t, align 8, !tbaa !21
  %mul48 = fmul double %62, %61
  store double %mul48, ptr %t, align 8, !tbaa !21
  %63 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k049 = getelementptr inbounds %struct.PJconsts, ptr %63, i32 0, i32 25
  %64 = load double, ptr %k049, align 8, !tbaa !24
  %mul50 = fmul double 2.000000e+00, %64
  %65 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi051 = getelementptr inbounds %struct.PJconsts, ptr %65, i32 0, i32 22
  %66 = load double, ptr %phi051, align 8, !tbaa !20
  %call52 = call double @cos(double noundef %66) #6
  %mul53 = fmul double %mul50, %call52
  %67 = load double, ptr %t, align 8, !tbaa !21
  %68 = load double, ptr %t, align 8, !tbaa !21
  %neg55 = fneg double %67
  %69 = call double @llvm.fmuladd.f64(double %neg55, double %68, double 1.000000e+00)
  %call56 = call double @sqrt(double noundef %69) #6
  %div57 = fdiv double %mul53, %call56
  %70 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm158 = getelementptr inbounds %struct.pj_opaque, ptr %70, i32 0, i32 3
  store double %div57, ptr %akm158, align 8, !tbaa !26
  %71 = load double, ptr %X, align 8, !tbaa !21
  %call59 = call double @sin(double noundef %71) #6
  %72 = load ptr, ptr %Q, align 8, !tbaa !4
  %sinX1 = getelementptr inbounds %struct.pj_opaque, ptr %72, i32 0, i32 1
  store double %call59, ptr %sinX1, align 8, !tbaa !27
  %73 = load double, ptr %X, align 8, !tbaa !21
  %call60 = call double @cos(double noundef %73) #6
  %74 = load ptr, ptr %Q, align 8, !tbaa !4
  %cosX1 = getelementptr inbounds %struct.pj_opaque, ptr %74, i32 0, i32 2
  store double %call60, ptr %cosX1, align 8, !tbaa !28
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7, %sw.bb39, %if.end38
  %75 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv = getelementptr inbounds %struct.PJconsts, ptr %75, i32 0, i32 2
  store ptr @e_inverse, ptr %inv, align 8, !tbaa !29
  %76 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd = getelementptr inbounds %struct.PJconsts, ptr %76, i32 0, i32 1
  store ptr @e_forward, ptr %fwd, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr %X) #6
  br label %if.end93

if.else61:                                        ; preds = %if.end
  %77 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode62 = getelementptr inbounds %struct.pj_opaque, ptr %77, i32 0, i32 4
  %78 = load i32, ptr %mode62, align 8, !tbaa !22
  switch i32 %78, label %sw.epilog90 [
    i32 2, label %sw.bb63
    i32 3, label %sw.bb72
    i32 0, label %sw.bb76
    i32 1, label %sw.bb76
  ]

sw.bb63:                                          ; preds = %if.else61
  %79 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi064 = getelementptr inbounds %struct.PJconsts, ptr %79, i32 0, i32 22
  %80 = load double, ptr %phi064, align 8, !tbaa !20
  %call65 = call double @sin(double noundef %80) #6
  %81 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque66 = getelementptr inbounds %struct.PJconsts, ptr %81, i32 0, i32 50
  %82 = load ptr, ptr %opaque66, align 8, !tbaa !14
  %sinX167 = getelementptr inbounds %struct.pj_opaque, ptr %82, i32 0, i32 1
  store double %call65, ptr %sinX167, align 8, !tbaa !27
  %83 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi068 = getelementptr inbounds %struct.PJconsts, ptr %83, i32 0, i32 22
  %84 = load double, ptr %phi068, align 8, !tbaa !20
  %call69 = call double @cos(double noundef %84) #6
  %85 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque70 = getelementptr inbounds %struct.PJconsts, ptr %85, i32 0, i32 50
  %86 = load ptr, ptr %opaque70, align 8, !tbaa !14
  %cosX171 = getelementptr inbounds %struct.pj_opaque, ptr %86, i32 0, i32 2
  store double %call69, ptr %cosX171, align 8, !tbaa !28
  br label %sw.bb72

sw.bb72:                                          ; preds = %if.else61, %sw.bb63
  %87 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k073 = getelementptr inbounds %struct.PJconsts, ptr %87, i32 0, i32 25
  %88 = load double, ptr %k073, align 8, !tbaa !24
  %mul74 = fmul double 2.000000e+00, %88
  %89 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm175 = getelementptr inbounds %struct.pj_opaque, ptr %89, i32 0, i32 3
  store double %mul74, ptr %akm175, align 8, !tbaa !26
  br label %sw.epilog90

sw.bb76:                                          ; preds = %if.else61, %if.else61
  %90 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits77 = getelementptr inbounds %struct.pj_opaque, ptr %90, i32 0, i32 0
  %91 = load double, ptr %phits77, align 8, !tbaa !18
  %sub78 = fsub double %91, 0x3FF921FB54442D18
  %92 = call double @llvm.fabs.f64(double %sub78)
  %cmp79 = fcmp oge double %92, 1.000000e-10
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb76
  %93 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits80 = getelementptr inbounds %struct.pj_opaque, ptr %93, i32 0, i32 0
  %94 = load double, ptr %phits80, align 8, !tbaa !18
  %call81 = call double @cos(double noundef %94) #6
  %95 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits82 = getelementptr inbounds %struct.pj_opaque, ptr %95, i32 0, i32 0
  %96 = load double, ptr %phits82, align 8, !tbaa !18
  %97 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %96, double 0x3FE921FB54442D18)
  %call84 = call double @tan(double noundef %97) #6
  %div85 = fdiv double %call81, %call84
  br label %cond.end

cond.false:                                       ; preds = %sw.bb76
  %98 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k086 = getelementptr inbounds %struct.PJconsts, ptr %98, i32 0, i32 25
  %99 = load double, ptr %k086, align 8, !tbaa !24
  %mul87 = fmul double 2.000000e+00, %99
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond88 = phi double [ %div85, %cond.true ], [ %mul87, %cond.false ]
  %100 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm189 = getelementptr inbounds %struct.pj_opaque, ptr %100, i32 0, i32 3
  store double %cond88, ptr %akm189, align 8, !tbaa !26
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %if.else61, %cond.end, %sw.bb72
  %101 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv91 = getelementptr inbounds %struct.PJconsts, ptr %101, i32 0, i32 2
  store ptr @s_inverse, ptr %inv91, align 8, !tbaa !29
  %102 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd92 = getelementptr inbounds %struct.PJconsts, ptr %102, i32 0, i32 1
  store ptr @s_forward, ptr %fwd92, align 8, !tbaa !30
  br label %if.end93

if.end93:                                         ; preds = %sw.epilog90, %sw.epilog
  %103 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6
  ret ptr %103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_ups(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @vtklibproj_pj_projection_specific_setup_ups(ptr noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @vtklibproj_pj_calloc(i64 noundef 1, i64 noundef 472)
  store ptr %call1, ptr %P.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %2
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 6
  store ptr @freeup, ptr %pfree, align 8, !tbaa !8
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %descr = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 7
  store ptr @des_ups, ptr %descr, align 8, !tbaa !13
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_projection_specific_setup_ups(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce = alloca %union.PROJVALUE, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %call = call ptr @vtklibproj_pj_calloc(i64 noundef 1, i64 noundef 40)
  store ptr %call, ptr %Q, align 8, !tbaa !4
  %0 = load ptr, ptr %Q, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call1 = call ptr @freeup_new(ptr noundef %1)
  store ptr %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %Q, align 8, !tbaa !4
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 50
  store ptr %2, ptr %opaque, align 8, !tbaa !14
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ctx, align 8, !tbaa !15
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %params, align 8, !tbaa !16
  %call2 = call i64 @vtklibproj_pj_param(ptr noundef %5, ptr noundef %7, ptr noundef @.str.2)
  %coerce.dive = getelementptr inbounds %union.PROJVALUE, ptr %coerce, i32 0, i32 0
  store i64 %call2, ptr %coerce.dive, align 8
  %8 = load i32, ptr %coerce, align 8, !tbaa !17
  %tobool = icmp ne i32 %8, 0
  %9 = zext i1 %tobool to i64
  %cond = select i1 %tobool, double 0xBFF921FB54442D18, double 0x3FF921FB54442D18
  %10 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %10, i32 0, i32 22
  store double %cond, ptr %phi0, align 8, !tbaa !20
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %11, i32 0, i32 15
  %12 = load double, ptr %es, align 8, !tbaa !23
  %tobool3 = fcmp une double %12, 0.000000e+00
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx5 = getelementptr inbounds %struct.PJconsts, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %ctx5, align 8, !tbaa !15
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %14, i32 noundef -34)
  %15 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @freeup(ptr noundef %15)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k0 = getelementptr inbounds %struct.PJconsts, ptr %16, i32 0, i32 25
  store double 0x3FEFCED916872B02, ptr %k0, align 8, !tbaa !24
  %17 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %x0 = getelementptr inbounds %struct.PJconsts, ptr %17, i32 0, i32 23
  store double 2.000000e+06, ptr %x0, align 8, !tbaa !31
  %18 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %y0 = getelementptr inbounds %struct.PJconsts, ptr %18, i32 0, i32 24
  store double 2.000000e+06, ptr %y0, align 8, !tbaa !32
  %19 = load ptr, ptr %Q, align 8, !tbaa !4
  %phits = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 0
  store double 0x3FF921FB54442D18, ptr %phits, align 8, !tbaa !18
  %20 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %lam0 = getelementptr inbounds %struct.PJconsts, ptr %20, i32 0, i32 21
  store double 0.000000e+00, ptr %lam0, align 8, !tbaa !33
  %21 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call7 = call ptr @setup(ptr noundef %21)
  store ptr %call7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

declare void @vtklibproj_pj_ctx_set_errno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @vtklibproj_pj_stere_selftest() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @vtklibproj_pj_ups_selftest() #0 {
entry:
  ret i32 0
}

declare ptr @vtklibproj_pj_dealloc(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #4

; Function Attrs: nounwind
declare double @cos(double noundef) #4

declare double @vtklibproj_pj_tsfn(double noundef, double noundef, double noundef) #1

; Function Attrs: nounwind
declare double @sin(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @atan(double noundef) #4

; Function Attrs: nounwind uwtable
define internal double @ssfn_(double noundef %phit, double noundef %sinphi, double noundef %eccen) #0 {
entry:
  %phit.addr = alloca double, align 8
  %sinphi.addr = alloca double, align 8
  %eccen.addr = alloca double, align 8
  store double %phit, ptr %phit.addr, align 8, !tbaa !21
  store double %sinphi, ptr %sinphi.addr, align 8, !tbaa !21
  store double %eccen, ptr %eccen.addr, align 8, !tbaa !21
  %0 = load double, ptr %eccen.addr, align 8, !tbaa !21
  %1 = load double, ptr %sinphi.addr, align 8, !tbaa !21
  %mul = fmul double %1, %0
  store double %mul, ptr %sinphi.addr, align 8, !tbaa !21
  %2 = load double, ptr %phit.addr, align 8, !tbaa !21
  %add = fadd double 0x3FF921FB54442D18, %2
  %mul1 = fmul double 5.000000e-01, %add
  %call = call double @tan(double noundef %mul1) #6
  %3 = load double, ptr %sinphi.addr, align 8, !tbaa !21
  %sub = fsub double 1.000000e+00, %3
  %4 = load double, ptr %sinphi.addr, align 8, !tbaa !21
  %add2 = fadd double 1.000000e+00, %4
  %div = fdiv double %sub, %add2
  %5 = load double, ptr %eccen.addr, align 8, !tbaa !21
  %mul3 = fmul double 5.000000e-01, %5
  %call4 = call double @pow(double noundef %div, double noundef %mul3) #6
  %mul5 = fmul double %call, %call4
  ret double %mul5
}

; Function Attrs: nounwind uwtable
define internal { double, double } @e_inverse(double %xy.coerce0, double %xy.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.LP, align 8
  %xy = alloca %struct.XY, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %cosphi = alloca double, align 8
  %sinphi = alloca double, align 8
  %tp = alloca double, align 8
  %phi_l = alloca double, align 8
  %rho = alloca double, align 8
  %halfe = alloca double, align 8
  %halfpi = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 0
  store double %xy.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 1
  store double %xy.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 50
  %3 = load ptr, ptr %opaque, align 8, !tbaa !14
  store ptr %3, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #6
  store double 0.000000e+00, ptr %tp, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %phi_l) #6
  store double 0.000000e+00, ptr %phi_l, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %rho) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %halfe) #6
  store double 0.000000e+00, ptr %halfe, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %halfpi) #6
  store double 0.000000e+00, ptr %halfpi, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %x = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %4 = load double, ptr %x, align 8, !tbaa !34
  %y = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %5 = load double, ptr %y, align 8, !tbaa !36
  %call = call double @hypot(double noundef %4, double noundef %5) #6
  store double %call, ptr %rho, align 8, !tbaa !21
  %6 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct.pj_opaque, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %mode, align 8, !tbaa !22
  switch i32 %7, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb27
    i32 0, label %sw.bb30
  ]

sw.bb:                                            ; preds = %entry, %entry
  %8 = load double, ptr %rho, align 8, !tbaa !21
  %9 = load ptr, ptr %Q, align 8, !tbaa !4
  %cosX1 = getelementptr inbounds %struct.pj_opaque, ptr %9, i32 0, i32 2
  %10 = load double, ptr %cosX1, align 8, !tbaa !28
  %mul = fmul double %8, %10
  %11 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm1 = getelementptr inbounds %struct.pj_opaque, ptr %11, i32 0, i32 3
  %12 = load double, ptr %akm1, align 8, !tbaa !26
  %call1 = call double @atan2(double noundef %mul, double noundef %12) #6
  %mul2 = fmul double 2.000000e+00, %call1
  store double %mul2, ptr %tp, align 8, !tbaa !21
  %call3 = call double @cos(double noundef %mul2) #6
  store double %call3, ptr %cosphi, align 8, !tbaa !21
  %13 = load double, ptr %tp, align 8, !tbaa !21
  %call4 = call double @sin(double noundef %13) #6
  store double %call4, ptr %sinphi, align 8, !tbaa !21
  %14 = load double, ptr %rho, align 8, !tbaa !21
  %cmp = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %15 = load double, ptr %cosphi, align 8, !tbaa !21
  %16 = load ptr, ptr %Q, align 8, !tbaa !4
  %sinX1 = getelementptr inbounds %struct.pj_opaque, ptr %16, i32 0, i32 1
  %17 = load double, ptr %sinX1, align 8, !tbaa !27
  %mul5 = fmul double %15, %17
  %call6 = call double @asin(double noundef %mul5) #6
  store double %call6, ptr %phi_l, align 8, !tbaa !21
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %18 = load double, ptr %cosphi, align 8, !tbaa !21
  %19 = load ptr, ptr %Q, align 8, !tbaa !4
  %sinX17 = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 1
  %20 = load double, ptr %sinX17, align 8, !tbaa !27
  %y9 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %21 = load double, ptr %y9, align 8, !tbaa !36
  %22 = load double, ptr %sinphi, align 8, !tbaa !21
  %mul10 = fmul double %21, %22
  %23 = load ptr, ptr %Q, align 8, !tbaa !4
  %cosX111 = getelementptr inbounds %struct.pj_opaque, ptr %23, i32 0, i32 2
  %24 = load double, ptr %cosX111, align 8, !tbaa !28
  %mul12 = fmul double %mul10, %24
  %25 = load double, ptr %rho, align 8, !tbaa !21
  %div = fdiv double %mul12, %25
  %26 = call double @llvm.fmuladd.f64(double %18, double %20, double %div)
  %call13 = call double @asin(double noundef %26) #6
  store double %call13, ptr %phi_l, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load double, ptr %phi_l, align 8, !tbaa !21
  %add = fadd double 0x3FF921FB54442D18, %27
  %mul14 = fmul double 5.000000e-01, %add
  %call15 = call double @tan(double noundef %mul14) #6
  store double %call15, ptr %tp, align 8, !tbaa !21
  %28 = load double, ptr %sinphi, align 8, !tbaa !21
  %x16 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %29 = load double, ptr %x16, align 8, !tbaa !34
  %mul17 = fmul double %29, %28
  store double %mul17, ptr %x16, align 8, !tbaa !34
  %30 = load double, ptr %rho, align 8, !tbaa !21
  %31 = load ptr, ptr %Q, align 8, !tbaa !4
  %cosX118 = getelementptr inbounds %struct.pj_opaque, ptr %31, i32 0, i32 2
  %32 = load double, ptr %cosX118, align 8, !tbaa !28
  %mul19 = fmul double %30, %32
  %33 = load double, ptr %cosphi, align 8, !tbaa !21
  %y21 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %34 = load double, ptr %y21, align 8, !tbaa !36
  %35 = load ptr, ptr %Q, align 8, !tbaa !4
  %sinX122 = getelementptr inbounds %struct.pj_opaque, ptr %35, i32 0, i32 1
  %36 = load double, ptr %sinX122, align 8, !tbaa !27
  %mul23 = fmul double %34, %36
  %37 = load double, ptr %sinphi, align 8, !tbaa !21
  %mul24 = fmul double %mul23, %37
  %neg = fneg double %mul24
  %38 = call double @llvm.fmuladd.f64(double %mul19, double %33, double %neg)
  %y25 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  store double %38, ptr %y25, align 8, !tbaa !36
  store double 0x3FF921FB54442D18, ptr %halfpi, align 8, !tbaa !21
  %39 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.PJconsts, ptr %39, i32 0, i32 17
  %40 = load double, ptr %e, align 8, !tbaa !25
  %mul26 = fmul double 5.000000e-01, %40
  store double %mul26, ptr %halfe, align 8, !tbaa !21
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %y28 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %41 = load double, ptr %y28, align 8, !tbaa !36
  %fneg = fneg double %41
  %y29 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  store double %fneg, ptr %y29, align 8, !tbaa !36
  br label %sw.bb30

sw.bb30:                                          ; preds = %entry, %sw.bb27
  %42 = load double, ptr %rho, align 8, !tbaa !21
  %fneg31 = fneg double %42
  %43 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm132 = getelementptr inbounds %struct.pj_opaque, ptr %43, i32 0, i32 3
  %44 = load double, ptr %akm132, align 8, !tbaa !26
  %div33 = fdiv double %fneg31, %44
  store double %div33, ptr %tp, align 8, !tbaa !21
  %call34 = call double @atan(double noundef %div33) #6
  %45 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %call34, double 0x3FF921FB54442D18)
  store double %45, ptr %phi_l, align 8, !tbaa !21
  store double 0xBFF921FB54442D18, ptr %halfpi, align 8, !tbaa !21
  %46 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e36 = getelementptr inbounds %struct.PJconsts, ptr %46, i32 0, i32 17
  %47 = load double, ptr %e36, align 8, !tbaa !25
  %mul37 = fmul double -5.000000e-01, %47
  store double %mul37, ptr %halfe, align 8, !tbaa !21
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb30, %if.end
  store i32 8, ptr %i, align 4, !tbaa !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %48 = load i32, ptr %i, align 4, !tbaa !37
  %dec = add nsw i32 %48, -1
  store i32 %dec, ptr %i, align 4, !tbaa !37
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e38 = getelementptr inbounds %struct.PJconsts, ptr %49, i32 0, i32 17
  %50 = load double, ptr %e38, align 8, !tbaa !25
  %51 = load double, ptr %phi_l, align 8, !tbaa !21
  %call39 = call double @sin(double noundef %51) #6
  %mul40 = fmul double %50, %call39
  store double %mul40, ptr %sinphi, align 8, !tbaa !21
  %52 = load double, ptr %tp, align 8, !tbaa !21
  %53 = load double, ptr %sinphi, align 8, !tbaa !21
  %add41 = fadd double 1.000000e+00, %53
  %54 = load double, ptr %sinphi, align 8, !tbaa !21
  %sub = fsub double 1.000000e+00, %54
  %div42 = fdiv double %add41, %sub
  %55 = load double, ptr %halfe, align 8, !tbaa !21
  %call43 = call double @pow(double noundef %div42, double noundef %55) #6
  %mul44 = fmul double %52, %call43
  %call45 = call double @atan(double noundef %mul44) #6
  %56 = load double, ptr %halfpi, align 8, !tbaa !21
  %neg47 = fneg double %56
  %57 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %call45, double %neg47)
  %phi = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %57, ptr %phi, align 8, !tbaa !36
  %58 = load double, ptr %phi_l, align 8, !tbaa !21
  %phi48 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %59 = load double, ptr %phi48, align 8, !tbaa !36
  %sub49 = fsub double %58, %59
  %60 = call double @llvm.fabs.f64(double %sub49)
  %cmp50 = fcmp olt double %60, 1.000000e-10
  br i1 %cmp50, label %if.then51, label %if.end66

if.then51:                                        ; preds = %for.body
  %61 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode52 = getelementptr inbounds %struct.pj_opaque, ptr %61, i32 0, i32 4
  %62 = load i32, ptr %mode52, align 8, !tbaa !22
  %cmp53 = icmp eq i32 %62, 0
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.then51
  %phi55 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %63 = load double, ptr %phi55, align 8, !tbaa !36
  %fneg56 = fneg double %63
  %phi57 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %fneg56, ptr %phi57, align 8, !tbaa !36
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.then51
  %x59 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %64 = load double, ptr %x59, align 8, !tbaa !34
  %cmp60 = fcmp oeq double %64, 0.000000e+00
  br i1 %cmp60, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end58
  %y61 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %65 = load double, ptr %y61, align 8, !tbaa !36
  %cmp62 = fcmp oeq double %65, 0.000000e+00
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end58
  %x63 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %66 = load double, ptr %x63, align 8, !tbaa !34
  %y64 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %67 = load double, ptr %y64, align 8, !tbaa !36
  %call65 = call double @atan2(double noundef %66, double noundef %67) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call65, %cond.false ]
  %lam = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %cond, ptr %lam, align 8, !tbaa !34
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %phi67 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %68 = load double, ptr %phi67, align 8, !tbaa !36
  store double %68, ptr %phi_l, align 8, !tbaa !21
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %69 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %ctx, align 8, !tbaa !15
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %70, i32 noundef -20)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %halfpi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %halfe) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rho) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %phi_l) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %71 = load { double, double }, ptr %retval, align 8
  ret { double, double } %71
}

; Function Attrs: nounwind uwtable
define internal { double, double } @e_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.XY, align 8
  %lp = alloca %struct.LP, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %coslam = alloca double, align 8
  %sinlam = alloca double, align 8
  %sinX = alloca double, align 8
  %cosX = alloca double, align 8
  %X = alloca double, align 8
  %A = alloca double, align 8
  %sinphi = alloca double, align 8
  %0 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 0
  store double %lp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 1
  store double %lp.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 50
  %3 = load ptr, ptr %opaque, align 8, !tbaa !14
  store ptr %3, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coslam) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinlam) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinX) #6
  store double 0.000000e+00, ptr %sinX, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosX) #6
  store double 0.000000e+00, ptr %cosX, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %X) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinphi) #6
  %lam = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %4 = load double, ptr %lam, align 8, !tbaa !34
  %call = call double @cos(double noundef %4) #6
  store double %call, ptr %coslam, align 8, !tbaa !21
  %lam1 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %5 = load double, ptr %lam1, align 8, !tbaa !34
  %call2 = call double @sin(double noundef %5) #6
  store double %call2, ptr %sinlam, align 8, !tbaa !21
  %phi = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %6 = load double, ptr %phi, align 8, !tbaa !36
  %call3 = call double @sin(double noundef %6) #6
  store double %call3, ptr %sinphi, align 8, !tbaa !21
  %7 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct.pj_opaque, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %mode, align 8, !tbaa !22
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode4 = getelementptr inbounds %struct.pj_opaque, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %mode4, align 8, !tbaa !22
  %cmp5 = icmp eq i32 %10, 3
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %phi6 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %11 = load double, ptr %phi6, align 8, !tbaa !36
  %12 = load double, ptr %sinphi, align 8, !tbaa !21
  %13 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e = getelementptr inbounds %struct.PJconsts, ptr %13, i32 0, i32 17
  %14 = load double, ptr %e, align 8, !tbaa !25
  %call7 = call double @ssfn_(double noundef %11, double noundef %12, double noundef %14)
  %call8 = call double @atan(double noundef %call7) #6
  %15 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %call8, double 0xBFF921FB54442D18)
  store double %15, ptr %X, align 8, !tbaa !21
  %call9 = call double @sin(double noundef %15) #6
  store double %call9, ptr %sinX, align 8, !tbaa !21
  %16 = load double, ptr %X, align 8, !tbaa !21
  %call10 = call double @cos(double noundef %16) #6
  store double %call10, ptr %cosX, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %17 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode11 = getelementptr inbounds %struct.pj_opaque, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %mode11, align 8, !tbaa !22
  switch i32 %18, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb21
    i32 0, label %sw.bb29
    i32 1, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm1 = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 3
  %20 = load double, ptr %akm1, align 8, !tbaa !26
  %21 = load ptr, ptr %Q, align 8, !tbaa !4
  %cosX1 = getelementptr inbounds %struct.pj_opaque, ptr %21, i32 0, i32 2
  %22 = load double, ptr %cosX1, align 8, !tbaa !28
  %23 = load ptr, ptr %Q, align 8, !tbaa !4
  %sinX1 = getelementptr inbounds %struct.pj_opaque, ptr %23, i32 0, i32 1
  %24 = load double, ptr %sinX1, align 8, !tbaa !27
  %25 = load double, ptr %sinX, align 8, !tbaa !21
  %26 = call double @llvm.fmuladd.f64(double %24, double %25, double 1.000000e+00)
  %27 = load ptr, ptr %Q, align 8, !tbaa !4
  %cosX112 = getelementptr inbounds %struct.pj_opaque, ptr %27, i32 0, i32 2
  %28 = load double, ptr %cosX112, align 8, !tbaa !28
  %29 = load double, ptr %cosX, align 8, !tbaa !21
  %mul = fmul double %28, %29
  %30 = load double, ptr %coslam, align 8, !tbaa !21
  %31 = call double @llvm.fmuladd.f64(double %mul, double %30, double %26)
  %mul14 = fmul double %22, %31
  %div = fdiv double %20, %mul14
  store double %div, ptr %A, align 8, !tbaa !21
  %32 = load double, ptr %A, align 8, !tbaa !21
  %33 = load ptr, ptr %Q, align 8, !tbaa !4
  %cosX115 = getelementptr inbounds %struct.pj_opaque, ptr %33, i32 0, i32 2
  %34 = load double, ptr %cosX115, align 8, !tbaa !28
  %35 = load double, ptr %sinX, align 8, !tbaa !21
  %36 = load ptr, ptr %Q, align 8, !tbaa !4
  %sinX117 = getelementptr inbounds %struct.pj_opaque, ptr %36, i32 0, i32 1
  %37 = load double, ptr %sinX117, align 8, !tbaa !27
  %38 = load double, ptr %cosX, align 8, !tbaa !21
  %mul18 = fmul double %37, %38
  %39 = load double, ptr %coslam, align 8, !tbaa !21
  %mul19 = fmul double %mul18, %39
  %neg = fneg double %mul19
  %40 = call double @llvm.fmuladd.f64(double %34, double %35, double %neg)
  %mul20 = fmul double %32, %40
  %y = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %mul20, ptr %y, align 8, !tbaa !36
  br label %xmul

sw.bb21:                                          ; preds = %if.end
  %41 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm122 = getelementptr inbounds %struct.pj_opaque, ptr %41, i32 0, i32 3
  %42 = load double, ptr %akm122, align 8, !tbaa !26
  %mul23 = fmul double 2.000000e+00, %42
  %43 = load double, ptr %cosX, align 8, !tbaa !21
  %44 = load double, ptr %coslam, align 8, !tbaa !21
  %45 = call double @llvm.fmuladd.f64(double %43, double %44, double 1.000000e+00)
  %div25 = fdiv double %mul23, %45
  store double %div25, ptr %A, align 8, !tbaa !21
  %46 = load double, ptr %A, align 8, !tbaa !21
  %47 = load double, ptr %sinX, align 8, !tbaa !21
  %mul26 = fmul double %46, %47
  %y27 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %mul26, ptr %y27, align 8, !tbaa !36
  br label %xmul

xmul:                                             ; preds = %sw.bb21, %sw.bb
  %48 = load double, ptr %A, align 8, !tbaa !21
  %49 = load double, ptr %cosX, align 8, !tbaa !21
  %mul28 = fmul double %48, %49
  %x = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul28, ptr %x, align 8, !tbaa !34
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %phi30 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %50 = load double, ptr %phi30, align 8, !tbaa !36
  %fneg = fneg double %50
  %phi31 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  store double %fneg, ptr %phi31, align 8, !tbaa !36
  %51 = load double, ptr %coslam, align 8, !tbaa !21
  %fneg32 = fneg double %51
  store double %fneg32, ptr %coslam, align 8, !tbaa !21
  %52 = load double, ptr %sinphi, align 8, !tbaa !21
  %fneg33 = fneg double %52
  store double %fneg33, ptr %sinphi, align 8, !tbaa !21
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.end, %sw.bb29
  %53 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm135 = getelementptr inbounds %struct.pj_opaque, ptr %53, i32 0, i32 3
  %54 = load double, ptr %akm135, align 8, !tbaa !26
  %phi36 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %55 = load double, ptr %phi36, align 8, !tbaa !36
  %56 = load double, ptr %sinphi, align 8, !tbaa !21
  %57 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %e37 = getelementptr inbounds %struct.PJconsts, ptr %57, i32 0, i32 17
  %58 = load double, ptr %e37, align 8, !tbaa !25
  %call38 = call double @vtklibproj_pj_tsfn(double noundef %55, double noundef %56, double noundef %58)
  %mul39 = fmul double %54, %call38
  %x40 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul39, ptr %x40, align 8, !tbaa !34
  %x41 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  %59 = load double, ptr %x41, align 8, !tbaa !34
  %fneg42 = fneg double %59
  %60 = load double, ptr %coslam, align 8, !tbaa !21
  %mul43 = fmul double %fneg42, %60
  %y44 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %mul43, ptr %y44, align 8, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb34, %xmul
  %x45 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  %61 = load double, ptr %x45, align 8, !tbaa !34
  %62 = load double, ptr %sinlam, align 8, !tbaa !21
  %mul46 = fmul double %61, %62
  %x47 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul46, ptr %x47, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %X) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosX) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinX) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinlam) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %coslam) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %63 = load { double, double }, ptr %retval, align 8
  ret { double, double } %63
}

; Function Attrs: nounwind
declare double @tan(double noundef) #4

; Function Attrs: nounwind uwtable
define internal { double, double } @s_inverse(double %xy.coerce0, double %xy.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.LP, align 8
  %xy = alloca %struct.XY, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %c = alloca double, align 8
  %rh = alloca double, align 8
  %sinc = alloca double, align 8
  %cosc = alloca double, align 8
  %0 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 0
  store double %xy.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 1
  store double %xy.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 50
  %3 = load ptr, ptr %opaque, align 8, !tbaa !14
  store ptr %3, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %rh) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinc) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosc) #6
  %x = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %4 = load double, ptr %x, align 8, !tbaa !34
  %y = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %5 = load double, ptr %y, align 8, !tbaa !36
  %call = call double @hypot(double noundef %4, double noundef %5) #6
  store double %call, ptr %rh, align 8, !tbaa !21
  %6 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm1 = getelementptr inbounds %struct.pj_opaque, ptr %6, i32 0, i32 3
  %7 = load double, ptr %akm1, align 8, !tbaa !26
  %div = fdiv double %call, %7
  %call1 = call double @atan(double noundef %div) #6
  %mul = fmul double 2.000000e+00, %call1
  store double %mul, ptr %c, align 8, !tbaa !21
  %call2 = call double @sin(double noundef %mul) #6
  store double %call2, ptr %sinc, align 8, !tbaa !21
  %8 = load double, ptr %c, align 8, !tbaa !21
  %call3 = call double @cos(double noundef %8) #6
  store double %call3, ptr %cosc, align 8, !tbaa !21
  %lam = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double 0.000000e+00, ptr %lam, align 8, !tbaa !34
  %9 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct.pj_opaque, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %mode, align 8, !tbaa !22
  switch i32 %10, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb19
    i32 1, label %sw.bb53
    i32 0, label %sw.bb56
  ]

sw.bb:                                            ; preds = %entry
  %11 = load double, ptr %rh, align 8, !tbaa !21
  %12 = call double @llvm.fabs.f64(double %11)
  %cmp = fcmp ole double %12, 1.000000e-10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %phi = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double 0.000000e+00, ptr %phi, align 8, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %y4 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %13 = load double, ptr %y4, align 8, !tbaa !36
  %14 = load double, ptr %sinc, align 8, !tbaa !21
  %mul5 = fmul double %13, %14
  %15 = load double, ptr %rh, align 8, !tbaa !21
  %div6 = fdiv double %mul5, %15
  %call7 = call double @asin(double noundef %div6) #6
  %phi8 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %call7, ptr %phi8, align 8, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load double, ptr %cosc, align 8, !tbaa !21
  %cmp9 = fcmp une double %16, 0.000000e+00
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %x10 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %17 = load double, ptr %x10, align 8, !tbaa !34
  %cmp11 = fcmp une double %17, 0.000000e+00
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %x13 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %18 = load double, ptr %x13, align 8, !tbaa !34
  %19 = load double, ptr %sinc, align 8, !tbaa !21
  %mul14 = fmul double %18, %19
  %20 = load double, ptr %cosc, align 8, !tbaa !21
  %21 = load double, ptr %rh, align 8, !tbaa !21
  %mul15 = fmul double %20, %21
  %call16 = call double @atan2(double noundef %mul14, double noundef %mul15) #6
  %lam17 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %call16, ptr %lam17, align 8, !tbaa !34
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %lor.lhs.false
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %22 = load double, ptr %rh, align 8, !tbaa !21
  %23 = call double @llvm.fabs.f64(double %22)
  %cmp20 = fcmp ole double %23, 1.000000e-10
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %sw.bb19
  %24 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %24, i32 0, i32 22
  %25 = load double, ptr %phi0, align 8, !tbaa !20
  %phi22 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %25, ptr %phi22, align 8, !tbaa !36
  br label %if.end33

if.else23:                                        ; preds = %sw.bb19
  %26 = load double, ptr %cosc, align 8, !tbaa !21
  %27 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque24 = getelementptr inbounds %struct.PJconsts, ptr %27, i32 0, i32 50
  %28 = load ptr, ptr %opaque24, align 8, !tbaa !14
  %sinX1 = getelementptr inbounds %struct.pj_opaque, ptr %28, i32 0, i32 1
  %29 = load double, ptr %sinX1, align 8, !tbaa !27
  %y26 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %30 = load double, ptr %y26, align 8, !tbaa !36
  %31 = load double, ptr %sinc, align 8, !tbaa !21
  %mul27 = fmul double %30, %31
  %32 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque28 = getelementptr inbounds %struct.PJconsts, ptr %32, i32 0, i32 50
  %33 = load ptr, ptr %opaque28, align 8, !tbaa !14
  %cosX1 = getelementptr inbounds %struct.pj_opaque, ptr %33, i32 0, i32 2
  %34 = load double, ptr %cosX1, align 8, !tbaa !28
  %mul29 = fmul double %mul27, %34
  %35 = load double, ptr %rh, align 8, !tbaa !21
  %div30 = fdiv double %mul29, %35
  %36 = call double @llvm.fmuladd.f64(double %26, double %29, double %div30)
  %call31 = call double @asin(double noundef %36) #6
  %phi32 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %call31, ptr %phi32, align 8, !tbaa !36
  br label %if.end33

if.end33:                                         ; preds = %if.else23, %if.then21
  %37 = load double, ptr %cosc, align 8, !tbaa !21
  %38 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque34 = getelementptr inbounds %struct.PJconsts, ptr %38, i32 0, i32 50
  %39 = load ptr, ptr %opaque34, align 8, !tbaa !14
  %sinX135 = getelementptr inbounds %struct.pj_opaque, ptr %39, i32 0, i32 1
  %40 = load double, ptr %sinX135, align 8, !tbaa !27
  %phi36 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %41 = load double, ptr %phi36, align 8, !tbaa !36
  %call37 = call double @sin(double noundef %41) #6
  %neg = fneg double %40
  %42 = call double @llvm.fmuladd.f64(double %neg, double %call37, double %37)
  store double %42, ptr %c, align 8, !tbaa !21
  %cmp39 = fcmp une double %42, 0.000000e+00
  br i1 %cmp39, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end33
  %x41 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %43 = load double, ptr %x41, align 8, !tbaa !34
  %cmp42 = fcmp une double %43, 0.000000e+00
  br i1 %cmp42, label %if.then43, label %if.end52

if.then43:                                        ; preds = %lor.lhs.false40, %if.end33
  %x44 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %44 = load double, ptr %x44, align 8, !tbaa !34
  %45 = load double, ptr %sinc, align 8, !tbaa !21
  %mul45 = fmul double %44, %45
  %46 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque46 = getelementptr inbounds %struct.PJconsts, ptr %46, i32 0, i32 50
  %47 = load ptr, ptr %opaque46, align 8, !tbaa !14
  %cosX147 = getelementptr inbounds %struct.pj_opaque, ptr %47, i32 0, i32 2
  %48 = load double, ptr %cosX147, align 8, !tbaa !28
  %mul48 = fmul double %mul45, %48
  %49 = load double, ptr %c, align 8, !tbaa !21
  %50 = load double, ptr %rh, align 8, !tbaa !21
  %mul49 = fmul double %49, %50
  %call50 = call double @atan2(double noundef %mul48, double noundef %mul49) #6
  %lam51 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %call50, ptr %lam51, align 8, !tbaa !34
  br label %if.end52

if.end52:                                         ; preds = %if.then43, %lor.lhs.false40
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  %y54 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %51 = load double, ptr %y54, align 8, !tbaa !36
  %fneg = fneg double %51
  %y55 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  store double %fneg, ptr %y55, align 8, !tbaa !36
  br label %sw.bb56

sw.bb56:                                          ; preds = %entry, %sw.bb53
  %52 = load double, ptr %rh, align 8, !tbaa !21
  %53 = call double @llvm.fabs.f64(double %52)
  %cmp57 = fcmp ole double %53, 1.000000e-10
  br i1 %cmp57, label %if.then58, label %if.else61

if.then58:                                        ; preds = %sw.bb56
  %54 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi059 = getelementptr inbounds %struct.PJconsts, ptr %54, i32 0, i32 22
  %55 = load double, ptr %phi059, align 8, !tbaa !20
  %phi60 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %55, ptr %phi60, align 8, !tbaa !36
  br label %if.end67

if.else61:                                        ; preds = %sw.bb56
  %56 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode62 = getelementptr inbounds %struct.pj_opaque, ptr %56, i32 0, i32 4
  %57 = load i32, ptr %mode62, align 8, !tbaa !22
  %cmp63 = icmp eq i32 %57, 0
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else61
  %58 = load double, ptr %cosc, align 8, !tbaa !21
  %fneg64 = fneg double %58
  br label %cond.end

cond.false:                                       ; preds = %if.else61
  %59 = load double, ptr %cosc, align 8, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg64, %cond.true ], [ %59, %cond.false ]
  %call65 = call double @asin(double noundef %cond) #6
  %phi66 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %call65, ptr %phi66, align 8, !tbaa !36
  br label %if.end67

if.end67:                                         ; preds = %cond.end, %if.then58
  %x68 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %60 = load double, ptr %x68, align 8, !tbaa !34
  %cmp69 = fcmp oeq double %60, 0.000000e+00
  br i1 %cmp69, label %land.lhs.true, label %cond.false73

land.lhs.true:                                    ; preds = %if.end67
  %y70 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %61 = load double, ptr %y70, align 8, !tbaa !36
  %cmp71 = fcmp oeq double %61, 0.000000e+00
  br i1 %cmp71, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %land.lhs.true
  br label %cond.end77

cond.false73:                                     ; preds = %land.lhs.true, %if.end67
  %x74 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %62 = load double, ptr %x74, align 8, !tbaa !34
  %y75 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %63 = load double, ptr %y75, align 8, !tbaa !36
  %call76 = call double @atan2(double noundef %62, double noundef %63) #6
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false73, %cond.true72
  %cond78 = phi double [ 0.000000e+00, %cond.true72 ], [ %call76, %cond.false73 ]
  %lam79 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %cond78, ptr %lam79, align 8, !tbaa !34
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end77, %if.end52, %if.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosc) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinc) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rh) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %64 = load { double, double }, ptr %retval, align 8
  ret { double, double } %64
}

; Function Attrs: nounwind uwtable
define internal { double, double } @s_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.XY, align 8
  %lp = alloca %struct.LP, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %sinphi = alloca double, align 8
  %cosphi = alloca double, align 8
  %coslam = alloca double, align 8
  %sinlam = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 0
  store double %lp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 1
  store double %lp.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 50
  %3 = load ptr, ptr %opaque, align 8, !tbaa !14
  store ptr %3, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %coslam) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinlam) #6
  %phi = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %4 = load double, ptr %phi, align 8, !tbaa !36
  %call = call double @sin(double noundef %4) #6
  store double %call, ptr %sinphi, align 8, !tbaa !21
  %phi1 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %5 = load double, ptr %phi1, align 8, !tbaa !36
  %call2 = call double @cos(double noundef %5) #6
  store double %call2, ptr %cosphi, align 8, !tbaa !21
  %lam = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %6 = load double, ptr %lam, align 8, !tbaa !34
  %call3 = call double @cos(double noundef %6) #6
  store double %call3, ptr %coslam, align 8, !tbaa !21
  %lam4 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %7 = load double, ptr %lam4, align 8, !tbaa !34
  %call5 = call double @sin(double noundef %7) #6
  store double %call5, ptr %sinlam, align 8, !tbaa !21
  %8 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct.pj_opaque, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %mode, align 8, !tbaa !22
  switch i32 %9, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb6
    i32 1, label %sw.bb27
    i32 0, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry
  %10 = load double, ptr %cosphi, align 8, !tbaa !21
  %11 = load double, ptr %coslam, align 8, !tbaa !21
  %12 = call double @llvm.fmuladd.f64(double %10, double %11, double 1.000000e+00)
  %y = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %12, ptr %y, align 8, !tbaa !36
  br label %oblcon

sw.bb6:                                           ; preds = %entry
  %13 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque7 = getelementptr inbounds %struct.PJconsts, ptr %13, i32 0, i32 50
  %14 = load ptr, ptr %opaque7, align 8, !tbaa !14
  %sinX1 = getelementptr inbounds %struct.pj_opaque, ptr %14, i32 0, i32 1
  %15 = load double, ptr %sinX1, align 8, !tbaa !27
  %16 = load double, ptr %sinphi, align 8, !tbaa !21
  %17 = call double @llvm.fmuladd.f64(double %15, double %16, double 1.000000e+00)
  %18 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque8 = getelementptr inbounds %struct.PJconsts, ptr %18, i32 0, i32 50
  %19 = load ptr, ptr %opaque8, align 8, !tbaa !14
  %cosX1 = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 2
  %20 = load double, ptr %cosX1, align 8, !tbaa !28
  %21 = load double, ptr %cosphi, align 8, !tbaa !21
  %mul = fmul double %20, %21
  %22 = load double, ptr %coslam, align 8, !tbaa !21
  %23 = call double @llvm.fmuladd.f64(double %mul, double %22, double %17)
  %y10 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %23, ptr %y10, align 8, !tbaa !36
  br label %oblcon

oblcon:                                           ; preds = %sw.bb6, %sw.bb
  %y11 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %24 = load double, ptr %y11, align 8, !tbaa !36
  %cmp = fcmp ole double %24, 1.000000e-10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %oblcon
  %25 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %ctx, align 8, !tbaa !15
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %26, i32 noundef -20)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %oblcon
  %27 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm1 = getelementptr inbounds %struct.pj_opaque, ptr %27, i32 0, i32 3
  %28 = load double, ptr %akm1, align 8, !tbaa !26
  %y12 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %29 = load double, ptr %y12, align 8, !tbaa !36
  %div = fdiv double %28, %29
  %y13 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %div, ptr %y13, align 8, !tbaa !36
  %30 = load double, ptr %cosphi, align 8, !tbaa !21
  %mul14 = fmul double %div, %30
  %31 = load double, ptr %sinlam, align 8, !tbaa !21
  %mul15 = fmul double %mul14, %31
  %x = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul15, ptr %x, align 8, !tbaa !34
  %32 = load ptr, ptr %Q, align 8, !tbaa !4
  %mode16 = getelementptr inbounds %struct.pj_opaque, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %mode16, align 8, !tbaa !22
  %cmp17 = icmp eq i32 %33, 3
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %34 = load double, ptr %sinphi, align 8, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %35 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque18 = getelementptr inbounds %struct.PJconsts, ptr %35, i32 0, i32 50
  %36 = load ptr, ptr %opaque18, align 8, !tbaa !14
  %cosX119 = getelementptr inbounds %struct.pj_opaque, ptr %36, i32 0, i32 2
  %37 = load double, ptr %cosX119, align 8, !tbaa !28
  %38 = load double, ptr %sinphi, align 8, !tbaa !21
  %39 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque21 = getelementptr inbounds %struct.PJconsts, ptr %39, i32 0, i32 50
  %40 = load ptr, ptr %opaque21, align 8, !tbaa !14
  %sinX122 = getelementptr inbounds %struct.pj_opaque, ptr %40, i32 0, i32 1
  %41 = load double, ptr %sinX122, align 8, !tbaa !27
  %42 = load double, ptr %cosphi, align 8, !tbaa !21
  %mul23 = fmul double %41, %42
  %43 = load double, ptr %coslam, align 8, !tbaa !21
  %mul24 = fmul double %mul23, %43
  %neg = fneg double %mul24
  %44 = call double @llvm.fmuladd.f64(double %37, double %38, double %neg)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %34, %cond.true ], [ %44, %cond.false ]
  %y25 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %45 = load double, ptr %y25, align 8, !tbaa !36
  %mul26 = fmul double %45, %cond
  store double %mul26, ptr %y25, align 8, !tbaa !36
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %46 = load double, ptr %coslam, align 8, !tbaa !21
  %fneg = fneg double %46
  store double %fneg, ptr %coslam, align 8, !tbaa !21
  %phi28 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %47 = load double, ptr %phi28, align 8, !tbaa !36
  %fneg29 = fneg double %47
  %phi30 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  store double %fneg29, ptr %phi30, align 8, !tbaa !36
  br label %sw.bb31

sw.bb31:                                          ; preds = %entry, %sw.bb27
  %phi32 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %48 = load double, ptr %phi32, align 8, !tbaa !36
  %sub = fsub double %48, 0x3FF921FB54442D18
  %49 = call double @llvm.fabs.f64(double %sub)
  %cmp33 = fcmp olt double %49, 1.000000e-08
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %sw.bb31
  %50 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx35 = getelementptr inbounds %struct.PJconsts, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %ctx35, align 8, !tbaa !15
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %51, i32 noundef -20)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %sw.bb31
  %52 = load double, ptr %sinlam, align 8, !tbaa !21
  %53 = load ptr, ptr %Q, align 8, !tbaa !4
  %akm137 = getelementptr inbounds %struct.pj_opaque, ptr %53, i32 0, i32 3
  %54 = load double, ptr %akm137, align 8, !tbaa !26
  %phi38 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %55 = load double, ptr %phi38, align 8, !tbaa !36
  %56 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %55, double 0x3FE921FB54442D18)
  %call40 = call double @tan(double noundef %56) #6
  %mul41 = fmul double %54, %call40
  %y42 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %mul41, ptr %y42, align 8, !tbaa !36
  %mul43 = fmul double %52, %mul41
  %x44 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul43, ptr %x44, align 8, !tbaa !34
  %57 = load double, ptr %coslam, align 8, !tbaa !21
  %y45 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %58 = load double, ptr %y45, align 8, !tbaa !36
  %mul46 = fmul double %58, %57
  store double %mul46, ptr %y45, align 8, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end36, %cond.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then34, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinlam) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %coslam) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %59 = load { double, double }, ptr %retval, align 8
  ret { double, double } %59
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) #4

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #4

; Function Attrs: nounwind
declare double @asin(double noundef) #4

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
!8 = !{!9, !5, i64 48}
!9 = !{!"PJconsts", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !10, i64 208, !6, i64 216, !5, i64 272, !10, i64 280, !10, i64 284, !5, i64 288, !10, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !10, i64 336, !6, i64 340, !5, i64 344, !5, i64 352, !11, i64 360, !5, i64 368, !12, i64 376, !11, i64 408, !5, i64 416, !12, i64 424, !11, i64 456, !5, i64 464}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!9, !5, i64 56}
!14 = !{!9, !5, i64 464}
!15 = !{!9, !5, i64 0}
!16 = !{!9, !5, i64 64}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !11, i64 0}
!19 = !{!"pj_opaque", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !10, i64 32}
!20 = !{!9, !11, i64 160}
!21 = !{!11, !11, i64 0}
!22 = !{!19, !10, i64 32}
!23 = !{!9, !11, i64 104}
!24 = !{!9, !11, i64 184}
!25 = !{!9, !11, i64 120}
!26 = !{!19, !11, i64 24}
!27 = !{!19, !11, i64 8}
!28 = !{!19, !11, i64 16}
!29 = !{!9, !5, i64 16}
!30 = !{!9, !5, i64 8}
!31 = !{!9, !11, i64 168}
!32 = !{!9, !11, i64 176}
!33 = !{!9, !11, i64 152}
!34 = !{!35, !11, i64 0}
!35 = !{!"", !11, i64 0, !11, i64 8}
!36 = !{!35, !11, i64 8}
!37 = !{!10, !10, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}

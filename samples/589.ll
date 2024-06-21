; ModuleID = 'samples/589.bc'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/libproj/vtklibproj/src/PJ_tmerc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PJconsts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, [7 x double], ptr, i32, i32, ptr, i32, double, double, double, double, i32, [4 x i8], ptr, ptr, double, ptr, %struct.PJ_Region, double, ptr, %struct.PJ_Region, double, ptr }
%struct.PJ_Region = type { double, double, double, double }
%struct.pj_opaque = type { double, double, ptr }
%struct.LP = type { double, double }
%struct.XY = type { double, double }

@des_tmerc = internal constant [34 x i8] c"Transverse Mercator\0A\09Cyl, Sph&Ell\00", align 16
@vtklibproj_pj_s_tmerc = constant ptr @des_tmerc, align 8

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_tmerc(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @vtklibproj_pj_projection_specific_setup_tmerc(ptr noundef %1)
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
  store ptr @des_tmerc, ptr %descr, align 8, !tbaa !13
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_projection_specific_setup_tmerc(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %call = call ptr @vtklibproj_pj_calloc(i64 noundef 1, i64 noundef 24)
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
  %call2 = call ptr @setup(ptr noundef %4)
  store ptr %call2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
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
  %cmp1 = icmp eq ptr null, %2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @vtklibproj_pj_dealloc(ptr noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque4 = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 50
  %5 = load ptr, ptr %opaque4, align 8, !tbaa !14
  %en = getelementptr inbounds %struct.pj_opaque, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %en, align 8, !tbaa !15
  %call5 = call ptr @vtklibproj_pj_dealloc(ptr noundef %6)
  %7 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque6 = getelementptr inbounds %struct.PJconsts, ptr %7, i32 0, i32 50
  %8 = load ptr, ptr %opaque6, align 8, !tbaa !14
  %call7 = call ptr @vtklibproj_pj_dealloc(ptr noundef %8)
  %9 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call8 = call ptr @vtklibproj_pj_dealloc(ptr noundef %9)
  store ptr %call8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal ptr @setup(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #6
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %0, i32 0, i32 50
  %1 = load ptr, ptr %opaque, align 8, !tbaa !14
  store ptr %1, ptr %Q, align 8, !tbaa !4
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 15
  %3 = load double, ptr %es, align 8, !tbaa !17
  %tobool = fcmp une double %3, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es1 = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 15
  %5 = load double, ptr %es1, align 8, !tbaa !17
  %call = call ptr @vtklibproj_pj_enfn(double noundef %5)
  %6 = load ptr, ptr %Q, align 8, !tbaa !4
  %en = getelementptr inbounds %struct.pj_opaque, ptr %6, i32 0, i32 2
  store ptr %call, ptr %en, align 8, !tbaa !15
  %tobool2 = icmp ne ptr %call, null
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @freeup(ptr noundef %7)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %8, i32 0, i32 22
  %9 = load double, ptr %phi0, align 8, !tbaa !18
  %10 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi04 = getelementptr inbounds %struct.PJconsts, ptr %10, i32 0, i32 22
  %11 = load double, ptr %phi04, align 8, !tbaa !18
  %call5 = call double @sin(double noundef %11) #6
  %12 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi06 = getelementptr inbounds %struct.PJconsts, ptr %12, i32 0, i32 22
  %13 = load double, ptr %phi06, align 8, !tbaa !18
  %call7 = call double @cos(double noundef %13) #6
  %14 = load ptr, ptr %Q, align 8, !tbaa !4
  %en8 = getelementptr inbounds %struct.pj_opaque, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %en8, align 8, !tbaa !15
  %call9 = call double @vtklibproj_pj_mlfn(double noundef %9, double noundef %call5, double noundef %call7, ptr noundef %15)
  %16 = load ptr, ptr %Q, align 8, !tbaa !4
  %ml0 = getelementptr inbounds %struct.pj_opaque, ptr %16, i32 0, i32 1
  store double %call9, ptr %ml0, align 8, !tbaa !19
  %17 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es10 = getelementptr inbounds %struct.PJconsts, ptr %17, i32 0, i32 15
  %18 = load double, ptr %es10, align 8, !tbaa !17
  %19 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es11 = getelementptr inbounds %struct.PJconsts, ptr %19, i32 0, i32 15
  %20 = load double, ptr %es11, align 8, !tbaa !17
  %sub = fsub double 1.000000e+00, %20
  %div = fdiv double %18, %sub
  %21 = load ptr, ptr %Q, align 8, !tbaa !4
  %esp = getelementptr inbounds %struct.pj_opaque, ptr %21, i32 0, i32 0
  store double %div, ptr %esp, align 8, !tbaa !20
  %22 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv = getelementptr inbounds %struct.PJconsts, ptr %22, i32 0, i32 2
  store ptr @e_inverse, ptr %inv, align 8, !tbaa !21
  %23 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd = getelementptr inbounds %struct.PJconsts, ptr %23, i32 0, i32 1
  store ptr @e_forward, ptr %fwd, align 8, !tbaa !22
  br label %if.end17

if.else:                                          ; preds = %entry
  %24 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k0 = getelementptr inbounds %struct.PJconsts, ptr %24, i32 0, i32 25
  %25 = load double, ptr %k0, align 8, !tbaa !23
  %26 = load ptr, ptr %Q, align 8, !tbaa !4
  %esp12 = getelementptr inbounds %struct.pj_opaque, ptr %26, i32 0, i32 0
  store double %25, ptr %esp12, align 8, !tbaa !20
  %27 = load ptr, ptr %Q, align 8, !tbaa !4
  %esp13 = getelementptr inbounds %struct.pj_opaque, ptr %27, i32 0, i32 0
  %28 = load double, ptr %esp13, align 8, !tbaa !20
  %mul = fmul double 5.000000e-01, %28
  %29 = load ptr, ptr %Q, align 8, !tbaa !4
  %ml014 = getelementptr inbounds %struct.pj_opaque, ptr %29, i32 0, i32 1
  store double %mul, ptr %ml014, align 8, !tbaa !19
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv15 = getelementptr inbounds %struct.PJconsts, ptr %30, i32 0, i32 2
  store ptr @s_inverse, ptr %inv15, align 8, !tbaa !21
  %31 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd16 = getelementptr inbounds %struct.PJconsts, ptr %31, i32 0, i32 1
  store ptr @s_forward, ptr %fwd16, align 8, !tbaa !22
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  %32 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %32, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %33 = load ptr, ptr %retval, align 8
  ret ptr %33
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @vtklibproj_pj_tmerc_selftest() #0 {
entry:
  ret i32 0
}

declare ptr @vtklibproj_pj_dealloc(ptr noundef) #1

declare ptr @vtklibproj_pj_enfn(double noundef) #1

declare double @vtklibproj_pj_mlfn(double noundef, double noundef, double noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sin(double noundef) #3

; Function Attrs: nounwind
declare double @cos(double noundef) #3

; Function Attrs: nounwind uwtable
define internal { double, double } @e_inverse(double %xy.coerce0, double %xy.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.LP, align 8
  %xy = alloca %struct.XY, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %n = alloca double, align 8
  %con = alloca double, align 8
  %cosphi = alloca double, align 8
  %d = alloca double, align 8
  %ds = alloca double, align 8
  %sinphi = alloca double, align 8
  %t = alloca double, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %con) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ctx, align 8, !tbaa !24
  %6 = load ptr, ptr %Q, align 8, !tbaa !4
  %ml0 = getelementptr inbounds %struct.pj_opaque, ptr %6, i32 0, i32 1
  %7 = load double, ptr %ml0, align 8, !tbaa !19
  %y = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %8 = load double, ptr %y, align 8, !tbaa !25
  %9 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k0 = getelementptr inbounds %struct.PJconsts, ptr %9, i32 0, i32 25
  %10 = load double, ptr %k0, align 8, !tbaa !23
  %div = fdiv double %8, %10
  %add = fadd double %7, %div
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %11, i32 0, i32 15
  %12 = load double, ptr %es, align 8, !tbaa !17
  %13 = load ptr, ptr %Q, align 8, !tbaa !4
  %en = getelementptr inbounds %struct.pj_opaque, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %en, align 8, !tbaa !15
  %call = call double @vtklibproj_pj_inv_mlfn(ptr noundef %5, double noundef %add, double noundef %12, ptr noundef %14)
  %phi = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %call, ptr %phi, align 8, !tbaa !25
  %phi1 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %15 = load double, ptr %phi1, align 8, !tbaa !25
  %16 = call double @llvm.fabs.f64(double %15)
  %cmp = fcmp oge double %16, 0x3FF921FB54442D18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %y2 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %17 = load double, ptr %y2, align 8, !tbaa !25
  %cmp3 = fcmp olt double %17, 0.000000e+00
  %18 = zext i1 %cmp3 to i64
  %cond = select i1 %cmp3, double 0xBFF921FB54442D18, double 0x3FF921FB54442D18
  %phi4 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %cond, ptr %phi4, align 8, !tbaa !25
  %lam = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double 0.000000e+00, ptr %lam, align 8, !tbaa !27
  br label %if.end

if.else:                                          ; preds = %entry
  %phi5 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %19 = load double, ptr %phi5, align 8, !tbaa !25
  %call6 = call double @sin(double noundef %19) #6
  store double %call6, ptr %sinphi, align 8, !tbaa !28
  %phi7 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %20 = load double, ptr %phi7, align 8, !tbaa !25
  %call8 = call double @cos(double noundef %20) #6
  store double %call8, ptr %cosphi, align 8, !tbaa !28
  %21 = load double, ptr %cosphi, align 8, !tbaa !28
  %22 = call double @llvm.fabs.f64(double %21)
  %cmp9 = fcmp ogt double %22, 1.000000e-10
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %23 = load double, ptr %sinphi, align 8, !tbaa !28
  %24 = load double, ptr %cosphi, align 8, !tbaa !28
  %div10 = fdiv double %23, %24
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi double [ %div10, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond11, ptr %t, align 8, !tbaa !28
  %25 = load ptr, ptr %Q, align 8, !tbaa !4
  %esp = getelementptr inbounds %struct.pj_opaque, ptr %25, i32 0, i32 0
  %26 = load double, ptr %esp, align 8, !tbaa !20
  %27 = load double, ptr %cosphi, align 8, !tbaa !28
  %mul = fmul double %26, %27
  %28 = load double, ptr %cosphi, align 8, !tbaa !28
  %mul12 = fmul double %mul, %28
  store double %mul12, ptr %n, align 8, !tbaa !28
  %x = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %29 = load double, ptr %x, align 8, !tbaa !27
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es13 = getelementptr inbounds %struct.PJconsts, ptr %30, i32 0, i32 15
  %31 = load double, ptr %es13, align 8, !tbaa !17
  %32 = load double, ptr %sinphi, align 8, !tbaa !28
  %mul14 = fmul double %31, %32
  %33 = load double, ptr %sinphi, align 8, !tbaa !28
  %neg = fneg double %mul14
  %34 = call double @llvm.fmuladd.f64(double %neg, double %33, double 1.000000e+00)
  store double %34, ptr %con, align 8, !tbaa !28
  %call16 = call double @sqrt(double noundef %34) #6
  %mul17 = fmul double %29, %call16
  %35 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k018 = getelementptr inbounds %struct.PJconsts, ptr %35, i32 0, i32 25
  %36 = load double, ptr %k018, align 8, !tbaa !23
  %div19 = fdiv double %mul17, %36
  store double %div19, ptr %d, align 8, !tbaa !28
  %37 = load double, ptr %t, align 8, !tbaa !28
  %38 = load double, ptr %con, align 8, !tbaa !28
  %mul20 = fmul double %38, %37
  store double %mul20, ptr %con, align 8, !tbaa !28
  %39 = load double, ptr %t, align 8, !tbaa !28
  %40 = load double, ptr %t, align 8, !tbaa !28
  %mul21 = fmul double %40, %39
  store double %mul21, ptr %t, align 8, !tbaa !28
  %41 = load double, ptr %d, align 8, !tbaa !28
  %42 = load double, ptr %d, align 8, !tbaa !28
  %mul22 = fmul double %41, %42
  store double %mul22, ptr %ds, align 8, !tbaa !28
  %43 = load double, ptr %con, align 8, !tbaa !28
  %44 = load double, ptr %ds, align 8, !tbaa !28
  %mul23 = fmul double %43, %44
  %45 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es24 = getelementptr inbounds %struct.PJconsts, ptr %45, i32 0, i32 15
  %46 = load double, ptr %es24, align 8, !tbaa !17
  %sub = fsub double 1.000000e+00, %46
  %div25 = fdiv double %mul23, %sub
  %mul26 = fmul double %div25, 5.000000e-01
  %47 = load double, ptr %ds, align 8, !tbaa !28
  %mul27 = fmul double %47, 0x3FB5555555555555
  %48 = load double, ptr %t, align 8, !tbaa !28
  %49 = load double, ptr %n, align 8, !tbaa !28
  %50 = call double @llvm.fmuladd.f64(double -9.000000e+00, double %49, double 3.000000e+00)
  %51 = call double @llvm.fmuladd.f64(double %48, double %50, double 5.000000e+00)
  %52 = load double, ptr %n, align 8, !tbaa !28
  %53 = load double, ptr %n, align 8, !tbaa !28
  %54 = call double @llvm.fmuladd.f64(double -4.000000e+00, double %53, double 1.000000e+00)
  %55 = call double @llvm.fmuladd.f64(double %52, double %54, double %51)
  %56 = load double, ptr %ds, align 8, !tbaa !28
  %mul32 = fmul double %56, 0x3FA1111111111111
  %57 = load double, ptr %t, align 8, !tbaa !28
  %58 = load double, ptr %n, align 8, !tbaa !28
  %59 = call double @llvm.fmuladd.f64(double -2.520000e+02, double %58, double 9.000000e+01)
  %60 = load double, ptr %t, align 8, !tbaa !28
  %61 = call double @llvm.fmuladd.f64(double 4.500000e+01, double %60, double %59)
  %62 = call double @llvm.fmuladd.f64(double %57, double %61, double 6.100000e+01)
  %63 = load double, ptr %n, align 8, !tbaa !28
  %64 = call double @llvm.fmuladd.f64(double 4.600000e+01, double %63, double %62)
  %65 = load double, ptr %ds, align 8, !tbaa !28
  %mul37 = fmul double %65, 0x3F92492492492492
  %66 = load double, ptr %t, align 8, !tbaa !28
  %67 = load double, ptr %t, align 8, !tbaa !28
  %68 = load double, ptr %t, align 8, !tbaa !28
  %69 = call double @llvm.fmuladd.f64(double 1.574000e+03, double %68, double 4.095000e+03)
  %70 = call double @llvm.fmuladd.f64(double %67, double %69, double 3.633000e+03)
  %71 = call double @llvm.fmuladd.f64(double %66, double %70, double 1.385000e+03)
  %neg42 = fneg double %mul37
  %72 = call double @llvm.fmuladd.f64(double %neg42, double %71, double %64)
  %neg44 = fneg double %mul32
  %73 = call double @llvm.fmuladd.f64(double %neg44, double %72, double %55)
  %neg46 = fneg double %mul27
  %74 = call double @llvm.fmuladd.f64(double %neg46, double %73, double 1.000000e+00)
  %phi48 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %75 = load double, ptr %phi48, align 8, !tbaa !25
  %neg49 = fneg double %mul26
  %76 = call double @llvm.fmuladd.f64(double %neg49, double %74, double %75)
  store double %76, ptr %phi48, align 8, !tbaa !25
  %77 = load double, ptr %d, align 8, !tbaa !28
  %78 = load double, ptr %ds, align 8, !tbaa !28
  %mul50 = fmul double %78, 0x3FC5555555555555
  %79 = load double, ptr %t, align 8, !tbaa !28
  %80 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %79, double 1.000000e+00)
  %81 = load double, ptr %n, align 8, !tbaa !28
  %add52 = fadd double %80, %81
  %82 = load double, ptr %ds, align 8, !tbaa !28
  %mul53 = fmul double %82, 5.000000e-02
  %83 = load double, ptr %t, align 8, !tbaa !28
  %84 = load double, ptr %t, align 8, !tbaa !28
  %85 = call double @llvm.fmuladd.f64(double 2.400000e+01, double %84, double 2.800000e+01)
  %86 = load double, ptr %n, align 8, !tbaa !28
  %87 = call double @llvm.fmuladd.f64(double 8.000000e+00, double %86, double %85)
  %88 = call double @llvm.fmuladd.f64(double %83, double %87, double 5.000000e+00)
  %89 = load double, ptr %n, align 8, !tbaa !28
  %90 = call double @llvm.fmuladd.f64(double 6.000000e+00, double %89, double %88)
  %91 = load double, ptr %ds, align 8, !tbaa !28
  %mul58 = fmul double %91, 0x3F98618618618618
  %92 = load double, ptr %t, align 8, !tbaa !28
  %93 = load double, ptr %t, align 8, !tbaa !28
  %94 = load double, ptr %t, align 8, !tbaa !28
  %95 = call double @llvm.fmuladd.f64(double 7.200000e+02, double %94, double 1.320000e+03)
  %96 = call double @llvm.fmuladd.f64(double %93, double %95, double 6.620000e+02)
  %97 = call double @llvm.fmuladd.f64(double %92, double %96, double 6.100000e+01)
  %neg63 = fneg double %mul58
  %98 = call double @llvm.fmuladd.f64(double %neg63, double %97, double %90)
  %neg65 = fneg double %mul53
  %99 = call double @llvm.fmuladd.f64(double %neg65, double %98, double %add52)
  %neg67 = fneg double %mul50
  %100 = call double @llvm.fmuladd.f64(double %neg67, double %99, double 1.000000e+00)
  %mul68 = fmul double %77, %100
  %101 = load double, ptr %cosphi, align 8, !tbaa !28
  %div69 = fdiv double %mul68, %101
  %lam70 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %div69, ptr %lam70, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %con) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %102 = load { double, double }, ptr %retval, align 8
  ret { double, double } %102
}

; Function Attrs: nounwind uwtable
define internal { double, double } @e_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.XY, align 8
  %lp = alloca %struct.LP, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %al = alloca double, align 8
  %als = alloca double, align 8
  %n = alloca double, align 8
  %cosphi = alloca double, align 8
  %sinphi = alloca double, align 8
  %t = alloca double, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %al) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %als) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6
  %lam = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %4 = load double, ptr %lam, align 8, !tbaa !27
  %cmp = fcmp olt double %4, 0xBFF921FB54442D18
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %lam1 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %5 = load double, ptr %lam1, align 8, !tbaa !27
  %cmp2 = fcmp ogt double %5, 0x3FF921FB54442D18
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %x = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double 0x7FF0000000000000, ptr %x, align 8, !tbaa !27
  %y = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double 0x7FF0000000000000, ptr %y, align 8, !tbaa !25
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %ctx, align 8, !tbaa !24
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %7, i32 noundef -14)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %phi = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %8 = load double, ptr %phi, align 8, !tbaa !25
  %call = call double @sin(double noundef %8) #6
  store double %call, ptr %sinphi, align 8, !tbaa !28
  %phi3 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %9 = load double, ptr %phi3, align 8, !tbaa !25
  %call4 = call double @cos(double noundef %9) #6
  store double %call4, ptr %cosphi, align 8, !tbaa !28
  %10 = load double, ptr %cosphi, align 8, !tbaa !28
  %11 = call double @llvm.fabs.f64(double %10)
  %cmp5 = fcmp ogt double %11, 1.000000e-10
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load double, ptr %sinphi, align 8, !tbaa !28
  %13 = load double, ptr %cosphi, align 8, !tbaa !28
  %div = fdiv double %12, %13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond, ptr %t, align 8, !tbaa !28
  %14 = load double, ptr %t, align 8, !tbaa !28
  %15 = load double, ptr %t, align 8, !tbaa !28
  %mul = fmul double %15, %14
  store double %mul, ptr %t, align 8, !tbaa !28
  %16 = load double, ptr %cosphi, align 8, !tbaa !28
  %lam6 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %17 = load double, ptr %lam6, align 8, !tbaa !27
  %mul7 = fmul double %16, %17
  store double %mul7, ptr %al, align 8, !tbaa !28
  %18 = load double, ptr %al, align 8, !tbaa !28
  %19 = load double, ptr %al, align 8, !tbaa !28
  %mul8 = fmul double %18, %19
  store double %mul8, ptr %als, align 8, !tbaa !28
  %20 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %20, i32 0, i32 15
  %21 = load double, ptr %es, align 8, !tbaa !17
  %22 = load double, ptr %sinphi, align 8, !tbaa !28
  %mul9 = fmul double %21, %22
  %23 = load double, ptr %sinphi, align 8, !tbaa !28
  %neg = fneg double %mul9
  %24 = call double @llvm.fmuladd.f64(double %neg, double %23, double 1.000000e+00)
  %call11 = call double @sqrt(double noundef %24) #6
  %25 = load double, ptr %al, align 8, !tbaa !28
  %div12 = fdiv double %25, %call11
  store double %div12, ptr %al, align 8, !tbaa !28
  %26 = load ptr, ptr %Q, align 8, !tbaa !4
  %esp = getelementptr inbounds %struct.pj_opaque, ptr %26, i32 0, i32 0
  %27 = load double, ptr %esp, align 8, !tbaa !20
  %28 = load double, ptr %cosphi, align 8, !tbaa !28
  %mul13 = fmul double %27, %28
  %29 = load double, ptr %cosphi, align 8, !tbaa !28
  %mul14 = fmul double %mul13, %29
  store double %mul14, ptr %n, align 8, !tbaa !28
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k0 = getelementptr inbounds %struct.PJconsts, ptr %30, i32 0, i32 25
  %31 = load double, ptr %k0, align 8, !tbaa !23
  %32 = load double, ptr %al, align 8, !tbaa !28
  %mul15 = fmul double %31, %32
  %33 = load double, ptr %als, align 8, !tbaa !28
  %mul16 = fmul double 0x3FC5555555555555, %33
  %34 = load double, ptr %t, align 8, !tbaa !28
  %sub = fsub double 1.000000e+00, %34
  %35 = load double, ptr %n, align 8, !tbaa !28
  %add = fadd double %sub, %35
  %36 = load double, ptr %als, align 8, !tbaa !28
  %mul17 = fmul double 5.000000e-02, %36
  %37 = load double, ptr %t, align 8, !tbaa !28
  %38 = load double, ptr %t, align 8, !tbaa !28
  %sub18 = fsub double %38, 1.800000e+01
  %39 = call double @llvm.fmuladd.f64(double %37, double %sub18, double 5.000000e+00)
  %40 = load double, ptr %n, align 8, !tbaa !28
  %41 = load double, ptr %t, align 8, !tbaa !28
  %42 = call double @llvm.fmuladd.f64(double -5.800000e+01, double %41, double 1.400000e+01)
  %43 = call double @llvm.fmuladd.f64(double %40, double %42, double %39)
  %44 = load double, ptr %als, align 8, !tbaa !28
  %mul22 = fmul double 0x3F98618618618618, %44
  %45 = load double, ptr %t, align 8, !tbaa !28
  %46 = load double, ptr %t, align 8, !tbaa !28
  %47 = load double, ptr %t, align 8, !tbaa !28
  %sub23 = fsub double 1.790000e+02, %47
  %48 = call double @llvm.fmuladd.f64(double %46, double %sub23, double -4.790000e+02)
  %49 = call double @llvm.fmuladd.f64(double %45, double %48, double 6.100000e+01)
  %50 = call double @llvm.fmuladd.f64(double %mul22, double %49, double %43)
  %51 = call double @llvm.fmuladd.f64(double %mul17, double %50, double %add)
  %52 = call double @llvm.fmuladd.f64(double %mul16, double %51, double 1.000000e+00)
  %mul29 = fmul double %mul15, %52
  %x30 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul29, ptr %x30, align 8, !tbaa !27
  %53 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %k031 = getelementptr inbounds %struct.PJconsts, ptr %53, i32 0, i32 25
  %54 = load double, ptr %k031, align 8, !tbaa !23
  %phi32 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %55 = load double, ptr %phi32, align 8, !tbaa !25
  %56 = load double, ptr %sinphi, align 8, !tbaa !28
  %57 = load double, ptr %cosphi, align 8, !tbaa !28
  %58 = load ptr, ptr %Q, align 8, !tbaa !4
  %en = getelementptr inbounds %struct.pj_opaque, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %en, align 8, !tbaa !15
  %call33 = call double @vtklibproj_pj_mlfn(double noundef %55, double noundef %56, double noundef %57, ptr noundef %59)
  %60 = load ptr, ptr %Q, align 8, !tbaa !4
  %ml0 = getelementptr inbounds %struct.pj_opaque, ptr %60, i32 0, i32 1
  %61 = load double, ptr %ml0, align 8, !tbaa !19
  %sub34 = fsub double %call33, %61
  %62 = load double, ptr %sinphi, align 8, !tbaa !28
  %63 = load double, ptr %al, align 8, !tbaa !28
  %mul35 = fmul double %62, %63
  %lam36 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %64 = load double, ptr %lam36, align 8, !tbaa !27
  %mul37 = fmul double %mul35, %64
  %mul38 = fmul double %mul37, 5.000000e-01
  %65 = load double, ptr %als, align 8, !tbaa !28
  %mul39 = fmul double 0x3FB5555555555555, %65
  %66 = load double, ptr %t, align 8, !tbaa !28
  %sub40 = fsub double 5.000000e+00, %66
  %67 = load double, ptr %n, align 8, !tbaa !28
  %68 = load double, ptr %n, align 8, !tbaa !28
  %69 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %68, double 9.000000e+00)
  %70 = call double @llvm.fmuladd.f64(double %67, double %69, double %sub40)
  %71 = load double, ptr %als, align 8, !tbaa !28
  %mul43 = fmul double 0x3FA1111111111111, %71
  %72 = load double, ptr %t, align 8, !tbaa !28
  %73 = load double, ptr %t, align 8, !tbaa !28
  %sub44 = fsub double %73, 5.800000e+01
  %74 = call double @llvm.fmuladd.f64(double %72, double %sub44, double 6.100000e+01)
  %75 = load double, ptr %n, align 8, !tbaa !28
  %76 = load double, ptr %t, align 8, !tbaa !28
  %77 = call double @llvm.fmuladd.f64(double -3.300000e+02, double %76, double 2.700000e+02)
  %78 = call double @llvm.fmuladd.f64(double %75, double %77, double %74)
  %79 = load double, ptr %als, align 8, !tbaa !28
  %mul48 = fmul double 0x3F92492492492492, %79
  %80 = load double, ptr %t, align 8, !tbaa !28
  %81 = load double, ptr %t, align 8, !tbaa !28
  %82 = load double, ptr %t, align 8, !tbaa !28
  %sub49 = fsub double 5.430000e+02, %82
  %83 = call double @llvm.fmuladd.f64(double %81, double %sub49, double -3.111000e+03)
  %84 = call double @llvm.fmuladd.f64(double %80, double %83, double 1.385000e+03)
  %85 = call double @llvm.fmuladd.f64(double %mul48, double %84, double %78)
  %86 = call double @llvm.fmuladd.f64(double %mul43, double %85, double %70)
  %87 = call double @llvm.fmuladd.f64(double %mul39, double %86, double 1.000000e+00)
  %88 = call double @llvm.fmuladd.f64(double %mul38, double %87, double %sub34)
  %mul56 = fmul double %54, %88
  %y57 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %mul56, ptr %y57, align 8, !tbaa !25
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %als) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %al) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #6
  %89 = load { double, double }, ptr %retval, align 8
  ret { double, double } %89
}

; Function Attrs: nounwind uwtable
define internal { double, double } @s_inverse(double %xy.coerce0, double %xy.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.LP, align 8
  %xy = alloca %struct.XY, align 8
  %P.addr = alloca ptr, align 8
  %h = alloca double, align 8
  %g = alloca double, align 8
  %0 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 0
  store double %xy.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 1
  store double %xy.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #6
  %x = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %2 = load double, ptr %x, align 8, !tbaa !27
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 50
  %4 = load ptr, ptr %opaque, align 8, !tbaa !14
  %esp = getelementptr inbounds %struct.pj_opaque, ptr %4, i32 0, i32 0
  %5 = load double, ptr %esp, align 8, !tbaa !20
  %div = fdiv double %2, %5
  %call = call double @exp(double noundef %div) #6
  store double %call, ptr %h, align 8, !tbaa !28
  %6 = load double, ptr %h, align 8, !tbaa !28
  %7 = load double, ptr %h, align 8, !tbaa !28
  %div1 = fdiv double 1.000000e+00, %7
  %sub = fsub double %6, %div1
  %mul = fmul double 5.000000e-01, %sub
  store double %mul, ptr %g, align 8, !tbaa !28
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %8, i32 0, i32 22
  %9 = load double, ptr %phi0, align 8, !tbaa !18
  %y = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %10 = load double, ptr %y, align 8, !tbaa !25
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque2 = getelementptr inbounds %struct.PJconsts, ptr %11, i32 0, i32 50
  %12 = load ptr, ptr %opaque2, align 8, !tbaa !14
  %esp3 = getelementptr inbounds %struct.pj_opaque, ptr %12, i32 0, i32 0
  %13 = load double, ptr %esp3, align 8, !tbaa !20
  %div4 = fdiv double %10, %13
  %add = fadd double %9, %div4
  %call5 = call double @cos(double noundef %add) #6
  store double %call5, ptr %h, align 8, !tbaa !28
  %14 = load double, ptr %h, align 8, !tbaa !28
  %15 = load double, ptr %h, align 8, !tbaa !28
  %neg = fneg double %14
  %16 = call double @llvm.fmuladd.f64(double %neg, double %15, double 1.000000e+00)
  %17 = load double, ptr %g, align 8, !tbaa !28
  %18 = load double, ptr %g, align 8, !tbaa !28
  %19 = call double @llvm.fmuladd.f64(double %17, double %18, double 1.000000e+00)
  %div8 = fdiv double %16, %19
  %call9 = call double @sqrt(double noundef %div8) #6
  %call10 = call double @asin(double noundef %call9) #6
  %phi = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %call10, ptr %phi, align 8, !tbaa !25
  %y11 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %20 = load double, ptr %y11, align 8, !tbaa !25
  %cmp = fcmp olt double %20, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %phi12 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  %21 = load double, ptr %phi12, align 8, !tbaa !25
  %fneg = fneg double %21
  %phi13 = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %fneg, ptr %phi13, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load double, ptr %g, align 8, !tbaa !28
  %tobool = fcmp une double %22, 0.000000e+00
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %23 = load double, ptr %h, align 8, !tbaa !28
  %tobool14 = fcmp une double %23, 0.000000e+00
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %24 = load double, ptr %g, align 8, !tbaa !28
  %25 = load double, ptr %h, align 8, !tbaa !28
  %call15 = call double @atan2(double noundef %24, double noundef %25) #6
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call15, %cond.true ], [ 0.000000e+00, %cond.false ]
  %lam = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %cond, ptr %lam, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6
  %26 = load { double, double }, ptr %retval, align 8
  ret { double, double } %26
}

; Function Attrs: nounwind uwtable
define internal { double, double } @s_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.XY, align 8
  %lp = alloca %struct.LP, align 8
  %P.addr = alloca ptr, align 8
  %b = alloca double, align 8
  %cosphi = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 0
  store double %lp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 1
  store double %lp.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosphi) #6
  %lam = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %2 = load double, ptr %lam, align 8, !tbaa !27
  %cmp = fcmp olt double %2, 0xBFF921FB54442D18
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %lam1 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %3 = load double, ptr %lam1, align 8, !tbaa !27
  %cmp2 = fcmp ogt double %3, 0x3FF921FB54442D18
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %x = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double 0x7FF0000000000000, ptr %x, align 8, !tbaa !27
  %y = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double 0x7FF0000000000000, ptr %y, align 8, !tbaa !25
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ctx, align 8, !tbaa !24
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %5, i32 noundef -14)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %phi = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %6 = load double, ptr %phi, align 8, !tbaa !25
  %call = call double @cos(double noundef %6) #6
  store double %call, ptr %cosphi, align 8, !tbaa !28
  %7 = load double, ptr %cosphi, align 8, !tbaa !28
  %lam3 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %8 = load double, ptr %lam3, align 8, !tbaa !27
  %call4 = call double @sin(double noundef %8) #6
  %mul = fmul double %7, %call4
  store double %mul, ptr %b, align 8, !tbaa !28
  %9 = load double, ptr %b, align 8, !tbaa !28
  %10 = call double @llvm.fabs.f64(double %9)
  %sub = fsub double %10, 1.000000e+00
  %11 = call double @llvm.fabs.f64(double %sub)
  %cmp5 = fcmp ole double %11, 1.000000e-10
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %12 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx7 = getelementptr inbounds %struct.PJconsts, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %ctx7, align 8, !tbaa !24
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %13, i32 noundef -20)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %14 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %14, i32 0, i32 50
  %15 = load ptr, ptr %opaque, align 8, !tbaa !14
  %ml0 = getelementptr inbounds %struct.pj_opaque, ptr %15, i32 0, i32 1
  %16 = load double, ptr %ml0, align 8, !tbaa !19
  %17 = load double, ptr %b, align 8, !tbaa !28
  %add = fadd double 1.000000e+00, %17
  %18 = load double, ptr %b, align 8, !tbaa !28
  %sub9 = fsub double 1.000000e+00, %18
  %div = fdiv double %add, %sub9
  %call10 = call double @log(double noundef %div) #6
  %mul11 = fmul double %16, %call10
  %x12 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul11, ptr %x12, align 8, !tbaa !27
  %19 = load double, ptr %cosphi, align 8, !tbaa !28
  %lam13 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %20 = load double, ptr %lam13, align 8, !tbaa !27
  %call14 = call double @cos(double noundef %20) #6
  %mul15 = fmul double %19, %call14
  %21 = load double, ptr %b, align 8, !tbaa !28
  %22 = load double, ptr %b, align 8, !tbaa !28
  %neg = fneg double %21
  %23 = call double @llvm.fmuladd.f64(double %neg, double %22, double 1.000000e+00)
  %call17 = call double @sqrt(double noundef %23) #6
  %div18 = fdiv double %mul15, %call17
  %y19 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %div18, ptr %y19, align 8, !tbaa !25
  %y20 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %24 = load double, ptr %y20, align 8, !tbaa !25
  %25 = call double @llvm.fabs.f64(double %24)
  store double %25, ptr %b, align 8, !tbaa !28
  %26 = load double, ptr %b, align 8, !tbaa !28
  %cmp21 = fcmp oge double %26, 1.000000e+00
  br i1 %cmp21, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.end8
  %27 = load double, ptr %b, align 8, !tbaa !28
  %sub23 = fsub double %27, 1.000000e+00
  %cmp24 = fcmp ogt double %sub23, 1.000000e-10
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then22
  %28 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx26 = getelementptr inbounds %struct.PJconsts, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %ctx26, align 8, !tbaa !24
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %29, i32 noundef -20)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then22
  %y27 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double 0.000000e+00, ptr %y27, align 8, !tbaa !25
  br label %if.end28

if.end28:                                         ; preds = %if.else
  br label %if.end33

if.else29:                                        ; preds = %if.end8
  %y30 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %30 = load double, ptr %y30, align 8, !tbaa !25
  %call31 = call double @acos(double noundef %30) #6
  %y32 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %call31, ptr %y32, align 8, !tbaa !25
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.end28
  %phi34 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %31 = load double, ptr %phi34, align 8, !tbaa !25
  %cmp35 = fcmp olt double %31, 0.000000e+00
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end33
  %y37 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %32 = load double, ptr %y37, align 8, !tbaa !25
  %fneg = fneg double %32
  %y38 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %fneg, ptr %y38, align 8, !tbaa !25
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33
  %33 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque40 = getelementptr inbounds %struct.PJconsts, ptr %33, i32 0, i32 50
  %34 = load ptr, ptr %opaque40, align 8, !tbaa !14
  %esp = getelementptr inbounds %struct.pj_opaque, ptr %34, i32 0, i32 0
  %35 = load double, ptr %esp, align 8, !tbaa !20
  %y41 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %36 = load double, ptr %y41, align 8, !tbaa !25
  %37 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %37, i32 0, i32 22
  %38 = load double, ptr %phi0, align 8, !tbaa !18
  %sub42 = fsub double %36, %38
  %mul43 = fmul double %35, %sub42
  %y44 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %mul43, ptr %y44, align 8, !tbaa !25
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then25, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosphi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  %39 = load { double, double }, ptr %retval, align 8
  ret { double, double } %39
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare double @vtklibproj_pj_inv_mlfn(ptr noundef, double noundef, double noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @vtklibproj_pj_ctx_set_errno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare double @exp(double noundef) #3

; Function Attrs: nounwind
declare double @asin(double noundef) #3

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #3

; Function Attrs: nounwind
declare double @log(double noundef) #3

; Function Attrs: nounwind
declare double @acos(double noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = !{!16, !5, i64 16}
!16 = !{!"pj_opaque", !11, i64 0, !11, i64 8, !5, i64 16}
!17 = !{!9, !11, i64 104}
!18 = !{!9, !11, i64 160}
!19 = !{!16, !11, i64 8}
!20 = !{!16, !11, i64 0}
!21 = !{!9, !5, i64 16}
!22 = !{!9, !5, i64 8}
!23 = !{!9, !11, i64 184}
!24 = !{!9, !5, i64 0}
!25 = !{!26, !11, i64 8}
!26 = !{!"", !11, i64 0, !11, i64 8}
!27 = !{!26, !11, i64 0}
!28 = !{!11, !11, i64 0}

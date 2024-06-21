; ModuleID = 'samples/839.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/libproj4/vtklibproj4/src/PJ_cass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PJconsts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, [7 x double], ptr, i32, i32, ptr, i32, double, double, double, double, i32, [4 x i8], ptr, ptr, double, ptr, %struct.PJ_Region, double, ptr, %struct.PJ_Region, double, double, double, double, double, double, double, double, double, double, double, ptr }
%struct.PJ_Region = type { double, double, double, double }
%struct.LP = type { double, double }
%struct.XY = type { double, double }

@des_cass = internal constant [22 x i8] c"Cassini\0A\09Cyl, Sph&Ell\00", align 16
@pj_s_cass = constant ptr @des_cass, align 8

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_cass(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @vtk_pj_malloc(i64 noundef 536)
  store ptr %call, ptr %P.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 536, i1 false)
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 4
  store ptr @freeup, ptr %pfree, align 8, !tbaa !8
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 1
  store ptr null, ptr %fwd, align 8, !tbaa !13
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 2
  store ptr null, ptr %inv, align 8, !tbaa !14
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %spc = getelementptr inbounds %struct.PJconsts, ptr %5, i32 0, i32 3
  store ptr null, ptr %spc, align 8, !tbaa !15
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %descr = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 5
  store ptr @des_cass, ptr %descr, align 8, !tbaa !16
  %7 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %en = getelementptr inbounds %struct.PJconsts, ptr %7, i32 0, i32 58
  store ptr null, ptr %en, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %9, i32 0, i32 13
  %10 = load double, ptr %es, align 8, !tbaa !18
  %tobool2 = fcmp une double %10, 0.000000e+00
  br i1 %tobool2, label %if.then3, label %if.else18

if.then3:                                         ; preds = %if.else
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es4 = getelementptr inbounds %struct.PJconsts, ptr %11, i32 0, i32 13
  %12 = load double, ptr %es4, align 8, !tbaa !18
  %call5 = call ptr @vtk_pj_enfn(double noundef %12)
  %13 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %en6 = getelementptr inbounds %struct.PJconsts, ptr %13, i32 0, i32 58
  store ptr %call5, ptr %en6, align 8, !tbaa !17
  %tobool7 = icmp ne ptr %call5, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then3
  %14 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @freeup(ptr noundef %14)
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.then3
  %15 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %15, i32 0, i32 20
  %16 = load double, ptr %phi0, align 8, !tbaa !19
  %17 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi010 = getelementptr inbounds %struct.PJconsts, ptr %17, i32 0, i32 20
  %18 = load double, ptr %phi010, align 8, !tbaa !19
  %call11 = call double @sin(double noundef %18) #6
  %19 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi012 = getelementptr inbounds %struct.PJconsts, ptr %19, i32 0, i32 20
  %20 = load double, ptr %phi012, align 8, !tbaa !19
  %call13 = call double @cos(double noundef %20) #6
  %21 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %en14 = getelementptr inbounds %struct.PJconsts, ptr %21, i32 0, i32 58
  %22 = load ptr, ptr %en14, align 8, !tbaa !17
  %call15 = call double @vtk_pj_mlfn(double noundef %16, double noundef %call11, double noundef %call13, ptr noundef %22)
  %23 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %m0 = getelementptr inbounds %struct.PJconsts, ptr %23, i32 0, i32 48
  store double %call15, ptr %m0, align 8, !tbaa !20
  %24 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv16 = getelementptr inbounds %struct.PJconsts, ptr %24, i32 0, i32 2
  store ptr @e_inverse, ptr %inv16, align 8, !tbaa !14
  %25 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd17 = getelementptr inbounds %struct.PJconsts, ptr %25, i32 0, i32 1
  store ptr @e_forward, ptr %fwd17, align 8, !tbaa !13
  br label %if.end21

if.else18:                                        ; preds = %if.else
  %26 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inv19 = getelementptr inbounds %struct.PJconsts, ptr %26, i32 0, i32 2
  store ptr @s_inverse, ptr %inv19, align 8, !tbaa !14
  %27 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd20 = getelementptr inbounds %struct.PJconsts, ptr %27, i32 0, i32 1
  store ptr @s_forward, ptr %fwd20, align 8, !tbaa !13
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.end9
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  %28 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then8, %if.end
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

declare ptr @vtk_pj_malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal void @freeup(ptr noundef %P) #0 {
entry:
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %en = getelementptr inbounds %struct.PJconsts, ptr %1, i32 0, i32 58
  %2 = load ptr, ptr %en, align 8, !tbaa !17
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %en3 = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 58
  %4 = load ptr, ptr %en3, align 8, !tbaa !17
  call void @vtk_pj_dalloc(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @vtk_pj_dalloc(ptr noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare ptr @vtk_pj_enfn(double noundef) #1

declare double @vtk_pj_mlfn(double noundef, double noundef, double noundef, ptr noundef) #1

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
  %ph1 = alloca double, align 8
  %0 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 0
  store double %xy.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 1
  store double %xy.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ph1) #6
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %ctx, align 8, !tbaa !21
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %m0 = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 48
  %5 = load double, ptr %m0, align 8, !tbaa !20
  %y = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %6 = load double, ptr %y, align 8, !tbaa !22
  %add = fadd double %5, %6
  %7 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %7, i32 0, i32 13
  %8 = load double, ptr %es, align 8, !tbaa !18
  %9 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %en = getelementptr inbounds %struct.PJconsts, ptr %9, i32 0, i32 58
  %10 = load ptr, ptr %en, align 8, !tbaa !17
  %call = call double @vtk_pj_inv_mlfn(ptr noundef %3, double noundef %add, double noundef %8, ptr noundef %10)
  store double %call, ptr %ph1, align 8, !tbaa !24
  %11 = load double, ptr %ph1, align 8, !tbaa !24
  %call1 = call double @tan(double noundef %11) #6
  %12 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn = getelementptr inbounds %struct.PJconsts, ptr %12, i32 0, i32 57
  store double %call1, ptr %tn, align 8, !tbaa !25
  %13 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn2 = getelementptr inbounds %struct.PJconsts, ptr %13, i32 0, i32 57
  %14 = load double, ptr %tn2, align 8, !tbaa !25
  %15 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn3 = getelementptr inbounds %struct.PJconsts, ptr %15, i32 0, i32 57
  %16 = load double, ptr %tn3, align 8, !tbaa !25
  %mul = fmul double %14, %16
  %17 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.PJconsts, ptr %17, i32 0, i32 50
  store double %mul, ptr %t, align 8, !tbaa !26
  %18 = load double, ptr %ph1, align 8, !tbaa !24
  %call4 = call double @sin(double noundef %18) #6
  %19 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.PJconsts, ptr %19, i32 0, i32 49
  store double %call4, ptr %n, align 8, !tbaa !27
  %20 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es5 = getelementptr inbounds %struct.PJconsts, ptr %20, i32 0, i32 13
  %21 = load double, ptr %es5, align 8, !tbaa !18
  %22 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n6 = getelementptr inbounds %struct.PJconsts, ptr %22, i32 0, i32 49
  %23 = load double, ptr %n6, align 8, !tbaa !27
  %mul7 = fmul double %21, %23
  %24 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n8 = getelementptr inbounds %struct.PJconsts, ptr %24, i32 0, i32 49
  %25 = load double, ptr %n8, align 8, !tbaa !27
  %neg = fneg double %mul7
  %26 = call double @llvm.fmuladd.f64(double %neg, double %25, double 1.000000e+00)
  %div = fdiv double 1.000000e+00, %26
  %27 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.PJconsts, ptr %27, i32 0, i32 53
  store double %div, ptr %r, align 8, !tbaa !28
  %28 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %r10 = getelementptr inbounds %struct.PJconsts, ptr %28, i32 0, i32 53
  %29 = load double, ptr %r10, align 8, !tbaa !28
  %call11 = call double @sqrt(double noundef %29) #6
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n12 = getelementptr inbounds %struct.PJconsts, ptr %30, i32 0, i32 49
  store double %call11, ptr %n12, align 8, !tbaa !27
  %31 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es13 = getelementptr inbounds %struct.PJconsts, ptr %31, i32 0, i32 13
  %32 = load double, ptr %es13, align 8, !tbaa !18
  %sub = fsub double 1.000000e+00, %32
  %33 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n14 = getelementptr inbounds %struct.PJconsts, ptr %33, i32 0, i32 49
  %34 = load double, ptr %n14, align 8, !tbaa !27
  %mul15 = fmul double %sub, %34
  %35 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %r16 = getelementptr inbounds %struct.PJconsts, ptr %35, i32 0, i32 53
  %36 = load double, ptr %r16, align 8, !tbaa !28
  %mul17 = fmul double %36, %mul15
  store double %mul17, ptr %r16, align 8, !tbaa !28
  %x = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %37 = load double, ptr %x, align 8, !tbaa !29
  %38 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n18 = getelementptr inbounds %struct.PJconsts, ptr %38, i32 0, i32 49
  %39 = load double, ptr %n18, align 8, !tbaa !27
  %div19 = fdiv double %37, %39
  %40 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %dd = getelementptr inbounds %struct.PJconsts, ptr %40, i32 0, i32 54
  store double %div19, ptr %dd, align 8, !tbaa !30
  %41 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %dd20 = getelementptr inbounds %struct.PJconsts, ptr %41, i32 0, i32 54
  %42 = load double, ptr %dd20, align 8, !tbaa !30
  %43 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %dd21 = getelementptr inbounds %struct.PJconsts, ptr %43, i32 0, i32 54
  %44 = load double, ptr %dd21, align 8, !tbaa !30
  %mul22 = fmul double %42, %44
  %45 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.PJconsts, ptr %45, i32 0, i32 55
  store double %mul22, ptr %d2, align 8, !tbaa !31
  %46 = load double, ptr %ph1, align 8, !tbaa !24
  %47 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n23 = getelementptr inbounds %struct.PJconsts, ptr %47, i32 0, i32 49
  %48 = load double, ptr %n23, align 8, !tbaa !27
  %49 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn24 = getelementptr inbounds %struct.PJconsts, ptr %49, i32 0, i32 57
  %50 = load double, ptr %tn24, align 8, !tbaa !25
  %mul25 = fmul double %48, %50
  %51 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %r26 = getelementptr inbounds %struct.PJconsts, ptr %51, i32 0, i32 53
  %52 = load double, ptr %r26, align 8, !tbaa !28
  %div27 = fdiv double %mul25, %52
  %53 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %d228 = getelementptr inbounds %struct.PJconsts, ptr %53, i32 0, i32 55
  %54 = load double, ptr %d228, align 8, !tbaa !31
  %mul29 = fmul double %div27, %54
  %55 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t30 = getelementptr inbounds %struct.PJconsts, ptr %55, i32 0, i32 50
  %56 = load double, ptr %t30, align 8, !tbaa !26
  %57 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %56, double 1.000000e+00)
  %58 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %d232 = getelementptr inbounds %struct.PJconsts, ptr %58, i32 0, i32 55
  %59 = load double, ptr %d232, align 8, !tbaa !31
  %mul33 = fmul double %57, %59
  %neg35 = fneg double %mul33
  %60 = call double @llvm.fmuladd.f64(double %neg35, double 0x3FA5555555555555, double 5.000000e-01)
  %neg37 = fneg double %mul29
  %61 = call double @llvm.fmuladd.f64(double %neg37, double %60, double %46)
  %phi = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %61, ptr %phi, align 8, !tbaa !22
  %62 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %dd38 = getelementptr inbounds %struct.PJconsts, ptr %62, i32 0, i32 54
  %63 = load double, ptr %dd38, align 8, !tbaa !30
  %64 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t39 = getelementptr inbounds %struct.PJconsts, ptr %64, i32 0, i32 50
  %65 = load double, ptr %t39, align 8, !tbaa !26
  %66 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %d240 = getelementptr inbounds %struct.PJconsts, ptr %66, i32 0, i32 55
  %67 = load double, ptr %d240, align 8, !tbaa !31
  %mul41 = fmul double %65, %67
  %68 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t42 = getelementptr inbounds %struct.PJconsts, ptr %68, i32 0, i32 50
  %69 = load double, ptr %t42, align 8, !tbaa !26
  %70 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %69, double 1.000000e+00)
  %71 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %d244 = getelementptr inbounds %struct.PJconsts, ptr %71, i32 0, i32 55
  %72 = load double, ptr %d244, align 8, !tbaa !31
  %mul45 = fmul double %70, %72
  %73 = call double @llvm.fmuladd.f64(double %mul45, double 0x3FB1111111111111, double 0xBFD5555555555555)
  %74 = call double @llvm.fmuladd.f64(double %mul41, double %73, double 1.000000e+00)
  %mul48 = fmul double %63, %74
  %75 = load double, ptr %ph1, align 8, !tbaa !24
  %call49 = call double @cos(double noundef %75) #6
  %div50 = fdiv double %mul48, %call49
  %lam = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %div50, ptr %lam, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %ph1) #6
  %76 = load { double, double }, ptr %retval, align 8
  ret { double, double } %76
}

; Function Attrs: nounwind uwtable
define internal { double, double } @e_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.XY, align 8
  %lp = alloca %struct.LP, align 8
  %P.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 0
  store double %lp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 1
  store double %lp.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  %phi = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %2 = load double, ptr %phi, align 8, !tbaa !22
  %phi1 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %3 = load double, ptr %phi1, align 8, !tbaa !22
  %call = call double @sin(double noundef %3) #6
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 49
  store double %call, ptr %n, align 8, !tbaa !27
  %phi2 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %5 = load double, ptr %phi2, align 8, !tbaa !22
  %call3 = call double @cos(double noundef %5) #6
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %c = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 52
  store double %call3, ptr %c, align 8, !tbaa !32
  %7 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %en = getelementptr inbounds %struct.PJconsts, ptr %7, i32 0, i32 58
  %8 = load ptr, ptr %en, align 8, !tbaa !17
  %call4 = call double @vtk_pj_mlfn(double noundef %2, double noundef %call, double noundef %call3, ptr noundef %8)
  %y = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %call4, ptr %y, align 8, !tbaa !22
  %9 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %9, i32 0, i32 13
  %10 = load double, ptr %es, align 8, !tbaa !18
  %11 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n5 = getelementptr inbounds %struct.PJconsts, ptr %11, i32 0, i32 49
  %12 = load double, ptr %n5, align 8, !tbaa !27
  %mul = fmul double %10, %12
  %13 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n6 = getelementptr inbounds %struct.PJconsts, ptr %13, i32 0, i32 49
  %14 = load double, ptr %n6, align 8, !tbaa !27
  %neg = fneg double %mul
  %15 = call double @llvm.fmuladd.f64(double %neg, double %14, double 1.000000e+00)
  %call8 = call double @sqrt(double noundef %15) #6
  %div = fdiv double 1.000000e+00, %call8
  %16 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n9 = getelementptr inbounds %struct.PJconsts, ptr %16, i32 0, i32 49
  store double %div, ptr %n9, align 8, !tbaa !27
  %phi10 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %17 = load double, ptr %phi10, align 8, !tbaa !22
  %call11 = call double @tan(double noundef %17) #6
  %18 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn = getelementptr inbounds %struct.PJconsts, ptr %18, i32 0, i32 57
  store double %call11, ptr %tn, align 8, !tbaa !25
  %19 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn12 = getelementptr inbounds %struct.PJconsts, ptr %19, i32 0, i32 57
  %20 = load double, ptr %tn12, align 8, !tbaa !25
  %21 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn13 = getelementptr inbounds %struct.PJconsts, ptr %21, i32 0, i32 57
  %22 = load double, ptr %tn13, align 8, !tbaa !25
  %mul14 = fmul double %20, %22
  %23 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.PJconsts, ptr %23, i32 0, i32 50
  store double %mul14, ptr %t, align 8, !tbaa !26
  %lam = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %24 = load double, ptr %lam, align 8, !tbaa !29
  %25 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %c15 = getelementptr inbounds %struct.PJconsts, ptr %25, i32 0, i32 52
  %26 = load double, ptr %c15, align 8, !tbaa !32
  %mul16 = fmul double %24, %26
  %27 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a1 = getelementptr inbounds %struct.PJconsts, ptr %27, i32 0, i32 51
  store double %mul16, ptr %a1, align 8, !tbaa !33
  %28 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es17 = getelementptr inbounds %struct.PJconsts, ptr %28, i32 0, i32 13
  %29 = load double, ptr %es17, align 8, !tbaa !18
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %c18 = getelementptr inbounds %struct.PJconsts, ptr %30, i32 0, i32 52
  %31 = load double, ptr %c18, align 8, !tbaa !32
  %mul19 = fmul double %29, %31
  %32 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es20 = getelementptr inbounds %struct.PJconsts, ptr %32, i32 0, i32 13
  %33 = load double, ptr %es20, align 8, !tbaa !18
  %sub = fsub double 1.000000e+00, %33
  %div21 = fdiv double %mul19, %sub
  %34 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %c22 = getelementptr inbounds %struct.PJconsts, ptr %34, i32 0, i32 52
  %35 = load double, ptr %c22, align 8, !tbaa !32
  %mul23 = fmul double %35, %div21
  store double %mul23, ptr %c22, align 8, !tbaa !32
  %36 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a124 = getelementptr inbounds %struct.PJconsts, ptr %36, i32 0, i32 51
  %37 = load double, ptr %a124, align 8, !tbaa !33
  %38 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a125 = getelementptr inbounds %struct.PJconsts, ptr %38, i32 0, i32 51
  %39 = load double, ptr %a125, align 8, !tbaa !33
  %mul26 = fmul double %37, %39
  %40 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a2 = getelementptr inbounds %struct.PJconsts, ptr %40, i32 0, i32 56
  store double %mul26, ptr %a2, align 8, !tbaa !34
  %41 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n27 = getelementptr inbounds %struct.PJconsts, ptr %41, i32 0, i32 49
  %42 = load double, ptr %n27, align 8, !tbaa !27
  %43 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a128 = getelementptr inbounds %struct.PJconsts, ptr %43, i32 0, i32 51
  %44 = load double, ptr %a128, align 8, !tbaa !33
  %mul29 = fmul double %42, %44
  %45 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a230 = getelementptr inbounds %struct.PJconsts, ptr %45, i32 0, i32 56
  %46 = load double, ptr %a230, align 8, !tbaa !34
  %47 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t31 = getelementptr inbounds %struct.PJconsts, ptr %47, i32 0, i32 50
  %48 = load double, ptr %t31, align 8, !tbaa !26
  %mul32 = fmul double %46, %48
  %49 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t33 = getelementptr inbounds %struct.PJconsts, ptr %49, i32 0, i32 50
  %50 = load double, ptr %t33, align 8, !tbaa !26
  %sub34 = fsub double 8.000000e+00, %50
  %51 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %c35 = getelementptr inbounds %struct.PJconsts, ptr %51, i32 0, i32 52
  %52 = load double, ptr %c35, align 8, !tbaa !32
  %53 = call double @llvm.fmuladd.f64(double 8.000000e+00, double %52, double %sub34)
  %54 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a237 = getelementptr inbounds %struct.PJconsts, ptr %54, i32 0, i32 56
  %55 = load double, ptr %a237, align 8, !tbaa !34
  %mul38 = fmul double %53, %55
  %neg40 = fneg double %mul38
  %56 = call double @llvm.fmuladd.f64(double %neg40, double 0x3F81111111111111, double 0x3FC5555555555555)
  %neg42 = fneg double %mul32
  %57 = call double @llvm.fmuladd.f64(double %neg42, double %56, double 1.000000e+00)
  %mul43 = fmul double %mul29, %57
  %x = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %mul43, ptr %x, align 8, !tbaa !29
  %58 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %m0 = getelementptr inbounds %struct.PJconsts, ptr %58, i32 0, i32 48
  %59 = load double, ptr %m0, align 8, !tbaa !20
  %60 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %n44 = getelementptr inbounds %struct.PJconsts, ptr %60, i32 0, i32 49
  %61 = load double, ptr %n44, align 8, !tbaa !27
  %62 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tn45 = getelementptr inbounds %struct.PJconsts, ptr %62, i32 0, i32 57
  %63 = load double, ptr %tn45, align 8, !tbaa !25
  %mul46 = fmul double %61, %63
  %64 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a247 = getelementptr inbounds %struct.PJconsts, ptr %64, i32 0, i32 56
  %65 = load double, ptr %a247, align 8, !tbaa !34
  %mul48 = fmul double %mul46, %65
  %66 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %t49 = getelementptr inbounds %struct.PJconsts, ptr %66, i32 0, i32 50
  %67 = load double, ptr %t49, align 8, !tbaa !26
  %sub50 = fsub double 5.000000e+00, %67
  %68 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %c51 = getelementptr inbounds %struct.PJconsts, ptr %68, i32 0, i32 52
  %69 = load double, ptr %c51, align 8, !tbaa !32
  %70 = call double @llvm.fmuladd.f64(double 6.000000e+00, double %69, double %sub50)
  %71 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %a253 = getelementptr inbounds %struct.PJconsts, ptr %71, i32 0, i32 56
  %72 = load double, ptr %a253, align 8, !tbaa !34
  %mul54 = fmul double %70, %72
  %73 = call double @llvm.fmuladd.f64(double %mul54, double 0x3FA5555555555555, double 5.000000e-01)
  %neg57 = fneg double %mul48
  %74 = call double @llvm.fmuladd.f64(double %neg57, double %73, double %59)
  %y58 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %75 = load double, ptr %y58, align 8, !tbaa !22
  %sub59 = fsub double %75, %74
  store double %sub59, ptr %y58, align 8, !tbaa !22
  %76 = load { double, double }, ptr %retval, align 8
  ret { double, double } %76
}

; Function Attrs: nounwind uwtable
define internal { double, double } @s_inverse(double %xy.coerce0, double %xy.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.LP, align 8
  %xy = alloca %struct.XY, align 8
  %P.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 0
  store double %xy.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %xy, i32 0, i32 1
  store double %xy.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  %y = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 1
  %2 = load double, ptr %y, align 8, !tbaa !22
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 20
  %4 = load double, ptr %phi0, align 8, !tbaa !19
  %add = fadd double %2, %4
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %dd = getelementptr inbounds %struct.PJconsts, ptr %5, i32 0, i32 54
  store double %add, ptr %dd, align 8, !tbaa !30
  %call = call double @sin(double noundef %add) #6
  %x = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %6 = load double, ptr %x, align 8, !tbaa !29
  %call1 = call double @cos(double noundef %6) #6
  %mul = fmul double %call, %call1
  %call2 = call double @asin(double noundef %mul) #6
  %phi = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 1
  store double %call2, ptr %phi, align 8, !tbaa !22
  %x3 = getelementptr inbounds %struct.XY, ptr %xy, i32 0, i32 0
  %7 = load double, ptr %x3, align 8, !tbaa !29
  %call4 = call double @tan(double noundef %7) #6
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %dd5 = getelementptr inbounds %struct.PJconsts, ptr %8, i32 0, i32 54
  %9 = load double, ptr %dd5, align 8, !tbaa !30
  %call6 = call double @cos(double noundef %9) #6
  %call7 = call double @atan2(double noundef %call4, double noundef %call6) #6
  %lam = getelementptr inbounds %struct.LP, ptr %retval, i32 0, i32 0
  store double %call7, ptr %lam, align 8, !tbaa !29
  %10 = load { double, double }, ptr %retval, align 8
  ret { double, double } %10
}

; Function Attrs: nounwind uwtable
define internal { double, double } @s_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.XY, align 8
  %lp = alloca %struct.LP, align 8
  %P.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 0
  store double %lp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 1
  store double %lp.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  %phi = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %2 = load double, ptr %phi, align 8, !tbaa !22
  %call = call double @cos(double noundef %2) #6
  %lam = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %3 = load double, ptr %lam, align 8, !tbaa !29
  %call1 = call double @sin(double noundef %3) #6
  %mul = fmul double %call, %call1
  %call2 = call double @asin(double noundef %mul) #6
  %x = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  store double %call2, ptr %x, align 8, !tbaa !29
  %phi3 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %4 = load double, ptr %phi3, align 8, !tbaa !22
  %call4 = call double @tan(double noundef %4) #6
  %lam5 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %5 = load double, ptr %lam5, align 8, !tbaa !29
  %call6 = call double @cos(double noundef %5) #6
  %call7 = call double @atan2(double noundef %call4, double noundef %call6) #6
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %phi0 = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 20
  %7 = load double, ptr %phi0, align 8, !tbaa !19
  %sub = fsub double %call7, %7
  %y = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  store double %sub, ptr %y, align 8, !tbaa !22
  %8 = load { double, double }, ptr %retval, align 8
  ret { double, double } %8
}

declare void @vtk_pj_dalloc(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare double @vtk_pj_inv_mlfn(ptr noundef, double noundef, double noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @tan(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare double @asin(double noundef) #3

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!8 = !{!9, !5, i64 32}
!9 = !{!"PJconsts", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !10, i64 192, !6, i64 200, !5, i64 256, !10, i64 264, !10, i64 268, !5, i64 272, !10, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !10, i64 320, !6, i64 324, !5, i64 328, !5, i64 336, !11, i64 344, !5, i64 352, !12, i64 360, !11, i64 392, !5, i64 400, !12, i64 408, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !11, i64 512, !11, i64 520, !5, i64 528}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!9, !5, i64 8}
!14 = !{!9, !5, i64 16}
!15 = !{!9, !5, i64 24}
!16 = !{!9, !5, i64 40}
!17 = !{!9, !5, i64 528}
!18 = !{!9, !11, i64 88}
!19 = !{!9, !11, i64 144}
!20 = !{!9, !11, i64 448}
!21 = !{!9, !5, i64 0}
!22 = !{!23, !11, i64 8}
!23 = !{!"", !11, i64 0, !11, i64 8}
!24 = !{!11, !11, i64 0}
!25 = !{!9, !11, i64 520}
!26 = !{!9, !11, i64 464}
!27 = !{!9, !11, i64 456}
!28 = !{!9, !11, i64 488}
!29 = !{!23, !11, i64 0}
!30 = !{!9, !11, i64 496}
!31 = !{!9, !11, i64 504}
!32 = !{!9, !11, i64 480}
!33 = !{!9, !11, i64 472}
!34 = !{!9, !11, i64 512}

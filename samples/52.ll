; ModuleID = 'samples/52.bc'
source_filename = "/local-ssd/openfast-jyecdcw5d7ykfobs75kvuascn5hnbej3-build/aidengro/spack-stage-openfast-3.4.1-jyecdcw5d7ykfobs75kvuascn5hnbej3/spack-src/modules/map/src/jacobian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Domain_t = type { %struct.InnerSolveAttributes_t, %struct.OuterSolveAttributes_t, %struct.DomainOptions_t, ptr, i32, %struct.Vessel_t, %struct.list_t, %struct.list_t, %struct.list_t, %struct.list_t, ptr }
%struct.InnerSolveAttributes_t = type { ptr, double, double, double, [2 x double], [2 x double], [4 x double], [2 x double], [2 x double], [2 x double], [2 x double], [2 x double], [2 x double], double, i32, i32, i32, i32, i32, [2 x i32], i32, i32 }
%struct.OuterSolveAttributes_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, double, double, double, double, double, i8, i8, i8, i32, i32, i32 }
%struct.DomainOptions_t = type { ptr, double, double, double, i8, i8, i32 }
%struct.Vessel_t = type { %struct.EulerAngle_t, ptr, ptr, ptr, %struct.Point_t, %struct.Point_t, %struct.Force_t }
%struct.EulerAngle_t = type { %struct.VarType_t, %struct.VarType_t, %struct.VarType_t }
%struct.VarType_t = type { ptr, ptr, double, i8, i8, i32, i32 }
%struct.Point_t = type { %struct.VarType_t, %struct.VarType_t, %struct.VarType_t }
%struct.Force_t = type { %struct.VarType_t, %struct.VarType_t, %struct.VarType_t }
%struct.list_t = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_attributes_s }
%struct.list_attributes_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.MAP_ConstraintStateType = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.MAP_OtherStateType = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Forward difference, x[%d]+delta, row %d, col %d.\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Backward difference, x[%d]+delta, row %d, col %d.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Central difference, x[%d]+delta, row %d, col %d.\00", align 1

; Function Attrs: nounwind uwtable
define double @jacobian_dxdh_no_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA) #0 {
entry:
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  %0 = load double, ptr %V.addr, align 8, !tbaa !4
  %1 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %0, %1
  %2 = load double, ptr %V.addr, align 8, !tbaa !4
  %3 = load double, ptr %H.addr, align 8, !tbaa !4
  %div1 = fdiv double %2, %3
  %4 = load double, ptr %V.addr, align 8, !tbaa !4
  %mul = fmul double %div1, %4
  %5 = load double, ptr %H.addr, align 8, !tbaa !4
  %div2 = fdiv double %mul, %5
  %add = fadd double 1.000000e+00, %div2
  %call = call double @sqrt(double noundef %add) #5
  %add3 = fadd double %div, %call
  %call4 = call double @log(double noundef %add3) #5
  %6 = load double, ptr %V.addr, align 8, !tbaa !4
  %7 = load double, ptr %w.addr, align 8, !tbaa !4
  %8 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %7
  %9 = call double @llvm.fmuladd.f64(double %neg, double %8, double %6)
  %10 = load double, ptr %H.addr, align 8, !tbaa !4
  %div6 = fdiv double %9, %10
  %11 = load double, ptr %V.addr, align 8, !tbaa !4
  %12 = load double, ptr %w.addr, align 8, !tbaa !4
  %13 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg8 = fneg double %12
  %14 = call double @llvm.fmuladd.f64(double %neg8, double %13, double %11)
  %15 = load double, ptr %H.addr, align 8, !tbaa !4
  %div9 = fdiv double %14, %15
  %16 = load double, ptr %V.addr, align 8, !tbaa !4
  %17 = load double, ptr %w.addr, align 8, !tbaa !4
  %18 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg11 = fneg double %17
  %19 = call double @llvm.fmuladd.f64(double %neg11, double %18, double %16)
  %mul12 = fmul double %div9, %19
  %20 = load double, ptr %H.addr, align 8, !tbaa !4
  %div13 = fdiv double %mul12, %20
  %add14 = fadd double 1.000000e+00, %div13
  %call15 = call double @sqrt(double noundef %add14) #5
  %add16 = fadd double %div6, %call15
  %call17 = call double @log(double noundef %add16) #5
  %sub = fsub double %call4, %call17
  %21 = load double, ptr %w.addr, align 8, !tbaa !4
  %div18 = fdiv double %sub, %21
  %22 = load double, ptr %V.addr, align 8, !tbaa !4
  %23 = load double, ptr %H.addr, align 8, !tbaa !4
  %div19 = fdiv double %22, %23
  %24 = load double, ptr %V.addr, align 8, !tbaa !4
  %25 = load double, ptr %H.addr, align 8, !tbaa !4
  %div20 = fdiv double %24, %25
  %call21 = call double @pow(double noundef %div20, double noundef 2.000000e+00) #5
  %26 = load double, ptr %V.addr, align 8, !tbaa !4
  %27 = load double, ptr %H.addr, align 8, !tbaa !4
  %div22 = fdiv double %26, %27
  %call23 = call double @pow(double noundef %div22, double noundef 2.000000e+00) #5
  %add24 = fadd double 1.000000e+00, %call23
  %call25 = call double @sqrt(double noundef %add24) #5
  %div26 = fdiv double %call21, %call25
  %add27 = fadd double %div19, %div26
  %28 = load double, ptr %V.addr, align 8, !tbaa !4
  %29 = load double, ptr %H.addr, align 8, !tbaa !4
  %div28 = fdiv double %28, %29
  %30 = load double, ptr %V.addr, align 8, !tbaa !4
  %31 = load double, ptr %H.addr, align 8, !tbaa !4
  %div29 = fdiv double %30, %31
  %call30 = call double @pow(double noundef %div29, double noundef 2.000000e+00) #5
  %add31 = fadd double 1.000000e+00, %call30
  %call32 = call double @sqrt(double noundef %add31) #5
  %add33 = fadd double %div28, %call32
  %div34 = fdiv double %add27, %add33
  %32 = load double, ptr %V.addr, align 8, !tbaa !4
  %33 = load double, ptr %w.addr, align 8, !tbaa !4
  %34 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg36 = fneg double %33
  %35 = call double @llvm.fmuladd.f64(double %neg36, double %34, double %32)
  %36 = load double, ptr %H.addr, align 8, !tbaa !4
  %div37 = fdiv double %35, %36
  %37 = load double, ptr %V.addr, align 8, !tbaa !4
  %38 = load double, ptr %w.addr, align 8, !tbaa !4
  %39 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg39 = fneg double %38
  %40 = call double @llvm.fmuladd.f64(double %neg39, double %39, double %37)
  %41 = load double, ptr %H.addr, align 8, !tbaa !4
  %div40 = fdiv double %40, %41
  %call41 = call double @pow(double noundef %div40, double noundef 2.000000e+00) #5
  %42 = load double, ptr %V.addr, align 8, !tbaa !4
  %43 = load double, ptr %w.addr, align 8, !tbaa !4
  %44 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg43 = fneg double %43
  %45 = call double @llvm.fmuladd.f64(double %neg43, double %44, double %42)
  %46 = load double, ptr %H.addr, align 8, !tbaa !4
  %div44 = fdiv double %45, %46
  %call45 = call double @pow(double noundef %div44, double noundef 2.000000e+00) #5
  %add46 = fadd double 1.000000e+00, %call45
  %call47 = call double @sqrt(double noundef %add46) #5
  %div48 = fdiv double %call41, %call47
  %add49 = fadd double %div37, %div48
  %47 = load double, ptr %V.addr, align 8, !tbaa !4
  %48 = load double, ptr %w.addr, align 8, !tbaa !4
  %49 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg51 = fneg double %48
  %50 = call double @llvm.fmuladd.f64(double %neg51, double %49, double %47)
  %51 = load double, ptr %H.addr, align 8, !tbaa !4
  %div52 = fdiv double %50, %51
  %52 = load double, ptr %V.addr, align 8, !tbaa !4
  %53 = load double, ptr %w.addr, align 8, !tbaa !4
  %54 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg54 = fneg double %53
  %55 = call double @llvm.fmuladd.f64(double %neg54, double %54, double %52)
  %56 = load double, ptr %H.addr, align 8, !tbaa !4
  %div55 = fdiv double %55, %56
  %call56 = call double @pow(double noundef %div55, double noundef 2.000000e+00) #5
  %add57 = fadd double 1.000000e+00, %call56
  %call58 = call double @sqrt(double noundef %add57) #5
  %add59 = fadd double %div52, %call58
  %div60 = fdiv double %add49, %add59
  %sub61 = fsub double %div34, %div60
  %57 = load double, ptr %w.addr, align 8, !tbaa !4
  %div62 = fdiv double %sub61, %57
  %sub63 = fsub double %div18, %div62
  %58 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %59 = load double, ptr %EA.addr, align 8, !tbaa !4
  %div64 = fdiv double %58, %59
  %add65 = fadd double %sub63, %div64
  ret double %add65
}

; Function Attrs: nounwind
declare double @log(double noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define double @jacobian_dxdv_no_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA) #0 {
entry:
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  %0 = load double, ptr %V.addr, align 8, !tbaa !4
  %1 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %0, %1
  %2 = load double, ptr %V.addr, align 8, !tbaa !4
  %3 = load double, ptr %H.addr, align 8, !tbaa !4
  %div1 = fdiv double %2, %3
  %call = call double @pow(double noundef %div1, double noundef 2.000000e+00) #5
  %add = fadd double 1.000000e+00, %call
  %call2 = call double @sqrt(double noundef %add) #5
  %div3 = fdiv double %div, %call2
  %add4 = fadd double 1.000000e+00, %div3
  %4 = load double, ptr %V.addr, align 8, !tbaa !4
  %5 = load double, ptr %H.addr, align 8, !tbaa !4
  %div5 = fdiv double %4, %5
  %6 = load double, ptr %V.addr, align 8, !tbaa !4
  %7 = load double, ptr %H.addr, align 8, !tbaa !4
  %div6 = fdiv double %6, %7
  %call7 = call double @pow(double noundef %div6, double noundef 2.000000e+00) #5
  %add8 = fadd double 1.000000e+00, %call7
  %call9 = call double @sqrt(double noundef %add8) #5
  %add10 = fadd double %div5, %call9
  %div11 = fdiv double %add4, %add10
  %8 = load double, ptr %V.addr, align 8, !tbaa !4
  %9 = load double, ptr %w.addr, align 8, !tbaa !4
  %10 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %9
  %11 = call double @llvm.fmuladd.f64(double %neg, double %10, double %8)
  %12 = load double, ptr %H.addr, align 8, !tbaa !4
  %div12 = fdiv double %11, %12
  %13 = load double, ptr %V.addr, align 8, !tbaa !4
  %14 = load double, ptr %w.addr, align 8, !tbaa !4
  %15 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg13 = fneg double %14
  %16 = call double @llvm.fmuladd.f64(double %neg13, double %15, double %13)
  %17 = load double, ptr %H.addr, align 8, !tbaa !4
  %div14 = fdiv double %16, %17
  %call15 = call double @pow(double noundef %div14, double noundef 2.000000e+00) #5
  %add16 = fadd double 1.000000e+00, %call15
  %call17 = call double @sqrt(double noundef %add16) #5
  %div18 = fdiv double %div12, %call17
  %add19 = fadd double 1.000000e+00, %div18
  %18 = load double, ptr %V.addr, align 8, !tbaa !4
  %19 = load double, ptr %w.addr, align 8, !tbaa !4
  %20 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg20 = fneg double %19
  %21 = call double @llvm.fmuladd.f64(double %neg20, double %20, double %18)
  %22 = load double, ptr %H.addr, align 8, !tbaa !4
  %div21 = fdiv double %21, %22
  %23 = load double, ptr %V.addr, align 8, !tbaa !4
  %24 = load double, ptr %w.addr, align 8, !tbaa !4
  %25 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg22 = fneg double %24
  %26 = call double @llvm.fmuladd.f64(double %neg22, double %25, double %23)
  %27 = load double, ptr %H.addr, align 8, !tbaa !4
  %div23 = fdiv double %26, %27
  %call24 = call double @pow(double noundef %div23, double noundef 2.000000e+00) #5
  %add25 = fadd double 1.000000e+00, %call24
  %call26 = call double @sqrt(double noundef %add25) #5
  %add27 = fadd double %div21, %call26
  %div28 = fdiv double %add19, %add27
  %sub = fsub double %div11, %div28
  %28 = load double, ptr %w.addr, align 8, !tbaa !4
  %div29 = fdiv double %sub, %28
  ret double %div29
}

; Function Attrs: nounwind uwtable
define double @jacobian_dzdh_no_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA) #0 {
entry:
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  %0 = load double, ptr %V.addr, align 8, !tbaa !4
  %1 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %0, %1
  %call = call double @pow(double noundef %div, double noundef 2.000000e+00) #5
  %add = fadd double 1.000000e+00, %call
  %call1 = call double @sqrt(double noundef %add) #5
  %2 = load double, ptr %V.addr, align 8, !tbaa !4
  %3 = load double, ptr %w.addr, align 8, !tbaa !4
  %4 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %3
  %5 = call double @llvm.fmuladd.f64(double %neg, double %4, double %2)
  %6 = load double, ptr %H.addr, align 8, !tbaa !4
  %div2 = fdiv double %5, %6
  %call3 = call double @pow(double noundef %div2, double noundef 2.000000e+00) #5
  %add4 = fadd double 1.000000e+00, %call3
  %call5 = call double @sqrt(double noundef %add4) #5
  %sub = fsub double %call1, %call5
  %7 = load double, ptr %w.addr, align 8, !tbaa !4
  %div6 = fdiv double %sub, %7
  %8 = load double, ptr %V.addr, align 8, !tbaa !4
  %9 = load double, ptr %H.addr, align 8, !tbaa !4
  %div7 = fdiv double %8, %9
  %call8 = call double @pow(double noundef %div7, double noundef 2.000000e+00) #5
  %10 = load double, ptr %V.addr, align 8, !tbaa !4
  %11 = load double, ptr %H.addr, align 8, !tbaa !4
  %div9 = fdiv double %10, %11
  %call10 = call double @pow(double noundef %div9, double noundef 2.000000e+00) #5
  %add11 = fadd double 1.000000e+00, %call10
  %call12 = call double @sqrt(double noundef %add11) #5
  %div13 = fdiv double %call8, %call12
  %12 = load double, ptr %V.addr, align 8, !tbaa !4
  %13 = load double, ptr %w.addr, align 8, !tbaa !4
  %14 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg14 = fneg double %13
  %15 = call double @llvm.fmuladd.f64(double %neg14, double %14, double %12)
  %16 = load double, ptr %H.addr, align 8, !tbaa !4
  %div15 = fdiv double %15, %16
  %call16 = call double @pow(double noundef %div15, double noundef 2.000000e+00) #5
  %17 = load double, ptr %V.addr, align 8, !tbaa !4
  %18 = load double, ptr %w.addr, align 8, !tbaa !4
  %19 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg17 = fneg double %18
  %20 = call double @llvm.fmuladd.f64(double %neg17, double %19, double %17)
  %21 = load double, ptr %H.addr, align 8, !tbaa !4
  %div18 = fdiv double %20, %21
  %call19 = call double @pow(double noundef %div18, double noundef 2.000000e+00) #5
  %add20 = fadd double 1.000000e+00, %call19
  %call21 = call double @sqrt(double noundef %add20) #5
  %div22 = fdiv double %call16, %call21
  %sub23 = fsub double %div13, %div22
  %22 = load double, ptr %w.addr, align 8, !tbaa !4
  %div24 = fdiv double %sub23, %22
  %sub25 = fsub double %div6, %div24
  ret double %sub25
}

; Function Attrs: nounwind uwtable
define double @jacobian_dzdv_no_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA) #0 {
entry:
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  %0 = load double, ptr %V.addr, align 8, !tbaa !4
  %1 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %0, %1
  %2 = load double, ptr %V.addr, align 8, !tbaa !4
  %3 = load double, ptr %H.addr, align 8, !tbaa !4
  %div1 = fdiv double %2, %3
  %call = call double @pow(double noundef %div1, double noundef 2.000000e+00) #5
  %add = fadd double 1.000000e+00, %call
  %call2 = call double @sqrt(double noundef %add) #5
  %div3 = fdiv double %div, %call2
  %4 = load double, ptr %V.addr, align 8, !tbaa !4
  %5 = load double, ptr %w.addr, align 8, !tbaa !4
  %6 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %5
  %7 = call double @llvm.fmuladd.f64(double %neg, double %6, double %4)
  %8 = load double, ptr %H.addr, align 8, !tbaa !4
  %div4 = fdiv double %7, %8
  %9 = load double, ptr %V.addr, align 8, !tbaa !4
  %10 = load double, ptr %w.addr, align 8, !tbaa !4
  %11 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg5 = fneg double %10
  %12 = call double @llvm.fmuladd.f64(double %neg5, double %11, double %9)
  %13 = load double, ptr %H.addr, align 8, !tbaa !4
  %div6 = fdiv double %12, %13
  %call7 = call double @pow(double noundef %div6, double noundef 2.000000e+00) #5
  %add8 = fadd double 1.000000e+00, %call7
  %call9 = call double @sqrt(double noundef %add8) #5
  %div10 = fdiv double %div4, %call9
  %sub = fsub double %div3, %div10
  %14 = load double, ptr %w.addr, align 8, !tbaa !4
  %div11 = fdiv double %sub, %14
  %15 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %16 = load double, ptr %EA.addr, align 8, !tbaa !4
  %div12 = fdiv double %15, %16
  %add13 = fadd double %div11, %div12
  ret double %add13
}

; Function Attrs: nounwind uwtable
define double @jacobian_dxdh_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA, double noundef %cb) #0 {
entry:
  %retval = alloca double, align 8
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  %cb.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  store double %cb, ptr %cb.addr, align 8, !tbaa !4
  %0 = load double, ptr %cb.addr, align 8, !tbaa !4
  %fneg = fneg double %0
  %1 = load double, ptr %V.addr, align 8, !tbaa !4
  %2 = load double, ptr %w.addr, align 8, !tbaa !4
  %3 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %2
  %4 = call double @llvm.fmuladd.f64(double %neg, double %3, double %1)
  %mul = fmul double %fneg, %4
  %5 = load double, ptr %H.addr, align 8, !tbaa !4
  %cmp = fcmp olt double %mul, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, ptr %V.addr, align 8, !tbaa !4
  %7 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %6, %7
  %8 = load double, ptr %V.addr, align 8, !tbaa !4
  %9 = load double, ptr %H.addr, align 8, !tbaa !4
  %div1 = fdiv double %8, %9
  %call = call double @pow(double noundef %div1, double noundef 2.000000e+00) #5
  %add = fadd double 1.000000e+00, %call
  %call2 = call double @sqrt(double noundef %add) #5
  %add3 = fadd double %div, %call2
  %call4 = call double @log(double noundef %add3) #5
  %10 = load double, ptr %w.addr, align 8, !tbaa !4
  %div5 = fdiv double %call4, %10
  %11 = load double, ptr %V.addr, align 8, !tbaa !4
  %12 = load double, ptr %H.addr, align 8, !tbaa !4
  %div6 = fdiv double %11, %12
  %13 = load double, ptr %V.addr, align 8, !tbaa !4
  %14 = load double, ptr %H.addr, align 8, !tbaa !4
  %div7 = fdiv double %13, %14
  %15 = load double, ptr %V.addr, align 8, !tbaa !4
  %16 = load double, ptr %H.addr, align 8, !tbaa !4
  %div8 = fdiv double %15, %16
  %mul9 = fmul double %div7, %div8
  %17 = load double, ptr %V.addr, align 8, !tbaa !4
  %18 = load double, ptr %H.addr, align 8, !tbaa !4
  %div10 = fdiv double %17, %18
  %call11 = call double @pow(double noundef %div10, double noundef 2.000000e+00) #5
  %add12 = fadd double 1.000000e+00, %call11
  %call13 = call double @sqrt(double noundef %add12) #5
  %div14 = fdiv double %mul9, %call13
  %add15 = fadd double %div6, %div14
  %19 = load double, ptr %V.addr, align 8, !tbaa !4
  %20 = load double, ptr %H.addr, align 8, !tbaa !4
  %div16 = fdiv double %19, %20
  %21 = load double, ptr %V.addr, align 8, !tbaa !4
  %22 = load double, ptr %H.addr, align 8, !tbaa !4
  %div17 = fdiv double %21, %22
  %call18 = call double @pow(double noundef %div17, double noundef 2.000000e+00) #5
  %add19 = fadd double 1.000000e+00, %call18
  %call20 = call double @sqrt(double noundef %add19) #5
  %add21 = fadd double %div16, %call20
  %div22 = fdiv double %add15, %add21
  %23 = load double, ptr %w.addr, align 8, !tbaa !4
  %div23 = fdiv double %div22, %23
  %sub = fsub double %div5, %div23
  %24 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %25 = load double, ptr %EA.addr, align 8, !tbaa !4
  %div24 = fdiv double %24, %25
  %add25 = fadd double %sub, %div24
  store double %add25, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %26 = load double, ptr %V.addr, align 8, !tbaa !4
  %27 = load double, ptr %H.addr, align 8, !tbaa !4
  %div26 = fdiv double %26, %27
  %28 = load double, ptr %V.addr, align 8, !tbaa !4
  %29 = load double, ptr %H.addr, align 8, !tbaa !4
  %div27 = fdiv double %28, %29
  %call28 = call double @pow(double noundef %div27, double noundef 2.000000e+00) #5
  %add29 = fadd double 1.000000e+00, %call28
  %call30 = call double @sqrt(double noundef %add29) #5
  %add31 = fadd double %div26, %call30
  %call32 = call double @log(double noundef %add31) #5
  %30 = load double, ptr %w.addr, align 8, !tbaa !4
  %div33 = fdiv double %call32, %30
  %31 = load double, ptr %V.addr, align 8, !tbaa !4
  %32 = load double, ptr %H.addr, align 8, !tbaa !4
  %div34 = fdiv double %31, %32
  %33 = load double, ptr %V.addr, align 8, !tbaa !4
  %34 = load double, ptr %H.addr, align 8, !tbaa !4
  %div35 = fdiv double %33, %34
  %35 = load double, ptr %V.addr, align 8, !tbaa !4
  %36 = load double, ptr %H.addr, align 8, !tbaa !4
  %div36 = fdiv double %35, %36
  %mul37 = fmul double %div35, %div36
  %37 = load double, ptr %V.addr, align 8, !tbaa !4
  %38 = load double, ptr %H.addr, align 8, !tbaa !4
  %div38 = fdiv double %37, %38
  %call39 = call double @pow(double noundef %div38, double noundef 2.000000e+00) #5
  %add40 = fadd double 1.000000e+00, %call39
  %call41 = call double @sqrt(double noundef %add40) #5
  %div42 = fdiv double %mul37, %call41
  %add43 = fadd double %div34, %div42
  %39 = load double, ptr %V.addr, align 8, !tbaa !4
  %40 = load double, ptr %H.addr, align 8, !tbaa !4
  %div44 = fdiv double %39, %40
  %41 = load double, ptr %V.addr, align 8, !tbaa !4
  %42 = load double, ptr %H.addr, align 8, !tbaa !4
  %div45 = fdiv double %41, %42
  %call46 = call double @pow(double noundef %div45, double noundef 2.000000e+00) #5
  %add47 = fadd double 1.000000e+00, %call46
  %call48 = call double @sqrt(double noundef %add47) #5
  %add49 = fadd double %div44, %call48
  %div50 = fdiv double %add43, %add49
  %43 = load double, ptr %w.addr, align 8, !tbaa !4
  %div51 = fdiv double %div50, %43
  %sub52 = fsub double %div33, %div51
  %44 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %45 = load double, ptr %EA.addr, align 8, !tbaa !4
  %div53 = fdiv double %44, %45
  %add54 = fadd double %sub52, %div53
  %46 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %47 = load double, ptr %V.addr, align 8, !tbaa !4
  %48 = load double, ptr %w.addr, align 8, !tbaa !4
  %div55 = fdiv double %47, %48
  %sub56 = fsub double %46, %div55
  %49 = load double, ptr %H.addr, align 8, !tbaa !4
  %50 = load double, ptr %w.addr, align 8, !tbaa !4
  %div57 = fdiv double %49, %50
  %51 = load double, ptr %cb.addr, align 8, !tbaa !4
  %div58 = fdiv double %div57, %51
  %sub59 = fsub double %sub56, %div58
  %52 = load double, ptr %EA.addr, align 8, !tbaa !4
  %div60 = fdiv double %sub59, %52
  %sub61 = fsub double %add54, %div60
  store double %sub61, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %53 = load double, ptr %retval, align 8
  ret double %53
}

; Function Attrs: nounwind uwtable
define double @jacobian_dxdv_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA, double noundef %cb) #0 {
entry:
  %retval = alloca double, align 8
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  %cb.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  store double %cb, ptr %cb.addr, align 8, !tbaa !4
  %0 = load double, ptr %cb.addr, align 8, !tbaa !4
  %fneg = fneg double %0
  %1 = load double, ptr %V.addr, align 8, !tbaa !4
  %2 = load double, ptr %w.addr, align 8, !tbaa !4
  %3 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %2
  %4 = call double @llvm.fmuladd.f64(double %neg, double %3, double %1)
  %mul = fmul double %fneg, %4
  %5 = load double, ptr %H.addr, align 8, !tbaa !4
  %cmp = fcmp olt double %mul, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, ptr %V.addr, align 8, !tbaa !4
  %7 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %6, %7
  %8 = load double, ptr %V.addr, align 8, !tbaa !4
  %9 = load double, ptr %H.addr, align 8, !tbaa !4
  %div1 = fdiv double %8, %9
  %call = call double @pow(double noundef %div1, double noundef 2.000000e+00) #5
  %add = fadd double 1.000000e+00, %call
  %call2 = call double @sqrt(double noundef %add) #5
  %div3 = fdiv double %div, %call2
  %add4 = fadd double 1.000000e+00, %div3
  %10 = load double, ptr %V.addr, align 8, !tbaa !4
  %11 = load double, ptr %H.addr, align 8, !tbaa !4
  %div5 = fdiv double %10, %11
  %12 = load double, ptr %V.addr, align 8, !tbaa !4
  %13 = load double, ptr %H.addr, align 8, !tbaa !4
  %div6 = fdiv double %12, %13
  %call7 = call double @pow(double noundef %div6, double noundef 2.000000e+00) #5
  %add8 = fadd double 1.000000e+00, %call7
  %call9 = call double @sqrt(double noundef %add8) #5
  %add10 = fadd double %div5, %call9
  %div11 = fdiv double %add4, %add10
  %14 = load double, ptr %w.addr, align 8, !tbaa !4
  %div12 = fdiv double %div11, %14
  %15 = load double, ptr %cb.addr, align 8, !tbaa !4
  %16 = load double, ptr %EA.addr, align 8, !tbaa !4
  %div13 = fdiv double %15, %16
  %17 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %18 = load double, ptr %V.addr, align 8, !tbaa !4
  %19 = load double, ptr %w.addr, align 8, !tbaa !4
  %div14 = fdiv double %18, %19
  %sub = fsub double %17, %div14
  %20 = call double @llvm.fmuladd.f64(double %div13, double %sub, double %div12)
  %21 = load double, ptr %w.addr, align 8, !tbaa !4
  %div16 = fdiv double 1.000000e+00, %21
  %sub17 = fsub double %20, %div16
  store double %sub17, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %22 = load double, ptr %V.addr, align 8, !tbaa !4
  %23 = load double, ptr %H.addr, align 8, !tbaa !4
  %div18 = fdiv double %22, %23
  %24 = load double, ptr %V.addr, align 8, !tbaa !4
  %25 = load double, ptr %H.addr, align 8, !tbaa !4
  %div19 = fdiv double %24, %25
  %call20 = call double @pow(double noundef %div19, double noundef 2.000000e+00) #5
  %add21 = fadd double 1.000000e+00, %call20
  %call22 = call double @sqrt(double noundef %add21) #5
  %div23 = fdiv double %div18, %call22
  %add24 = fadd double 1.000000e+00, %div23
  %26 = load double, ptr %V.addr, align 8, !tbaa !4
  %27 = load double, ptr %H.addr, align 8, !tbaa !4
  %div25 = fdiv double %26, %27
  %28 = load double, ptr %V.addr, align 8, !tbaa !4
  %29 = load double, ptr %H.addr, align 8, !tbaa !4
  %div26 = fdiv double %28, %29
  %call27 = call double @pow(double noundef %div26, double noundef 2.000000e+00) #5
  %add28 = fadd double 1.000000e+00, %call27
  %call29 = call double @sqrt(double noundef %add28) #5
  %add30 = fadd double %div25, %call29
  %div31 = fdiv double %add24, %add30
  %30 = load double, ptr %w.addr, align 8, !tbaa !4
  %div32 = fdiv double %div31, %30
  %31 = load double, ptr %H.addr, align 8, !tbaa !4
  %32 = load double, ptr %w.addr, align 8, !tbaa !4
  %33 = load double, ptr %EA.addr, align 8, !tbaa !4
  %mul33 = fmul double %32, %33
  %div34 = fdiv double %31, %mul33
  %add35 = fadd double %div32, %div34
  %34 = load double, ptr %w.addr, align 8, !tbaa !4
  %div36 = fdiv double 1.000000e+00, %34
  %sub37 = fsub double %add35, %div36
  store double %sub37, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %35 = load double, ptr %retval, align 8
  ret double %35
}

; Function Attrs: nounwind uwtable
define double @jacobian_dzdh_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA, double noundef %cb) #0 {
entry:
  %retval = alloca double, align 8
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  %cb.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  store double %cb, ptr %cb.addr, align 8, !tbaa !4
  %0 = load double, ptr %cb.addr, align 8, !tbaa !4
  %fneg = fneg double %0
  %1 = load double, ptr %V.addr, align 8, !tbaa !4
  %2 = load double, ptr %w.addr, align 8, !tbaa !4
  %3 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %2
  %4 = call double @llvm.fmuladd.f64(double %neg, double %3, double %1)
  %mul = fmul double %fneg, %4
  %5 = load double, ptr %H.addr, align 8, !tbaa !4
  %cmp = fcmp olt double %mul, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, ptr %V.addr, align 8, !tbaa !4
  %7 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %6, %7
  %call = call double @pow(double noundef %div, double noundef 2.000000e+00) #5
  %add = fadd double 1.000000e+00, %call
  %call1 = call double @sqrt(double noundef %add) #5
  %sub = fsub double %call1, 1.000000e+00
  %8 = load double, ptr %V.addr, align 8, !tbaa !4
  %9 = load double, ptr %H.addr, align 8, !tbaa !4
  %div2 = fdiv double %8, %9
  %10 = load double, ptr %V.addr, align 8, !tbaa !4
  %11 = load double, ptr %H.addr, align 8, !tbaa !4
  %div3 = fdiv double %10, %11
  %mul4 = fmul double %div2, %div3
  %12 = load double, ptr %V.addr, align 8, !tbaa !4
  %13 = load double, ptr %H.addr, align 8, !tbaa !4
  %div5 = fdiv double %12, %13
  %call6 = call double @pow(double noundef %div5, double noundef 2.000000e+00) #5
  %add7 = fadd double 1.000000e+00, %call6
  %call8 = call double @sqrt(double noundef %add7) #5
  %div9 = fdiv double %mul4, %call8
  %sub10 = fsub double %sub, %div9
  %14 = load double, ptr %w.addr, align 8, !tbaa !4
  %div11 = fdiv double %sub10, %14
  store double %div11, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %15 = load double, ptr %V.addr, align 8, !tbaa !4
  %16 = load double, ptr %H.addr, align 8, !tbaa !4
  %div12 = fdiv double %15, %16
  %call13 = call double @pow(double noundef %div12, double noundef 2.000000e+00) #5
  %add14 = fadd double 1.000000e+00, %call13
  %call15 = call double @sqrt(double noundef %add14) #5
  %sub16 = fsub double %call15, 1.000000e+00
  %17 = load double, ptr %V.addr, align 8, !tbaa !4
  %18 = load double, ptr %H.addr, align 8, !tbaa !4
  %div17 = fdiv double %17, %18
  %19 = load double, ptr %V.addr, align 8, !tbaa !4
  %20 = load double, ptr %H.addr, align 8, !tbaa !4
  %div18 = fdiv double %19, %20
  %mul19 = fmul double %div17, %div18
  %21 = load double, ptr %V.addr, align 8, !tbaa !4
  %22 = load double, ptr %H.addr, align 8, !tbaa !4
  %div20 = fdiv double %21, %22
  %call21 = call double @pow(double noundef %div20, double noundef 2.000000e+00) #5
  %add22 = fadd double 1.000000e+00, %call21
  %call23 = call double @sqrt(double noundef %add22) #5
  %div24 = fdiv double %mul19, %call23
  %sub25 = fsub double %sub16, %div24
  %23 = load double, ptr %w.addr, align 8, !tbaa !4
  %div26 = fdiv double %sub25, %23
  store double %div26, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %24 = load double, ptr %retval, align 8
  ret double %24
}

; Function Attrs: nounwind uwtable
define double @jacobian_dzdv_contact(double noundef %V, double noundef %H, double noundef %w, double noundef %Lu, double noundef %EA, double noundef %cb) #0 {
entry:
  %retval = alloca double, align 8
  %V.addr = alloca double, align 8
  %H.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %Lu.addr = alloca double, align 8
  %EA.addr = alloca double, align 8
  %cb.addr = alloca double, align 8
  store double %V, ptr %V.addr, align 8, !tbaa !4
  store double %H, ptr %H.addr, align 8, !tbaa !4
  store double %w, ptr %w.addr, align 8, !tbaa !4
  store double %Lu, ptr %Lu.addr, align 8, !tbaa !4
  store double %EA, ptr %EA.addr, align 8, !tbaa !4
  store double %cb, ptr %cb.addr, align 8, !tbaa !4
  %0 = load double, ptr %cb.addr, align 8, !tbaa !4
  %fneg = fneg double %0
  %1 = load double, ptr %V.addr, align 8, !tbaa !4
  %2 = load double, ptr %w.addr, align 8, !tbaa !4
  %3 = load double, ptr %Lu.addr, align 8, !tbaa !4
  %neg = fneg double %2
  %4 = call double @llvm.fmuladd.f64(double %neg, double %3, double %1)
  %mul = fmul double %fneg, %4
  %5 = load double, ptr %H.addr, align 8, !tbaa !4
  %cmp = fcmp olt double %mul, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, ptr %V.addr, align 8, !tbaa !4
  %7 = load double, ptr %H.addr, align 8, !tbaa !4
  %div = fdiv double %6, %7
  %8 = load double, ptr %V.addr, align 8, !tbaa !4
  %9 = load double, ptr %H.addr, align 8, !tbaa !4
  %div1 = fdiv double %8, %9
  %call = call double @pow(double noundef %div1, double noundef 2.000000e+00) #5
  %add = fadd double 1.000000e+00, %call
  %call2 = call double @sqrt(double noundef %add) #5
  %div3 = fdiv double %div, %call2
  %10 = load double, ptr %w.addr, align 8, !tbaa !4
  %div4 = fdiv double %div3, %10
  %11 = load double, ptr %V.addr, align 8, !tbaa !4
  %12 = load double, ptr %w.addr, align 8, !tbaa !4
  %13 = load double, ptr %EA.addr, align 8, !tbaa !4
  %mul5 = fmul double %12, %13
  %div6 = fdiv double %11, %mul5
  %add7 = fadd double %div4, %div6
  store double %add7, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %14 = load double, ptr %V.addr, align 8, !tbaa !4
  %15 = load double, ptr %H.addr, align 8, !tbaa !4
  %div8 = fdiv double %14, %15
  %16 = load double, ptr %V.addr, align 8, !tbaa !4
  %17 = load double, ptr %H.addr, align 8, !tbaa !4
  %div9 = fdiv double %16, %17
  %call10 = call double @pow(double noundef %div9, double noundef 2.000000e+00) #5
  %add11 = fadd double 1.000000e+00, %call10
  %call12 = call double @sqrt(double noundef %add11) #5
  %div13 = fdiv double %div8, %call12
  %18 = load double, ptr %w.addr, align 8, !tbaa !4
  %div14 = fdiv double %div13, %18
  %19 = load double, ptr %V.addr, align 8, !tbaa !4
  %20 = load double, ptr %w.addr, align 8, !tbaa !4
  %21 = load double, ptr %EA.addr, align 8, !tbaa !4
  %mul15 = fmul double %20, %21
  %div16 = fdiv double %19, %mul15
  %add17 = fadd double %div14, %div16
  store double %add17, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %22 = load double, ptr %retval, align 8
  ret double %22
}

; Function Attrs: nounwind uwtable
define i32 @forward_difference_jacobian(ptr noundef %other_type, ptr noundef %p_type, ptr noundef %z_type, ptr noundef %domain, ptr noundef %map_msg, ptr noundef %ierr) #0 {
entry:
  %retval = alloca i32, align 4
  %other_type.addr = alloca ptr, align 8
  %p_type.addr = alloca ptr, align 8
  %z_type.addr = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %map_msg.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %success = alloca i32, align 4
  %original_displacement = alloca double, align 8
  %THREE = alloca i32, align 4
  %z_size = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %other_type, ptr %other_type.addr, align 8, !tbaa !8
  store ptr %p_type, ptr %p_type.addr, align 8, !tbaa !8
  store ptr %z_type, ptr %z_type.addr, align 8, !tbaa !8
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !8
  store ptr %map_msg, ptr %map_msg.addr, align 8, !tbaa !8
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #5
  %0 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %outer_loop = getelementptr inbounds %struct.Domain_t, ptr %0, i32 0, i32 1
  store ptr %outer_loop, ptr %ns, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %success) #5
  store i32 0, ptr %success, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %original_displacement) #5
  store double 0.000000e+00, ptr %original_displacement, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %THREE) #5
  store i32 3, ptr %THREE, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_size) #5
  %1 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z_Len = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %1, i32 0, i32 10
  %2 = load i32, ptr %z_Len, align 8, !tbaa !13
  store i32 %2, ptr %z_size, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  %3 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z_Len1 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %3, i32 0, i32 10
  %4 = load i32, ptr %z_Len1, align 8, !tbaa !13
  %mul = mul nsw i32 3, %4
  store i32 %mul, ptr %n, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %j, align 4, !tbaa !11
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !11
  %6 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %7, i32 0, i32 21
  %8 = load ptr, ptr %Fx_connect, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %idxprom
  %10 = load double, ptr %arrayidx, align 8, !tbaa !4
  %11 = load ptr, ptr %ns, align 8, !tbaa !8
  %b = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %b, align 8, !tbaa !17
  %13 = load i32, ptr %i, align 4, !tbaa !11
  %mul2 = mul nsw i32 3, %13
  %idxprom3 = sext i32 %mul2 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %12, i64 %idxprom3
  store double %10, ptr %arrayidx4, align 8, !tbaa !4
  %14 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %14, i32 0, i32 23
  %15 = load ptr, ptr %Fy_connect, align 8, !tbaa !20
  %16 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %15, i64 %idxprom5
  %17 = load double, ptr %arrayidx6, align 8, !tbaa !4
  %18 = load ptr, ptr %ns, align 8, !tbaa !8
  %b7 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %b7, align 8, !tbaa !17
  %20 = load i32, ptr %i, align 4, !tbaa !11
  %mul8 = mul nsw i32 3, %20
  %add = add nsw i32 %mul8, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds double, ptr %19, i64 %idxprom9
  store double %17, ptr %arrayidx10, align 8, !tbaa !4
  %21 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %21, i32 0, i32 25
  %22 = load ptr, ptr %Fz_connect, align 8, !tbaa !21
  %23 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %22, i64 %idxprom11
  %24 = load double, ptr %arrayidx12, align 8, !tbaa !4
  %25 = load ptr, ptr %ns, align 8, !tbaa !8
  %b13 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %b13, align 8, !tbaa !17
  %27 = load i32, ptr %i, align 4, !tbaa !11
  %mul14 = mul nsw i32 3, %27
  %add15 = add nsw i32 %mul14, 2
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds double, ptr %26, i64 %idxprom16
  store double %24, ptr %arrayidx17, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc57, %for.end
  %29 = load i32, ptr %i, align 4, !tbaa !11
  %30 = load i32, ptr %n, align 4, !tbaa !11
  %cmp19 = icmp slt i32 %29, %30
  br i1 %cmp19, label %for.body20, label %for.end59

for.body20:                                       ; preds = %for.cond18
  store i32 0, ptr %j, align 4, !tbaa !11
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc54, %for.body20
  %31 = load i32, ptr %j, align 4, !tbaa !11
  %32 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp22 = icmp slt i32 %31, %32
  br i1 %cmp22, label %for.body23, label %for.end56

for.body23:                                       ; preds = %for.cond21
  %33 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect24 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %33, i32 0, i32 21
  %34 = load ptr, ptr %Fx_connect24, align 8, !tbaa !15
  %35 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom25 = sext i32 %35 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %34, i64 %idxprom25
  %36 = load double, ptr %arrayidx26, align 8, !tbaa !4
  %fneg = fneg double %36
  %37 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %jac, align 8, !tbaa !24
  %39 = load i32, ptr %j, align 4, !tbaa !11
  %mul27 = mul nsw i32 3, %39
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %38, i64 %idxprom28
  %40 = load ptr, ptr %arrayidx29, align 8, !tbaa !8
  %41 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %40, i64 %idxprom30
  store double %fneg, ptr %arrayidx31, align 8, !tbaa !4
  %42 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect32 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %42, i32 0, i32 23
  %43 = load ptr, ptr %Fy_connect32, align 8, !tbaa !20
  %44 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %43, i64 %idxprom33
  %45 = load double, ptr %arrayidx34, align 8, !tbaa !4
  %fneg35 = fneg double %45
  %46 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac36 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %jac36, align 8, !tbaa !24
  %48 = load i32, ptr %j, align 4, !tbaa !11
  %mul37 = mul nsw i32 3, %48
  %add38 = add nsw i32 %mul37, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %47, i64 %idxprom39
  %49 = load ptr, ptr %arrayidx40, align 8, !tbaa !8
  %50 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom41 = sext i32 %50 to i64
  %arrayidx42 = getelementptr inbounds double, ptr %49, i64 %idxprom41
  store double %fneg35, ptr %arrayidx42, align 8, !tbaa !4
  %51 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect43 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %51, i32 0, i32 25
  %52 = load ptr, ptr %Fz_connect43, align 8, !tbaa !21
  %53 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %52, i64 %idxprom44
  %54 = load double, ptr %arrayidx45, align 8, !tbaa !4
  %fneg46 = fneg double %54
  %55 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac47 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %jac47, align 8, !tbaa !24
  %57 = load i32, ptr %j, align 4, !tbaa !11
  %mul48 = mul nsw i32 3, %57
  %add49 = add nsw i32 %mul48, 2
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %56, i64 %idxprom50
  %58 = load ptr, ptr %arrayidx51, align 8, !tbaa !8
  %59 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom52 = sext i32 %59 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %58, i64 %idxprom52
  store double %fneg46, ptr %arrayidx53, align 8, !tbaa !4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body23
  %60 = load i32, ptr %j, align 4, !tbaa !11
  %inc55 = add nsw i32 %60, 1
  store i32 %inc55, ptr %j, align 4, !tbaa !11
  br label %for.cond21, !llvm.loop !25

for.end56:                                        ; preds = %for.cond21
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %61 = load i32, ptr %i, align 4, !tbaa !11
  %inc58 = add nsw i32 %61, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !11
  br label %for.cond18, !llvm.loop !26

for.end59:                                        ; preds = %for.cond18
  store i32 0, ptr %j, align 4, !tbaa !11
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc318, %for.end59
  %62 = load i32, ptr %j, align 4, !tbaa !11
  %63 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp61 = icmp slt i32 %62, %63
  br i1 %cmp61, label %for.body62, label %for.end320

for.body62:                                       ; preds = %for.cond60
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc315, %for.body62
  %64 = load i32, ptr %i, align 4, !tbaa !11
  %65 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp64 = icmp slt i32 %64, %65
  br i1 %cmp64, label %for.body65, label %for.end317

for.body65:                                       ; preds = %for.cond63
  %66 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %66, i32 0, i32 5
  %67 = load ptr, ptr %x, align 8, !tbaa !27
  %68 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom66 = sext i32 %68 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %67, i64 %idxprom66
  %69 = load double, ptr %arrayidx67, align 8, !tbaa !4
  store double %69, ptr %original_displacement, align 8, !tbaa !4
  %70 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %70, i32 0, i32 15
  %71 = load double, ptr %epsilon, align 8, !tbaa !28
  %72 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x68 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %72, i32 0, i32 5
  %73 = load ptr, ptr %x68, align 8, !tbaa !27
  %74 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom69 = sext i32 %74 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %73, i64 %idxprom69
  %75 = load double, ptr %arrayidx70, align 8, !tbaa !4
  %add71 = fadd double %75, %71
  store double %add71, ptr %arrayidx70, align 8, !tbaa !4
  %76 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %77 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %78 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %79 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call = call i32 @line_solve_sequence(ptr noundef %76, ptr noundef %77, float noundef 0.000000e+00, ptr noundef %78, ptr noundef %79)
  store i32 %call, ptr %success, align 4, !tbaa !10
  %80 = load i32, ptr %success, align 4, !tbaa !10
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body65
  %81 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %82 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %83 = load i32, ptr %j, align 4, !tbaa !11
  %add72 = add nsw i32 %83, 1
  %84 = load i32, ptr %i, align 4, !tbaa !11
  %mul73 = mul nsw i32 3, %84
  %85 = load i32, ptr %j, align 4, !tbaa !11
  %mul74 = mul nsw i32 3, %85
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %81, ptr noundef %82, i32 noundef 78, ptr noundef @.str, i32 noundef %add72, i32 noundef %mul73, i32 noundef %mul74)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body65
  %86 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect75 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %86, i32 0, i32 21
  %87 = load ptr, ptr %Fx_connect75, align 8, !tbaa !15
  %88 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom76 = sext i32 %88 to i64
  %arrayidx77 = getelementptr inbounds double, ptr %87, i64 %idxprom76
  %89 = load double, ptr %arrayidx77, align 8, !tbaa !4
  %90 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac78 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %90, i32 0, i32 4
  %91 = load ptr, ptr %jac78, align 8, !tbaa !24
  %92 = load i32, ptr %i, align 4, !tbaa !11
  %mul79 = mul nsw i32 3, %92
  %idxprom80 = sext i32 %mul79 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %91, i64 %idxprom80
  %93 = load ptr, ptr %arrayidx81, align 8, !tbaa !8
  %94 = load i32, ptr %j, align 4, !tbaa !11
  %mul82 = mul nsw i32 3, %94
  %idxprom83 = sext i32 %mul82 to i64
  %arrayidx84 = getelementptr inbounds double, ptr %93, i64 %idxprom83
  %95 = load double, ptr %arrayidx84, align 8, !tbaa !4
  %add85 = fadd double %95, %89
  store double %add85, ptr %arrayidx84, align 8, !tbaa !4
  %96 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon86 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %96, i32 0, i32 15
  %97 = load double, ptr %epsilon86, align 8, !tbaa !28
  %98 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac87 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %98, i32 0, i32 4
  %99 = load ptr, ptr %jac87, align 8, !tbaa !24
  %100 = load i32, ptr %i, align 4, !tbaa !11
  %mul88 = mul nsw i32 3, %100
  %idxprom89 = sext i32 %mul88 to i64
  %arrayidx90 = getelementptr inbounds ptr, ptr %99, i64 %idxprom89
  %101 = load ptr, ptr %arrayidx90, align 8, !tbaa !8
  %102 = load i32, ptr %j, align 4, !tbaa !11
  %mul91 = mul nsw i32 3, %102
  %idxprom92 = sext i32 %mul91 to i64
  %arrayidx93 = getelementptr inbounds double, ptr %101, i64 %idxprom92
  %103 = load double, ptr %arrayidx93, align 8, !tbaa !4
  %div = fdiv double %103, %97
  store double %div, ptr %arrayidx93, align 8, !tbaa !4
  %104 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect94 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %104, i32 0, i32 23
  %105 = load ptr, ptr %Fy_connect94, align 8, !tbaa !20
  %106 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom95 = sext i32 %106 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %105, i64 %idxprom95
  %107 = load double, ptr %arrayidx96, align 8, !tbaa !4
  %108 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac97 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %108, i32 0, i32 4
  %109 = load ptr, ptr %jac97, align 8, !tbaa !24
  %110 = load i32, ptr %i, align 4, !tbaa !11
  %mul98 = mul nsw i32 3, %110
  %add99 = add nsw i32 %mul98, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds ptr, ptr %109, i64 %idxprom100
  %111 = load ptr, ptr %arrayidx101, align 8, !tbaa !8
  %112 = load i32, ptr %j, align 4, !tbaa !11
  %mul102 = mul nsw i32 3, %112
  %idxprom103 = sext i32 %mul102 to i64
  %arrayidx104 = getelementptr inbounds double, ptr %111, i64 %idxprom103
  %113 = load double, ptr %arrayidx104, align 8, !tbaa !4
  %add105 = fadd double %113, %107
  store double %add105, ptr %arrayidx104, align 8, !tbaa !4
  %114 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon106 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %114, i32 0, i32 15
  %115 = load double, ptr %epsilon106, align 8, !tbaa !28
  %116 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac107 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %116, i32 0, i32 4
  %117 = load ptr, ptr %jac107, align 8, !tbaa !24
  %118 = load i32, ptr %i, align 4, !tbaa !11
  %mul108 = mul nsw i32 3, %118
  %add109 = add nsw i32 %mul108, 1
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds ptr, ptr %117, i64 %idxprom110
  %119 = load ptr, ptr %arrayidx111, align 8, !tbaa !8
  %120 = load i32, ptr %j, align 4, !tbaa !11
  %mul112 = mul nsw i32 3, %120
  %idxprom113 = sext i32 %mul112 to i64
  %arrayidx114 = getelementptr inbounds double, ptr %119, i64 %idxprom113
  %121 = load double, ptr %arrayidx114, align 8, !tbaa !4
  %div115 = fdiv double %121, %115
  store double %div115, ptr %arrayidx114, align 8, !tbaa !4
  %122 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect116 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %122, i32 0, i32 25
  %123 = load ptr, ptr %Fz_connect116, align 8, !tbaa !21
  %124 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom117 = sext i32 %124 to i64
  %arrayidx118 = getelementptr inbounds double, ptr %123, i64 %idxprom117
  %125 = load double, ptr %arrayidx118, align 8, !tbaa !4
  %126 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac119 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %126, i32 0, i32 4
  %127 = load ptr, ptr %jac119, align 8, !tbaa !24
  %128 = load i32, ptr %i, align 4, !tbaa !11
  %mul120 = mul nsw i32 3, %128
  %add121 = add nsw i32 %mul120, 2
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds ptr, ptr %127, i64 %idxprom122
  %129 = load ptr, ptr %arrayidx123, align 8, !tbaa !8
  %130 = load i32, ptr %j, align 4, !tbaa !11
  %mul124 = mul nsw i32 3, %130
  %idxprom125 = sext i32 %mul124 to i64
  %arrayidx126 = getelementptr inbounds double, ptr %129, i64 %idxprom125
  %131 = load double, ptr %arrayidx126, align 8, !tbaa !4
  %add127 = fadd double %131, %125
  store double %add127, ptr %arrayidx126, align 8, !tbaa !4
  %132 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon128 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %132, i32 0, i32 15
  %133 = load double, ptr %epsilon128, align 8, !tbaa !28
  %134 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac129 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %134, i32 0, i32 4
  %135 = load ptr, ptr %jac129, align 8, !tbaa !24
  %136 = load i32, ptr %i, align 4, !tbaa !11
  %mul130 = mul nsw i32 3, %136
  %add131 = add nsw i32 %mul130, 2
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds ptr, ptr %135, i64 %idxprom132
  %137 = load ptr, ptr %arrayidx133, align 8, !tbaa !8
  %138 = load i32, ptr %j, align 4, !tbaa !11
  %mul134 = mul nsw i32 3, %138
  %idxprom135 = sext i32 %mul134 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %137, i64 %idxprom135
  %139 = load double, ptr %arrayidx136, align 8, !tbaa !4
  %div137 = fdiv double %139, %133
  store double %div137, ptr %arrayidx136, align 8, !tbaa !4
  %140 = load double, ptr %original_displacement, align 8, !tbaa !4
  %141 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x138 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %141, i32 0, i32 5
  %142 = load ptr, ptr %x138, align 8, !tbaa !27
  %143 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom139 = sext i32 %143 to i64
  %arrayidx140 = getelementptr inbounds double, ptr %142, i64 %idxprom139
  store double %140, ptr %arrayidx140, align 8, !tbaa !4
  %144 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %144, i32 0, i32 7
  %145 = load ptr, ptr %y, align 8, !tbaa !29
  %146 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom141 = sext i32 %146 to i64
  %arrayidx142 = getelementptr inbounds double, ptr %145, i64 %idxprom141
  %147 = load double, ptr %arrayidx142, align 8, !tbaa !4
  store double %147, ptr %original_displacement, align 8, !tbaa !4
  %148 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon143 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %148, i32 0, i32 15
  %149 = load double, ptr %epsilon143, align 8, !tbaa !28
  %150 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y144 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %150, i32 0, i32 7
  %151 = load ptr, ptr %y144, align 8, !tbaa !29
  %152 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom145 = sext i32 %152 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %151, i64 %idxprom145
  %153 = load double, ptr %arrayidx146, align 8, !tbaa !4
  %add147 = fadd double %153, %149
  store double %add147, ptr %arrayidx146, align 8, !tbaa !4
  %154 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %155 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %156 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %157 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call148 = call i32 @line_solve_sequence(ptr noundef %154, ptr noundef %155, float noundef 0.000000e+00, ptr noundef %156, ptr noundef %157)
  store i32 %call148, ptr %success, align 4, !tbaa !10
  %158 = load i32, ptr %success, align 4, !tbaa !10
  %tobool149 = icmp ne i32 %158, 0
  br i1 %tobool149, label %if.then150, label %if.end154

if.then150:                                       ; preds = %if.end
  %159 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %160 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %161 = load i32, ptr %j, align 4, !tbaa !11
  %add151 = add nsw i32 %161, 1
  %162 = load i32, ptr %i, align 4, !tbaa !11
  %mul152 = mul nsw i32 3, %162
  %163 = load i32, ptr %j, align 4, !tbaa !11
  %mul153 = mul nsw i32 3, %163
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %159, ptr noundef %160, i32 noundef 78, ptr noundef @.str, i32 noundef %add151, i32 noundef %mul152, i32 noundef %mul153)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end154:                                        ; preds = %if.end
  %164 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect155 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %164, i32 0, i32 21
  %165 = load ptr, ptr %Fx_connect155, align 8, !tbaa !15
  %166 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom156 = sext i32 %166 to i64
  %arrayidx157 = getelementptr inbounds double, ptr %165, i64 %idxprom156
  %167 = load double, ptr %arrayidx157, align 8, !tbaa !4
  %168 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac158 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %168, i32 0, i32 4
  %169 = load ptr, ptr %jac158, align 8, !tbaa !24
  %170 = load i32, ptr %i, align 4, !tbaa !11
  %mul159 = mul nsw i32 3, %170
  %idxprom160 = sext i32 %mul159 to i64
  %arrayidx161 = getelementptr inbounds ptr, ptr %169, i64 %idxprom160
  %171 = load ptr, ptr %arrayidx161, align 8, !tbaa !8
  %172 = load i32, ptr %j, align 4, !tbaa !11
  %mul162 = mul nsw i32 3, %172
  %add163 = add nsw i32 %mul162, 1
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds double, ptr %171, i64 %idxprom164
  %173 = load double, ptr %arrayidx165, align 8, !tbaa !4
  %add166 = fadd double %173, %167
  store double %add166, ptr %arrayidx165, align 8, !tbaa !4
  %174 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon167 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %174, i32 0, i32 15
  %175 = load double, ptr %epsilon167, align 8, !tbaa !28
  %176 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac168 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %176, i32 0, i32 4
  %177 = load ptr, ptr %jac168, align 8, !tbaa !24
  %178 = load i32, ptr %i, align 4, !tbaa !11
  %mul169 = mul nsw i32 3, %178
  %idxprom170 = sext i32 %mul169 to i64
  %arrayidx171 = getelementptr inbounds ptr, ptr %177, i64 %idxprom170
  %179 = load ptr, ptr %arrayidx171, align 8, !tbaa !8
  %180 = load i32, ptr %j, align 4, !tbaa !11
  %mul172 = mul nsw i32 3, %180
  %add173 = add nsw i32 %mul172, 1
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds double, ptr %179, i64 %idxprom174
  %181 = load double, ptr %arrayidx175, align 8, !tbaa !4
  %div176 = fdiv double %181, %175
  store double %div176, ptr %arrayidx175, align 8, !tbaa !4
  %182 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect177 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %182, i32 0, i32 23
  %183 = load ptr, ptr %Fy_connect177, align 8, !tbaa !20
  %184 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom178 = sext i32 %184 to i64
  %arrayidx179 = getelementptr inbounds double, ptr %183, i64 %idxprom178
  %185 = load double, ptr %arrayidx179, align 8, !tbaa !4
  %186 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac180 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %186, i32 0, i32 4
  %187 = load ptr, ptr %jac180, align 8, !tbaa !24
  %188 = load i32, ptr %i, align 4, !tbaa !11
  %mul181 = mul nsw i32 3, %188
  %add182 = add nsw i32 %mul181, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds ptr, ptr %187, i64 %idxprom183
  %189 = load ptr, ptr %arrayidx184, align 8, !tbaa !8
  %190 = load i32, ptr %j, align 4, !tbaa !11
  %mul185 = mul nsw i32 3, %190
  %add186 = add nsw i32 %mul185, 1
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds double, ptr %189, i64 %idxprom187
  %191 = load double, ptr %arrayidx188, align 8, !tbaa !4
  %add189 = fadd double %191, %185
  store double %add189, ptr %arrayidx188, align 8, !tbaa !4
  %192 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon190 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %192, i32 0, i32 15
  %193 = load double, ptr %epsilon190, align 8, !tbaa !28
  %194 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac191 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %194, i32 0, i32 4
  %195 = load ptr, ptr %jac191, align 8, !tbaa !24
  %196 = load i32, ptr %i, align 4, !tbaa !11
  %mul192 = mul nsw i32 3, %196
  %add193 = add nsw i32 %mul192, 1
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds ptr, ptr %195, i64 %idxprom194
  %197 = load ptr, ptr %arrayidx195, align 8, !tbaa !8
  %198 = load i32, ptr %j, align 4, !tbaa !11
  %mul196 = mul nsw i32 3, %198
  %add197 = add nsw i32 %mul196, 1
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds double, ptr %197, i64 %idxprom198
  %199 = load double, ptr %arrayidx199, align 8, !tbaa !4
  %div200 = fdiv double %199, %193
  store double %div200, ptr %arrayidx199, align 8, !tbaa !4
  %200 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect201 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %200, i32 0, i32 25
  %201 = load ptr, ptr %Fz_connect201, align 8, !tbaa !21
  %202 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom202 = sext i32 %202 to i64
  %arrayidx203 = getelementptr inbounds double, ptr %201, i64 %idxprom202
  %203 = load double, ptr %arrayidx203, align 8, !tbaa !4
  %204 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac204 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %204, i32 0, i32 4
  %205 = load ptr, ptr %jac204, align 8, !tbaa !24
  %206 = load i32, ptr %i, align 4, !tbaa !11
  %mul205 = mul nsw i32 3, %206
  %add206 = add nsw i32 %mul205, 2
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds ptr, ptr %205, i64 %idxprom207
  %207 = load ptr, ptr %arrayidx208, align 8, !tbaa !8
  %208 = load i32, ptr %j, align 4, !tbaa !11
  %mul209 = mul nsw i32 3, %208
  %add210 = add nsw i32 %mul209, 1
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds double, ptr %207, i64 %idxprom211
  %209 = load double, ptr %arrayidx212, align 8, !tbaa !4
  %add213 = fadd double %209, %203
  store double %add213, ptr %arrayidx212, align 8, !tbaa !4
  %210 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon214 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %210, i32 0, i32 15
  %211 = load double, ptr %epsilon214, align 8, !tbaa !28
  %212 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac215 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %212, i32 0, i32 4
  %213 = load ptr, ptr %jac215, align 8, !tbaa !24
  %214 = load i32, ptr %i, align 4, !tbaa !11
  %mul216 = mul nsw i32 3, %214
  %add217 = add nsw i32 %mul216, 2
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds ptr, ptr %213, i64 %idxprom218
  %215 = load ptr, ptr %arrayidx219, align 8, !tbaa !8
  %216 = load i32, ptr %j, align 4, !tbaa !11
  %mul220 = mul nsw i32 3, %216
  %add221 = add nsw i32 %mul220, 1
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds double, ptr %215, i64 %idxprom222
  %217 = load double, ptr %arrayidx223, align 8, !tbaa !4
  %div224 = fdiv double %217, %211
  store double %div224, ptr %arrayidx223, align 8, !tbaa !4
  %218 = load double, ptr %original_displacement, align 8, !tbaa !4
  %219 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y225 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %219, i32 0, i32 7
  %220 = load ptr, ptr %y225, align 8, !tbaa !29
  %221 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom226 = sext i32 %221 to i64
  %arrayidx227 = getelementptr inbounds double, ptr %220, i64 %idxprom226
  store double %218, ptr %arrayidx227, align 8, !tbaa !4
  %222 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %222, i32 0, i32 9
  %223 = load ptr, ptr %z, align 8, !tbaa !30
  %224 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom228 = sext i32 %224 to i64
  %arrayidx229 = getelementptr inbounds double, ptr %223, i64 %idxprom228
  %225 = load double, ptr %arrayidx229, align 8, !tbaa !4
  store double %225, ptr %original_displacement, align 8, !tbaa !4
  %226 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon230 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %226, i32 0, i32 15
  %227 = load double, ptr %epsilon230, align 8, !tbaa !28
  %228 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z231 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %228, i32 0, i32 9
  %229 = load ptr, ptr %z231, align 8, !tbaa !30
  %230 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom232 = sext i32 %230 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %229, i64 %idxprom232
  %231 = load double, ptr %arrayidx233, align 8, !tbaa !4
  %add234 = fadd double %231, %227
  store double %add234, ptr %arrayidx233, align 8, !tbaa !4
  %232 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %233 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %234 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %235 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call235 = call i32 @line_solve_sequence(ptr noundef %232, ptr noundef %233, float noundef 0.000000e+00, ptr noundef %234, ptr noundef %235)
  store i32 %call235, ptr %success, align 4, !tbaa !10
  %236 = load i32, ptr %success, align 4, !tbaa !10
  %tobool236 = icmp ne i32 %236, 0
  br i1 %tobool236, label %if.then237, label %if.end241

if.then237:                                       ; preds = %if.end154
  %237 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %238 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %239 = load i32, ptr %j, align 4, !tbaa !11
  %add238 = add nsw i32 %239, 1
  %240 = load i32, ptr %i, align 4, !tbaa !11
  %mul239 = mul nsw i32 3, %240
  %241 = load i32, ptr %j, align 4, !tbaa !11
  %mul240 = mul nsw i32 3, %241
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %237, ptr noundef %238, i32 noundef 78, ptr noundef @.str, i32 noundef %add238, i32 noundef %mul239, i32 noundef %mul240)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end241:                                        ; preds = %if.end154
  %242 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect242 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %242, i32 0, i32 21
  %243 = load ptr, ptr %Fx_connect242, align 8, !tbaa !15
  %244 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom243 = sext i32 %244 to i64
  %arrayidx244 = getelementptr inbounds double, ptr %243, i64 %idxprom243
  %245 = load double, ptr %arrayidx244, align 8, !tbaa !4
  %246 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac245 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %246, i32 0, i32 4
  %247 = load ptr, ptr %jac245, align 8, !tbaa !24
  %248 = load i32, ptr %i, align 4, !tbaa !11
  %mul246 = mul nsw i32 3, %248
  %idxprom247 = sext i32 %mul246 to i64
  %arrayidx248 = getelementptr inbounds ptr, ptr %247, i64 %idxprom247
  %249 = load ptr, ptr %arrayidx248, align 8, !tbaa !8
  %250 = load i32, ptr %j, align 4, !tbaa !11
  %mul249 = mul nsw i32 3, %250
  %add250 = add nsw i32 %mul249, 2
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds double, ptr %249, i64 %idxprom251
  %251 = load double, ptr %arrayidx252, align 8, !tbaa !4
  %add253 = fadd double %251, %245
  store double %add253, ptr %arrayidx252, align 8, !tbaa !4
  %252 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon254 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %252, i32 0, i32 15
  %253 = load double, ptr %epsilon254, align 8, !tbaa !28
  %254 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac255 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %254, i32 0, i32 4
  %255 = load ptr, ptr %jac255, align 8, !tbaa !24
  %256 = load i32, ptr %i, align 4, !tbaa !11
  %mul256 = mul nsw i32 3, %256
  %idxprom257 = sext i32 %mul256 to i64
  %arrayidx258 = getelementptr inbounds ptr, ptr %255, i64 %idxprom257
  %257 = load ptr, ptr %arrayidx258, align 8, !tbaa !8
  %258 = load i32, ptr %j, align 4, !tbaa !11
  %mul259 = mul nsw i32 3, %258
  %add260 = add nsw i32 %mul259, 2
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds double, ptr %257, i64 %idxprom261
  %259 = load double, ptr %arrayidx262, align 8, !tbaa !4
  %div263 = fdiv double %259, %253
  store double %div263, ptr %arrayidx262, align 8, !tbaa !4
  %260 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect264 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %260, i32 0, i32 23
  %261 = load ptr, ptr %Fy_connect264, align 8, !tbaa !20
  %262 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom265 = sext i32 %262 to i64
  %arrayidx266 = getelementptr inbounds double, ptr %261, i64 %idxprom265
  %263 = load double, ptr %arrayidx266, align 8, !tbaa !4
  %264 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac267 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %264, i32 0, i32 4
  %265 = load ptr, ptr %jac267, align 8, !tbaa !24
  %266 = load i32, ptr %i, align 4, !tbaa !11
  %mul268 = mul nsw i32 3, %266
  %add269 = add nsw i32 %mul268, 1
  %idxprom270 = sext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds ptr, ptr %265, i64 %idxprom270
  %267 = load ptr, ptr %arrayidx271, align 8, !tbaa !8
  %268 = load i32, ptr %j, align 4, !tbaa !11
  %mul272 = mul nsw i32 3, %268
  %add273 = add nsw i32 %mul272, 2
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds double, ptr %267, i64 %idxprom274
  %269 = load double, ptr %arrayidx275, align 8, !tbaa !4
  %add276 = fadd double %269, %263
  store double %add276, ptr %arrayidx275, align 8, !tbaa !4
  %270 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon277 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %270, i32 0, i32 15
  %271 = load double, ptr %epsilon277, align 8, !tbaa !28
  %272 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac278 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %272, i32 0, i32 4
  %273 = load ptr, ptr %jac278, align 8, !tbaa !24
  %274 = load i32, ptr %i, align 4, !tbaa !11
  %mul279 = mul nsw i32 3, %274
  %add280 = add nsw i32 %mul279, 1
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds ptr, ptr %273, i64 %idxprom281
  %275 = load ptr, ptr %arrayidx282, align 8, !tbaa !8
  %276 = load i32, ptr %j, align 4, !tbaa !11
  %mul283 = mul nsw i32 3, %276
  %add284 = add nsw i32 %mul283, 2
  %idxprom285 = sext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds double, ptr %275, i64 %idxprom285
  %277 = load double, ptr %arrayidx286, align 8, !tbaa !4
  %div287 = fdiv double %277, %271
  store double %div287, ptr %arrayidx286, align 8, !tbaa !4
  %278 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect288 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %278, i32 0, i32 25
  %279 = load ptr, ptr %Fz_connect288, align 8, !tbaa !21
  %280 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom289 = sext i32 %280 to i64
  %arrayidx290 = getelementptr inbounds double, ptr %279, i64 %idxprom289
  %281 = load double, ptr %arrayidx290, align 8, !tbaa !4
  %282 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac291 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %282, i32 0, i32 4
  %283 = load ptr, ptr %jac291, align 8, !tbaa !24
  %284 = load i32, ptr %i, align 4, !tbaa !11
  %mul292 = mul nsw i32 3, %284
  %add293 = add nsw i32 %mul292, 2
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds ptr, ptr %283, i64 %idxprom294
  %285 = load ptr, ptr %arrayidx295, align 8, !tbaa !8
  %286 = load i32, ptr %j, align 4, !tbaa !11
  %mul296 = mul nsw i32 3, %286
  %add297 = add nsw i32 %mul296, 2
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds double, ptr %285, i64 %idxprom298
  %287 = load double, ptr %arrayidx299, align 8, !tbaa !4
  %add300 = fadd double %287, %281
  store double %add300, ptr %arrayidx299, align 8, !tbaa !4
  %288 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon301 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %288, i32 0, i32 15
  %289 = load double, ptr %epsilon301, align 8, !tbaa !28
  %290 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac302 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %290, i32 0, i32 4
  %291 = load ptr, ptr %jac302, align 8, !tbaa !24
  %292 = load i32, ptr %i, align 4, !tbaa !11
  %mul303 = mul nsw i32 3, %292
  %add304 = add nsw i32 %mul303, 2
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds ptr, ptr %291, i64 %idxprom305
  %293 = load ptr, ptr %arrayidx306, align 8, !tbaa !8
  %294 = load i32, ptr %j, align 4, !tbaa !11
  %mul307 = mul nsw i32 3, %294
  %add308 = add nsw i32 %mul307, 2
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds double, ptr %293, i64 %idxprom309
  %295 = load double, ptr %arrayidx310, align 8, !tbaa !4
  %div311 = fdiv double %295, %289
  store double %div311, ptr %arrayidx310, align 8, !tbaa !4
  %296 = load double, ptr %original_displacement, align 8, !tbaa !4
  %297 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z312 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %297, i32 0, i32 9
  %298 = load ptr, ptr %z312, align 8, !tbaa !30
  %299 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom313 = sext i32 %299 to i64
  %arrayidx314 = getelementptr inbounds double, ptr %298, i64 %idxprom313
  store double %296, ptr %arrayidx314, align 8, !tbaa !4
  br label %for.inc315

for.inc315:                                       ; preds = %if.end241
  %300 = load i32, ptr %i, align 4, !tbaa !11
  %inc316 = add nsw i32 %300, 1
  store i32 %inc316, ptr %i, align 4, !tbaa !11
  br label %for.cond63, !llvm.loop !31

for.end317:                                       ; preds = %for.cond63
  br label %for.inc318

for.inc318:                                       ; preds = %for.end317
  %301 = load i32, ptr %j, align 4, !tbaa !11
  %inc319 = add nsw i32 %301, 1
  store i32 %inc319, ptr %j, align 4, !tbaa !11
  br label %for.cond60, !llvm.loop !32

for.end320:                                       ; preds = %for.cond60
  %302 = load ptr, ptr %ns, align 8, !tbaa !8
  %pg = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %302, i32 0, i32 19
  %303 = load i8, ptr %pg, align 8, !tbaa !33, !range !34, !noundef !35
  %tobool321 = trunc i8 %303 to i1
  br i1 %tobool321, label %if.then322, label %if.end339

if.then322:                                       ; preds = %for.end320
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc336, %if.then322
  %304 = load i32, ptr %i, align 4, !tbaa !11
  %305 = load i32, ptr %z_size, align 4, !tbaa !11
  %mul324 = mul nsw i32 3, %305
  %cmp325 = icmp slt i32 %304, %mul324
  br i1 %cmp325, label %for.body326, label %for.end338

for.body326:                                      ; preds = %for.cond323
  %306 = load ptr, ptr %ns, align 8, !tbaa !8
  %ds = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %306, i32 0, i32 13
  %307 = load double, ptr %ds, align 8, !tbaa !36
  %308 = load ptr, ptr %ns, align 8, !tbaa !8
  %iteration_count = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %308, i32 0, i32 24
  %309 = load i32, ptr %iteration_count, align 4, !tbaa !37
  %conv = sitofp i32 %309 to double
  %call327 = call double @pow(double noundef %conv, double noundef 1.500000e+00) #5
  %div328 = fdiv double %307, %call327
  %310 = load ptr, ptr %ns, align 8, !tbaa !8
  %d = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %310, i32 0, i32 14
  %311 = load double, ptr %d, align 8, !tbaa !38
  %add329 = fadd double %div328, %311
  %312 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac330 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %312, i32 0, i32 4
  %313 = load ptr, ptr %jac330, align 8, !tbaa !24
  %314 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom331 = sext i32 %314 to i64
  %arrayidx332 = getelementptr inbounds ptr, ptr %313, i64 %idxprom331
  %315 = load ptr, ptr %arrayidx332, align 8, !tbaa !8
  %316 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom333 = sext i32 %316 to i64
  %arrayidx334 = getelementptr inbounds double, ptr %315, i64 %idxprom333
  %317 = load double, ptr %arrayidx334, align 8, !tbaa !4
  %add335 = fadd double %317, %add329
  store double %add335, ptr %arrayidx334, align 8, !tbaa !4
  br label %for.inc336

for.inc336:                                       ; preds = %for.body326
  %318 = load i32, ptr %i, align 4, !tbaa !11
  %inc337 = add nsw i32 %318, 1
  store i32 %inc337, ptr %i, align 4, !tbaa !11
  br label %for.cond323, !llvm.loop !39

for.end338:                                       ; preds = %for.cond323
  br label %if.end339

if.end339:                                        ; preds = %for.end338, %for.end320
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end339, %if.then237, %if.then150, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %THREE) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %original_displacement) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %success) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #5
  %319 = load i32, ptr %retval, align 4
  ret i32 %319
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @line_solve_sequence(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) #4

declare void @set_universal_error_with_message(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @backward_difference_jacobian(ptr noundef %other_type, ptr noundef %p_type, ptr noundef %z_type, ptr noundef %domain, ptr noundef %map_msg, ptr noundef %ierr) #0 {
entry:
  %retval = alloca i32, align 4
  %other_type.addr = alloca ptr, align 8
  %p_type.addr = alloca ptr, align 8
  %z_type.addr = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %map_msg.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %success = alloca i32, align 4
  %original_displacement = alloca double, align 8
  %THREE = alloca i32, align 4
  %z_size = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %other_type, ptr %other_type.addr, align 8, !tbaa !8
  store ptr %p_type, ptr %p_type.addr, align 8, !tbaa !8
  store ptr %z_type, ptr %z_type.addr, align 8, !tbaa !8
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !8
  store ptr %map_msg, ptr %map_msg.addr, align 8, !tbaa !8
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #5
  %0 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %outer_loop = getelementptr inbounds %struct.Domain_t, ptr %0, i32 0, i32 1
  store ptr %outer_loop, ptr %ns, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %success) #5
  store i32 0, ptr %success, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %original_displacement) #5
  store double 0.000000e+00, ptr %original_displacement, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %THREE) #5
  store i32 3, ptr %THREE, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_size) #5
  %1 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z_Len = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %1, i32 0, i32 10
  %2 = load i32, ptr %z_Len, align 8, !tbaa !13
  store i32 %2, ptr %z_size, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  %3 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z_Len1 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %3, i32 0, i32 10
  %4 = load i32, ptr %z_Len1, align 8, !tbaa !13
  %mul = mul nsw i32 3, %4
  store i32 %mul, ptr %n, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %j, align 4, !tbaa !11
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !11
  %6 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %7, i32 0, i32 21
  %8 = load ptr, ptr %Fx_connect, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %idxprom
  %10 = load double, ptr %arrayidx, align 8, !tbaa !4
  %11 = load ptr, ptr %ns, align 8, !tbaa !8
  %b = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %b, align 8, !tbaa !17
  %13 = load i32, ptr %i, align 4, !tbaa !11
  %mul2 = mul nsw i32 3, %13
  %idxprom3 = sext i32 %mul2 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %12, i64 %idxprom3
  store double %10, ptr %arrayidx4, align 8, !tbaa !4
  %14 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %14, i32 0, i32 23
  %15 = load ptr, ptr %Fy_connect, align 8, !tbaa !20
  %16 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %15, i64 %idxprom5
  %17 = load double, ptr %arrayidx6, align 8, !tbaa !4
  %18 = load ptr, ptr %ns, align 8, !tbaa !8
  %b7 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %b7, align 8, !tbaa !17
  %20 = load i32, ptr %i, align 4, !tbaa !11
  %mul8 = mul nsw i32 3, %20
  %add = add nsw i32 %mul8, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds double, ptr %19, i64 %idxprom9
  store double %17, ptr %arrayidx10, align 8, !tbaa !4
  %21 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %21, i32 0, i32 25
  %22 = load ptr, ptr %Fz_connect, align 8, !tbaa !21
  %23 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %22, i64 %idxprom11
  %24 = load double, ptr %arrayidx12, align 8, !tbaa !4
  %25 = load ptr, ptr %ns, align 8, !tbaa !8
  %b13 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %b13, align 8, !tbaa !17
  %27 = load i32, ptr %i, align 4, !tbaa !11
  %mul14 = mul nsw i32 3, %27
  %add15 = add nsw i32 %mul14, 2
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds double, ptr %26, i64 %idxprom16
  store double %24, ptr %arrayidx17, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc55, %for.end
  %29 = load i32, ptr %i, align 4, !tbaa !11
  %30 = load i32, ptr %n, align 4, !tbaa !11
  %cmp19 = icmp slt i32 %29, %30
  br i1 %cmp19, label %for.body20, label %for.end57

for.body20:                                       ; preds = %for.cond18
  store i32 0, ptr %j, align 4, !tbaa !11
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc52, %for.body20
  %31 = load i32, ptr %j, align 4, !tbaa !11
  %32 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp22 = icmp slt i32 %31, %32
  br i1 %cmp22, label %for.body23, label %for.end54

for.body23:                                       ; preds = %for.cond21
  %33 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect24 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %33, i32 0, i32 21
  %34 = load ptr, ptr %Fx_connect24, align 8, !tbaa !15
  %35 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom25 = sext i32 %35 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %34, i64 %idxprom25
  %36 = load double, ptr %arrayidx26, align 8, !tbaa !4
  %37 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %jac, align 8, !tbaa !24
  %39 = load i32, ptr %j, align 4, !tbaa !11
  %mul27 = mul nsw i32 3, %39
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %38, i64 %idxprom28
  %40 = load ptr, ptr %arrayidx29, align 8, !tbaa !8
  %41 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %40, i64 %idxprom30
  store double %36, ptr %arrayidx31, align 8, !tbaa !4
  %42 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect32 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %42, i32 0, i32 23
  %43 = load ptr, ptr %Fy_connect32, align 8, !tbaa !20
  %44 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %43, i64 %idxprom33
  %45 = load double, ptr %arrayidx34, align 8, !tbaa !4
  %46 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac35 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %jac35, align 8, !tbaa !24
  %48 = load i32, ptr %j, align 4, !tbaa !11
  %mul36 = mul nsw i32 3, %48
  %add37 = add nsw i32 %mul36, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %47, i64 %idxprom38
  %49 = load ptr, ptr %arrayidx39, align 8, !tbaa !8
  %50 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom40 = sext i32 %50 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %49, i64 %idxprom40
  store double %45, ptr %arrayidx41, align 8, !tbaa !4
  %51 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect42 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %51, i32 0, i32 25
  %52 = load ptr, ptr %Fz_connect42, align 8, !tbaa !21
  %53 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom43 = sext i32 %53 to i64
  %arrayidx44 = getelementptr inbounds double, ptr %52, i64 %idxprom43
  %54 = load double, ptr %arrayidx44, align 8, !tbaa !4
  %55 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac45 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %jac45, align 8, !tbaa !24
  %57 = load i32, ptr %j, align 4, !tbaa !11
  %mul46 = mul nsw i32 3, %57
  %add47 = add nsw i32 %mul46, 2
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %56, i64 %idxprom48
  %58 = load ptr, ptr %arrayidx49, align 8, !tbaa !8
  %59 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom50 = sext i32 %59 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %58, i64 %idxprom50
  store double %54, ptr %arrayidx51, align 8, !tbaa !4
  br label %for.inc52

for.inc52:                                        ; preds = %for.body23
  %60 = load i32, ptr %j, align 4, !tbaa !11
  %inc53 = add nsw i32 %60, 1
  store i32 %inc53, ptr %j, align 4, !tbaa !11
  br label %for.cond21, !llvm.loop !41

for.end54:                                        ; preds = %for.cond21
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %61 = load i32, ptr %i, align 4, !tbaa !11
  %inc56 = add nsw i32 %61, 1
  store i32 %inc56, ptr %i, align 4, !tbaa !11
  br label %for.cond18, !llvm.loop !42

for.end57:                                        ; preds = %for.cond18
  store i32 0, ptr %j, align 4, !tbaa !11
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc315, %for.end57
  %62 = load i32, ptr %j, align 4, !tbaa !11
  %63 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp59 = icmp slt i32 %62, %63
  br i1 %cmp59, label %for.body60, label %for.end317

for.body60:                                       ; preds = %for.cond58
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc312, %for.body60
  %64 = load i32, ptr %i, align 4, !tbaa !11
  %65 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp62 = icmp slt i32 %64, %65
  br i1 %cmp62, label %for.body63, label %for.end314

for.body63:                                       ; preds = %for.cond61
  %66 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %66, i32 0, i32 5
  %67 = load ptr, ptr %x, align 8, !tbaa !27
  %68 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom64 = sext i32 %68 to i64
  %arrayidx65 = getelementptr inbounds double, ptr %67, i64 %idxprom64
  %69 = load double, ptr %arrayidx65, align 8, !tbaa !4
  store double %69, ptr %original_displacement, align 8, !tbaa !4
  %70 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %70, i32 0, i32 15
  %71 = load double, ptr %epsilon, align 8, !tbaa !28
  %72 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x66 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %72, i32 0, i32 5
  %73 = load ptr, ptr %x66, align 8, !tbaa !27
  %74 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom67 = sext i32 %74 to i64
  %arrayidx68 = getelementptr inbounds double, ptr %73, i64 %idxprom67
  %75 = load double, ptr %arrayidx68, align 8, !tbaa !4
  %sub = fsub double %75, %71
  store double %sub, ptr %arrayidx68, align 8, !tbaa !4
  %76 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %77 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %78 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %79 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call = call i32 @line_solve_sequence(ptr noundef %76, ptr noundef %77, float noundef 0.000000e+00, ptr noundef %78, ptr noundef %79)
  store i32 %call, ptr %success, align 4, !tbaa !10
  %80 = load i32, ptr %success, align 4, !tbaa !10
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body63
  %81 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %82 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %83 = load i32, ptr %j, align 4, !tbaa !11
  %add69 = add nsw i32 %83, 1
  %84 = load i32, ptr %i, align 4, !tbaa !11
  %mul70 = mul nsw i32 3, %84
  %85 = load i32, ptr %j, align 4, !tbaa !11
  %mul71 = mul nsw i32 3, %85
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %81, ptr noundef %82, i32 noundef 78, ptr noundef @.str.1, i32 noundef %add69, i32 noundef %mul70, i32 noundef %mul71)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body63
  %86 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect72 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %86, i32 0, i32 21
  %87 = load ptr, ptr %Fx_connect72, align 8, !tbaa !15
  %88 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom73 = sext i32 %88 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %87, i64 %idxprom73
  %89 = load double, ptr %arrayidx74, align 8, !tbaa !4
  %90 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac75 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %90, i32 0, i32 4
  %91 = load ptr, ptr %jac75, align 8, !tbaa !24
  %92 = load i32, ptr %i, align 4, !tbaa !11
  %mul76 = mul nsw i32 3, %92
  %idxprom77 = sext i32 %mul76 to i64
  %arrayidx78 = getelementptr inbounds ptr, ptr %91, i64 %idxprom77
  %93 = load ptr, ptr %arrayidx78, align 8, !tbaa !8
  %94 = load i32, ptr %j, align 4, !tbaa !11
  %mul79 = mul nsw i32 3, %94
  %idxprom80 = sext i32 %mul79 to i64
  %arrayidx81 = getelementptr inbounds double, ptr %93, i64 %idxprom80
  %95 = load double, ptr %arrayidx81, align 8, !tbaa !4
  %sub82 = fsub double %95, %89
  store double %sub82, ptr %arrayidx81, align 8, !tbaa !4
  %96 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon83 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %96, i32 0, i32 15
  %97 = load double, ptr %epsilon83, align 8, !tbaa !28
  %98 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac84 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %98, i32 0, i32 4
  %99 = load ptr, ptr %jac84, align 8, !tbaa !24
  %100 = load i32, ptr %i, align 4, !tbaa !11
  %mul85 = mul nsw i32 3, %100
  %idxprom86 = sext i32 %mul85 to i64
  %arrayidx87 = getelementptr inbounds ptr, ptr %99, i64 %idxprom86
  %101 = load ptr, ptr %arrayidx87, align 8, !tbaa !8
  %102 = load i32, ptr %j, align 4, !tbaa !11
  %mul88 = mul nsw i32 3, %102
  %idxprom89 = sext i32 %mul88 to i64
  %arrayidx90 = getelementptr inbounds double, ptr %101, i64 %idxprom89
  %103 = load double, ptr %arrayidx90, align 8, !tbaa !4
  %div = fdiv double %103, %97
  store double %div, ptr %arrayidx90, align 8, !tbaa !4
  %104 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect91 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %104, i32 0, i32 23
  %105 = load ptr, ptr %Fy_connect91, align 8, !tbaa !20
  %106 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom92 = sext i32 %106 to i64
  %arrayidx93 = getelementptr inbounds double, ptr %105, i64 %idxprom92
  %107 = load double, ptr %arrayidx93, align 8, !tbaa !4
  %108 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac94 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %108, i32 0, i32 4
  %109 = load ptr, ptr %jac94, align 8, !tbaa !24
  %110 = load i32, ptr %i, align 4, !tbaa !11
  %mul95 = mul nsw i32 3, %110
  %add96 = add nsw i32 %mul95, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %109, i64 %idxprom97
  %111 = load ptr, ptr %arrayidx98, align 8, !tbaa !8
  %112 = load i32, ptr %j, align 4, !tbaa !11
  %mul99 = mul nsw i32 3, %112
  %idxprom100 = sext i32 %mul99 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %111, i64 %idxprom100
  %113 = load double, ptr %arrayidx101, align 8, !tbaa !4
  %sub102 = fsub double %113, %107
  store double %sub102, ptr %arrayidx101, align 8, !tbaa !4
  %114 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon103 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %114, i32 0, i32 15
  %115 = load double, ptr %epsilon103, align 8, !tbaa !28
  %116 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac104 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %116, i32 0, i32 4
  %117 = load ptr, ptr %jac104, align 8, !tbaa !24
  %118 = load i32, ptr %i, align 4, !tbaa !11
  %mul105 = mul nsw i32 3, %118
  %add106 = add nsw i32 %mul105, 1
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds ptr, ptr %117, i64 %idxprom107
  %119 = load ptr, ptr %arrayidx108, align 8, !tbaa !8
  %120 = load i32, ptr %j, align 4, !tbaa !11
  %mul109 = mul nsw i32 3, %120
  %idxprom110 = sext i32 %mul109 to i64
  %arrayidx111 = getelementptr inbounds double, ptr %119, i64 %idxprom110
  %121 = load double, ptr %arrayidx111, align 8, !tbaa !4
  %div112 = fdiv double %121, %115
  store double %div112, ptr %arrayidx111, align 8, !tbaa !4
  %122 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect113 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %122, i32 0, i32 25
  %123 = load ptr, ptr %Fz_connect113, align 8, !tbaa !21
  %124 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom114 = sext i32 %124 to i64
  %arrayidx115 = getelementptr inbounds double, ptr %123, i64 %idxprom114
  %125 = load double, ptr %arrayidx115, align 8, !tbaa !4
  %126 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac116 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %126, i32 0, i32 4
  %127 = load ptr, ptr %jac116, align 8, !tbaa !24
  %128 = load i32, ptr %i, align 4, !tbaa !11
  %mul117 = mul nsw i32 3, %128
  %add118 = add nsw i32 %mul117, 2
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds ptr, ptr %127, i64 %idxprom119
  %129 = load ptr, ptr %arrayidx120, align 8, !tbaa !8
  %130 = load i32, ptr %j, align 4, !tbaa !11
  %mul121 = mul nsw i32 3, %130
  %idxprom122 = sext i32 %mul121 to i64
  %arrayidx123 = getelementptr inbounds double, ptr %129, i64 %idxprom122
  %131 = load double, ptr %arrayidx123, align 8, !tbaa !4
  %sub124 = fsub double %131, %125
  store double %sub124, ptr %arrayidx123, align 8, !tbaa !4
  %132 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon125 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %132, i32 0, i32 15
  %133 = load double, ptr %epsilon125, align 8, !tbaa !28
  %134 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac126 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %134, i32 0, i32 4
  %135 = load ptr, ptr %jac126, align 8, !tbaa !24
  %136 = load i32, ptr %i, align 4, !tbaa !11
  %mul127 = mul nsw i32 3, %136
  %add128 = add nsw i32 %mul127, 2
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds ptr, ptr %135, i64 %idxprom129
  %137 = load ptr, ptr %arrayidx130, align 8, !tbaa !8
  %138 = load i32, ptr %j, align 4, !tbaa !11
  %mul131 = mul nsw i32 3, %138
  %idxprom132 = sext i32 %mul131 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %137, i64 %idxprom132
  %139 = load double, ptr %arrayidx133, align 8, !tbaa !4
  %div134 = fdiv double %139, %133
  store double %div134, ptr %arrayidx133, align 8, !tbaa !4
  %140 = load double, ptr %original_displacement, align 8, !tbaa !4
  %141 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x135 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %141, i32 0, i32 5
  %142 = load ptr, ptr %x135, align 8, !tbaa !27
  %143 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom136 = sext i32 %143 to i64
  %arrayidx137 = getelementptr inbounds double, ptr %142, i64 %idxprom136
  store double %140, ptr %arrayidx137, align 8, !tbaa !4
  %144 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %144, i32 0, i32 7
  %145 = load ptr, ptr %y, align 8, !tbaa !29
  %146 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom138 = sext i32 %146 to i64
  %arrayidx139 = getelementptr inbounds double, ptr %145, i64 %idxprom138
  %147 = load double, ptr %arrayidx139, align 8, !tbaa !4
  store double %147, ptr %original_displacement, align 8, !tbaa !4
  %148 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon140 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %148, i32 0, i32 15
  %149 = load double, ptr %epsilon140, align 8, !tbaa !28
  %150 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y141 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %150, i32 0, i32 7
  %151 = load ptr, ptr %y141, align 8, !tbaa !29
  %152 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom142 = sext i32 %152 to i64
  %arrayidx143 = getelementptr inbounds double, ptr %151, i64 %idxprom142
  %153 = load double, ptr %arrayidx143, align 8, !tbaa !4
  %sub144 = fsub double %153, %149
  store double %sub144, ptr %arrayidx143, align 8, !tbaa !4
  %154 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %155 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %156 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %157 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call145 = call i32 @line_solve_sequence(ptr noundef %154, ptr noundef %155, float noundef 0.000000e+00, ptr noundef %156, ptr noundef %157)
  store i32 %call145, ptr %success, align 4, !tbaa !10
  %158 = load i32, ptr %success, align 4, !tbaa !10
  %tobool146 = icmp ne i32 %158, 0
  br i1 %tobool146, label %if.then147, label %if.end151

if.then147:                                       ; preds = %if.end
  %159 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %160 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %161 = load i32, ptr %j, align 4, !tbaa !11
  %add148 = add nsw i32 %161, 1
  %162 = load i32, ptr %i, align 4, !tbaa !11
  %mul149 = mul nsw i32 3, %162
  %163 = load i32, ptr %j, align 4, !tbaa !11
  %mul150 = mul nsw i32 3, %163
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %159, ptr noundef %160, i32 noundef 78, ptr noundef @.str.1, i32 noundef %add148, i32 noundef %mul149, i32 noundef %mul150)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end151:                                        ; preds = %if.end
  %164 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect152 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %164, i32 0, i32 21
  %165 = load ptr, ptr %Fx_connect152, align 8, !tbaa !15
  %166 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom153 = sext i32 %166 to i64
  %arrayidx154 = getelementptr inbounds double, ptr %165, i64 %idxprom153
  %167 = load double, ptr %arrayidx154, align 8, !tbaa !4
  %168 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac155 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %168, i32 0, i32 4
  %169 = load ptr, ptr %jac155, align 8, !tbaa !24
  %170 = load i32, ptr %i, align 4, !tbaa !11
  %mul156 = mul nsw i32 3, %170
  %idxprom157 = sext i32 %mul156 to i64
  %arrayidx158 = getelementptr inbounds ptr, ptr %169, i64 %idxprom157
  %171 = load ptr, ptr %arrayidx158, align 8, !tbaa !8
  %172 = load i32, ptr %j, align 4, !tbaa !11
  %mul159 = mul nsw i32 3, %172
  %add160 = add nsw i32 %mul159, 1
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds double, ptr %171, i64 %idxprom161
  %173 = load double, ptr %arrayidx162, align 8, !tbaa !4
  %sub163 = fsub double %173, %167
  store double %sub163, ptr %arrayidx162, align 8, !tbaa !4
  %174 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon164 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %174, i32 0, i32 15
  %175 = load double, ptr %epsilon164, align 8, !tbaa !28
  %176 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac165 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %176, i32 0, i32 4
  %177 = load ptr, ptr %jac165, align 8, !tbaa !24
  %178 = load i32, ptr %i, align 4, !tbaa !11
  %mul166 = mul nsw i32 3, %178
  %idxprom167 = sext i32 %mul166 to i64
  %arrayidx168 = getelementptr inbounds ptr, ptr %177, i64 %idxprom167
  %179 = load ptr, ptr %arrayidx168, align 8, !tbaa !8
  %180 = load i32, ptr %j, align 4, !tbaa !11
  %mul169 = mul nsw i32 3, %180
  %add170 = add nsw i32 %mul169, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds double, ptr %179, i64 %idxprom171
  %181 = load double, ptr %arrayidx172, align 8, !tbaa !4
  %div173 = fdiv double %181, %175
  store double %div173, ptr %arrayidx172, align 8, !tbaa !4
  %182 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect174 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %182, i32 0, i32 23
  %183 = load ptr, ptr %Fy_connect174, align 8, !tbaa !20
  %184 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom175 = sext i32 %184 to i64
  %arrayidx176 = getelementptr inbounds double, ptr %183, i64 %idxprom175
  %185 = load double, ptr %arrayidx176, align 8, !tbaa !4
  %186 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac177 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %186, i32 0, i32 4
  %187 = load ptr, ptr %jac177, align 8, !tbaa !24
  %188 = load i32, ptr %i, align 4, !tbaa !11
  %mul178 = mul nsw i32 3, %188
  %add179 = add nsw i32 %mul178, 1
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds ptr, ptr %187, i64 %idxprom180
  %189 = load ptr, ptr %arrayidx181, align 8, !tbaa !8
  %190 = load i32, ptr %j, align 4, !tbaa !11
  %mul182 = mul nsw i32 3, %190
  %add183 = add nsw i32 %mul182, 1
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds double, ptr %189, i64 %idxprom184
  %191 = load double, ptr %arrayidx185, align 8, !tbaa !4
  %sub186 = fsub double %191, %185
  store double %sub186, ptr %arrayidx185, align 8, !tbaa !4
  %192 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon187 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %192, i32 0, i32 15
  %193 = load double, ptr %epsilon187, align 8, !tbaa !28
  %194 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac188 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %194, i32 0, i32 4
  %195 = load ptr, ptr %jac188, align 8, !tbaa !24
  %196 = load i32, ptr %i, align 4, !tbaa !11
  %mul189 = mul nsw i32 3, %196
  %add190 = add nsw i32 %mul189, 1
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds ptr, ptr %195, i64 %idxprom191
  %197 = load ptr, ptr %arrayidx192, align 8, !tbaa !8
  %198 = load i32, ptr %j, align 4, !tbaa !11
  %mul193 = mul nsw i32 3, %198
  %add194 = add nsw i32 %mul193, 1
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds double, ptr %197, i64 %idxprom195
  %199 = load double, ptr %arrayidx196, align 8, !tbaa !4
  %div197 = fdiv double %199, %193
  store double %div197, ptr %arrayidx196, align 8, !tbaa !4
  %200 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect198 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %200, i32 0, i32 25
  %201 = load ptr, ptr %Fz_connect198, align 8, !tbaa !21
  %202 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom199 = sext i32 %202 to i64
  %arrayidx200 = getelementptr inbounds double, ptr %201, i64 %idxprom199
  %203 = load double, ptr %arrayidx200, align 8, !tbaa !4
  %204 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac201 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %204, i32 0, i32 4
  %205 = load ptr, ptr %jac201, align 8, !tbaa !24
  %206 = load i32, ptr %i, align 4, !tbaa !11
  %mul202 = mul nsw i32 3, %206
  %add203 = add nsw i32 %mul202, 2
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds ptr, ptr %205, i64 %idxprom204
  %207 = load ptr, ptr %arrayidx205, align 8, !tbaa !8
  %208 = load i32, ptr %j, align 4, !tbaa !11
  %mul206 = mul nsw i32 3, %208
  %add207 = add nsw i32 %mul206, 1
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds double, ptr %207, i64 %idxprom208
  %209 = load double, ptr %arrayidx209, align 8, !tbaa !4
  %sub210 = fsub double %209, %203
  store double %sub210, ptr %arrayidx209, align 8, !tbaa !4
  %210 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon211 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %210, i32 0, i32 15
  %211 = load double, ptr %epsilon211, align 8, !tbaa !28
  %212 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac212 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %212, i32 0, i32 4
  %213 = load ptr, ptr %jac212, align 8, !tbaa !24
  %214 = load i32, ptr %i, align 4, !tbaa !11
  %mul213 = mul nsw i32 3, %214
  %add214 = add nsw i32 %mul213, 2
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds ptr, ptr %213, i64 %idxprom215
  %215 = load ptr, ptr %arrayidx216, align 8, !tbaa !8
  %216 = load i32, ptr %j, align 4, !tbaa !11
  %mul217 = mul nsw i32 3, %216
  %add218 = add nsw i32 %mul217, 1
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds double, ptr %215, i64 %idxprom219
  %217 = load double, ptr %arrayidx220, align 8, !tbaa !4
  %div221 = fdiv double %217, %211
  store double %div221, ptr %arrayidx220, align 8, !tbaa !4
  %218 = load double, ptr %original_displacement, align 8, !tbaa !4
  %219 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y222 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %219, i32 0, i32 7
  %220 = load ptr, ptr %y222, align 8, !tbaa !29
  %221 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom223 = sext i32 %221 to i64
  %arrayidx224 = getelementptr inbounds double, ptr %220, i64 %idxprom223
  store double %218, ptr %arrayidx224, align 8, !tbaa !4
  %222 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %222, i32 0, i32 9
  %223 = load ptr, ptr %z, align 8, !tbaa !30
  %224 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom225 = sext i32 %224 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %223, i64 %idxprom225
  %225 = load double, ptr %arrayidx226, align 8, !tbaa !4
  store double %225, ptr %original_displacement, align 8, !tbaa !4
  %226 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon227 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %226, i32 0, i32 15
  %227 = load double, ptr %epsilon227, align 8, !tbaa !28
  %228 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z228 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %228, i32 0, i32 9
  %229 = load ptr, ptr %z228, align 8, !tbaa !30
  %230 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom229 = sext i32 %230 to i64
  %arrayidx230 = getelementptr inbounds double, ptr %229, i64 %idxprom229
  %231 = load double, ptr %arrayidx230, align 8, !tbaa !4
  %sub231 = fsub double %231, %227
  store double %sub231, ptr %arrayidx230, align 8, !tbaa !4
  %232 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %233 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %234 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %235 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call232 = call i32 @line_solve_sequence(ptr noundef %232, ptr noundef %233, float noundef 0.000000e+00, ptr noundef %234, ptr noundef %235)
  store i32 %call232, ptr %success, align 4, !tbaa !10
  %236 = load i32, ptr %success, align 4, !tbaa !10
  %tobool233 = icmp ne i32 %236, 0
  br i1 %tobool233, label %if.then234, label %if.end238

if.then234:                                       ; preds = %if.end151
  %237 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %238 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %239 = load i32, ptr %j, align 4, !tbaa !11
  %add235 = add nsw i32 %239, 1
  %240 = load i32, ptr %i, align 4, !tbaa !11
  %mul236 = mul nsw i32 3, %240
  %241 = load i32, ptr %j, align 4, !tbaa !11
  %mul237 = mul nsw i32 3, %241
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %237, ptr noundef %238, i32 noundef 78, ptr noundef @.str.1, i32 noundef %add235, i32 noundef %mul236, i32 noundef %mul237)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end238:                                        ; preds = %if.end151
  %242 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect239 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %242, i32 0, i32 21
  %243 = load ptr, ptr %Fx_connect239, align 8, !tbaa !15
  %244 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom240 = sext i32 %244 to i64
  %arrayidx241 = getelementptr inbounds double, ptr %243, i64 %idxprom240
  %245 = load double, ptr %arrayidx241, align 8, !tbaa !4
  %246 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac242 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %246, i32 0, i32 4
  %247 = load ptr, ptr %jac242, align 8, !tbaa !24
  %248 = load i32, ptr %i, align 4, !tbaa !11
  %mul243 = mul nsw i32 3, %248
  %idxprom244 = sext i32 %mul243 to i64
  %arrayidx245 = getelementptr inbounds ptr, ptr %247, i64 %idxprom244
  %249 = load ptr, ptr %arrayidx245, align 8, !tbaa !8
  %250 = load i32, ptr %j, align 4, !tbaa !11
  %mul246 = mul nsw i32 3, %250
  %add247 = add nsw i32 %mul246, 2
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds double, ptr %249, i64 %idxprom248
  %251 = load double, ptr %arrayidx249, align 8, !tbaa !4
  %sub250 = fsub double %251, %245
  store double %sub250, ptr %arrayidx249, align 8, !tbaa !4
  %252 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon251 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %252, i32 0, i32 15
  %253 = load double, ptr %epsilon251, align 8, !tbaa !28
  %254 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac252 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %254, i32 0, i32 4
  %255 = load ptr, ptr %jac252, align 8, !tbaa !24
  %256 = load i32, ptr %i, align 4, !tbaa !11
  %mul253 = mul nsw i32 3, %256
  %idxprom254 = sext i32 %mul253 to i64
  %arrayidx255 = getelementptr inbounds ptr, ptr %255, i64 %idxprom254
  %257 = load ptr, ptr %arrayidx255, align 8, !tbaa !8
  %258 = load i32, ptr %j, align 4, !tbaa !11
  %mul256 = mul nsw i32 3, %258
  %add257 = add nsw i32 %mul256, 2
  %idxprom258 = sext i32 %add257 to i64
  %arrayidx259 = getelementptr inbounds double, ptr %257, i64 %idxprom258
  %259 = load double, ptr %arrayidx259, align 8, !tbaa !4
  %div260 = fdiv double %259, %253
  store double %div260, ptr %arrayidx259, align 8, !tbaa !4
  %260 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect261 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %260, i32 0, i32 23
  %261 = load ptr, ptr %Fy_connect261, align 8, !tbaa !20
  %262 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom262 = sext i32 %262 to i64
  %arrayidx263 = getelementptr inbounds double, ptr %261, i64 %idxprom262
  %263 = load double, ptr %arrayidx263, align 8, !tbaa !4
  %264 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac264 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %264, i32 0, i32 4
  %265 = load ptr, ptr %jac264, align 8, !tbaa !24
  %266 = load i32, ptr %i, align 4, !tbaa !11
  %mul265 = mul nsw i32 3, %266
  %add266 = add nsw i32 %mul265, 1
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds ptr, ptr %265, i64 %idxprom267
  %267 = load ptr, ptr %arrayidx268, align 8, !tbaa !8
  %268 = load i32, ptr %j, align 4, !tbaa !11
  %mul269 = mul nsw i32 3, %268
  %add270 = add nsw i32 %mul269, 2
  %idxprom271 = sext i32 %add270 to i64
  %arrayidx272 = getelementptr inbounds double, ptr %267, i64 %idxprom271
  %269 = load double, ptr %arrayidx272, align 8, !tbaa !4
  %sub273 = fsub double %269, %263
  store double %sub273, ptr %arrayidx272, align 8, !tbaa !4
  %270 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon274 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %270, i32 0, i32 15
  %271 = load double, ptr %epsilon274, align 8, !tbaa !28
  %272 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac275 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %272, i32 0, i32 4
  %273 = load ptr, ptr %jac275, align 8, !tbaa !24
  %274 = load i32, ptr %i, align 4, !tbaa !11
  %mul276 = mul nsw i32 3, %274
  %add277 = add nsw i32 %mul276, 1
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds ptr, ptr %273, i64 %idxprom278
  %275 = load ptr, ptr %arrayidx279, align 8, !tbaa !8
  %276 = load i32, ptr %j, align 4, !tbaa !11
  %mul280 = mul nsw i32 3, %276
  %add281 = add nsw i32 %mul280, 2
  %idxprom282 = sext i32 %add281 to i64
  %arrayidx283 = getelementptr inbounds double, ptr %275, i64 %idxprom282
  %277 = load double, ptr %arrayidx283, align 8, !tbaa !4
  %div284 = fdiv double %277, %271
  store double %div284, ptr %arrayidx283, align 8, !tbaa !4
  %278 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect285 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %278, i32 0, i32 25
  %279 = load ptr, ptr %Fz_connect285, align 8, !tbaa !21
  %280 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom286 = sext i32 %280 to i64
  %arrayidx287 = getelementptr inbounds double, ptr %279, i64 %idxprom286
  %281 = load double, ptr %arrayidx287, align 8, !tbaa !4
  %282 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac288 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %282, i32 0, i32 4
  %283 = load ptr, ptr %jac288, align 8, !tbaa !24
  %284 = load i32, ptr %i, align 4, !tbaa !11
  %mul289 = mul nsw i32 3, %284
  %add290 = add nsw i32 %mul289, 2
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds ptr, ptr %283, i64 %idxprom291
  %285 = load ptr, ptr %arrayidx292, align 8, !tbaa !8
  %286 = load i32, ptr %j, align 4, !tbaa !11
  %mul293 = mul nsw i32 3, %286
  %add294 = add nsw i32 %mul293, 2
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds double, ptr %285, i64 %idxprom295
  %287 = load double, ptr %arrayidx296, align 8, !tbaa !4
  %sub297 = fsub double %287, %281
  store double %sub297, ptr %arrayidx296, align 8, !tbaa !4
  %288 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon298 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %288, i32 0, i32 15
  %289 = load double, ptr %epsilon298, align 8, !tbaa !28
  %290 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac299 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %290, i32 0, i32 4
  %291 = load ptr, ptr %jac299, align 8, !tbaa !24
  %292 = load i32, ptr %i, align 4, !tbaa !11
  %mul300 = mul nsw i32 3, %292
  %add301 = add nsw i32 %mul300, 2
  %idxprom302 = sext i32 %add301 to i64
  %arrayidx303 = getelementptr inbounds ptr, ptr %291, i64 %idxprom302
  %293 = load ptr, ptr %arrayidx303, align 8, !tbaa !8
  %294 = load i32, ptr %j, align 4, !tbaa !11
  %mul304 = mul nsw i32 3, %294
  %add305 = add nsw i32 %mul304, 2
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds double, ptr %293, i64 %idxprom306
  %295 = load double, ptr %arrayidx307, align 8, !tbaa !4
  %div308 = fdiv double %295, %289
  store double %div308, ptr %arrayidx307, align 8, !tbaa !4
  %296 = load double, ptr %original_displacement, align 8, !tbaa !4
  %297 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z309 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %297, i32 0, i32 9
  %298 = load ptr, ptr %z309, align 8, !tbaa !30
  %299 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom310 = sext i32 %299 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %298, i64 %idxprom310
  store double %296, ptr %arrayidx311, align 8, !tbaa !4
  br label %for.inc312

for.inc312:                                       ; preds = %if.end238
  %300 = load i32, ptr %i, align 4, !tbaa !11
  %inc313 = add nsw i32 %300, 1
  store i32 %inc313, ptr %i, align 4, !tbaa !11
  br label %for.cond61, !llvm.loop !43

for.end314:                                       ; preds = %for.cond61
  br label %for.inc315

for.inc315:                                       ; preds = %for.end314
  %301 = load i32, ptr %j, align 4, !tbaa !11
  %inc316 = add nsw i32 %301, 1
  store i32 %inc316, ptr %j, align 4, !tbaa !11
  br label %for.cond58, !llvm.loop !44

for.end317:                                       ; preds = %for.cond58
  %302 = load ptr, ptr %ns, align 8, !tbaa !8
  %pg = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %302, i32 0, i32 19
  %303 = load i8, ptr %pg, align 8, !tbaa !33, !range !34, !noundef !35
  %tobool318 = trunc i8 %303 to i1
  br i1 %tobool318, label %if.then319, label %if.end336

if.then319:                                       ; preds = %for.end317
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond320

for.cond320:                                      ; preds = %for.inc333, %if.then319
  %304 = load i32, ptr %i, align 4, !tbaa !11
  %305 = load i32, ptr %z_size, align 4, !tbaa !11
  %mul321 = mul nsw i32 3, %305
  %cmp322 = icmp slt i32 %304, %mul321
  br i1 %cmp322, label %for.body323, label %for.end335

for.body323:                                      ; preds = %for.cond320
  %306 = load ptr, ptr %ns, align 8, !tbaa !8
  %ds = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %306, i32 0, i32 13
  %307 = load double, ptr %ds, align 8, !tbaa !36
  %308 = load ptr, ptr %ns, align 8, !tbaa !8
  %iteration_count = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %308, i32 0, i32 24
  %309 = load i32, ptr %iteration_count, align 4, !tbaa !37
  %conv = sitofp i32 %309 to double
  %call324 = call double @pow(double noundef %conv, double noundef 1.500000e+00) #5
  %div325 = fdiv double %307, %call324
  %310 = load ptr, ptr %ns, align 8, !tbaa !8
  %d = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %310, i32 0, i32 14
  %311 = load double, ptr %d, align 8, !tbaa !38
  %add326 = fadd double %div325, %311
  %312 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac327 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %312, i32 0, i32 4
  %313 = load ptr, ptr %jac327, align 8, !tbaa !24
  %314 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom328 = sext i32 %314 to i64
  %arrayidx329 = getelementptr inbounds ptr, ptr %313, i64 %idxprom328
  %315 = load ptr, ptr %arrayidx329, align 8, !tbaa !8
  %316 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom330 = sext i32 %316 to i64
  %arrayidx331 = getelementptr inbounds double, ptr %315, i64 %idxprom330
  %317 = load double, ptr %arrayidx331, align 8, !tbaa !4
  %add332 = fadd double %317, %add326
  store double %add332, ptr %arrayidx331, align 8, !tbaa !4
  br label %for.inc333

for.inc333:                                       ; preds = %for.body323
  %318 = load i32, ptr %i, align 4, !tbaa !11
  %inc334 = add nsw i32 %318, 1
  store i32 %inc334, ptr %i, align 4, !tbaa !11
  br label %for.cond320, !llvm.loop !45

for.end335:                                       ; preds = %for.cond320
  br label %if.end336

if.end336:                                        ; preds = %for.end335, %for.end317
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end336, %if.then234, %if.then147, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %THREE) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %original_displacement) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %success) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #5
  %319 = load i32, ptr %retval, align 4
  ret i32 %319
}

; Function Attrs: nounwind uwtable
define i32 @central_difference_jacobian(ptr noundef %other_type, ptr noundef %p_type, ptr noundef %z_type, ptr noundef %domain, ptr noundef %map_msg, ptr noundef %ierr) #0 {
entry:
  %retval = alloca i32, align 4
  %other_type.addr = alloca ptr, align 8
  %p_type.addr = alloca ptr, align 8
  %z_type.addr = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %map_msg.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  %success = alloca i32, align 4
  %original_displacement = alloca double, align 8
  %THREE = alloca i32, align 4
  %z_size = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %other_type, ptr %other_type.addr, align 8, !tbaa !8
  store ptr %p_type, ptr %p_type.addr, align 8, !tbaa !8
  store ptr %z_type, ptr %z_type.addr, align 8, !tbaa !8
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !8
  store ptr %map_msg, ptr %map_msg.addr, align 8, !tbaa !8
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #5
  %0 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %outer_loop = getelementptr inbounds %struct.Domain_t, ptr %0, i32 0, i32 1
  store ptr %outer_loop, ptr %ns, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %success) #5
  store i32 0, ptr %success, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %original_displacement) #5
  store double 0.000000e+00, ptr %original_displacement, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %THREE) #5
  store i32 3, ptr %THREE, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_size) #5
  %1 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z_Len = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %1, i32 0, i32 10
  %2 = load i32, ptr %z_Len, align 8, !tbaa !13
  store i32 %2, ptr %z_size, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %j, align 4, !tbaa !11
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !11
  %4 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %5, i32 0, i32 21
  %6 = load ptr, ptr %Fx_connect, align 8, !tbaa !15
  %7 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom
  %8 = load double, ptr %arrayidx, align 8, !tbaa !4
  %9 = load ptr, ptr %ns, align 8, !tbaa !8
  %b = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %b, align 8, !tbaa !17
  %11 = load i32, ptr %i, align 4, !tbaa !11
  %mul = mul nsw i32 3, %11
  %idxprom1 = sext i32 %mul to i64
  %arrayidx2 = getelementptr inbounds double, ptr %10, i64 %idxprom1
  store double %8, ptr %arrayidx2, align 8, !tbaa !4
  %12 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %12, i32 0, i32 23
  %13 = load ptr, ptr %Fy_connect, align 8, !tbaa !20
  %14 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %13, i64 %idxprom3
  %15 = load double, ptr %arrayidx4, align 8, !tbaa !4
  %16 = load ptr, ptr %ns, align 8, !tbaa !8
  %b5 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %b5, align 8, !tbaa !17
  %18 = load i32, ptr %i, align 4, !tbaa !11
  %mul6 = mul nsw i32 3, %18
  %add = add nsw i32 %mul6, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds double, ptr %17, i64 %idxprom7
  store double %15, ptr %arrayidx8, align 8, !tbaa !4
  %19 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect = getelementptr inbounds %struct.MAP_OtherStateType, ptr %19, i32 0, i32 25
  %20 = load ptr, ptr %Fz_connect, align 8, !tbaa !21
  %21 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %20, i64 %idxprom9
  %22 = load double, ptr %arrayidx10, align 8, !tbaa !4
  %23 = load ptr, ptr %ns, align 8, !tbaa !8
  %b11 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %b11, align 8, !tbaa !17
  %25 = load i32, ptr %i, align 4, !tbaa !11
  %mul12 = mul nsw i32 3, %25
  %add13 = add nsw i32 %mul12, 2
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds double, ptr %24, i64 %idxprom14
  store double %22, ptr %arrayidx15, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !11
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc172, %for.end
  %27 = load i32, ptr %j, align 4, !tbaa !11
  %28 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp17 = icmp slt i32 %27, %28
  br i1 %cmp17, label %for.body18, label %for.end174

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc169, %for.body18
  %29 = load i32, ptr %i, align 4, !tbaa !11
  %30 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp20 = icmp slt i32 %29, %30
  br i1 %cmp20, label %for.body21, label %for.end171

for.body21:                                       ; preds = %for.cond19
  %31 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %x, align 8, !tbaa !27
  %33 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom22 = sext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds double, ptr %32, i64 %idxprom22
  %34 = load double, ptr %arrayidx23, align 8, !tbaa !4
  store double %34, ptr %original_displacement, align 8, !tbaa !4
  %35 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %35, i32 0, i32 15
  %36 = load double, ptr %epsilon, align 8, !tbaa !28
  %37 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x24 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %x24, align 8, !tbaa !27
  %39 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom25 = sext i32 %39 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %38, i64 %idxprom25
  %40 = load double, ptr %arrayidx26, align 8, !tbaa !4
  %add27 = fadd double %40, %36
  store double %add27, ptr %arrayidx26, align 8, !tbaa !4
  %41 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %42 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %43 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %44 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call = call i32 @line_solve_sequence(ptr noundef %41, ptr noundef %42, float noundef 0.000000e+00, ptr noundef %43, ptr noundef %44)
  store i32 %call, ptr %success, align 4, !tbaa !10
  %45 = load i32, ptr %success, align 4, !tbaa !10
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body21
  %46 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %47 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %48 = load i32, ptr %j, align 4, !tbaa !11
  %add28 = add nsw i32 %48, 1
  %49 = load i32, ptr %i, align 4, !tbaa !11
  %mul29 = mul nsw i32 3, %49
  %50 = load i32, ptr %j, align 4, !tbaa !11
  %mul30 = mul nsw i32 3, %50
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %46, ptr noundef %47, i32 noundef 78, ptr noundef @.str.2, i32 noundef %add28, i32 noundef %mul29, i32 noundef %mul30)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body21
  %51 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect31 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %51, i32 0, i32 21
  %52 = load ptr, ptr %Fx_connect31, align 8, !tbaa !15
  %53 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom32 = sext i32 %53 to i64
  %arrayidx33 = getelementptr inbounds double, ptr %52, i64 %idxprom32
  %54 = load double, ptr %arrayidx33, align 8, !tbaa !4
  %55 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %jac, align 8, !tbaa !24
  %57 = load i32, ptr %i, align 4, !tbaa !11
  %mul34 = mul nsw i32 3, %57
  %idxprom35 = sext i32 %mul34 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %56, i64 %idxprom35
  %58 = load ptr, ptr %arrayidx36, align 8, !tbaa !8
  %59 = load i32, ptr %j, align 4, !tbaa !11
  %mul37 = mul nsw i32 3, %59
  %idxprom38 = sext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %58, i64 %idxprom38
  store double %54, ptr %arrayidx39, align 8, !tbaa !4
  %60 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect40 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %60, i32 0, i32 23
  %61 = load ptr, ptr %Fy_connect40, align 8, !tbaa !20
  %62 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom41 = sext i32 %62 to i64
  %arrayidx42 = getelementptr inbounds double, ptr %61, i64 %idxprom41
  %63 = load double, ptr %arrayidx42, align 8, !tbaa !4
  %64 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac43 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %64, i32 0, i32 4
  %65 = load ptr, ptr %jac43, align 8, !tbaa !24
  %66 = load i32, ptr %i, align 4, !tbaa !11
  %mul44 = mul nsw i32 3, %66
  %add45 = add nsw i32 %mul44, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %65, i64 %idxprom46
  %67 = load ptr, ptr %arrayidx47, align 8, !tbaa !8
  %68 = load i32, ptr %j, align 4, !tbaa !11
  %mul48 = mul nsw i32 3, %68
  %idxprom49 = sext i32 %mul48 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %67, i64 %idxprom49
  store double %63, ptr %arrayidx50, align 8, !tbaa !4
  %69 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect51 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %69, i32 0, i32 25
  %70 = load ptr, ptr %Fz_connect51, align 8, !tbaa !21
  %71 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom52 = sext i32 %71 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %70, i64 %idxprom52
  %72 = load double, ptr %arrayidx53, align 8, !tbaa !4
  %73 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac54 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %73, i32 0, i32 4
  %74 = load ptr, ptr %jac54, align 8, !tbaa !24
  %75 = load i32, ptr %i, align 4, !tbaa !11
  %mul55 = mul nsw i32 3, %75
  %add56 = add nsw i32 %mul55, 2
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %74, i64 %idxprom57
  %76 = load ptr, ptr %arrayidx58, align 8, !tbaa !8
  %77 = load i32, ptr %j, align 4, !tbaa !11
  %mul59 = mul nsw i32 3, %77
  %idxprom60 = sext i32 %mul59 to i64
  %arrayidx61 = getelementptr inbounds double, ptr %76, i64 %idxprom60
  store double %72, ptr %arrayidx61, align 8, !tbaa !4
  %78 = load double, ptr %original_displacement, align 8, !tbaa !4
  %79 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x62 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %79, i32 0, i32 5
  %80 = load ptr, ptr %x62, align 8, !tbaa !27
  %81 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom63 = sext i32 %81 to i64
  %arrayidx64 = getelementptr inbounds double, ptr %80, i64 %idxprom63
  store double %78, ptr %arrayidx64, align 8, !tbaa !4
  %82 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %82, i32 0, i32 7
  %83 = load ptr, ptr %y, align 8, !tbaa !29
  %84 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom65 = sext i32 %84 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %83, i64 %idxprom65
  %85 = load double, ptr %arrayidx66, align 8, !tbaa !4
  store double %85, ptr %original_displacement, align 8, !tbaa !4
  %86 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon67 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %86, i32 0, i32 15
  %87 = load double, ptr %epsilon67, align 8, !tbaa !28
  %88 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y68 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %88, i32 0, i32 7
  %89 = load ptr, ptr %y68, align 8, !tbaa !29
  %90 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom69 = sext i32 %90 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %89, i64 %idxprom69
  %91 = load double, ptr %arrayidx70, align 8, !tbaa !4
  %add71 = fadd double %91, %87
  store double %add71, ptr %arrayidx70, align 8, !tbaa !4
  %92 = load i32, ptr %success, align 4, !tbaa !10
  %tobool72 = icmp ne i32 %92, 0
  br i1 %tobool72, label %if.then73, label %if.end77

if.then73:                                        ; preds = %if.end
  %93 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %94 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %95 = load i32, ptr %j, align 4, !tbaa !11
  %add74 = add nsw i32 %95, 1
  %96 = load i32, ptr %i, align 4, !tbaa !11
  %mul75 = mul nsw i32 3, %96
  %97 = load i32, ptr %j, align 4, !tbaa !11
  %mul76 = mul nsw i32 3, %97
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %93, ptr noundef %94, i32 noundef 78, ptr noundef @.str.2, i32 noundef %add74, i32 noundef %mul75, i32 noundef %mul76)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end
  %98 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %99 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %100 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %101 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call78 = call i32 @line_solve_sequence(ptr noundef %98, ptr noundef %99, float noundef 0.000000e+00, ptr noundef %100, ptr noundef %101)
  store i32 %call78, ptr %success, align 4, !tbaa !10
  %102 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect79 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %102, i32 0, i32 21
  %103 = load ptr, ptr %Fx_connect79, align 8, !tbaa !15
  %104 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom80 = sext i32 %104 to i64
  %arrayidx81 = getelementptr inbounds double, ptr %103, i64 %idxprom80
  %105 = load double, ptr %arrayidx81, align 8, !tbaa !4
  %106 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac82 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %106, i32 0, i32 4
  %107 = load ptr, ptr %jac82, align 8, !tbaa !24
  %108 = load i32, ptr %i, align 4, !tbaa !11
  %mul83 = mul nsw i32 3, %108
  %idxprom84 = sext i32 %mul83 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %107, i64 %idxprom84
  %109 = load ptr, ptr %arrayidx85, align 8, !tbaa !8
  %110 = load i32, ptr %j, align 4, !tbaa !11
  %mul86 = mul nsw i32 3, %110
  %add87 = add nsw i32 %mul86, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %109, i64 %idxprom88
  store double %105, ptr %arrayidx89, align 8, !tbaa !4
  %111 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect90 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %111, i32 0, i32 23
  %112 = load ptr, ptr %Fy_connect90, align 8, !tbaa !20
  %113 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom91 = sext i32 %113 to i64
  %arrayidx92 = getelementptr inbounds double, ptr %112, i64 %idxprom91
  %114 = load double, ptr %arrayidx92, align 8, !tbaa !4
  %115 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac93 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %115, i32 0, i32 4
  %116 = load ptr, ptr %jac93, align 8, !tbaa !24
  %117 = load i32, ptr %i, align 4, !tbaa !11
  %mul94 = mul nsw i32 3, %117
  %add95 = add nsw i32 %mul94, 1
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds ptr, ptr %116, i64 %idxprom96
  %118 = load ptr, ptr %arrayidx97, align 8, !tbaa !8
  %119 = load i32, ptr %j, align 4, !tbaa !11
  %mul98 = mul nsw i32 3, %119
  %add99 = add nsw i32 %mul98, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %118, i64 %idxprom100
  store double %114, ptr %arrayidx101, align 8, !tbaa !4
  %120 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect102 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %120, i32 0, i32 25
  %121 = load ptr, ptr %Fz_connect102, align 8, !tbaa !21
  %122 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom103 = sext i32 %122 to i64
  %arrayidx104 = getelementptr inbounds double, ptr %121, i64 %idxprom103
  %123 = load double, ptr %arrayidx104, align 8, !tbaa !4
  %124 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac105 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %124, i32 0, i32 4
  %125 = load ptr, ptr %jac105, align 8, !tbaa !24
  %126 = load i32, ptr %i, align 4, !tbaa !11
  %mul106 = mul nsw i32 3, %126
  %add107 = add nsw i32 %mul106, 2
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds ptr, ptr %125, i64 %idxprom108
  %127 = load ptr, ptr %arrayidx109, align 8, !tbaa !8
  %128 = load i32, ptr %j, align 4, !tbaa !11
  %mul110 = mul nsw i32 3, %128
  %add111 = add nsw i32 %mul110, 1
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds double, ptr %127, i64 %idxprom112
  store double %123, ptr %arrayidx113, align 8, !tbaa !4
  %129 = load double, ptr %original_displacement, align 8, !tbaa !4
  %130 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y114 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %130, i32 0, i32 7
  %131 = load ptr, ptr %y114, align 8, !tbaa !29
  %132 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom115 = sext i32 %132 to i64
  %arrayidx116 = getelementptr inbounds double, ptr %131, i64 %idxprom115
  store double %129, ptr %arrayidx116, align 8, !tbaa !4
  %133 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %133, i32 0, i32 9
  %134 = load ptr, ptr %z, align 8, !tbaa !30
  %135 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom117 = sext i32 %135 to i64
  %arrayidx118 = getelementptr inbounds double, ptr %134, i64 %idxprom117
  %136 = load double, ptr %arrayidx118, align 8, !tbaa !4
  store double %136, ptr %original_displacement, align 8, !tbaa !4
  %137 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon119 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %137, i32 0, i32 15
  %138 = load double, ptr %epsilon119, align 8, !tbaa !28
  %139 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z120 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %139, i32 0, i32 9
  %140 = load ptr, ptr %z120, align 8, !tbaa !30
  %141 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom121 = sext i32 %141 to i64
  %arrayidx122 = getelementptr inbounds double, ptr %140, i64 %idxprom121
  %142 = load double, ptr %arrayidx122, align 8, !tbaa !4
  %add123 = fadd double %142, %138
  store double %add123, ptr %arrayidx122, align 8, !tbaa !4
  %143 = load i32, ptr %success, align 4, !tbaa !10
  %tobool124 = icmp ne i32 %143, 0
  br i1 %tobool124, label %if.then125, label %if.end129

if.then125:                                       ; preds = %if.end77
  %144 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %145 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %146 = load i32, ptr %j, align 4, !tbaa !11
  %add126 = add nsw i32 %146, 1
  %147 = load i32, ptr %i, align 4, !tbaa !11
  %mul127 = mul nsw i32 3, %147
  %148 = load i32, ptr %j, align 4, !tbaa !11
  %mul128 = mul nsw i32 3, %148
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %144, ptr noundef %145, i32 noundef 78, ptr noundef @.str.2, i32 noundef %add126, i32 noundef %mul127, i32 noundef %mul128)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end129:                                        ; preds = %if.end77
  %149 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %150 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %151 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %152 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call130 = call i32 @line_solve_sequence(ptr noundef %149, ptr noundef %150, float noundef 0.000000e+00, ptr noundef %151, ptr noundef %152)
  store i32 %call130, ptr %success, align 4, !tbaa !10
  %153 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect131 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %153, i32 0, i32 21
  %154 = load ptr, ptr %Fx_connect131, align 8, !tbaa !15
  %155 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom132 = sext i32 %155 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %154, i64 %idxprom132
  %156 = load double, ptr %arrayidx133, align 8, !tbaa !4
  %157 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac134 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %157, i32 0, i32 4
  %158 = load ptr, ptr %jac134, align 8, !tbaa !24
  %159 = load i32, ptr %i, align 4, !tbaa !11
  %mul135 = mul nsw i32 3, %159
  %idxprom136 = sext i32 %mul135 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %158, i64 %idxprom136
  %160 = load ptr, ptr %arrayidx137, align 8, !tbaa !8
  %161 = load i32, ptr %j, align 4, !tbaa !11
  %mul138 = mul nsw i32 3, %161
  %add139 = add nsw i32 %mul138, 2
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds double, ptr %160, i64 %idxprom140
  store double %156, ptr %arrayidx141, align 8, !tbaa !4
  %162 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect142 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %162, i32 0, i32 23
  %163 = load ptr, ptr %Fy_connect142, align 8, !tbaa !20
  %164 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom143 = sext i32 %164 to i64
  %arrayidx144 = getelementptr inbounds double, ptr %163, i64 %idxprom143
  %165 = load double, ptr %arrayidx144, align 8, !tbaa !4
  %166 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac145 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %166, i32 0, i32 4
  %167 = load ptr, ptr %jac145, align 8, !tbaa !24
  %168 = load i32, ptr %i, align 4, !tbaa !11
  %mul146 = mul nsw i32 3, %168
  %add147 = add nsw i32 %mul146, 1
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds ptr, ptr %167, i64 %idxprom148
  %169 = load ptr, ptr %arrayidx149, align 8, !tbaa !8
  %170 = load i32, ptr %j, align 4, !tbaa !11
  %mul150 = mul nsw i32 3, %170
  %add151 = add nsw i32 %mul150, 2
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds double, ptr %169, i64 %idxprom152
  store double %165, ptr %arrayidx153, align 8, !tbaa !4
  %171 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect154 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %171, i32 0, i32 25
  %172 = load ptr, ptr %Fz_connect154, align 8, !tbaa !21
  %173 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom155 = sext i32 %173 to i64
  %arrayidx156 = getelementptr inbounds double, ptr %172, i64 %idxprom155
  %174 = load double, ptr %arrayidx156, align 8, !tbaa !4
  %175 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac157 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %175, i32 0, i32 4
  %176 = load ptr, ptr %jac157, align 8, !tbaa !24
  %177 = load i32, ptr %i, align 4, !tbaa !11
  %mul158 = mul nsw i32 3, %177
  %add159 = add nsw i32 %mul158, 2
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds ptr, ptr %176, i64 %idxprom160
  %178 = load ptr, ptr %arrayidx161, align 8, !tbaa !8
  %179 = load i32, ptr %j, align 4, !tbaa !11
  %mul162 = mul nsw i32 3, %179
  %add163 = add nsw i32 %mul162, 2
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds double, ptr %178, i64 %idxprom164
  store double %174, ptr %arrayidx165, align 8, !tbaa !4
  %180 = load double, ptr %original_displacement, align 8, !tbaa !4
  %181 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z166 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %181, i32 0, i32 9
  %182 = load ptr, ptr %z166, align 8, !tbaa !30
  %183 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom167 = sext i32 %183 to i64
  %arrayidx168 = getelementptr inbounds double, ptr %182, i64 %idxprom167
  store double %180, ptr %arrayidx168, align 8, !tbaa !4
  br label %for.inc169

for.inc169:                                       ; preds = %if.end129
  %184 = load i32, ptr %i, align 4, !tbaa !11
  %inc170 = add nsw i32 %184, 1
  store i32 %inc170, ptr %i, align 4, !tbaa !11
  br label %for.cond19, !llvm.loop !47

for.end171:                                       ; preds = %for.cond19
  br label %for.inc172

for.inc172:                                       ; preds = %for.end171
  %185 = load i32, ptr %j, align 4, !tbaa !11
  %inc173 = add nsw i32 %185, 1
  store i32 %inc173, ptr %j, align 4, !tbaa !11
  br label %for.cond16, !llvm.loop !48

for.end174:                                       ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !11
  br label %for.cond175

for.cond175:                                      ; preds = %for.inc449, %for.end174
  %186 = load i32, ptr %j, align 4, !tbaa !11
  %187 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp176 = icmp slt i32 %186, %187
  br i1 %cmp176, label %for.body177, label %for.end451

for.body177:                                      ; preds = %for.cond175
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc446, %for.body177
  %188 = load i32, ptr %i, align 4, !tbaa !11
  %189 = load i32, ptr %z_size, align 4, !tbaa !11
  %cmp179 = icmp slt i32 %188, %189
  br i1 %cmp179, label %for.body180, label %for.end448

for.body180:                                      ; preds = %for.cond178
  %190 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x181 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %190, i32 0, i32 5
  %191 = load ptr, ptr %x181, align 8, !tbaa !27
  %192 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom182 = sext i32 %192 to i64
  %arrayidx183 = getelementptr inbounds double, ptr %191, i64 %idxprom182
  %193 = load double, ptr %arrayidx183, align 8, !tbaa !4
  store double %193, ptr %original_displacement, align 8, !tbaa !4
  %194 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon184 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %194, i32 0, i32 15
  %195 = load double, ptr %epsilon184, align 8, !tbaa !28
  %196 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x185 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %196, i32 0, i32 5
  %197 = load ptr, ptr %x185, align 8, !tbaa !27
  %198 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom186 = sext i32 %198 to i64
  %arrayidx187 = getelementptr inbounds double, ptr %197, i64 %idxprom186
  %199 = load double, ptr %arrayidx187, align 8, !tbaa !4
  %sub = fsub double %199, %195
  store double %sub, ptr %arrayidx187, align 8, !tbaa !4
  %200 = load i32, ptr %success, align 4, !tbaa !10
  %tobool188 = icmp ne i32 %200, 0
  br i1 %tobool188, label %if.then189, label %if.end193

if.then189:                                       ; preds = %for.body180
  %201 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %202 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %203 = load i32, ptr %j, align 4, !tbaa !11
  %add190 = add nsw i32 %203, 1
  %204 = load i32, ptr %i, align 4, !tbaa !11
  %mul191 = mul nsw i32 3, %204
  %205 = load i32, ptr %j, align 4, !tbaa !11
  %mul192 = mul nsw i32 3, %205
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %201, ptr noundef %202, i32 noundef 78, ptr noundef @.str.2, i32 noundef %add190, i32 noundef %mul191, i32 noundef %mul192)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end193:                                        ; preds = %for.body180
  %206 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %207 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %208 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %209 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call194 = call i32 @line_solve_sequence(ptr noundef %206, ptr noundef %207, float noundef 0.000000e+00, ptr noundef %208, ptr noundef %209)
  store i32 %call194, ptr %success, align 4, !tbaa !10
  %210 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect195 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %210, i32 0, i32 21
  %211 = load ptr, ptr %Fx_connect195, align 8, !tbaa !15
  %212 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom196 = sext i32 %212 to i64
  %arrayidx197 = getelementptr inbounds double, ptr %211, i64 %idxprom196
  %213 = load double, ptr %arrayidx197, align 8, !tbaa !4
  %214 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac198 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %214, i32 0, i32 4
  %215 = load ptr, ptr %jac198, align 8, !tbaa !24
  %216 = load i32, ptr %i, align 4, !tbaa !11
  %mul199 = mul nsw i32 3, %216
  %idxprom200 = sext i32 %mul199 to i64
  %arrayidx201 = getelementptr inbounds ptr, ptr %215, i64 %idxprom200
  %217 = load ptr, ptr %arrayidx201, align 8, !tbaa !8
  %218 = load i32, ptr %j, align 4, !tbaa !11
  %mul202 = mul nsw i32 3, %218
  %idxprom203 = sext i32 %mul202 to i64
  %arrayidx204 = getelementptr inbounds double, ptr %217, i64 %idxprom203
  %219 = load double, ptr %arrayidx204, align 8, !tbaa !4
  %sub205 = fsub double %219, %213
  store double %sub205, ptr %arrayidx204, align 8, !tbaa !4
  %220 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon206 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %220, i32 0, i32 15
  %221 = load double, ptr %epsilon206, align 8, !tbaa !28
  %mul207 = fmul double 2.000000e+00, %221
  %222 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac208 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %222, i32 0, i32 4
  %223 = load ptr, ptr %jac208, align 8, !tbaa !24
  %224 = load i32, ptr %i, align 4, !tbaa !11
  %mul209 = mul nsw i32 3, %224
  %idxprom210 = sext i32 %mul209 to i64
  %arrayidx211 = getelementptr inbounds ptr, ptr %223, i64 %idxprom210
  %225 = load ptr, ptr %arrayidx211, align 8, !tbaa !8
  %226 = load i32, ptr %j, align 4, !tbaa !11
  %mul212 = mul nsw i32 3, %226
  %idxprom213 = sext i32 %mul212 to i64
  %arrayidx214 = getelementptr inbounds double, ptr %225, i64 %idxprom213
  %227 = load double, ptr %arrayidx214, align 8, !tbaa !4
  %div = fdiv double %227, %mul207
  store double %div, ptr %arrayidx214, align 8, !tbaa !4
  %228 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect215 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %228, i32 0, i32 23
  %229 = load ptr, ptr %Fy_connect215, align 8, !tbaa !20
  %230 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom216 = sext i32 %230 to i64
  %arrayidx217 = getelementptr inbounds double, ptr %229, i64 %idxprom216
  %231 = load double, ptr %arrayidx217, align 8, !tbaa !4
  %232 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac218 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %232, i32 0, i32 4
  %233 = load ptr, ptr %jac218, align 8, !tbaa !24
  %234 = load i32, ptr %i, align 4, !tbaa !11
  %mul219 = mul nsw i32 3, %234
  %add220 = add nsw i32 %mul219, 1
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds ptr, ptr %233, i64 %idxprom221
  %235 = load ptr, ptr %arrayidx222, align 8, !tbaa !8
  %236 = load i32, ptr %j, align 4, !tbaa !11
  %mul223 = mul nsw i32 3, %236
  %idxprom224 = sext i32 %mul223 to i64
  %arrayidx225 = getelementptr inbounds double, ptr %235, i64 %idxprom224
  %237 = load double, ptr %arrayidx225, align 8, !tbaa !4
  %sub226 = fsub double %237, %231
  store double %sub226, ptr %arrayidx225, align 8, !tbaa !4
  %238 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon227 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %238, i32 0, i32 15
  %239 = load double, ptr %epsilon227, align 8, !tbaa !28
  %mul228 = fmul double 2.000000e+00, %239
  %240 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac229 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %240, i32 0, i32 4
  %241 = load ptr, ptr %jac229, align 8, !tbaa !24
  %242 = load i32, ptr %i, align 4, !tbaa !11
  %mul230 = mul nsw i32 3, %242
  %add231 = add nsw i32 %mul230, 1
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds ptr, ptr %241, i64 %idxprom232
  %243 = load ptr, ptr %arrayidx233, align 8, !tbaa !8
  %244 = load i32, ptr %j, align 4, !tbaa !11
  %mul234 = mul nsw i32 3, %244
  %idxprom235 = sext i32 %mul234 to i64
  %arrayidx236 = getelementptr inbounds double, ptr %243, i64 %idxprom235
  %245 = load double, ptr %arrayidx236, align 8, !tbaa !4
  %div237 = fdiv double %245, %mul228
  store double %div237, ptr %arrayidx236, align 8, !tbaa !4
  %246 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect238 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %246, i32 0, i32 25
  %247 = load ptr, ptr %Fz_connect238, align 8, !tbaa !21
  %248 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom239 = sext i32 %248 to i64
  %arrayidx240 = getelementptr inbounds double, ptr %247, i64 %idxprom239
  %249 = load double, ptr %arrayidx240, align 8, !tbaa !4
  %250 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac241 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %250, i32 0, i32 4
  %251 = load ptr, ptr %jac241, align 8, !tbaa !24
  %252 = load i32, ptr %i, align 4, !tbaa !11
  %mul242 = mul nsw i32 3, %252
  %add243 = add nsw i32 %mul242, 2
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds ptr, ptr %251, i64 %idxprom244
  %253 = load ptr, ptr %arrayidx245, align 8, !tbaa !8
  %254 = load i32, ptr %j, align 4, !tbaa !11
  %mul246 = mul nsw i32 3, %254
  %idxprom247 = sext i32 %mul246 to i64
  %arrayidx248 = getelementptr inbounds double, ptr %253, i64 %idxprom247
  %255 = load double, ptr %arrayidx248, align 8, !tbaa !4
  %sub249 = fsub double %255, %249
  store double %sub249, ptr %arrayidx248, align 8, !tbaa !4
  %256 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon250 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %256, i32 0, i32 15
  %257 = load double, ptr %epsilon250, align 8, !tbaa !28
  %mul251 = fmul double 2.000000e+00, %257
  %258 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac252 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %258, i32 0, i32 4
  %259 = load ptr, ptr %jac252, align 8, !tbaa !24
  %260 = load i32, ptr %i, align 4, !tbaa !11
  %mul253 = mul nsw i32 3, %260
  %add254 = add nsw i32 %mul253, 2
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds ptr, ptr %259, i64 %idxprom255
  %261 = load ptr, ptr %arrayidx256, align 8, !tbaa !8
  %262 = load i32, ptr %j, align 4, !tbaa !11
  %mul257 = mul nsw i32 3, %262
  %idxprom258 = sext i32 %mul257 to i64
  %arrayidx259 = getelementptr inbounds double, ptr %261, i64 %idxprom258
  %263 = load double, ptr %arrayidx259, align 8, !tbaa !4
  %div260 = fdiv double %263, %mul251
  store double %div260, ptr %arrayidx259, align 8, !tbaa !4
  %264 = load double, ptr %original_displacement, align 8, !tbaa !4
  %265 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %x261 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %265, i32 0, i32 5
  %266 = load ptr, ptr %x261, align 8, !tbaa !27
  %267 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom262 = sext i32 %267 to i64
  %arrayidx263 = getelementptr inbounds double, ptr %266, i64 %idxprom262
  store double %264, ptr %arrayidx263, align 8, !tbaa !4
  %268 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y264 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %268, i32 0, i32 7
  %269 = load ptr, ptr %y264, align 8, !tbaa !29
  %270 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom265 = sext i32 %270 to i64
  %arrayidx266 = getelementptr inbounds double, ptr %269, i64 %idxprom265
  %271 = load double, ptr %arrayidx266, align 8, !tbaa !4
  store double %271, ptr %original_displacement, align 8, !tbaa !4
  %272 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon267 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %272, i32 0, i32 15
  %273 = load double, ptr %epsilon267, align 8, !tbaa !28
  %274 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y268 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %274, i32 0, i32 7
  %275 = load ptr, ptr %y268, align 8, !tbaa !29
  %276 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom269 = sext i32 %276 to i64
  %arrayidx270 = getelementptr inbounds double, ptr %275, i64 %idxprom269
  %277 = load double, ptr %arrayidx270, align 8, !tbaa !4
  %sub271 = fsub double %277, %273
  store double %sub271, ptr %arrayidx270, align 8, !tbaa !4
  %278 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %279 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %280 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %281 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call272 = call i32 @line_solve_sequence(ptr noundef %278, ptr noundef %279, float noundef 0.000000e+00, ptr noundef %280, ptr noundef %281)
  store i32 %call272, ptr %success, align 4, !tbaa !10
  %282 = load i32, ptr %success, align 4, !tbaa !10
  %tobool273 = icmp ne i32 %282, 0
  br i1 %tobool273, label %if.then274, label %if.end278

if.then274:                                       ; preds = %if.end193
  %283 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %284 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %285 = load i32, ptr %j, align 4, !tbaa !11
  %add275 = add nsw i32 %285, 1
  %286 = load i32, ptr %i, align 4, !tbaa !11
  %mul276 = mul nsw i32 3, %286
  %287 = load i32, ptr %j, align 4, !tbaa !11
  %mul277 = mul nsw i32 3, %287
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %283, ptr noundef %284, i32 noundef 78, ptr noundef @.str.2, i32 noundef %add275, i32 noundef %mul276, i32 noundef %mul277)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end278:                                        ; preds = %if.end193
  %288 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect279 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %288, i32 0, i32 21
  %289 = load ptr, ptr %Fx_connect279, align 8, !tbaa !15
  %290 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom280 = sext i32 %290 to i64
  %arrayidx281 = getelementptr inbounds double, ptr %289, i64 %idxprom280
  %291 = load double, ptr %arrayidx281, align 8, !tbaa !4
  %292 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac282 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %292, i32 0, i32 4
  %293 = load ptr, ptr %jac282, align 8, !tbaa !24
  %294 = load i32, ptr %i, align 4, !tbaa !11
  %mul283 = mul nsw i32 3, %294
  %idxprom284 = sext i32 %mul283 to i64
  %arrayidx285 = getelementptr inbounds ptr, ptr %293, i64 %idxprom284
  %295 = load ptr, ptr %arrayidx285, align 8, !tbaa !8
  %296 = load i32, ptr %j, align 4, !tbaa !11
  %mul286 = mul nsw i32 3, %296
  %add287 = add nsw i32 %mul286, 1
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds double, ptr %295, i64 %idxprom288
  %297 = load double, ptr %arrayidx289, align 8, !tbaa !4
  %sub290 = fsub double %297, %291
  store double %sub290, ptr %arrayidx289, align 8, !tbaa !4
  %298 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon291 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %298, i32 0, i32 15
  %299 = load double, ptr %epsilon291, align 8, !tbaa !28
  %mul292 = fmul double 2.000000e+00, %299
  %300 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac293 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %300, i32 0, i32 4
  %301 = load ptr, ptr %jac293, align 8, !tbaa !24
  %302 = load i32, ptr %i, align 4, !tbaa !11
  %mul294 = mul nsw i32 3, %302
  %idxprom295 = sext i32 %mul294 to i64
  %arrayidx296 = getelementptr inbounds ptr, ptr %301, i64 %idxprom295
  %303 = load ptr, ptr %arrayidx296, align 8, !tbaa !8
  %304 = load i32, ptr %j, align 4, !tbaa !11
  %mul297 = mul nsw i32 3, %304
  %add298 = add nsw i32 %mul297, 1
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds double, ptr %303, i64 %idxprom299
  %305 = load double, ptr %arrayidx300, align 8, !tbaa !4
  %div301 = fdiv double %305, %mul292
  store double %div301, ptr %arrayidx300, align 8, !tbaa !4
  %306 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect302 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %306, i32 0, i32 23
  %307 = load ptr, ptr %Fy_connect302, align 8, !tbaa !20
  %308 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom303 = sext i32 %308 to i64
  %arrayidx304 = getelementptr inbounds double, ptr %307, i64 %idxprom303
  %309 = load double, ptr %arrayidx304, align 8, !tbaa !4
  %310 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac305 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %310, i32 0, i32 4
  %311 = load ptr, ptr %jac305, align 8, !tbaa !24
  %312 = load i32, ptr %i, align 4, !tbaa !11
  %mul306 = mul nsw i32 3, %312
  %add307 = add nsw i32 %mul306, 1
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds ptr, ptr %311, i64 %idxprom308
  %313 = load ptr, ptr %arrayidx309, align 8, !tbaa !8
  %314 = load i32, ptr %j, align 4, !tbaa !11
  %mul310 = mul nsw i32 3, %314
  %add311 = add nsw i32 %mul310, 1
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds double, ptr %313, i64 %idxprom312
  %315 = load double, ptr %arrayidx313, align 8, !tbaa !4
  %sub314 = fsub double %315, %309
  store double %sub314, ptr %arrayidx313, align 8, !tbaa !4
  %316 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon315 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %316, i32 0, i32 15
  %317 = load double, ptr %epsilon315, align 8, !tbaa !28
  %mul316 = fmul double 2.000000e+00, %317
  %318 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac317 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %318, i32 0, i32 4
  %319 = load ptr, ptr %jac317, align 8, !tbaa !24
  %320 = load i32, ptr %i, align 4, !tbaa !11
  %mul318 = mul nsw i32 3, %320
  %add319 = add nsw i32 %mul318, 1
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds ptr, ptr %319, i64 %idxprom320
  %321 = load ptr, ptr %arrayidx321, align 8, !tbaa !8
  %322 = load i32, ptr %j, align 4, !tbaa !11
  %mul322 = mul nsw i32 3, %322
  %add323 = add nsw i32 %mul322, 1
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds double, ptr %321, i64 %idxprom324
  %323 = load double, ptr %arrayidx325, align 8, !tbaa !4
  %div326 = fdiv double %323, %mul316
  store double %div326, ptr %arrayidx325, align 8, !tbaa !4
  %324 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect327 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %324, i32 0, i32 25
  %325 = load ptr, ptr %Fz_connect327, align 8, !tbaa !21
  %326 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom328 = sext i32 %326 to i64
  %arrayidx329 = getelementptr inbounds double, ptr %325, i64 %idxprom328
  %327 = load double, ptr %arrayidx329, align 8, !tbaa !4
  %328 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac330 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %328, i32 0, i32 4
  %329 = load ptr, ptr %jac330, align 8, !tbaa !24
  %330 = load i32, ptr %i, align 4, !tbaa !11
  %mul331 = mul nsw i32 3, %330
  %add332 = add nsw i32 %mul331, 2
  %idxprom333 = sext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds ptr, ptr %329, i64 %idxprom333
  %331 = load ptr, ptr %arrayidx334, align 8, !tbaa !8
  %332 = load i32, ptr %j, align 4, !tbaa !11
  %mul335 = mul nsw i32 3, %332
  %add336 = add nsw i32 %mul335, 1
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds double, ptr %331, i64 %idxprom337
  %333 = load double, ptr %arrayidx338, align 8, !tbaa !4
  %sub339 = fsub double %333, %327
  store double %sub339, ptr %arrayidx338, align 8, !tbaa !4
  %334 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon340 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %334, i32 0, i32 15
  %335 = load double, ptr %epsilon340, align 8, !tbaa !28
  %mul341 = fmul double 2.000000e+00, %335
  %336 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac342 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %336, i32 0, i32 4
  %337 = load ptr, ptr %jac342, align 8, !tbaa !24
  %338 = load i32, ptr %i, align 4, !tbaa !11
  %mul343 = mul nsw i32 3, %338
  %add344 = add nsw i32 %mul343, 2
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds ptr, ptr %337, i64 %idxprom345
  %339 = load ptr, ptr %arrayidx346, align 8, !tbaa !8
  %340 = load i32, ptr %j, align 4, !tbaa !11
  %mul347 = mul nsw i32 3, %340
  %add348 = add nsw i32 %mul347, 1
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds double, ptr %339, i64 %idxprom349
  %341 = load double, ptr %arrayidx350, align 8, !tbaa !4
  %div351 = fdiv double %341, %mul341
  store double %div351, ptr %arrayidx350, align 8, !tbaa !4
  %342 = load double, ptr %original_displacement, align 8, !tbaa !4
  %343 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %y352 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %343, i32 0, i32 7
  %344 = load ptr, ptr %y352, align 8, !tbaa !29
  %345 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom353 = sext i32 %345 to i64
  %arrayidx354 = getelementptr inbounds double, ptr %344, i64 %idxprom353
  store double %342, ptr %arrayidx354, align 8, !tbaa !4
  %346 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z355 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %346, i32 0, i32 9
  %347 = load ptr, ptr %z355, align 8, !tbaa !30
  %348 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom356 = sext i32 %348 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %347, i64 %idxprom356
  %349 = load double, ptr %arrayidx357, align 8, !tbaa !4
  store double %349, ptr %original_displacement, align 8, !tbaa !4
  %350 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon358 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %350, i32 0, i32 15
  %351 = load double, ptr %epsilon358, align 8, !tbaa !28
  %352 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z359 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %352, i32 0, i32 9
  %353 = load ptr, ptr %z359, align 8, !tbaa !30
  %354 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom360 = sext i32 %354 to i64
  %arrayidx361 = getelementptr inbounds double, ptr %353, i64 %idxprom360
  %355 = load double, ptr %arrayidx361, align 8, !tbaa !4
  %sub362 = fsub double %355, %351
  store double %sub362, ptr %arrayidx361, align 8, !tbaa !4
  %356 = load ptr, ptr %domain.addr, align 8, !tbaa !8
  %357 = load ptr, ptr %p_type.addr, align 8, !tbaa !8
  %358 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %359 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %call363 = call i32 @line_solve_sequence(ptr noundef %356, ptr noundef %357, float noundef 0.000000e+00, ptr noundef %358, ptr noundef %359)
  store i32 %call363, ptr %success, align 4, !tbaa !10
  %360 = load i32, ptr %success, align 4, !tbaa !10
  %tobool364 = icmp ne i32 %360, 0
  br i1 %tobool364, label %if.then365, label %if.end369

if.then365:                                       ; preds = %if.end278
  %361 = load ptr, ptr %map_msg.addr, align 8, !tbaa !8
  %362 = load ptr, ptr %ierr.addr, align 8, !tbaa !8
  %363 = load i32, ptr %j, align 4, !tbaa !11
  %add366 = add nsw i32 %363, 1
  %364 = load i32, ptr %i, align 4, !tbaa !11
  %mul367 = mul nsw i32 3, %364
  %365 = load i32, ptr %j, align 4, !tbaa !11
  %mul368 = mul nsw i32 3, %365
  call void (ptr, ptr, i32, ptr, ...) @set_universal_error_with_message(ptr noundef %361, ptr noundef %362, i32 noundef 78, ptr noundef @.str.2, i32 noundef %add366, i32 noundef %mul367, i32 noundef %mul368)
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end369:                                        ; preds = %if.end278
  %366 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fx_connect370 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %366, i32 0, i32 21
  %367 = load ptr, ptr %Fx_connect370, align 8, !tbaa !15
  %368 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom371 = sext i32 %368 to i64
  %arrayidx372 = getelementptr inbounds double, ptr %367, i64 %idxprom371
  %369 = load double, ptr %arrayidx372, align 8, !tbaa !4
  %370 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac373 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %370, i32 0, i32 4
  %371 = load ptr, ptr %jac373, align 8, !tbaa !24
  %372 = load i32, ptr %i, align 4, !tbaa !11
  %mul374 = mul nsw i32 3, %372
  %idxprom375 = sext i32 %mul374 to i64
  %arrayidx376 = getelementptr inbounds ptr, ptr %371, i64 %idxprom375
  %373 = load ptr, ptr %arrayidx376, align 8, !tbaa !8
  %374 = load i32, ptr %j, align 4, !tbaa !11
  %mul377 = mul nsw i32 3, %374
  %add378 = add nsw i32 %mul377, 2
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds double, ptr %373, i64 %idxprom379
  %375 = load double, ptr %arrayidx380, align 8, !tbaa !4
  %sub381 = fsub double %375, %369
  store double %sub381, ptr %arrayidx380, align 8, !tbaa !4
  %376 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon382 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %376, i32 0, i32 15
  %377 = load double, ptr %epsilon382, align 8, !tbaa !28
  %mul383 = fmul double 2.000000e+00, %377
  %378 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac384 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %378, i32 0, i32 4
  %379 = load ptr, ptr %jac384, align 8, !tbaa !24
  %380 = load i32, ptr %i, align 4, !tbaa !11
  %mul385 = mul nsw i32 3, %380
  %idxprom386 = sext i32 %mul385 to i64
  %arrayidx387 = getelementptr inbounds ptr, ptr %379, i64 %idxprom386
  %381 = load ptr, ptr %arrayidx387, align 8, !tbaa !8
  %382 = load i32, ptr %j, align 4, !tbaa !11
  %mul388 = mul nsw i32 3, %382
  %add389 = add nsw i32 %mul388, 2
  %idxprom390 = sext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds double, ptr %381, i64 %idxprom390
  %383 = load double, ptr %arrayidx391, align 8, !tbaa !4
  %div392 = fdiv double %383, %mul383
  store double %div392, ptr %arrayidx391, align 8, !tbaa !4
  %384 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fy_connect393 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %384, i32 0, i32 23
  %385 = load ptr, ptr %Fy_connect393, align 8, !tbaa !20
  %386 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom394 = sext i32 %386 to i64
  %arrayidx395 = getelementptr inbounds double, ptr %385, i64 %idxprom394
  %387 = load double, ptr %arrayidx395, align 8, !tbaa !4
  %388 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac396 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %388, i32 0, i32 4
  %389 = load ptr, ptr %jac396, align 8, !tbaa !24
  %390 = load i32, ptr %i, align 4, !tbaa !11
  %mul397 = mul nsw i32 3, %390
  %add398 = add nsw i32 %mul397, 1
  %idxprom399 = sext i32 %add398 to i64
  %arrayidx400 = getelementptr inbounds ptr, ptr %389, i64 %idxprom399
  %391 = load ptr, ptr %arrayidx400, align 8, !tbaa !8
  %392 = load i32, ptr %j, align 4, !tbaa !11
  %mul401 = mul nsw i32 3, %392
  %add402 = add nsw i32 %mul401, 2
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds double, ptr %391, i64 %idxprom403
  %393 = load double, ptr %arrayidx404, align 8, !tbaa !4
  %sub405 = fsub double %393, %387
  store double %sub405, ptr %arrayidx404, align 8, !tbaa !4
  %394 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon406 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %394, i32 0, i32 15
  %395 = load double, ptr %epsilon406, align 8, !tbaa !28
  %mul407 = fmul double 2.000000e+00, %395
  %396 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac408 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %396, i32 0, i32 4
  %397 = load ptr, ptr %jac408, align 8, !tbaa !24
  %398 = load i32, ptr %i, align 4, !tbaa !11
  %mul409 = mul nsw i32 3, %398
  %add410 = add nsw i32 %mul409, 1
  %idxprom411 = sext i32 %add410 to i64
  %arrayidx412 = getelementptr inbounds ptr, ptr %397, i64 %idxprom411
  %399 = load ptr, ptr %arrayidx412, align 8, !tbaa !8
  %400 = load i32, ptr %j, align 4, !tbaa !11
  %mul413 = mul nsw i32 3, %400
  %add414 = add nsw i32 %mul413, 2
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds double, ptr %399, i64 %idxprom415
  %401 = load double, ptr %arrayidx416, align 8, !tbaa !4
  %div417 = fdiv double %401, %mul407
  store double %div417, ptr %arrayidx416, align 8, !tbaa !4
  %402 = load ptr, ptr %other_type.addr, align 8, !tbaa !8
  %Fz_connect418 = getelementptr inbounds %struct.MAP_OtherStateType, ptr %402, i32 0, i32 25
  %403 = load ptr, ptr %Fz_connect418, align 8, !tbaa !21
  %404 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom419 = sext i32 %404 to i64
  %arrayidx420 = getelementptr inbounds double, ptr %403, i64 %idxprom419
  %405 = load double, ptr %arrayidx420, align 8, !tbaa !4
  %406 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac421 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %406, i32 0, i32 4
  %407 = load ptr, ptr %jac421, align 8, !tbaa !24
  %408 = load i32, ptr %i, align 4, !tbaa !11
  %mul422 = mul nsw i32 3, %408
  %add423 = add nsw i32 %mul422, 2
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds ptr, ptr %407, i64 %idxprom424
  %409 = load ptr, ptr %arrayidx425, align 8, !tbaa !8
  %410 = load i32, ptr %j, align 4, !tbaa !11
  %mul426 = mul nsw i32 3, %410
  %add427 = add nsw i32 %mul426, 2
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds double, ptr %409, i64 %idxprom428
  %411 = load double, ptr %arrayidx429, align 8, !tbaa !4
  %sub430 = fsub double %411, %405
  store double %sub430, ptr %arrayidx429, align 8, !tbaa !4
  %412 = load ptr, ptr %ns, align 8, !tbaa !8
  %epsilon431 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %412, i32 0, i32 15
  %413 = load double, ptr %epsilon431, align 8, !tbaa !28
  %mul432 = fmul double 2.000000e+00, %413
  %414 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac433 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %414, i32 0, i32 4
  %415 = load ptr, ptr %jac433, align 8, !tbaa !24
  %416 = load i32, ptr %i, align 4, !tbaa !11
  %mul434 = mul nsw i32 3, %416
  %add435 = add nsw i32 %mul434, 2
  %idxprom436 = sext i32 %add435 to i64
  %arrayidx437 = getelementptr inbounds ptr, ptr %415, i64 %idxprom436
  %417 = load ptr, ptr %arrayidx437, align 8, !tbaa !8
  %418 = load i32, ptr %j, align 4, !tbaa !11
  %mul438 = mul nsw i32 3, %418
  %add439 = add nsw i32 %mul438, 2
  %idxprom440 = sext i32 %add439 to i64
  %arrayidx441 = getelementptr inbounds double, ptr %417, i64 %idxprom440
  %419 = load double, ptr %arrayidx441, align 8, !tbaa !4
  %div442 = fdiv double %419, %mul432
  store double %div442, ptr %arrayidx441, align 8, !tbaa !4
  %420 = load double, ptr %original_displacement, align 8, !tbaa !4
  %421 = load ptr, ptr %z_type.addr, align 8, !tbaa !8
  %z443 = getelementptr inbounds %struct.MAP_ConstraintStateType, ptr %421, i32 0, i32 9
  %422 = load ptr, ptr %z443, align 8, !tbaa !30
  %423 = load i32, ptr %j, align 4, !tbaa !11
  %idxprom444 = sext i32 %423 to i64
  %arrayidx445 = getelementptr inbounds double, ptr %422, i64 %idxprom444
  store double %420, ptr %arrayidx445, align 8, !tbaa !4
  br label %for.inc446

for.inc446:                                       ; preds = %if.end369
  %424 = load i32, ptr %i, align 4, !tbaa !11
  %inc447 = add nsw i32 %424, 1
  store i32 %inc447, ptr %i, align 4, !tbaa !11
  br label %for.cond178, !llvm.loop !49

for.end448:                                       ; preds = %for.cond178
  br label %for.inc449

for.inc449:                                       ; preds = %for.end448
  %425 = load i32, ptr %j, align 4, !tbaa !11
  %inc450 = add nsw i32 %425, 1
  store i32 %inc450, ptr %j, align 4, !tbaa !11
  br label %for.cond175, !llvm.loop !50

for.end451:                                       ; preds = %for.cond175
  %426 = load ptr, ptr %ns, align 8, !tbaa !8
  %pg = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %426, i32 0, i32 19
  %427 = load i8, ptr %pg, align 8, !tbaa !33, !range !34, !noundef !35
  %tobool452 = trunc i8 %427 to i1
  br i1 %tobool452, label %if.then453, label %if.end472

if.then453:                                       ; preds = %for.end451
  %428 = load ptr, ptr %ns, align 8, !tbaa !8
  %iteration_count = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %428, i32 0, i32 24
  %429 = load i32, ptr %iteration_count, align 4, !tbaa !37
  %conv = sitofp i32 %429 to double
  %call454 = call double @pow(double noundef %conv, double noundef 1.500000e+00) #5
  %430 = load ptr, ptr %ns, align 8, !tbaa !8
  %coef = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %430, i32 0, i32 18
  store double %call454, ptr %coef, align 8, !tbaa !51
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond455

for.cond455:                                      ; preds = %for.inc469, %if.then453
  %431 = load i32, ptr %i, align 4, !tbaa !11
  %432 = load i32, ptr %z_size, align 4, !tbaa !11
  %mul456 = mul nsw i32 3, %432
  %cmp457 = icmp slt i32 %431, %mul456
  br i1 %cmp457, label %for.body459, label %for.end471

for.body459:                                      ; preds = %for.cond455
  %433 = load ptr, ptr %ns, align 8, !tbaa !8
  %ds = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %433, i32 0, i32 13
  %434 = load double, ptr %ds, align 8, !tbaa !36
  %435 = load ptr, ptr %ns, align 8, !tbaa !8
  %coef460 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %435, i32 0, i32 18
  %436 = load double, ptr %coef460, align 8, !tbaa !51
  %div461 = fdiv double %434, %436
  %437 = load ptr, ptr %ns, align 8, !tbaa !8
  %d = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %437, i32 0, i32 14
  %438 = load double, ptr %d, align 8, !tbaa !38
  %add462 = fadd double %div461, %438
  %439 = load ptr, ptr %ns, align 8, !tbaa !8
  %jac463 = getelementptr inbounds %struct.OuterSolveAttributes_t, ptr %439, i32 0, i32 4
  %440 = load ptr, ptr %jac463, align 8, !tbaa !24
  %441 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom464 = sext i32 %441 to i64
  %arrayidx465 = getelementptr inbounds ptr, ptr %440, i64 %idxprom464
  %442 = load ptr, ptr %arrayidx465, align 8, !tbaa !8
  %443 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom466 = sext i32 %443 to i64
  %arrayidx467 = getelementptr inbounds double, ptr %442, i64 %idxprom466
  %444 = load double, ptr %arrayidx467, align 8, !tbaa !4
  %add468 = fadd double %444, %add462
  store double %add468, ptr %arrayidx467, align 8, !tbaa !4
  br label %for.inc469

for.inc469:                                       ; preds = %for.body459
  %445 = load i32, ptr %i, align 4, !tbaa !11
  %inc470 = add nsw i32 %445, 1
  store i32 %inc470, ptr %i, align 4, !tbaa !11
  br label %for.cond455, !llvm.loop !52

for.end471:                                       ; preds = %for.cond455
  br label %if.end472

if.end472:                                        ; preds = %for.end471, %for.end451
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end472, %if.then365, %if.then274, %if.then189, %if.then125, %if.then73, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %THREE) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %original_displacement) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %success) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #5
  %446 = load i32, ptr %retval, align 4
  ret i32 %446
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !12, i64 80}
!14 = !{!"MAP_ConstraintStateType", !9, i64 0, !9, i64 8, !12, i64 16, !9, i64 24, !12, i64 32, !9, i64 40, !12, i64 48, !9, i64 56, !12, i64 64, !9, i64 72, !12, i64 80}
!15 = !{!16, !9, i64 168}
!16 = !{!"MAP_OtherStateType", !9, i64 0, !9, i64 8, !12, i64 16, !9, i64 24, !12, i64 32, !9, i64 40, !12, i64 48, !9, i64 56, !12, i64 64, !9, i64 72, !12, i64 80, !9, i64 88, !12, i64 96, !9, i64 104, !12, i64 112, !9, i64 120, !12, i64 128, !9, i64 136, !12, i64 144, !9, i64 152, !12, i64 160, !9, i64 168, !12, i64 176, !9, i64 184, !12, i64 192, !9, i64 200, !12, i64 208, !9, i64 216, !12, i64 224, !9, i64 232, !12, i64 240, !9, i64 248, !12, i64 256}
!17 = !{!18, !9, i64 56}
!18 = !{!"OuterSolveAttributes_t", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !19, i64 152, !19, i64 153, !19, i64 154, !12, i64 156, !12, i64 160, !12, i64 164}
!19 = !{!"_Bool", !6, i64 0}
!20 = !{!16, !9, i64 184}
!21 = !{!16, !9, i64 200}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!18, !9, i64 32}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = !{!14, !9, i64 40}
!28 = !{!18, !5, i64 120}
!29 = !{!14, !9, i64 56}
!30 = !{!14, !9, i64 72}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = !{!18, !19, i64 152}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!18, !5, i64 104}
!37 = !{!18, !12, i64 164}
!38 = !{!18, !5, i64 112}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = !{!18, !5, i64 144}
!52 = distinct !{!52, !23}

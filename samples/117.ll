; ModuleID = 'samples/117.bc'
source_filename = "/local-ssd/sundials-icjqhhsaxwda2stbau4awbrdkjeonqjc-build/aidengro/spack-stage-sundials-6.6.1-icjqhhsaxwda2stbau4awbrdkjeonqjc/spack-src/examples/ida/serial/idaSlCrank_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double }
%struct._generic_N_Vector = type { ptr, ptr, ptr }
%struct._N_VectorContent_Serial = type { i32, i32, ptr }

@.str = private unnamed_addr constant [18 x i8] c"SUNContext_Create\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SUNDenseMatrix\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SUNLinSol_Dense\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"IDASetLinearSolver\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"\0AidaSlCrank_dns: Slider-Crank DAE serial example problem for IDA\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Linear solver: DENSE, Jacobian is computed by IDA.\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Tolerance parameters:  rtol = %g   atol = %g\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"-----------------------------------------------------------------------\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"  t            y1          y2           y3\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"      | nst  k      h\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%10.4e %12.4e %12.4e %12.4e %3ld  %1d %12.4e\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\0AFinal Run Statistics: \0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Number of steps                    = %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Number of residual evaluations     = %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Number of Jacobian evaluations     = %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Number of nonlinear iterations     = %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Number of error test failures      = %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Number of nonlinear conv. failures = %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Number of step solver failures     = %ld\0A\00", align 1
@stderr = external global ptr, align 8
@.str.19 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"\0AMEMORY_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %yy = alloca ptr, align 8
  %yp = alloca ptr, align 8
  %id = alloca ptr, align 8
  %rtol = alloca double, align 8
  %atol = alloca double, align 8
  %t0 = alloca double, align 8
  %tf = alloca double, align 8
  %tout = alloca double, align 8
  %dt = alloca double, align 8
  %tret = alloca double, align 8
  %retval1 = alloca i32, align 4
  %iout = alloca i32, align 4
  %A = alloca ptr, align 8
  %LS = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtol) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %atol) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %t0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tout) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tret) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %iout) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %LS) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #6
  store ptr null, ptr %A, align 8, !tbaa !5
  store ptr null, ptr %LS, align 8, !tbaa !5
  %call = call i32 @SUNContext_Create(ptr noundef null, ptr noundef %ctx)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %call2 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str, i32 noundef 1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call noalias ptr @malloc(i64 noundef 64) #7
  store ptr %call3, ptr %data, align 8, !tbaa !5
  %0 = load ptr, ptr %data, align 8, !tbaa !5
  %a = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  store double 5.000000e-01, ptr %a, align 8, !tbaa !11
  %1 = load ptr, ptr %data, align 8, !tbaa !5
  %J1 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store double 1.000000e+00, ptr %J1, align 8, !tbaa !14
  %2 = load ptr, ptr %data, align 8, !tbaa !5
  %m2 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  store double 1.000000e+00, ptr %m2, align 8, !tbaa !15
  %3 = load ptr, ptr %data, align 8, !tbaa !5
  %J2 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store double 2.000000e+00, ptr %J2, align 8, !tbaa !16
  %4 = load ptr, ptr %data, align 8, !tbaa !5
  %k = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 4
  store double 1.000000e+00, ptr %k, align 8, !tbaa !17
  %5 = load ptr, ptr %data, align 8, !tbaa !5
  %c = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 5
  store double 1.000000e+00, ptr %c, align 8, !tbaa !18
  %6 = load ptr, ptr %data, align 8, !tbaa !5
  %l0 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 6
  store double 1.000000e+00, ptr %l0, align 8, !tbaa !19
  %7 = load ptr, ptr %data, align 8, !tbaa !5
  %F = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 7
  store double 1.000000e+00, ptr %F, align 8, !tbaa !20
  %8 = load ptr, ptr %ctx, align 8, !tbaa !5
  %call4 = call ptr @N_VNew_Serial(i32 noundef 10, ptr noundef %8)
  store ptr %call4, ptr %yy, align 8, !tbaa !5
  %9 = load ptr, ptr %yy, align 8, !tbaa !5
  %call5 = call ptr @N_VClone(ptr noundef %9)
  store ptr %call5, ptr %yp, align 8, !tbaa !5
  %10 = load ptr, ptr %yy, align 8, !tbaa !5
  %call6 = call ptr @N_VClone(ptr noundef %10)
  store ptr %call6, ptr %id, align 8, !tbaa !5
  %11 = load ptr, ptr %yy, align 8, !tbaa !5
  %12 = load ptr, ptr %yp, align 8, !tbaa !5
  %13 = load ptr, ptr %data, align 8, !tbaa !5
  call void @setIC(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %id, align 8, !tbaa !5
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef %14)
  %15 = load ptr, ptr %id, align 8, !tbaa !5
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %content, align 8, !tbaa !21
  %data7 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %data7, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds double, ptr %17, i64 6
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !25
  %18 = load ptr, ptr %id, align 8, !tbaa !5
  %content8 = getelementptr inbounds %struct._generic_N_Vector, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %content8, align 8, !tbaa !21
  %data9 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %data9, align 8, !tbaa !23
  %arrayidx10 = getelementptr inbounds double, ptr %20, i64 7
  store double 0.000000e+00, ptr %arrayidx10, align 8, !tbaa !25
  %21 = load ptr, ptr %id, align 8, !tbaa !5
  %content11 = getelementptr inbounds %struct._generic_N_Vector, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %content11, align 8, !tbaa !21
  %data12 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %data12, align 8, !tbaa !23
  %arrayidx13 = getelementptr inbounds double, ptr %23, i64 8
  store double 0.000000e+00, ptr %arrayidx13, align 8, !tbaa !25
  %24 = load ptr, ptr %id, align 8, !tbaa !5
  %content14 = getelementptr inbounds %struct._generic_N_Vector, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %content14, align 8, !tbaa !21
  %data15 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %data15, align 8, !tbaa !23
  %arrayidx16 = getelementptr inbounds double, ptr %26, i64 9
  store double 0.000000e+00, ptr %arrayidx16, align 8, !tbaa !25
  store double 0x3EB0C6F7A0B5ED8D, ptr %rtol, align 8, !tbaa !25
  store double 0x3EB0C6F7A0B5ED8D, ptr %atol, align 8, !tbaa !25
  store double 0.000000e+00, ptr %t0, align 8, !tbaa !25
  store double 1.000000e+01, ptr %tf, align 8, !tbaa !25
  %27 = load double, ptr %tf, align 8, !tbaa !25
  %28 = load double, ptr %t0, align 8, !tbaa !25
  %sub = fsub double %27, %28
  %div = fdiv double %sub, 4.000000e+01
  store double %div, ptr %dt, align 8, !tbaa !25
  %29 = load ptr, ptr %ctx, align 8, !tbaa !5
  %call17 = call ptr @IDACreate(ptr noundef %29)
  store ptr %call17, ptr %mem, align 8, !tbaa !5
  %30 = load ptr, ptr %mem, align 8, !tbaa !5
  %31 = load double, ptr %t0, align 8, !tbaa !25
  %32 = load ptr, ptr %yy, align 8, !tbaa !5
  %33 = load ptr, ptr %yp, align 8, !tbaa !5
  %call18 = call i32 @IDAInit(ptr noundef %30, ptr noundef @ressc, double noundef %31, ptr noundef %32, ptr noundef %33)
  store i32 %call18, ptr %retval1, align 4, !tbaa !9
  %34 = load ptr, ptr %mem, align 8, !tbaa !5
  %35 = load double, ptr %rtol, align 8, !tbaa !25
  %36 = load double, ptr %atol, align 8, !tbaa !25
  %call19 = call i32 @IDASStolerances(ptr noundef %34, double noundef %35, double noundef %36)
  store i32 %call19, ptr %retval1, align 4, !tbaa !9
  %37 = load ptr, ptr %mem, align 8, !tbaa !5
  %38 = load ptr, ptr %data, align 8, !tbaa !5
  %call20 = call i32 @IDASetUserData(ptr noundef %37, ptr noundef %38)
  store i32 %call20, ptr %retval1, align 4, !tbaa !9
  %39 = load ptr, ptr %mem, align 8, !tbaa !5
  %40 = load ptr, ptr %id, align 8, !tbaa !5
  %call21 = call i32 @IDASetId(ptr noundef %39, ptr noundef %40)
  store i32 %call21, ptr %retval1, align 4, !tbaa !9
  %41 = load ptr, ptr %mem, align 8, !tbaa !5
  %call22 = call i32 @IDASetSuppressAlg(ptr noundef %41, i32 noundef 1)
  store i32 %call22, ptr %retval1, align 4, !tbaa !9
  %42 = load ptr, ptr %ctx, align 8, !tbaa !5
  %call23 = call ptr @SUNDenseMatrix(i32 noundef 10, i32 noundef 10, ptr noundef %42)
  store ptr %call23, ptr %A, align 8, !tbaa !5
  %43 = load ptr, ptr %A, align 8, !tbaa !5
  %call24 = call i32 @check_retval(ptr noundef %43, ptr noundef @.str.1, i32 noundef 0)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %44 = load ptr, ptr %yy, align 8, !tbaa !5
  %45 = load ptr, ptr %A, align 8, !tbaa !5
  %46 = load ptr, ptr %ctx, align 8, !tbaa !5
  %call28 = call ptr @SUNLinSol_Dense(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  store ptr %call28, ptr %LS, align 8, !tbaa !5
  %47 = load ptr, ptr %LS, align 8, !tbaa !5
  %call29 = call i32 @check_retval(ptr noundef %47, ptr noundef @.str.2, i32 noundef 0)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %48 = load ptr, ptr %mem, align 8, !tbaa !5
  %49 = load ptr, ptr %LS, align 8, !tbaa !5
  %50 = load ptr, ptr %A, align 8, !tbaa !5
  %call33 = call i32 @IDASetLinearSolver(ptr noundef %48, ptr noundef %49, ptr noundef %50)
  store i32 %call33, ptr %retval1, align 4, !tbaa !9
  %call34 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.3, i32 noundef 1)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %51 = load double, ptr %rtol, align 8, !tbaa !25
  %52 = load double, ptr %atol, align 8, !tbaa !25
  %53 = load ptr, ptr %yy, align 8, !tbaa !5
  call void @PrintHeader(double noundef %51, double noundef %52, ptr noundef %53)
  %54 = load ptr, ptr %mem, align 8, !tbaa !5
  %55 = load double, ptr %t0, align 8, !tbaa !25
  %56 = load ptr, ptr %yy, align 8, !tbaa !5
  %call38 = call i32 @PrintOutput(ptr noundef %54, double noundef %55, ptr noundef %56)
  store i32 %call38, ptr %retval1, align 4, !tbaa !9
  %57 = load double, ptr %dt, align 8, !tbaa !25
  store double %57, ptr %tout, align 8, !tbaa !25
  store i32 1, ptr %iout, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end37
  %58 = load i32, ptr %iout, align 4, !tbaa !9
  %cmp = icmp slt i32 %58, 41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i32, ptr %iout, align 4, !tbaa !9
  %conv = sitofp i32 %59 to double
  %60 = load double, ptr %dt, align 8, !tbaa !25
  %mul = fmul double %conv, %60
  store double %mul, ptr %tout, align 8, !tbaa !25
  %61 = load ptr, ptr %mem, align 8, !tbaa !5
  %62 = load double, ptr %tout, align 8, !tbaa !25
  %63 = load ptr, ptr %yy, align 8, !tbaa !5
  %64 = load ptr, ptr %yp, align 8, !tbaa !5
  %call39 = call i32 @IDASolve(ptr noundef %61, double noundef %62, ptr noundef %tret, ptr noundef %63, ptr noundef %64, i32 noundef 1)
  store i32 %call39, ptr %retval1, align 4, !tbaa !9
  %65 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp40 = icmp slt i32 %65, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body
  br label %for.end

if.end43:                                         ; preds = %for.body
  %66 = load ptr, ptr %mem, align 8, !tbaa !5
  %67 = load double, ptr %tret, align 8, !tbaa !25
  %68 = load ptr, ptr %yy, align 8, !tbaa !5
  %call44 = call i32 @PrintOutput(ptr noundef %66, double noundef %67, ptr noundef %68)
  store i32 %call44, ptr %retval1, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %69 = load i32, ptr %iout, align 4, !tbaa !9
  %inc = add nsw i32 %69, 1
  store i32 %inc, ptr %iout, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %if.then42, %for.cond
  %70 = load ptr, ptr %mem, align 8, !tbaa !5
  %call45 = call i32 @PrintFinalStats(ptr noundef %70)
  store i32 %call45, ptr %retval1, align 4, !tbaa !9
  %71 = load ptr, ptr %data, align 8, !tbaa !5
  call void @free(ptr noundef %71) #6
  call void @IDAFree(ptr noundef %mem)
  %72 = load ptr, ptr %LS, align 8, !tbaa !5
  %call46 = call i32 @SUNLinSolFree(ptr noundef %72)
  %73 = load ptr, ptr %A, align 8, !tbaa !5
  call void @SUNMatDestroy(ptr noundef %73)
  %74 = load ptr, ptr %yy, align 8, !tbaa !5
  call void @N_VDestroy(ptr noundef %74)
  %75 = load ptr, ptr %yp, align 8, !tbaa !5
  call void @N_VDestroy(ptr noundef %75)
  %76 = load ptr, ptr %id, align 8, !tbaa !5
  call void @N_VDestroy(ptr noundef %76)
  %call47 = call i32 @SUNContext_Free(ptr noundef %ctx)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then36, %if.then31, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %LS) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %iout) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tret) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tout) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %t0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %atol) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtol) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @SUNContext_Create(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_retval(ptr noundef %returnvalue, ptr noundef %funcname, i32 noundef %opt) #0 {
entry:
  %retval = alloca i32, align 4
  %returnvalue.addr = alloca ptr, align 8
  %funcname.addr = alloca ptr, align 8
  %opt.addr = alloca i32, align 4
  %retval1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %returnvalue, ptr %returnvalue.addr, align 8, !tbaa !5
  store ptr %funcname, ptr %funcname.addr, align 8, !tbaa !5
  store i32 %opt, ptr %opt.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #6
  %0 = load i32, ptr %opt.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !5
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = load ptr, ptr %funcname.addr, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.19, ptr noundef %3)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %opt.addr, align 4, !tbaa !9
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %5 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !5
  store ptr %5, ptr %retval1, align 8, !tbaa !5
  %6 = load ptr, ptr %retval1, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = load ptr, ptr %funcname.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %retval1, align 8, !tbaa !5
  %11 = load i32, ptr %10, align 4, !tbaa !9
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.20, ptr noundef %9, i32 noundef %11)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then4
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %12 = load i32, ptr %opt.addr, align 4, !tbaa !9
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %land.lhs.true10, label %if.end14

land.lhs.true10:                                  ; preds = %if.else8
  %13 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !5
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = load ptr, ptr %funcname.addr, align 8, !tbaa !5
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.21, ptr noundef %15)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true10, %if.else8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #6
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare ptr @N_VNew_Serial(i32 noundef, ptr noundef) #2

declare ptr @N_VClone(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @setIC(ptr noundef %yy, ptr noundef %yp, ptr noundef %data) #0 {
entry:
  %yy.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %pi = alloca double, align 8
  %a = alloca double, align 8
  %J1 = alloca double, align 8
  %m2 = alloca double, align 8
  %J2 = alloca double, align 8
  %q = alloca double, align 8
  %p = alloca double, align 8
  %x = alloca double, align 8
  %Q = alloca [3 x double], align 16
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !5
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %J1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %m2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %J2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr %Q) #6
  %0 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %0)
  %1 = load ptr, ptr %yp.addr, align 8, !tbaa !5
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1)
  %call = call double @atan(double noundef 1.000000e+00) #6
  %mul = fmul double 4.000000e+00, %call
  store double %mul, ptr %pi, align 8, !tbaa !25
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %a1 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0
  %3 = load double, ptr %a1, align 8, !tbaa !11
  store double %3, ptr %a, align 8, !tbaa !25
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %J12 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %5 = load double, ptr %J12, align 8, !tbaa !14
  store double %5, ptr %J1, align 8, !tbaa !25
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %m23 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3
  %7 = load double, ptr %m23, align 8, !tbaa !15
  store double %7, ptr %m2, align 8, !tbaa !25
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %J24 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 2
  %9 = load double, ptr %J24, align 8, !tbaa !16
  store double %9, ptr %J2, align 8, !tbaa !25
  %10 = load double, ptr %pi, align 8, !tbaa !25
  %div = fdiv double %10, 2.000000e+00
  store double %div, ptr %q, align 8, !tbaa !25
  %11 = load double, ptr %a, align 8, !tbaa !25
  %fneg = fneg double %11
  %call5 = call double @asin(double noundef %fneg) #6
  store double %call5, ptr %p, align 8, !tbaa !25
  %12 = load double, ptr %p, align 8, !tbaa !25
  %call6 = call double @cos(double noundef %12) #6
  store double %call6, ptr %x, align 8, !tbaa !25
  %13 = load double, ptr %q, align 8, !tbaa !25
  %14 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content, align 8, !tbaa !21
  %data7 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %data7, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds double, ptr %16, i64 0
  store double %13, ptr %arrayidx, align 8, !tbaa !25
  %17 = load double, ptr %x, align 8, !tbaa !25
  %18 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content8 = getelementptr inbounds %struct._generic_N_Vector, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %content8, align 8, !tbaa !21
  %data9 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %data9, align 8, !tbaa !23
  %arrayidx10 = getelementptr inbounds double, ptr %20, i64 1
  store double %17, ptr %arrayidx10, align 8, !tbaa !25
  %21 = load double, ptr %p, align 8, !tbaa !25
  %22 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content11 = getelementptr inbounds %struct._generic_N_Vector, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %content11, align 8, !tbaa !21
  %data12 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %data12, align 8, !tbaa !23
  %arrayidx13 = getelementptr inbounds double, ptr %24, i64 2
  store double %21, ptr %arrayidx13, align 8, !tbaa !25
  %25 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 0
  %26 = load ptr, ptr %data.addr, align 8, !tbaa !5
  call void @force(ptr noundef %25, ptr noundef %arraydecay, ptr noundef %26)
  %arrayidx14 = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 0
  %27 = load double, ptr %arrayidx14, align 16, !tbaa !25
  %28 = load double, ptr %J1, align 8, !tbaa !25
  %div15 = fdiv double %27, %28
  %29 = load ptr, ptr %yp.addr, align 8, !tbaa !5
  %content16 = getelementptr inbounds %struct._generic_N_Vector, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %content16, align 8, !tbaa !21
  %data17 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %data17, align 8, !tbaa !23
  %arrayidx18 = getelementptr inbounds double, ptr %31, i64 3
  store double %div15, ptr %arrayidx18, align 8, !tbaa !25
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 1
  %32 = load double, ptr %arrayidx19, align 8, !tbaa !25
  %33 = load double, ptr %m2, align 8, !tbaa !25
  %div20 = fdiv double %32, %33
  %34 = load ptr, ptr %yp.addr, align 8, !tbaa !5
  %content21 = getelementptr inbounds %struct._generic_N_Vector, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %content21, align 8, !tbaa !21
  %data22 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %data22, align 8, !tbaa !23
  %arrayidx23 = getelementptr inbounds double, ptr %36, i64 4
  store double %div20, ptr %arrayidx23, align 8, !tbaa !25
  %arrayidx24 = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 2
  %37 = load double, ptr %arrayidx24, align 16, !tbaa !25
  %38 = load double, ptr %J2, align 8, !tbaa !25
  %div25 = fdiv double %37, %38
  %39 = load ptr, ptr %yp.addr, align 8, !tbaa !5
  %content26 = getelementptr inbounds %struct._generic_N_Vector, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %content26, align 8, !tbaa !21
  %data27 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %data27, align 8, !tbaa !23
  %arrayidx28 = getelementptr inbounds double, ptr %41, i64 5
  store double %div25, ptr %arrayidx28, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 24, ptr %Q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %J2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %J1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi) #6
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) #2

declare ptr @IDACreate(ptr noundef) #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ressc(double noundef %tres, ptr noundef %yy, ptr noundef %yp, ptr noundef %rr, ptr noundef %user_data) #0 {
entry:
  %tres.addr = alloca double, align 8
  %yy.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %rr.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %Q = alloca [3 x double], align 16
  %a = alloca double, align 8
  %J1 = alloca double, align 8
  %m2 = alloca double, align 8
  %J2 = alloca double, align 8
  %yval = alloca ptr, align 8
  %ypval = alloca ptr, align 8
  %rval = alloca ptr, align 8
  %q = alloca double, align 8
  %x = alloca double, align 8
  %p = alloca double, align 8
  %qd = alloca double, align 8
  %xd = alloca double, align 8
  %pd = alloca double, align 8
  %lam1 = alloca double, align 8
  %lam2 = alloca double, align 8
  %mu1 = alloca double, align 8
  %mu2 = alloca double, align 8
  %s1 = alloca double, align 8
  %c1 = alloca double, align 8
  %s2 = alloca double, align 8
  %c2 = alloca double, align 8
  store double %tres, ptr %tres.addr, align 8, !tbaa !25
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !5
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !5
  store ptr %rr, ptr %rr.addr, align 8, !tbaa !5
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr %Q) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %J1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %m2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %J2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yval) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypval) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %qd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %xd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %pd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lam1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lam2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %mu1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %mu2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #6
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !5
  store ptr %0, ptr %data, align 8, !tbaa !5
  %1 = load ptr, ptr %data, align 8, !tbaa !5
  %a1 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0
  %2 = load double, ptr %a1, align 8, !tbaa !11
  store double %2, ptr %a, align 8, !tbaa !25
  %3 = load ptr, ptr %data, align 8, !tbaa !5
  %J12 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %4 = load double, ptr %J12, align 8, !tbaa !14
  store double %4, ptr %J1, align 8, !tbaa !25
  %5 = load ptr, ptr %data, align 8, !tbaa !5
  %m23 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  %6 = load double, ptr %m23, align 8, !tbaa !15
  store double %6, ptr %m2, align 8, !tbaa !25
  %7 = load ptr, ptr %data, align 8, !tbaa !5
  %J24 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 2
  %8 = load double, ptr %J24, align 8, !tbaa !16
  store double %8, ptr %J2, align 8, !tbaa !25
  %9 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %call = call ptr @N_VGetArrayPointer(ptr noundef %9)
  store ptr %call, ptr %yval, align 8, !tbaa !5
  %10 = load ptr, ptr %yp.addr, align 8, !tbaa !5
  %call5 = call ptr @N_VGetArrayPointer(ptr noundef %10)
  store ptr %call5, ptr %ypval, align 8, !tbaa !5
  %11 = load ptr, ptr %rr.addr, align 8, !tbaa !5
  %call6 = call ptr @N_VGetArrayPointer(ptr noundef %11)
  store ptr %call6, ptr %rval, align 8, !tbaa !5
  %12 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds double, ptr %12, i64 0
  %13 = load double, ptr %arrayidx, align 8, !tbaa !25
  store double %13, ptr %q, align 8, !tbaa !25
  %14 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds double, ptr %14, i64 1
  %15 = load double, ptr %arrayidx7, align 8, !tbaa !25
  store double %15, ptr %x, align 8, !tbaa !25
  %16 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds double, ptr %16, i64 2
  %17 = load double, ptr %arrayidx8, align 8, !tbaa !25
  store double %17, ptr %p, align 8, !tbaa !25
  %18 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds double, ptr %18, i64 3
  %19 = load double, ptr %arrayidx9, align 8, !tbaa !25
  store double %19, ptr %qd, align 8, !tbaa !25
  %20 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds double, ptr %20, i64 4
  %21 = load double, ptr %arrayidx10, align 8, !tbaa !25
  store double %21, ptr %xd, align 8, !tbaa !25
  %22 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds double, ptr %22, i64 5
  %23 = load double, ptr %arrayidx11, align 8, !tbaa !25
  store double %23, ptr %pd, align 8, !tbaa !25
  %24 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds double, ptr %24, i64 6
  %25 = load double, ptr %arrayidx12, align 8, !tbaa !25
  store double %25, ptr %lam1, align 8, !tbaa !25
  %26 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds double, ptr %26, i64 7
  %27 = load double, ptr %arrayidx13, align 8, !tbaa !25
  store double %27, ptr %lam2, align 8, !tbaa !25
  %28 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds double, ptr %28, i64 8
  %29 = load double, ptr %arrayidx14, align 8, !tbaa !25
  store double %29, ptr %mu1, align 8, !tbaa !25
  %30 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds double, ptr %30, i64 9
  %31 = load double, ptr %arrayidx15, align 8, !tbaa !25
  store double %31, ptr %mu2, align 8, !tbaa !25
  %32 = load double, ptr %q, align 8, !tbaa !25
  %call16 = call double @sin(double noundef %32) #6
  store double %call16, ptr %s1, align 8, !tbaa !25
  %33 = load double, ptr %q, align 8, !tbaa !25
  %call17 = call double @cos(double noundef %33) #6
  store double %call17, ptr %c1, align 8, !tbaa !25
  %34 = load double, ptr %p, align 8, !tbaa !25
  %call18 = call double @sin(double noundef %34) #6
  store double %call18, ptr %s2, align 8, !tbaa !25
  %35 = load double, ptr %p, align 8, !tbaa !25
  %call19 = call double @cos(double noundef %35) #6
  store double %call19, ptr %c2, align 8, !tbaa !25
  %36 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 0
  %37 = load ptr, ptr %data, align 8, !tbaa !5
  call void @force(ptr noundef %36, ptr noundef %arraydecay, ptr noundef %37)
  %38 = load ptr, ptr %ypval, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds double, ptr %38, i64 0
  %39 = load double, ptr %arrayidx20, align 8, !tbaa !25
  %40 = load double, ptr %qd, align 8, !tbaa !25
  %sub = fsub double %39, %40
  %41 = load double, ptr %a, align 8, !tbaa !25
  %42 = load double, ptr %s1, align 8, !tbaa !25
  %mul = fmul double %41, %42
  %43 = load double, ptr %mu1, align 8, !tbaa !25
  %44 = call double @llvm.fmuladd.f64(double %mul, double %43, double %sub)
  %45 = load double, ptr %a, align 8, !tbaa !25
  %46 = load double, ptr %c1, align 8, !tbaa !25
  %mul22 = fmul double %45, %46
  %47 = load double, ptr %mu2, align 8, !tbaa !25
  %neg = fneg double %mul22
  %48 = call double @llvm.fmuladd.f64(double %neg, double %47, double %44)
  %49 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds double, ptr %49, i64 0
  store double %48, ptr %arrayidx24, align 8, !tbaa !25
  %50 = load ptr, ptr %ypval, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds double, ptr %50, i64 1
  %51 = load double, ptr %arrayidx25, align 8, !tbaa !25
  %52 = load double, ptr %xd, align 8, !tbaa !25
  %sub26 = fsub double %51, %52
  %53 = load double, ptr %mu1, align 8, !tbaa !25
  %add = fadd double %sub26, %53
  %54 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds double, ptr %54, i64 1
  store double %add, ptr %arrayidx27, align 8, !tbaa !25
  %55 = load ptr, ptr %ypval, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds double, ptr %55, i64 2
  %56 = load double, ptr %arrayidx28, align 8, !tbaa !25
  %57 = load double, ptr %pd, align 8, !tbaa !25
  %sub29 = fsub double %56, %57
  %58 = load double, ptr %s2, align 8, !tbaa !25
  %59 = load double, ptr %mu1, align 8, !tbaa !25
  %60 = call double @llvm.fmuladd.f64(double %58, double %59, double %sub29)
  %61 = load double, ptr %c2, align 8, !tbaa !25
  %62 = load double, ptr %mu2, align 8, !tbaa !25
  %neg32 = fneg double %61
  %63 = call double @llvm.fmuladd.f64(double %neg32, double %62, double %60)
  %64 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds double, ptr %64, i64 2
  store double %63, ptr %arrayidx33, align 8, !tbaa !25
  %65 = load double, ptr %J1, align 8, !tbaa !25
  %66 = load ptr, ptr %ypval, align 8, !tbaa !5
  %arrayidx34 = getelementptr inbounds double, ptr %66, i64 3
  %67 = load double, ptr %arrayidx34, align 8, !tbaa !25
  %arrayidx36 = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 0
  %68 = load double, ptr %arrayidx36, align 16, !tbaa !25
  %neg37 = fneg double %68
  %69 = call double @llvm.fmuladd.f64(double %65, double %67, double %neg37)
  %70 = load double, ptr %a, align 8, !tbaa !25
  %71 = load double, ptr %s1, align 8, !tbaa !25
  %mul38 = fmul double %70, %71
  %72 = load double, ptr %lam1, align 8, !tbaa !25
  %73 = call double @llvm.fmuladd.f64(double %mul38, double %72, double %69)
  %74 = load double, ptr %a, align 8, !tbaa !25
  %75 = load double, ptr %c1, align 8, !tbaa !25
  %mul40 = fmul double %74, %75
  %76 = load double, ptr %lam2, align 8, !tbaa !25
  %neg42 = fneg double %mul40
  %77 = call double @llvm.fmuladd.f64(double %neg42, double %76, double %73)
  %78 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds double, ptr %78, i64 3
  store double %77, ptr %arrayidx43, align 8, !tbaa !25
  %79 = load double, ptr %m2, align 8, !tbaa !25
  %80 = load ptr, ptr %ypval, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds double, ptr %80, i64 4
  %81 = load double, ptr %arrayidx44, align 8, !tbaa !25
  %arrayidx46 = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 1
  %82 = load double, ptr %arrayidx46, align 8, !tbaa !25
  %neg47 = fneg double %82
  %83 = call double @llvm.fmuladd.f64(double %79, double %81, double %neg47)
  %84 = load double, ptr %lam1, align 8, !tbaa !25
  %add48 = fadd double %83, %84
  %85 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds double, ptr %85, i64 4
  store double %add48, ptr %arrayidx49, align 8, !tbaa !25
  %86 = load double, ptr %J2, align 8, !tbaa !25
  %87 = load ptr, ptr %ypval, align 8, !tbaa !5
  %arrayidx50 = getelementptr inbounds double, ptr %87, i64 5
  %88 = load double, ptr %arrayidx50, align 8, !tbaa !25
  %arrayidx52 = getelementptr inbounds [3 x double], ptr %Q, i64 0, i64 2
  %89 = load double, ptr %arrayidx52, align 16, !tbaa !25
  %neg53 = fneg double %89
  %90 = call double @llvm.fmuladd.f64(double %86, double %88, double %neg53)
  %91 = load double, ptr %s2, align 8, !tbaa !25
  %92 = load double, ptr %lam1, align 8, !tbaa !25
  %93 = call double @llvm.fmuladd.f64(double %91, double %92, double %90)
  %94 = load double, ptr %c2, align 8, !tbaa !25
  %95 = load double, ptr %lam2, align 8, !tbaa !25
  %neg56 = fneg double %94
  %96 = call double @llvm.fmuladd.f64(double %neg56, double %95, double %93)
  %97 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds double, ptr %97, i64 5
  store double %96, ptr %arrayidx57, align 8, !tbaa !25
  %98 = load double, ptr %x, align 8, !tbaa !25
  %99 = load double, ptr %c2, align 8, !tbaa !25
  %sub58 = fsub double %98, %99
  %100 = load double, ptr %a, align 8, !tbaa !25
  %101 = load double, ptr %c1, align 8, !tbaa !25
  %neg60 = fneg double %100
  %102 = call double @llvm.fmuladd.f64(double %neg60, double %101, double %sub58)
  %103 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx61 = getelementptr inbounds double, ptr %103, i64 6
  store double %102, ptr %arrayidx61, align 8, !tbaa !25
  %104 = load double, ptr %s2, align 8, !tbaa !25
  %fneg = fneg double %104
  %105 = load double, ptr %a, align 8, !tbaa !25
  %106 = load double, ptr %s1, align 8, !tbaa !25
  %neg63 = fneg double %105
  %107 = call double @llvm.fmuladd.f64(double %neg63, double %106, double %fneg)
  %108 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds double, ptr %108, i64 7
  store double %107, ptr %arrayidx64, align 8, !tbaa !25
  %109 = load double, ptr %a, align 8, !tbaa !25
  %110 = load double, ptr %s1, align 8, !tbaa !25
  %mul65 = fmul double %109, %110
  %111 = load double, ptr %qd, align 8, !tbaa !25
  %112 = load double, ptr %xd, align 8, !tbaa !25
  %113 = call double @llvm.fmuladd.f64(double %mul65, double %111, double %112)
  %114 = load double, ptr %s2, align 8, !tbaa !25
  %115 = load double, ptr %pd, align 8, !tbaa !25
  %116 = call double @llvm.fmuladd.f64(double %114, double %115, double %113)
  %117 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx68 = getelementptr inbounds double, ptr %117, i64 8
  store double %116, ptr %arrayidx68, align 8, !tbaa !25
  %118 = load double, ptr %a, align 8, !tbaa !25
  %fneg69 = fneg double %118
  %119 = load double, ptr %c1, align 8, !tbaa !25
  %mul70 = fmul double %fneg69, %119
  %120 = load double, ptr %qd, align 8, !tbaa !25
  %121 = load double, ptr %c2, align 8, !tbaa !25
  %122 = load double, ptr %pd, align 8, !tbaa !25
  %mul72 = fmul double %121, %122
  %neg73 = fneg double %mul72
  %123 = call double @llvm.fmuladd.f64(double %mul70, double %120, double %neg73)
  %124 = load ptr, ptr %rval, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds double, ptr %124, i64 9
  store double %123, ptr %arrayidx74, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %mu2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %mu1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lam2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lam1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %xd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %qd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypval) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yval) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %J2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %J1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr %Q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) #2

declare i32 @IDASetId(ptr noundef, ptr noundef) #2

declare i32 @IDASetSuppressAlg(ptr noundef, i32 noundef) #2

declare ptr @SUNDenseMatrix(i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @PrintHeader(double noundef %rtol, double noundef %atol, ptr noundef %y) #0 {
entry:
  %rtol.addr = alloca double, align 8
  %atol.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  store double %rtol, ptr %rtol.addr, align 8, !tbaa !25
  store double %atol, ptr %atol.addr, align 8, !tbaa !25
  store ptr %y, ptr %y.addr, align 8, !tbaa !5
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %0 = load double, ptr %rtol.addr, align 8, !tbaa !25
  %1 = load double, ptr %atol.addr, align 8, !tbaa !25
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %0, double noundef %1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PrintOutput(ptr noundef %mem, double noundef %t, ptr noundef %y) #0 {
entry:
  %mem.addr = alloca ptr, align 8
  %t.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %yval = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %kused = alloca i32, align 4
  %nst = alloca i64, align 8
  %hused = alloca double, align 8
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !5
  store double %t, ptr %t.addr, align 8, !tbaa !25
  store ptr %y, ptr %y.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %yval) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %kused) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nst) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %hused) #6
  %0 = load ptr, ptr %y.addr, align 8, !tbaa !5
  %call = call ptr @N_VGetArrayPointer(ptr noundef %0)
  store ptr %call, ptr %yval, align 8, !tbaa !5
  %1 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call2 = call i32 @IDAGetLastOrder(ptr noundef %1, ptr noundef %kused)
  store i32 %call2, ptr %retval1, align 4, !tbaa !9
  %2 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call3 = call i32 @IDAGetNumSteps(ptr noundef %2, ptr noundef %nst)
  store i32 %call3, ptr %retval1, align 4, !tbaa !9
  %3 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call4 = call i32 @IDAGetLastStep(ptr noundef %3, ptr noundef %hused)
  store i32 %call4, ptr %retval1, align 4, !tbaa !9
  %4 = load double, ptr %t.addr, align 8, !tbaa !25
  %5 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds double, ptr %5, i64 0
  %6 = load double, ptr %arrayidx, align 8, !tbaa !25
  %7 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds double, ptr %7, i64 1
  %8 = load double, ptr %arrayidx5, align 8, !tbaa !25
  %9 = load ptr, ptr %yval, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds double, ptr %9, i64 2
  %10 = load double, ptr %arrayidx6, align 8, !tbaa !25
  %11 = load i64, ptr %nst, align 8, !tbaa !26
  %12 = load i32, ptr %kused, align 4, !tbaa !9
  %13 = load double, ptr %hused, align 8, !tbaa !25
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %4, double noundef %6, double noundef %8, double noundef %10, i64 noundef %11, i32 noundef %12, double noundef %13)
  %14 = load i32, ptr %retval1, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %hused) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nst) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %kused) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yval) #6
  ret i32 %14
}

declare i32 @IDASolve(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @PrintFinalStats(ptr noundef %mem) #0 {
entry:
  %mem.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %nst = alloca i64, align 8
  %nni = alloca i64, align 8
  %nnf = alloca i64, align 8
  %nje = alloca i64, align 8
  %nre = alloca i64, align 8
  %nreLS = alloca i64, align 8
  %netf = alloca i64, align 8
  %ncfn = alloca i64, align 8
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nst) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nni) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nnf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nje) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nre) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nreLS) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %netf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncfn) #6
  %0 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef %nst)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %1 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call2 = call i32 @IDAGetNumResEvals(ptr noundef %1, ptr noundef %nre)
  store i32 %call2, ptr %retval1, align 4, !tbaa !9
  %2 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call3 = call i32 @IDAGetNumJacEvals(ptr noundef %2, ptr noundef %nje)
  store i32 %call3, ptr %retval1, align 4, !tbaa !9
  %3 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call4 = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %3, ptr noundef %nni)
  store i32 %call4, ptr %retval1, align 4, !tbaa !9
  %4 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call5 = call i32 @IDAGetNumErrTestFails(ptr noundef %4, ptr noundef %netf)
  store i32 %call5, ptr %retval1, align 4, !tbaa !9
  %5 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call6 = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef %5, ptr noundef %nnf)
  store i32 %call6, ptr %retval1, align 4, !tbaa !9
  %6 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call7 = call i32 @IDAGetNumStepSolveFails(ptr noundef %6, ptr noundef %ncfn)
  store i32 %call7, ptr %retval1, align 4, !tbaa !9
  %7 = load ptr, ptr %mem.addr, align 8, !tbaa !5
  %call8 = call i32 @IDAGetNumLinResEvals(ptr noundef %7, ptr noundef %nreLS)
  store i32 %call8, ptr %retval1, align 4, !tbaa !9
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %8 = load i64, ptr %nst, align 8, !tbaa !26
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i64 noundef %8)
  %9 = load i64, ptr %nre, align 8, !tbaa !26
  %10 = load i64, ptr %nreLS, align 8, !tbaa !26
  %add = add nsw i64 %9, %10
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i64 noundef %add)
  %11 = load i64, ptr %nje, align 8, !tbaa !26
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i64 noundef %11)
  %12 = load i64, ptr %nni, align 8, !tbaa !26
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i64 noundef %12)
  %13 = load i64, ptr %netf, align 8, !tbaa !26
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i64 noundef %13)
  %14 = load i64, ptr %nnf, align 8, !tbaa !26
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i64 noundef %14)
  %15 = load i64, ptr %ncfn, align 8, !tbaa !26
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i64 noundef %15)
  %16 = load i32, ptr %retval1, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncfn) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %netf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nreLS) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nre) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nje) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nnf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nni) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nst) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #6
  ret i32 %16
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare void @IDAFree(ptr noundef) #2

declare i32 @SUNLinSolFree(ptr noundef) #2

declare void @SUNMatDestroy(ptr noundef) #2

declare void @N_VDestroy(ptr noundef) #2

declare i32 @SUNContext_Free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @atan(double noundef) #4

; Function Attrs: nounwind
declare double @asin(double noundef) #4

; Function Attrs: nounwind
declare double @cos(double noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @force(ptr noundef %yy, ptr noundef %Q, ptr noundef %data) #0 {
entry:
  %yy.addr = alloca ptr, align 8
  %Q.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %k = alloca double, align 8
  %c = alloca double, align 8
  %l0 = alloca double, align 8
  %F = alloca double, align 8
  %q = alloca double, align 8
  %x = alloca double, align 8
  %p = alloca double, align 8
  %qd = alloca double, align 8
  %xd = alloca double, align 8
  %pd = alloca double, align 8
  %s1 = alloca double, align 8
  %c1 = alloca double, align 8
  %s2 = alloca double, align 8
  %c2 = alloca double, align 8
  %s21 = alloca double, align 8
  %c21 = alloca double, align 8
  %l2 = alloca double, align 8
  %l = alloca double, align 8
  %ld = alloca double, align 8
  %f = alloca double, align 8
  %fl = alloca double, align 8
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !5
  store ptr %Q, ptr %Q.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %F) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %qd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %xd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %pd) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s21) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c21) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ld) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fl) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %a1 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  %1 = load double, ptr %a1, align 8, !tbaa !11
  store double %1, ptr %a, align 8, !tbaa !25
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %k2 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 4
  %3 = load double, ptr %k2, align 8, !tbaa !17
  store double %3, ptr %k, align 8, !tbaa !25
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %c3 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 5
  %5 = load double, ptr %c3, align 8, !tbaa !18
  store double %5, ptr %c, align 8, !tbaa !25
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %l04 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 6
  %7 = load double, ptr %l04, align 8, !tbaa !19
  store double %7, ptr %l0, align 8, !tbaa !25
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %F5 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 7
  %9 = load double, ptr %F5, align 8, !tbaa !20
  store double %9, ptr %F, align 8, !tbaa !25
  %10 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content, align 8, !tbaa !21
  %data6 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %data6, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds double, ptr %12, i64 0
  %13 = load double, ptr %arrayidx, align 8, !tbaa !25
  store double %13, ptr %q, align 8, !tbaa !25
  %14 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content7 = getelementptr inbounds %struct._generic_N_Vector, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content7, align 8, !tbaa !21
  %data8 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %data8, align 8, !tbaa !23
  %arrayidx9 = getelementptr inbounds double, ptr %16, i64 1
  %17 = load double, ptr %arrayidx9, align 8, !tbaa !25
  store double %17, ptr %x, align 8, !tbaa !25
  %18 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content10 = getelementptr inbounds %struct._generic_N_Vector, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %content10, align 8, !tbaa !21
  %data11 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %data11, align 8, !tbaa !23
  %arrayidx12 = getelementptr inbounds double, ptr %20, i64 2
  %21 = load double, ptr %arrayidx12, align 8, !tbaa !25
  store double %21, ptr %p, align 8, !tbaa !25
  %22 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content13 = getelementptr inbounds %struct._generic_N_Vector, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %content13, align 8, !tbaa !21
  %data14 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %data14, align 8, !tbaa !23
  %arrayidx15 = getelementptr inbounds double, ptr %24, i64 3
  %25 = load double, ptr %arrayidx15, align 8, !tbaa !25
  store double %25, ptr %qd, align 8, !tbaa !25
  %26 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content16 = getelementptr inbounds %struct._generic_N_Vector, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %content16, align 8, !tbaa !21
  %data17 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %data17, align 8, !tbaa !23
  %arrayidx18 = getelementptr inbounds double, ptr %28, i64 4
  %29 = load double, ptr %arrayidx18, align 8, !tbaa !25
  store double %29, ptr %xd, align 8, !tbaa !25
  %30 = load ptr, ptr %yy.addr, align 8, !tbaa !5
  %content19 = getelementptr inbounds %struct._generic_N_Vector, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %content19, align 8, !tbaa !21
  %data20 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %data20, align 8, !tbaa !23
  %arrayidx21 = getelementptr inbounds double, ptr %32, i64 5
  %33 = load double, ptr %arrayidx21, align 8, !tbaa !25
  store double %33, ptr %pd, align 8, !tbaa !25
  %34 = load double, ptr %q, align 8, !tbaa !25
  %call = call double @sin(double noundef %34) #6
  store double %call, ptr %s1, align 8, !tbaa !25
  %35 = load double, ptr %q, align 8, !tbaa !25
  %call22 = call double @cos(double noundef %35) #6
  store double %call22, ptr %c1, align 8, !tbaa !25
  %36 = load double, ptr %p, align 8, !tbaa !25
  %call23 = call double @sin(double noundef %36) #6
  store double %call23, ptr %s2, align 8, !tbaa !25
  %37 = load double, ptr %p, align 8, !tbaa !25
  %call24 = call double @cos(double noundef %37) #6
  store double %call24, ptr %c2, align 8, !tbaa !25
  %38 = load double, ptr %s2, align 8, !tbaa !25
  %39 = load double, ptr %c1, align 8, !tbaa !25
  %40 = load double, ptr %c2, align 8, !tbaa !25
  %41 = load double, ptr %s1, align 8, !tbaa !25
  %mul25 = fmul double %40, %41
  %neg = fneg double %mul25
  %42 = call double @llvm.fmuladd.f64(double %38, double %39, double %neg)
  store double %42, ptr %s21, align 8, !tbaa !25
  %43 = load double, ptr %c2, align 8, !tbaa !25
  %44 = load double, ptr %c1, align 8, !tbaa !25
  %45 = load double, ptr %s2, align 8, !tbaa !25
  %46 = load double, ptr %s1, align 8, !tbaa !25
  %mul26 = fmul double %45, %46
  %47 = call double @llvm.fmuladd.f64(double %43, double %44, double %mul26)
  store double %47, ptr %c21, align 8, !tbaa !25
  %48 = load double, ptr %x, align 8, !tbaa !25
  %49 = load double, ptr %x, align 8, !tbaa !25
  %50 = load double, ptr %x, align 8, !tbaa !25
  %51 = load double, ptr %c2, align 8, !tbaa !25
  %52 = load double, ptr %a, align 8, !tbaa !25
  %53 = load double, ptr %c1, align 8, !tbaa !25
  %54 = call double @llvm.fmuladd.f64(double %52, double %53, double %51)
  %mul28 = fmul double %50, %54
  %neg29 = fneg double %mul28
  %55 = call double @llvm.fmuladd.f64(double %48, double %49, double %neg29)
  %56 = load double, ptr %a, align 8, !tbaa !25
  %57 = load double, ptr %a, align 8, !tbaa !25
  %58 = call double @llvm.fmuladd.f64(double %56, double %57, double 1.000000e+00)
  %div = fdiv double %58, 4.000000e+00
  %add = fadd double %55, %div
  %59 = load double, ptr %a, align 8, !tbaa !25
  %60 = load double, ptr %c21, align 8, !tbaa !25
  %mul = fmul double %59, %60
  %div30 = fdiv double %mul, 2.000000e+00
  %add31 = fadd double %add, %div30
  store double %add31, ptr %l2, align 8, !tbaa !25
  %61 = load double, ptr %l2, align 8, !tbaa !25
  %call32 = call double @sqrt(double noundef %61) #6
  store double %call32, ptr %l, align 8, !tbaa !25
  %62 = load double, ptr %x, align 8, !tbaa !25
  %mul33 = fmul double 2.000000e+00, %62
  %63 = load double, ptr %xd, align 8, !tbaa !25
  %64 = load double, ptr %xd, align 8, !tbaa !25
  %65 = load double, ptr %c2, align 8, !tbaa !25
  %66 = load double, ptr %a, align 8, !tbaa !25
  %67 = load double, ptr %c1, align 8, !tbaa !25
  %68 = call double @llvm.fmuladd.f64(double %66, double %67, double %65)
  %mul36 = fmul double %64, %68
  %neg37 = fneg double %mul36
  %69 = call double @llvm.fmuladd.f64(double %mul33, double %63, double %neg37)
  %70 = load double, ptr %x, align 8, !tbaa !25
  %71 = load double, ptr %s2, align 8, !tbaa !25
  %72 = load double, ptr %pd, align 8, !tbaa !25
  %73 = load double, ptr %a, align 8, !tbaa !25
  %74 = load double, ptr %s1, align 8, !tbaa !25
  %mul39 = fmul double %73, %74
  %75 = load double, ptr %qd, align 8, !tbaa !25
  %mul40 = fmul double %mul39, %75
  %76 = call double @llvm.fmuladd.f64(double %71, double %72, double %mul40)
  %77 = call double @llvm.fmuladd.f64(double %70, double %76, double %69)
  %78 = load double, ptr %a, align 8, !tbaa !25
  %79 = load double, ptr %s21, align 8, !tbaa !25
  %mul42 = fmul double %78, %79
  %80 = load double, ptr %pd, align 8, !tbaa !25
  %81 = load double, ptr %qd, align 8, !tbaa !25
  %sub = fsub double %80, %81
  %mul43 = fmul double %mul42, %sub
  %div44 = fdiv double %mul43, 2.000000e+00
  %sub45 = fsub double %77, %div44
  store double %sub45, ptr %ld, align 8, !tbaa !25
  %82 = load double, ptr %l, align 8, !tbaa !25
  %mul46 = fmul double 2.000000e+00, %82
  %83 = load double, ptr %ld, align 8, !tbaa !25
  %div47 = fdiv double %83, %mul46
  store double %div47, ptr %ld, align 8, !tbaa !25
  %84 = load double, ptr %k, align 8, !tbaa !25
  %85 = load double, ptr %l, align 8, !tbaa !25
  %86 = load double, ptr %l0, align 8, !tbaa !25
  %sub48 = fsub double %85, %86
  %87 = load double, ptr %c, align 8, !tbaa !25
  %88 = load double, ptr %ld, align 8, !tbaa !25
  %mul50 = fmul double %87, %88
  %89 = call double @llvm.fmuladd.f64(double %84, double %sub48, double %mul50)
  store double %89, ptr %f, align 8, !tbaa !25
  %90 = load double, ptr %f, align 8, !tbaa !25
  %91 = load double, ptr %l, align 8, !tbaa !25
  %div51 = fdiv double %90, %91
  store double %div51, ptr %fl, align 8, !tbaa !25
  %92 = load double, ptr %fl, align 8, !tbaa !25
  %fneg = fneg double %92
  %93 = load double, ptr %a, align 8, !tbaa !25
  %mul52 = fmul double %fneg, %93
  %94 = load double, ptr %s21, align 8, !tbaa !25
  %div53 = fdiv double %94, 2.000000e+00
  %95 = load double, ptr %x, align 8, !tbaa !25
  %96 = load double, ptr %s1, align 8, !tbaa !25
  %97 = call double @llvm.fmuladd.f64(double %95, double %96, double %div53)
  %mul55 = fmul double %mul52, %97
  %div56 = fdiv double %mul55, 2.000000e+00
  %98 = load ptr, ptr %Q.addr, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds double, ptr %98, i64 0
  store double %div56, ptr %arrayidx57, align 8, !tbaa !25
  %99 = load double, ptr %fl, align 8, !tbaa !25
  %100 = load double, ptr %c2, align 8, !tbaa !25
  %div58 = fdiv double %100, 2.000000e+00
  %101 = load double, ptr %x, align 8, !tbaa !25
  %sub59 = fsub double %div58, %101
  %102 = load double, ptr %a, align 8, !tbaa !25
  %103 = load double, ptr %c1, align 8, !tbaa !25
  %mul60 = fmul double %102, %103
  %div61 = fdiv double %mul60, 2.000000e+00
  %add62 = fadd double %sub59, %div61
  %104 = load double, ptr %F, align 8, !tbaa !25
  %105 = call double @llvm.fmuladd.f64(double %99, double %add62, double %104)
  %106 = load ptr, ptr %Q.addr, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds double, ptr %106, i64 1
  store double %105, ptr %arrayidx64, align 8, !tbaa !25
  %107 = load double, ptr %fl, align 8, !tbaa !25
  %fneg65 = fneg double %107
  %108 = load double, ptr %x, align 8, !tbaa !25
  %109 = load double, ptr %s2, align 8, !tbaa !25
  %110 = load double, ptr %a, align 8, !tbaa !25
  %111 = load double, ptr %s21, align 8, !tbaa !25
  %mul67 = fmul double %110, %111
  %div68 = fdiv double %mul67, 2.000000e+00
  %neg69 = fneg double %div68
  %112 = call double @llvm.fmuladd.f64(double %108, double %109, double %neg69)
  %mul70 = fmul double %fneg65, %112
  %div71 = fdiv double %mul70, 2.000000e+00
  %113 = load double, ptr %F, align 8, !tbaa !25
  %114 = load double, ptr %s2, align 8, !tbaa !25
  %neg73 = fneg double %113
  %115 = call double @llvm.fmuladd.f64(double %neg73, double %114, double %div71)
  %116 = load ptr, ptr %Q.addr, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds double, ptr %116, i64 2
  store double %115, ptr %arrayidx74, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr %fl) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ld) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %xd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %qd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %F) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  ret void
}

; Function Attrs: nounwind
declare double @sin(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

declare ptr @N_VGetArrayPointer(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @IDAGetLastOrder(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) #2

declare i32 @IDAGetLastStep(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumResEvals(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumJacEvals(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumNonlinSolvIters(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumErrTestFails(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumStepSolveFails(ptr noundef, ptr noundef) #2

declare i32 @IDAGetNumLinResEvals(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!13 = !{!"double", !7, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!12, !13, i64 24}
!16 = !{!12, !13, i64 16}
!17 = !{!12, !13, i64 32}
!18 = !{!12, !13, i64 40}
!19 = !{!12, !13, i64 48}
!20 = !{!12, !13, i64 56}
!21 = !{!22, !6, i64 0}
!22 = !{!"_generic_N_Vector", !6, i64 0, !6, i64 8, !6, i64 16}
!23 = !{!24, !6, i64 8}
!24 = !{!"_N_VectorContent_Serial", !10, i64 0, !10, i64 4, !6, i64 8}
!25 = !{!13, !13, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !7, i64 0}

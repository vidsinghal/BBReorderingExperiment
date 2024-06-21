; ModuleID = 'samples/287.bc'
source_filename = "/local-ssd/sundials-icjqhhsaxwda2stbau4awbrdkjeonqjc-build/aidengro/spack-stage-sundials-6.6.1-icjqhhsaxwda2stbau4awbrdkjeonqjc/spack-src/examples/idas/serial/idasAkzoNob_ASAi_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double }
%struct._generic_N_Vector = type { ptr, ptr, ptr }
%struct._N_VectorContent_Serial = type { i32, i32, ptr }

@.str = private unnamed_addr constant [63 x i8] c"\0AAdjoint Sensitivity Example for Akzo-Nobel Chemical Kinetics\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"-------------------------------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Sensitivity of G = int_t0^tf (y1) dt with respect to IC.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"-------------------------------------------------------------\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SUNContext_Create\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"N_VNew_Serial\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"IDACreate\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"IDAInit\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"IDASStolerances\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"IDASetUserData\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"SUNDenseMatrix\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"SUNLinSol_Dense\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"IDASetLinearSolver\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"IDAQuadInit\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"IDAQuadSStolerances\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"IDASetQuadErrCon\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"IDAAdjInit\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Forward integration ... \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"IDASolveF\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"IDAGetNumSteps\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"done ( nst = %ld )\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"IDAGetQuad\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"G:          %24.16f \0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"--------------------------------------------------------\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"IDACreateB\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"IDAInitB\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"IDASStolerancesB\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"IDASetUserDataB\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"IDASetLinearSolverB\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Backward integration ... \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"IDASolveB\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"IDAGetB\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"dG/dy0: \09%12.4e\0A\09\09%12.4e\0A\09\09%12.4e\0A\09\09%12.4e\0A\09\09%12.4e\0A\00", align 1
@stderr = external global ptr, align 8
@.str.33 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"\0AMEMORY_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %yy = alloca ptr, align 8
  %yp = alloca ptr, align 8
  %rr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %yB = alloca ptr, align 8
  %ypB = alloca ptr, align 8
  %ncheck = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %time = alloca double, align 8
  %nst = alloca i64, align 8
  %nstB = alloca i64, align 8
  %indexB = alloca i32, align 4
  %A = alloca ptr, align 8
  %AB = alloca ptr, align 8
  %LS = alloca ptr, align 8
  %LSB = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %y01 = alloca double, align 8
  %y02 = alloca double, align 8
  %y03 = alloca double, align 8
  %y04 = alloca double, align 8
  %y05 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %rr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yB) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypB) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncheck) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %time) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nst) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nstB) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %indexB) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %AB) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %LS) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %LSB) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y01) #6
  store double 4.440000e-01, ptr %y01, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y02) #6
  store double 1.230000e-03, ptr %y02, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y03) #6
  store double 0.000000e+00, ptr %y03, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y04) #6
  store double 7.000000e-03, ptr %y04, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y05) #6
  store double 0.000000e+00, ptr %y05, align 8, !tbaa !5
  store ptr null, ptr %mem, align 8, !tbaa !9
  store ptr null, ptr %yp, align 8, !tbaa !9
  store ptr null, ptr %yy, align 8, !tbaa !9
  store ptr null, ptr %AB, align 8, !tbaa !9
  store ptr null, ptr %A, align 8, !tbaa !9
  store ptr null, ptr %LSB, align 8, !tbaa !9
  store ptr null, ptr %LS, align 8, !tbaa !9
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call5 = call i32 @SUNContext_Create(ptr noundef null, ptr noundef %ctx)
  store i32 %call5, ptr %retval1, align 4, !tbaa !11
  %call6 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.4, i32 noundef 1)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = call noalias ptr @malloc(i64 noundef 72) #7
  store ptr %call7, ptr %data, align 8, !tbaa !9
  %0 = load ptr, ptr %data, align 8, !tbaa !9
  %k1 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  store double 1.870000e+01, ptr %k1, align 8, !tbaa !13
  %1 = load ptr, ptr %data, align 8, !tbaa !9
  %k2 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store double 5.800000e-01, ptr %k2, align 8, !tbaa !15
  %2 = load ptr, ptr %data, align 8, !tbaa !9
  %k3 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  store double 0x3FB70A3D70A3D70A, ptr %k3, align 8, !tbaa !16
  %3 = load ptr, ptr %data, align 8, !tbaa !9
  %k4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3
  store double 4.200000e-01, ptr %k4, align 8, !tbaa !17
  %4 = load ptr, ptr %data, align 8, !tbaa !9
  %K = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 4
  store double 3.440000e+01, ptr %K, align 8, !tbaa !18
  %5 = load ptr, ptr %data, align 8, !tbaa !9
  %klA = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 5
  store double 3.300000e+00, ptr %klA, align 8, !tbaa !19
  %6 = load ptr, ptr %data, align 8, !tbaa !9
  %Ks = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 6
  store double 1.158300e+02, ptr %Ks, align 8, !tbaa !20
  %7 = load ptr, ptr %data, align 8, !tbaa !9
  %pCO2 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 7
  store double 9.000000e-01, ptr %pCO2, align 8, !tbaa !21
  %8 = load ptr, ptr %data, align 8, !tbaa !9
  %H = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 8
  store double 7.370000e+02, ptr %H, align 8, !tbaa !22
  %9 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call8 = call ptr @N_VNew_Serial(i32 noundef 6, ptr noundef %9)
  store ptr %call8, ptr %yy, align 8, !tbaa !9
  %10 = load ptr, ptr %yy, align 8, !tbaa !9
  %call9 = call i32 @check_retval(ptr noundef %10, ptr noundef @.str.5, i32 noundef 0)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %11 = load ptr, ptr %yy, align 8, !tbaa !9
  %call13 = call ptr @N_VClone(ptr noundef %11)
  store ptr %call13, ptr %yp, align 8, !tbaa !9
  %12 = load ptr, ptr %yp, align 8, !tbaa !9
  %call14 = call i32 @check_retval(ptr noundef %12, ptr noundef @.str.5, i32 noundef 0)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %13 = load ptr, ptr %yy, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %content, align 8, !tbaa !23
  %data18 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %data18, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds double, ptr %15, i64 0
  store double 4.440000e-01, ptr %arrayidx, align 8, !tbaa !5
  %16 = load ptr, ptr %yy, align 8, !tbaa !9
  %content19 = getelementptr inbounds %struct._generic_N_Vector, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %content19, align 8, !tbaa !23
  %data20 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %data20, align 8, !tbaa !25
  %arrayidx21 = getelementptr inbounds double, ptr %18, i64 1
  store double 1.230000e-03, ptr %arrayidx21, align 8, !tbaa !5
  %19 = load ptr, ptr %yy, align 8, !tbaa !9
  %content22 = getelementptr inbounds %struct._generic_N_Vector, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %content22, align 8, !tbaa !23
  %data23 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %data23, align 8, !tbaa !25
  %arrayidx24 = getelementptr inbounds double, ptr %21, i64 2
  store double 0.000000e+00, ptr %arrayidx24, align 8, !tbaa !5
  %22 = load ptr, ptr %yy, align 8, !tbaa !9
  %content25 = getelementptr inbounds %struct._generic_N_Vector, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %content25, align 8, !tbaa !23
  %data26 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %data26, align 8, !tbaa !25
  %arrayidx27 = getelementptr inbounds double, ptr %24, i64 3
  store double 7.000000e-03, ptr %arrayidx27, align 8, !tbaa !5
  %25 = load ptr, ptr %yy, align 8, !tbaa !9
  %content28 = getelementptr inbounds %struct._generic_N_Vector, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %content28, align 8, !tbaa !23
  %data29 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %data29, align 8, !tbaa !25
  %arrayidx30 = getelementptr inbounds double, ptr %27, i64 4
  store double 0.000000e+00, ptr %arrayidx30, align 8, !tbaa !5
  %28 = load ptr, ptr %data, align 8, !tbaa !9
  %Ks31 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 6
  %29 = load double, ptr %Ks31, align 8, !tbaa !20
  %mul = fmul double %29, 4.440000e-01
  %mul32 = fmul double %mul, 7.000000e-03
  %30 = load ptr, ptr %yy, align 8, !tbaa !9
  %content33 = getelementptr inbounds %struct._generic_N_Vector, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %content33, align 8, !tbaa !23
  %data34 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %data34, align 8, !tbaa !25
  %arrayidx35 = getelementptr inbounds double, ptr %32, i64 5
  store double %mul32, ptr %arrayidx35, align 8, !tbaa !5
  %33 = load ptr, ptr %yp, align 8, !tbaa !9
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %33)
  %34 = load ptr, ptr %yy, align 8, !tbaa !9
  %call36 = call ptr @N_VClone(ptr noundef %34)
  store ptr %call36, ptr %rr, align 8, !tbaa !9
  %35 = load ptr, ptr %yy, align 8, !tbaa !9
  %36 = load ptr, ptr %yp, align 8, !tbaa !9
  %37 = load ptr, ptr %rr, align 8, !tbaa !9
  %38 = load ptr, ptr %data, align 8, !tbaa !9
  %call37 = call i32 @res(double noundef 0.000000e+00, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38)
  %39 = load ptr, ptr %rr, align 8, !tbaa !9
  %40 = load ptr, ptr %yp, align 8, !tbaa !9
  call void @N_VScale(double noundef -1.000000e+00, ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %rr, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %41)
  %42 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call38 = call ptr @N_VNew_Serial(i32 noundef 1, ptr noundef %42)
  store ptr %call38, ptr %q, align 8, !tbaa !9
  %43 = load ptr, ptr %q, align 8, !tbaa !9
  %call39 = call i32 @check_retval(ptr noundef %43, ptr noundef @.str.5, i32 noundef 0)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end17
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end17
  %44 = load ptr, ptr %q, align 8, !tbaa !9
  %content43 = getelementptr inbounds %struct._generic_N_Vector, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %content43, align 8, !tbaa !23
  %data44 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %data44, align 8, !tbaa !25
  %arrayidx45 = getelementptr inbounds double, ptr %46, i64 0
  store double 0.000000e+00, ptr %arrayidx45, align 8, !tbaa !5
  %47 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call46 = call ptr @IDACreate(ptr noundef %47)
  store ptr %call46, ptr %mem, align 8, !tbaa !9
  %48 = load ptr, ptr %mem, align 8, !tbaa !9
  %call47 = call i32 @check_retval(ptr noundef %48, ptr noundef @.str.6, i32 noundef 0)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end42
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  %49 = load ptr, ptr %mem, align 8, !tbaa !9
  %50 = load ptr, ptr %yy, align 8, !tbaa !9
  %51 = load ptr, ptr %yp, align 8, !tbaa !9
  %call51 = call i32 @IDAInit(ptr noundef %49, ptr noundef @res, double noundef 0.000000e+00, ptr noundef %50, ptr noundef %51)
  store i32 %call51, ptr %retval1, align 4, !tbaa !11
  %call52 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.7, i32 noundef 1)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end50
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %52 = load ptr, ptr %mem, align 8, !tbaa !9
  %call56 = call i32 @IDASStolerances(ptr noundef %52, double noundef 1.000000e-08, double noundef 1.000000e-10)
  store i32 %call56, ptr %retval1, align 4, !tbaa !11
  %call57 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.8, i32 noundef 1)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %53 = load ptr, ptr %mem, align 8, !tbaa !9
  %54 = load ptr, ptr %data, align 8, !tbaa !9
  %call61 = call i32 @IDASetUserData(ptr noundef %53, ptr noundef %54)
  store i32 %call61, ptr %retval1, align 4, !tbaa !11
  %call62 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.9, i32 noundef 1)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end60
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %55 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call66 = call ptr @SUNDenseMatrix(i32 noundef 6, i32 noundef 6, ptr noundef %55)
  store ptr %call66, ptr %A, align 8, !tbaa !9
  %56 = load ptr, ptr %A, align 8, !tbaa !9
  %call67 = call i32 @check_retval(ptr noundef %56, ptr noundef @.str.10, i32 noundef 0)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %57 = load ptr, ptr %yy, align 8, !tbaa !9
  %58 = load ptr, ptr %A, align 8, !tbaa !9
  %59 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call71 = call ptr @SUNLinSol_Dense(ptr noundef %57, ptr noundef %58, ptr noundef %59)
  store ptr %call71, ptr %LS, align 8, !tbaa !9
  %60 = load ptr, ptr %LS, align 8, !tbaa !9
  %call72 = call i32 @check_retval(ptr noundef %60, ptr noundef @.str.11, i32 noundef 0)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  %61 = load ptr, ptr %mem, align 8, !tbaa !9
  %62 = load ptr, ptr %LS, align 8, !tbaa !9
  %63 = load ptr, ptr %A, align 8, !tbaa !9
  %call76 = call i32 @IDASetLinearSolver(ptr noundef %61, ptr noundef %62, ptr noundef %63)
  store i32 %call76, ptr %retval1, align 4, !tbaa !11
  %call77 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.12, i32 noundef 1)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end75
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %64 = load ptr, ptr %mem, align 8, !tbaa !9
  %65 = load ptr, ptr %q, align 8, !tbaa !9
  %call81 = call i32 @IDAQuadInit(ptr noundef %64, ptr noundef @rhsQ, ptr noundef %65)
  store i32 %call81, ptr %retval1, align 4, !tbaa !11
  %call82 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.13, i32 noundef 1)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end80
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  %66 = load ptr, ptr %mem, align 8, !tbaa !9
  %call86 = call i32 @IDAQuadSStolerances(ptr noundef %66, double noundef 1.000000e-10, double noundef 0x3D719799812DEA11)
  store i32 %call86, ptr %retval1, align 4, !tbaa !11
  %call87 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.14, i32 noundef 1)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end85
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %67 = load ptr, ptr %mem, align 8, !tbaa !9
  %call91 = call i32 @IDASetQuadErrCon(ptr noundef %67, i32 noundef 1)
  store i32 %call91, ptr %retval1, align 4, !tbaa !11
  %call92 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.15, i32 noundef 1)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end90
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %68 = load ptr, ptr %mem, align 8, !tbaa !9
  %call96 = call i32 @IDAAdjInit(ptr noundef %68, i64 noundef 150, i32 noundef 1)
  store i32 %call96, ptr %retval1, align 4, !tbaa !11
  %call97 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.16, i32 noundef 1)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end95
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end100:                                        ; preds = %if.end95
  %call101 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %69 = load ptr, ptr %mem, align 8, !tbaa !9
  %70 = load ptr, ptr %yy, align 8, !tbaa !9
  %71 = load ptr, ptr %yp, align 8, !tbaa !9
  %call102 = call i32 @IDASolveF(ptr noundef %69, double noundef 1.800000e+02, ptr noundef %time, ptr noundef %70, ptr noundef %71, i32 noundef 1, ptr noundef %ncheck)
  store i32 %call102, ptr %retval1, align 4, !tbaa !11
  %call103 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.18, i32 noundef 1)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end100
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.end100
  %72 = load ptr, ptr %mem, align 8, !tbaa !9
  %call107 = call i32 @IDAGetNumSteps(ptr noundef %72, ptr noundef %nst)
  store i32 %call107, ptr %retval1, align 4, !tbaa !11
  %call108 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.19, i32 noundef 1)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end106
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end111:                                        ; preds = %if.end106
  %73 = load i64, ptr %nst, align 8, !tbaa !27
  %call112 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i64 noundef %73)
  %74 = load ptr, ptr %mem, align 8, !tbaa !9
  %75 = load ptr, ptr %q, align 8, !tbaa !9
  %call113 = call i32 @IDAGetQuad(ptr noundef %74, ptr noundef %time, ptr noundef %75)
  store i32 %call113, ptr %retval1, align 4, !tbaa !11
  %call114 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.21, i32 noundef 1)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end111
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end117:                                        ; preds = %if.end111
  %76 = load ptr, ptr %q, align 8, !tbaa !9
  %content118 = getelementptr inbounds %struct._generic_N_Vector, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %content118, align 8, !tbaa !23
  %data119 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %77, i32 0, i32 2
  %78 = load ptr, ptr %data119, align 8, !tbaa !25
  %arrayidx120 = getelementptr inbounds double, ptr %78, i64 0
  %79 = load double, ptr %arrayidx120, align 8, !tbaa !5
  %call121 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, double noundef %79)
  %call122 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  %80 = load ptr, ptr %yy, align 8, !tbaa !9
  %call123 = call ptr @N_VClone(ptr noundef %80)
  store ptr %call123, ptr %yB, align 8, !tbaa !9
  %81 = load ptr, ptr %yB, align 8, !tbaa !9
  %call124 = call i32 @check_retval(ptr noundef %81, ptr noundef @.str.5, i32 noundef 0)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end117
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end127:                                        ; preds = %if.end117
  %82 = load ptr, ptr %yB, align 8, !tbaa !9
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %82)
  %83 = load ptr, ptr %yB, align 8, !tbaa !9
  %call128 = call ptr @N_VClone(ptr noundef %83)
  store ptr %call128, ptr %ypB, align 8, !tbaa !9
  %84 = load ptr, ptr %ypB, align 8, !tbaa !9
  %call129 = call i32 @check_retval(ptr noundef %84, ptr noundef @.str.5, i32 noundef 0)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end127
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end132:                                        ; preds = %if.end127
  %85 = load ptr, ptr %ypB, align 8, !tbaa !9
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %85)
  %86 = load ptr, ptr %ypB, align 8, !tbaa !9
  %content133 = getelementptr inbounds %struct._generic_N_Vector, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %content133, align 8, !tbaa !23
  %data134 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %87, i32 0, i32 2
  %88 = load ptr, ptr %data134, align 8, !tbaa !25
  %arrayidx135 = getelementptr inbounds double, ptr %88, i64 0
  store double -1.000000e+00, ptr %arrayidx135, align 8, !tbaa !5
  %89 = load ptr, ptr %mem, align 8, !tbaa !9
  %call136 = call i32 @IDACreateB(ptr noundef %89, ptr noundef %indexB)
  store i32 %call136, ptr %retval1, align 4, !tbaa !11
  %call137 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.24, i32 noundef 1)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end132
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end140:                                        ; preds = %if.end132
  %90 = load ptr, ptr %mem, align 8, !tbaa !9
  %91 = load i32, ptr %indexB, align 4, !tbaa !11
  %92 = load ptr, ptr %yB, align 8, !tbaa !9
  %93 = load ptr, ptr %ypB, align 8, !tbaa !9
  %call141 = call i32 @IDAInitB(ptr noundef %90, i32 noundef %91, ptr noundef @resB, double noundef 1.800000e+02, ptr noundef %92, ptr noundef %93)
  store i32 %call141, ptr %retval1, align 4, !tbaa !11
  %call142 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.25, i32 noundef 1)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end140
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end145:                                        ; preds = %if.end140
  %94 = load ptr, ptr %mem, align 8, !tbaa !9
  %95 = load i32, ptr %indexB, align 4, !tbaa !11
  %call146 = call i32 @IDASStolerancesB(ptr noundef %94, i32 noundef %95, double noundef 0x3EB0C6F7A0B5ED8D, double noundef 1.000000e-08)
  store i32 %call146, ptr %retval1, align 4, !tbaa !11
  %call147 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.26, i32 noundef 1)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end145
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end150:                                        ; preds = %if.end145
  %96 = load ptr, ptr %mem, align 8, !tbaa !9
  %97 = load i32, ptr %indexB, align 4, !tbaa !11
  %98 = load ptr, ptr %data, align 8, !tbaa !9
  %call151 = call i32 @IDASetUserDataB(ptr noundef %96, i32 noundef %97, ptr noundef %98)
  store i32 %call151, ptr %retval1, align 4, !tbaa !11
  %call152 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.27, i32 noundef 1)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end150
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end155:                                        ; preds = %if.end150
  %99 = load ptr, ptr %mem, align 8, !tbaa !9
  %100 = load i32, ptr %indexB, align 4, !tbaa !11
  %call156 = call i32 @IDASetMaxNumStepsB(ptr noundef %99, i32 noundef %100, i64 noundef 1000)
  store i32 %call156, ptr %retval1, align 4, !tbaa !11
  %101 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call157 = call ptr @SUNDenseMatrix(i32 noundef 6, i32 noundef 6, ptr noundef %101)
  store ptr %call157, ptr %AB, align 8, !tbaa !9
  %102 = load ptr, ptr %AB, align 8, !tbaa !9
  %call158 = call i32 @check_retval(ptr noundef %102, ptr noundef @.str.10, i32 noundef 0)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end155
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end161:                                        ; preds = %if.end155
  %103 = load ptr, ptr %yB, align 8, !tbaa !9
  %104 = load ptr, ptr %AB, align 8, !tbaa !9
  %105 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call162 = call ptr @SUNLinSol_Dense(ptr noundef %103, ptr noundef %104, ptr noundef %105)
  store ptr %call162, ptr %LSB, align 8, !tbaa !9
  %106 = load ptr, ptr %LSB, align 8, !tbaa !9
  %call163 = call i32 @check_retval(ptr noundef %106, ptr noundef @.str.11, i32 noundef 0)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end161
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end166:                                        ; preds = %if.end161
  %107 = load ptr, ptr %mem, align 8, !tbaa !9
  %108 = load i32, ptr %indexB, align 4, !tbaa !11
  %109 = load ptr, ptr %LSB, align 8, !tbaa !9
  %110 = load ptr, ptr %AB, align 8, !tbaa !9
  %call167 = call i32 @IDASetLinearSolverB(ptr noundef %107, i32 noundef %108, ptr noundef %109, ptr noundef %110)
  store i32 %call167, ptr %retval1, align 4, !tbaa !11
  %call168 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.28, i32 noundef 1)
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.end166
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end171:                                        ; preds = %if.end166
  %call172 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  %111 = load ptr, ptr %mem, align 8, !tbaa !9
  %call173 = call i32 @IDASolveB(ptr noundef %111, double noundef 0.000000e+00, i32 noundef 1)
  store i32 %call173, ptr %retval1, align 4, !tbaa !11
  %call174 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.30, i32 noundef 1)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end171
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end177:                                        ; preds = %if.end171
  %112 = load ptr, ptr %mem, align 8, !tbaa !9
  %113 = load i32, ptr %indexB, align 4, !tbaa !11
  %call178 = call ptr @IDAGetAdjIDABmem(ptr noundef %112, i32 noundef %113)
  %call179 = call i32 @IDAGetNumSteps(ptr noundef %call178, ptr noundef %nstB)
  %114 = load i64, ptr %nstB, align 8, !tbaa !27
  %call180 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i64 noundef %114)
  %115 = load ptr, ptr %mem, align 8, !tbaa !9
  %116 = load i32, ptr %indexB, align 4, !tbaa !11
  %117 = load ptr, ptr %yB, align 8, !tbaa !9
  %118 = load ptr, ptr %ypB, align 8, !tbaa !9
  %call181 = call i32 @IDAGetB(ptr noundef %115, i32 noundef %116, ptr noundef %time, ptr noundef %117, ptr noundef %118)
  store i32 %call181, ptr %retval1, align 4, !tbaa !11
  %call182 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.31, i32 noundef 1)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.end177
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end185:                                        ; preds = %if.end177
  %119 = load double, ptr %time, align 8, !tbaa !5
  %120 = load ptr, ptr %yB, align 8, !tbaa !9
  %121 = load ptr, ptr %ypB, align 8, !tbaa !9
  call void @PrintOutput(double noundef %119, ptr noundef %120, ptr noundef %121)
  call void @IDAFree(ptr noundef %mem)
  %122 = load ptr, ptr %LS, align 8, !tbaa !9
  %call186 = call i32 @SUNLinSolFree(ptr noundef %122)
  %123 = load ptr, ptr %A, align 8, !tbaa !9
  call void @SUNMatDestroy(ptr noundef %123)
  %124 = load ptr, ptr %LSB, align 8, !tbaa !9
  %call187 = call i32 @SUNLinSolFree(ptr noundef %124)
  %125 = load ptr, ptr %AB, align 8, !tbaa !9
  call void @SUNMatDestroy(ptr noundef %125)
  %126 = load ptr, ptr %yy, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %126)
  %127 = load ptr, ptr %yp, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %127)
  %128 = load ptr, ptr %yB, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %128)
  %129 = load ptr, ptr %ypB, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %129)
  %130 = load ptr, ptr %q, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %130)
  %131 = load ptr, ptr %data, align 8, !tbaa !9
  call void @free(ptr noundef %131) #6
  %call188 = call i32 @SUNContext_Free(ptr noundef %ctx)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end185, %if.then184, %if.then176, %if.then170, %if.then165, %if.then160, %if.then154, %if.then149, %if.then144, %if.then139, %if.then131, %if.then126, %if.then116, %if.then110, %if.then105, %if.then99, %if.then94, %if.then89, %if.then84, %if.then79, %if.then74, %if.then69, %if.then64, %if.then59, %if.then54, %if.then49, %if.then41, %if.then16, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %y05) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y04) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y03) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y02) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y01) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %LSB) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %LS) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %AB) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %indexB) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nstB) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nst) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %time) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncheck) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypB) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yB) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6
  %132 = load i32, ptr %retval, align 4
  ret i32 %132
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @printf(ptr noundef, ...) #2

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
  store ptr %returnvalue, ptr %returnvalue.addr, align 8, !tbaa !9
  store ptr %funcname, ptr %funcname.addr, align 8, !tbaa !9
  store i32 %opt, ptr %opt.addr, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #6
  %0 = load i32, ptr %opt.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !9
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %3 = load ptr, ptr %funcname.addr, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.33, ptr noundef %3)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %opt.addr, align 4, !tbaa !11
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %5 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !9
  store ptr %5, ptr %retval1, align 8, !tbaa !9
  %6 = load ptr, ptr %retval1, align 8, !tbaa !9
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !9
  %9 = load ptr, ptr %funcname.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %retval1, align 8, !tbaa !9
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.34, ptr noundef %9, i32 noundef %11)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then4
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %12 = load i32, ptr %opt.addr, align 4, !tbaa !11
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %land.lhs.true10, label %if.end14

land.lhs.true10:                                  ; preds = %if.else8
  %13 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !9
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !9
  %15 = load ptr, ptr %funcname.addr, align 8, !tbaa !9
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.35, ptr noundef %15)
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

declare void @N_VConst(double noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @res(double noundef %t, ptr noundef %yy, ptr noundef %yd, ptr noundef %resval, ptr noundef %userdata) #0 {
entry:
  %t.addr = alloca double, align 8
  %yy.addr = alloca ptr, align 8
  %yd.addr = alloca ptr, align 8
  %resval.addr = alloca ptr, align 8
  %userdata.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %k1 = alloca double, align 8
  %k2 = alloca double, align 8
  %k3 = alloca double, align 8
  %k4 = alloca double, align 8
  %K = alloca double, align 8
  %klA = alloca double, align 8
  %Ks = alloca double, align 8
  %pCO2 = alloca double, align 8
  %H = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %y4 = alloca double, align 8
  %y5 = alloca double, align 8
  %y6 = alloca double, align 8
  %yd1 = alloca double, align 8
  %yd2 = alloca double, align 8
  %yd3 = alloca double, align 8
  %yd4 = alloca double, align 8
  %yd5 = alloca double, align 8
  %r1 = alloca double, align 8
  %r2 = alloca double, align 8
  %r3 = alloca double, align 8
  %r4 = alloca double, align 8
  %r5 = alloca double, align 8
  %Fin = alloca double, align 8
  store double %t, ptr %t.addr, align 8, !tbaa !5
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !9
  store ptr %yd, ptr %yd.addr, align 8, !tbaa !9
  store ptr %resval, ptr %resval.addr, align 8, !tbaa !9
  store ptr %userdata, ptr %userdata.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %K) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %klA) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ks) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %pCO2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %H) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yd1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yd2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yd3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yd4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yd5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fin) #6
  %0 = load ptr, ptr %userdata.addr, align 8, !tbaa !9
  store ptr %0, ptr %data, align 8, !tbaa !9
  %1 = load ptr, ptr %data, align 8, !tbaa !9
  %k11 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0
  %2 = load double, ptr %k11, align 8, !tbaa !13
  store double %2, ptr %k1, align 8, !tbaa !5
  %3 = load ptr, ptr %data, align 8, !tbaa !9
  %k22 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %4 = load double, ptr %k22, align 8, !tbaa !15
  store double %4, ptr %k2, align 8, !tbaa !5
  %5 = load ptr, ptr %data, align 8, !tbaa !9
  %k33 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %6 = load double, ptr %k33, align 8, !tbaa !16
  store double %6, ptr %k3, align 8, !tbaa !5
  %7 = load ptr, ptr %data, align 8, !tbaa !9
  %k44 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 3
  %8 = load double, ptr %k44, align 8, !tbaa !17
  store double %8, ptr %k4, align 8, !tbaa !5
  %9 = load ptr, ptr %data, align 8, !tbaa !9
  %K5 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 4
  %10 = load double, ptr %K5, align 8, !tbaa !18
  store double %10, ptr %K, align 8, !tbaa !5
  %11 = load ptr, ptr %data, align 8, !tbaa !9
  %klA6 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 5
  %12 = load double, ptr %klA6, align 8, !tbaa !19
  store double %12, ptr %klA, align 8, !tbaa !5
  %13 = load ptr, ptr %data, align 8, !tbaa !9
  %Ks7 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 6
  %14 = load double, ptr %Ks7, align 8, !tbaa !20
  store double %14, ptr %Ks, align 8, !tbaa !5
  %15 = load ptr, ptr %data, align 8, !tbaa !9
  %pCO28 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 7
  %16 = load double, ptr %pCO28, align 8, !tbaa !21
  store double %16, ptr %pCO2, align 8, !tbaa !5
  %17 = load ptr, ptr %data, align 8, !tbaa !9
  %H9 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 8
  %18 = load double, ptr %H9, align 8, !tbaa !22
  store double %18, ptr %H, align 8, !tbaa !5
  %19 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %content, align 8, !tbaa !23
  %data10 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %data10, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds double, ptr %21, i64 0
  %22 = load double, ptr %arrayidx, align 8, !tbaa !5
  store double %22, ptr %y1, align 8, !tbaa !5
  %23 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content11 = getelementptr inbounds %struct._generic_N_Vector, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %content11, align 8, !tbaa !23
  %data12 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %data12, align 8, !tbaa !25
  %arrayidx13 = getelementptr inbounds double, ptr %25, i64 1
  %26 = load double, ptr %arrayidx13, align 8, !tbaa !5
  store double %26, ptr %y2, align 8, !tbaa !5
  %27 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content14 = getelementptr inbounds %struct._generic_N_Vector, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %content14, align 8, !tbaa !23
  %data15 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %data15, align 8, !tbaa !25
  %arrayidx16 = getelementptr inbounds double, ptr %29, i64 2
  %30 = load double, ptr %arrayidx16, align 8, !tbaa !5
  store double %30, ptr %y3, align 8, !tbaa !5
  %31 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content17 = getelementptr inbounds %struct._generic_N_Vector, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %content17, align 8, !tbaa !23
  %data18 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %data18, align 8, !tbaa !25
  %arrayidx19 = getelementptr inbounds double, ptr %33, i64 3
  %34 = load double, ptr %arrayidx19, align 8, !tbaa !5
  store double %34, ptr %y4, align 8, !tbaa !5
  %35 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content20 = getelementptr inbounds %struct._generic_N_Vector, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %content20, align 8, !tbaa !23
  %data21 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %data21, align 8, !tbaa !25
  %arrayidx22 = getelementptr inbounds double, ptr %37, i64 4
  %38 = load double, ptr %arrayidx22, align 8, !tbaa !5
  store double %38, ptr %y5, align 8, !tbaa !5
  %39 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content23 = getelementptr inbounds %struct._generic_N_Vector, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %content23, align 8, !tbaa !23
  %data24 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %data24, align 8, !tbaa !25
  %arrayidx25 = getelementptr inbounds double, ptr %41, i64 5
  %42 = load double, ptr %arrayidx25, align 8, !tbaa !5
  store double %42, ptr %y6, align 8, !tbaa !5
  %43 = load ptr, ptr %yd.addr, align 8, !tbaa !9
  %content26 = getelementptr inbounds %struct._generic_N_Vector, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %content26, align 8, !tbaa !23
  %data27 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %data27, align 8, !tbaa !25
  %arrayidx28 = getelementptr inbounds double, ptr %45, i64 0
  %46 = load double, ptr %arrayidx28, align 8, !tbaa !5
  store double %46, ptr %yd1, align 8, !tbaa !5
  %47 = load ptr, ptr %yd.addr, align 8, !tbaa !9
  %content29 = getelementptr inbounds %struct._generic_N_Vector, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %content29, align 8, !tbaa !23
  %data30 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %data30, align 8, !tbaa !25
  %arrayidx31 = getelementptr inbounds double, ptr %49, i64 1
  %50 = load double, ptr %arrayidx31, align 8, !tbaa !5
  store double %50, ptr %yd2, align 8, !tbaa !5
  %51 = load ptr, ptr %yd.addr, align 8, !tbaa !9
  %content32 = getelementptr inbounds %struct._generic_N_Vector, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %content32, align 8, !tbaa !23
  %data33 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %data33, align 8, !tbaa !25
  %arrayidx34 = getelementptr inbounds double, ptr %53, i64 2
  %54 = load double, ptr %arrayidx34, align 8, !tbaa !5
  store double %54, ptr %yd3, align 8, !tbaa !5
  %55 = load ptr, ptr %yd.addr, align 8, !tbaa !9
  %content35 = getelementptr inbounds %struct._generic_N_Vector, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %content35, align 8, !tbaa !23
  %data36 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %data36, align 8, !tbaa !25
  %arrayidx37 = getelementptr inbounds double, ptr %57, i64 3
  %58 = load double, ptr %arrayidx37, align 8, !tbaa !5
  store double %58, ptr %yd4, align 8, !tbaa !5
  %59 = load ptr, ptr %yd.addr, align 8, !tbaa !9
  %content38 = getelementptr inbounds %struct._generic_N_Vector, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %content38, align 8, !tbaa !23
  %data39 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %data39, align 8, !tbaa !25
  %arrayidx40 = getelementptr inbounds double, ptr %61, i64 4
  %62 = load double, ptr %arrayidx40, align 8, !tbaa !5
  store double %62, ptr %yd5, align 8, !tbaa !5
  %63 = load double, ptr %k1, align 8, !tbaa !5
  %64 = load double, ptr %y1, align 8, !tbaa !5
  %call = call double @SUNRpowerI(double noundef %64, i32 noundef 4)
  %mul = fmul double %63, %call
  %65 = load double, ptr %y2, align 8, !tbaa !5
  %call41 = call double @sqrt(double noundef %65) #6
  %mul42 = fmul double %mul, %call41
  store double %mul42, ptr %r1, align 8, !tbaa !5
  %66 = load double, ptr %k2, align 8, !tbaa !5
  %67 = load double, ptr %y3, align 8, !tbaa !5
  %mul43 = fmul double %66, %67
  %68 = load double, ptr %y4, align 8, !tbaa !5
  %mul44 = fmul double %mul43, %68
  store double %mul44, ptr %r2, align 8, !tbaa !5
  %69 = load double, ptr %k2, align 8, !tbaa !5
  %70 = load double, ptr %K, align 8, !tbaa !5
  %div = fdiv double %69, %70
  %71 = load double, ptr %y1, align 8, !tbaa !5
  %mul45 = fmul double %div, %71
  %72 = load double, ptr %y5, align 8, !tbaa !5
  %mul46 = fmul double %mul45, %72
  store double %mul46, ptr %r3, align 8, !tbaa !5
  %73 = load double, ptr %k3, align 8, !tbaa !5
  %74 = load double, ptr %y1, align 8, !tbaa !5
  %mul47 = fmul double %73, %74
  %75 = load double, ptr %y4, align 8, !tbaa !5
  %mul48 = fmul double %mul47, %75
  %76 = load double, ptr %y4, align 8, !tbaa !5
  %mul49 = fmul double %mul48, %76
  store double %mul49, ptr %r4, align 8, !tbaa !5
  %77 = load double, ptr %k4, align 8, !tbaa !5
  %78 = load double, ptr %y6, align 8, !tbaa !5
  %mul50 = fmul double %77, %78
  %79 = load double, ptr %y6, align 8, !tbaa !5
  %mul51 = fmul double %mul50, %79
  %80 = load double, ptr %y2, align 8, !tbaa !5
  %call52 = call double @sqrt(double noundef %80) #6
  %mul53 = fmul double %mul51, %call52
  store double %mul53, ptr %r5, align 8, !tbaa !5
  %81 = load double, ptr %klA, align 8, !tbaa !5
  %82 = load double, ptr %pCO2, align 8, !tbaa !5
  %83 = load double, ptr %H, align 8, !tbaa !5
  %div54 = fdiv double %82, %83
  %84 = load double, ptr %y2, align 8, !tbaa !5
  %sub = fsub double %div54, %84
  %mul55 = fmul double %81, %sub
  store double %mul55, ptr %Fin, align 8, !tbaa !5
  %85 = load double, ptr %yd1, align 8, !tbaa !5
  %86 = load double, ptr %r1, align 8, !tbaa !5
  %87 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %86, double %85)
  %88 = load double, ptr %r2, align 8, !tbaa !5
  %sub57 = fsub double %87, %88
  %89 = load double, ptr %r3, align 8, !tbaa !5
  %add = fadd double %sub57, %89
  %90 = load double, ptr %r4, align 8, !tbaa !5
  %add58 = fadd double %add, %90
  %91 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content59 = getelementptr inbounds %struct._generic_N_Vector, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %content59, align 8, !tbaa !23
  %data60 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %92, i32 0, i32 2
  %93 = load ptr, ptr %data60, align 8, !tbaa !25
  %arrayidx61 = getelementptr inbounds double, ptr %93, i64 0
  store double %add58, ptr %arrayidx61, align 8, !tbaa !5
  %94 = load double, ptr %yd2, align 8, !tbaa !5
  %95 = load double, ptr %r1, align 8, !tbaa !5
  %96 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %95, double %94)
  %97 = load double, ptr %r4, align 8, !tbaa !5
  %add63 = fadd double %96, %97
  %98 = load double, ptr %r5, align 8, !tbaa !5
  %99 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %98, double %add63)
  %100 = load double, ptr %Fin, align 8, !tbaa !5
  %sub65 = fsub double %99, %100
  %101 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content66 = getelementptr inbounds %struct._generic_N_Vector, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %content66, align 8, !tbaa !23
  %data67 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %data67, align 8, !tbaa !25
  %arrayidx68 = getelementptr inbounds double, ptr %103, i64 1
  store double %sub65, ptr %arrayidx68, align 8, !tbaa !5
  %104 = load double, ptr %yd3, align 8, !tbaa !5
  %105 = load double, ptr %r1, align 8, !tbaa !5
  %sub69 = fsub double %104, %105
  %106 = load double, ptr %r2, align 8, !tbaa !5
  %add70 = fadd double %sub69, %106
  %107 = load double, ptr %r3, align 8, !tbaa !5
  %sub71 = fsub double %add70, %107
  %108 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content72 = getelementptr inbounds %struct._generic_N_Vector, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %content72, align 8, !tbaa !23
  %data73 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %109, i32 0, i32 2
  %110 = load ptr, ptr %data73, align 8, !tbaa !25
  %arrayidx74 = getelementptr inbounds double, ptr %110, i64 2
  store double %sub71, ptr %arrayidx74, align 8, !tbaa !5
  %111 = load double, ptr %yd4, align 8, !tbaa !5
  %112 = load double, ptr %r2, align 8, !tbaa !5
  %add75 = fadd double %111, %112
  %113 = load double, ptr %r3, align 8, !tbaa !5
  %sub76 = fsub double %add75, %113
  %114 = load double, ptr %r4, align 8, !tbaa !5
  %115 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %114, double %sub76)
  %116 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content78 = getelementptr inbounds %struct._generic_N_Vector, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %content78, align 8, !tbaa !23
  %data79 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %117, i32 0, i32 2
  %118 = load ptr, ptr %data79, align 8, !tbaa !25
  %arrayidx80 = getelementptr inbounds double, ptr %118, i64 3
  store double %115, ptr %arrayidx80, align 8, !tbaa !5
  %119 = load double, ptr %yd5, align 8, !tbaa !5
  %120 = load double, ptr %r2, align 8, !tbaa !5
  %sub81 = fsub double %119, %120
  %121 = load double, ptr %r3, align 8, !tbaa !5
  %add82 = fadd double %sub81, %121
  %122 = load double, ptr %r5, align 8, !tbaa !5
  %sub83 = fsub double %add82, %122
  %123 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content84 = getelementptr inbounds %struct._generic_N_Vector, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %content84, align 8, !tbaa !23
  %data85 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %124, i32 0, i32 2
  %125 = load ptr, ptr %data85, align 8, !tbaa !25
  %arrayidx86 = getelementptr inbounds double, ptr %125, i64 4
  store double %sub83, ptr %arrayidx86, align 8, !tbaa !5
  %126 = load double, ptr %Ks, align 8, !tbaa !5
  %127 = load double, ptr %y1, align 8, !tbaa !5
  %mul87 = fmul double %126, %127
  %128 = load double, ptr %y4, align 8, !tbaa !5
  %129 = load double, ptr %y6, align 8, !tbaa !5
  %neg = fneg double %129
  %130 = call double @llvm.fmuladd.f64(double %mul87, double %128, double %neg)
  %131 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content89 = getelementptr inbounds %struct._generic_N_Vector, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %content89, align 8, !tbaa !23
  %data90 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %132, i32 0, i32 2
  %133 = load ptr, ptr %data90, align 8, !tbaa !25
  %arrayidx91 = getelementptr inbounds double, ptr %133, i64 5
  store double %130, ptr %arrayidx91, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fin) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yd5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yd4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yd3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yd2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yd1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %H) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pCO2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ks) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %klA) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %K) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6
  ret i32 0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) #2

declare void @N_VDestroy(ptr noundef) #2

declare ptr @IDACreate(ptr noundef) #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) #2

declare ptr @SUNDenseMatrix(i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDAQuadInit(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @rhsQ(double noundef %t, ptr noundef %yy, ptr noundef %yp, ptr noundef %qdot, ptr noundef %user_data) #0 {
entry:
  %t.addr = alloca double, align 8
  %yy.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %qdot.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  store double %t, ptr %t.addr, align 8, !tbaa !5
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !9
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !9
  store ptr %qdot, ptr %qdot.addr, align 8, !tbaa !9
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %content, align 8, !tbaa !23
  %data = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %data, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds double, ptr %2, i64 0
  %3 = load double, ptr %arrayidx, align 8, !tbaa !5
  %4 = load ptr, ptr %qdot.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !23
  %data2 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %data2, align 8, !tbaa !25
  %arrayidx3 = getelementptr inbounds double, ptr %6, i64 0
  store double %3, ptr %arrayidx3, align 8, !tbaa !5
  ret i32 0
}

declare i32 @IDAQuadSStolerances(ptr noundef, double noundef, double noundef) #2

declare i32 @IDASetQuadErrCon(ptr noundef, i32 noundef) #2

declare i32 @IDAAdjInit(ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @IDASolveF(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) #2

declare i32 @IDAGetQuad(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDACreateB(ptr noundef, ptr noundef) #2

declare i32 @IDAInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @resB(double noundef %tt, ptr noundef %yy, ptr noundef %yp, ptr noundef %yyB, ptr noundef %ypB, ptr noundef %rrB, ptr noundef %user_dataB) #0 {
entry:
  %tt.addr = alloca double, align 8
  %yy.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %yyB.addr = alloca ptr, align 8
  %ypB.addr = alloca ptr, align 8
  %rrB.addr = alloca ptr, align 8
  %user_dataB.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %y4 = alloca double, align 8
  %y5 = alloca double, align 8
  %y6 = alloca double, align 8
  %yB1 = alloca double, align 8
  %yB2 = alloca double, align 8
  %yB3 = alloca double, align 8
  %yB4 = alloca double, align 8
  %yB5 = alloca double, align 8
  %yB6 = alloca double, align 8
  %ypB1 = alloca double, align 8
  %ypB2 = alloca double, align 8
  %ypB3 = alloca double, align 8
  %ypB4 = alloca double, align 8
  %ypB5 = alloca double, align 8
  %k1 = alloca double, align 8
  %k2 = alloca double, align 8
  %k3 = alloca double, align 8
  %k4 = alloca double, align 8
  %K = alloca double, align 8
  %klA = alloca double, align 8
  %Ks = alloca double, align 8
  %y2tohalf = alloca double, align 8
  %y1to3 = alloca double, align 8
  %k2overK = alloca double, align 8
  %tmp1 = alloca double, align 8
  %tmp2 = alloca double, align 8
  store double %tt, ptr %tt.addr, align 8, !tbaa !5
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !9
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !9
  store ptr %yyB, ptr %yyB.addr, align 8, !tbaa !9
  store ptr %ypB, ptr %ypB.addr, align 8, !tbaa !9
  store ptr %rrB, ptr %rrB.addr, align 8, !tbaa !9
  store ptr %user_dataB, ptr %user_dataB.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yB1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yB2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yB3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yB4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yB5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %yB6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypB1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypB2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypB3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypB4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypB5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %K) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %klA) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ks) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2tohalf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1to3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k2overK) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp2) #6
  %0 = load ptr, ptr %user_dataB.addr, align 8, !tbaa !9
  store ptr %0, ptr %data, align 8, !tbaa !9
  %1 = load ptr, ptr %data, align 8, !tbaa !9
  %k11 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0
  %2 = load double, ptr %k11, align 8, !tbaa !13
  store double %2, ptr %k1, align 8, !tbaa !5
  %3 = load ptr, ptr %data, align 8, !tbaa !9
  %k22 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %4 = load double, ptr %k22, align 8, !tbaa !15
  store double %4, ptr %k2, align 8, !tbaa !5
  %5 = load ptr, ptr %data, align 8, !tbaa !9
  %k33 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %6 = load double, ptr %k33, align 8, !tbaa !16
  store double %6, ptr %k3, align 8, !tbaa !5
  %7 = load ptr, ptr %data, align 8, !tbaa !9
  %k44 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 3
  %8 = load double, ptr %k44, align 8, !tbaa !17
  store double %8, ptr %k4, align 8, !tbaa !5
  %9 = load ptr, ptr %data, align 8, !tbaa !9
  %K5 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 4
  %10 = load double, ptr %K5, align 8, !tbaa !18
  store double %10, ptr %K, align 8, !tbaa !5
  %11 = load ptr, ptr %data, align 8, !tbaa !9
  %klA6 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 5
  %12 = load double, ptr %klA6, align 8, !tbaa !19
  store double %12, ptr %klA, align 8, !tbaa !5
  %13 = load ptr, ptr %data, align 8, !tbaa !9
  %Ks7 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 6
  %14 = load double, ptr %Ks7, align 8, !tbaa !20
  store double %14, ptr %Ks, align 8, !tbaa !5
  %15 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %content, align 8, !tbaa !23
  %data8 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %data8, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds double, ptr %17, i64 0
  %18 = load double, ptr %arrayidx, align 8, !tbaa !5
  store double %18, ptr %y1, align 8, !tbaa !5
  %19 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content9 = getelementptr inbounds %struct._generic_N_Vector, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %content9, align 8, !tbaa !23
  %data10 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %data10, align 8, !tbaa !25
  %arrayidx11 = getelementptr inbounds double, ptr %21, i64 1
  %22 = load double, ptr %arrayidx11, align 8, !tbaa !5
  store double %22, ptr %y2, align 8, !tbaa !5
  %23 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content12 = getelementptr inbounds %struct._generic_N_Vector, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %content12, align 8, !tbaa !23
  %data13 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %data13, align 8, !tbaa !25
  %arrayidx14 = getelementptr inbounds double, ptr %25, i64 2
  %26 = load double, ptr %arrayidx14, align 8, !tbaa !5
  store double %26, ptr %y3, align 8, !tbaa !5
  %27 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content15 = getelementptr inbounds %struct._generic_N_Vector, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %content15, align 8, !tbaa !23
  %data16 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %data16, align 8, !tbaa !25
  %arrayidx17 = getelementptr inbounds double, ptr %29, i64 3
  %30 = load double, ptr %arrayidx17, align 8, !tbaa !5
  store double %30, ptr %y4, align 8, !tbaa !5
  %31 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content18 = getelementptr inbounds %struct._generic_N_Vector, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %content18, align 8, !tbaa !23
  %data19 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %data19, align 8, !tbaa !25
  %arrayidx20 = getelementptr inbounds double, ptr %33, i64 4
  %34 = load double, ptr %arrayidx20, align 8, !tbaa !5
  store double %34, ptr %y5, align 8, !tbaa !5
  %35 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content21 = getelementptr inbounds %struct._generic_N_Vector, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %content21, align 8, !tbaa !23
  %data22 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %data22, align 8, !tbaa !25
  %arrayidx23 = getelementptr inbounds double, ptr %37, i64 5
  %38 = load double, ptr %arrayidx23, align 8, !tbaa !5
  store double %38, ptr %y6, align 8, !tbaa !5
  %39 = load ptr, ptr %yyB.addr, align 8, !tbaa !9
  %content24 = getelementptr inbounds %struct._generic_N_Vector, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %content24, align 8, !tbaa !23
  %data25 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %data25, align 8, !tbaa !25
  %arrayidx26 = getelementptr inbounds double, ptr %41, i64 0
  %42 = load double, ptr %arrayidx26, align 8, !tbaa !5
  store double %42, ptr %yB1, align 8, !tbaa !5
  %43 = load ptr, ptr %yyB.addr, align 8, !tbaa !9
  %content27 = getelementptr inbounds %struct._generic_N_Vector, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %content27, align 8, !tbaa !23
  %data28 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %data28, align 8, !tbaa !25
  %arrayidx29 = getelementptr inbounds double, ptr %45, i64 1
  %46 = load double, ptr %arrayidx29, align 8, !tbaa !5
  store double %46, ptr %yB2, align 8, !tbaa !5
  %47 = load ptr, ptr %yyB.addr, align 8, !tbaa !9
  %content30 = getelementptr inbounds %struct._generic_N_Vector, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %content30, align 8, !tbaa !23
  %data31 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %data31, align 8, !tbaa !25
  %arrayidx32 = getelementptr inbounds double, ptr %49, i64 2
  %50 = load double, ptr %arrayidx32, align 8, !tbaa !5
  store double %50, ptr %yB3, align 8, !tbaa !5
  %51 = load ptr, ptr %yyB.addr, align 8, !tbaa !9
  %content33 = getelementptr inbounds %struct._generic_N_Vector, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %content33, align 8, !tbaa !23
  %data34 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %data34, align 8, !tbaa !25
  %arrayidx35 = getelementptr inbounds double, ptr %53, i64 3
  %54 = load double, ptr %arrayidx35, align 8, !tbaa !5
  store double %54, ptr %yB4, align 8, !tbaa !5
  %55 = load ptr, ptr %yyB.addr, align 8, !tbaa !9
  %content36 = getelementptr inbounds %struct._generic_N_Vector, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %content36, align 8, !tbaa !23
  %data37 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %data37, align 8, !tbaa !25
  %arrayidx38 = getelementptr inbounds double, ptr %57, i64 4
  %58 = load double, ptr %arrayidx38, align 8, !tbaa !5
  store double %58, ptr %yB5, align 8, !tbaa !5
  %59 = load ptr, ptr %yyB.addr, align 8, !tbaa !9
  %content39 = getelementptr inbounds %struct._generic_N_Vector, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %content39, align 8, !tbaa !23
  %data40 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %data40, align 8, !tbaa !25
  %arrayidx41 = getelementptr inbounds double, ptr %61, i64 5
  %62 = load double, ptr %arrayidx41, align 8, !tbaa !5
  store double %62, ptr %yB6, align 8, !tbaa !5
  %63 = load ptr, ptr %ypB.addr, align 8, !tbaa !9
  %content42 = getelementptr inbounds %struct._generic_N_Vector, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %content42, align 8, !tbaa !23
  %data43 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %data43, align 8, !tbaa !25
  %arrayidx44 = getelementptr inbounds double, ptr %65, i64 0
  %66 = load double, ptr %arrayidx44, align 8, !tbaa !5
  store double %66, ptr %ypB1, align 8, !tbaa !5
  %67 = load ptr, ptr %ypB.addr, align 8, !tbaa !9
  %content45 = getelementptr inbounds %struct._generic_N_Vector, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %content45, align 8, !tbaa !23
  %data46 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %68, i32 0, i32 2
  %69 = load ptr, ptr %data46, align 8, !tbaa !25
  %arrayidx47 = getelementptr inbounds double, ptr %69, i64 1
  %70 = load double, ptr %arrayidx47, align 8, !tbaa !5
  store double %70, ptr %ypB2, align 8, !tbaa !5
  %71 = load ptr, ptr %ypB.addr, align 8, !tbaa !9
  %content48 = getelementptr inbounds %struct._generic_N_Vector, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %content48, align 8, !tbaa !23
  %data49 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %data49, align 8, !tbaa !25
  %arrayidx50 = getelementptr inbounds double, ptr %73, i64 2
  %74 = load double, ptr %arrayidx50, align 8, !tbaa !5
  store double %74, ptr %ypB3, align 8, !tbaa !5
  %75 = load ptr, ptr %ypB.addr, align 8, !tbaa !9
  %content51 = getelementptr inbounds %struct._generic_N_Vector, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %content51, align 8, !tbaa !23
  %data52 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %76, i32 0, i32 2
  %77 = load ptr, ptr %data52, align 8, !tbaa !25
  %arrayidx53 = getelementptr inbounds double, ptr %77, i64 3
  %78 = load double, ptr %arrayidx53, align 8, !tbaa !5
  store double %78, ptr %ypB4, align 8, !tbaa !5
  %79 = load ptr, ptr %ypB.addr, align 8, !tbaa !9
  %content54 = getelementptr inbounds %struct._generic_N_Vector, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %content54, align 8, !tbaa !23
  %data55 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %data55, align 8, !tbaa !25
  %arrayidx56 = getelementptr inbounds double, ptr %81, i64 4
  %82 = load double, ptr %arrayidx56, align 8, !tbaa !5
  store double %82, ptr %ypB5, align 8, !tbaa !5
  %83 = load double, ptr %y2, align 8, !tbaa !5
  %call = call double @sqrt(double noundef %83) #6
  store double %call, ptr %y2tohalf, align 8, !tbaa !5
  %84 = load double, ptr %y1, align 8, !tbaa !5
  %85 = load double, ptr %y1, align 8, !tbaa !5
  %mul = fmul double %84, %85
  %86 = load double, ptr %y1, align 8, !tbaa !5
  %mul57 = fmul double %mul, %86
  store double %mul57, ptr %y1to3, align 8, !tbaa !5
  %87 = load double, ptr %k2, align 8, !tbaa !5
  %88 = load double, ptr %K, align 8, !tbaa !5
  %div = fdiv double %87, %88
  store double %div, ptr %k2overK, align 8, !tbaa !5
  %89 = load double, ptr %k1, align 8, !tbaa !5
  %90 = load double, ptr %y1to3, align 8, !tbaa !5
  %mul58 = fmul double %89, %90
  %91 = load double, ptr %y2tohalf, align 8, !tbaa !5
  %mul59 = fmul double %mul58, %91
  store double %mul59, ptr %tmp1, align 8, !tbaa !5
  %92 = load double, ptr %k3, align 8, !tbaa !5
  %93 = load double, ptr %y4, align 8, !tbaa !5
  %mul60 = fmul double %92, %93
  %94 = load double, ptr %y4, align 8, !tbaa !5
  %mul61 = fmul double %mul60, %94
  store double %mul61, ptr %tmp2, align 8, !tbaa !5
  %95 = load double, ptr %ypB1, align 8, !tbaa !5
  %add = fadd double 1.000000e+00, %95
  %96 = load double, ptr %tmp1, align 8, !tbaa !5
  %97 = load double, ptr %k2overK, align 8, !tbaa !5
  %98 = load double, ptr %y5, align 8, !tbaa !5
  %mul63 = fmul double %97, %98
  %99 = call double @llvm.fmuladd.f64(double 8.000000e+00, double %96, double %mul63)
  %100 = load double, ptr %tmp2, align 8, !tbaa !5
  %add64 = fadd double %99, %100
  %101 = load double, ptr %yB1, align 8, !tbaa !5
  %neg = fneg double %add64
  %102 = call double @llvm.fmuladd.f64(double %neg, double %101, double %add)
  %103 = load double, ptr %tmp1, align 8, !tbaa !5
  %104 = load double, ptr %tmp2, align 8, !tbaa !5
  %105 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %103, double %104)
  %106 = load double, ptr %yB2, align 8, !tbaa !5
  %neg68 = fneg double %105
  %107 = call double @llvm.fmuladd.f64(double %neg68, double %106, double %102)
  %108 = load double, ptr %tmp1, align 8, !tbaa !5
  %109 = load double, ptr %k2overK, align 8, !tbaa !5
  %110 = load double, ptr %y5, align 8, !tbaa !5
  %mul70 = fmul double %109, %110
  %111 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %108, double %mul70)
  %112 = load double, ptr %yB3, align 8, !tbaa !5
  %113 = call double @llvm.fmuladd.f64(double %111, double %112, double %107)
  %114 = load double, ptr %k2overK, align 8, !tbaa !5
  %115 = load double, ptr %y5, align 8, !tbaa !5
  %mul72 = fmul double %114, %115
  %116 = load double, ptr %yB4, align 8, !tbaa !5
  %117 = load double, ptr %yB5, align 8, !tbaa !5
  %sub = fsub double %116, %117
  %118 = call double @llvm.fmuladd.f64(double %mul72, double %sub, double %113)
  %119 = load double, ptr %tmp2, align 8, !tbaa !5
  %mul74 = fmul double 2.000000e+00, %119
  %120 = load double, ptr %yB4, align 8, !tbaa !5
  %neg76 = fneg double %mul74
  %121 = call double @llvm.fmuladd.f64(double %neg76, double %120, double %118)
  %122 = load double, ptr %Ks, align 8, !tbaa !5
  %123 = load double, ptr %y4, align 8, !tbaa !5
  %mul77 = fmul double %122, %123
  %124 = load double, ptr %yB6, align 8, !tbaa !5
  %125 = call double @llvm.fmuladd.f64(double %mul77, double %124, double %121)
  %126 = load ptr, ptr %rrB.addr, align 8, !tbaa !9
  %content79 = getelementptr inbounds %struct._generic_N_Vector, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %content79, align 8, !tbaa !23
  %data80 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %127, i32 0, i32 2
  %128 = load ptr, ptr %data80, align 8, !tbaa !25
  %arrayidx81 = getelementptr inbounds double, ptr %128, i64 0
  store double %125, ptr %arrayidx81, align 8, !tbaa !5
  %129 = load double, ptr %k1, align 8, !tbaa !5
  %130 = load double, ptr %y1, align 8, !tbaa !5
  %mul82 = fmul double %129, %130
  %131 = load double, ptr %y1to3, align 8, !tbaa !5
  %mul83 = fmul double %mul82, %131
  %132 = load double, ptr %y2tohalf, align 8, !tbaa !5
  %133 = load double, ptr %y2, align 8, !tbaa !5
  %div84 = fdiv double %132, %133
  %mul85 = fmul double %mul83, %div84
  store double %mul85, ptr %tmp1, align 8, !tbaa !5
  %134 = load double, ptr %k4, align 8, !tbaa !5
  %135 = load double, ptr %y6, align 8, !tbaa !5
  %mul86 = fmul double %134, %135
  %136 = load double, ptr %y6, align 8, !tbaa !5
  %mul87 = fmul double %mul86, %136
  %137 = load double, ptr %y2tohalf, align 8, !tbaa !5
  %138 = load double, ptr %y2, align 8, !tbaa !5
  %div88 = fdiv double %137, %138
  %mul89 = fmul double %mul87, %div88
  store double %mul89, ptr %tmp2, align 8, !tbaa !5
  %139 = load double, ptr %ypB2, align 8, !tbaa !5
  %140 = load double, ptr %tmp1, align 8, !tbaa !5
  %141 = load double, ptr %yB1, align 8, !tbaa !5
  %neg91 = fneg double %140
  %142 = call double @llvm.fmuladd.f64(double %neg91, double %141, double %139)
  %143 = load double, ptr %tmp1, align 8, !tbaa !5
  %144 = load double, ptr %tmp2, align 8, !tbaa !5
  %mul93 = fmul double 2.500000e-01, %144
  %145 = call double @llvm.fmuladd.f64(double 2.500000e-01, double %143, double %mul93)
  %146 = load double, ptr %klA, align 8, !tbaa !5
  %add94 = fadd double %145, %146
  %147 = load double, ptr %yB2, align 8, !tbaa !5
  %neg96 = fneg double %add94
  %148 = call double @llvm.fmuladd.f64(double %neg96, double %147, double %142)
  %149 = load double, ptr %tmp1, align 8, !tbaa !5
  %mul97 = fmul double 5.000000e-01, %149
  %150 = load double, ptr %yB3, align 8, !tbaa !5
  %151 = call double @llvm.fmuladd.f64(double %mul97, double %150, double %148)
  %152 = load double, ptr %tmp2, align 8, !tbaa !5
  %mul99 = fmul double 5.000000e-01, %152
  %153 = load double, ptr %yB5, align 8, !tbaa !5
  %154 = call double @llvm.fmuladd.f64(double %mul99, double %153, double %151)
  %155 = load ptr, ptr %rrB.addr, align 8, !tbaa !9
  %content101 = getelementptr inbounds %struct._generic_N_Vector, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %content101, align 8, !tbaa !23
  %data102 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %156, i32 0, i32 2
  %157 = load ptr, ptr %data102, align 8, !tbaa !25
  %arrayidx103 = getelementptr inbounds double, ptr %157, i64 1
  store double %154, ptr %arrayidx103, align 8, !tbaa !5
  %158 = load double, ptr %ypB3, align 8, !tbaa !5
  %159 = load double, ptr %k2, align 8, !tbaa !5
  %160 = load double, ptr %y4, align 8, !tbaa !5
  %mul104 = fmul double %159, %160
  %161 = load double, ptr %yB1, align 8, !tbaa !5
  %162 = load double, ptr %yB3, align 8, !tbaa !5
  %sub105 = fsub double %161, %162
  %163 = load double, ptr %yB4, align 8, !tbaa !5
  %sub106 = fsub double %sub105, %163
  %164 = load double, ptr %yB5, align 8, !tbaa !5
  %add107 = fadd double %sub106, %164
  %165 = call double @llvm.fmuladd.f64(double %mul104, double %add107, double %158)
  %166 = load ptr, ptr %rrB.addr, align 8, !tbaa !9
  %content109 = getelementptr inbounds %struct._generic_N_Vector, ptr %166, i32 0, i32 0
  %167 = load ptr, ptr %content109, align 8, !tbaa !23
  %data110 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %167, i32 0, i32 2
  %168 = load ptr, ptr %data110, align 8, !tbaa !25
  %arrayidx111 = getelementptr inbounds double, ptr %168, i64 2
  store double %165, ptr %arrayidx111, align 8, !tbaa !5
  %169 = load double, ptr %k3, align 8, !tbaa !5
  %170 = load double, ptr %y1, align 8, !tbaa !5
  %mul112 = fmul double %169, %170
  %171 = load double, ptr %y4, align 8, !tbaa !5
  %mul113 = fmul double %mul112, %171
  store double %mul113, ptr %tmp1, align 8, !tbaa !5
  %172 = load double, ptr %k2, align 8, !tbaa !5
  %173 = load double, ptr %y3, align 8, !tbaa !5
  %mul114 = fmul double %172, %173
  store double %mul114, ptr %tmp2, align 8, !tbaa !5
  %174 = load double, ptr %ypB4, align 8, !tbaa !5
  %175 = load double, ptr %tmp2, align 8, !tbaa !5
  %176 = load double, ptr %tmp1, align 8, !tbaa !5
  %177 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %176, double %175)
  %178 = load double, ptr %yB1, align 8, !tbaa !5
  %179 = call double @llvm.fmuladd.f64(double %177, double %178, double %174)
  %180 = load double, ptr %tmp1, align 8, !tbaa !5
  %mul117 = fmul double 2.000000e+00, %180
  %181 = load double, ptr %yB2, align 8, !tbaa !5
  %neg119 = fneg double %mul117
  %182 = call double @llvm.fmuladd.f64(double %neg119, double %181, double %179)
  %183 = load double, ptr %tmp2, align 8, !tbaa !5
  %184 = load double, ptr %yB3, align 8, !tbaa !5
  %neg121 = fneg double %183
  %185 = call double @llvm.fmuladd.f64(double %neg121, double %184, double %182)
  %186 = load double, ptr %tmp2, align 8, !tbaa !5
  %187 = load double, ptr %tmp1, align 8, !tbaa !5
  %188 = call double @llvm.fmuladd.f64(double 4.000000e+00, double %187, double %186)
  %189 = load double, ptr %yB4, align 8, !tbaa !5
  %neg124 = fneg double %188
  %190 = call double @llvm.fmuladd.f64(double %neg124, double %189, double %185)
  %191 = load double, ptr %tmp2, align 8, !tbaa !5
  %192 = load double, ptr %yB5, align 8, !tbaa !5
  %193 = call double @llvm.fmuladd.f64(double %191, double %192, double %190)
  %194 = load double, ptr %Ks, align 8, !tbaa !5
  %195 = load double, ptr %y1, align 8, !tbaa !5
  %mul126 = fmul double %194, %195
  %196 = load double, ptr %yB6, align 8, !tbaa !5
  %197 = call double @llvm.fmuladd.f64(double %mul126, double %196, double %193)
  %198 = load ptr, ptr %rrB.addr, align 8, !tbaa !9
  %content128 = getelementptr inbounds %struct._generic_N_Vector, ptr %198, i32 0, i32 0
  %199 = load ptr, ptr %content128, align 8, !tbaa !23
  %data129 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %199, i32 0, i32 2
  %200 = load ptr, ptr %data129, align 8, !tbaa !25
  %arrayidx130 = getelementptr inbounds double, ptr %200, i64 3
  store double %197, ptr %arrayidx130, align 8, !tbaa !5
  %201 = load double, ptr %ypB5, align 8, !tbaa !5
  %202 = load double, ptr %k2overK, align 8, !tbaa !5
  %203 = load double, ptr %y1, align 8, !tbaa !5
  %mul131 = fmul double %202, %203
  %204 = load double, ptr %yB1, align 8, !tbaa !5
  %205 = load double, ptr %yB3, align 8, !tbaa !5
  %sub132 = fsub double %204, %205
  %206 = load double, ptr %yB4, align 8, !tbaa !5
  %sub133 = fsub double %sub132, %206
  %207 = load double, ptr %yB5, align 8, !tbaa !5
  %add134 = fadd double %sub133, %207
  %neg136 = fneg double %mul131
  %208 = call double @llvm.fmuladd.f64(double %neg136, double %add134, double %201)
  %209 = load ptr, ptr %rrB.addr, align 8, !tbaa !9
  %content137 = getelementptr inbounds %struct._generic_N_Vector, ptr %209, i32 0, i32 0
  %210 = load ptr, ptr %content137, align 8, !tbaa !23
  %data138 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %210, i32 0, i32 2
  %211 = load ptr, ptr %data138, align 8, !tbaa !25
  %arrayidx139 = getelementptr inbounds double, ptr %211, i64 4
  store double %208, ptr %arrayidx139, align 8, !tbaa !5
  %212 = load double, ptr %k4, align 8, !tbaa !5
  %213 = load double, ptr %y6, align 8, !tbaa !5
  %mul140 = fmul double %212, %213
  %214 = load double, ptr %y2tohalf, align 8, !tbaa !5
  %mul141 = fmul double %mul140, %214
  %215 = load double, ptr %yB5, align 8, !tbaa !5
  %216 = load double, ptr %yB2, align 8, !tbaa !5
  %neg143 = fneg double %216
  %217 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %215, double %neg143)
  %218 = load double, ptr %yB6, align 8, !tbaa !5
  %neg145 = fneg double %218
  %219 = call double @llvm.fmuladd.f64(double %mul141, double %217, double %neg145)
  %220 = load ptr, ptr %rrB.addr, align 8, !tbaa !9
  %content146 = getelementptr inbounds %struct._generic_N_Vector, ptr %220, i32 0, i32 0
  %221 = load ptr, ptr %content146, align 8, !tbaa !23
  %data147 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %221, i32 0, i32 2
  %222 = load ptr, ptr %data147, align 8, !tbaa !25
  %arrayidx148 = getelementptr inbounds double, ptr %222, i64 5
  store double %219, ptr %arrayidx148, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k2overK) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1to3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2tohalf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ks) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %klA) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %K) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypB5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypB4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypB3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypB2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypB1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yB6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yB5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yB4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yB3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yB2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %yB1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6
  ret i32 0
}

declare i32 @IDASStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) #2

declare i32 @IDASetUserDataB(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @IDASetMaxNumStepsB(ptr noundef, i32 noundef, i64 noundef) #2

declare i32 @IDASetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @IDASolveB(ptr noundef, double noundef, i32 noundef) #2

declare ptr @IDAGetAdjIDABmem(ptr noundef, i32 noundef) #2

declare i32 @IDAGetB(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @PrintOutput(double noundef %tfinal, ptr noundef %yB, ptr noundef %ypB) #0 {
entry:
  %tfinal.addr = alloca double, align 8
  %yB.addr = alloca ptr, align 8
  %ypB.addr = alloca ptr, align 8
  store double %tfinal, ptr %tfinal.addr, align 8, !tbaa !5
  store ptr %yB, ptr %yB.addr, align 8, !tbaa !9
  store ptr %ypB, ptr %ypB.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %yB.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %content, align 8, !tbaa !23
  %data = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %data, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds double, ptr %2, i64 0
  %3 = load double, ptr %arrayidx, align 8, !tbaa !5
  %4 = load ptr, ptr %yB.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !23
  %data2 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %data2, align 8, !tbaa !25
  %arrayidx3 = getelementptr inbounds double, ptr %6, i64 1
  %7 = load double, ptr %arrayidx3, align 8, !tbaa !5
  %8 = load ptr, ptr %yB.addr, align 8, !tbaa !9
  %content4 = getelementptr inbounds %struct._generic_N_Vector, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %content4, align 8, !tbaa !23
  %data5 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %data5, align 8, !tbaa !25
  %arrayidx6 = getelementptr inbounds double, ptr %10, i64 2
  %11 = load double, ptr %arrayidx6, align 8, !tbaa !5
  %12 = load ptr, ptr %yB.addr, align 8, !tbaa !9
  %content7 = getelementptr inbounds %struct._generic_N_Vector, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %content7, align 8, !tbaa !23
  %data8 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %data8, align 8, !tbaa !25
  %arrayidx9 = getelementptr inbounds double, ptr %14, i64 3
  %15 = load double, ptr %arrayidx9, align 8, !tbaa !5
  %16 = load ptr, ptr %yB.addr, align 8, !tbaa !9
  %content10 = getelementptr inbounds %struct._generic_N_Vector, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %content10, align 8, !tbaa !23
  %data11 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %data11, align 8, !tbaa !25
  %arrayidx12 = getelementptr inbounds double, ptr %18, i64 4
  %19 = load double, ptr %arrayidx12, align 8, !tbaa !5
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.32, double noundef %3, double noundef %7, double noundef %11, double noundef %15, double noundef %19)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  ret void
}

declare void @IDAFree(ptr noundef) #2

declare i32 @SUNLinSolFree(ptr noundef) #2

declare void @SUNMatDestroy(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare i32 @SUNContext_Free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare double @SUNRpowerI(double noundef, i32 noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!15 = !{!14, !6, i64 8}
!16 = !{!14, !6, i64 16}
!17 = !{!14, !6, i64 24}
!18 = !{!14, !6, i64 32}
!19 = !{!14, !6, i64 40}
!20 = !{!14, !6, i64 48}
!21 = !{!14, !6, i64 56}
!22 = !{!14, !6, i64 64}
!23 = !{!24, !10, i64 0}
!24 = !{!"_generic_N_Vector", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!26, !10, i64 8}
!26 = !{!"_N_VectorContent_Serial", !12, i64 0, !12, i64 4, !10, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !7, i64 0}

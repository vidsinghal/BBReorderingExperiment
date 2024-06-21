; ModuleID = 'samples/329.bc'
source_filename = "/local-ssd/sundials-icjqhhsaxwda2stbau4awbrdkjeonqjc-build/aidengro/spack-stage-sundials-6.6.1-icjqhhsaxwda2stbau4awbrdkjeonqjc/spack-src/examples/idas/serial/idasRoberts_FSA_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [3 x double], double }
%struct._generic_N_Vector = type { ptr, ptr, ptr }
%struct._N_VectorContent_Serial = type { i32, i32, ptr }

@.str = private unnamed_addr constant [18 x i8] c"SUNContext_Create\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"N_VNew_Serial\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"IDACreate\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"IDAInit\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IDASVtolerances\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"IDASetId\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"IDASetUserData\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SUNDenseMatrix\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"SUNLinSol_Dense\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"IDASetLinearSolver\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\0A3-species chemical kinetics problem\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"N_VCloneVectorArray\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"IDASensInit\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"IDASensEEtolerances\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"IDASetSensErrCon\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"IDASetSensParams\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Sensitivity: YES \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"( SIMULTANEOUS +\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"( STAGGERED +\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c" FULL ERROR CONTROL )\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c" PARTIAL ERROR CONTROL )\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Sensitivity: NO \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"IDACalcIC\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"IDAGetConsistentIC\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"===========================================\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"============================\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"     T     Q       H      NST           y1\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"           y2           y3    \0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"IDASolve\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"IDAGetSens\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"-----------------------------------------\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"------------------------------\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"\0AQuadrature:\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"G:      %10.4e\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"\0ASensitivities at t=%g:\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"dG/dp1: %11.4e\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"\0AFinal Statistics:\0A\00", align 1
@stdout = external global ptr, align 8
@.str.39 = private unnamed_addr constant [26 x i8] c"idasRoberts_FSA_dns_stats\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"_-sensi_sim\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"_-sensi_stg\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"_t\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"_f\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c".csv\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"-nosensi\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"-sensi\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"sim\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"stg\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"\0AUsage: %s [-nosensi] [-sensi sensi_meth err_con]\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"         sensi_meth = sim or stg\0A\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"         err_con    = t or f\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\0A\0AConsistent IC:\0A\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"\09y = \00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"%12.4e %12.4e %12.4e \0A\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"\09yp= \00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"                  Sensitivity 1  \00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"\0A\09s1 = \00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"\09s1'= \00", align 1
@.str.62 = private unnamed_addr constant [34 x i8] c"                  Sensitivity 2  \00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"\0A\09s2 = \00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"\09s2'= \00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"                  Sensitivity 3  \00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"\0A\09s3 = \00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"\09s3'= \00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"IDAGetNumSteps\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"IDAGetLastOrder\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"IDAGetLastStep\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"%8.3e %2d  %8.3e %5ld\0A\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"                  Solution       \00", align 1
@stderr = external global ptr, align 8
@.str.73 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"\0AMEMORY_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %ida_mem = alloca ptr, align 8
  %A = alloca ptr, align 8
  %LS = alloca ptr, align 8
  %data = alloca ptr, align 8
  %reltol = alloca double, align 8
  %t = alloca double, align 8
  %tout = alloca double, align 8
  %y = alloca ptr, align 8
  %yp = alloca ptr, align 8
  %abstol = alloca ptr, align 8
  %id = alloca ptr, align 8
  %iout = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %FID = alloca ptr, align 8
  %fname = alloca [256 x i8], align 16
  %pbar = alloca [3 x double], align 16
  %is = alloca i32, align 4
  %yS = alloca ptr, align 8
  %ypS = alloca ptr, align 8
  %sensi = alloca i32, align 4
  %err_con = alloca i32, align 4
  %sensi_meth = alloca i32, align 4
  %yQ = alloca ptr, align 8
  %yQS = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ida_mem) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %LS) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %reltol) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tout) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %abstol) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %iout) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %FID) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr %fname) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %pbar) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yS) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypS) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sensi) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_con) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sensi_meth) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yQ) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yQS) #8
  store ptr null, ptr %ida_mem, align 8, !tbaa !9
  store ptr null, ptr %A, align 8, !tbaa !9
  store ptr null, ptr %LS, align 8, !tbaa !9
  store ptr null, ptr %data, align 8, !tbaa !9
  store ptr null, ptr %y, align 8, !tbaa !9
  store ptr null, ptr %yS, align 8, !tbaa !9
  store ptr null, ptr %ypS, align 8, !tbaa !9
  store ptr null, ptr %yQS, align 8, !tbaa !9
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  call void @ProcessArgs(i32 noundef %0, ptr noundef %1, ptr noundef %sensi, ptr noundef %sensi_meth, ptr noundef %err_con)
  %call = call i32 @SUNContext_Create(ptr noundef null, ptr noundef %ctx)
  store i32 %call, ptr %retval1, align 4, !tbaa !5
  %call2 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str, i32 noundef 1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call noalias ptr @malloc(i64 noundef 32) #9
  store ptr %call3, ptr %data, align 8, !tbaa !9
  %2 = load ptr, ptr %data, align 8, !tbaa !9
  %call4 = call i32 @check_retval(ptr noundef %2, ptr noundef @.str.1, i32 noundef 2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = load ptr, ptr %data, align 8, !tbaa !9
  %p = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0
  store double 4.000000e-02, ptr %arrayidx, align 8, !tbaa !11
  %4 = load ptr, ptr %data, align 8, !tbaa !9
  %p8 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %p8, i64 0, i64 1
  store double 1.000000e+04, ptr %arrayidx9, align 8, !tbaa !11
  %5 = load ptr, ptr %data, align 8, !tbaa !9
  %p10 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], ptr %p10, i64 0, i64 2
  store double 3.000000e+07, ptr %arrayidx11, align 8, !tbaa !11
  %6 = load ptr, ptr %data, align 8, !tbaa !9
  %coef = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store double 5.000000e-01, ptr %coef, align 8, !tbaa !13
  %7 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call12 = call ptr @N_VNew_Serial(i32 noundef 3, ptr noundef %7)
  store ptr %call12, ptr %y, align 8, !tbaa !9
  %8 = load ptr, ptr %y, align 8, !tbaa !9
  %call13 = call i32 @check_retval(ptr noundef %8, ptr noundef @.str.2, i32 noundef 0)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %9 = load ptr, ptr %y, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content, align 8, !tbaa !15
  %data17 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %data17, align 8, !tbaa !17
  %arrayidx18 = getelementptr inbounds double, ptr %11, i64 0
  store double 1.000000e+00, ptr %arrayidx18, align 8, !tbaa !11
  %12 = load ptr, ptr %y, align 8, !tbaa !9
  %content19 = getelementptr inbounds %struct._generic_N_Vector, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %content19, align 8, !tbaa !15
  %data20 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %data20, align 8, !tbaa !17
  %arrayidx21 = getelementptr inbounds double, ptr %14, i64 1
  store double 0.000000e+00, ptr %arrayidx21, align 8, !tbaa !11
  %15 = load ptr, ptr %y, align 8, !tbaa !9
  %content22 = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %content22, align 8, !tbaa !15
  %data23 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %data23, align 8, !tbaa !17
  %arrayidx24 = getelementptr inbounds double, ptr %17, i64 2
  store double 0.000000e+00, ptr %arrayidx24, align 8, !tbaa !11
  %18 = load ptr, ptr %y, align 8, !tbaa !9
  %call25 = call ptr @N_VClone(ptr noundef %18)
  store ptr %call25, ptr %yp, align 8, !tbaa !9
  %19 = load ptr, ptr %yp, align 8, !tbaa !9
  %call26 = call i32 @check_retval(ptr noundef %19, ptr noundef @.str.2, i32 noundef 0)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end16
  %20 = load ptr, ptr %yp, align 8, !tbaa !9
  %content30 = getelementptr inbounds %struct._generic_N_Vector, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %content30, align 8, !tbaa !15
  %data31 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %data31, align 8, !tbaa !17
  %arrayidx32 = getelementptr inbounds double, ptr %22, i64 0
  store double 1.000000e-01, ptr %arrayidx32, align 8, !tbaa !11
  %23 = load ptr, ptr %yp, align 8, !tbaa !9
  %content33 = getelementptr inbounds %struct._generic_N_Vector, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %content33, align 8, !tbaa !15
  %data34 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %data34, align 8, !tbaa !17
  %arrayidx35 = getelementptr inbounds double, ptr %25, i64 1
  store double 0.000000e+00, ptr %arrayidx35, align 8, !tbaa !11
  %26 = load ptr, ptr %yp, align 8, !tbaa !9
  %content36 = getelementptr inbounds %struct._generic_N_Vector, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %content36, align 8, !tbaa !15
  %data37 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %data37, align 8, !tbaa !17
  %arrayidx38 = getelementptr inbounds double, ptr %28, i64 2
  store double 0.000000e+00, ptr %arrayidx38, align 8, !tbaa !11
  %29 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call39 = call ptr @IDACreate(ptr noundef %29)
  store ptr %call39, ptr %ida_mem, align 8, !tbaa !9
  %30 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %call40 = call i32 @check_retval(ptr noundef %30, ptr noundef @.str.3, i32 noundef 0)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end29
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  %31 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %32 = load ptr, ptr %y, align 8, !tbaa !9
  %33 = load ptr, ptr %yp, align 8, !tbaa !9
  %call44 = call i32 @IDAInit(ptr noundef %31, ptr noundef @res, double noundef 0.000000e+00, ptr noundef %32, ptr noundef %33)
  store i32 %call44, ptr %retval1, align 4, !tbaa !5
  %call45 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.4, i32 noundef 1)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  store double 0x3EB0C6F7A0B5ED8D, ptr %reltol, align 8, !tbaa !11
  %34 = load ptr, ptr %y, align 8, !tbaa !9
  %call49 = call ptr @N_VClone(ptr noundef %34)
  store ptr %call49, ptr %abstol, align 8, !tbaa !9
  %35 = load ptr, ptr %abstol, align 8, !tbaa !9
  %content50 = getelementptr inbounds %struct._generic_N_Vector, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %content50, align 8, !tbaa !15
  %data51 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %data51, align 8, !tbaa !17
  %arrayidx52 = getelementptr inbounds double, ptr %37, i64 0
  store double 1.000000e-08, ptr %arrayidx52, align 8, !tbaa !11
  %38 = load ptr, ptr %abstol, align 8, !tbaa !9
  %content53 = getelementptr inbounds %struct._generic_N_Vector, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %content53, align 8, !tbaa !15
  %data54 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %data54, align 8, !tbaa !17
  %arrayidx55 = getelementptr inbounds double, ptr %40, i64 1
  store double 0x3D06849B86A12B9B, ptr %arrayidx55, align 8, !tbaa !11
  %41 = load ptr, ptr %abstol, align 8, !tbaa !9
  %content56 = getelementptr inbounds %struct._generic_N_Vector, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %content56, align 8, !tbaa !15
  %data57 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %data57, align 8, !tbaa !17
  %arrayidx58 = getelementptr inbounds double, ptr %43, i64 2
  store double 0x3EB0C6F7A0B5ED8D, ptr %arrayidx58, align 8, !tbaa !11
  %44 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %45 = load double, ptr %reltol, align 8, !tbaa !11
  %46 = load ptr, ptr %abstol, align 8, !tbaa !9
  %call59 = call i32 @IDASVtolerances(ptr noundef %44, double noundef %45, ptr noundef %46)
  store i32 %call59, ptr %retval1, align 4, !tbaa !5
  %call60 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.5, i32 noundef 1)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end48
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end48
  %47 = load ptr, ptr %y, align 8, !tbaa !9
  %call64 = call ptr @N_VClone(ptr noundef %47)
  store ptr %call64, ptr %id, align 8, !tbaa !9
  %48 = load ptr, ptr %id, align 8, !tbaa !9
  %content65 = getelementptr inbounds %struct._generic_N_Vector, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %content65, align 8, !tbaa !15
  %data66 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %data66, align 8, !tbaa !17
  %arrayidx67 = getelementptr inbounds double, ptr %50, i64 0
  store double 1.000000e+00, ptr %arrayidx67, align 8, !tbaa !11
  %51 = load ptr, ptr %id, align 8, !tbaa !9
  %content68 = getelementptr inbounds %struct._generic_N_Vector, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %content68, align 8, !tbaa !15
  %data69 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %data69, align 8, !tbaa !17
  %arrayidx70 = getelementptr inbounds double, ptr %53, i64 1
  store double 1.000000e+00, ptr %arrayidx70, align 8, !tbaa !11
  %54 = load ptr, ptr %id, align 8, !tbaa !9
  %content71 = getelementptr inbounds %struct._generic_N_Vector, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %content71, align 8, !tbaa !15
  %data72 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %data72, align 8, !tbaa !17
  %arrayidx73 = getelementptr inbounds double, ptr %56, i64 2
  store double 0.000000e+00, ptr %arrayidx73, align 8, !tbaa !11
  %57 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %58 = load ptr, ptr %id, align 8, !tbaa !9
  %call74 = call i32 @IDASetId(ptr noundef %57, ptr noundef %58)
  store i32 %call74, ptr %retval1, align 4, !tbaa !5
  %call75 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.6, i32 noundef 1)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end63
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.end63
  %59 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %60 = load ptr, ptr %data, align 8, !tbaa !9
  %call79 = call i32 @IDASetUserData(ptr noundef %59, ptr noundef %60)
  store i32 %call79, ptr %retval1, align 4, !tbaa !5
  %call80 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.7, i32 noundef 1)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end78
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  %61 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call84 = call ptr @SUNDenseMatrix(i32 noundef 3, i32 noundef 3, ptr noundef %61)
  store ptr %call84, ptr %A, align 8, !tbaa !9
  %62 = load ptr, ptr %A, align 8, !tbaa !9
  %call85 = call i32 @check_retval(ptr noundef %62, ptr noundef @.str.8, i32 noundef 0)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end88:                                         ; preds = %if.end83
  %63 = load ptr, ptr %y, align 8, !tbaa !9
  %64 = load ptr, ptr %A, align 8, !tbaa !9
  %65 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call89 = call ptr @SUNLinSol_Dense(ptr noundef %63, ptr noundef %64, ptr noundef %65)
  store ptr %call89, ptr %LS, align 8, !tbaa !9
  %66 = load ptr, ptr %LS, align 8, !tbaa !9
  %call90 = call i32 @check_retval(ptr noundef %66, ptr noundef @.str.9, i32 noundef 0)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  %67 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %68 = load ptr, ptr %LS, align 8, !tbaa !9
  %69 = load ptr, ptr %A, align 8, !tbaa !9
  %call94 = call i32 @IDASetLinearSolver(ptr noundef %67, ptr noundef %68, ptr noundef %69)
  store i32 %call94, ptr %retval1, align 4, !tbaa !5
  %call95 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.10, i32 noundef 1)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end93
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %70 = load i32, ptr %sensi, align 4, !tbaa !5
  %tobool100 = icmp ne i32 %70, 0
  br i1 %tobool100, label %if.then101, label %if.else164

if.then101:                                       ; preds = %if.end98
  %71 = load ptr, ptr %data, align 8, !tbaa !9
  %p102 = getelementptr inbounds %struct.anon, ptr %71, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x double], ptr %p102, i64 0, i64 0
  %72 = load double, ptr %arrayidx103, align 8, !tbaa !11
  %arrayidx104 = getelementptr inbounds [3 x double], ptr %pbar, i64 0, i64 0
  store double %72, ptr %arrayidx104, align 16, !tbaa !11
  %73 = load ptr, ptr %data, align 8, !tbaa !9
  %p105 = getelementptr inbounds %struct.anon, ptr %73, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x double], ptr %p105, i64 0, i64 1
  %74 = load double, ptr %arrayidx106, align 8, !tbaa !11
  %arrayidx107 = getelementptr inbounds [3 x double], ptr %pbar, i64 0, i64 1
  store double %74, ptr %arrayidx107, align 8, !tbaa !11
  %75 = load ptr, ptr %data, align 8, !tbaa !9
  %p108 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x double], ptr %p108, i64 0, i64 2
  %76 = load double, ptr %arrayidx109, align 8, !tbaa !11
  %arrayidx110 = getelementptr inbounds [3 x double], ptr %pbar, i64 0, i64 2
  store double %76, ptr %arrayidx110, align 16, !tbaa !11
  %77 = load ptr, ptr %y, align 8, !tbaa !9
  %call111 = call ptr @N_VCloneVectorArray(i32 noundef 3, ptr noundef %77)
  store ptr %call111, ptr %yS, align 8, !tbaa !9
  %78 = load ptr, ptr %yS, align 8, !tbaa !9
  %call112 = call i32 @check_retval(ptr noundef %78, ptr noundef @.str.12, i32 noundef 0)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.then101
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end115:                                        ; preds = %if.then101
  store i32 0, ptr %is, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end115
  %79 = load i32, ptr %is, align 4, !tbaa !5
  %cmp = icmp slt i32 %79, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load ptr, ptr %yS, align 8, !tbaa !9
  %81 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom = sext i32 %81 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %80, i64 %idxprom
  %82 = load ptr, ptr %arrayidx116, align 8, !tbaa !9
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %82)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %83 = load i32, ptr %is, align 4, !tbaa !5
  %inc = add nsw i32 %83, 1
  store i32 %inc, ptr %is, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %84 = load ptr, ptr %y, align 8, !tbaa !9
  %call117 = call ptr @N_VCloneVectorArray(i32 noundef 3, ptr noundef %84)
  store ptr %call117, ptr %ypS, align 8, !tbaa !9
  %85 = load ptr, ptr %ypS, align 8, !tbaa !9
  %call118 = call i32 @check_retval(ptr noundef %85, ptr noundef @.str.12, i32 noundef 0)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %for.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end121:                                        ; preds = %for.end
  store i32 0, ptr %is, align 4, !tbaa !5
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc127, %if.end121
  %86 = load i32, ptr %is, align 4, !tbaa !5
  %cmp123 = icmp slt i32 %86, 3
  br i1 %cmp123, label %for.body124, label %for.end129

for.body124:                                      ; preds = %for.cond122
  %87 = load ptr, ptr %ypS, align 8, !tbaa !9
  %88 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom125 = sext i32 %88 to i64
  %arrayidx126 = getelementptr inbounds ptr, ptr %87, i64 %idxprom125
  %89 = load ptr, ptr %arrayidx126, align 8, !tbaa !9
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %89)
  br label %for.inc127

for.inc127:                                       ; preds = %for.body124
  %90 = load i32, ptr %is, align 4, !tbaa !5
  %inc128 = add nsw i32 %90, 1
  store i32 %inc128, ptr %is, align 4, !tbaa !5
  br label %for.cond122

for.end129:                                       ; preds = %for.cond122
  %91 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %92 = load i32, ptr %sensi_meth, align 4, !tbaa !5
  %93 = load ptr, ptr %yS, align 8, !tbaa !9
  %94 = load ptr, ptr %ypS, align 8, !tbaa !9
  %call130 = call i32 @IDASensInit(ptr noundef %91, i32 noundef 3, i32 noundef %92, ptr noundef @resS, ptr noundef %93, ptr noundef %94)
  store i32 %call130, ptr %retval1, align 4, !tbaa !5
  %call131 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.13, i32 noundef 1)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %for.end129
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end134:                                        ; preds = %for.end129
  %95 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %call135 = call i32 @IDASensEEtolerances(ptr noundef %95)
  store i32 %call135, ptr %retval1, align 4, !tbaa !5
  %call136 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.14, i32 noundef 1)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end134
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end139:                                        ; preds = %if.end134
  %96 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %97 = load i32, ptr %err_con, align 4, !tbaa !5
  %call140 = call i32 @IDASetSensErrCon(ptr noundef %96, i32 noundef %97)
  store i32 %call140, ptr %retval1, align 4, !tbaa !5
  %call141 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.15, i32 noundef 1)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end139
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end144:                                        ; preds = %if.end139
  %98 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %99 = load ptr, ptr %data, align 8, !tbaa !9
  %p145 = getelementptr inbounds %struct.anon, ptr %99, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x double], ptr %p145, i64 0, i64 0
  %arraydecay146 = getelementptr inbounds [3 x double], ptr %pbar, i64 0, i64 0
  %call147 = call i32 @IDASetSensParams(ptr noundef %98, ptr noundef %arraydecay, ptr noundef %arraydecay146, ptr noundef null)
  store i32 %call147, ptr %retval1, align 4, !tbaa !5
  %call148 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.16, i32 noundef 1)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.end144
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end151:                                        ; preds = %if.end144
  %call152 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %100 = load i32, ptr %sensi_meth, align 4, !tbaa !5
  %cmp153 = icmp eq i32 %100, 1
  br i1 %cmp153, label %if.then154, label %if.else

if.then154:                                       ; preds = %if.end151
  %call155 = call i32 (ptr, ...) @printf(ptr noundef @.str.18)
  br label %if.end157

if.else:                                          ; preds = %if.end151
  %call156 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
  br label %if.end157

if.end157:                                        ; preds = %if.else, %if.then154
  %101 = load i32, ptr %err_con, align 4, !tbaa !5
  %tobool158 = icmp ne i32 %101, 0
  br i1 %tobool158, label %if.then159, label %if.else161

if.then159:                                       ; preds = %if.end157
  %call160 = call i32 (ptr, ...) @printf(ptr noundef @.str.20)
  br label %if.end163

if.else161:                                       ; preds = %if.end157
  %call162 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  br label %if.end163

if.end163:                                        ; preds = %if.else161, %if.then159
  br label %if.end166

if.else164:                                       ; preds = %if.end98
  %call165 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.end163
  %102 = load ptr, ptr %ctx, align 8, !tbaa !9
  %call167 = call ptr @N_VNew_Serial(i32 noundef 2, ptr noundef %102)
  store ptr %call167, ptr %yQ, align 8, !tbaa !9
  %103 = load ptr, ptr %yQ, align 8, !tbaa !9
  %content168 = getelementptr inbounds %struct._generic_N_Vector, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %content168, align 8, !tbaa !15
  %data169 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %104, i32 0, i32 2
  %105 = load ptr, ptr %data169, align 8, !tbaa !17
  %arrayidx170 = getelementptr inbounds double, ptr %105, i64 0
  store double 0.000000e+00, ptr %arrayidx170, align 8, !tbaa !11
  %106 = load ptr, ptr %yQ, align 8, !tbaa !9
  %content171 = getelementptr inbounds %struct._generic_N_Vector, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %content171, align 8, !tbaa !15
  %data172 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %data172, align 8, !tbaa !17
  %arrayidx173 = getelementptr inbounds double, ptr %108, i64 1
  store double 0.000000e+00, ptr %arrayidx173, align 8, !tbaa !11
  %109 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %110 = load ptr, ptr %yQ, align 8, !tbaa !9
  %call174 = call i32 @IDAQuadInit(ptr noundef %109, ptr noundef @rhsQ, ptr noundef %110)
  %111 = load i32, ptr %sensi, align 4, !tbaa !5
  %tobool175 = icmp ne i32 %111, 0
  br i1 %tobool175, label %if.then176, label %if.end187

if.then176:                                       ; preds = %if.end166
  %112 = load ptr, ptr %yQ, align 8, !tbaa !9
  %call177 = call ptr @N_VCloneVectorArray(i32 noundef 3, ptr noundef %112)
  store ptr %call177, ptr %yQS, align 8, !tbaa !9
  store i32 0, ptr %is, align 4, !tbaa !5
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc183, %if.then176
  %113 = load i32, ptr %is, align 4, !tbaa !5
  %cmp179 = icmp slt i32 %113, 3
  br i1 %cmp179, label %for.body180, label %for.end185

for.body180:                                      ; preds = %for.cond178
  %114 = load ptr, ptr %yQS, align 8, !tbaa !9
  %115 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom181 = sext i32 %115 to i64
  %arrayidx182 = getelementptr inbounds ptr, ptr %114, i64 %idxprom181
  %116 = load ptr, ptr %arrayidx182, align 8, !tbaa !9
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %116)
  br label %for.inc183

for.inc183:                                       ; preds = %for.body180
  %117 = load i32, ptr %is, align 4, !tbaa !5
  %inc184 = add nsw i32 %117, 1
  store i32 %inc184, ptr %is, align 4, !tbaa !5
  br label %for.cond178

for.end185:                                       ; preds = %for.cond178
  %118 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %119 = load ptr, ptr %yQS, align 8, !tbaa !9
  %call186 = call i32 @IDAQuadSensInit(ptr noundef %118, ptr noundef null, ptr noundef %119)
  br label %if.end187

if.end187:                                        ; preds = %for.end185, %if.end166
  %120 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %call188 = call i32 @IDACalcIC(ptr noundef %120, i32 noundef 1, double noundef 4.000000e-01)
  store i32 %call188, ptr %retval1, align 4, !tbaa !5
  %call189 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.23, i32 noundef 1)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end187
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end192:                                        ; preds = %if.end187
  %121 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %122 = load ptr, ptr %y, align 8, !tbaa !9
  %123 = load ptr, ptr %yp, align 8, !tbaa !9
  %call193 = call i32 @IDAGetConsistentIC(ptr noundef %121, ptr noundef %122, ptr noundef %123)
  store i32 %call193, ptr %retval1, align 4, !tbaa !5
  %call194 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.24, i32 noundef 1)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end192
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end197:                                        ; preds = %if.end192
  %124 = load ptr, ptr %y, align 8, !tbaa !9
  %125 = load ptr, ptr %yp, align 8, !tbaa !9
  call void @PrintIC(ptr noundef %124, ptr noundef %125)
  %126 = load i32, ptr %sensi, align 4, !tbaa !5
  %tobool198 = icmp ne i32 %126, 0
  br i1 %tobool198, label %if.then199, label %if.end201

if.then199:                                       ; preds = %if.end197
  %127 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %128 = load ptr, ptr %yS, align 8, !tbaa !9
  %129 = load ptr, ptr %ypS, align 8, !tbaa !9
  %call200 = call i32 @IDAGetSensConsistentIC(ptr noundef %127, ptr noundef %128, ptr noundef %129)
  %130 = load ptr, ptr %y, align 8, !tbaa !9
  %131 = load ptr, ptr %yp, align 8, !tbaa !9
  %132 = load ptr, ptr %yS, align 8, !tbaa !9
  %133 = load ptr, ptr %ypS, align 8, !tbaa !9
  call void @PrintSensIC(ptr noundef %130, ptr noundef %131, ptr noundef %132, ptr noundef %133)
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %if.end197
  %call202 = call i32 (ptr, ...) @printf(ptr noundef @.str.25)
  %call203 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %call204 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  %call205 = call i32 (ptr, ...) @printf(ptr noundef @.str.28)
  %call206 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  %call207 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %call208 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  store i32 1, ptr %iout, align 4, !tbaa !5
  store double 4.000000e-01, ptr %tout, align 8, !tbaa !11
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc227, %if.end201
  %134 = load i32, ptr %iout, align 4, !tbaa !5
  %cmp210 = icmp sle i32 %134, 12
  br i1 %cmp210, label %for.body211, label %for.end229

for.body211:                                      ; preds = %for.cond209
  %135 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %136 = load double, ptr %tout, align 8, !tbaa !11
  %137 = load ptr, ptr %y, align 8, !tbaa !9
  %138 = load ptr, ptr %yp, align 8, !tbaa !9
  %call212 = call i32 @IDASolve(ptr noundef %135, double noundef %136, ptr noundef %t, ptr noundef %137, ptr noundef %138, i32 noundef 1)
  store i32 %call212, ptr %retval1, align 4, !tbaa !5
  %call213 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.30, i32 noundef 1)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then215, label %if.end216

if.then215:                                       ; preds = %for.body211
  br label %for.end229

if.end216:                                        ; preds = %for.body211
  %139 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %140 = load double, ptr %t, align 8, !tbaa !11
  %141 = load ptr, ptr %y, align 8, !tbaa !9
  call void @PrintOutput(ptr noundef %139, double noundef %140, ptr noundef %141)
  %142 = load i32, ptr %sensi, align 4, !tbaa !5
  %tobool217 = icmp ne i32 %142, 0
  br i1 %tobool217, label %if.then218, label %if.end224

if.then218:                                       ; preds = %if.end216
  %143 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %144 = load ptr, ptr %yS, align 8, !tbaa !9
  %call219 = call i32 @IDAGetSens(ptr noundef %143, ptr noundef %t, ptr noundef %144)
  store i32 %call219, ptr %retval1, align 4, !tbaa !5
  %call220 = call i32 @check_retval(ptr noundef %retval1, ptr noundef @.str.31, i32 noundef 1)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.then222, label %if.end223

if.then222:                                       ; preds = %if.then218
  br label %for.end229

if.end223:                                        ; preds = %if.then218
  %145 = load ptr, ptr %yS, align 8, !tbaa !9
  call void @PrintSensOutput(ptr noundef %145)
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end216
  %call225 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  %call226 = call i32 (ptr, ...) @printf(ptr noundef @.str.33)
  br label %for.inc227

for.inc227:                                       ; preds = %if.end224
  %146 = load i32, ptr %iout, align 4, !tbaa !5
  %inc228 = add nsw i32 %146, 1
  store i32 %inc228, ptr %iout, align 4, !tbaa !5
  %147 = load double, ptr %tout, align 8, !tbaa !11
  %mul = fmul double %147, 1.000000e+01
  store double %mul, ptr %tout, align 8, !tbaa !11
  br label %for.cond209

for.end229:                                       ; preds = %if.then222, %if.then215, %for.cond209
  %call230 = call i32 (ptr, ...) @printf(ptr noundef @.str.34)
  %148 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %149 = load ptr, ptr %yQ, align 8, !tbaa !9
  %call231 = call i32 @IDAGetQuad(ptr noundef %148, ptr noundef %t, ptr noundef %149)
  %150 = load ptr, ptr %yQ, align 8, !tbaa !9
  %content232 = getelementptr inbounds %struct._generic_N_Vector, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %content232, align 8, !tbaa !15
  %data233 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %151, i32 0, i32 2
  %152 = load ptr, ptr %data233, align 8, !tbaa !17
  %arrayidx234 = getelementptr inbounds double, ptr %152, i64 0
  %153 = load double, ptr %arrayidx234, align 8, !tbaa !11
  %call235 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, double noundef %153)
  %154 = load i32, ptr %sensi, align 4, !tbaa !5
  %tobool236 = icmp ne i32 %154, 0
  br i1 %tobool236, label %if.then237, label %if.end255

if.then237:                                       ; preds = %for.end229
  %155 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %156 = load ptr, ptr %yQS, align 8, !tbaa !9
  %call238 = call i32 @IDAGetQuadSens(ptr noundef %155, ptr noundef %t, ptr noundef %156)
  %157 = load double, ptr %t, align 8, !tbaa !11
  %call239 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, double noundef %157)
  %158 = load ptr, ptr %yQS, align 8, !tbaa !9
  %arrayidx240 = getelementptr inbounds ptr, ptr %158, i64 0
  %159 = load ptr, ptr %arrayidx240, align 8, !tbaa !9
  %content241 = getelementptr inbounds %struct._generic_N_Vector, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %content241, align 8, !tbaa !15
  %data242 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %160, i32 0, i32 2
  %161 = load ptr, ptr %data242, align 8, !tbaa !17
  %arrayidx243 = getelementptr inbounds double, ptr %161, i64 0
  %162 = load double, ptr %arrayidx243, align 8, !tbaa !11
  %call244 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, double noundef %162)
  %163 = load ptr, ptr %yQS, align 8, !tbaa !9
  %arrayidx245 = getelementptr inbounds ptr, ptr %163, i64 1
  %164 = load ptr, ptr %arrayidx245, align 8, !tbaa !9
  %content246 = getelementptr inbounds %struct._generic_N_Vector, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %content246, align 8, !tbaa !15
  %data247 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %165, i32 0, i32 2
  %166 = load ptr, ptr %data247, align 8, !tbaa !17
  %arrayidx248 = getelementptr inbounds double, ptr %166, i64 0
  %167 = load double, ptr %arrayidx248, align 8, !tbaa !11
  %call249 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, double noundef %167)
  %168 = load ptr, ptr %yQS, align 8, !tbaa !9
  %arrayidx250 = getelementptr inbounds ptr, ptr %168, i64 2
  %169 = load ptr, ptr %arrayidx250, align 8, !tbaa !9
  %content251 = getelementptr inbounds %struct._generic_N_Vector, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %content251, align 8, !tbaa !15
  %data252 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %170, i32 0, i32 2
  %171 = load ptr, ptr %data252, align 8, !tbaa !17
  %arrayidx253 = getelementptr inbounds double, ptr %171, i64 0
  %172 = load double, ptr %arrayidx253, align 8, !tbaa !11
  %call254 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, double noundef %172)
  br label %if.end255

if.end255:                                        ; preds = %if.then237, %for.end229
  %call256 = call i32 (ptr, ...) @printf(ptr noundef @.str.38)
  %173 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %174 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call257 = call i32 @IDAPrintAllStats(ptr noundef %173, ptr noundef %174, i32 noundef 0)
  store i32 %call257, ptr %retval1, align 4, !tbaa !5
  %arraydecay258 = getelementptr inbounds [256 x i8], ptr %fname, i64 0, i64 0
  %call259 = call ptr @strcpy(ptr noundef %arraydecay258, ptr noundef @.str.39) #8
  %175 = load i32, ptr %sensi, align 4, !tbaa !5
  %tobool260 = icmp ne i32 %175, 0
  br i1 %tobool260, label %if.then261, label %if.end278

if.then261:                                       ; preds = %if.end255
  %176 = load i32, ptr %sensi_meth, align 4, !tbaa !5
  %cmp262 = icmp eq i32 %176, 1
  br i1 %cmp262, label %if.then263, label %if.else266

if.then263:                                       ; preds = %if.then261
  %arraydecay264 = getelementptr inbounds [256 x i8], ptr %fname, i64 0, i64 0
  %call265 = call ptr @strcat(ptr noundef %arraydecay264, ptr noundef @.str.40) #8
  br label %if.end269

if.else266:                                       ; preds = %if.then261
  %arraydecay267 = getelementptr inbounds [256 x i8], ptr %fname, i64 0, i64 0
  %call268 = call ptr @strcat(ptr noundef %arraydecay267, ptr noundef @.str.41) #8
  br label %if.end269

if.end269:                                        ; preds = %if.else266, %if.then263
  %177 = load i32, ptr %err_con, align 4, !tbaa !5
  %tobool270 = icmp ne i32 %177, 0
  br i1 %tobool270, label %if.then271, label %if.else274

if.then271:                                       ; preds = %if.end269
  %arraydecay272 = getelementptr inbounds [256 x i8], ptr %fname, i64 0, i64 0
  %call273 = call ptr @strcat(ptr noundef %arraydecay272, ptr noundef @.str.42) #8
  br label %if.end277

if.else274:                                       ; preds = %if.end269
  %arraydecay275 = getelementptr inbounds [256 x i8], ptr %fname, i64 0, i64 0
  %call276 = call ptr @strcat(ptr noundef %arraydecay275, ptr noundef @.str.43) #8
  br label %if.end277

if.end277:                                        ; preds = %if.else274, %if.then271
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.end255
  %arraydecay279 = getelementptr inbounds [256 x i8], ptr %fname, i64 0, i64 0
  %call280 = call ptr @strcat(ptr noundef %arraydecay279, ptr noundef @.str.44) #8
  %arraydecay281 = getelementptr inbounds [256 x i8], ptr %fname, i64 0, i64 0
  %call282 = call noalias ptr @fopen(ptr noundef %arraydecay281, ptr noundef @.str.45)
  store ptr %call282, ptr %FID, align 8, !tbaa !9
  %178 = load ptr, ptr %ida_mem, align 8, !tbaa !9
  %179 = load ptr, ptr %FID, align 8, !tbaa !9
  %call283 = call i32 @IDAPrintAllStats(ptr noundef %178, ptr noundef %179, i32 noundef 1)
  store i32 %call283, ptr %retval1, align 4, !tbaa !5
  %180 = load ptr, ptr %FID, align 8, !tbaa !9
  %call284 = call i32 @fclose(ptr noundef %180)
  %181 = load ptr, ptr %y, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %181)
  %182 = load ptr, ptr %yp, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %182)
  %183 = load ptr, ptr %abstol, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %183)
  %184 = load ptr, ptr %id, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %184)
  %185 = load ptr, ptr %yQ, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %185)
  %186 = load i32, ptr %sensi, align 4, !tbaa !5
  %tobool285 = icmp ne i32 %186, 0
  br i1 %tobool285, label %if.then286, label %if.end287

if.then286:                                       ; preds = %if.end278
  %187 = load ptr, ptr %yS, align 8, !tbaa !9
  call void @N_VDestroyVectorArray(ptr noundef %187, i32 noundef 3)
  %188 = load ptr, ptr %ypS, align 8, !tbaa !9
  call void @N_VDestroyVectorArray(ptr noundef %188, i32 noundef 3)
  %189 = load ptr, ptr %yQS, align 8, !tbaa !9
  call void @N_VDestroyVectorArray(ptr noundef %189, i32 noundef 3)
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.end278
  %190 = load ptr, ptr %data, align 8, !tbaa !9
  call void @free(ptr noundef %190) #8
  call void @IDAFree(ptr noundef %ida_mem)
  %191 = load ptr, ptr %LS, align 8, !tbaa !9
  %call288 = call i32 @SUNLinSolFree(ptr noundef %191)
  %192 = load ptr, ptr %A, align 8, !tbaa !9
  call void @SUNMatDestroy(ptr noundef %192)
  %call289 = call i32 @SUNContext_Free(ptr noundef %ctx)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %if.then196, %if.then191, %if.then150, %if.then143, %if.then138, %if.then133, %if.then120, %if.then114, %if.then97, %if.then92, %if.then87, %if.then82, %if.then77, %if.then62, %if.then47, %if.then42, %if.then28, %if.then15, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %yQS) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %yQ) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sensi_meth) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_con) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sensi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypS) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %yS) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %pbar) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %fname) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %FID) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %iout) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %abstol) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %yp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tout) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %reltol) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %LS) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ida_mem) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #8
  %193 = load i32, ptr %retval, align 4
  ret i32 %193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @ProcessArgs(i32 noundef %argc, ptr noundef %argv, ptr noundef %sensi, ptr noundef %sensi_meth, ptr noundef %err_con) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %sensi.addr = alloca ptr, align 8
  %sensi_meth.addr = alloca ptr, align 8
  %err_con.addr = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  store ptr %sensi, ptr %sensi.addr, align 8, !tbaa !9
  store ptr %sensi_meth, ptr %sensi_meth.addr, align 8, !tbaa !9
  store ptr %err_con, ptr %err_con.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %sensi.addr, align 8, !tbaa !9
  store i32 0, ptr %0, align 4, !tbaa !5
  %1 = load ptr, ptr %sensi_meth.addr, align 8, !tbaa !9
  store i32 -1, ptr %1, align 4, !tbaa !5
  %2 = load ptr, ptr %err_con.addr, align 8, !tbaa !9
  store i32 0, ptr %2, align 4, !tbaa !5
  %3 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  call void @WrongArgs(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx1, align 8, !tbaa !9
  %call = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.46) #10
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %sensi.addr, align 8, !tbaa !9
  store i32 0, ptr %8, align 4, !tbaa !5
  br label %if.end11

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx4, align 8, !tbaa !9
  %call5 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.47) #10
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %11 = load ptr, ptr %sensi.addr, align 8, !tbaa !9
  store i32 1, ptr %11, align 4, !tbaa !5
  br label %if.end10

if.else8:                                         ; preds = %if.else
  %12 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx9, align 8, !tbaa !9
  call void @WrongArgs(ptr noundef %13)
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  %14 = load ptr, ptr %sensi.addr, align 8, !tbaa !9
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then12, label %if.end43

if.then12:                                        ; preds = %if.end11
  %16 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %16, 4
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then12
  %17 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds ptr, ptr %17, i64 0
  %18 = load ptr, ptr %arrayidx15, align 8, !tbaa !9
  call void @WrongArgs(ptr noundef %18)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12
  %19 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx17 = getelementptr inbounds ptr, ptr %19, i64 2
  %20 = load ptr, ptr %arrayidx17, align 8, !tbaa !9
  %call18 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.48) #10
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end16
  %21 = load ptr, ptr %sensi_meth.addr, align 8, !tbaa !9
  store i32 1, ptr %21, align 4, !tbaa !5
  br label %if.end29

if.else21:                                        ; preds = %if.end16
  %22 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds ptr, ptr %22, i64 2
  %23 = load ptr, ptr %arrayidx22, align 8, !tbaa !9
  %call23 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.49) #10
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else21
  %24 = load ptr, ptr %sensi_meth.addr, align 8, !tbaa !9
  store i32 2, ptr %24, align 4, !tbaa !5
  br label %if.end28

if.else26:                                        ; preds = %if.else21
  %25 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds ptr, ptr %25, i64 0
  %26 = load ptr, ptr %arrayidx27, align 8, !tbaa !9
  call void @WrongArgs(ptr noundef %26)
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then25
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then20
  %27 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds ptr, ptr %27, i64 3
  %28 = load ptr, ptr %arrayidx30, align 8, !tbaa !9
  %call31 = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.50) #10
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.end29
  %29 = load ptr, ptr %err_con.addr, align 8, !tbaa !9
  store i32 1, ptr %29, align 4, !tbaa !5
  br label %if.end42

if.else34:                                        ; preds = %if.end29
  %30 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx35 = getelementptr inbounds ptr, ptr %30, i64 3
  %31 = load ptr, ptr %arrayidx35, align 8, !tbaa !9
  %call36 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.51) #10
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else34
  %32 = load ptr, ptr %err_con.addr, align 8, !tbaa !9
  store i32 0, ptr %32, align 4, !tbaa !5
  br label %if.end41

if.else39:                                        ; preds = %if.else34
  %33 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx40 = getelementptr inbounds ptr, ptr %33, i64 0
  %34 = load ptr, ptr %arrayidx40, align 8, !tbaa !9
  call void @WrongArgs(ptr noundef %34)
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end11
  ret void
}

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
  store i32 %opt, ptr %opt.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #8
  %0 = load i32, ptr %opt.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !9
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %3 = load ptr, ptr %funcname.addr, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.73, ptr noundef %3)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %opt.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %5 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !9
  store ptr %5, ptr %retval1, align 8, !tbaa !9
  %6 = load ptr, ptr %retval1, align 8, !tbaa !9
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !9
  %9 = load ptr, ptr %funcname.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %retval1, align 8, !tbaa !9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.74, ptr noundef %9, i32 noundef %11)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then4
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %12 = load i32, ptr %opt.addr, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %land.lhs.true10, label %if.end14

land.lhs.true10:                                  ; preds = %if.else8
  %13 = load ptr, ptr %returnvalue.addr, align 8, !tbaa !9
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !9
  %15 = load ptr, ptr %funcname.addr, align 8, !tbaa !9
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.75, ptr noundef %15)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare ptr @N_VNew_Serial(i32 noundef, ptr noundef) #2

declare ptr @N_VClone(ptr noundef) #2

declare ptr @IDACreate(ptr noundef) #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @res(double noundef %t, ptr noundef %yy, ptr noundef %yp, ptr noundef %resval, ptr noundef %user_data) #0 {
entry:
  %t.addr = alloca double, align 8
  %yy.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %resval.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %p1 = alloca double, align 8
  %p2 = alloca double, align 8
  %p3 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %yp1 = alloca double, align 8
  %yp2 = alloca double, align 8
  store double %t, ptr %t.addr, align 8, !tbaa !11
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !9
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !9
  store ptr %resval, ptr %resval.addr, align 8, !tbaa !9
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yp1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %yp2) #8
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !9
  store ptr %0, ptr %data, align 8, !tbaa !9
  %1 = load ptr, ptr %data, align 8, !tbaa !9
  %p = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !11
  store double %2, ptr %p1, align 8, !tbaa !11
  %3 = load ptr, ptr %data, align 8, !tbaa !9
  %p4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %p4, i64 0, i64 1
  %4 = load double, ptr %arrayidx5, align 8, !tbaa !11
  store double %4, ptr %p2, align 8, !tbaa !11
  %5 = load ptr, ptr %data, align 8, !tbaa !9
  %p6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x double], ptr %p6, i64 0, i64 2
  %6 = load double, ptr %arrayidx7, align 8, !tbaa !11
  store double %6, ptr %p3, align 8, !tbaa !11
  %7 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %content, align 8, !tbaa !15
  %data8 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %data8, align 8, !tbaa !17
  %arrayidx9 = getelementptr inbounds double, ptr %9, i64 0
  %10 = load double, ptr %arrayidx9, align 8, !tbaa !11
  store double %10, ptr %y1, align 8, !tbaa !11
  %11 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content10 = getelementptr inbounds %struct._generic_N_Vector, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %content10, align 8, !tbaa !15
  %data11 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %data11, align 8, !tbaa !17
  %arrayidx12 = getelementptr inbounds double, ptr %13, i64 1
  %14 = load double, ptr %arrayidx12, align 8, !tbaa !11
  store double %14, ptr %y2, align 8, !tbaa !11
  %15 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content13 = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %content13, align 8, !tbaa !15
  %data14 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %data14, align 8, !tbaa !17
  %arrayidx15 = getelementptr inbounds double, ptr %17, i64 2
  %18 = load double, ptr %arrayidx15, align 8, !tbaa !11
  store double %18, ptr %y3, align 8, !tbaa !11
  %19 = load ptr, ptr %yp.addr, align 8, !tbaa !9
  %content16 = getelementptr inbounds %struct._generic_N_Vector, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %content16, align 8, !tbaa !15
  %data17 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %data17, align 8, !tbaa !17
  %arrayidx18 = getelementptr inbounds double, ptr %21, i64 0
  %22 = load double, ptr %arrayidx18, align 8, !tbaa !11
  store double %22, ptr %yp1, align 8, !tbaa !11
  %23 = load ptr, ptr %yp.addr, align 8, !tbaa !9
  %content19 = getelementptr inbounds %struct._generic_N_Vector, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %content19, align 8, !tbaa !15
  %data20 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %data20, align 8, !tbaa !17
  %arrayidx21 = getelementptr inbounds double, ptr %25, i64 1
  %26 = load double, ptr %arrayidx21, align 8, !tbaa !11
  store double %26, ptr %yp2, align 8, !tbaa !11
  %27 = load double, ptr %yp1, align 8, !tbaa !11
  %28 = load double, ptr %p1, align 8, !tbaa !11
  %29 = load double, ptr %y1, align 8, !tbaa !11
  %30 = call double @llvm.fmuladd.f64(double %28, double %29, double %27)
  %31 = load double, ptr %p2, align 8, !tbaa !11
  %32 = load double, ptr %y2, align 8, !tbaa !11
  %mul = fmul double %31, %32
  %33 = load double, ptr %y3, align 8, !tbaa !11
  %neg = fneg double %mul
  %34 = call double @llvm.fmuladd.f64(double %neg, double %33, double %30)
  %35 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content23 = getelementptr inbounds %struct._generic_N_Vector, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %content23, align 8, !tbaa !15
  %data24 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %data24, align 8, !tbaa !17
  %arrayidx25 = getelementptr inbounds double, ptr %37, i64 0
  store double %34, ptr %arrayidx25, align 8, !tbaa !11
  %38 = load double, ptr %yp2, align 8, !tbaa !11
  %39 = load double, ptr %p1, align 8, !tbaa !11
  %40 = load double, ptr %y1, align 8, !tbaa !11
  %neg27 = fneg double %39
  %41 = call double @llvm.fmuladd.f64(double %neg27, double %40, double %38)
  %42 = load double, ptr %p2, align 8, !tbaa !11
  %43 = load double, ptr %y2, align 8, !tbaa !11
  %mul28 = fmul double %42, %43
  %44 = load double, ptr %y3, align 8, !tbaa !11
  %45 = call double @llvm.fmuladd.f64(double %mul28, double %44, double %41)
  %46 = load double, ptr %p3, align 8, !tbaa !11
  %47 = load double, ptr %y2, align 8, !tbaa !11
  %mul30 = fmul double %46, %47
  %48 = load double, ptr %y2, align 8, !tbaa !11
  %49 = call double @llvm.fmuladd.f64(double %mul30, double %48, double %45)
  %50 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content32 = getelementptr inbounds %struct._generic_N_Vector, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %content32, align 8, !tbaa !15
  %data33 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %51, i32 0, i32 2
  %52 = load ptr, ptr %data33, align 8, !tbaa !17
  %arrayidx34 = getelementptr inbounds double, ptr %52, i64 1
  store double %49, ptr %arrayidx34, align 8, !tbaa !11
  %53 = load double, ptr %y1, align 8, !tbaa !11
  %54 = load double, ptr %y2, align 8, !tbaa !11
  %add = fadd double %53, %54
  %55 = load double, ptr %y3, align 8, !tbaa !11
  %add35 = fadd double %add, %55
  %sub = fsub double %add35, 1.000000e+00
  %56 = load ptr, ptr %resval.addr, align 8, !tbaa !9
  %content36 = getelementptr inbounds %struct._generic_N_Vector, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %content36, align 8, !tbaa !15
  %data37 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %data37, align 8, !tbaa !17
  %arrayidx38 = getelementptr inbounds double, ptr %58, i64 2
  store double %sub, ptr %arrayidx38, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %yp2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %yp1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8
  ret i32 0
}

declare i32 @IDASVtolerances(ptr noundef, double noundef, ptr noundef) #2

declare i32 @IDASetId(ptr noundef, ptr noundef) #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) #2

declare ptr @SUNDenseMatrix(i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) #2

declare void @N_VConst(double noundef, ptr noundef) #2

declare i32 @IDASensInit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @resS(i32 noundef %Ns, double noundef %t, ptr noundef %yy, ptr noundef %yp, ptr noundef %resval, ptr noundef %yyS, ptr noundef %ypS, ptr noundef %resvalS, ptr noundef %user_data, ptr noundef %tmp1, ptr noundef %tmp2, ptr noundef %tmp3) #0 {
entry:
  %Ns.addr = alloca i32, align 4
  %t.addr = alloca double, align 8
  %yy.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %resval.addr = alloca ptr, align 8
  %yyS.addr = alloca ptr, align 8
  %ypS.addr = alloca ptr, align 8
  %resvalS.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %tmp1.addr = alloca ptr, align 8
  %tmp2.addr = alloca ptr, align 8
  %tmp3.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %p1 = alloca double, align 8
  %p2 = alloca double, align 8
  %p3 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %s1 = alloca double, align 8
  %s2 = alloca double, align 8
  %s3 = alloca double, align 8
  %sd1 = alloca double, align 8
  %sd2 = alloca double, align 8
  %rs1 = alloca double, align 8
  %rs2 = alloca double, align 8
  %rs3 = alloca double, align 8
  %is = alloca i32, align 4
  store i32 %Ns, ptr %Ns.addr, align 4, !tbaa !5
  store double %t, ptr %t.addr, align 8, !tbaa !11
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !9
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !9
  store ptr %resval, ptr %resval.addr, align 8, !tbaa !9
  store ptr %yyS, ptr %yyS.addr, align 8, !tbaa !9
  store ptr %ypS, ptr %ypS.addr, align 8, !tbaa !9
  store ptr %resvalS, ptr %resvalS.addr, align 8, !tbaa !9
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !9
  store ptr %tmp1, ptr %tmp1.addr, align 8, !tbaa !9
  store ptr %tmp2, ptr %tmp2.addr, align 8, !tbaa !9
  store ptr %tmp3, ptr %tmp3.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #8
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !9
  store ptr %0, ptr %data, align 8, !tbaa !9
  %1 = load ptr, ptr %data, align 8, !tbaa !9
  %p = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !11
  store double %2, ptr %p1, align 8, !tbaa !11
  %3 = load ptr, ptr %data, align 8, !tbaa !9
  %p4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %p4, i64 0, i64 1
  %4 = load double, ptr %arrayidx5, align 8, !tbaa !11
  store double %4, ptr %p2, align 8, !tbaa !11
  %5 = load ptr, ptr %data, align 8, !tbaa !9
  %p6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x double], ptr %p6, i64 0, i64 2
  %6 = load double, ptr %arrayidx7, align 8, !tbaa !11
  store double %6, ptr %p3, align 8, !tbaa !11
  %7 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %content, align 8, !tbaa !15
  %data8 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %data8, align 8, !tbaa !17
  %arrayidx9 = getelementptr inbounds double, ptr %9, i64 0
  %10 = load double, ptr %arrayidx9, align 8, !tbaa !11
  store double %10, ptr %y1, align 8, !tbaa !11
  %11 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content10 = getelementptr inbounds %struct._generic_N_Vector, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %content10, align 8, !tbaa !15
  %data11 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %data11, align 8, !tbaa !17
  %arrayidx12 = getelementptr inbounds double, ptr %13, i64 1
  %14 = load double, ptr %arrayidx12, align 8, !tbaa !11
  store double %14, ptr %y2, align 8, !tbaa !11
  %15 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %content13 = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %content13, align 8, !tbaa !15
  %data14 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %data14, align 8, !tbaa !17
  %arrayidx15 = getelementptr inbounds double, ptr %17, i64 2
  %18 = load double, ptr %arrayidx15, align 8, !tbaa !11
  store double %18, ptr %y3, align 8, !tbaa !11
  store i32 0, ptr %is, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, ptr %is, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %yyS.addr, align 8, !tbaa !9
  %21 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %20, i64 %idxprom
  %22 = load ptr, ptr %arrayidx16, align 8, !tbaa !9
  %content17 = getelementptr inbounds %struct._generic_N_Vector, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %content17, align 8, !tbaa !15
  %data18 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %data18, align 8, !tbaa !17
  %arrayidx19 = getelementptr inbounds double, ptr %24, i64 0
  %25 = load double, ptr %arrayidx19, align 8, !tbaa !11
  store double %25, ptr %s1, align 8, !tbaa !11
  %26 = load ptr, ptr %yyS.addr, align 8, !tbaa !9
  %27 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %26, i64 %idxprom20
  %28 = load ptr, ptr %arrayidx21, align 8, !tbaa !9
  %content22 = getelementptr inbounds %struct._generic_N_Vector, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %content22, align 8, !tbaa !15
  %data23 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %data23, align 8, !tbaa !17
  %arrayidx24 = getelementptr inbounds double, ptr %30, i64 1
  %31 = load double, ptr %arrayidx24, align 8, !tbaa !11
  store double %31, ptr %s2, align 8, !tbaa !11
  %32 = load ptr, ptr %yyS.addr, align 8, !tbaa !9
  %33 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %32, i64 %idxprom25
  %34 = load ptr, ptr %arrayidx26, align 8, !tbaa !9
  %content27 = getelementptr inbounds %struct._generic_N_Vector, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %content27, align 8, !tbaa !15
  %data28 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %data28, align 8, !tbaa !17
  %arrayidx29 = getelementptr inbounds double, ptr %36, i64 2
  %37 = load double, ptr %arrayidx29, align 8, !tbaa !11
  store double %37, ptr %s3, align 8, !tbaa !11
  %38 = load ptr, ptr %ypS.addr, align 8, !tbaa !9
  %39 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom30 = sext i32 %39 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %38, i64 %idxprom30
  %40 = load ptr, ptr %arrayidx31, align 8, !tbaa !9
  %content32 = getelementptr inbounds %struct._generic_N_Vector, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %content32, align 8, !tbaa !15
  %data33 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %data33, align 8, !tbaa !17
  %arrayidx34 = getelementptr inbounds double, ptr %42, i64 0
  %43 = load double, ptr %arrayidx34, align 8, !tbaa !11
  store double %43, ptr %sd1, align 8, !tbaa !11
  %44 = load ptr, ptr %ypS.addr, align 8, !tbaa !9
  %45 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom35 = sext i32 %45 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %44, i64 %idxprom35
  %46 = load ptr, ptr %arrayidx36, align 8, !tbaa !9
  %content37 = getelementptr inbounds %struct._generic_N_Vector, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %content37, align 8, !tbaa !15
  %data38 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %data38, align 8, !tbaa !17
  %arrayidx39 = getelementptr inbounds double, ptr %48, i64 1
  %49 = load double, ptr %arrayidx39, align 8, !tbaa !11
  store double %49, ptr %sd2, align 8, !tbaa !11
  %50 = load double, ptr %sd1, align 8, !tbaa !11
  %51 = load double, ptr %p1, align 8, !tbaa !11
  %52 = load double, ptr %s1, align 8, !tbaa !11
  %53 = call double @llvm.fmuladd.f64(double %51, double %52, double %50)
  %54 = load double, ptr %p2, align 8, !tbaa !11
  %55 = load double, ptr %y3, align 8, !tbaa !11
  %mul = fmul double %54, %55
  %56 = load double, ptr %s2, align 8, !tbaa !11
  %neg = fneg double %mul
  %57 = call double @llvm.fmuladd.f64(double %neg, double %56, double %53)
  %58 = load double, ptr %p2, align 8, !tbaa !11
  %59 = load double, ptr %y2, align 8, !tbaa !11
  %mul41 = fmul double %58, %59
  %60 = load double, ptr %s3, align 8, !tbaa !11
  %neg43 = fneg double %mul41
  %61 = call double @llvm.fmuladd.f64(double %neg43, double %60, double %57)
  store double %61, ptr %rs1, align 8, !tbaa !11
  %62 = load double, ptr %sd2, align 8, !tbaa !11
  %63 = load double, ptr %p1, align 8, !tbaa !11
  %64 = load double, ptr %s1, align 8, !tbaa !11
  %neg45 = fneg double %63
  %65 = call double @llvm.fmuladd.f64(double %neg45, double %64, double %62)
  %66 = load double, ptr %p2, align 8, !tbaa !11
  %67 = load double, ptr %y3, align 8, !tbaa !11
  %mul46 = fmul double %66, %67
  %68 = load double, ptr %s2, align 8, !tbaa !11
  %69 = call double @llvm.fmuladd.f64(double %mul46, double %68, double %65)
  %70 = load double, ptr %p2, align 8, !tbaa !11
  %71 = load double, ptr %y2, align 8, !tbaa !11
  %mul48 = fmul double %70, %71
  %72 = load double, ptr %s3, align 8, !tbaa !11
  %73 = call double @llvm.fmuladd.f64(double %mul48, double %72, double %69)
  %74 = load double, ptr %p3, align 8, !tbaa !11
  %mul50 = fmul double 2.000000e+00, %74
  %75 = load double, ptr %y2, align 8, !tbaa !11
  %mul51 = fmul double %mul50, %75
  %76 = load double, ptr %s2, align 8, !tbaa !11
  %77 = call double @llvm.fmuladd.f64(double %mul51, double %76, double %73)
  store double %77, ptr %rs2, align 8, !tbaa !11
  %78 = load double, ptr %s1, align 8, !tbaa !11
  %79 = load double, ptr %s2, align 8, !tbaa !11
  %add = fadd double %78, %79
  %80 = load double, ptr %s3, align 8, !tbaa !11
  %add53 = fadd double %add, %80
  store double %add53, ptr %rs3, align 8, !tbaa !11
  %81 = load i32, ptr %is, align 4, !tbaa !5
  switch i32 %81, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb55
    i32 2, label %sw.bb59
  ]

sw.bb:                                            ; preds = %for.body
  %82 = load double, ptr %y1, align 8, !tbaa !11
  %83 = load double, ptr %rs1, align 8, !tbaa !11
  %add54 = fadd double %83, %82
  store double %add54, ptr %rs1, align 8, !tbaa !11
  %84 = load double, ptr %y1, align 8, !tbaa !11
  %85 = load double, ptr %rs2, align 8, !tbaa !11
  %sub = fsub double %85, %84
  store double %sub, ptr %rs2, align 8, !tbaa !11
  br label %sw.epilog

sw.bb55:                                          ; preds = %for.body
  %86 = load double, ptr %y2, align 8, !tbaa !11
  %87 = load double, ptr %y3, align 8, !tbaa !11
  %88 = load double, ptr %rs1, align 8, !tbaa !11
  %neg57 = fneg double %86
  %89 = call double @llvm.fmuladd.f64(double %neg57, double %87, double %88)
  store double %89, ptr %rs1, align 8, !tbaa !11
  %90 = load double, ptr %y2, align 8, !tbaa !11
  %91 = load double, ptr %y3, align 8, !tbaa !11
  %92 = load double, ptr %rs2, align 8, !tbaa !11
  %93 = call double @llvm.fmuladd.f64(double %90, double %91, double %92)
  store double %93, ptr %rs2, align 8, !tbaa !11
  br label %sw.epilog

sw.bb59:                                          ; preds = %for.body
  %94 = load double, ptr %y2, align 8, !tbaa !11
  %95 = load double, ptr %y2, align 8, !tbaa !11
  %96 = load double, ptr %rs2, align 8, !tbaa !11
  %97 = call double @llvm.fmuladd.f64(double %94, double %95, double %96)
  store double %97, ptr %rs2, align 8, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb59, %sw.bb55, %sw.bb
  %98 = load double, ptr %rs1, align 8, !tbaa !11
  %99 = load ptr, ptr %resvalS.addr, align 8, !tbaa !9
  %100 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom61 = sext i32 %100 to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %99, i64 %idxprom61
  %101 = load ptr, ptr %arrayidx62, align 8, !tbaa !9
  %content63 = getelementptr inbounds %struct._generic_N_Vector, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %content63, align 8, !tbaa !15
  %data64 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %data64, align 8, !tbaa !17
  %arrayidx65 = getelementptr inbounds double, ptr %103, i64 0
  store double %98, ptr %arrayidx65, align 8, !tbaa !11
  %104 = load double, ptr %rs2, align 8, !tbaa !11
  %105 = load ptr, ptr %resvalS.addr, align 8, !tbaa !9
  %106 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom66 = sext i32 %106 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %105, i64 %idxprom66
  %107 = load ptr, ptr %arrayidx67, align 8, !tbaa !9
  %content68 = getelementptr inbounds %struct._generic_N_Vector, ptr %107, i32 0, i32 0
  %108 = load ptr, ptr %content68, align 8, !tbaa !15
  %data69 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %108, i32 0, i32 2
  %109 = load ptr, ptr %data69, align 8, !tbaa !17
  %arrayidx70 = getelementptr inbounds double, ptr %109, i64 1
  store double %104, ptr %arrayidx70, align 8, !tbaa !11
  %110 = load double, ptr %rs3, align 8, !tbaa !11
  %111 = load ptr, ptr %resvalS.addr, align 8, !tbaa !9
  %112 = load i32, ptr %is, align 4, !tbaa !5
  %idxprom71 = sext i32 %112 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %111, i64 %idxprom71
  %113 = load ptr, ptr %arrayidx72, align 8, !tbaa !9
  %content73 = getelementptr inbounds %struct._generic_N_Vector, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %content73, align 8, !tbaa !15
  %data74 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %114, i32 0, i32 2
  %115 = load ptr, ptr %data74, align 8, !tbaa !17
  %arrayidx75 = getelementptr inbounds double, ptr %115, i64 2
  store double %110, ptr %arrayidx75, align 8, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %116 = load i32, ptr %is, align 4, !tbaa !5
  %inc = add nsw i32 %116, 1
  store i32 %inc, ptr %is, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8
  ret i32 0
}

declare i32 @IDASensEEtolerances(ptr noundef) #2

declare i32 @IDASetSensErrCon(ptr noundef, i32 noundef) #2

declare i32 @IDASetSensParams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDAQuadInit(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @rhsQ(double noundef %t, ptr noundef %y, ptr noundef %yp, ptr noundef %ypQ, ptr noundef %user_data) #0 {
entry:
  %t.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %ypQ.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store double %t, ptr %t.addr, align 8, !tbaa !11
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !9
  store ptr %ypQ, ptr %ypQ.addr, align 8, !tbaa !9
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !9
  store ptr %0, ptr %data, align 8, !tbaa !9
  %1 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !15
  %data1 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %data1, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds double, ptr %3, i64 2
  %4 = load double, ptr %arrayidx, align 8, !tbaa !11
  %5 = load ptr, ptr %ypQ.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content2, align 8, !tbaa !15
  %data3 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %data3, align 8, !tbaa !17
  %arrayidx4 = getelementptr inbounds double, ptr %7, i64 0
  store double %4, ptr %arrayidx4, align 8, !tbaa !11
  %8 = load ptr, ptr %data, align 8, !tbaa !9
  %coef = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %9 = load double, ptr %coef, align 8, !tbaa !13
  %10 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content5 = getelementptr inbounds %struct._generic_N_Vector, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content5, align 8, !tbaa !15
  %data6 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %data6, align 8, !tbaa !17
  %arrayidx7 = getelementptr inbounds double, ptr %12, i64 0
  %13 = load double, ptr %arrayidx7, align 8, !tbaa !11
  %14 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content8 = getelementptr inbounds %struct._generic_N_Vector, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content8, align 8, !tbaa !15
  %data9 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %data9, align 8, !tbaa !17
  %arrayidx10 = getelementptr inbounds double, ptr %16, i64 0
  %17 = load double, ptr %arrayidx10, align 8, !tbaa !11
  %18 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content11 = getelementptr inbounds %struct._generic_N_Vector, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %content11, align 8, !tbaa !15
  %data12 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %data12, align 8, !tbaa !17
  %arrayidx13 = getelementptr inbounds double, ptr %20, i64 1
  %21 = load double, ptr %arrayidx13, align 8, !tbaa !11
  %22 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content14 = getelementptr inbounds %struct._generic_N_Vector, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %content14, align 8, !tbaa !15
  %data15 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %data15, align 8, !tbaa !17
  %arrayidx16 = getelementptr inbounds double, ptr %24, i64 1
  %25 = load double, ptr %arrayidx16, align 8, !tbaa !11
  %mul17 = fmul double %21, %25
  %26 = call double @llvm.fmuladd.f64(double %13, double %17, double %mul17)
  %27 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content18 = getelementptr inbounds %struct._generic_N_Vector, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %content18, align 8, !tbaa !15
  %data19 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %data19, align 8, !tbaa !17
  %arrayidx20 = getelementptr inbounds double, ptr %29, i64 2
  %30 = load double, ptr %arrayidx20, align 8, !tbaa !11
  %31 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content21 = getelementptr inbounds %struct._generic_N_Vector, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %content21, align 8, !tbaa !15
  %data22 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %data22, align 8, !tbaa !17
  %arrayidx23 = getelementptr inbounds double, ptr %33, i64 2
  %34 = load double, ptr %arrayidx23, align 8, !tbaa !11
  %35 = call double @llvm.fmuladd.f64(double %30, double %34, double %26)
  %mul = fmul double %9, %35
  %36 = load ptr, ptr %ypQ.addr, align 8, !tbaa !9
  %content24 = getelementptr inbounds %struct._generic_N_Vector, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %content24, align 8, !tbaa !15
  %data25 = getelementptr inbounds %struct._N_VectorContent_Serial, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %data25, align 8, !tbaa !17
  %arrayidx26 = getelementptr inbounds double, ptr %38, i64 1
  store double %mul, ptr %arrayidx26, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8
  ret i32 0
}

declare i32 @IDAQuadSensInit(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDACalcIC(ptr noundef, i32 noundef, double noundef) #2

declare i32 @IDAGetConsistentIC(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @PrintIC(ptr noundef %y, ptr noundef %yp) #0 {
entry:
  %y.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8
  %0 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %call = call ptr @N_VGetArrayPointer(ptr noundef %0)
  store ptr %call, ptr %data, align 8, !tbaa !9
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.55)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.56)
  %1 = load ptr, ptr %data, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !11
  %3 = load ptr, ptr %data, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds double, ptr %3, i64 1
  %4 = load double, ptr %arrayidx3, align 8, !tbaa !11
  %5 = load ptr, ptr %data, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds double, ptr %5, i64 2
  %6 = load double, ptr %arrayidx4, align 8, !tbaa !11
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %2, double noundef %4, double noundef %6)
  %7 = load ptr, ptr %yp.addr, align 8, !tbaa !9
  %call6 = call ptr @N_VGetArrayPointer(ptr noundef %7)
  store ptr %call6, ptr %data, align 8, !tbaa !9
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.58)
  %8 = load ptr, ptr %data, align 8, !tbaa !9
  %arrayidx8 = getelementptr inbounds double, ptr %8, i64 0
  %9 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %10 = load ptr, ptr %data, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds double, ptr %10, i64 1
  %11 = load double, ptr %arrayidx9, align 8, !tbaa !11
  %12 = load ptr, ptr %data, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds double, ptr %12, i64 2
  %13 = load double, ptr %arrayidx10, align 8, !tbaa !11
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %9, double noundef %11, double noundef %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8
  ret void
}

declare i32 @IDAGetSensConsistentIC(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @PrintSensIC(ptr noundef %y, ptr noundef %yp, ptr noundef %yS, ptr noundef %ypS) #0 {
entry:
  %y.addr = alloca ptr, align 8
  %yp.addr = alloca ptr, align 8
  %yS.addr = alloca ptr, align 8
  %ypS.addr = alloca ptr, align 8
  %sdata = alloca ptr, align 8
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %yp, ptr %yp.addr, align 8, !tbaa !9
  store ptr %yS, ptr %yS.addr, align 8, !tbaa !9
  store ptr %ypS, ptr %ypS.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdata) #8
  %0 = load ptr, ptr %yS.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call ptr @N_VGetArrayPointer(ptr noundef %1)
  store ptr %call, ptr %sdata, align 8, !tbaa !9
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.59)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.60)
  %2 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds double, ptr %2, i64 0
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !11
  %4 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds double, ptr %4, i64 1
  %5 = load double, ptr %arrayidx4, align 8, !tbaa !11
  %6 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds double, ptr %6, i64 2
  %7 = load double, ptr %arrayidx5, align 8, !tbaa !11
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %3, double noundef %5, double noundef %7)
  %8 = load ptr, ptr %ypS.addr, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx7, align 8, !tbaa !9
  %call8 = call ptr @N_VGetArrayPointer(ptr noundef %9)
  store ptr %call8, ptr %sdata, align 8, !tbaa !9
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.61)
  %10 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds double, ptr %10, i64 0
  %11 = load double, ptr %arrayidx10, align 8, !tbaa !11
  %12 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx11 = getelementptr inbounds double, ptr %12, i64 1
  %13 = load double, ptr %arrayidx11, align 8, !tbaa !11
  %14 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds double, ptr %14, i64 2
  %15 = load double, ptr %arrayidx12, align 8, !tbaa !11
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %11, double noundef %13, double noundef %15)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.62)
  %16 = load ptr, ptr %yS.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds ptr, ptr %16, i64 1
  %17 = load ptr, ptr %arrayidx15, align 8, !tbaa !9
  %call16 = call ptr @N_VGetArrayPointer(ptr noundef %17)
  store ptr %call16, ptr %sdata, align 8, !tbaa !9
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.63)
  %18 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx18 = getelementptr inbounds double, ptr %18, i64 0
  %19 = load double, ptr %arrayidx18, align 8, !tbaa !11
  %20 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx19 = getelementptr inbounds double, ptr %20, i64 1
  %21 = load double, ptr %arrayidx19, align 8, !tbaa !11
  %22 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx20 = getelementptr inbounds double, ptr %22, i64 2
  %23 = load double, ptr %arrayidx20, align 8, !tbaa !11
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %19, double noundef %21, double noundef %23)
  %24 = load ptr, ptr %ypS.addr, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds ptr, ptr %24, i64 1
  %25 = load ptr, ptr %arrayidx22, align 8, !tbaa !9
  %call23 = call ptr @N_VGetArrayPointer(ptr noundef %25)
  store ptr %call23, ptr %sdata, align 8, !tbaa !9
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.64)
  %26 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx25 = getelementptr inbounds double, ptr %26, i64 0
  %27 = load double, ptr %arrayidx25, align 8, !tbaa !11
  %28 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx26 = getelementptr inbounds double, ptr %28, i64 1
  %29 = load double, ptr %arrayidx26, align 8, !tbaa !11
  %30 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds double, ptr %30, i64 2
  %31 = load double, ptr %arrayidx27, align 8, !tbaa !11
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %27, double noundef %29, double noundef %31)
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.65)
  %32 = load ptr, ptr %yS.addr, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds ptr, ptr %32, i64 2
  %33 = load ptr, ptr %arrayidx30, align 8, !tbaa !9
  %call31 = call ptr @N_VGetArrayPointer(ptr noundef %33)
  store ptr %call31, ptr %sdata, align 8, !tbaa !9
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.66)
  %34 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx33 = getelementptr inbounds double, ptr %34, i64 0
  %35 = load double, ptr %arrayidx33, align 8, !tbaa !11
  %36 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx34 = getelementptr inbounds double, ptr %36, i64 1
  %37 = load double, ptr %arrayidx34, align 8, !tbaa !11
  %38 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx35 = getelementptr inbounds double, ptr %38, i64 2
  %39 = load double, ptr %arrayidx35, align 8, !tbaa !11
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %35, double noundef %37, double noundef %39)
  %40 = load ptr, ptr %ypS.addr, align 8, !tbaa !9
  %arrayidx37 = getelementptr inbounds ptr, ptr %40, i64 2
  %41 = load ptr, ptr %arrayidx37, align 8, !tbaa !9
  %call38 = call ptr @N_VGetArrayPointer(ptr noundef %41)
  store ptr %call38, ptr %sdata, align 8, !tbaa !9
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.67)
  %42 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx40 = getelementptr inbounds double, ptr %42, i64 0
  %43 = load double, ptr %arrayidx40, align 8, !tbaa !11
  %44 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx41 = getelementptr inbounds double, ptr %44, i64 1
  %45 = load double, ptr %arrayidx41, align 8, !tbaa !11
  %46 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx42 = getelementptr inbounds double, ptr %46, i64 2
  %47 = load double, ptr %arrayidx42, align 8, !tbaa !11
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %43, double noundef %45, double noundef %47)
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdata) #8
  ret void
}

declare i32 @IDASolve(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @PrintOutput(ptr noundef %ida_mem, double noundef %t, ptr noundef %u) #0 {
entry:
  %ida_mem.addr = alloca ptr, align 8
  %t.addr = alloca double, align 8
  %u.addr = alloca ptr, align 8
  %nst = alloca i64, align 8
  %qu = alloca i32, align 4
  %retval = alloca i32, align 4
  %hu = alloca double, align 8
  %udata = alloca ptr, align 8
  store ptr %ida_mem, ptr %ida_mem.addr, align 8, !tbaa !9
  store double %t, ptr %t.addr, align 8, !tbaa !11
  store ptr %u, ptr %u.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %nst) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %qu) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hu) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %udata) #8
  %0 = load ptr, ptr %u.addr, align 8, !tbaa !9
  %call = call ptr @N_VGetArrayPointer(ptr noundef %0)
  store ptr %call, ptr %udata, align 8, !tbaa !9
  %1 = load ptr, ptr %ida_mem.addr, align 8, !tbaa !9
  %call1 = call i32 @IDAGetNumSteps(ptr noundef %1, ptr noundef %nst)
  store i32 %call1, ptr %retval, align 4, !tbaa !5
  %call2 = call i32 @check_retval(ptr noundef %retval, ptr noundef @.str.68, i32 noundef 1)
  %2 = load ptr, ptr %ida_mem.addr, align 8, !tbaa !9
  %call3 = call i32 @IDAGetLastOrder(ptr noundef %2, ptr noundef %qu)
  store i32 %call3, ptr %retval, align 4, !tbaa !5
  %call4 = call i32 @check_retval(ptr noundef %retval, ptr noundef @.str.69, i32 noundef 1)
  %3 = load ptr, ptr %ida_mem.addr, align 8, !tbaa !9
  %call5 = call i32 @IDAGetLastStep(ptr noundef %3, ptr noundef %hu)
  store i32 %call5, ptr %retval, align 4, !tbaa !5
  %call6 = call i32 @check_retval(ptr noundef %retval, ptr noundef @.str.70, i32 noundef 1)
  %4 = load double, ptr %t.addr, align 8, !tbaa !11
  %5 = load i32, ptr %qu, align 4, !tbaa !5
  %6 = load double, ptr %hu, align 8, !tbaa !11
  %7 = load i64, ptr %nst, align 8, !tbaa !19
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.71, double noundef %4, i32 noundef %5, double noundef %6, i64 noundef %7)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.72)
  %8 = load ptr, ptr %udata, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds double, ptr %8, i64 0
  %9 = load double, ptr %arrayidx, align 8, !tbaa !11
  %10 = load ptr, ptr %udata, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds double, ptr %10, i64 1
  %11 = load double, ptr %arrayidx9, align 8, !tbaa !11
  %12 = load ptr, ptr %udata, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds double, ptr %12, i64 2
  %13 = load double, ptr %arrayidx10, align 8, !tbaa !11
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %9, double noundef %11, double noundef %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr %udata) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %hu) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %qu) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nst) #8
  ret void
}

declare i32 @IDAGetSens(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @PrintSensOutput(ptr noundef %uS) #0 {
entry:
  %uS.addr = alloca ptr, align 8
  %sdata = alloca ptr, align 8
  store ptr %uS, ptr %uS.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdata) #8
  %0 = load ptr, ptr %uS.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call ptr @N_VGetArrayPointer(ptr noundef %1)
  store ptr %call, ptr %sdata, align 8, !tbaa !9
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.59)
  %2 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds double, ptr %2, i64 0
  %3 = load double, ptr %arrayidx2, align 8, !tbaa !11
  %4 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds double, ptr %4, i64 1
  %5 = load double, ptr %arrayidx3, align 8, !tbaa !11
  %6 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds double, ptr %6, i64 2
  %7 = load double, ptr %arrayidx4, align 8, !tbaa !11
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %3, double noundef %5, double noundef %7)
  %8 = load ptr, ptr %uS.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call ptr @N_VGetArrayPointer(ptr noundef %9)
  store ptr %call7, ptr %sdata, align 8, !tbaa !9
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.62)
  %10 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds double, ptr %10, i64 0
  %11 = load double, ptr %arrayidx9, align 8, !tbaa !11
  %12 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds double, ptr %12, i64 1
  %13 = load double, ptr %arrayidx10, align 8, !tbaa !11
  %14 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx11 = getelementptr inbounds double, ptr %14, i64 2
  %15 = load double, ptr %arrayidx11, align 8, !tbaa !11
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %11, double noundef %13, double noundef %15)
  %16 = load ptr, ptr %uS.addr, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx13, align 8, !tbaa !9
  %call14 = call ptr @N_VGetArrayPointer(ptr noundef %17)
  store ptr %call14, ptr %sdata, align 8, !tbaa !9
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.65)
  %18 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx16 = getelementptr inbounds double, ptr %18, i64 0
  %19 = load double, ptr %arrayidx16, align 8, !tbaa !11
  %20 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx17 = getelementptr inbounds double, ptr %20, i64 1
  %21 = load double, ptr %arrayidx17, align 8, !tbaa !11
  %22 = load ptr, ptr %sdata, align 8, !tbaa !9
  %arrayidx18 = getelementptr inbounds double, ptr %22, i64 2
  %23 = load double, ptr %arrayidx18, align 8, !tbaa !11
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %19, double noundef %21, double noundef %23)
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdata) #8
  ret void
}

declare i32 @IDAGetQuad(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDAGetQuadSens(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @IDAPrintAllStats(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #4

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare void @N_VDestroy(ptr noundef) #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare void @IDAFree(ptr noundef) #2

declare i32 @SUNLinSolFree(ptr noundef) #2

declare void @SUNMatDestroy(ptr noundef) #2

declare i32 @SUNContext_Free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal void @WrongArgs(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %name.addr, align 8, !tbaa !9
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.52, ptr noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.54)
  call void @exit(i32 noundef 0) #11
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

declare ptr @N_VGetArrayPointer(ptr noundef) #2

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) #2

declare i32 @IDAGetLastOrder(ptr noundef, ptr noundef) #2

declare i32 @IDAGetLastStep(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!14, !12, i64 24}
!14 = !{!"", !7, i64 0, !12, i64 24}
!15 = !{!16, !10, i64 0}
!16 = !{!"_generic_N_Vector", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!18, !10, i64 8}
!18 = !{!"_N_VectorContent_Serial", !6, i64 0, !6, i64 4, !10, i64 8}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !7, i64 0}

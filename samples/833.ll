; ModuleID = 'samples/833.bc'
source_filename = "stan/lib/stan_math/lib/sundials_6.1.1/src/idas/idas_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDAMemRec = type { ptr, double, ptr, ptr, i32, double, double, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, double, double, ptr, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, double, i32, i32, double, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, double, ptr, ptr, ptr, [6 x ptr], [6 x double], [6 x double], [6 x double], [6 x double], [6 x double], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, ptr, ptr, double, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, double, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, double, double, double, ptr, ptr, ptr, double, double, i32, i32, i64, ptr, i32, ptr, [5 x double], ptr, ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"IDAS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"IDACalcIC\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ida_mem = NULL illegal.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Attempt to call before IDAMalloc.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"icopt has an illegal value.\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"id = NULL conflicts with icopt.\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"tout1 too close to t0 to attempt initial condition calculation.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"id has illegal values.\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"The residual function failed unrecoverably. \00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"The residual function failed at the first call. \00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"The linear solver setup failed unrecoverably.\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"The linear solver solve failed unrecoverably.\00", align 1
@.str.12 = private unnamed_addr constant [120 x i8] c"The residual routine or the linear setup or solve routine had a recoverable error, but IDACalcIC was unable to recover.\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Unable to satisfy the inequality constraints.\00", align 1
@.str.14 = private unnamed_addr constant [72 x i8] c"The linesearch algorithm failed: step too small or too many backtracks.\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Newton/Linesearch algorithm failed to converge.\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Some initial ewt component = 0.0 illegal.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @IDACalcIC(ptr noundef %ida_mem, i32 noundef %icopt, double noundef %tout1) #0 {
entry:
  %retval = alloca i32, align 4
  %ida_mem.addr = alloca ptr, align 8
  %icopt.addr = alloca i32, align 4
  %tout1.addr = alloca double, align 8
  %ewtsetOK = alloca i32, align 4
  %ier = alloca i32, align 4
  %nwt = alloca i32, align 4
  %nh = alloca i32, align 4
  %mxnh = alloca i32, align 4
  %icret = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %is = alloca i32, align 4
  %tdist = alloca double, align 8
  %troundoff = alloca double, align 8
  %minid = alloca double, align 8
  %hic = alloca double, align 8
  %ypnorm = alloca double, align 8
  %IDA_mem = alloca ptr, align 8
  %sensi_stg = alloca i32, align 4
  %sensi_sim = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ida_mem, ptr %ida_mem.addr, align 8, !tbaa !5
  store i32 %icopt, ptr %icopt.addr, align 4, !tbaa !9
  store double %tout1, ptr %tout1.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %ewtsetOK) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ier) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwt) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nh) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mxnh) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %icret) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  store i32 0, ptr %retval1, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tdist) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %troundoff) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minid) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hic) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ypnorm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %IDA_mem) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sensi_stg) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sensi_sim) #4
  %0 = load ptr, ptr %ida_mem.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  store i32 -20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ida_mem.addr, align 8, !tbaa !5
  store ptr %1, ptr %IDA_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_MallocDone = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 177
  %3 = load i32, ptr %ida_MallocDone, align 8, !tbaa !13
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %4, i32 noundef -23, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.3)
  store i32 -23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %call = call i32 @IDAInitialSetup(ptr noundef %5)
  store i32 %call, ptr %ier, align 4, !tbaa !9
  %6 = load i32, ptr %ier, align 4, !tbaa !9
  %cmp5 = icmp ne i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %7 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_SetupDone = getelementptr inbounds %struct.IDAMemRec, ptr %7, i32 0, i32 173
  store i32 1, ptr %ida_SetupDone, align 8, !tbaa !16
  %8 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %cmp8 = icmp ne i32 %8, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  %9 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %cmp9 = icmp ne i32 %9, 2
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %10, i32 noundef -22, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.4)
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true, %if.end7
  %11 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %12 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_icopt = getelementptr inbounds %struct.IDAMemRec, ptr %12, i32 0, i32 104
  store i32 %11, ptr %ida_icopt, align 8, !tbaa !17
  %13 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %land.lhs.true13, label %if.end16

land.lhs.true13:                                  ; preds = %if.end11
  %14 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_id = getelementptr inbounds %struct.IDAMemRec, ptr %14, i32 0, i32 62
  %15 = load ptr, ptr %ida_id, align 8, !tbaa !18
  %cmp14 = icmp eq ptr %15, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true13
  %16 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %16, i32 noundef -22, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.5)
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true13, %if.end11
  %17 = load double, ptr %tout1.addr, align 8, !tbaa !11
  %18 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_tn = getelementptr inbounds %struct.IDAMemRec, ptr %18, i32 0, i32 127
  %19 = load double, ptr %ida_tn, align 8, !tbaa !19
  %sub = fsub double %17, %19
  %20 = call double @llvm.fabs.f64(double %sub)
  store double %20, ptr %tdist, align 8, !tbaa !11
  %21 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_uround = getelementptr inbounds %struct.IDAMemRec, ptr %21, i32 0, i32 1
  %22 = load double, ptr %ida_uround, align 8, !tbaa !20
  %mul = fmul double 2.000000e+00, %22
  %23 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_tn17 = getelementptr inbounds %struct.IDAMemRec, ptr %23, i32 0, i32 127
  %24 = load double, ptr %ida_tn17, align 8, !tbaa !19
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = load double, ptr %tout1.addr, align 8, !tbaa !11
  %27 = call double @llvm.fabs.f64(double %26)
  %add = fadd double %25, %27
  %mul18 = fmul double %mul, %add
  store double %mul18, ptr %troundoff, align 8, !tbaa !11
  %28 = load double, ptr %tdist, align 8, !tbaa !11
  %29 = load double, ptr %troundoff, align 8, !tbaa !11
  %cmp19 = fcmp olt double %28, %29
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  %30 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %30, i32 noundef -22, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.6)
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %31 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_sensi = getelementptr inbounds %struct.IDAMemRec, ptr %31, i32 0, i32 23
  %32 = load i32, ptr %ida_sensi, align 4, !tbaa !21
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end21
  %33 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ism = getelementptr inbounds %struct.IDAMemRec, ptr %33, i32 0, i32 25
  %34 = load i32, ptr %ida_ism, align 4, !tbaa !22
  %cmp22 = icmp eq i32 %34, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end21
  %35 = phi i1 [ false, %if.end21 ], [ %cmp22, %land.rhs ]
  %land.ext = zext i1 %35 to i32
  store i32 %land.ext, ptr %sensi_stg, align 4, !tbaa !9
  %36 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_sensi23 = getelementptr inbounds %struct.IDAMemRec, ptr %36, i32 0, i32 23
  %37 = load i32, ptr %ida_sensi23, align 4, !tbaa !21
  %tobool24 = icmp ne i32 %37, 0
  br i1 %tobool24, label %land.rhs25, label %land.end28

land.rhs25:                                       ; preds = %land.end
  %38 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ism26 = getelementptr inbounds %struct.IDAMemRec, ptr %38, i32 0, i32 25
  %39 = load i32, ptr %ida_ism26, align 4, !tbaa !22
  %cmp27 = icmp eq i32 %39, 1
  br label %land.end28

land.end28:                                       ; preds = %land.rhs25, %land.end
  %40 = phi i1 [ false, %land.end ], [ %cmp27, %land.rhs25 ]
  %land.ext29 = zext i1 %40 to i32
  store i32 %land.ext29, ptr %sensi_sim, align 4, !tbaa !9
  %41 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ee = getelementptr inbounds %struct.IDAMemRec, ptr %41, i32 0, i32 65
  %42 = load ptr, ptr %ida_ee, align 8, !tbaa !23
  %call30 = call ptr @N_VClone(ptr noundef %42)
  %43 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %43, i32 0, i32 102
  store ptr %call30, ptr %ida_yy0, align 8, !tbaa !24
  %44 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ee31 = getelementptr inbounds %struct.IDAMemRec, ptr %44, i32 0, i32 65
  %45 = load ptr, ptr %ida_ee31, align 8, !tbaa !23
  %call32 = call ptr @N_VClone(ptr noundef %45)
  %46 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %46, i32 0, i32 103
  store ptr %call32, ptr %ida_yp0, align 8, !tbaa !25
  %47 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_tn33 = getelementptr inbounds %struct.IDAMemRec, ptr %47, i32 0, i32 127
  %48 = load double, ptr %ida_tn33, align 8, !tbaa !19
  %49 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_t0 = getelementptr inbounds %struct.IDAMemRec, ptr %49, i32 0, i32 101
  store double %48, ptr %ida_t0, align 8, !tbaa !26
  %50 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phi = getelementptr inbounds %struct.IDAMemRec, ptr %50, i32 0, i32 50
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %ida_phi, i64 0, i64 0
  %51 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %52 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy034 = getelementptr inbounds %struct.IDAMemRec, ptr %52, i32 0, i32 102
  %53 = load ptr, ptr %ida_yy034, align 8, !tbaa !24
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %51, ptr noundef %53)
  %54 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phi35 = getelementptr inbounds %struct.IDAMemRec, ptr %54, i32 0, i32 50
  %arrayidx36 = getelementptr inbounds [6 x ptr], ptr %ida_phi35, i64 0, i64 1
  %55 = load ptr, ptr %arrayidx36, align 8, !tbaa !5
  %56 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp037 = getelementptr inbounds %struct.IDAMemRec, ptr %56, i32 0, i32 103
  %57 = load ptr, ptr %ida_yp037, align 8, !tbaa !25
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %55, ptr noundef %57)
  %58 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_sensi38 = getelementptr inbounds %struct.IDAMemRec, ptr %58, i32 0, i32 23
  %59 = load i32, ptr %ida_sensi38, align 4, !tbaa !21
  %tobool39 = icmp ne i32 %59, 0
  br i1 %tobool39, label %if.then40, label %if.end66

if.then40:                                        ; preds = %land.end28
  %60 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %60, i32 0, i32 24
  %61 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %62 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ee41 = getelementptr inbounds %struct.IDAMemRec, ptr %62, i32 0, i32 65
  %63 = load ptr, ptr %ida_ee41, align 8, !tbaa !23
  %call42 = call ptr @N_VCloneVectorArray(i32 noundef %61, ptr noundef %63)
  %64 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0 = getelementptr inbounds %struct.IDAMemRec, ptr %64, i32 0, i32 91
  store ptr %call42, ptr %ida_yyS0, align 8, !tbaa !28
  %65 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns43 = getelementptr inbounds %struct.IDAMemRec, ptr %65, i32 0, i32 24
  %66 = load i32, ptr %ida_Ns43, align 8, !tbaa !27
  %67 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ee44 = getelementptr inbounds %struct.IDAMemRec, ptr %67, i32 0, i32 65
  %68 = load ptr, ptr %ida_ee44, align 8, !tbaa !23
  %call45 = call ptr @N_VCloneVectorArray(i32 noundef %66, ptr noundef %68)
  %69 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0 = getelementptr inbounds %struct.IDAMemRec, ptr %69, i32 0, i32 92
  store ptr %call45, ptr %ida_ypS0, align 8, !tbaa !29
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then40
  %70 = load i32, ptr %is, align 4, !tbaa !9
  %71 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns46 = getelementptr inbounds %struct.IDAMemRec, ptr %71, i32 0, i32 24
  %72 = load i32, ptr %ida_Ns46, align 8, !tbaa !27
  %cmp47 = icmp slt i32 %70, %72
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS = getelementptr inbounds %struct.IDAMemRec, ptr %73, i32 0, i32 78
  %arrayidx48 = getelementptr inbounds [6 x ptr], ptr %ida_phiS, i64 0, i64 0
  %74 = load ptr, ptr %arrayidx48, align 8, !tbaa !5
  %75 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %75 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %74, i64 %idxprom
  %76 = load ptr, ptr %arrayidx49, align 8, !tbaa !5
  %77 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS050 = getelementptr inbounds %struct.IDAMemRec, ptr %77, i32 0, i32 91
  %78 = load ptr, ptr %ida_yyS050, align 8, !tbaa !28
  %79 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom51 = sext i32 %79 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %78, i64 %idxprom51
  %80 = load ptr, ptr %arrayidx52, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %76, ptr noundef %80)
  %81 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS53 = getelementptr inbounds %struct.IDAMemRec, ptr %81, i32 0, i32 78
  %arrayidx54 = getelementptr inbounds [6 x ptr], ptr %ida_phiS53, i64 0, i64 1
  %82 = load ptr, ptr %arrayidx54, align 8, !tbaa !5
  %83 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom55 = sext i32 %83 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %82, i64 %idxprom55
  %84 = load ptr, ptr %arrayidx56, align 8, !tbaa !5
  %85 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS057 = getelementptr inbounds %struct.IDAMemRec, ptr %85, i32 0, i32 92
  %86 = load ptr, ptr %ida_ypS057, align 8, !tbaa !29
  %87 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom58 = sext i32 %87 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %86, i64 %idxprom58
  %88 = load ptr, ptr %arrayidx59, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %84, ptr noundef %88)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %89 = load i32, ptr %is, align 4, !tbaa !9
  %inc = add nsw i32 %89, 1
  store i32 %inc, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %90 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS60 = getelementptr inbounds %struct.IDAMemRec, ptr %90, i32 0, i32 78
  %arrayidx61 = getelementptr inbounds [6 x ptr], ptr %ida_phiS60, i64 0, i64 2
  %91 = load ptr, ptr %arrayidx61, align 8, !tbaa !5
  %92 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_savresS = getelementptr inbounds %struct.IDAMemRec, ptr %92, i32 0, i32 89
  store ptr %91, ptr %ida_savresS, align 8, !tbaa !32
  %93 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS62 = getelementptr inbounds %struct.IDAMemRec, ptr %93, i32 0, i32 78
  %arrayidx63 = getelementptr inbounds [6 x ptr], ptr %ida_phiS62, i64 0, i64 3
  %94 = load ptr, ptr %arrayidx63, align 8, !tbaa !5
  %95 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_delnewS = getelementptr inbounds %struct.IDAMemRec, ptr %95, i32 0, i32 90
  store ptr %94, ptr %ida_delnewS, align 8, !tbaa !33
  %96 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS64 = getelementptr inbounds %struct.IDAMemRec, ptr %96, i32 0, i32 78
  %arrayidx65 = getelementptr inbounds [6 x ptr], ptr %ida_phiS64, i64 0, i64 4
  %97 = load ptr, ptr %arrayidx65, align 8, !tbaa !5
  %98 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0new = getelementptr inbounds %struct.IDAMemRec, ptr %98, i32 0, i32 93
  store ptr %97, ptr %ida_yyS0new, align 8, !tbaa !34
  %99 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_eeS = getelementptr inbounds %struct.IDAMemRec, ptr %99, i32 0, i32 80
  %100 = load ptr, ptr %ida_eeS, align 8, !tbaa !35
  %101 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0new = getelementptr inbounds %struct.IDAMemRec, ptr %101, i32 0, i32 94
  store ptr %100, ptr %ida_ypS0new, align 8, !tbaa !36
  br label %if.end66

if.end66:                                         ; preds = %for.end, %land.end28
  %102 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_sysindex = getelementptr inbounds %struct.IDAMemRec, ptr %102, i32 0, i32 110
  store i32 1, ptr %ida_sysindex, align 8, !tbaa !37
  %103 = load double, ptr %tdist, align 8, !tbaa !11
  %104 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_tscale = getelementptr inbounds %struct.IDAMemRec, ptr %104, i32 0, i32 114
  store double %103, ptr %ida_tscale, align 8, !tbaa !38
  %105 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %cmp67 = icmp eq i32 %105, 1
  br i1 %cmp67, label %if.then68, label %if.end78

if.then68:                                        ; preds = %if.end66
  %106 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_id69 = getelementptr inbounds %struct.IDAMemRec, ptr %106, i32 0, i32 62
  %107 = load ptr, ptr %ida_id69, align 8, !tbaa !18
  %call70 = call double @N_VMin(ptr noundef %107)
  store double %call70, ptr %minid, align 8, !tbaa !11
  %108 = load double, ptr %minid, align 8, !tbaa !11
  %cmp71 = fcmp olt double %108, 0.000000e+00
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.then68
  %109 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %109, i32 noundef -22, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.7)
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %if.then68
  %110 = load double, ptr %minid, align 8, !tbaa !11
  %cmp74 = fcmp ogt double %110, 5.000000e-01
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end73
  %111 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_sysindex76 = getelementptr inbounds %struct.IDAMemRec, ptr %111, i32 0, i32 110
  store i32 0, ptr %ida_sysindex76, align 8, !tbaa !37
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end66
  %112 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_epiccon = getelementptr inbounds %struct.IDAMemRec, ptr %112, i32 0, i32 112
  %113 = load double, ptr %ida_epiccon, align 8, !tbaa !39
  %114 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_epsNewt = getelementptr inbounds %struct.IDAMemRec, ptr %114, i32 0, i32 135
  store double %113, ptr %ida_epsNewt, align 8, !tbaa !40
  %115 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_cjratio = getelementptr inbounds %struct.IDAMemRec, ptr %115, i32 0, i32 132
  store double 1.000000e+00, ptr %ida_cjratio, align 8, !tbaa !41
  %116 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_nbacktr = getelementptr inbounds %struct.IDAMemRec, ptr %116, i32 0, i32 109
  store i32 0, ptr %ida_nbacktr, align 4, !tbaa !42
  %117 = load double, ptr %tdist, align 8, !tbaa !11
  %mul79 = fmul double 1.000000e-03, %117
  store double %mul79, ptr %hic, align 8, !tbaa !11
  %118 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %119 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp080 = getelementptr inbounds %struct.IDAMemRec, ptr %119, i32 0, i32 103
  %120 = load ptr, ptr %ida_yp080, align 8, !tbaa !25
  %121 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ewt = getelementptr inbounds %struct.IDAMemRec, ptr %121, i32 0, i32 56
  %122 = load ptr, ptr %ida_ewt, align 8, !tbaa !43
  %123 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_suppressalg = getelementptr inbounds %struct.IDAMemRec, ptr %123, i32 0, i32 13
  %124 = load i32, ptr %ida_suppressalg, align 4, !tbaa !44
  %call81 = call double @IDAWrmsNorm(ptr noundef %118, ptr noundef %120, ptr noundef %122, i32 noundef %124)
  store double %call81, ptr %ypnorm, align 8, !tbaa !11
  %125 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool82 = icmp ne i32 %125, 0
  br i1 %tobool82, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.end78
  %126 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %127 = load double, ptr %ypnorm, align 8, !tbaa !11
  %128 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS084 = getelementptr inbounds %struct.IDAMemRec, ptr %128, i32 0, i32 92
  %129 = load ptr, ptr %ida_ypS084, align 8, !tbaa !29
  %130 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ewtS = getelementptr inbounds %struct.IDAMemRec, ptr %130, i32 0, i32 79
  %131 = load ptr, ptr %ida_ewtS, align 8, !tbaa !45
  %call85 = call double @IDASensWrmsNormUpdate(ptr noundef %126, double noundef %127, ptr noundef %129, ptr noundef %131, i32 noundef 0)
  store double %call85, ptr %ypnorm, align 8, !tbaa !11
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end78
  %132 = load double, ptr %ypnorm, align 8, !tbaa !11
  %133 = load double, ptr %hic, align 8, !tbaa !11
  %div = fdiv double 5.000000e-01, %133
  %cmp87 = fcmp ogt double %132, %div
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end86
  %134 = load double, ptr %ypnorm, align 8, !tbaa !11
  %div89 = fdiv double 5.000000e-01, %134
  store double %div89, ptr %hic, align 8, !tbaa !11
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86
  %135 = load double, ptr %tout1.addr, align 8, !tbaa !11
  %136 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_tn91 = getelementptr inbounds %struct.IDAMemRec, ptr %136, i32 0, i32 127
  %137 = load double, ptr %ida_tn91, align 8, !tbaa !19
  %cmp92 = fcmp olt double %135, %137
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  %138 = load double, ptr %hic, align 8, !tbaa !11
  %fneg = fneg double %138
  store double %fneg, ptr %hic, align 8, !tbaa !11
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90
  %139 = load double, ptr %hic, align 8, !tbaa !11
  %140 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_hh = getelementptr inbounds %struct.IDAMemRec, ptr %140, i32 0, i32 124
  store double %139, ptr %ida_hh, align 8, !tbaa !46
  %141 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %cmp95 = icmp eq i32 %141, 1
  br i1 %cmp95, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.end94
  %142 = load double, ptr %hic, align 8, !tbaa !11
  %div97 = fdiv double 1.000000e+00, %142
  %143 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_cj = getelementptr inbounds %struct.IDAMemRec, ptr %143, i32 0, i32 129
  store double %div97, ptr %ida_cj, align 8, !tbaa !47
  %144 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_maxnh = getelementptr inbounds %struct.IDAMemRec, ptr %144, i32 0, i32 106
  %145 = load i32, ptr %ida_maxnh, align 8, !tbaa !48
  store i32 %145, ptr %mxnh, align 4, !tbaa !9
  br label %if.end99

if.else:                                          ; preds = %if.end94
  %146 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_cj98 = getelementptr inbounds %struct.IDAMemRec, ptr %146, i32 0, i32 129
  store double 0.000000e+00, ptr %ida_cj98, align 8, !tbaa !47
  store i32 1, ptr %mxnh, align 4, !tbaa !9
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then96
  store i32 1, ptr %nwt, align 4, !tbaa !9
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc202, %if.end99
  %147 = load i32, ptr %nwt, align 4, !tbaa !9
  %cmp101 = icmp sle i32 %147, 2
  br i1 %cmp101, label %for.body102, label %for.end204

for.body102:                                      ; preds = %for.cond100
  store i32 1, ptr %nh, align 4, !tbaa !9
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc154, %for.body102
  %148 = load i32, ptr %nh, align 4, !tbaa !9
  %149 = load i32, ptr %mxnh, align 4, !tbaa !9
  %cmp104 = icmp sle i32 %148, %149
  br i1 %cmp104, label %for.body105, label %for.end156

for.body105:                                      ; preds = %for.cond103
  %150 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %call106 = call i32 @IDANlsIC(ptr noundef %150)
  store i32 %call106, ptr %retval1, align 4, !tbaa !9
  %151 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp107 = icmp eq i32 %151, 0
  br i1 %cmp107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %for.body105
  br label %for.end156

if.end109:                                        ; preds = %for.body105
  %152 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ncfn = getelementptr inbounds %struct.IDAMemRec, ptr %152, i32 0, i32 152
  %153 = load i64, ptr %ida_ncfn, align 8, !tbaa !49
  %inc110 = add nsw i64 %153, 1
  store i64 %inc110, ptr %ida_ncfn, align 8, !tbaa !49
  %154 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp111 = icmp slt i32 %154, 0
  br i1 %cmp111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end109
  br label %for.end156

if.end113:                                        ; preds = %if.end109
  %155 = load i32, ptr %nh, align 4, !tbaa !9
  %156 = load i32, ptr %mxnh, align 4, !tbaa !9
  %cmp114 = icmp eq i32 %155, %156
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end113
  br label %for.end156

if.end116:                                        ; preds = %if.end113
  %157 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp117 = icmp ne i32 %157, 5
  br i1 %cmp117, label %if.then118, label %if.end149

if.then118:                                       ; preds = %if.end116
  %158 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phi119 = getelementptr inbounds %struct.IDAMemRec, ptr %158, i32 0, i32 50
  %arrayidx120 = getelementptr inbounds [6 x ptr], ptr %ida_phi119, i64 0, i64 0
  %159 = load ptr, ptr %arrayidx120, align 8, !tbaa !5
  %160 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0121 = getelementptr inbounds %struct.IDAMemRec, ptr %160, i32 0, i32 102
  %161 = load ptr, ptr %ida_yy0121, align 8, !tbaa !24
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %159, ptr noundef %161)
  %162 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phi122 = getelementptr inbounds %struct.IDAMemRec, ptr %162, i32 0, i32 50
  %arrayidx123 = getelementptr inbounds [6 x ptr], ptr %ida_phi122, i64 0, i64 1
  %163 = load ptr, ptr %arrayidx123, align 8, !tbaa !5
  %164 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp0124 = getelementptr inbounds %struct.IDAMemRec, ptr %164, i32 0, i32 103
  %165 = load ptr, ptr %ida_yp0124, align 8, !tbaa !25
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %163, ptr noundef %165)
  %166 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool125 = icmp ne i32 %166, 0
  br i1 %tobool125, label %if.then126, label %if.end148

if.then126:                                       ; preds = %if.then118
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc145, %if.then126
  %167 = load i32, ptr %is, align 4, !tbaa !9
  %168 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns128 = getelementptr inbounds %struct.IDAMemRec, ptr %168, i32 0, i32 24
  %169 = load i32, ptr %ida_Ns128, align 8, !tbaa !27
  %cmp129 = icmp slt i32 %167, %169
  br i1 %cmp129, label %for.body130, label %for.end147

for.body130:                                      ; preds = %for.cond127
  %170 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS131 = getelementptr inbounds %struct.IDAMemRec, ptr %170, i32 0, i32 78
  %arrayidx132 = getelementptr inbounds [6 x ptr], ptr %ida_phiS131, i64 0, i64 0
  %171 = load ptr, ptr %arrayidx132, align 8, !tbaa !5
  %172 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom133 = sext i32 %172 to i64
  %arrayidx134 = getelementptr inbounds ptr, ptr %171, i64 %idxprom133
  %173 = load ptr, ptr %arrayidx134, align 8, !tbaa !5
  %174 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0135 = getelementptr inbounds %struct.IDAMemRec, ptr %174, i32 0, i32 91
  %175 = load ptr, ptr %ida_yyS0135, align 8, !tbaa !28
  %176 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom136 = sext i32 %176 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %175, i64 %idxprom136
  %177 = load ptr, ptr %arrayidx137, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %173, ptr noundef %177)
  %178 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS138 = getelementptr inbounds %struct.IDAMemRec, ptr %178, i32 0, i32 78
  %arrayidx139 = getelementptr inbounds [6 x ptr], ptr %ida_phiS138, i64 0, i64 1
  %179 = load ptr, ptr %arrayidx139, align 8, !tbaa !5
  %180 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom140 = sext i32 %180 to i64
  %arrayidx141 = getelementptr inbounds ptr, ptr %179, i64 %idxprom140
  %181 = load ptr, ptr %arrayidx141, align 8, !tbaa !5
  %182 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0142 = getelementptr inbounds %struct.IDAMemRec, ptr %182, i32 0, i32 92
  %183 = load ptr, ptr %ida_ypS0142, align 8, !tbaa !29
  %184 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom143 = sext i32 %184 to i64
  %arrayidx144 = getelementptr inbounds ptr, ptr %183, i64 %idxprom143
  %185 = load ptr, ptr %arrayidx144, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %181, ptr noundef %185)
  br label %for.inc145

for.inc145:                                       ; preds = %for.body130
  %186 = load i32, ptr %is, align 4, !tbaa !9
  %inc146 = add nsw i32 %186, 1
  store i32 %inc146, ptr %is, align 4, !tbaa !9
  br label %for.cond127, !llvm.loop !50

for.end147:                                       ; preds = %for.cond127
  br label %if.end148

if.end148:                                        ; preds = %for.end147, %if.then118
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end116
  %187 = load double, ptr %hic, align 8, !tbaa !11
  %mul150 = fmul double %187, 1.000000e-01
  store double %mul150, ptr %hic, align 8, !tbaa !11
  %188 = load double, ptr %hic, align 8, !tbaa !11
  %div151 = fdiv double 1.000000e+00, %188
  %189 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_cj152 = getelementptr inbounds %struct.IDAMemRec, ptr %189, i32 0, i32 129
  store double %div151, ptr %ida_cj152, align 8, !tbaa !47
  %190 = load double, ptr %hic, align 8, !tbaa !11
  %191 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_hh153 = getelementptr inbounds %struct.IDAMemRec, ptr %191, i32 0, i32 124
  store double %190, ptr %ida_hh153, align 8, !tbaa !46
  br label %for.inc154

for.inc154:                                       ; preds = %if.end149
  %192 = load i32, ptr %nh, align 4, !tbaa !9
  %inc155 = add nsw i32 %192, 1
  store i32 %inc155, ptr %nh, align 4, !tbaa !9
  br label %for.cond103, !llvm.loop !51

for.end156:                                       ; preds = %if.then115, %if.then112, %if.then108, %for.cond103
  %193 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp157 = icmp ne i32 %193, 0
  br i1 %cmp157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %for.end156
  br label %for.end204

if.end159:                                        ; preds = %for.end156
  %194 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_efun = getelementptr inbounds %struct.IDAMemRec, ptr %194, i32 0, i32 10
  %195 = load ptr, ptr %ida_efun, align 8, !tbaa !52
  %196 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0160 = getelementptr inbounds %struct.IDAMemRec, ptr %196, i32 0, i32 102
  %197 = load ptr, ptr %ida_yy0160, align 8, !tbaa !24
  %198 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ewt161 = getelementptr inbounds %struct.IDAMemRec, ptr %198, i32 0, i32 56
  %199 = load ptr, ptr %ida_ewt161, align 8, !tbaa !43
  %200 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_edata = getelementptr inbounds %struct.IDAMemRec, ptr %200, i32 0, i32 11
  %201 = load ptr, ptr %ida_edata, align 8, !tbaa !53
  %call162 = call i32 %195(ptr noundef %197, ptr noundef %199, ptr noundef %201)
  store i32 %call162, ptr %ewtsetOK, align 4, !tbaa !9
  %202 = load i32, ptr %ewtsetOK, align 4, !tbaa !9
  %cmp163 = icmp ne i32 %202, 0
  br i1 %cmp163, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.end159
  store i32 -24, ptr %retval1, align 4, !tbaa !9
  br label %for.end204

if.end165:                                        ; preds = %if.end159
  %203 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0166 = getelementptr inbounds %struct.IDAMemRec, ptr %203, i32 0, i32 102
  %204 = load ptr, ptr %ida_yy0166, align 8, !tbaa !24
  %205 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phi167 = getelementptr inbounds %struct.IDAMemRec, ptr %205, i32 0, i32 50
  %arrayidx168 = getelementptr inbounds [6 x ptr], ptr %ida_phi167, i64 0, i64 0
  %206 = load ptr, ptr %arrayidx168, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %204, ptr noundef %206)
  %207 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp0169 = getelementptr inbounds %struct.IDAMemRec, ptr %207, i32 0, i32 103
  %208 = load ptr, ptr %ida_yp0169, align 8, !tbaa !25
  %209 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phi170 = getelementptr inbounds %struct.IDAMemRec, ptr %209, i32 0, i32 50
  %arrayidx171 = getelementptr inbounds [6 x ptr], ptr %ida_phi170, i64 0, i64 1
  %210 = load ptr, ptr %arrayidx171, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %208, ptr noundef %210)
  %211 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool172 = icmp ne i32 %211, 0
  br i1 %tobool172, label %if.then173, label %if.end201

if.then173:                                       ; preds = %if.end165
  %212 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %213 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0174 = getelementptr inbounds %struct.IDAMemRec, ptr %213, i32 0, i32 91
  %214 = load ptr, ptr %ida_yyS0174, align 8, !tbaa !28
  %215 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ewtS175 = getelementptr inbounds %struct.IDAMemRec, ptr %215, i32 0, i32 79
  %216 = load ptr, ptr %ida_ewtS175, align 8, !tbaa !45
  %call176 = call i32 @IDASensEwtSet(ptr noundef %212, ptr noundef %214, ptr noundef %216)
  store i32 %call176, ptr %ewtsetOK, align 4, !tbaa !9
  %217 = load i32, ptr %ewtsetOK, align 4, !tbaa !9
  %cmp177 = icmp ne i32 %217, 0
  br i1 %cmp177, label %if.then178, label %if.end179

if.then178:                                       ; preds = %if.then173
  store i32 -24, ptr %retval1, align 4, !tbaa !9
  br label %for.end204

if.end179:                                        ; preds = %if.then173
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond180

for.cond180:                                      ; preds = %for.inc198, %if.end179
  %218 = load i32, ptr %is, align 4, !tbaa !9
  %219 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns181 = getelementptr inbounds %struct.IDAMemRec, ptr %219, i32 0, i32 24
  %220 = load i32, ptr %ida_Ns181, align 8, !tbaa !27
  %cmp182 = icmp slt i32 %218, %220
  br i1 %cmp182, label %for.body183, label %for.end200

for.body183:                                      ; preds = %for.cond180
  %221 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0184 = getelementptr inbounds %struct.IDAMemRec, ptr %221, i32 0, i32 91
  %222 = load ptr, ptr %ida_yyS0184, align 8, !tbaa !28
  %223 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom185 = sext i32 %223 to i64
  %arrayidx186 = getelementptr inbounds ptr, ptr %222, i64 %idxprom185
  %224 = load ptr, ptr %arrayidx186, align 8, !tbaa !5
  %225 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS187 = getelementptr inbounds %struct.IDAMemRec, ptr %225, i32 0, i32 78
  %arrayidx188 = getelementptr inbounds [6 x ptr], ptr %ida_phiS187, i64 0, i64 0
  %226 = load ptr, ptr %arrayidx188, align 8, !tbaa !5
  %227 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom189 = sext i32 %227 to i64
  %arrayidx190 = getelementptr inbounds ptr, ptr %226, i64 %idxprom189
  %228 = load ptr, ptr %arrayidx190, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %224, ptr noundef %228)
  %229 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0191 = getelementptr inbounds %struct.IDAMemRec, ptr %229, i32 0, i32 92
  %230 = load ptr, ptr %ida_ypS0191, align 8, !tbaa !29
  %231 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom192 = sext i32 %231 to i64
  %arrayidx193 = getelementptr inbounds ptr, ptr %230, i64 %idxprom192
  %232 = load ptr, ptr %arrayidx193, align 8, !tbaa !5
  %233 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS194 = getelementptr inbounds %struct.IDAMemRec, ptr %233, i32 0, i32 78
  %arrayidx195 = getelementptr inbounds [6 x ptr], ptr %ida_phiS194, i64 0, i64 1
  %234 = load ptr, ptr %arrayidx195, align 8, !tbaa !5
  %235 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom196 = sext i32 %235 to i64
  %arrayidx197 = getelementptr inbounds ptr, ptr %234, i64 %idxprom196
  %236 = load ptr, ptr %arrayidx197, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %232, ptr noundef %236)
  br label %for.inc198

for.inc198:                                       ; preds = %for.body183
  %237 = load i32, ptr %is, align 4, !tbaa !9
  %inc199 = add nsw i32 %237, 1
  store i32 %inc199, ptr %is, align 4, !tbaa !9
  br label %for.cond180, !llvm.loop !54

for.end200:                                       ; preds = %for.cond180
  br label %if.end201

if.end201:                                        ; preds = %for.end200, %if.end165
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201
  %238 = load i32, ptr %nwt, align 4, !tbaa !9
  %inc203 = add nsw i32 %238, 1
  store i32 %inc203, ptr %nwt, align 4, !tbaa !9
  br label %for.cond100, !llvm.loop !55

for.end204:                                       ; preds = %if.then178, %if.then164, %if.then158, %for.cond100
  %239 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %cmp205 = icmp eq i32 %239, 1
  br i1 %cmp205, label %if.then206, label %if.end207

if.then206:                                       ; preds = %for.end204
  %240 = load double, ptr %hic, align 8, !tbaa !11
  %241 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_hused = getelementptr inbounds %struct.IDAMemRec, ptr %241, i32 0, i32 125
  store double %240, ptr %ida_hused, align 8, !tbaa !56
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %for.end204
  %242 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp208 = icmp ne i32 %242, 0
  br i1 %cmp208, label %if.then209, label %if.end221

if.then209:                                       ; preds = %if.end207
  %243 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0210 = getelementptr inbounds %struct.IDAMemRec, ptr %243, i32 0, i32 102
  %244 = load ptr, ptr %ida_yy0210, align 8, !tbaa !24
  call void @N_VDestroy(ptr noundef %244)
  %245 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp0211 = getelementptr inbounds %struct.IDAMemRec, ptr %245, i32 0, i32 103
  %246 = load ptr, ptr %ida_yp0211, align 8, !tbaa !25
  call void @N_VDestroy(ptr noundef %246)
  %247 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_sensi212 = getelementptr inbounds %struct.IDAMemRec, ptr %247, i32 0, i32 23
  %248 = load i32, ptr %ida_sensi212, align 4, !tbaa !21
  %tobool213 = icmp ne i32 %248, 0
  br i1 %tobool213, label %if.then214, label %if.end219

if.then214:                                       ; preds = %if.then209
  %249 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0215 = getelementptr inbounds %struct.IDAMemRec, ptr %249, i32 0, i32 91
  %250 = load ptr, ptr %ida_yyS0215, align 8, !tbaa !28
  %251 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns216 = getelementptr inbounds %struct.IDAMemRec, ptr %251, i32 0, i32 24
  %252 = load i32, ptr %ida_Ns216, align 8, !tbaa !27
  call void @N_VDestroyVectorArray(ptr noundef %250, i32 noundef %252)
  %253 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0217 = getelementptr inbounds %struct.IDAMemRec, ptr %253, i32 0, i32 92
  %254 = load ptr, ptr %ida_ypS0217, align 8, !tbaa !29
  %255 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns218 = getelementptr inbounds %struct.IDAMemRec, ptr %255, i32 0, i32 24
  %256 = load i32, ptr %ida_Ns218, align 8, !tbaa !27
  call void @N_VDestroyVectorArray(ptr noundef %254, i32 noundef %256)
  br label %if.end219

if.end219:                                        ; preds = %if.then214, %if.then209
  %257 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %258 = load i32, ptr %retval1, align 4, !tbaa !9
  %call220 = call i32 @IDAICFailFlag(ptr noundef %257, i32 noundef %258)
  store i32 %call220, ptr %icret, align 4, !tbaa !9
  %259 = load i32, ptr %icret, align 4, !tbaa !9
  store i32 %259, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end221:                                        ; preds = %if.end207
  %260 = load i32, ptr %sensi_stg, align 4, !tbaa !9
  %tobool222 = icmp ne i32 %260, 0
  br i1 %tobool222, label %if.end234, label %if.then223

if.then223:                                       ; preds = %if.end221
  %261 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0224 = getelementptr inbounds %struct.IDAMemRec, ptr %261, i32 0, i32 102
  %262 = load ptr, ptr %ida_yy0224, align 8, !tbaa !24
  call void @N_VDestroy(ptr noundef %262)
  %263 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp0225 = getelementptr inbounds %struct.IDAMemRec, ptr %263, i32 0, i32 103
  %264 = load ptr, ptr %ida_yp0225, align 8, !tbaa !25
  call void @N_VDestroy(ptr noundef %264)
  %265 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_sensi226 = getelementptr inbounds %struct.IDAMemRec, ptr %265, i32 0, i32 23
  %266 = load i32, ptr %ida_sensi226, align 4, !tbaa !21
  %tobool227 = icmp ne i32 %266, 0
  br i1 %tobool227, label %if.then228, label %if.end233

if.then228:                                       ; preds = %if.then223
  %267 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0229 = getelementptr inbounds %struct.IDAMemRec, ptr %267, i32 0, i32 91
  %268 = load ptr, ptr %ida_yyS0229, align 8, !tbaa !28
  %269 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns230 = getelementptr inbounds %struct.IDAMemRec, ptr %269, i32 0, i32 24
  %270 = load i32, ptr %ida_Ns230, align 8, !tbaa !27
  call void @N_VDestroyVectorArray(ptr noundef %268, i32 noundef %270)
  %271 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0231 = getelementptr inbounds %struct.IDAMemRec, ptr %271, i32 0, i32 92
  %272 = load ptr, ptr %ida_ypS0231, align 8, !tbaa !29
  %273 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns232 = getelementptr inbounds %struct.IDAMemRec, ptr %273, i32 0, i32 24
  %274 = load i32, ptr %ida_Ns232, align 8, !tbaa !27
  call void @N_VDestroyVectorArray(ptr noundef %272, i32 noundef %274)
  br label %if.end233

if.end233:                                        ; preds = %if.then228, %if.then223
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end234:                                        ; preds = %if.end221
  %275 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_res = getelementptr inbounds %struct.IDAMemRec, ptr %275, i32 0, i32 2
  %276 = load ptr, ptr %ida_res, align 8, !tbaa !57
  %277 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_t0235 = getelementptr inbounds %struct.IDAMemRec, ptr %277, i32 0, i32 101
  %278 = load double, ptr %ida_t0235, align 8, !tbaa !26
  %279 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0236 = getelementptr inbounds %struct.IDAMemRec, ptr %279, i32 0, i32 102
  %280 = load ptr, ptr %ida_yy0236, align 8, !tbaa !24
  %281 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp0237 = getelementptr inbounds %struct.IDAMemRec, ptr %281, i32 0, i32 103
  %282 = load ptr, ptr %ida_yp0237, align 8, !tbaa !25
  %283 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %283, i32 0, i32 61
  %284 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %285 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_user_data = getelementptr inbounds %struct.IDAMemRec, ptr %285, i32 0, i32 3
  %286 = load ptr, ptr %ida_user_data, align 8, !tbaa !59
  %call238 = call i32 %276(double noundef %278, ptr noundef %280, ptr noundef %282, ptr noundef %284, ptr noundef %286)
  store i32 %call238, ptr %retval1, align 4, !tbaa !9
  %287 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_nre = getelementptr inbounds %struct.IDAMemRec, ptr %287, i32 0, i32 146
  %288 = load i64, ptr %ida_nre, align 8, !tbaa !60
  %inc239 = add nsw i64 %288, 1
  store i64 %inc239, ptr %ida_nre, align 8, !tbaa !60
  %289 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp240 = icmp slt i32 %289, 0
  br i1 %cmp240, label %if.then241, label %if.end242

if.then241:                                       ; preds = %if.end234
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end242:                                        ; preds = %if.end234
  %290 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp243 = icmp sgt i32 %290, 0
  br i1 %cmp243, label %if.then244, label %if.end245

if.then244:                                       ; preds = %if.end242
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end245:                                        ; preds = %if.end242
  store i32 1, ptr %nwt, align 4, !tbaa !9
  br label %for.cond246

for.cond246:                                      ; preds = %for.inc324, %if.end245
  %291 = load i32, ptr %nwt, align 4, !tbaa !9
  %cmp247 = icmp sle i32 %291, 2
  br i1 %cmp247, label %for.body248, label %for.end326

for.body248:                                      ; preds = %for.cond246
  store i32 1, ptr %nh, align 4, !tbaa !9
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc291, %for.body248
  %292 = load i32, ptr %nh, align 4, !tbaa !9
  %293 = load i32, ptr %mxnh, align 4, !tbaa !9
  %cmp250 = icmp sle i32 %292, %293
  br i1 %cmp250, label %for.body251, label %for.end293

for.body251:                                      ; preds = %for.cond249
  %294 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %call252 = call i32 @IDASensNlsIC(ptr noundef %294)
  store i32 %call252, ptr %retval1, align 4, !tbaa !9
  %295 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp253 = icmp eq i32 %295, 0
  br i1 %cmp253, label %if.then254, label %if.end255

if.then254:                                       ; preds = %for.body251
  br label %for.end293

if.end255:                                        ; preds = %for.body251
  %296 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ncfnS = getelementptr inbounds %struct.IDAMemRec, ptr %296, i32 0, i32 154
  %297 = load i64, ptr %ida_ncfnS, align 8, !tbaa !61
  %inc256 = add nsw i64 %297, 1
  store i64 %inc256, ptr %ida_ncfnS, align 8, !tbaa !61
  %298 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp257 = icmp slt i32 %298, 0
  br i1 %cmp257, label %if.then258, label %if.end259

if.then258:                                       ; preds = %if.end255
  br label %for.end293

if.end259:                                        ; preds = %if.end255
  %299 = load i32, ptr %nh, align 4, !tbaa !9
  %300 = load i32, ptr %mxnh, align 4, !tbaa !9
  %cmp260 = icmp eq i32 %299, %300
  br i1 %cmp260, label %if.then261, label %if.end262

if.then261:                                       ; preds = %if.end259
  br label %for.end293

if.end262:                                        ; preds = %if.end259
  %301 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp263 = icmp ne i32 %301, 5
  br i1 %cmp263, label %if.then264, label %if.end286

if.then264:                                       ; preds = %if.end262
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond265

for.cond265:                                      ; preds = %for.inc283, %if.then264
  %302 = load i32, ptr %is, align 4, !tbaa !9
  %303 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns266 = getelementptr inbounds %struct.IDAMemRec, ptr %303, i32 0, i32 24
  %304 = load i32, ptr %ida_Ns266, align 8, !tbaa !27
  %cmp267 = icmp slt i32 %302, %304
  br i1 %cmp267, label %for.body268, label %for.end285

for.body268:                                      ; preds = %for.cond265
  %305 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS269 = getelementptr inbounds %struct.IDAMemRec, ptr %305, i32 0, i32 78
  %arrayidx270 = getelementptr inbounds [6 x ptr], ptr %ida_phiS269, i64 0, i64 0
  %306 = load ptr, ptr %arrayidx270, align 8, !tbaa !5
  %307 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom271 = sext i32 %307 to i64
  %arrayidx272 = getelementptr inbounds ptr, ptr %306, i64 %idxprom271
  %308 = load ptr, ptr %arrayidx272, align 8, !tbaa !5
  %309 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0273 = getelementptr inbounds %struct.IDAMemRec, ptr %309, i32 0, i32 91
  %310 = load ptr, ptr %ida_yyS0273, align 8, !tbaa !28
  %311 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom274 = sext i32 %311 to i64
  %arrayidx275 = getelementptr inbounds ptr, ptr %310, i64 %idxprom274
  %312 = load ptr, ptr %arrayidx275, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %308, ptr noundef %312)
  %313 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS276 = getelementptr inbounds %struct.IDAMemRec, ptr %313, i32 0, i32 78
  %arrayidx277 = getelementptr inbounds [6 x ptr], ptr %ida_phiS276, i64 0, i64 1
  %314 = load ptr, ptr %arrayidx277, align 8, !tbaa !5
  %315 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom278 = sext i32 %315 to i64
  %arrayidx279 = getelementptr inbounds ptr, ptr %314, i64 %idxprom278
  %316 = load ptr, ptr %arrayidx279, align 8, !tbaa !5
  %317 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0280 = getelementptr inbounds %struct.IDAMemRec, ptr %317, i32 0, i32 92
  %318 = load ptr, ptr %ida_ypS0280, align 8, !tbaa !29
  %319 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom281 = sext i32 %319 to i64
  %arrayidx282 = getelementptr inbounds ptr, ptr %318, i64 %idxprom281
  %320 = load ptr, ptr %arrayidx282, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %316, ptr noundef %320)
  br label %for.inc283

for.inc283:                                       ; preds = %for.body268
  %321 = load i32, ptr %is, align 4, !tbaa !9
  %inc284 = add nsw i32 %321, 1
  store i32 %inc284, ptr %is, align 4, !tbaa !9
  br label %for.cond265, !llvm.loop !62

for.end285:                                       ; preds = %for.cond265
  br label %if.end286

if.end286:                                        ; preds = %for.end285, %if.end262
  %322 = load double, ptr %hic, align 8, !tbaa !11
  %mul287 = fmul double %322, 1.000000e-01
  store double %mul287, ptr %hic, align 8, !tbaa !11
  %323 = load double, ptr %hic, align 8, !tbaa !11
  %div288 = fdiv double 1.000000e+00, %323
  %324 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_cj289 = getelementptr inbounds %struct.IDAMemRec, ptr %324, i32 0, i32 129
  store double %div288, ptr %ida_cj289, align 8, !tbaa !47
  %325 = load double, ptr %hic, align 8, !tbaa !11
  %326 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_hh290 = getelementptr inbounds %struct.IDAMemRec, ptr %326, i32 0, i32 124
  store double %325, ptr %ida_hh290, align 8, !tbaa !46
  br label %for.inc291

for.inc291:                                       ; preds = %if.end286
  %327 = load i32, ptr %nh, align 4, !tbaa !9
  %inc292 = add nsw i32 %327, 1
  store i32 %inc292, ptr %nh, align 4, !tbaa !9
  br label %for.cond249, !llvm.loop !63

for.end293:                                       ; preds = %if.then261, %if.then258, %if.then254, %for.cond249
  %328 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp294 = icmp ne i32 %328, 0
  br i1 %cmp294, label %if.then295, label %if.end296

if.then295:                                       ; preds = %for.end293
  br label %for.end326

if.end296:                                        ; preds = %for.end293
  %329 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %330 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0297 = getelementptr inbounds %struct.IDAMemRec, ptr %330, i32 0, i32 91
  %331 = load ptr, ptr %ida_yyS0297, align 8, !tbaa !28
  %332 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ewtS298 = getelementptr inbounds %struct.IDAMemRec, ptr %332, i32 0, i32 79
  %333 = load ptr, ptr %ida_ewtS298, align 8, !tbaa !45
  %call299 = call i32 @IDASensEwtSet(ptr noundef %329, ptr noundef %331, ptr noundef %333)
  store i32 %call299, ptr %ewtsetOK, align 4, !tbaa !9
  %334 = load i32, ptr %ewtsetOK, align 4, !tbaa !9
  %cmp300 = icmp ne i32 %334, 0
  br i1 %cmp300, label %if.then301, label %if.end302

if.then301:                                       ; preds = %if.end296
  store i32 -24, ptr %retval1, align 4, !tbaa !9
  br label %for.end326

if.end302:                                        ; preds = %if.end296
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond303

for.cond303:                                      ; preds = %for.inc321, %if.end302
  %335 = load i32, ptr %is, align 4, !tbaa !9
  %336 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns304 = getelementptr inbounds %struct.IDAMemRec, ptr %336, i32 0, i32 24
  %337 = load i32, ptr %ida_Ns304, align 8, !tbaa !27
  %cmp305 = icmp slt i32 %335, %337
  br i1 %cmp305, label %for.body306, label %for.end323

for.body306:                                      ; preds = %for.cond303
  %338 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0307 = getelementptr inbounds %struct.IDAMemRec, ptr %338, i32 0, i32 91
  %339 = load ptr, ptr %ida_yyS0307, align 8, !tbaa !28
  %340 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom308 = sext i32 %340 to i64
  %arrayidx309 = getelementptr inbounds ptr, ptr %339, i64 %idxprom308
  %341 = load ptr, ptr %arrayidx309, align 8, !tbaa !5
  %342 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS310 = getelementptr inbounds %struct.IDAMemRec, ptr %342, i32 0, i32 78
  %arrayidx311 = getelementptr inbounds [6 x ptr], ptr %ida_phiS310, i64 0, i64 0
  %343 = load ptr, ptr %arrayidx311, align 8, !tbaa !5
  %344 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom312 = sext i32 %344 to i64
  %arrayidx313 = getelementptr inbounds ptr, ptr %343, i64 %idxprom312
  %345 = load ptr, ptr %arrayidx313, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %341, ptr noundef %345)
  %346 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0314 = getelementptr inbounds %struct.IDAMemRec, ptr %346, i32 0, i32 92
  %347 = load ptr, ptr %ida_ypS0314, align 8, !tbaa !29
  %348 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom315 = sext i32 %348 to i64
  %arrayidx316 = getelementptr inbounds ptr, ptr %347, i64 %idxprom315
  %349 = load ptr, ptr %arrayidx316, align 8, !tbaa !5
  %350 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_phiS317 = getelementptr inbounds %struct.IDAMemRec, ptr %350, i32 0, i32 78
  %arrayidx318 = getelementptr inbounds [6 x ptr], ptr %ida_phiS317, i64 0, i64 1
  %351 = load ptr, ptr %arrayidx318, align 8, !tbaa !5
  %352 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom319 = sext i32 %352 to i64
  %arrayidx320 = getelementptr inbounds ptr, ptr %351, i64 %idxprom319
  %353 = load ptr, ptr %arrayidx320, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %349, ptr noundef %353)
  br label %for.inc321

for.inc321:                                       ; preds = %for.body306
  %354 = load i32, ptr %is, align 4, !tbaa !9
  %inc322 = add nsw i32 %354, 1
  store i32 %inc322, ptr %is, align 4, !tbaa !9
  br label %for.cond303, !llvm.loop !64

for.end323:                                       ; preds = %for.cond303
  br label %for.inc324

for.inc324:                                       ; preds = %for.end323
  %355 = load i32, ptr %nwt, align 4, !tbaa !9
  %inc325 = add nsw i32 %355, 1
  store i32 %inc325, ptr %nwt, align 4, !tbaa !9
  br label %for.cond246, !llvm.loop !65

for.end326:                                       ; preds = %if.then301, %if.then295, %for.cond246
  %356 = load i32, ptr %icopt.addr, align 4, !tbaa !9
  %cmp327 = icmp eq i32 %356, 1
  br i1 %cmp327, label %if.then328, label %if.end330

if.then328:                                       ; preds = %for.end326
  %357 = load double, ptr %hic, align 8, !tbaa !11
  %358 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_hused329 = getelementptr inbounds %struct.IDAMemRec, ptr %358, i32 0, i32 125
  store double %357, ptr %ida_hused329, align 8, !tbaa !56
  br label %if.end330

if.end330:                                        ; preds = %if.then328, %for.end326
  %359 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yy0331 = getelementptr inbounds %struct.IDAMemRec, ptr %359, i32 0, i32 102
  %360 = load ptr, ptr %ida_yy0331, align 8, !tbaa !24
  call void @N_VDestroy(ptr noundef %360)
  %361 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yp0332 = getelementptr inbounds %struct.IDAMemRec, ptr %361, i32 0, i32 103
  %362 = load ptr, ptr %ida_yp0332, align 8, !tbaa !25
  call void @N_VDestroy(ptr noundef %362)
  %363 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_yyS0333 = getelementptr inbounds %struct.IDAMemRec, ptr %363, i32 0, i32 91
  %364 = load ptr, ptr %ida_yyS0333, align 8, !tbaa !28
  %365 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns334 = getelementptr inbounds %struct.IDAMemRec, ptr %365, i32 0, i32 24
  %366 = load i32, ptr %ida_Ns334, align 8, !tbaa !27
  call void @N_VDestroyVectorArray(ptr noundef %364, i32 noundef %366)
  %367 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_ypS0335 = getelementptr inbounds %struct.IDAMemRec, ptr %367, i32 0, i32 92
  %368 = load ptr, ptr %ida_ypS0335, align 8, !tbaa !29
  %369 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %ida_Ns336 = getelementptr inbounds %struct.IDAMemRec, ptr %369, i32 0, i32 24
  %370 = load i32, ptr %ida_Ns336, align 8, !tbaa !27
  call void @N_VDestroyVectorArray(ptr noundef %368, i32 noundef %370)
  %371 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp337 = icmp ne i32 %371, 0
  br i1 %cmp337, label %if.then338, label %if.end340

if.then338:                                       ; preds = %if.end330
  %372 = load ptr, ptr %IDA_mem, align 8, !tbaa !5
  %373 = load i32, ptr %retval1, align 4, !tbaa !9
  %call339 = call i32 @IDAICFailFlag(ptr noundef %372, i32 noundef %373)
  store i32 %call339, ptr %icret, align 4, !tbaa !9
  %374 = load i32, ptr %icret, align 4, !tbaa !9
  store i32 %374, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end340:                                        ; preds = %if.end330
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end340, %if.then338, %if.then244, %if.then241, %if.end233, %if.end219, %if.then72, %if.then20, %if.then15, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sensi_sim) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sensi_stg) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %IDA_mem) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ypnorm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %hic) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %minid) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %troundoff) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tdist) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %icret) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mxnh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ier) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ewtsetOK) #4
  %375 = load i32, ptr %retval, align 4
  ret i32 %375
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @IDAProcessError(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare i32 @IDAInitialSetup(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare ptr @N_VClone(ptr noundef) #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) #2

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) #2

declare double @N_VMin(ptr noundef) #2

declare double @IDAWrmsNorm(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare double @IDASensWrmsNormUpdate(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @IDANlsIC(ptr noundef %IDA_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %nj = alloca i32, align 4
  %is = alloca i32, align 4
  %tv1 = alloca ptr, align 8
  %tv2 = alloca ptr, align 8
  %tv3 = alloca ptr, align 8
  %sensi_sim = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sensi_sim) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sensi = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 23
  %1 = load i32, ptr %ida_sensi, align 4, !tbaa !21
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ism = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %ida_ism, align 4, !tbaa !22
  %cmp = icmp eq i32 %3, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, ptr %sensi_sim, align 4, !tbaa !9
  %5 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ee = getelementptr inbounds %struct.IDAMemRec, ptr %5, i32 0, i32 65
  %6 = load ptr, ptr %ida_ee, align 8, !tbaa !23
  store ptr %6, ptr %tv1, align 8, !tbaa !5
  %7 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tempv2 = getelementptr inbounds %struct.IDAMemRec, ptr %7, i32 0, i32 67
  %8 = load ptr, ptr %ida_tempv2, align 8, !tbaa !66
  store ptr %8, ptr %tv2, align 8, !tbaa !5
  %9 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_phi = getelementptr inbounds %struct.IDAMemRec, ptr %9, i32 0, i32 50
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %ida_phi, i64 0, i64 2
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  store ptr %10, ptr %tv3, align 8, !tbaa !5
  %11 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_res = getelementptr inbounds %struct.IDAMemRec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %ida_res, align 8, !tbaa !57
  %13 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_t0 = getelementptr inbounds %struct.IDAMemRec, ptr %13, i32 0, i32 101
  %14 = load double, ptr %ida_t0, align 8, !tbaa !26
  %15 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %15, i32 0, i32 102
  %16 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %17 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %17, i32 0, i32 103
  %18 = load ptr, ptr %ida_yp0, align 8, !tbaa !25
  %19 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %19, i32 0, i32 61
  %20 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %21 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_user_data = getelementptr inbounds %struct.IDAMemRec, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %ida_user_data, align 8, !tbaa !59
  %call = call i32 %12(double noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %20, ptr noundef %22)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %23 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nre = getelementptr inbounds %struct.IDAMemRec, ptr %23, i32 0, i32 146
  %24 = load i64, ptr %ida_nre, align 8, !tbaa !60
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %ida_nre, align 8, !tbaa !60
  %25 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp2 = icmp slt i32 %25, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.end
  %26 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp3 = icmp sgt i32 %26, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %27 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta6 = getelementptr inbounds %struct.IDAMemRec, ptr %27, i32 0, i32 61
  %28 = load ptr, ptr %ida_delta6, align 8, !tbaa !58
  %29 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres = getelementptr inbounds %struct.IDAMemRec, ptr %29, i32 0, i32 64
  %30 = load ptr, ptr %ida_savres, align 8, !tbaa !67
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %28, ptr noundef %30)
  %31 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool7 = icmp ne i32 %31, 0
  br i1 %tobool7, label %if.then8, label %if.end28

if.then8:                                         ; preds = %if.end5
  %32 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_resS = getelementptr inbounds %struct.IDAMemRec, ptr %32, i32 0, i32 26
  %33 = load ptr, ptr %ida_resS, align 8, !tbaa !68
  %34 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %34, i32 0, i32 24
  %35 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %36 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_t09 = getelementptr inbounds %struct.IDAMemRec, ptr %36, i32 0, i32 101
  %37 = load double, ptr %ida_t09, align 8, !tbaa !26
  %38 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy010 = getelementptr inbounds %struct.IDAMemRec, ptr %38, i32 0, i32 102
  %39 = load ptr, ptr %ida_yy010, align 8, !tbaa !24
  %40 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp011 = getelementptr inbounds %struct.IDAMemRec, ptr %40, i32 0, i32 103
  %41 = load ptr, ptr %ida_yp011, align 8, !tbaa !25
  %42 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta12 = getelementptr inbounds %struct.IDAMemRec, ptr %42, i32 0, i32 61
  %43 = load ptr, ptr %ida_delta12, align 8, !tbaa !58
  %44 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0 = getelementptr inbounds %struct.IDAMemRec, ptr %44, i32 0, i32 91
  %45 = load ptr, ptr %ida_yyS0, align 8, !tbaa !28
  %46 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0 = getelementptr inbounds %struct.IDAMemRec, ptr %46, i32 0, i32 92
  %47 = load ptr, ptr %ida_ypS0, align 8, !tbaa !29
  %48 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS = getelementptr inbounds %struct.IDAMemRec, ptr %48, i32 0, i32 85
  %49 = load ptr, ptr %ida_deltaS, align 8, !tbaa !69
  %50 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_user_dataS = getelementptr inbounds %struct.IDAMemRec, ptr %50, i32 0, i32 27
  %51 = load ptr, ptr %ida_user_dataS, align 8, !tbaa !70
  %52 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS1 = getelementptr inbounds %struct.IDAMemRec, ptr %52, i32 0, i32 86
  %53 = load ptr, ptr %ida_tmpS1, align 8, !tbaa !71
  %54 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS2 = getelementptr inbounds %struct.IDAMemRec, ptr %54, i32 0, i32 87
  %55 = load ptr, ptr %ida_tmpS2, align 8, !tbaa !72
  %56 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS3 = getelementptr inbounds %struct.IDAMemRec, ptr %56, i32 0, i32 88
  %57 = load ptr, ptr %ida_tmpS3, align 8, !tbaa !73
  %call13 = call i32 %33(i32 noundef %35, double noundef %37, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45, ptr noundef %47, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57)
  store i32 %call13, ptr %retval1, align 4, !tbaa !9
  %58 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nrSe = getelementptr inbounds %struct.IDAMemRec, ptr %58, i32 0, i32 148
  %59 = load i64, ptr %ida_nrSe, align 8, !tbaa !74
  %inc14 = add nsw i64 %59, 1
  store i64 %inc14, ptr %ida_nrSe, align 8, !tbaa !74
  %60 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp15 = icmp slt i32 %60, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then8
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.then8
  %61 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp18 = icmp sgt i32 %61, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %62 = load i32, ptr %is, align 4, !tbaa !9
  %63 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns21 = getelementptr inbounds %struct.IDAMemRec, ptr %63, i32 0, i32 24
  %64 = load i32, ptr %ida_Ns21, align 8, !tbaa !27
  %cmp22 = icmp slt i32 %62, %64
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS23 = getelementptr inbounds %struct.IDAMemRec, ptr %65, i32 0, i32 85
  %66 = load ptr, ptr %ida_deltaS23, align 8, !tbaa !69
  %67 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %67 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %66, i64 %idxprom
  %68 = load ptr, ptr %arrayidx24, align 8, !tbaa !5
  %69 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savresS = getelementptr inbounds %struct.IDAMemRec, ptr %69, i32 0, i32 89
  %70 = load ptr, ptr %ida_savresS, align 8, !tbaa !32
  %71 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom25 = sext i32 %71 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %70, i64 %idxprom25
  %72 = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %68, ptr noundef %72)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %73 = load i32, ptr %is, align 4, !tbaa !9
  %inc27 = add nsw i32 %73, 1
  store i32 %inc27, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.end5
  store i32 1, ptr %nj, align 4, !tbaa !9
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc73, %if.end28
  %74 = load i32, ptr %nj, align 4, !tbaa !9
  %75 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_maxnj = getelementptr inbounds %struct.IDAMemRec, ptr %75, i32 0, i32 107
  %76 = load i32, ptr %ida_maxnj, align 4, !tbaa !76
  %cmp30 = icmp sle i32 %74, %76
  br i1 %cmp30, label %for.body31, label %for.end75

for.body31:                                       ; preds = %for.cond29
  %77 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsetup = getelementptr inbounds %struct.IDAMemRec, ptr %77, i32 0, i32 202
  %78 = load ptr, ptr %ida_lsetup, align 8, !tbaa !77
  %tobool32 = icmp ne ptr %78, null
  br i1 %tobool32, label %if.then33, label %if.end46

if.then33:                                        ; preds = %for.body31
  %79 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nsetups = getelementptr inbounds %struct.IDAMemRec, ptr %79, i32 0, i32 161
  %80 = load i64, ptr %ida_nsetups, align 8, !tbaa !78
  %inc34 = add nsw i64 %80, 1
  store i64 %inc34, ptr %ida_nsetups, align 8, !tbaa !78
  %81 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsetup35 = getelementptr inbounds %struct.IDAMemRec, ptr %81, i32 0, i32 202
  %82 = load ptr, ptr %ida_lsetup35, align 8, !tbaa !77
  %83 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %84 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy036 = getelementptr inbounds %struct.IDAMemRec, ptr %84, i32 0, i32 102
  %85 = load ptr, ptr %ida_yy036, align 8, !tbaa !24
  %86 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp037 = getelementptr inbounds %struct.IDAMemRec, ptr %86, i32 0, i32 103
  %87 = load ptr, ptr %ida_yp037, align 8, !tbaa !25
  %88 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta38 = getelementptr inbounds %struct.IDAMemRec, ptr %88, i32 0, i32 61
  %89 = load ptr, ptr %ida_delta38, align 8, !tbaa !58
  %90 = load ptr, ptr %tv1, align 8, !tbaa !5
  %91 = load ptr, ptr %tv2, align 8, !tbaa !5
  %92 = load ptr, ptr %tv3, align 8, !tbaa !5
  %call39 = call i32 %82(ptr noundef %83, ptr noundef %85, ptr noundef %87, ptr noundef %89, ptr noundef %90, ptr noundef %91, ptr noundef %92)
  store i32 %call39, ptr %retval1, align 4, !tbaa !9
  %93 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp40 = icmp slt i32 %93, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then33
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.then33
  %94 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp43 = icmp sgt i32 %94, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end42
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.body31
  %95 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %call47 = call i32 @IDANewtonIC(ptr noundef %95)
  store i32 %call47, ptr %retval1, align 4, !tbaa !9
  %96 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp48 = icmp eq i32 %96, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %97 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp51 = icmp eq i32 %97, 5
  br i1 %cmp51, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end50
  %98 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsetup52 = getelementptr inbounds %struct.IDAMemRec, ptr %98, i32 0, i32 202
  %99 = load ptr, ptr %ida_lsetup52, align 8, !tbaa !77
  %tobool53 = icmp ne ptr %99, null
  br i1 %tobool53, label %if.then54, label %if.else

if.then54:                                        ; preds = %land.lhs.true
  %100 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres55 = getelementptr inbounds %struct.IDAMemRec, ptr %100, i32 0, i32 64
  %101 = load ptr, ptr %ida_savres55, align 8, !tbaa !67
  %102 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta56 = getelementptr inbounds %struct.IDAMemRec, ptr %102, i32 0, i32 61
  %103 = load ptr, ptr %ida_delta56, align 8, !tbaa !58
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %101, ptr noundef %103)
  %104 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool57 = icmp ne i32 %104, 0
  br i1 %tobool57, label %if.then58, label %if.end72

if.then58:                                        ; preds = %if.then54
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc69, %if.then58
  %105 = load i32, ptr %is, align 4, !tbaa !9
  %106 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns60 = getelementptr inbounds %struct.IDAMemRec, ptr %106, i32 0, i32 24
  %107 = load i32, ptr %ida_Ns60, align 8, !tbaa !27
  %cmp61 = icmp slt i32 %105, %107
  br i1 %cmp61, label %for.body62, label %for.end71

for.body62:                                       ; preds = %for.cond59
  %108 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savresS63 = getelementptr inbounds %struct.IDAMemRec, ptr %108, i32 0, i32 89
  %109 = load ptr, ptr %ida_savresS63, align 8, !tbaa !32
  %110 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom64 = sext i32 %110 to i64
  %arrayidx65 = getelementptr inbounds ptr, ptr %109, i64 %idxprom64
  %111 = load ptr, ptr %arrayidx65, align 8, !tbaa !5
  %112 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS66 = getelementptr inbounds %struct.IDAMemRec, ptr %112, i32 0, i32 85
  %113 = load ptr, ptr %ida_deltaS66, align 8, !tbaa !69
  %114 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom67 = sext i32 %114 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %113, i64 %idxprom67
  %115 = load ptr, ptr %arrayidx68, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %111, ptr noundef %115)
  br label %for.inc69

for.inc69:                                        ; preds = %for.body62
  %116 = load i32, ptr %is, align 4, !tbaa !9
  %inc70 = add nsw i32 %116, 1
  store i32 %inc70, ptr %is, align 4, !tbaa !9
  br label %for.cond59, !llvm.loop !79

for.end71:                                        ; preds = %for.cond59
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %if.then54
  br label %for.inc73

if.else:                                          ; preds = %land.lhs.true, %if.end50
  %117 = load i32, ptr %retval1, align 4, !tbaa !9
  store i32 %117, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.inc73:                                        ; preds = %if.end72
  %118 = load i32, ptr %nj, align 4, !tbaa !9
  %inc74 = add nsw i32 %118, 1
  store i32 %inc74, ptr %nj, align 4, !tbaa !9
  br label %for.cond29, !llvm.loop !80

for.end75:                                        ; preds = %for.cond29
  %119 = load i32, ptr %retval1, align 4, !tbaa !9
  store i32 %119, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end75, %if.else, %if.then49, %if.then44, %if.then41, %if.then19, %if.then16, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sensi_sim) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  %120 = load i32, ptr %retval, align 4
  ret i32 %120
}

declare i32 @IDASensEwtSet(ptr noundef, ptr noundef, ptr noundef) #2

declare void @N_VDestroy(ptr noundef) #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @IDAICFailFlag(ptr noundef %IDA_mem, i32 noundef %retval1) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %retval.addr = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  store i32 %retval1, ptr %retval.addr, align 4, !tbaa !9
  %0 = load i32, ptr %retval.addr, align 4, !tbaa !9
  switch i32 %0, label %sw.epilog [
    i32 -8, label %sw.bb
    i32 -12, label %sw.bb2
    i32 -6, label %sw.bb3
    i32 -7, label %sw.bb4
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
    i32 4, label %sw.bb8
    i32 5, label %sw.bb9
    i32 -24, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %1, i32 noundef -8, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.8)
  store i32 -8, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %2, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.9)
  store i32 -12, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %3 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %3, i32 noundef -6, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.10)
  store i32 -6, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  %4 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %4, i32 noundef -7, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.11)
  store i32 -7, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %5 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %5, i32 noundef -14, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.12)
  store i32 -14, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %6 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %6, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.13)
  store i32 -11, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  %7 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %7, i32 noundef -13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.14)
  store i32 -13, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %8, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.15)
  store i32 -4, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %entry
  %9 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %9, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.15)
  store i32 -4, ptr %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %10, i32 noundef -24, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.16)
  store i32 -24, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -99, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @IDASensNlsIC(ptr noundef %IDA_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %is = alloca i32, align 4
  %nj = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nj) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_resS = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 26
  %1 = load ptr, ptr %ida_resS, align 8, !tbaa !68
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 24
  %3 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %4 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_t0 = getelementptr inbounds %struct.IDAMemRec, ptr %4, i32 0, i32 101
  %5 = load double, ptr %ida_t0, align 8, !tbaa !26
  %6 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %6, i32 0, i32 102
  %7 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %8, i32 0, i32 103
  %9 = load ptr, ptr %ida_yp0, align 8, !tbaa !25
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %10, i32 0, i32 61
  %11 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %12 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0 = getelementptr inbounds %struct.IDAMemRec, ptr %12, i32 0, i32 91
  %13 = load ptr, ptr %ida_yyS0, align 8, !tbaa !28
  %14 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0 = getelementptr inbounds %struct.IDAMemRec, ptr %14, i32 0, i32 92
  %15 = load ptr, ptr %ida_ypS0, align 8, !tbaa !29
  %16 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS = getelementptr inbounds %struct.IDAMemRec, ptr %16, i32 0, i32 85
  %17 = load ptr, ptr %ida_deltaS, align 8, !tbaa !69
  %18 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_user_dataS = getelementptr inbounds %struct.IDAMemRec, ptr %18, i32 0, i32 27
  %19 = load ptr, ptr %ida_user_dataS, align 8, !tbaa !70
  %20 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS1 = getelementptr inbounds %struct.IDAMemRec, ptr %20, i32 0, i32 86
  %21 = load ptr, ptr %ida_tmpS1, align 8, !tbaa !71
  %22 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS2 = getelementptr inbounds %struct.IDAMemRec, ptr %22, i32 0, i32 87
  %23 = load ptr, ptr %ida_tmpS2, align 8, !tbaa !72
  %24 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS3 = getelementptr inbounds %struct.IDAMemRec, ptr %24, i32 0, i32 88
  %25 = load ptr, ptr %ida_tmpS3, align 8, !tbaa !73
  %call = call i32 %1(i32 noundef %3, double noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef %25)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %26 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nrSe = getelementptr inbounds %struct.IDAMemRec, ptr %26, i32 0, i32 148
  %27 = load i64, ptr %ida_nrSe, align 8, !tbaa !74
  %inc = add nsw i64 %27, 1
  store i64 %inc, ptr %ida_nrSe, align 8, !tbaa !74
  %28 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp = icmp slt i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %29 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp2 = icmp sgt i32 %29, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %30 = load i32, ptr %is, align 4, !tbaa !9
  %31 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns5 = getelementptr inbounds %struct.IDAMemRec, ptr %31, i32 0, i32 24
  %32 = load i32, ptr %ida_Ns5, align 8, !tbaa !27
  %cmp6 = icmp slt i32 %30, %32
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS7 = getelementptr inbounds %struct.IDAMemRec, ptr %33, i32 0, i32 85
  %34 = load ptr, ptr %ida_deltaS7, align 8, !tbaa !69
  %35 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %34, i64 %idxprom
  %36 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %37 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savresS = getelementptr inbounds %struct.IDAMemRec, ptr %37, i32 0, i32 89
  %38 = load ptr, ptr %ida_savresS, align 8, !tbaa !32
  %39 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom8 = sext i32 %39 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %38, i64 %idxprom8
  %40 = load ptr, ptr %arrayidx9, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %36, ptr noundef %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, ptr %is, align 4, !tbaa !9
  %inc10 = add nsw i32 %41, 1
  store i32 %inc10, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %nj, align 4, !tbaa !9
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc50, %for.end
  %42 = load i32, ptr %nj, align 4, !tbaa !9
  %cmp12 = icmp sle i32 %42, 2
  br i1 %cmp12, label %for.body13, label %for.end52

for.body13:                                       ; preds = %for.cond11
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %call14 = call i32 @IDASensNewtonIC(ptr noundef %43)
  store i32 %call14, ptr %retval1, align 4, !tbaa !9
  %44 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp15 = icmp eq i32 %44, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %for.body13
  %45 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp18 = icmp eq i32 %45, 5
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %46 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsetup = getelementptr inbounds %struct.IDAMemRec, ptr %46, i32 0, i32 202
  %47 = load ptr, ptr %ida_lsetup, align 8, !tbaa !77
  %tobool = icmp ne ptr %47, null
  br i1 %tobool, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true
  %48 = load i32, ptr %nj, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %48, 1
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %land.lhs.true19
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc32, %if.then21
  %49 = load i32, ptr %is, align 4, !tbaa !9
  %50 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns23 = getelementptr inbounds %struct.IDAMemRec, ptr %50, i32 0, i32 24
  %51 = load i32, ptr %ida_Ns23, align 8, !tbaa !27
  %cmp24 = icmp slt i32 %49, %51
  br i1 %cmp24, label %for.body25, label %for.end34

for.body25:                                       ; preds = %for.cond22
  %52 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savresS26 = getelementptr inbounds %struct.IDAMemRec, ptr %52, i32 0, i32 89
  %53 = load ptr, ptr %ida_savresS26, align 8, !tbaa !32
  %54 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom27 = sext i32 %54 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %53, i64 %idxprom27
  %55 = load ptr, ptr %arrayidx28, align 8, !tbaa !5
  %56 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS29 = getelementptr inbounds %struct.IDAMemRec, ptr %56, i32 0, i32 85
  %57 = load ptr, ptr %ida_deltaS29, align 8, !tbaa !69
  %58 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom30 = sext i32 %58 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %57, i64 %idxprom30
  %59 = load ptr, ptr %arrayidx31, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %55, ptr noundef %59)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body25
  %60 = load i32, ptr %is, align 4, !tbaa !9
  %inc33 = add nsw i32 %60, 1
  store i32 %inc33, ptr %is, align 4, !tbaa !9
  br label %for.cond22, !llvm.loop !82

for.end34:                                        ; preds = %for.cond22
  %61 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nsetupsS = getelementptr inbounds %struct.IDAMemRec, ptr %61, i32 0, i32 162
  %62 = load i64, ptr %ida_nsetupsS, align 8, !tbaa !83
  %inc35 = add nsw i64 %62, 1
  store i64 %inc35, ptr %ida_nsetupsS, align 8, !tbaa !83
  %63 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsetup36 = getelementptr inbounds %struct.IDAMemRec, ptr %63, i32 0, i32 202
  %64 = load ptr, ptr %ida_lsetup36, align 8, !tbaa !77
  %65 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy037 = getelementptr inbounds %struct.IDAMemRec, ptr %66, i32 0, i32 102
  %67 = load ptr, ptr %ida_yy037, align 8, !tbaa !24
  %68 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp038 = getelementptr inbounds %struct.IDAMemRec, ptr %68, i32 0, i32 103
  %69 = load ptr, ptr %ida_yp038, align 8, !tbaa !25
  %70 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta39 = getelementptr inbounds %struct.IDAMemRec, ptr %70, i32 0, i32 61
  %71 = load ptr, ptr %ida_delta39, align 8, !tbaa !58
  %72 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS140 = getelementptr inbounds %struct.IDAMemRec, ptr %72, i32 0, i32 86
  %73 = load ptr, ptr %ida_tmpS140, align 8, !tbaa !71
  %74 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS241 = getelementptr inbounds %struct.IDAMemRec, ptr %74, i32 0, i32 87
  %75 = load ptr, ptr %ida_tmpS241, align 8, !tbaa !72
  %76 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS342 = getelementptr inbounds %struct.IDAMemRec, ptr %76, i32 0, i32 88
  %77 = load ptr, ptr %ida_tmpS342, align 8, !tbaa !73
  %call43 = call i32 %64(ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %77)
  store i32 %call43, ptr %retval1, align 4, !tbaa !9
  %78 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp44 = icmp slt i32 %78, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.end34
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.end34
  %79 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp47 = icmp sgt i32 %79, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end46
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end46
  br label %for.inc50

if.else:                                          ; preds = %land.lhs.true19, %land.lhs.true, %if.end17
  %80 = load i32, ptr %retval1, align 4, !tbaa !9
  store i32 %80, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.inc50:                                        ; preds = %if.end49
  %81 = load i32, ptr %nj, align 4, !tbaa !9
  %inc51 = add nsw i32 %81, 1
  store i32 %inc51, ptr %nj, align 4, !tbaa !9
  br label %for.cond11, !llvm.loop !84

for.end52:                                        ; preds = %for.cond11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end52, %if.else, %if.then48, %if.then45, %if.then16, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @IDANewtonIC(ptr noundef %IDA_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %mnewt = alloca i32, align 4
  %is = alloca i32, align 4
  %delnorm = alloca double, align 8
  %fnorm = alloca double, align 8
  %fnorm0 = alloca double, align 8
  %oldfnrm = alloca double, align 8
  %rate = alloca double, align 8
  %sensi_sim = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mnewt) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %delnorm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldfnrm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rate) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sensi_sim) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sensi = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 23
  %1 = load i32, ptr %ida_sensi, align 4, !tbaa !21
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ism = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %ida_ism, align 4, !tbaa !22
  %cmp = icmp eq i32 %3, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, ptr %sensi_sim, align 4, !tbaa !9
  %5 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_phi = getelementptr inbounds %struct.IDAMemRec, ptr %5, i32 0, i32 50
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %ida_phi, i64 0, i64 2
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %7 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnew = getelementptr inbounds %struct.IDAMemRec, ptr %7, i32 0, i32 71
  store ptr %6, ptr %ida_delnew, align 8, !tbaa !85
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsolve = getelementptr inbounds %struct.IDAMemRec, ptr %8, i32 0, i32 203
  %9 = load ptr, ptr %ida_lsolve, align 8, !tbaa !86
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %11, i32 0, i32 61
  %12 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %13 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewt = getelementptr inbounds %struct.IDAMemRec, ptr %13, i32 0, i32 56
  %14 = load ptr, ptr %ida_ewt, align 8, !tbaa !43
  %15 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %15, i32 0, i32 102
  %16 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %17 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %17, i32 0, i32 103
  %18 = load ptr, ptr %ida_yp0, align 8, !tbaa !25
  %19 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres = getelementptr inbounds %struct.IDAMemRec, ptr %19, i32 0, i32 64
  %20 = load ptr, ptr %ida_savres, align 8, !tbaa !67
  %call = call i32 %9(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %20)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %21 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp2 = icmp slt i32 %21, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.end
  %22 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp3 = icmp sgt i32 %22, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %23 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta6 = getelementptr inbounds %struct.IDAMemRec, ptr %24, i32 0, i32 61
  %25 = load ptr, ptr %ida_delta6, align 8, !tbaa !58
  %26 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewt7 = getelementptr inbounds %struct.IDAMemRec, ptr %26, i32 0, i32 56
  %27 = load ptr, ptr %ida_ewt7, align 8, !tbaa !43
  %call8 = call double @IDAWrmsNorm(ptr noundef %23, ptr noundef %25, ptr noundef %27, i32 noundef 0)
  store double %call8, ptr %fnorm, align 8, !tbaa !11
  %28 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool9 = icmp ne i32 %28, 0
  br i1 %tobool9, label %if.then10, label %if.end29

if.then10:                                        ; preds = %if.end5
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %29 = load i32, ptr %is, align 4, !tbaa !9
  %30 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %30, i32 0, i32 24
  %31 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %cmp11 = icmp slt i32 %29, %31
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsolve12 = getelementptr inbounds %struct.IDAMemRec, ptr %32, i32 0, i32 203
  %33 = load ptr, ptr %ida_lsolve12, align 8, !tbaa !86
  %34 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS = getelementptr inbounds %struct.IDAMemRec, ptr %35, i32 0, i32 85
  %36 = load ptr, ptr %ida_deltaS, align 8, !tbaa !69
  %37 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %37 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %36, i64 %idxprom
  %38 = load ptr, ptr %arrayidx13, align 8, !tbaa !5
  %39 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS = getelementptr inbounds %struct.IDAMemRec, ptr %39, i32 0, i32 79
  %40 = load ptr, ptr %ida_ewtS, align 8, !tbaa !45
  %41 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom14 = sext i32 %41 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %40, i64 %idxprom14
  %42 = load ptr, ptr %arrayidx15, align 8, !tbaa !5
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy016 = getelementptr inbounds %struct.IDAMemRec, ptr %43, i32 0, i32 102
  %44 = load ptr, ptr %ida_yy016, align 8, !tbaa !24
  %45 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp017 = getelementptr inbounds %struct.IDAMemRec, ptr %45, i32 0, i32 103
  %46 = load ptr, ptr %ida_yp017, align 8, !tbaa !25
  %47 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres18 = getelementptr inbounds %struct.IDAMemRec, ptr %47, i32 0, i32 64
  %48 = load ptr, ptr %ida_savres18, align 8, !tbaa !67
  %call19 = call i32 %33(ptr noundef %34, ptr noundef %38, ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef %48)
  store i32 %call19, ptr %retval1, align 4, !tbaa !9
  %49 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp20 = icmp slt i32 %49, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %50 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp23 = icmp sgt i32 %50, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %51 = load i32, ptr %is, align 4, !tbaa !9
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  %52 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %53 = load double, ptr %fnorm, align 8, !tbaa !11
  %54 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS26 = getelementptr inbounds %struct.IDAMemRec, ptr %54, i32 0, i32 85
  %55 = load ptr, ptr %ida_deltaS26, align 8, !tbaa !69
  %56 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS27 = getelementptr inbounds %struct.IDAMemRec, ptr %56, i32 0, i32 79
  %57 = load ptr, ptr %ida_ewtS27, align 8, !tbaa !45
  %call28 = call double @IDASensWrmsNormUpdate(ptr noundef %52, double noundef %53, ptr noundef %55, ptr noundef %57, i32 noundef 0)
  store double %call28, ptr %fnorm, align 8, !tbaa !11
  br label %if.end29

if.end29:                                         ; preds = %for.end, %if.end5
  %58 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sysindex = getelementptr inbounds %struct.IDAMemRec, ptr %58, i32 0, i32 110
  %59 = load i32, ptr %ida_sysindex, align 8, !tbaa !37
  %cmp30 = icmp eq i32 %59, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end29
  %60 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tscale = getelementptr inbounds %struct.IDAMemRec, ptr %60, i32 0, i32 114
  %61 = load double, ptr %ida_tscale, align 8, !tbaa !38
  %62 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_cj = getelementptr inbounds %struct.IDAMemRec, ptr %62, i32 0, i32 129
  %63 = load double, ptr %ida_cj, align 8, !tbaa !47
  %64 = call double @llvm.fabs.f64(double %63)
  %mul = fmul double %61, %64
  %65 = load double, ptr %fnorm, align 8, !tbaa !11
  %mul32 = fmul double %65, %mul
  store double %mul32, ptr %fnorm, align 8, !tbaa !11
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29
  %66 = load double, ptr %fnorm, align 8, !tbaa !11
  %67 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_epsNewt = getelementptr inbounds %struct.IDAMemRec, ptr %67, i32 0, i32 135
  %68 = load double, ptr %ida_epsNewt, align 8, !tbaa !40
  %cmp34 = fcmp ole double %66, %68
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end33
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  %69 = load double, ptr %fnorm, align 8, !tbaa !11
  store double %69, ptr %fnorm0, align 8, !tbaa !11
  store double 0.000000e+00, ptr %rate, align 8, !tbaa !11
  store i32 0, ptr %mnewt, align 4, !tbaa !9
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc66, %if.end36
  %70 = load i32, ptr %mnewt, align 4, !tbaa !9
  %71 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_maxnit = getelementptr inbounds %struct.IDAMemRec, ptr %71, i32 0, i32 108
  %72 = load i32, ptr %ida_maxnit, align 8, !tbaa !88
  %cmp38 = icmp slt i32 %70, %72
  br i1 %cmp38, label %for.body39, label %for.end68

for.body39:                                       ; preds = %for.cond37
  %73 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nni = getelementptr inbounds %struct.IDAMemRec, ptr %73, i32 0, i32 159
  %74 = load i64, ptr %ida_nni, align 8, !tbaa !89
  %inc40 = add nsw i64 %74, 1
  store i64 %inc40, ptr %ida_nni, align 8, !tbaa !89
  %75 = load double, ptr %fnorm, align 8, !tbaa !11
  store double %75, ptr %delnorm, align 8, !tbaa !11
  %76 = load double, ptr %fnorm, align 8, !tbaa !11
  store double %76, ptr %oldfnrm, align 8, !tbaa !11
  %77 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %call41 = call i32 @IDALineSrch(ptr noundef %77, ptr noundef %delnorm, ptr noundef %fnorm)
  store i32 %call41, ptr %retval1, align 4, !tbaa !9
  %78 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp42 = icmp ne i32 %78, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body39
  %79 = load i32, ptr %retval1, align 4, !tbaa !9
  store i32 %79, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %for.body39
  %80 = load double, ptr %fnorm, align 8, !tbaa !11
  %81 = load double, ptr %oldfnrm, align 8, !tbaa !11
  %div = fdiv double %80, %81
  store double %div, ptr %rate, align 8, !tbaa !11
  %82 = load double, ptr %fnorm, align 8, !tbaa !11
  %83 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_epsNewt45 = getelementptr inbounds %struct.IDAMemRec, ptr %83, i32 0, i32 135
  %84 = load double, ptr %ida_epsNewt45, align 8, !tbaa !40
  %cmp46 = fcmp ole double %82, %84
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %85 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnew49 = getelementptr inbounds %struct.IDAMemRec, ptr %85, i32 0, i32 71
  %86 = load ptr, ptr %ida_delnew49, align 8, !tbaa !85
  %87 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta50 = getelementptr inbounds %struct.IDAMemRec, ptr %87, i32 0, i32 61
  %88 = load ptr, ptr %ida_delta50, align 8, !tbaa !58
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %86, ptr noundef %88)
  %89 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool51 = icmp ne i32 %89, 0
  br i1 %tobool51, label %if.then52, label %if.end65

if.then52:                                        ; preds = %if.end48
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc62, %if.then52
  %90 = load i32, ptr %is, align 4, !tbaa !9
  %91 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns54 = getelementptr inbounds %struct.IDAMemRec, ptr %91, i32 0, i32 24
  %92 = load i32, ptr %ida_Ns54, align 8, !tbaa !27
  %cmp55 = icmp slt i32 %90, %92
  br i1 %cmp55, label %for.body56, label %for.end64

for.body56:                                       ; preds = %for.cond53
  %93 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS = getelementptr inbounds %struct.IDAMemRec, ptr %93, i32 0, i32 90
  %94 = load ptr, ptr %ida_delnewS, align 8, !tbaa !33
  %95 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom57 = sext i32 %95 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %94, i64 %idxprom57
  %96 = load ptr, ptr %arrayidx58, align 8, !tbaa !5
  %97 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS59 = getelementptr inbounds %struct.IDAMemRec, ptr %97, i32 0, i32 85
  %98 = load ptr, ptr %ida_deltaS59, align 8, !tbaa !69
  %99 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom60 = sext i32 %99 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %98, i64 %idxprom60
  %100 = load ptr, ptr %arrayidx61, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %96, ptr noundef %100)
  br label %for.inc62

for.inc62:                                        ; preds = %for.body56
  %101 = load i32, ptr %is, align 4, !tbaa !9
  %inc63 = add nsw i32 %101, 1
  store i32 %inc63, ptr %is, align 4, !tbaa !9
  br label %for.cond53, !llvm.loop !90

for.end64:                                        ; preds = %for.cond53
  br label %if.end65

if.end65:                                         ; preds = %for.end64, %if.end48
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %102 = load i32, ptr %mnewt, align 4, !tbaa !9
  %inc67 = add nsw i32 %102, 1
  store i32 %inc67, ptr %mnewt, align 4, !tbaa !9
  br label %for.cond37, !llvm.loop !91

for.end68:                                        ; preds = %for.cond37
  %103 = load double, ptr %rate, align 8, !tbaa !11
  %cmp69 = fcmp ole double %103, 9.000000e-01
  br i1 %cmp69, label %if.then72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end68
  %104 = load double, ptr %fnorm, align 8, !tbaa !11
  %105 = load double, ptr %fnorm0, align 8, !tbaa !11
  %mul70 = fmul double 1.000000e-01, %105
  %cmp71 = fcmp olt double %104, %mul70
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false, %for.end68
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then72, %if.then47, %if.then43, %if.then35, %if.then24, %if.then21, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sensi_sim) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rate) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldfnrm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %delnorm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mnewt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @IDALineSrch(ptr noundef %IDA_mem, ptr noundef %delnorm, ptr noundef %fnorm) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %delnorm.addr = alloca ptr, align 8
  %fnorm.addr = alloca ptr, align 8
  %conOK = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %is = alloca i32, align 4
  %nbacks = alloca i32, align 4
  %f1norm = alloca double, align 8
  %fnormp = alloca double, align 8
  %f1normp = alloca double, align 8
  %ratio = alloca double, align 8
  %lambda = alloca double, align 8
  %minlam = alloca double, align 8
  %slpi = alloca double, align 8
  %mc = alloca ptr, align 8
  %sensi_sim = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  store ptr %delnorm, ptr %delnorm.addr, align 8, !tbaa !5
  store ptr %fnorm, ptr %fnorm.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %conOK) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbacks) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f1norm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnormp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f1normp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ratio) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lambda) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minlam) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slpi) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sensi_sim) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ee = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 65
  %1 = load ptr, ptr %ida_ee, align 8, !tbaa !23
  store ptr %1, ptr %mc, align 8, !tbaa !5
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_phi = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 50
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %ida_phi, i64 0, i64 3
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %4 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp = getelementptr inbounds %struct.IDAMemRec, ptr %4, i32 0, i32 72
  store ptr %3, ptr %ida_dtemp, align 8, !tbaa !92
  %5 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tempv2 = getelementptr inbounds %struct.IDAMemRec, ptr %5, i32 0, i32 67
  %6 = load ptr, ptr %ida_tempv2, align 8, !tbaa !66
  %7 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew = getelementptr inbounds %struct.IDAMemRec, ptr %7, i32 0, i32 69
  store ptr %6, ptr %ida_ynew, align 8, !tbaa !93
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ee2 = getelementptr inbounds %struct.IDAMemRec, ptr %8, i32 0, i32 65
  %9 = load ptr, ptr %ida_ee2, align 8, !tbaa !23
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew = getelementptr inbounds %struct.IDAMemRec, ptr %10, i32 0, i32 70
  store ptr %9, ptr %ida_ypnew, align 8, !tbaa !94
  %11 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  %14 = load double, ptr %13, align 8, !tbaa !11
  %mul = fmul double %12, %14
  %mul3 = fmul double %mul, 5.000000e-01
  store double %mul3, ptr %f1norm, align 8, !tbaa !11
  store double 1.000000e+00, ptr %ratio, align 8, !tbaa !11
  %15 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_constraintsSet = getelementptr inbounds %struct.IDAMemRec, ptr %15, i32 0, i32 12
  %16 = load i32, ptr %ida_constraintsSet, align 8, !tbaa !95
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %call = call i32 @IDANewy(ptr noundef %17)
  %18 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_constraints = getelementptr inbounds %struct.IDAMemRec, ptr %18, i32 0, i32 63
  %19 = load ptr, ptr %ida_constraints, align 8, !tbaa !96
  %20 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew4 = getelementptr inbounds %struct.IDAMemRec, ptr %20, i32 0, i32 69
  %21 = load ptr, ptr %ida_ynew4, align 8, !tbaa !93
  %22 = load ptr, ptr %mc, align 8, !tbaa !5
  %call5 = call i32 @N_VConstrMask(ptr noundef %19, ptr noundef %21, ptr noundef %22)
  store i32 %call5, ptr %conOK, align 4, !tbaa !9
  %23 = load i32, ptr %conOK, align 4, !tbaa !9
  %tobool6 = icmp ne i32 %23, 0
  br i1 %tobool6, label %if.end16, label %if.then7

if.then7:                                         ; preds = %if.then
  %24 = load ptr, ptr %mc, align 8, !tbaa !5
  %25 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %25, i32 0, i32 61
  %26 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %27 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp8 = getelementptr inbounds %struct.IDAMemRec, ptr %27, i32 0, i32 72
  %28 = load ptr, ptr %ida_dtemp8, align 8, !tbaa !92
  call void @N_VProd(ptr noundef %24, ptr noundef %26, ptr noundef %28)
  %29 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %29, i32 0, i32 102
  %30 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %31 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp9 = getelementptr inbounds %struct.IDAMemRec, ptr %31, i32 0, i32 72
  %32 = load ptr, ptr %ida_dtemp9, align 8, !tbaa !92
  %call10 = call double @N_VMinQuotient(ptr noundef %30, ptr noundef %32)
  %mul11 = fmul double 0x3FEFAE147AE147AE, %call10
  store double %mul11, ptr %ratio, align 8, !tbaa !11
  %33 = load double, ptr %ratio, align 8, !tbaa !11
  %34 = load ptr, ptr %delnorm.addr, align 8, !tbaa !5
  %35 = load double, ptr %34, align 8, !tbaa !11
  %mul12 = fmul double %35, %33
  store double %mul12, ptr %34, align 8, !tbaa !11
  %36 = load ptr, ptr %delnorm.addr, align 8, !tbaa !5
  %37 = load double, ptr %36, align 8, !tbaa !11
  %38 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_steptol = getelementptr inbounds %struct.IDAMemRec, ptr %38, i32 0, i32 113
  %39 = load double, ptr %ida_steptol, align 8, !tbaa !97
  %cmp = fcmp ole double %37, %39
  br i1 %cmp, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then7
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then7
  %40 = load double, ptr %ratio, align 8, !tbaa !11
  %41 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta14 = getelementptr inbounds %struct.IDAMemRec, ptr %41, i32 0, i32 61
  %42 = load ptr, ptr %ida_delta14, align 8, !tbaa !58
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta15 = getelementptr inbounds %struct.IDAMemRec, ptr %43, i32 0, i32 61
  %44 = load ptr, ptr %ida_delta15, align 8, !tbaa !58
  call void @N_VScale(double noundef %40, ptr noundef %42, ptr noundef %44)
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  %45 = load double, ptr %f1norm, align 8, !tbaa !11
  %mul18 = fmul double -2.000000e+00, %45
  %46 = load double, ptr %ratio, align 8, !tbaa !11
  %mul19 = fmul double %mul18, %46
  store double %mul19, ptr %slpi, align 8, !tbaa !11
  %47 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_steptol20 = getelementptr inbounds %struct.IDAMemRec, ptr %47, i32 0, i32 113
  %48 = load double, ptr %ida_steptol20, align 8, !tbaa !97
  %49 = load ptr, ptr %delnorm.addr, align 8, !tbaa !5
  %50 = load double, ptr %49, align 8, !tbaa !11
  %div = fdiv double %48, %50
  store double %div, ptr %minlam, align 8, !tbaa !11
  store double 1.000000e+00, ptr %lambda, align 8, !tbaa !11
  store i32 0, ptr %nbacks, align 4, !tbaa !9
  %51 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sensi = getelementptr inbounds %struct.IDAMemRec, ptr %51, i32 0, i32 23
  %52 = load i32, ptr %ida_sensi, align 4, !tbaa !21
  %tobool21 = icmp ne i32 %52, 0
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end17
  %53 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ism = getelementptr inbounds %struct.IDAMemRec, ptr %53, i32 0, i32 25
  %54 = load i32, ptr %ida_ism, align 4, !tbaa !22
  %cmp22 = icmp eq i32 %54, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end17
  %55 = phi i1 [ false, %if.end17 ], [ %cmp22, %land.rhs ]
  %land.ext = zext i1 %55 to i32
  store i32 %land.ext, ptr %sensi_sim, align 4, !tbaa !9
  %56 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_icopt = getelementptr inbounds %struct.IDAMemRec, ptr %56, i32 0, i32 104
  %57 = load i32, ptr %ida_icopt, align 8, !tbaa !17
  %cmp23 = icmp eq i32 %57, 2
  br i1 %cmp23, label %if.then24, label %if.end33

if.then24:                                        ; preds = %land.end
  %58 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %58, i32 0, i32 103
  %59 = load ptr, ptr %ida_yp0, align 8, !tbaa !25
  %60 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew25 = getelementptr inbounds %struct.IDAMemRec, ptr %60, i32 0, i32 70
  %61 = load ptr, ptr %ida_ypnew25, align 8, !tbaa !94
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %59, ptr noundef %61)
  %62 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool26 = icmp ne i32 %62, 0
  br i1 %tobool26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.then24
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then27
  %63 = load i32, ptr %is, align 4, !tbaa !9
  %64 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %64, i32 0, i32 24
  %65 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %cmp28 = icmp slt i32 %63, %65
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0 = getelementptr inbounds %struct.IDAMemRec, ptr %66, i32 0, i32 92
  %67 = load ptr, ptr %ida_ypS0, align 8, !tbaa !29
  %68 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %68 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %67, i64 %idxprom
  %69 = load ptr, ptr %arrayidx29, align 8, !tbaa !5
  %70 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0new = getelementptr inbounds %struct.IDAMemRec, ptr %70, i32 0, i32 94
  %71 = load ptr, ptr %ida_ypS0new, align 8, !tbaa !36
  %72 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom30 = sext i32 %72 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %71, i64 %idxprom30
  %73 = load ptr, ptr %arrayidx31, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %69, ptr noundef %73)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, ptr %is, align 4, !tbaa !9
  %inc = add nsw i32 %74, 1
  store i32 %inc, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  br label %if.end32

if.end32:                                         ; preds = %for.end, %if.then24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %land.end
  br label %for.cond34

for.cond34:                                       ; preds = %if.end55, %if.end33
  %75 = load i32, ptr %nbacks, align 4, !tbaa !9
  %76 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_maxbacks = getelementptr inbounds %struct.IDAMemRec, ptr %76, i32 0, i32 111
  %77 = load i32, ptr %ida_maxbacks, align 4, !tbaa !99
  %cmp35 = icmp eq i32 %75, %77
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.cond34
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %for.cond34
  %78 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %79 = load double, ptr %lambda, align 8, !tbaa !11
  %call38 = call i32 @IDANewyyp(ptr noundef %78, double noundef %79)
  %80 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %call39 = call i32 @IDAfnorm(ptr noundef %80, ptr noundef %fnormp)
  store i32 %call39, ptr %retval1, align 4, !tbaa !9
  %81 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp40 = icmp ne i32 %81, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  %82 = load i32, ptr %retval1, align 4, !tbaa !9
  store i32 %82, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %83 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsoff = getelementptr inbounds %struct.IDAMemRec, ptr %83, i32 0, i32 105
  %84 = load i32, ptr %ida_lsoff, align 4, !tbaa !100
  %tobool43 = icmp ne i32 %84, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end42
  br label %for.end59

if.end45:                                         ; preds = %if.end42
  %85 = load double, ptr %fnormp, align 8, !tbaa !11
  %86 = load double, ptr %fnormp, align 8, !tbaa !11
  %mul46 = fmul double %85, %86
  %mul47 = fmul double %mul46, 5.000000e-01
  store double %mul47, ptr %f1normp, align 8, !tbaa !11
  %87 = load double, ptr %f1normp, align 8, !tbaa !11
  %88 = load double, ptr %f1norm, align 8, !tbaa !11
  %89 = load double, ptr %slpi, align 8, !tbaa !11
  %mul48 = fmul double 1.000000e-04, %89
  %90 = load double, ptr %lambda, align 8, !tbaa !11
  %91 = call double @llvm.fmuladd.f64(double %mul48, double %90, double %88)
  %cmp50 = fcmp ole double %87, %91
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end45
  br label %for.end59

if.end52:                                         ; preds = %if.end45
  %92 = load double, ptr %lambda, align 8, !tbaa !11
  %93 = load double, ptr %minlam, align 8, !tbaa !11
  %cmp53 = fcmp olt double %92, %93
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end52
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end52
  %94 = load double, ptr %lambda, align 8, !tbaa !11
  %div56 = fdiv double %94, 2.000000e+00
  store double %div56, ptr %lambda, align 8, !tbaa !11
  %95 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nbacktr = getelementptr inbounds %struct.IDAMemRec, ptr %95, i32 0, i32 109
  %96 = load i32, ptr %ida_nbacktr, align 4, !tbaa !42
  %inc57 = add nsw i32 %96, 1
  store i32 %inc57, ptr %ida_nbacktr, align 4, !tbaa !42
  %97 = load i32, ptr %nbacks, align 4, !tbaa !9
  %inc58 = add nsw i32 %97, 1
  store i32 %inc58, ptr %nbacks, align 4, !tbaa !9
  br label %for.cond34

for.end59:                                        ; preds = %if.then51, %if.then44
  %98 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew60 = getelementptr inbounds %struct.IDAMemRec, ptr %98, i32 0, i32 69
  %99 = load ptr, ptr %ida_ynew60, align 8, !tbaa !93
  %100 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy061 = getelementptr inbounds %struct.IDAMemRec, ptr %100, i32 0, i32 102
  %101 = load ptr, ptr %ida_yy061, align 8, !tbaa !24
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %99, ptr noundef %101)
  %102 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool62 = icmp ne i32 %102, 0
  br i1 %tobool62, label %if.then63, label %if.end75

if.then63:                                        ; preds = %for.end59
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc72, %if.then63
  %103 = load i32, ptr %is, align 4, !tbaa !9
  %104 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns65 = getelementptr inbounds %struct.IDAMemRec, ptr %104, i32 0, i32 24
  %105 = load i32, ptr %ida_Ns65, align 8, !tbaa !27
  %cmp66 = icmp slt i32 %103, %105
  br i1 %cmp66, label %for.body67, label %for.end74

for.body67:                                       ; preds = %for.cond64
  %106 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0new = getelementptr inbounds %struct.IDAMemRec, ptr %106, i32 0, i32 93
  %107 = load ptr, ptr %ida_yyS0new, align 8, !tbaa !34
  %108 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom68 = sext i32 %108 to i64
  %arrayidx69 = getelementptr inbounds ptr, ptr %107, i64 %idxprom68
  %109 = load ptr, ptr %arrayidx69, align 8, !tbaa !5
  %110 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0 = getelementptr inbounds %struct.IDAMemRec, ptr %110, i32 0, i32 91
  %111 = load ptr, ptr %ida_yyS0, align 8, !tbaa !28
  %112 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom70 = sext i32 %112 to i64
  %arrayidx71 = getelementptr inbounds ptr, ptr %111, i64 %idxprom70
  %113 = load ptr, ptr %arrayidx71, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %109, ptr noundef %113)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body67
  %114 = load i32, ptr %is, align 4, !tbaa !9
  %inc73 = add nsw i32 %114, 1
  store i32 %inc73, ptr %is, align 4, !tbaa !9
  br label %for.cond64, !llvm.loop !101

for.end74:                                        ; preds = %for.cond64
  br label %if.end75

if.end75:                                         ; preds = %for.end74, %for.end59
  %115 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_icopt76 = getelementptr inbounds %struct.IDAMemRec, ptr %115, i32 0, i32 104
  %116 = load i32, ptr %ida_icopt76, align 8, !tbaa !17
  %cmp77 = icmp eq i32 %116, 1
  br i1 %cmp77, label %if.then78, label %if.end97

if.then78:                                        ; preds = %if.end75
  %117 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew79 = getelementptr inbounds %struct.IDAMemRec, ptr %117, i32 0, i32 70
  %118 = load ptr, ptr %ida_ypnew79, align 8, !tbaa !94
  %119 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp080 = getelementptr inbounds %struct.IDAMemRec, ptr %119, i32 0, i32 103
  %120 = load ptr, ptr %ida_yp080, align 8, !tbaa !25
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %118, ptr noundef %120)
  %121 = load i32, ptr %sensi_sim, align 4, !tbaa !9
  %tobool81 = icmp ne i32 %121, 0
  br i1 %tobool81, label %if.then82, label %if.end96

if.then82:                                        ; preds = %if.then78
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc93, %if.then82
  %122 = load i32, ptr %is, align 4, !tbaa !9
  %123 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns84 = getelementptr inbounds %struct.IDAMemRec, ptr %123, i32 0, i32 24
  %124 = load i32, ptr %ida_Ns84, align 8, !tbaa !27
  %cmp85 = icmp slt i32 %122, %124
  br i1 %cmp85, label %for.body86, label %for.end95

for.body86:                                       ; preds = %for.cond83
  %125 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0new87 = getelementptr inbounds %struct.IDAMemRec, ptr %125, i32 0, i32 94
  %126 = load ptr, ptr %ida_ypS0new87, align 8, !tbaa !36
  %127 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom88 = sext i32 %127 to i64
  %arrayidx89 = getelementptr inbounds ptr, ptr %126, i64 %idxprom88
  %128 = load ptr, ptr %arrayidx89, align 8, !tbaa !5
  %129 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS090 = getelementptr inbounds %struct.IDAMemRec, ptr %129, i32 0, i32 92
  %130 = load ptr, ptr %ida_ypS090, align 8, !tbaa !29
  %131 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom91 = sext i32 %131 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %130, i64 %idxprom91
  %132 = load ptr, ptr %arrayidx92, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %128, ptr noundef %132)
  br label %for.inc93

for.inc93:                                        ; preds = %for.body86
  %133 = load i32, ptr %is, align 4, !tbaa !9
  %inc94 = add nsw i32 %133, 1
  store i32 %inc94, ptr %is, align 4, !tbaa !9
  br label %for.cond83, !llvm.loop !102

for.end95:                                        ; preds = %for.cond83
  br label %if.end96

if.end96:                                         ; preds = %for.end95, %if.then78
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end75
  %134 = load double, ptr %fnormp, align 8, !tbaa !11
  %135 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  store double %134, ptr %135, align 8, !tbaa !11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then54, %if.then41, %if.then36, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %sensi_sim) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %slpi) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %minlam) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lambda) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ratio) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %f1normp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnormp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %f1norm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbacks) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conOK) #4
  %136 = load i32, ptr %retval, align 4
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal i32 @IDANewy(ptr noundef %IDA_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_icopt = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 104
  %1 = load i32, ptr %ida_icopt, align 8, !tbaa !17
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_id = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 62
  %3 = load ptr, ptr %ida_id, align 8, !tbaa !18
  %4 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %4, i32 0, i32 61
  %5 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %6 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp = getelementptr inbounds %struct.IDAMemRec, ptr %6, i32 0, i32 72
  %7 = load ptr, ptr %ida_dtemp, align 8, !tbaa !92
  call void @N_VProd(ptr noundef %3, ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta1 = getelementptr inbounds %struct.IDAMemRec, ptr %8, i32 0, i32 61
  %9 = load ptr, ptr %ida_delta1, align 8, !tbaa !58
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp2 = getelementptr inbounds %struct.IDAMemRec, ptr %10, i32 0, i32 72
  %11 = load ptr, ptr %ida_dtemp2, align 8, !tbaa !92
  %12 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp3 = getelementptr inbounds %struct.IDAMemRec, ptr %12, i32 0, i32 72
  %13 = load ptr, ptr %ida_dtemp3, align 8, !tbaa !92
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %9, double noundef -1.000000e+00, ptr noundef %11, ptr noundef %13)
  %14 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %14, i32 0, i32 102
  %15 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %16 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp4 = getelementptr inbounds %struct.IDAMemRec, ptr %16, i32 0, i32 72
  %17 = load ptr, ptr %ida_dtemp4, align 8, !tbaa !92
  %18 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew = getelementptr inbounds %struct.IDAMemRec, ptr %18, i32 0, i32 69
  %19 = load ptr, ptr %ida_ynew, align 8, !tbaa !93
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %15, double noundef -1.000000e+00, ptr noundef %17, ptr noundef %19)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %20 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy05 = getelementptr inbounds %struct.IDAMemRec, ptr %20, i32 0, i32 102
  %21 = load ptr, ptr %ida_yy05, align 8, !tbaa !24
  %22 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta6 = getelementptr inbounds %struct.IDAMemRec, ptr %22, i32 0, i32 61
  %23 = load ptr, ptr %ida_delta6, align 8, !tbaa !58
  %24 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew7 = getelementptr inbounds %struct.IDAMemRec, ptr %24, i32 0, i32 69
  %25 = load ptr, ptr %ida_ynew7, align 8, !tbaa !93
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %21, double noundef -1.000000e+00, ptr noundef %23, ptr noundef %25)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) #2

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) #2

declare double @N_VMinQuotient(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @IDANewyyp(ptr noundef %IDA_mem, double noundef %lambda) #0 {
entry:
  %IDA_mem.addr = alloca ptr, align 8
  %lambda.addr = alloca double, align 8
  %retval1 = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  store double %lambda, ptr %lambda.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  store i32 0, ptr %retval1, align 4, !tbaa !9
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_icopt = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 104
  %1 = load i32, ptr %ida_icopt, align 8, !tbaa !17
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_id = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 62
  %3 = load ptr, ptr %ida_id, align 8, !tbaa !18
  %4 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %4, i32 0, i32 61
  %5 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %6 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp = getelementptr inbounds %struct.IDAMemRec, ptr %6, i32 0, i32 72
  %7 = load ptr, ptr %ida_dtemp, align 8, !tbaa !92
  call void @N_VProd(ptr noundef %3, ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %8, i32 0, i32 103
  %9 = load ptr, ptr %ida_yp0, align 8, !tbaa !25
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_cj = getelementptr inbounds %struct.IDAMemRec, ptr %10, i32 0, i32 129
  %11 = load double, ptr %ida_cj, align 8, !tbaa !47
  %fneg = fneg double %11
  %12 = load double, ptr %lambda.addr, align 8, !tbaa !11
  %mul = fmul double %fneg, %12
  %13 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp2 = getelementptr inbounds %struct.IDAMemRec, ptr %13, i32 0, i32 72
  %14 = load ptr, ptr %ida_dtemp2, align 8, !tbaa !92
  %15 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew = getelementptr inbounds %struct.IDAMemRec, ptr %15, i32 0, i32 70
  %16 = load ptr, ptr %ida_ypnew, align 8, !tbaa !94
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %9, double noundef %mul, ptr noundef %14, ptr noundef %16)
  %17 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta3 = getelementptr inbounds %struct.IDAMemRec, ptr %17, i32 0, i32 61
  %18 = load ptr, ptr %ida_delta3, align 8, !tbaa !58
  %19 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp4 = getelementptr inbounds %struct.IDAMemRec, ptr %19, i32 0, i32 72
  %20 = load ptr, ptr %ida_dtemp4, align 8, !tbaa !92
  %21 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp5 = getelementptr inbounds %struct.IDAMemRec, ptr %21, i32 0, i32 72
  %22 = load ptr, ptr %ida_dtemp5, align 8, !tbaa !92
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %18, double noundef -1.000000e+00, ptr noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %23, i32 0, i32 102
  %24 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %25 = load double, ptr %lambda.addr, align 8, !tbaa !11
  %fneg6 = fneg double %25
  %26 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp7 = getelementptr inbounds %struct.IDAMemRec, ptr %26, i32 0, i32 72
  %27 = load ptr, ptr %ida_dtemp7, align 8, !tbaa !92
  %28 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew = getelementptr inbounds %struct.IDAMemRec, ptr %28, i32 0, i32 69
  %29 = load ptr, ptr %ida_ynew, align 8, !tbaa !93
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %24, double noundef %fneg6, ptr noundef %27, ptr noundef %29)
  br label %if.end15

if.else:                                          ; preds = %entry
  %30 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_icopt8 = getelementptr inbounds %struct.IDAMemRec, ptr %30, i32 0, i32 104
  %31 = load i32, ptr %ida_icopt8, align 8, !tbaa !17
  %cmp9 = icmp eq i32 %31, 2
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %32 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy011 = getelementptr inbounds %struct.IDAMemRec, ptr %32, i32 0, i32 102
  %33 = load ptr, ptr %ida_yy011, align 8, !tbaa !24
  %34 = load double, ptr %lambda.addr, align 8, !tbaa !11
  %fneg12 = fneg double %34
  %35 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta13 = getelementptr inbounds %struct.IDAMemRec, ptr %35, i32 0, i32 61
  %36 = load ptr, ptr %ida_delta13, align 8, !tbaa !58
  %37 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew14 = getelementptr inbounds %struct.IDAMemRec, ptr %37, i32 0, i32 69
  %38 = load ptr, ptr %ida_ynew14, align 8, !tbaa !93
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %33, double noundef %fneg12, ptr noundef %36, ptr noundef %38)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  %39 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sensi = getelementptr inbounds %struct.IDAMemRec, ptr %39, i32 0, i32 23
  %40 = load i32, ptr %ida_sensi, align 4, !tbaa !21
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end15
  %41 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ism = getelementptr inbounds %struct.IDAMemRec, ptr %41, i32 0, i32 25
  %42 = load i32, ptr %ida_ism, align 4, !tbaa !22
  %cmp16 = icmp eq i32 %42, 1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %44 = load double, ptr %lambda.addr, align 8, !tbaa !11
  %call = call i32 @IDASensNewyyp(ptr noundef %43, double noundef %44)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end15
  %45 = load i32, ptr %retval1, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @IDAfnorm(ptr noundef %IDA_mem, ptr noundef %fnorm) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %fnorm.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %is = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  store ptr %fnorm, ptr %fnorm.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_res = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ida_res, align 8, !tbaa !57
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_t0 = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 101
  %3 = load double, ptr %ida_t0, align 8, !tbaa !26
  %4 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew = getelementptr inbounds %struct.IDAMemRec, ptr %4, i32 0, i32 69
  %5 = load ptr, ptr %ida_ynew, align 8, !tbaa !93
  %6 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew = getelementptr inbounds %struct.IDAMemRec, ptr %6, i32 0, i32 70
  %7 = load ptr, ptr %ida_ypnew, align 8, !tbaa !94
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnew = getelementptr inbounds %struct.IDAMemRec, ptr %8, i32 0, i32 71
  %9 = load ptr, ptr %ida_delnew, align 8, !tbaa !85
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_user_data = getelementptr inbounds %struct.IDAMemRec, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %ida_user_data, align 8, !tbaa !59
  %call = call i32 %1(double noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %12 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nre = getelementptr inbounds %struct.IDAMemRec, ptr %12, i32 0, i32 146
  %13 = load i64, ptr %ida_nre, align 8, !tbaa !60
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %ida_nre, align 8, !tbaa !60
  %14 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp2 = icmp sgt i32 %15, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnew5 = getelementptr inbounds %struct.IDAMemRec, ptr %16, i32 0, i32 71
  %17 = load ptr, ptr %ida_delnew5, align 8, !tbaa !85
  %18 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres = getelementptr inbounds %struct.IDAMemRec, ptr %18, i32 0, i32 64
  %19 = load ptr, ptr %ida_savres, align 8, !tbaa !67
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %17, ptr noundef %19)
  %20 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsolve = getelementptr inbounds %struct.IDAMemRec, ptr %20, i32 0, i32 203
  %21 = load ptr, ptr %ida_lsolve, align 8, !tbaa !86
  %22 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnew6 = getelementptr inbounds %struct.IDAMemRec, ptr %23, i32 0, i32 71
  %24 = load ptr, ptr %ida_delnew6, align 8, !tbaa !85
  %25 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewt = getelementptr inbounds %struct.IDAMemRec, ptr %25, i32 0, i32 56
  %26 = load ptr, ptr %ida_ewt, align 8, !tbaa !43
  %27 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew7 = getelementptr inbounds %struct.IDAMemRec, ptr %27, i32 0, i32 69
  %28 = load ptr, ptr %ida_ynew7, align 8, !tbaa !93
  %29 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew8 = getelementptr inbounds %struct.IDAMemRec, ptr %29, i32 0, i32 70
  %30 = load ptr, ptr %ida_ypnew8, align 8, !tbaa !94
  %31 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres9 = getelementptr inbounds %struct.IDAMemRec, ptr %31, i32 0, i32 64
  %32 = load ptr, ptr %ida_savres9, align 8, !tbaa !67
  %call10 = call i32 %21(ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr noundef %32)
  store i32 %call10, ptr %retval1, align 4, !tbaa !9
  %33 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp11 = icmp slt i32 %33, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end4
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %34 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp14 = icmp sgt i32 %34, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %35 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnew17 = getelementptr inbounds %struct.IDAMemRec, ptr %36, i32 0, i32 71
  %37 = load ptr, ptr %ida_delnew17, align 8, !tbaa !85
  %38 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewt18 = getelementptr inbounds %struct.IDAMemRec, ptr %38, i32 0, i32 56
  %39 = load ptr, ptr %ida_ewt18, align 8, !tbaa !43
  %call19 = call double @IDAWrmsNorm(ptr noundef %35, ptr noundef %37, ptr noundef %39, i32 noundef 0)
  %40 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  store double %call19, ptr %40, align 8, !tbaa !11
  %41 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sensi = getelementptr inbounds %struct.IDAMemRec, ptr %41, i32 0, i32 23
  %42 = load i32, ptr %ida_sensi, align 4, !tbaa !21
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %if.end16
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ism = getelementptr inbounds %struct.IDAMemRec, ptr %43, i32 0, i32 25
  %44 = load i32, ptr %ida_ism, align 4, !tbaa !22
  %cmp20 = icmp eq i32 %44, 1
  br i1 %cmp20, label %if.then21, label %if.end66

if.then21:                                        ; preds = %land.lhs.true
  %45 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_resS = getelementptr inbounds %struct.IDAMemRec, ptr %45, i32 0, i32 26
  %46 = load ptr, ptr %ida_resS, align 8, !tbaa !68
  %47 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %47, i32 0, i32 24
  %48 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %49 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_t022 = getelementptr inbounds %struct.IDAMemRec, ptr %49, i32 0, i32 101
  %50 = load double, ptr %ida_t022, align 8, !tbaa !26
  %51 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew23 = getelementptr inbounds %struct.IDAMemRec, ptr %51, i32 0, i32 69
  %52 = load ptr, ptr %ida_ynew23, align 8, !tbaa !93
  %53 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew24 = getelementptr inbounds %struct.IDAMemRec, ptr %53, i32 0, i32 70
  %54 = load ptr, ptr %ida_ypnew24, align 8, !tbaa !94
  %55 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres25 = getelementptr inbounds %struct.IDAMemRec, ptr %55, i32 0, i32 64
  %56 = load ptr, ptr %ida_savres25, align 8, !tbaa !67
  %57 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0new = getelementptr inbounds %struct.IDAMemRec, ptr %57, i32 0, i32 93
  %58 = load ptr, ptr %ida_yyS0new, align 8, !tbaa !34
  %59 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0new = getelementptr inbounds %struct.IDAMemRec, ptr %59, i32 0, i32 94
  %60 = load ptr, ptr %ida_ypS0new, align 8, !tbaa !36
  %61 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS = getelementptr inbounds %struct.IDAMemRec, ptr %61, i32 0, i32 90
  %62 = load ptr, ptr %ida_delnewS, align 8, !tbaa !33
  %63 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_user_dataS = getelementptr inbounds %struct.IDAMemRec, ptr %63, i32 0, i32 27
  %64 = load ptr, ptr %ida_user_dataS, align 8, !tbaa !70
  %65 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS1 = getelementptr inbounds %struct.IDAMemRec, ptr %65, i32 0, i32 86
  %66 = load ptr, ptr %ida_tmpS1, align 8, !tbaa !71
  %67 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS2 = getelementptr inbounds %struct.IDAMemRec, ptr %67, i32 0, i32 87
  %68 = load ptr, ptr %ida_tmpS2, align 8, !tbaa !72
  %69 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS3 = getelementptr inbounds %struct.IDAMemRec, ptr %69, i32 0, i32 88
  %70 = load ptr, ptr %ida_tmpS3, align 8, !tbaa !73
  %call26 = call i32 %46(i32 noundef %48, double noundef %50, ptr noundef %52, ptr noundef %54, ptr noundef %56, ptr noundef %58, ptr noundef %60, ptr noundef %62, ptr noundef %64, ptr noundef %66, ptr noundef %68, ptr noundef %70)
  store i32 %call26, ptr %retval1, align 4, !tbaa !9
  %71 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nrSe = getelementptr inbounds %struct.IDAMemRec, ptr %71, i32 0, i32 148
  %72 = load i64, ptr %ida_nrSe, align 8, !tbaa !74
  %inc27 = add nsw i64 %72, 1
  store i64 %inc27, ptr %ida_nrSe, align 8, !tbaa !74
  %73 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp28 = icmp slt i32 %73, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then21
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.then21
  %74 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp31 = icmp sgt i32 %74, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %75 = load i32, ptr %is, align 4, !tbaa !9
  %76 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns34 = getelementptr inbounds %struct.IDAMemRec, ptr %76, i32 0, i32 24
  %77 = load i32, ptr %ida_Ns34, align 8, !tbaa !27
  %cmp35 = icmp slt i32 %75, %77
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS36 = getelementptr inbounds %struct.IDAMemRec, ptr %78, i32 0, i32 90
  %79 = load ptr, ptr %ida_delnewS36, align 8, !tbaa !33
  %80 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %80 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %79, i64 %idxprom
  %81 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %82 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savresS = getelementptr inbounds %struct.IDAMemRec, ptr %82, i32 0, i32 89
  %83 = load ptr, ptr %ida_savresS, align 8, !tbaa !32
  %84 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom37 = sext i32 %84 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %83, i64 %idxprom37
  %85 = load ptr, ptr %arrayidx38, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %81, ptr noundef %85)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, ptr %is, align 4, !tbaa !9
  %inc39 = add nsw i32 %86, 1
  store i32 %inc39, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !103

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc60, %for.end
  %87 = load i32, ptr %is, align 4, !tbaa !9
  %88 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns41 = getelementptr inbounds %struct.IDAMemRec, ptr %88, i32 0, i32 24
  %89 = load i32, ptr %ida_Ns41, align 8, !tbaa !27
  %cmp42 = icmp slt i32 %87, %89
  br i1 %cmp42, label %for.body43, label %for.end62

for.body43:                                       ; preds = %for.cond40
  %90 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsolve44 = getelementptr inbounds %struct.IDAMemRec, ptr %90, i32 0, i32 203
  %91 = load ptr, ptr %ida_lsolve44, align 8, !tbaa !86
  %92 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %93 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS45 = getelementptr inbounds %struct.IDAMemRec, ptr %93, i32 0, i32 90
  %94 = load ptr, ptr %ida_delnewS45, align 8, !tbaa !33
  %95 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom46 = sext i32 %95 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %94, i64 %idxprom46
  %96 = load ptr, ptr %arrayidx47, align 8, !tbaa !5
  %97 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS = getelementptr inbounds %struct.IDAMemRec, ptr %97, i32 0, i32 79
  %98 = load ptr, ptr %ida_ewtS, align 8, !tbaa !45
  %99 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom48 = sext i32 %99 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %98, i64 %idxprom48
  %100 = load ptr, ptr %arrayidx49, align 8, !tbaa !5
  %101 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ynew50 = getelementptr inbounds %struct.IDAMemRec, ptr %101, i32 0, i32 69
  %102 = load ptr, ptr %ida_ynew50, align 8, !tbaa !93
  %103 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypnew51 = getelementptr inbounds %struct.IDAMemRec, ptr %103, i32 0, i32 70
  %104 = load ptr, ptr %ida_ypnew51, align 8, !tbaa !94
  %105 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savres52 = getelementptr inbounds %struct.IDAMemRec, ptr %105, i32 0, i32 64
  %106 = load ptr, ptr %ida_savres52, align 8, !tbaa !67
  %call53 = call i32 %91(ptr noundef %92, ptr noundef %96, ptr noundef %100, ptr noundef %102, ptr noundef %104, ptr noundef %106)
  store i32 %call53, ptr %retval1, align 4, !tbaa !9
  %107 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp54 = icmp slt i32 %107, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.body43
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %for.body43
  %108 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp57 = icmp sgt i32 %108, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end56
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end56
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59
  %109 = load i32, ptr %is, align 4, !tbaa !9
  %inc61 = add nsw i32 %109, 1
  store i32 %inc61, ptr %is, align 4, !tbaa !9
  br label %for.cond40, !llvm.loop !104

for.end62:                                        ; preds = %for.cond40
  %110 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  %112 = load double, ptr %111, align 8, !tbaa !11
  %113 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS63 = getelementptr inbounds %struct.IDAMemRec, ptr %113, i32 0, i32 90
  %114 = load ptr, ptr %ida_delnewS63, align 8, !tbaa !33
  %115 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS64 = getelementptr inbounds %struct.IDAMemRec, ptr %115, i32 0, i32 79
  %116 = load ptr, ptr %ida_ewtS64, align 8, !tbaa !45
  %call65 = call double @IDASensWrmsNormUpdate(ptr noundef %110, double noundef %112, ptr noundef %114, ptr noundef %116, i32 noundef 0)
  %117 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  store double %call65, ptr %117, align 8, !tbaa !11
  br label %if.end66

if.end66:                                         ; preds = %for.end62, %land.lhs.true, %if.end16
  %118 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sysindex = getelementptr inbounds %struct.IDAMemRec, ptr %118, i32 0, i32 110
  %119 = load i32, ptr %ida_sysindex, align 8, !tbaa !37
  %cmp67 = icmp eq i32 %119, 0
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end66
  %120 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tscale = getelementptr inbounds %struct.IDAMemRec, ptr %120, i32 0, i32 114
  %121 = load double, ptr %ida_tscale, align 8, !tbaa !38
  %122 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_cj = getelementptr inbounds %struct.IDAMemRec, ptr %122, i32 0, i32 129
  %123 = load double, ptr %ida_cj, align 8, !tbaa !47
  %124 = call double @llvm.fabs.f64(double %123)
  %mul = fmul double %121, %124
  %125 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  %126 = load double, ptr %125, align 8, !tbaa !11
  %mul69 = fmul double %126, %mul
  store double %mul69, ptr %125, align 8, !tbaa !11
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end66
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then58, %if.then55, %if.then32, %if.then29, %if.then15, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @IDASensNewyyp(ptr noundef %IDA_mem, double noundef %lambda) #0 {
entry:
  %IDA_mem.addr = alloca ptr, align 8
  %lambda.addr = alloca double, align 8
  %is = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  store double %lambda, ptr %lambda.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_icopt = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 104
  %1 = load i32, ptr %ida_icopt, align 8, !tbaa !17
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %is, align 4, !tbaa !9
  %3 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %3, i32 0, i32 24
  %4 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_id = getelementptr inbounds %struct.IDAMemRec, ptr %5, i32 0, i32 62
  %6 = load ptr, ptr %ida_id, align 8, !tbaa !18
  %7 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS = getelementptr inbounds %struct.IDAMemRec, ptr %7, i32 0, i32 85
  %8 = load ptr, ptr %ida_deltaS, align 8, !tbaa !69
  %9 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %11 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp = getelementptr inbounds %struct.IDAMemRec, ptr %11, i32 0, i32 72
  %12 = load ptr, ptr %ida_dtemp, align 8, !tbaa !92
  call void @N_VProd(ptr noundef %6, ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0 = getelementptr inbounds %struct.IDAMemRec, ptr %13, i32 0, i32 92
  %14 = load ptr, ptr %ida_ypS0, align 8, !tbaa !29
  %15 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom2 = sext i32 %15 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %14, i64 %idxprom2
  %16 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  %17 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_cj = getelementptr inbounds %struct.IDAMemRec, ptr %17, i32 0, i32 129
  %18 = load double, ptr %ida_cj, align 8, !tbaa !47
  %fneg = fneg double %18
  %19 = load double, ptr %lambda.addr, align 8, !tbaa !11
  %mul = fmul double %fneg, %19
  %20 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp4 = getelementptr inbounds %struct.IDAMemRec, ptr %20, i32 0, i32 72
  %21 = load ptr, ptr %ida_dtemp4, align 8, !tbaa !92
  %22 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0new = getelementptr inbounds %struct.IDAMemRec, ptr %22, i32 0, i32 94
  %23 = load ptr, ptr %ida_ypS0new, align 8, !tbaa !36
  %24 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom5 = sext i32 %24 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %23, i64 %idxprom5
  %25 = load ptr, ptr %arrayidx6, align 8, !tbaa !5
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %16, double noundef %mul, ptr noundef %21, ptr noundef %25)
  %26 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS7 = getelementptr inbounds %struct.IDAMemRec, ptr %26, i32 0, i32 85
  %27 = load ptr, ptr %ida_deltaS7, align 8, !tbaa !69
  %28 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom8 = sext i32 %28 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %27, i64 %idxprom8
  %29 = load ptr, ptr %arrayidx9, align 8, !tbaa !5
  %30 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp10 = getelementptr inbounds %struct.IDAMemRec, ptr %30, i32 0, i32 72
  %31 = load ptr, ptr %ida_dtemp10, align 8, !tbaa !92
  %32 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp11 = getelementptr inbounds %struct.IDAMemRec, ptr %32, i32 0, i32 72
  %33 = load ptr, ptr %ida_dtemp11, align 8, !tbaa !92
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %29, double noundef -1.000000e+00, ptr noundef %31, ptr noundef %33)
  %34 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0 = getelementptr inbounds %struct.IDAMemRec, ptr %34, i32 0, i32 91
  %35 = load ptr, ptr %ida_yyS0, align 8, !tbaa !28
  %36 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom12 = sext i32 %36 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %35, i64 %idxprom12
  %37 = load ptr, ptr %arrayidx13, align 8, !tbaa !5
  %38 = load double, ptr %lambda.addr, align 8, !tbaa !11
  %fneg14 = fneg double %38
  %39 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp15 = getelementptr inbounds %struct.IDAMemRec, ptr %39, i32 0, i32 72
  %40 = load ptr, ptr %ida_dtemp15, align 8, !tbaa !92
  %41 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0new = getelementptr inbounds %struct.IDAMemRec, ptr %41, i32 0, i32 93
  %42 = load ptr, ptr %ida_yyS0new, align 8, !tbaa !34
  %43 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom16 = sext i32 %43 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %42, i64 %idxprom16
  %44 = load ptr, ptr %arrayidx17, align 8, !tbaa !5
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %37, double noundef %fneg14, ptr noundef %40, ptr noundef %44)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, ptr %is, align 4, !tbaa !9
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %if.else
  %46 = load i32, ptr %is, align 4, !tbaa !9
  %47 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns19 = getelementptr inbounds %struct.IDAMemRec, ptr %47, i32 0, i32 24
  %48 = load i32, ptr %ida_Ns19, align 8, !tbaa !27
  %cmp20 = icmp slt i32 %46, %48
  br i1 %cmp20, label %for.body21, label %for.end34

for.body21:                                       ; preds = %for.cond18
  %49 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS022 = getelementptr inbounds %struct.IDAMemRec, ptr %49, i32 0, i32 91
  %50 = load ptr, ptr %ida_yyS022, align 8, !tbaa !28
  %51 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom23 = sext i32 %51 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %50, i64 %idxprom23
  %52 = load ptr, ptr %arrayidx24, align 8, !tbaa !5
  %53 = load double, ptr %lambda.addr, align 8, !tbaa !11
  %fneg25 = fneg double %53
  %54 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS26 = getelementptr inbounds %struct.IDAMemRec, ptr %54, i32 0, i32 85
  %55 = load ptr, ptr %ida_deltaS26, align 8, !tbaa !69
  %56 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom27 = sext i32 %56 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %55, i64 %idxprom27
  %57 = load ptr, ptr %arrayidx28, align 8, !tbaa !5
  %58 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0new29 = getelementptr inbounds %struct.IDAMemRec, ptr %58, i32 0, i32 93
  %59 = load ptr, ptr %ida_yyS0new29, align 8, !tbaa !34
  %60 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom30 = sext i32 %60 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %59, i64 %idxprom30
  %61 = load ptr, ptr %arrayidx31, align 8, !tbaa !5
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %52, double noundef %fneg25, ptr noundef %57, ptr noundef %61)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body21
  %62 = load i32, ptr %is, align 4, !tbaa !9
  %inc33 = add nsw i32 %62, 1
  store i32 %inc33, ptr %is, align 4, !tbaa !9
  br label %for.cond18, !llvm.loop !106

for.end34:                                        ; preds = %for.cond18
  br label %if.end

if.end:                                           ; preds = %for.end34, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @IDASensNewtonIC(ptr noundef %IDA_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %is = alloca i32, align 4
  %mnewt = alloca i32, align 4
  %delnorm = alloca double, align 8
  %fnorm = alloca double, align 8
  %fnorm0 = alloca double, align 8
  %oldfnrm = alloca double, align 8
  %rate = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mnewt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %delnorm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldfnrm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rate) #4
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %is, align 4, !tbaa !9
  %1 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %1, i32 0, i32 24
  %2 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsolve = getelementptr inbounds %struct.IDAMemRec, ptr %3, i32 0, i32 203
  %4 = load ptr, ptr %ida_lsolve, align 8, !tbaa !86
  %5 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS = getelementptr inbounds %struct.IDAMemRec, ptr %6, i32 0, i32 85
  %7 = load ptr, ptr %ida_deltaS, align 8, !tbaa !69
  %8 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS = getelementptr inbounds %struct.IDAMemRec, ptr %10, i32 0, i32 79
  %11 = load ptr, ptr %ida_ewtS, align 8, !tbaa !45
  %12 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %11, i64 %idxprom2
  %13 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  %14 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %14, i32 0, i32 102
  %15 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %16 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %16, i32 0, i32 103
  %17 = load ptr, ptr %ida_yp0, align 8, !tbaa !25
  %18 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %18, i32 0, i32 61
  %19 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %call = call i32 %4(ptr noundef %5, ptr noundef %9, ptr noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %19)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %20 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp4 = icmp slt i32 %20, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %21 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp5 = icmp sgt i32 %21, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %22 = load i32, ptr %is, align 4, !tbaa !9
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS8 = getelementptr inbounds %struct.IDAMemRec, ptr %24, i32 0, i32 85
  %25 = load ptr, ptr %ida_deltaS8, align 8, !tbaa !69
  %26 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS9 = getelementptr inbounds %struct.IDAMemRec, ptr %26, i32 0, i32 79
  %27 = load ptr, ptr %ida_ewtS9, align 8, !tbaa !45
  %call10 = call double @IDASensWrmsNorm(ptr noundef %23, ptr noundef %25, ptr noundef %27, i32 noundef 0)
  store double %call10, ptr %fnorm, align 8, !tbaa !11
  %28 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sysindex = getelementptr inbounds %struct.IDAMemRec, ptr %28, i32 0, i32 110
  %29 = load i32, ptr %ida_sysindex, align 8, !tbaa !37
  %cmp11 = icmp eq i32 %29, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.end
  %30 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tscale = getelementptr inbounds %struct.IDAMemRec, ptr %30, i32 0, i32 114
  %31 = load double, ptr %ida_tscale, align 8, !tbaa !38
  %32 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_cj = getelementptr inbounds %struct.IDAMemRec, ptr %32, i32 0, i32 129
  %33 = load double, ptr %ida_cj, align 8, !tbaa !47
  %34 = call double @llvm.fabs.f64(double %33)
  %mul = fmul double %31, %34
  %35 = load double, ptr %fnorm, align 8, !tbaa !11
  %mul13 = fmul double %35, %mul
  store double %mul13, ptr %fnorm, align 8, !tbaa !11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.end
  %36 = load double, ptr %fnorm, align 8, !tbaa !11
  %37 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_epsNewt = getelementptr inbounds %struct.IDAMemRec, ptr %37, i32 0, i32 135
  %38 = load double, ptr %ida_epsNewt, align 8, !tbaa !40
  %cmp15 = fcmp ole double %36, %38
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %39 = load double, ptr %fnorm, align 8, !tbaa !11
  store double %39, ptr %fnorm0, align 8, !tbaa !11
  store double 0.000000e+00, ptr %rate, align 8, !tbaa !11
  store i32 0, ptr %mnewt, align 4, !tbaa !9
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc42, %if.end17
  %40 = load i32, ptr %mnewt, align 4, !tbaa !9
  %41 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_maxnit = getelementptr inbounds %struct.IDAMemRec, ptr %41, i32 0, i32 108
  %42 = load i32, ptr %ida_maxnit, align 8, !tbaa !88
  %cmp19 = icmp slt i32 %40, %42
  br i1 %cmp19, label %for.body20, label %for.end44

for.body20:                                       ; preds = %for.cond18
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nniS = getelementptr inbounds %struct.IDAMemRec, ptr %43, i32 0, i32 160
  %44 = load i64, ptr %ida_nniS, align 8, !tbaa !108
  %inc21 = add nsw i64 %44, 1
  store i64 %inc21, ptr %ida_nniS, align 8, !tbaa !108
  %45 = load double, ptr %fnorm, align 8, !tbaa !11
  store double %45, ptr %delnorm, align 8, !tbaa !11
  %46 = load double, ptr %fnorm, align 8, !tbaa !11
  store double %46, ptr %oldfnrm, align 8, !tbaa !11
  %47 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %call22 = call i32 @IDASensLineSrch(ptr noundef %47, ptr noundef %delnorm, ptr noundef %fnorm)
  store i32 %call22, ptr %retval1, align 4, !tbaa !9
  %48 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp23 = icmp ne i32 %48, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body20
  %49 = load i32, ptr %retval1, align 4, !tbaa !9
  store i32 %49, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.body20
  %50 = load double, ptr %fnorm, align 8, !tbaa !11
  %51 = load double, ptr %oldfnrm, align 8, !tbaa !11
  %div = fdiv double %50, %51
  store double %div, ptr %rate, align 8, !tbaa !11
  %52 = load double, ptr %fnorm, align 8, !tbaa !11
  %53 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_epsNewt26 = getelementptr inbounds %struct.IDAMemRec, ptr %53, i32 0, i32 135
  %54 = load double, ptr %ida_epsNewt26, align 8, !tbaa !40
  %cmp27 = fcmp ole double %52, %54
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %if.end29
  %55 = load i32, ptr %is, align 4, !tbaa !9
  %56 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns31 = getelementptr inbounds %struct.IDAMemRec, ptr %56, i32 0, i32 24
  %57 = load i32, ptr %ida_Ns31, align 8, !tbaa !27
  %cmp32 = icmp slt i32 %55, %57
  br i1 %cmp32, label %for.body33, label %for.end41

for.body33:                                       ; preds = %for.cond30
  %58 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS = getelementptr inbounds %struct.IDAMemRec, ptr %58, i32 0, i32 90
  %59 = load ptr, ptr %ida_delnewS, align 8, !tbaa !33
  %60 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom34 = sext i32 %60 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %59, i64 %idxprom34
  %61 = load ptr, ptr %arrayidx35, align 8, !tbaa !5
  %62 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_deltaS36 = getelementptr inbounds %struct.IDAMemRec, ptr %62, i32 0, i32 85
  %63 = load ptr, ptr %ida_deltaS36, align 8, !tbaa !69
  %64 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom37 = sext i32 %64 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %63, i64 %idxprom37
  %65 = load ptr, ptr %arrayidx38, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %61, ptr noundef %65)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body33
  %66 = load i32, ptr %is, align 4, !tbaa !9
  %inc40 = add nsw i32 %66, 1
  store i32 %inc40, ptr %is, align 4, !tbaa !9
  br label %for.cond30, !llvm.loop !109

for.end41:                                        ; preds = %for.cond30
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %67 = load i32, ptr %mnewt, align 4, !tbaa !9
  %inc43 = add nsw i32 %67, 1
  store i32 %inc43, ptr %mnewt, align 4, !tbaa !9
  br label %for.cond18, !llvm.loop !110

for.end44:                                        ; preds = %for.cond18
  %68 = load double, ptr %rate, align 8, !tbaa !11
  %cmp45 = fcmp ole double %68, 9.000000e-01
  br i1 %cmp45, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end44
  %69 = load double, ptr %fnorm, align 8, !tbaa !11
  %70 = load double, ptr %fnorm0, align 8, !tbaa !11
  %mul46 = fmul double 1.000000e-01, %70
  %cmp47 = fcmp olt double %69, %mul46
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false, %for.end44
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then48, %if.then28, %if.then24, %if.then16, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rate) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldfnrm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %delnorm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mnewt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
}

declare double @IDASensWrmsNorm(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @IDASensLineSrch(ptr noundef %IDA_mem, ptr noundef %delnorm, ptr noundef %fnorm) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %delnorm.addr = alloca ptr, align 8
  %fnorm.addr = alloca ptr, align 8
  %is = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %nbacks = alloca i32, align 4
  %f1norm = alloca double, align 8
  %fnormp = alloca double, align 8
  %f1normp = alloca double, align 8
  %slpi = alloca double, align 8
  %minlam = alloca double, align 8
  %lambda = alloca double, align 8
  %ratio = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  store ptr %delnorm, ptr %delnorm.addr, align 8, !tbaa !5
  store ptr %fnorm, ptr %fnorm.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbacks) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f1norm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnormp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f1normp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slpi) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minlam) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lambda) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ratio) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_phi = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 50
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %ida_phi, i64 0, i64 3
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_dtemp = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 72
  store ptr %1, ptr %ida_dtemp, align 8, !tbaa !92
  %3 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  %4 = load double, ptr %3, align 8, !tbaa !11
  %5 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  %6 = load double, ptr %5, align 8, !tbaa !11
  %mul = fmul double %4, %6
  %mul2 = fmul double %mul, 5.000000e-01
  store double %mul2, ptr %f1norm, align 8, !tbaa !11
  store double 1.000000e+00, ptr %ratio, align 8, !tbaa !11
  %7 = load double, ptr %f1norm, align 8, !tbaa !11
  %mul3 = fmul double -2.000000e+00, %7
  %8 = load double, ptr %ratio, align 8, !tbaa !11
  %mul4 = fmul double %mul3, %8
  store double %mul4, ptr %slpi, align 8, !tbaa !11
  %9 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_steptol = getelementptr inbounds %struct.IDAMemRec, ptr %9, i32 0, i32 113
  %10 = load double, ptr %ida_steptol, align 8, !tbaa !97
  %11 = load ptr, ptr %delnorm.addr, align 8, !tbaa !5
  %12 = load double, ptr %11, align 8, !tbaa !11
  %div = fdiv double %10, %12
  store double %div, ptr %minlam, align 8, !tbaa !11
  store double 1.000000e+00, ptr %lambda, align 8, !tbaa !11
  store i32 0, ptr %nbacks, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %entry
  %13 = load i32, ptr %nbacks, align 4, !tbaa !9
  %14 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_maxbacks = getelementptr inbounds %struct.IDAMemRec, ptr %14, i32 0, i32 111
  %15 = load i32, ptr %ida_maxbacks, align 4, !tbaa !99
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %16 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %17 = load double, ptr %lambda, align 8, !tbaa !11
  %call = call i32 @IDASensNewyyp(ptr noundef %16, double noundef %17)
  %18 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %call5 = call i32 @IDASensfnorm(ptr noundef %18, ptr noundef %fnormp)
  store i32 %call5, ptr %retval1, align 4, !tbaa !9
  %19 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp6 = icmp ne i32 %19, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %20 = load i32, ptr %retval1, align 4, !tbaa !9
  store i32 %20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %21 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsoff = getelementptr inbounds %struct.IDAMemRec, ptr %21, i32 0, i32 105
  %22 = load i32, ptr %ida_lsoff, align 4, !tbaa !100
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end8
  br label %for.end

if.end10:                                         ; preds = %if.end8
  %23 = load double, ptr %fnormp, align 8, !tbaa !11
  %24 = load double, ptr %fnormp, align 8, !tbaa !11
  %mul11 = fmul double %23, %24
  %mul12 = fmul double %mul11, 5.000000e-01
  store double %mul12, ptr %f1normp, align 8, !tbaa !11
  %25 = load double, ptr %f1normp, align 8, !tbaa !11
  %26 = load double, ptr %f1norm, align 8, !tbaa !11
  %27 = load double, ptr %slpi, align 8, !tbaa !11
  %mul13 = fmul double 1.000000e-04, %27
  %28 = load double, ptr %lambda, align 8, !tbaa !11
  %29 = call double @llvm.fmuladd.f64(double %mul13, double %28, double %26)
  %cmp15 = fcmp ole double %25, %29
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  br label %for.end

if.end17:                                         ; preds = %if.end10
  %30 = load double, ptr %lambda, align 8, !tbaa !11
  %31 = load double, ptr %minlam, align 8, !tbaa !11
  %cmp18 = fcmp olt double %30, %31
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %32 = load double, ptr %lambda, align 8, !tbaa !11
  %div21 = fdiv double %32, 2.000000e+00
  store double %div21, ptr %lambda, align 8, !tbaa !11
  %33 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nbacktr = getelementptr inbounds %struct.IDAMemRec, ptr %33, i32 0, i32 109
  %34 = load i32, ptr %ida_nbacktr, align 4, !tbaa !42
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %ida_nbacktr, align 4, !tbaa !42
  %35 = load i32, ptr %nbacks, align 4, !tbaa !9
  %inc22 = add nsw i32 %35, 1
  store i32 %inc22, ptr %nbacks, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %if.then16, %if.then9
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.end
  %36 = load i32, ptr %is, align 4, !tbaa !9
  %37 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %37, i32 0, i32 24
  %38 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %cmp24 = icmp slt i32 %36, %38
  br i1 %cmp24, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond23
  %39 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0new = getelementptr inbounds %struct.IDAMemRec, ptr %39, i32 0, i32 93
  %40 = load ptr, ptr %ida_yyS0new, align 8, !tbaa !34
  %41 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %41 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %40, i64 %idxprom
  %42 = load ptr, ptr %arrayidx25, align 8, !tbaa !5
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0 = getelementptr inbounds %struct.IDAMemRec, ptr %43, i32 0, i32 91
  %44 = load ptr, ptr %ida_yyS0, align 8, !tbaa !28
  %45 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom26 = sext i32 %45 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %44, i64 %idxprom26
  %46 = load ptr, ptr %arrayidx27, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %42, ptr noundef %46)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %is, align 4, !tbaa !9
  %inc28 = add nsw i32 %47, 1
  store i32 %inc28, ptr %is, align 4, !tbaa !9
  br label %for.cond23, !llvm.loop !111

for.end29:                                        ; preds = %for.cond23
  %48 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_icopt = getelementptr inbounds %struct.IDAMemRec, ptr %48, i32 0, i32 104
  %49 = load i32, ptr %ida_icopt, align 8, !tbaa !17
  %cmp30 = icmp eq i32 %49, 1
  br i1 %cmp30, label %if.then31, label %if.end43

if.then31:                                        ; preds = %for.end29
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc40, %if.then31
  %50 = load i32, ptr %is, align 4, !tbaa !9
  %51 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns33 = getelementptr inbounds %struct.IDAMemRec, ptr %51, i32 0, i32 24
  %52 = load i32, ptr %ida_Ns33, align 8, !tbaa !27
  %cmp34 = icmp slt i32 %50, %52
  br i1 %cmp34, label %for.body35, label %for.end42

for.body35:                                       ; preds = %for.cond32
  %53 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0new = getelementptr inbounds %struct.IDAMemRec, ptr %53, i32 0, i32 94
  %54 = load ptr, ptr %ida_ypS0new, align 8, !tbaa !36
  %55 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom36 = sext i32 %55 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %54, i64 %idxprom36
  %56 = load ptr, ptr %arrayidx37, align 8, !tbaa !5
  %57 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0 = getelementptr inbounds %struct.IDAMemRec, ptr %57, i32 0, i32 92
  %58 = load ptr, ptr %ida_ypS0, align 8, !tbaa !29
  %59 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom38 = sext i32 %59 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %58, i64 %idxprom38
  %60 = load ptr, ptr %arrayidx39, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %56, ptr noundef %60)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35
  %61 = load i32, ptr %is, align 4, !tbaa !9
  %inc41 = add nsw i32 %61, 1
  store i32 %inc41, ptr %is, align 4, !tbaa !9
  br label %for.cond32, !llvm.loop !112

for.end42:                                        ; preds = %for.cond32
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %for.end29
  %62 = load double, ptr %fnormp, align 8, !tbaa !11
  %63 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  store double %62, ptr %63, align 8, !tbaa !11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then19, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ratio) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lambda) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %minlam) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %slpi) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %f1normp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnormp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %f1norm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbacks) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @IDASensfnorm(ptr noundef %IDA_mem, ptr noundef %fnorm) #0 {
entry:
  %retval = alloca i32, align 4
  %IDA_mem.addr = alloca ptr, align 8
  %fnorm.addr = alloca ptr, align 8
  %is = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %IDA_mem, ptr %IDA_mem.addr, align 8, !tbaa !5
  store ptr %fnorm, ptr %fnorm.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #4
  %0 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_resS = getelementptr inbounds %struct.IDAMemRec, ptr %0, i32 0, i32 26
  %1 = load ptr, ptr %ida_resS, align 8, !tbaa !68
  %2 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns = getelementptr inbounds %struct.IDAMemRec, ptr %2, i32 0, i32 24
  %3 = load i32, ptr %ida_Ns, align 8, !tbaa !27
  %4 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_t0 = getelementptr inbounds %struct.IDAMemRec, ptr %4, i32 0, i32 101
  %5 = load double, ptr %ida_t0, align 8, !tbaa !26
  %6 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy0 = getelementptr inbounds %struct.IDAMemRec, ptr %6, i32 0, i32 102
  %7 = load ptr, ptr %ida_yy0, align 8, !tbaa !24
  %8 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp0 = getelementptr inbounds %struct.IDAMemRec, ptr %8, i32 0, i32 103
  %9 = load ptr, ptr %ida_yp0, align 8, !tbaa !25
  %10 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta = getelementptr inbounds %struct.IDAMemRec, ptr %10, i32 0, i32 61
  %11 = load ptr, ptr %ida_delta, align 8, !tbaa !58
  %12 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yyS0new = getelementptr inbounds %struct.IDAMemRec, ptr %12, i32 0, i32 93
  %13 = load ptr, ptr %ida_yyS0new, align 8, !tbaa !34
  %14 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ypS0new = getelementptr inbounds %struct.IDAMemRec, ptr %14, i32 0, i32 94
  %15 = load ptr, ptr %ida_ypS0new, align 8, !tbaa !36
  %16 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS = getelementptr inbounds %struct.IDAMemRec, ptr %16, i32 0, i32 90
  %17 = load ptr, ptr %ida_delnewS, align 8, !tbaa !33
  %18 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_user_dataS = getelementptr inbounds %struct.IDAMemRec, ptr %18, i32 0, i32 27
  %19 = load ptr, ptr %ida_user_dataS, align 8, !tbaa !70
  %20 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS1 = getelementptr inbounds %struct.IDAMemRec, ptr %20, i32 0, i32 86
  %21 = load ptr, ptr %ida_tmpS1, align 8, !tbaa !71
  %22 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS2 = getelementptr inbounds %struct.IDAMemRec, ptr %22, i32 0, i32 87
  %23 = load ptr, ptr %ida_tmpS2, align 8, !tbaa !72
  %24 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tmpS3 = getelementptr inbounds %struct.IDAMemRec, ptr %24, i32 0, i32 88
  %25 = load ptr, ptr %ida_tmpS3, align 8, !tbaa !73
  %call = call i32 %1(i32 noundef %3, double noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef %25)
  store i32 %call, ptr %retval1, align 4, !tbaa !9
  %26 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_nrSe = getelementptr inbounds %struct.IDAMemRec, ptr %26, i32 0, i32 148
  %27 = load i64, ptr %ida_nrSe, align 8, !tbaa !74
  %inc = add nsw i64 %27, 1
  store i64 %inc, ptr %ida_nrSe, align 8, !tbaa !74
  %28 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp = icmp slt i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %29 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp2 = icmp sgt i32 %29, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %30 = load i32, ptr %is, align 4, !tbaa !9
  %31 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns5 = getelementptr inbounds %struct.IDAMemRec, ptr %31, i32 0, i32 24
  %32 = load i32, ptr %ida_Ns5, align 8, !tbaa !27
  %cmp6 = icmp slt i32 %30, %32
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS7 = getelementptr inbounds %struct.IDAMemRec, ptr %33, i32 0, i32 90
  %34 = load ptr, ptr %ida_delnewS7, align 8, !tbaa !33
  %35 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %34, i64 %idxprom
  %36 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %37 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_savresS = getelementptr inbounds %struct.IDAMemRec, ptr %37, i32 0, i32 89
  %38 = load ptr, ptr %ida_savresS, align 8, !tbaa !32
  %39 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom8 = sext i32 %39 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %38, i64 %idxprom8
  %40 = load ptr, ptr %arrayidx9, align 8, !tbaa !5
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %36, ptr noundef %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, ptr %is, align 4, !tbaa !9
  %inc10 = add nsw i32 %41, 1
  store i32 %inc10, ptr %is, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %is, align 4, !tbaa !9
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end
  %42 = load i32, ptr %is, align 4, !tbaa !9
  %43 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_Ns12 = getelementptr inbounds %struct.IDAMemRec, ptr %43, i32 0, i32 24
  %44 = load i32, ptr %ida_Ns12, align 8, !tbaa !27
  %cmp13 = icmp slt i32 %42, %44
  br i1 %cmp13, label %for.body14, label %for.end32

for.body14:                                       ; preds = %for.cond11
  %45 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_lsolve = getelementptr inbounds %struct.IDAMemRec, ptr %45, i32 0, i32 203
  %46 = load ptr, ptr %ida_lsolve, align 8, !tbaa !86
  %47 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %48 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS15 = getelementptr inbounds %struct.IDAMemRec, ptr %48, i32 0, i32 90
  %49 = load ptr, ptr %ida_delnewS15, align 8, !tbaa !33
  %50 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom16 = sext i32 %50 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %49, i64 %idxprom16
  %51 = load ptr, ptr %arrayidx17, align 8, !tbaa !5
  %52 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS = getelementptr inbounds %struct.IDAMemRec, ptr %52, i32 0, i32 79
  %53 = load ptr, ptr %ida_ewtS, align 8, !tbaa !45
  %54 = load i32, ptr %is, align 4, !tbaa !9
  %idxprom18 = sext i32 %54 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %53, i64 %idxprom18
  %55 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  %56 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yy020 = getelementptr inbounds %struct.IDAMemRec, ptr %56, i32 0, i32 102
  %57 = load ptr, ptr %ida_yy020, align 8, !tbaa !24
  %58 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_yp021 = getelementptr inbounds %struct.IDAMemRec, ptr %58, i32 0, i32 103
  %59 = load ptr, ptr %ida_yp021, align 8, !tbaa !25
  %60 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delta22 = getelementptr inbounds %struct.IDAMemRec, ptr %60, i32 0, i32 61
  %61 = load ptr, ptr %ida_delta22, align 8, !tbaa !58
  %call23 = call i32 %46(ptr noundef %47, ptr noundef %51, ptr noundef %55, ptr noundef %57, ptr noundef %59, ptr noundef %61)
  store i32 %call23, ptr %retval1, align 4, !tbaa !9
  %62 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp24 = icmp slt i32 %62, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body14
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %for.body14
  %63 = load i32, ptr %retval1, align 4, !tbaa !9
  %cmp27 = icmp sgt i32 %63, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %64 = load i32, ptr %is, align 4, !tbaa !9
  %inc31 = add nsw i32 %64, 1
  store i32 %inc31, ptr %is, align 4, !tbaa !9
  br label %for.cond11, !llvm.loop !114

for.end32:                                        ; preds = %for.cond11
  %65 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_delnewS33 = getelementptr inbounds %struct.IDAMemRec, ptr %66, i32 0, i32 90
  %67 = load ptr, ptr %ida_delnewS33, align 8, !tbaa !33
  %68 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_ewtS34 = getelementptr inbounds %struct.IDAMemRec, ptr %68, i32 0, i32 79
  %69 = load ptr, ptr %ida_ewtS34, align 8, !tbaa !45
  %call35 = call double @IDASensWrmsNorm(ptr noundef %65, ptr noundef %67, ptr noundef %69, i32 noundef 0)
  %70 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  store double %call35, ptr %70, align 8, !tbaa !11
  %71 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_sysindex = getelementptr inbounds %struct.IDAMemRec, ptr %71, i32 0, i32 110
  %72 = load i32, ptr %ida_sysindex, align 8, !tbaa !37
  %cmp36 = icmp eq i32 %72, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %for.end32
  %73 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_tscale = getelementptr inbounds %struct.IDAMemRec, ptr %73, i32 0, i32 114
  %74 = load double, ptr %ida_tscale, align 8, !tbaa !38
  %75 = load ptr, ptr %IDA_mem.addr, align 8, !tbaa !5
  %ida_cj = getelementptr inbounds %struct.IDAMemRec, ptr %75, i32 0, i32 129
  %76 = load double, ptr %ida_cj, align 8, !tbaa !47
  %77 = call double @llvm.fabs.f64(double %76)
  %mul = fmul double %74, %77
  %78 = load ptr, ptr %fnorm.addr, align 8, !tbaa !5
  %79 = load double, ptr %78, align 8, !tbaa !11
  %mul38 = fmul double %79, %mul
  store double %mul38, ptr %78, align 8, !tbaa !11
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %for.end32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then28, %if.then25, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is) #4
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!14, !10, i64 1640}
!14 = !{!"IDAMemRec", !6, i64 0, !12, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !10, i64 64, !10, i64 68, !6, i64 72, !6, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !6, i64 104, !6, i64 112, !10, i64 120, !10, i64 124, !12, i64 128, !12, i64 136, !6, i64 144, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !6, i64 168, !6, i64 176, !10, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !10, i64 216, !12, i64 224, !10, i64 232, !10, i64 236, !12, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !10, i64 272, !6, i64 280, !6, i64 288, !10, i64 296, !10, i64 300, !10, i64 304, !12, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !7, i64 344, !7, i64 392, !7, i64 440, !7, i64 488, !7, i64 536, !7, i64 584, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !6, i64 672, !6, i64 680, !6, i64 688, !6, i64 696, !6, i64 704, !6, i64 712, !6, i64 720, !6, i64 728, !6, i64 736, !6, i64 744, !6, i64 752, !6, i64 760, !7, i64 768, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !7, i64 848, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !7, i64 1024, !6, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !12, i64 1112, !6, i64 1120, !6, i64 1128, !10, i64 1136, !10, i64 1140, !10, i64 1144, !10, i64 1148, !10, i64 1152, !10, i64 1156, !10, i64 1160, !10, i64 1164, !12, i64 1168, !12, i64 1176, !12, i64 1184, !10, i64 1192, !12, i64 1200, !10, i64 1208, !10, i64 1212, !10, i64 1216, !10, i64 1220, !10, i64 1224, !12, i64 1232, !12, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !10, i64 1368, !10, i64 1372, !10, i64 1376, !10, i64 1380, !15, i64 1384, !12, i64 1392, !15, i64 1400, !15, i64 1408, !15, i64 1416, !15, i64 1424, !15, i64 1432, !15, i64 1440, !15, i64 1448, !15, i64 1456, !15, i64 1464, !15, i64 1472, !15, i64 1480, !15, i64 1488, !15, i64 1496, !15, i64 1504, !15, i64 1512, !15, i64 1520, !15, i64 1528, !15, i64 1536, !15, i64 1544, !15, i64 1552, !15, i64 1560, !15, i64 1568, !15, i64 1576, !15, i64 1584, !12, i64 1592, !6, i64 1600, !6, i64 1608, !6, i64 1616, !10, i64 1624, !10, i64 1628, !10, i64 1632, !10, i64 1636, !10, i64 1640, !10, i64 1644, !10, i64 1648, !10, i64 1652, !10, i64 1656, !10, i64 1660, !10, i64 1664, !10, i64 1668, !10, i64 1672, !6, i64 1680, !10, i64 1688, !6, i64 1696, !10, i64 1704, !6, i64 1712, !10, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !10, i64 1776, !10, i64 1780, !6, i64 1784, !6, i64 1792, !6, i64 1800, !6, i64 1808, !6, i64 1816, !6, i64 1824, !6, i64 1832, !10, i64 1840, !10, i64 1844, !6, i64 1848, !10, i64 1856, !6, i64 1864, !6, i64 1872, !12, i64 1880, !12, i64 1888, !12, i64 1896, !6, i64 1904, !6, i64 1912, !6, i64 1920, !12, i64 1928, !12, i64 1936, !10, i64 1944, !10, i64 1948, !15, i64 1952, !6, i64 1960, !10, i64 1968, !6, i64 1976, !7, i64 1984, !6, i64 2024, !6, i64 2032, !10, i64 2040, !6, i64 2048, !10, i64 2056}
!15 = !{!"long", !7, i64 0}
!16 = !{!14, !10, i64 1624}
!17 = !{!14, !10, i64 1136}
!18 = !{!14, !6, i64 680}
!19 = !{!14, !12, i64 1272}
!20 = !{!14, !12, i64 8}
!21 = !{!14, !10, i64 156}
!22 = !{!14, !10, i64 164}
!23 = !{!14, !6, i64 704}
!24 = !{!14, !6, i64 1120}
!25 = !{!14, !6, i64 1128}
!26 = !{!14, !12, i64 1112}
!27 = !{!14, !10, i64 160}
!28 = !{!14, !6, i64 992}
!29 = !{!14, !6, i64 1000}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!14, !6, i64 976}
!33 = !{!14, !6, i64 984}
!34 = !{!14, !6, i64 1008}
!35 = !{!14, !6, i64 904}
!36 = !{!14, !6, i64 1016}
!37 = !{!14, !10, i64 1160}
!38 = !{!14, !12, i64 1184}
!39 = !{!14, !12, i64 1168}
!40 = !{!14, !12, i64 1336}
!41 = !{!14, !12, i64 1312}
!42 = !{!14, !10, i64 1156}
!43 = !{!14, !6, i64 632}
!44 = !{!14, !10, i64 92}
!45 = !{!14, !6, i64 896}
!46 = !{!14, !12, i64 1248}
!47 = !{!14, !12, i64 1288}
!48 = !{!14, !10, i64 1144}
!49 = !{!14, !15, i64 1456}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
!52 = !{!14, !6, i64 72}
!53 = !{!14, !6, i64 80}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31}
!56 = !{!14, !12, i64 1256}
!57 = !{!14, !6, i64 16}
!58 = !{!14, !6, i64 672}
!59 = !{!14, !6, i64 24}
!60 = !{!14, !15, i64 1408}
!61 = !{!14, !15, i64 1472}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !31}
!66 = !{!14, !6, i64 720}
!67 = !{!14, !6, i64 696}
!68 = !{!14, !6, i64 168}
!69 = !{!14, !6, i64 944}
!70 = !{!14, !6, i64 176}
!71 = !{!14, !6, i64 952}
!72 = !{!14, !6, i64 960}
!73 = !{!14, !6, i64 968}
!74 = !{!14, !15, i64 1424}
!75 = distinct !{!75, !31}
!76 = !{!14, !10, i64 1148}
!77 = !{!14, !6, i64 1800}
!78 = !{!14, !15, i64 1528}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !31}
!83 = !{!14, !15, i64 1536}
!84 = distinct !{!84, !31}
!85 = !{!14, !6, i64 752}
!86 = !{!14, !6, i64 1808}
!87 = distinct !{!87, !31}
!88 = !{!14, !10, i64 1152}
!89 = !{!14, !15, i64 1512}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = !{!14, !6, i64 760}
!93 = !{!14, !6, i64 736}
!94 = !{!14, !6, i64 744}
!95 = !{!14, !10, i64 88}
!96 = !{!14, !6, i64 688}
!97 = !{!14, !12, i64 1176}
!98 = distinct !{!98, !31}
!99 = !{!14, !10, i64 1164}
!100 = !{!14, !10, i64 1140}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !31}
!108 = !{!14, !15, i64 1520}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}

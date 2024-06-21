; ModuleID = 'samples/958.bc'
source_filename = "stan/lib/stan_math/lib/sundials_6.1.1/src/cvodes/cvodes_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CVodeMemRec = type { ptr, double, ptr, ptr, i32, i32, double, double, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i32, double, double, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, double, i32, i32, double, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, double, ptr, ptr, ptr, [13 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr], ptr, ptr, ptr, ptr, [13 x ptr], ptr, ptr, ptr, ptr, ptr, i32, [13 x ptr], ptr, ptr, ptr, ptr, ptr, i32, double, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, [14 x double], [6 x double], [13 x double], double, double, double, double, double, double, double, double, i32, double, double, i32, double, double, ptr, i32, i64, i32, i32, i32, double, double, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i32, double, double, double, i64, i64, i64, i64, i64, i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i64, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i64, double, double, double, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i32, [6 x [4 x double]], i32, i64, ptr, i32, ptr, ptr, double, double, double, ptr, ptr, ptr, double, double, i32, i32, i64, ptr, i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct._generic_N_Vector = type { ptr, ptr, ptr }
%struct._generic_N_Vector_Ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CVDiagMemRec = type { double, ptr, ptr, ptr, i64, i64 }
%struct.CVadjMemRec = type { double, double, i32, i32, double, i32, double, ptr, i32, ptr, i32, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [13 x ptr], [13 x ptr], [13 x double], ptr, ptr }
%struct.CVodeBMemRec = type { i32, double, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"CVDIAG\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CVDiag\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Integrator memory is NULL.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"A required vector operation is not implemented.\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"A memory request failed.\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"CVDiagGetWorkSpace\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CVDiagGetNumRhsEvals\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"CVDIAG memory is NULL.\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"CVDiagGetLastFlag\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"CVDIAG_SUCCESS\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"CVDIAG_MEM_NULL\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"CVDIAG_LMEM_NULL\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"CVDIAG_ILL_INPUT\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"CVDIAG_MEM_FAIL\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"CVDIAG_INV_FAIL\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"CVDIAG_RHSFUNC_UNRECVR\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"CVDIAG_RHSFUNC_RECVR\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"CVDIAG_NO_ADJ\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CVSDIAG\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"CVDiagB\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Illegal attempt to call before calling CVodeAdjMalloc.\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Illegal value for which.\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"CVDiagSetup\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"The right-hand side routine failed in an unrecoverable manner.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @CVDiag(ptr noundef %cvode_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %cvode_mem.addr = alloca ptr, align 8
  %cv_mem = alloca ptr, align 8
  %cvdiag_mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cvode_mem, ptr %cvode_mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cv_mem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvdiag_mem) #5
  %0 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %1, ptr %cv_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_tempv = getelementptr inbounds %struct.CVodeMemRec, ptr %2, i32 0, i32 55
  %3 = load ptr, ptr %cv_tempv, align 8, !tbaa !9
  %ops = getelementptr inbounds %struct._generic_N_Vector, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %ops, align 8, !tbaa !14
  %nvcompare = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %4, i32 0, i32 25
  %5 = load ptr, ptr %nvcompare, align 8, !tbaa !16
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_tempv2 = getelementptr inbounds %struct.CVodeMemRec, ptr %6, i32 0, i32 55
  %7 = load ptr, ptr %cv_tempv2, align 8, !tbaa !9
  %ops3 = getelementptr inbounds %struct._generic_N_Vector, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %ops3, align 8, !tbaa !14
  %nvinvtest = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %8, i32 0, i32 26
  %9 = load ptr, ptr %nvinvtest, align 8, !tbaa !18
  %cmp4 = icmp eq ptr %9, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %10, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.3)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lfree = getelementptr inbounds %struct.CVodeMemRec, ptr %11, i32 0, i32 173
  %12 = load ptr, ptr %cv_lfree, align 8, !tbaa !19
  %cmp7 = icmp ne ptr %12, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %13 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lfree9 = getelementptr inbounds %struct.CVodeMemRec, ptr %13, i32 0, i32 173
  %14 = load ptr, ptr %cv_lfree9, align 8, !tbaa !19
  %15 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %call = call i32 %14(ptr noundef %15)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %16 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_linit = getelementptr inbounds %struct.CVodeMemRec, ptr %16, i32 0, i32 170
  store ptr @CVDiagInit, ptr %cv_linit, align 8, !tbaa !20
  %17 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lsetup = getelementptr inbounds %struct.CVodeMemRec, ptr %17, i32 0, i32 171
  store ptr @CVDiagSetup, ptr %cv_lsetup, align 8, !tbaa !21
  %18 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lsolve = getelementptr inbounds %struct.CVodeMemRec, ptr %18, i32 0, i32 172
  store ptr @CVDiagSolve, ptr %cv_lsolve, align 8, !tbaa !22
  %19 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lfree11 = getelementptr inbounds %struct.CVodeMemRec, ptr %19, i32 0, i32 173
  store ptr @CVDiagFree, ptr %cv_lfree11, align 8, !tbaa !19
  store ptr null, ptr %cvdiag_mem, align 8, !tbaa !5
  %call12 = call noalias ptr @malloc(i64 noundef 48) #6
  store ptr %call12, ptr %cvdiag_mem, align 8, !tbaa !5
  %20 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %cmp13 = icmp eq ptr %20, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %21 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %21, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.4)
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %22 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag = getelementptr inbounds %struct.CVDiagMemRec, ptr %22, i32 0, i32 5
  store i64 0, ptr %di_last_flag, align 8, !tbaa !23
  %23 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_tempv16 = getelementptr inbounds %struct.CVodeMemRec, ptr %23, i32 0, i32 55
  %24 = load ptr, ptr %cv_tempv16, align 8, !tbaa !9
  %call17 = call ptr @N_VClone(ptr noundef %24)
  %25 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M = getelementptr inbounds %struct.CVDiagMemRec, ptr %25, i32 0, i32 1
  store ptr %call17, ptr %di_M, align 8, !tbaa !25
  %26 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M18 = getelementptr inbounds %struct.CVDiagMemRec, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %di_M18, align 8, !tbaa !25
  %cmp19 = icmp eq ptr %27, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  %28 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %28, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.4)
  %29 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  call void @free(ptr noundef %29) #5
  store ptr null, ptr %cvdiag_mem, align 8, !tbaa !5
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %30 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_tempv22 = getelementptr inbounds %struct.CVodeMemRec, ptr %30, i32 0, i32 55
  %31 = load ptr, ptr %cv_tempv22, align 8, !tbaa !9
  %call23 = call ptr @N_VClone(ptr noundef %31)
  %32 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit = getelementptr inbounds %struct.CVDiagMemRec, ptr %32, i32 0, i32 2
  store ptr %call23, ptr %di_bit, align 8, !tbaa !26
  %33 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit24 = getelementptr inbounds %struct.CVDiagMemRec, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %di_bit24, align 8, !tbaa !26
  %cmp25 = icmp eq ptr %34, null
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %35 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %35, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.4)
  %36 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M27 = getelementptr inbounds %struct.CVDiagMemRec, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %di_M27, align 8, !tbaa !25
  call void @N_VDestroy(ptr noundef %37)
  %38 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  call void @free(ptr noundef %38) #5
  store ptr null, ptr %cvdiag_mem, align 8, !tbaa !5
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %39 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_tempv29 = getelementptr inbounds %struct.CVodeMemRec, ptr %39, i32 0, i32 55
  %40 = load ptr, ptr %cv_tempv29, align 8, !tbaa !9
  %call30 = call ptr @N_VClone(ptr noundef %40)
  %41 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bitcomp = getelementptr inbounds %struct.CVDiagMemRec, ptr %41, i32 0, i32 3
  store ptr %call30, ptr %di_bitcomp, align 8, !tbaa !27
  %42 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bitcomp31 = getelementptr inbounds %struct.CVDiagMemRec, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %di_bitcomp31, align 8, !tbaa !27
  %cmp32 = icmp eq ptr %43, null
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  %44 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %44, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.4)
  %45 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M34 = getelementptr inbounds %struct.CVDiagMemRec, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %di_M34, align 8, !tbaa !25
  call void @N_VDestroy(ptr noundef %46)
  %47 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit35 = getelementptr inbounds %struct.CVDiagMemRec, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %di_bit35, align 8, !tbaa !26
  call void @N_VDestroy(ptr noundef %48)
  %49 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  call void @free(ptr noundef %49) #5
  store ptr null, ptr %cvdiag_mem, align 8, !tbaa !5
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %50 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %51 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lmem = getelementptr inbounds %struct.CVodeMemRec, ptr %51, i32 0, i32 174
  store ptr %50, ptr %cv_lmem, align 8, !tbaa !28
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then26, %if.then20, %if.then14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvdiag_mem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cv_mem) #5
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @cvProcessError(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @CVDiagInit(ptr noundef %cv_mem) #0 {
entry:
  %cv_mem.addr = alloca ptr, align 8
  %cvdiag_mem = alloca ptr, align 8
  store ptr %cv_mem, ptr %cv_mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvdiag_mem) #5
  %0 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_lmem = getelementptr inbounds %struct.CVodeMemRec, ptr %0, i32 0, i32 174
  %1 = load ptr, ptr %cv_lmem, align 8, !tbaa !28
  store ptr %1, ptr %cvdiag_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_nfeDI = getelementptr inbounds %struct.CVDiagMemRec, ptr %2, i32 0, i32 4
  store i64 0, ptr %di_nfeDI, align 8, !tbaa !29
  %3 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag = getelementptr inbounds %struct.CVDiagMemRec, ptr %3, i32 0, i32 5
  store i64 0, ptr %di_last_flag, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvdiag_mem) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @CVDiagSetup(ptr noundef %cv_mem, i32 noundef %convfail, ptr noundef %ypred, ptr noundef %fpred, ptr noundef %jcurPtr, ptr noundef %vtemp1, ptr noundef %vtemp2, ptr noundef %vtemp3) #0 {
entry:
  %retval = alloca i32, align 4
  %cv_mem.addr = alloca ptr, align 8
  %convfail.addr = alloca i32, align 4
  %ypred.addr = alloca ptr, align 8
  %fpred.addr = alloca ptr, align 8
  %jcurPtr.addr = alloca ptr, align 8
  %vtemp1.addr = alloca ptr, align 8
  %vtemp2.addr = alloca ptr, align 8
  %vtemp3.addr = alloca ptr, align 8
  %r = alloca double, align 8
  %ftemp = alloca ptr, align 8
  %y = alloca ptr, align 8
  %invOK = alloca i32, align 4
  %cvdiag_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cv_mem, ptr %cv_mem.addr, align 8, !tbaa !5
  store i32 %convfail, ptr %convfail.addr, align 4, !tbaa !30
  store ptr %ypred, ptr %ypred.addr, align 8, !tbaa !5
  store ptr %fpred, ptr %fpred.addr, align 8, !tbaa !5
  store ptr %jcurPtr, ptr %jcurPtr.addr, align 8, !tbaa !5
  store ptr %vtemp1, ptr %vtemp1.addr, align 8, !tbaa !5
  store ptr %vtemp2, ptr %vtemp2.addr, align 8, !tbaa !5
  store ptr %vtemp3, ptr %vtemp3.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ftemp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %invOK) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvdiag_mem) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #5
  %0 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_lmem = getelementptr inbounds %struct.CVodeMemRec, ptr %0, i32 0, i32 174
  %1 = load ptr, ptr %cv_lmem, align 8, !tbaa !28
  store ptr %1, ptr %cvdiag_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %vtemp1.addr, align 8, !tbaa !5
  store ptr %2, ptr %ftemp, align 8, !tbaa !5
  %3 = load ptr, ptr %vtemp2.addr, align 8, !tbaa !5
  store ptr %3, ptr %y, align 8, !tbaa !5
  %4 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_rl1 = getelementptr inbounds %struct.CVodeMemRec, ptr %4, i32 0, i32 97
  %5 = load double, ptr %cv_rl1, align 8, !tbaa !31
  %mul = fmul double 1.000000e-01, %5
  store double %mul, ptr %r, align 8, !tbaa !32
  %6 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_h = getelementptr inbounds %struct.CVodeMemRec, ptr %6, i32 0, i32 87
  %7 = load double, ptr %cv_h, align 8, !tbaa !33
  %8 = load ptr, ptr %fpred.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_zn = getelementptr inbounds %struct.CVodeMemRec, ptr %9, i32 0, i32 51
  %arrayidx = getelementptr inbounds [13 x ptr], ptr %cv_zn, i64 0, i64 1
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %11 = load ptr, ptr %ftemp, align 8, !tbaa !5
  call void @N_VLinearSum(double noundef %7, ptr noundef %8, double noundef -1.000000e+00, ptr noundef %10, ptr noundef %11)
  %12 = load double, ptr %r, align 8, !tbaa !32
  %13 = load ptr, ptr %ftemp, align 8, !tbaa !5
  %14 = load ptr, ptr %ypred.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %y, align 8, !tbaa !5
  call void @N_VLinearSum(double noundef %12, ptr noundef %13, double noundef 1.000000e+00, ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_f = getelementptr inbounds %struct.CVodeMemRec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %cv_f, align 8, !tbaa !34
  %18 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_tn = getelementptr inbounds %struct.CVodeMemRec, ptr %18, i32 0, i32 92
  %19 = load double, ptr %cv_tn, align 8, !tbaa !35
  %20 = load ptr, ptr %y, align 8, !tbaa !5
  %21 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M = getelementptr inbounds %struct.CVDiagMemRec, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %di_M, align 8, !tbaa !25
  %23 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_user_data = getelementptr inbounds %struct.CVodeMemRec, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %cv_user_data, align 8, !tbaa !36
  %call = call i32 %17(double noundef %19, ptr noundef %20, ptr noundef %22, ptr noundef %24)
  store i32 %call, ptr %retval1, align 4, !tbaa !30
  %25 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_nfeDI = getelementptr inbounds %struct.CVDiagMemRec, ptr %25, i32 0, i32 4
  %26 = load i64, ptr %di_nfeDI, align 8, !tbaa !29
  %inc = add nsw i64 %26, 1
  store i64 %inc, ptr %di_nfeDI, align 8, !tbaa !29
  %27 = load i32, ptr %retval1, align 4, !tbaa !30
  %cmp = icmp slt i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %28, i32 noundef -6, ptr noundef @.str, ptr noundef @.str.23, ptr noundef @.str.24)
  %29 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag = getelementptr inbounds %struct.CVDiagMemRec, ptr %29, i32 0, i32 5
  store i64 -6, ptr %di_last_flag, align 8, !tbaa !23
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load i32, ptr %retval1, align 4, !tbaa !30
  %cmp2 = icmp sgt i32 %30, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %31 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag4 = getelementptr inbounds %struct.CVDiagMemRec, ptr %31, i32 0, i32 5
  store i64 -7, ptr %di_last_flag4, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %32 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M6 = getelementptr inbounds %struct.CVDiagMemRec, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %di_M6, align 8, !tbaa !25
  %34 = load ptr, ptr %fpred.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M7 = getelementptr inbounds %struct.CVDiagMemRec, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %di_M7, align 8, !tbaa !25
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %33, double noundef -1.000000e+00, ptr noundef %34, ptr noundef %36)
  %37 = load ptr, ptr %ftemp, align 8, !tbaa !5
  %38 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_h8 = getelementptr inbounds %struct.CVodeMemRec, ptr %38, i32 0, i32 87
  %39 = load double, ptr %cv_h8, align 8, !tbaa !33
  %fneg = fneg double %39
  %40 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M9 = getelementptr inbounds %struct.CVDiagMemRec, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %di_M9, align 8, !tbaa !25
  %42 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M10 = getelementptr inbounds %struct.CVDiagMemRec, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %di_M10, align 8, !tbaa !25
  call void @N_VLinearSum(double noundef 1.000000e-01, ptr noundef %37, double noundef %fneg, ptr noundef %41, ptr noundef %43)
  %44 = load ptr, ptr %ftemp, align 8, !tbaa !5
  %45 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_ewt = getelementptr inbounds %struct.CVodeMemRec, ptr %45, i32 0, i32 52
  %46 = load ptr, ptr %cv_ewt, align 8, !tbaa !37
  %47 = load ptr, ptr %y, align 8, !tbaa !5
  call void @N_VProd(ptr noundef %44, ptr noundef %46, ptr noundef %47)
  %48 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_uround = getelementptr inbounds %struct.CVodeMemRec, ptr %48, i32 0, i32 1
  %49 = load double, ptr %cv_uround, align 8, !tbaa !38
  %50 = load ptr, ptr %y, align 8, !tbaa !5
  %51 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit = getelementptr inbounds %struct.CVDiagMemRec, ptr %51, i32 0, i32 2
  %52 = load ptr, ptr %di_bit, align 8, !tbaa !26
  call void @N_VCompare(double noundef %49, ptr noundef %50, ptr noundef %52)
  %53 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit11 = getelementptr inbounds %struct.CVDiagMemRec, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %di_bit11, align 8, !tbaa !26
  %55 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bitcomp = getelementptr inbounds %struct.CVDiagMemRec, ptr %55, i32 0, i32 3
  %56 = load ptr, ptr %di_bitcomp, align 8, !tbaa !27
  call void @N_VAddConst(ptr noundef %54, double noundef -1.000000e+00, ptr noundef %56)
  %57 = load ptr, ptr %ftemp, align 8, !tbaa !5
  %58 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit12 = getelementptr inbounds %struct.CVDiagMemRec, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %di_bit12, align 8, !tbaa !26
  %60 = load ptr, ptr %y, align 8, !tbaa !5
  call void @N_VProd(ptr noundef %57, ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %y, align 8, !tbaa !5
  %62 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bitcomp13 = getelementptr inbounds %struct.CVDiagMemRec, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %di_bitcomp13, align 8, !tbaa !27
  %64 = load ptr, ptr %y, align 8, !tbaa !5
  call void @N_VLinearSum(double noundef 1.000000e-01, ptr noundef %61, double noundef -1.000000e+00, ptr noundef %63, ptr noundef %64)
  %65 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M14 = getelementptr inbounds %struct.CVDiagMemRec, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %di_M14, align 8, !tbaa !25
  %67 = load ptr, ptr %y, align 8, !tbaa !5
  %68 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M15 = getelementptr inbounds %struct.CVDiagMemRec, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %di_M15, align 8, !tbaa !25
  call void @N_VDiv(ptr noundef %66, ptr noundef %67, ptr noundef %69)
  %70 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M16 = getelementptr inbounds %struct.CVDiagMemRec, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %di_M16, align 8, !tbaa !25
  %72 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit17 = getelementptr inbounds %struct.CVDiagMemRec, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %di_bit17, align 8, !tbaa !26
  %74 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M18 = getelementptr inbounds %struct.CVDiagMemRec, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %di_M18, align 8, !tbaa !25
  call void @N_VProd(ptr noundef %71, ptr noundef %73, ptr noundef %75)
  %76 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M19 = getelementptr inbounds %struct.CVDiagMemRec, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %di_M19, align 8, !tbaa !25
  %78 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bitcomp20 = getelementptr inbounds %struct.CVDiagMemRec, ptr %78, i32 0, i32 3
  %79 = load ptr, ptr %di_bitcomp20, align 8, !tbaa !27
  %80 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M21 = getelementptr inbounds %struct.CVDiagMemRec, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %di_M21, align 8, !tbaa !25
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %77, double noundef -1.000000e+00, ptr noundef %79, ptr noundef %81)
  %82 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M22 = getelementptr inbounds %struct.CVDiagMemRec, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %di_M22, align 8, !tbaa !25
  %84 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M23 = getelementptr inbounds %struct.CVDiagMemRec, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %di_M23, align 8, !tbaa !25
  %call24 = call i32 @N_VInvTest(ptr noundef %83, ptr noundef %85)
  store i32 %call24, ptr %invOK, align 4, !tbaa !30
  %86 = load i32, ptr %invOK, align 4, !tbaa !30
  %tobool = icmp ne i32 %86, 0
  br i1 %tobool, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end5
  %87 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag26 = getelementptr inbounds %struct.CVDiagMemRec, ptr %87, i32 0, i32 5
  store i64 -5, ptr %di_last_flag26, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end5
  %88 = load ptr, ptr %jcurPtr.addr, align 8, !tbaa !5
  store i32 1, ptr %88, align 4, !tbaa !30
  %89 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_gamma = getelementptr inbounds %struct.CVodeMemRec, ptr %89, i32 0, i32 98
  %90 = load double, ptr %cv_gamma, align 8, !tbaa !39
  %91 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_gammasv = getelementptr inbounds %struct.CVDiagMemRec, ptr %91, i32 0, i32 0
  store double %90, ptr %di_gammasv, align 8, !tbaa !40
  %92 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag28 = getelementptr inbounds %struct.CVDiagMemRec, ptr %92, i32 0, i32 5
  store i64 0, ptr %di_last_flag28, align 8, !tbaa !23
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvdiag_mem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %invOK) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ftemp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  %93 = load i32, ptr %retval, align 4
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @CVDiagSolve(ptr noundef %cv_mem, ptr noundef %b, ptr noundef %weight, ptr noundef %ycur, ptr noundef %fcur) #0 {
entry:
  %retval = alloca i32, align 4
  %cv_mem.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %weight.addr = alloca ptr, align 8
  %ycur.addr = alloca ptr, align 8
  %fcur.addr = alloca ptr, align 8
  %invOK = alloca i32, align 4
  %r = alloca double, align 8
  %cvdiag_mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cv_mem, ptr %cv_mem.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  store ptr %weight, ptr %weight.addr, align 8, !tbaa !5
  store ptr %ycur, ptr %ycur.addr, align 8, !tbaa !5
  store ptr %fcur, ptr %fcur.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %invOK) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvdiag_mem) #5
  %0 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_lmem = getelementptr inbounds %struct.CVodeMemRec, ptr %0, i32 0, i32 174
  %1 = load ptr, ptr %cv_lmem, align 8, !tbaa !28
  store ptr %1, ptr %cvdiag_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_gammasv = getelementptr inbounds %struct.CVDiagMemRec, ptr %2, i32 0, i32 0
  %3 = load double, ptr %di_gammasv, align 8, !tbaa !40
  %4 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_gamma = getelementptr inbounds %struct.CVodeMemRec, ptr %4, i32 0, i32 98
  %5 = load double, ptr %cv_gamma, align 8, !tbaa !39
  %cmp = fcmp une double %3, %5
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_gamma1 = getelementptr inbounds %struct.CVodeMemRec, ptr %6, i32 0, i32 98
  %7 = load double, ptr %cv_gamma1, align 8, !tbaa !39
  %8 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_gammasv2 = getelementptr inbounds %struct.CVDiagMemRec, ptr %8, i32 0, i32 0
  %9 = load double, ptr %di_gammasv2, align 8, !tbaa !40
  %div = fdiv double %7, %9
  store double %div, ptr %r, align 8, !tbaa !32
  %10 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M = getelementptr inbounds %struct.CVDiagMemRec, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %di_M, align 8, !tbaa !25
  %12 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M3 = getelementptr inbounds %struct.CVDiagMemRec, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %di_M3, align 8, !tbaa !25
  call void @N_VInv(ptr noundef %11, ptr noundef %13)
  %14 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M4 = getelementptr inbounds %struct.CVDiagMemRec, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %di_M4, align 8, !tbaa !25
  %16 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M5 = getelementptr inbounds %struct.CVDiagMemRec, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %di_M5, align 8, !tbaa !25
  call void @N_VAddConst(ptr noundef %15, double noundef -1.000000e+00, ptr noundef %17)
  %18 = load double, ptr %r, align 8, !tbaa !32
  %19 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M6 = getelementptr inbounds %struct.CVDiagMemRec, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %di_M6, align 8, !tbaa !25
  %21 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M7 = getelementptr inbounds %struct.CVDiagMemRec, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %di_M7, align 8, !tbaa !25
  call void @N_VScale(double noundef %18, ptr noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M8 = getelementptr inbounds %struct.CVDiagMemRec, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %di_M8, align 8, !tbaa !25
  %25 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M9 = getelementptr inbounds %struct.CVDiagMemRec, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %di_M9, align 8, !tbaa !25
  call void @N_VAddConst(ptr noundef %24, double noundef 1.000000e+00, ptr noundef %26)
  %27 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M10 = getelementptr inbounds %struct.CVDiagMemRec, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %di_M10, align 8, !tbaa !25
  %29 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M11 = getelementptr inbounds %struct.CVDiagMemRec, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %di_M11, align 8, !tbaa !25
  %call = call i32 @N_VInvTest(ptr noundef %28, ptr noundef %30)
  store i32 %call, ptr %invOK, align 4, !tbaa !30
  %31 = load i32, ptr %invOK, align 4, !tbaa !30
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then
  %32 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag = getelementptr inbounds %struct.CVDiagMemRec, ptr %32, i32 0, i32 5
  store i64 -5, ptr %di_last_flag, align 8, !tbaa !23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %33 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_gamma13 = getelementptr inbounds %struct.CVodeMemRec, ptr %33, i32 0, i32 98
  %34 = load double, ptr %cv_gamma13, align 8, !tbaa !39
  %35 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_gammasv14 = getelementptr inbounds %struct.CVDiagMemRec, ptr %35, i32 0, i32 0
  store double %34, ptr %di_gammasv14, align 8, !tbaa !40
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry
  %36 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M16 = getelementptr inbounds %struct.CVDiagMemRec, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %di_M16, align 8, !tbaa !25
  %39 = load ptr, ptr %b.addr, align 8, !tbaa !5
  call void @N_VProd(ptr noundef %36, ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag17 = getelementptr inbounds %struct.CVDiagMemRec, ptr %40, i32 0, i32 5
  store i64 0, ptr %di_last_flag17, align 8, !tbaa !23
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvdiag_mem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %invOK) #5
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @CVDiagFree(ptr noundef %cv_mem) #0 {
entry:
  %cv_mem.addr = alloca ptr, align 8
  %cvdiag_mem = alloca ptr, align 8
  store ptr %cv_mem, ptr %cv_mem.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvdiag_mem) #5
  %0 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_lmem = getelementptr inbounds %struct.CVodeMemRec, ptr %0, i32 0, i32 174
  %1 = load ptr, ptr %cv_lmem, align 8, !tbaa !28
  store ptr %1, ptr %cvdiag_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_M = getelementptr inbounds %struct.CVDiagMemRec, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %di_M, align 8, !tbaa !25
  call void @N_VDestroy(ptr noundef %3)
  %4 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bit = getelementptr inbounds %struct.CVDiagMemRec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %di_bit, align 8, !tbaa !26
  call void @N_VDestroy(ptr noundef %5)
  %6 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_bitcomp = getelementptr inbounds %struct.CVDiagMemRec, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %di_bitcomp, align 8, !tbaa !27
  call void @N_VDestroy(ptr noundef %7)
  %8 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  call void @free(ptr noundef %8) #5
  %9 = load ptr, ptr %cv_mem.addr, align 8, !tbaa !5
  %cv_lmem1 = getelementptr inbounds %struct.CVodeMemRec, ptr %9, i32 0, i32 174
  store ptr null, ptr %cv_lmem1, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvdiag_mem) #5
  ret i32 0
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare ptr @N_VClone(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare void @N_VDestroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @CVDiagGetWorkSpace(ptr noundef %cvode_mem, ptr noundef %lenrwLS, ptr noundef %leniwLS) #0 {
entry:
  %retval = alloca i32, align 4
  %cvode_mem.addr = alloca ptr, align 8
  %lenrwLS.addr = alloca ptr, align 8
  %leniwLS.addr = alloca ptr, align 8
  %cv_mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cvode_mem, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %lenrwLS, ptr %lenrwLS.addr, align 8, !tbaa !5
  store ptr %leniwLS, ptr %leniwLS.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cv_mem) #5
  %0 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %1, ptr %cv_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lrw1 = getelementptr inbounds %struct.CVodeMemRec, ptr %2, i32 0, i32 143
  %3 = load i64, ptr %cv_lrw1, align 8, !tbaa !41
  %mul = mul nsw i64 3, %3
  %4 = load ptr, ptr %lenrwLS.addr, align 8, !tbaa !5
  store i64 %mul, ptr %4, align 8, !tbaa !42
  %5 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_liw1 = getelementptr inbounds %struct.CVodeMemRec, ptr %5, i32 0, i32 144
  %6 = load i64, ptr %cv_liw1, align 8, !tbaa !43
  %mul1 = mul nsw i64 3, %6
  %7 = load ptr, ptr %leniwLS.addr, align 8, !tbaa !5
  store i64 %mul1, ptr %7, align 8, !tbaa !42
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cv_mem) #5
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CVDiagGetNumRhsEvals(ptr noundef %cvode_mem, ptr noundef %nfevalsLS) #0 {
entry:
  %retval = alloca i32, align 4
  %cvode_mem.addr = alloca ptr, align 8
  %nfevalsLS.addr = alloca ptr, align 8
  %cv_mem = alloca ptr, align 8
  %cvdiag_mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cvode_mem, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %nfevalsLS, ptr %nfevalsLS.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cv_mem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvdiag_mem) #5
  %0 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %1, ptr %cv_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lmem = getelementptr inbounds %struct.CVodeMemRec, ptr %2, i32 0, i32 174
  %3 = load ptr, ptr %cv_lmem, align 8, !tbaa !28
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %4, i32 noundef -2, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.7)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lmem4 = getelementptr inbounds %struct.CVodeMemRec, ptr %5, i32 0, i32 174
  %6 = load ptr, ptr %cv_lmem4, align 8, !tbaa !28
  store ptr %6, ptr %cvdiag_mem, align 8, !tbaa !5
  %7 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_nfeDI = getelementptr inbounds %struct.CVDiagMemRec, ptr %7, i32 0, i32 4
  %8 = load i64, ptr %di_nfeDI, align 8, !tbaa !29
  %9 = load ptr, ptr %nfevalsLS.addr, align 8, !tbaa !5
  store i64 %8, ptr %9, align 8, !tbaa !42
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvdiag_mem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cv_mem) #5
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CVDiagGetLastFlag(ptr noundef %cvode_mem, ptr noundef %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %cvode_mem.addr = alloca ptr, align 8
  %flag.addr = alloca ptr, align 8
  %cv_mem = alloca ptr, align 8
  %cvdiag_mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cvode_mem, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %flag, ptr %flag.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cv_mem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvdiag_mem) #5
  %0 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %1, ptr %cv_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lmem = getelementptr inbounds %struct.CVodeMemRec, ptr %2, i32 0, i32 174
  %3 = load ptr, ptr %cv_lmem, align 8, !tbaa !28
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %4, i32 noundef -2, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.7)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_lmem4 = getelementptr inbounds %struct.CVodeMemRec, ptr %5, i32 0, i32 174
  %6 = load ptr, ptr %cv_lmem4, align 8, !tbaa !28
  store ptr %6, ptr %cvdiag_mem, align 8, !tbaa !5
  %7 = load ptr, ptr %cvdiag_mem, align 8, !tbaa !5
  %di_last_flag = getelementptr inbounds %struct.CVDiagMemRec, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %di_last_flag, align 8, !tbaa !23
  %9 = load ptr, ptr %flag.addr, align 8, !tbaa !5
  store i64 %8, ptr %9, align 8, !tbaa !42
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvdiag_mem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cv_mem) #5
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CVDiagGetReturnFlagName(i64 noundef %flag) #0 {
entry:
  %flag.addr = alloca i64, align 8
  %name = alloca ptr, align 8
  store i64 %flag, ptr %flag.addr, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #5
  %call = call noalias ptr @malloc(i64 noundef 30) #6
  store ptr %call, ptr %name, align 8, !tbaa !5
  %0 = load i64, ptr %flag.addr, align 8, !tbaa !42
  switch i64 %0, label %sw.default [
    i64 0, label %sw.bb
    i64 -1, label %sw.bb2
    i64 -2, label %sw.bb4
    i64 -3, label %sw.bb6
    i64 -4, label %sw.bb8
    i64 -5, label %sw.bb10
    i64 -6, label %sw.bb12
    i64 -7, label %sw.bb14
    i64 -101, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %name, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.9) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %2 = load ptr, ptr %name, align 8, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.10) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %3 = load ptr, ptr %name, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.11) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %4 = load ptr, ptr %name, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.12) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %5 = load ptr, ptr %name, align 8, !tbaa !5
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.13) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %6 = load ptr, ptr %name, align 8, !tbaa !5
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.14) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %7 = load ptr, ptr %name, align 8, !tbaa !5
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef @.str.15) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %8 = load ptr, ptr %name, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %8, ptr noundef @.str.16) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %9 = load ptr, ptr %name, align 8, !tbaa !5
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %9, ptr noundef @.str.17) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load ptr, ptr %name, align 8, !tbaa !5
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef @.str.18) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %11 = load ptr, ptr %name, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #5
  ret ptr %11
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @CVDiagB(ptr noundef %cvode_mem, i32 noundef %which) #0 {
entry:
  %retval = alloca i32, align 4
  %cvode_mem.addr = alloca ptr, align 8
  %which.addr = alloca i32, align 4
  %cv_mem = alloca ptr, align 8
  %ca_mem = alloca ptr, align 8
  %cvB_mem = alloca ptr, align 8
  %cvodeB_mem = alloca ptr, align 8
  %flag = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cvode_mem, ptr %cvode_mem.addr, align 8, !tbaa !5
  store i32 %which, ptr %which.addr, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cv_mem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ca_mem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvB_mem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvodeB_mem) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #5
  %0 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cvode_mem.addr, align 8, !tbaa !5
  store ptr %1, ptr %cv_mem, align 8, !tbaa !5
  %2 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_adjMallocDone = getelementptr inbounds %struct.CVodeMemRec, ptr %2, i32 0, i32 232
  %3 = load i32, ptr %cv_adjMallocDone, align 8, !tbaa !44
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %4, i32 noundef -101, ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef @.str.21)
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  %cv_adj_mem = getelementptr inbounds %struct.CVodeMemRec, ptr %5, i32 0, i32 231
  %6 = load ptr, ptr %cv_adj_mem, align 8, !tbaa !45
  store ptr %6, ptr %ca_mem, align 8, !tbaa !5
  %7 = load i32, ptr %which.addr, align 4, !tbaa !30
  %8 = load ptr, ptr %ca_mem, align 8, !tbaa !5
  %ca_nbckpbs = getelementptr inbounds %struct.CVadjMemRec, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %ca_nbckpbs, align 8, !tbaa !46
  %cmp4 = icmp sge i32 %7, %9
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %10 = load ptr, ptr %cv_mem, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %10, i32 noundef -3, ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef @.str.22)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %11 = load ptr, ptr %ca_mem, align 8, !tbaa !5
  %cvB_mem7 = getelementptr inbounds %struct.CVadjMemRec, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %cvB_mem7, align 8, !tbaa !48
  store ptr %12, ptr %cvB_mem, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end6
  %13 = load ptr, ptr %cvB_mem, align 8, !tbaa !5
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, ptr %which.addr, align 4, !tbaa !30
  %15 = load ptr, ptr %cvB_mem, align 8, !tbaa !5
  %cv_index = getelementptr inbounds %struct.CVodeBMemRec, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %cv_index, align 8, !tbaa !49
  %cmp9 = icmp eq i32 %14, %16
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  br label %while.end

if.end11:                                         ; preds = %while.body
  %17 = load ptr, ptr %cvB_mem, align 8, !tbaa !5
  %cv_next = getelementptr inbounds %struct.CVodeBMemRec, ptr %17, i32 0, i32 16
  %18 = load ptr, ptr %cv_next, align 8, !tbaa !51
  store ptr %18, ptr %cvB_mem, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !52

while.end:                                        ; preds = %if.then10, %while.cond
  %19 = load ptr, ptr %cvB_mem, align 8, !tbaa !5
  %cv_mem12 = getelementptr inbounds %struct.CVodeBMemRec, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %cv_mem12, align 8, !tbaa !54
  store ptr %20, ptr %cvodeB_mem, align 8, !tbaa !5
  %21 = load ptr, ptr %cvodeB_mem, align 8, !tbaa !5
  %call = call i32 @CVDiag(ptr noundef %21)
  store i32 %call, ptr %flag, align 4, !tbaa !30
  %22 = load i32, ptr %flag, align 4, !tbaa !30
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvodeB_mem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvB_mem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ca_mem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cv_mem) #5
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) #2

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) #2

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) #2

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @N_VInvTest(ptr noundef, ptr noundef) #2

declare void @N_VInv(ptr noundef, ptr noundef) #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!9 = !{!10, !6, i64 464}
!10 = !{!"CVodeMemRec", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 24, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !6, i64 56, !12, i64 64, !12, i64 68, !6, i64 72, !6, i64 80, !12, i64 88, !12, i64 92, !6, i64 96, !12, i64 104, !12, i64 108, !11, i64 112, !11, i64 120, !6, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !6, i64 152, !6, i64 160, !6, i64 168, !12, i64 176, !12, i64 180, !6, i64 184, !6, i64 192, !6, i64 200, !12, i64 208, !11, i64 216, !12, i64 224, !12, i64 228, !11, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !12, i64 264, !6, i64 272, !6, i64 280, !12, i64 288, !12, i64 292, !12, i64 296, !11, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !7, i64 336, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !7, i64 512, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !7, i64 648, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !12, i64 792, !7, i64 800, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !12, i64 944, !11, i64 952, !12, i64 960, !12, i64 964, !12, i64 968, !12, i64 972, !12, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !7, i64 1048, !7, i64 1160, !7, i64 1208, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !12, i64 1376, !11, i64 1384, !11, i64 1392, !12, i64 1400, !11, i64 1408, !11, i64 1416, !6, i64 1424, !12, i64 1432, !13, i64 1440, !12, i64 1448, !12, i64 1452, !12, i64 1456, !11, i64 1464, !11, i64 1472, !11, i64 1480, !13, i64 1488, !13, i64 1496, !13, i64 1504, !13, i64 1512, !13, i64 1520, !13, i64 1528, !13, i64 1536, !13, i64 1544, !13, i64 1552, !6, i64 1560, !13, i64 1568, !13, i64 1576, !6, i64 1584, !13, i64 1592, !13, i64 1600, !13, i64 1608, !13, i64 1616, !13, i64 1624, !13, i64 1632, !12, i64 1640, !11, i64 1648, !11, i64 1656, !11, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !6, i64 1720, !12, i64 1728, !6, i64 1736, !12, i64 1744, !6, i64 1752, !12, i64 1760, !6, i64 1768, !12, i64 1776, !12, i64 1780, !13, i64 1784, !12, i64 1792, !6, i64 1800, !12, i64 1808, !6, i64 1816, !6, i64 1824, !6, i64 1832, !6, i64 1840, !6, i64 1848, !6, i64 1856, !12, i64 1864, !12, i64 1868, !6, i64 1872, !6, i64 1880, !6, i64 1888, !6, i64 1896, !6, i64 1904, !13, i64 1912, !12, i64 1920, !12, i64 1924, !13, i64 1928, !11, i64 1936, !11, i64 1944, !11, i64 1952, !12, i64 1960, !12, i64 1964, !11, i64 1968, !12, i64 1976, !12, i64 1980, !12, i64 1984, !12, i64 1988, !12, i64 1992, !12, i64 1996, !12, i64 2000, !12, i64 2004, !12, i64 2008, !12, i64 2012, !12, i64 2016, !12, i64 2020, !12, i64 2024, !12, i64 2028, !12, i64 2032, !12, i64 2036, !6, i64 2040, !6, i64 2048, !6, i64 2056, !6, i64 2064, !13, i64 2072, !12, i64 2080, !7, i64 2088, !12, i64 2280, !13, i64 2288, !6, i64 2296, !12, i64 2304, !6, i64 2312, !6, i64 2320, !11, i64 2328, !11, i64 2336, !11, i64 2344, !6, i64 2352, !6, i64 2360, !6, i64 2368, !11, i64 2376, !11, i64 2384, !12, i64 2392, !12, i64 2396, !13, i64 2400, !6, i64 2408, !12, i64 2416, !6, i64 2424, !6, i64 2432, !6, i64 2440, !12, i64 2448, !6, i64 2456, !12, i64 2464}
!11 = !{!"double", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !6, i64 8}
!15 = !{!"_generic_N_Vector", !6, i64 0, !6, i64 8, !6, i64 16}
!16 = !{!17, !6, i64 200}
!17 = !{!"_generic_N_Vector_Ops", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!18 = !{!17, !6, i64 208}
!19 = !{!10, !6, i64 1896}
!20 = !{!10, !6, i64 1872}
!21 = !{!10, !6, i64 1880}
!22 = !{!10, !6, i64 1888}
!23 = !{!24, !13, i64 40}
!24 = !{!"", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !13, i64 32, !13, i64 40}
!25 = !{!24, !6, i64 8}
!26 = !{!24, !6, i64 16}
!27 = !{!24, !6, i64 24}
!28 = !{!10, !6, i64 1904}
!29 = !{!24, !13, i64 32}
!30 = !{!12, !12, i64 0}
!31 = !{!10, !11, i64 1312}
!32 = !{!11, !11, i64 0}
!33 = !{!10, !11, i64 992}
!34 = !{!10, !6, i64 16}
!35 = !{!10, !11, i64 1032}
!36 = !{!10, !6, i64 24}
!37 = !{!10, !6, i64 440}
!38 = !{!10, !11, i64 8}
!39 = !{!10, !11, i64 1320}
!40 = !{!24, !11, i64 0}
!41 = !{!10, !13, i64 1672}
!42 = !{!13, !13, i64 0}
!43 = !{!10, !13, i64 1680}
!44 = !{!10, !12, i64 2464}
!45 = !{!10, !6, i64 2456}
!46 = !{!47, !12, i64 56}
!47 = !{!"CVadjMemRec", !11, i64 0, !11, i64 8, !12, i64 16, !12, i64 20, !11, i64 24, !12, i64 32, !11, i64 40, !6, i64 48, !12, i64 56, !6, i64 64, !12, i64 72, !6, i64 80, !12, i64 88, !6, i64 96, !13, i64 104, !13, i64 112, !6, i64 120, !13, i64 128, !12, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !7, i64 192, !7, i64 296, !7, i64 400, !6, i64 504, !6, i64 512}
!48 = !{!47, !6, i64 48}
!49 = !{!50, !12, i64 0}
!50 = !{!"CVodeBMemRec", !12, i64 0, !11, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !6, i64 112, !6, i64 120}
!51 = !{!50, !6, i64 120}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!50, !6, i64 16}

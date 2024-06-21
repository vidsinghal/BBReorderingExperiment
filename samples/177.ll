; ModuleID = 'samples/177.bc'
source_filename = "../Source/umf_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SymbolicType = type { double, double, double, double, double, double, double, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [64 x i32], [64 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: uwtable
define i32 @umfzi_kernel(ptr noundef %Ap, ptr noundef %Ai, ptr noundef %Ax, ptr noundef %Az, ptr noundef %Numeric, ptr noundef %Work, ptr noundef %Symbolic) #0 {
entry:
  %retval = alloca i32, align 4
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %Ax.addr = alloca ptr, align 8
  %Az.addr = alloca ptr, align 8
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %Symbolic.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %chain = alloca i32, align 4
  %nchains = alloca i32, align 4
  %Chain_start = alloca ptr, align 8
  %status = alloca i32, align 4
  %fixQ = alloca i32, align 4
  %evaporate = alloca i32, align 4
  %Front_npivcol = alloca ptr, align 8
  %jmax = alloca i32, align 4
  %nb = alloca i32, align 4
  %drop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !4
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !4
  store ptr %Ax, ptr %Ax.addr, align 8, !tbaa !4
  store ptr %Az, ptr %Az.addr, align 8, !tbaa !4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  store ptr %Symbolic, ptr %Symbolic.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %chain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nchains) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Chain_start) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %fixQ) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %evaporate) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Front_npivcol) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %jmax) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %drop) #3
  %0 = load ptr, ptr %Ap.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %Ai.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %Ax.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %Az.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %call = call i32 @umfzi_kernel_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %nchains1 = getelementptr inbounds %struct.SymbolicType, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %nchains1, align 8, !tbaa !8
  store i32 %8, ptr %nchains, align 4, !tbaa !12
  %9 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %Chain_start2 = getelementptr inbounds %struct.SymbolicType, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %Chain_start2, align 8, !tbaa !13
  store ptr %10, ptr %Chain_start, align 8, !tbaa !4
  %11 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %Front_npivcol3 = getelementptr inbounds %struct.SymbolicType, ptr %11, i32 0, i32 15
  %12 = load ptr, ptr %Front_npivcol3, align 8, !tbaa !14
  store ptr %12, ptr %Front_npivcol, align 8, !tbaa !4
  %13 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %nb4 = getelementptr inbounds %struct.SymbolicType, ptr %13, i32 0, i32 33
  %14 = load i32, ptr %nb4, align 4, !tbaa !15
  store i32 %14, ptr %nb, align 4, !tbaa !12
  %15 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %fixQ5 = getelementptr inbounds %struct.SymbolicType, ptr %15, i32 0, i32 39
  %16 = load i32, ptr %fixQ5, align 4, !tbaa !16
  store i32 %16, ptr %fixQ, align 4, !tbaa !12
  %17 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %droptol = getelementptr inbounds %struct.NumericType, ptr %17, i32 0, i32 3
  %18 = load double, ptr %droptol, align 8, !tbaa !17
  %cmp = fcmp ogt double %18, 0.000000e+00
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %drop, align 4, !tbaa !12
  store i32 0, ptr %chain, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc138, %if.end
  %19 = load i32, ptr %chain, align 4, !tbaa !12
  %20 = load i32, ptr %nchains, align 4, !tbaa !12
  %cmp6 = icmp slt i32 %19, %20
  br i1 %cmp6, label %for.body, label %for.end140

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %Chain_start, align 8, !tbaa !4
  %22 = load i32, ptr %chain, align 4, !tbaa !12
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds i32, ptr %21, i64 %idxprom
  %23 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %23, ptr %f1, align 4, !tbaa !12
  %24 = load ptr, ptr %Chain_start, align 8, !tbaa !4
  %25 = load i32, ptr %chain, align 4, !tbaa !12
  %add = add nsw i32 %25, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %24, i64 %idxprom8
  %26 = load i32, ptr %arrayidx9, align 4, !tbaa !12
  %sub = sub nsw i32 %26, 1
  store i32 %sub, ptr %f2, align 4, !tbaa !12
  %27 = load i32, ptr %chain, align 4, !tbaa !12
  %28 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %call10 = call i32 @umfzi_start_front(i32 noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %31 = load i32, ptr %f1, align 4, !tbaa !12
  %32 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %frontid = getelementptr inbounds %struct.WorkType, ptr %32, i32 0, i32 52
  store i32 %31, ptr %frontid, align 4, !tbaa !19
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc114, %if.end13
  %33 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %frontid15 = getelementptr inbounds %struct.WorkType, ptr %33, i32 0, i32 52
  %34 = load i32, ptr %frontid15, align 4, !tbaa !19
  %35 = load i32, ptr %f2, align 4, !tbaa !12
  %cmp16 = icmp sle i32 %34, %35
  br i1 %cmp16, label %for.body18, label %for.end117

for.body18:                                       ; preds = %for.cond14
  %36 = load ptr, ptr %Front_npivcol, align 8, !tbaa !4
  %37 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %frontid19 = getelementptr inbounds %struct.WorkType, ptr %37, i32 0, i32 52
  %38 = load i32, ptr %frontid19, align 4, !tbaa !19
  %idxprom20 = sext i32 %38 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %36, i64 %idxprom20
  %39 = load i32, ptr %arrayidx21, align 4, !tbaa !12
  %40 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand = getelementptr inbounds %struct.WorkType, ptr %40, i32 0, i32 38
  store i32 %39, ptr %ncand, align 4, !tbaa !21
  %41 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nextcand = getelementptr inbounds %struct.WorkType, ptr %41, i32 0, i32 39
  %42 = load i32, ptr %nextcand, align 8, !tbaa !22
  %43 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %lo = getelementptr inbounds %struct.WorkType, ptr %43, i32 0, i32 40
  store i32 %42, ptr %lo, align 4, !tbaa !23
  %44 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nextcand22 = getelementptr inbounds %struct.WorkType, ptr %44, i32 0, i32 39
  %45 = load i32, ptr %nextcand22, align 8, !tbaa !22
  %46 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand23 = getelementptr inbounds %struct.WorkType, ptr %46, i32 0, i32 38
  %47 = load i32, ptr %ncand23, align 4, !tbaa !21
  %add24 = add nsw i32 %45, %47
  %sub25 = sub nsw i32 %add24, 1
  %48 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %hi = getelementptr inbounds %struct.WorkType, ptr %48, i32 0, i32 41
  store i32 %sub25, ptr %hi, align 8, !tbaa !24
  %49 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand26 = getelementptr inbounds %struct.WorkType, ptr %49, i32 0, i32 38
  %50 = load i32, ptr %ncand26, align 4, !tbaa !21
  %cmp27 = icmp slt i32 128, %50
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body18
  br label %cond.end

cond.false:                                       ; preds = %for.body18
  %51 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand29 = getelementptr inbounds %struct.WorkType, ptr %51, i32 0, i32 38
  %52 = load i32, ptr %ncand29, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %52, %cond.false ]
  store i32 %cond, ptr %jmax, align 4, !tbaa !12
  %53 = load i32, ptr %fixQ, align 4, !tbaa !12
  %tobool30 = icmp ne i32 %53, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %cond.end
  store i32 1, ptr %jmax, align 4, !tbaa !12
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %cond.end
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %if.end32
  %54 = load i32, ptr %j, align 4, !tbaa !12
  %55 = load i32, ptr %jmax, align 4, !tbaa !12
  %cmp34 = icmp slt i32 %54, %55
  br i1 %cmp34, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond33
  %56 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nextcand37 = getelementptr inbounds %struct.WorkType, ptr %56, i32 0, i32 39
  %57 = load i32, ptr %nextcand37, align 8, !tbaa !22
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %nextcand37, align 8, !tbaa !22
  %58 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates = getelementptr inbounds %struct.WorkType, ptr %58, i32 0, i32 33
  %59 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom38 = sext i32 %59 to i64
  %arrayidx39 = getelementptr inbounds [128 x i32], ptr %Candidates, i64 0, i64 %idxprom38
  store i32 %57, ptr %arrayidx39, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %60 = load i32, ptr %j, align 4, !tbaa !12
  %inc40 = add nsw i32 %60, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !12
  br label %for.cond33, !llvm.loop !25

for.end:                                          ; preds = %for.cond33
  %61 = load i32, ptr %jmax, align 4, !tbaa !12
  %62 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nCandidates = getelementptr inbounds %struct.WorkType, ptr %62, i32 0, i32 34
  store i32 %61, ptr %nCandidates, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %if.end113, %if.then51, %for.end
  %63 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand41 = getelementptr inbounds %struct.WorkType, ptr %63, i32 0, i32 38
  %64 = load i32, ptr %ncand41, align 4, !tbaa !21
  %cmp42 = icmp sgt i32 %64, 0
  br i1 %cmp42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %65 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %call44 = call i32 @umfzi_local_search(ptr noundef %65, ptr noundef %66, ptr noundef %67)
  store i32 %call44, ptr %status, align 4, !tbaa !12
  %68 = load i32, ptr %status, align 4, !tbaa !12
  %cmp45 = icmp eq i32 %68, -11
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %while.body
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %while.body
  %69 = load i32, ptr %status, align 4, !tbaa !12
  %cmp49 = icmp eq i32 %69, 1
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  br label %while.cond, !llvm.loop !28

if.end52:                                         ; preds = %if.end48
  %70 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update = getelementptr inbounds %struct.WorkType, ptr %70, i32 0, i32 45
  %71 = load i32, ptr %do_update, align 8, !tbaa !29
  %tobool53 = icmp ne i32 %71, 0
  br i1 %tobool53, label %if.then54, label %if.end66

if.then54:                                        ; preds = %if.end52
  %72 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @umfzi_blas3_update(ptr noundef %72)
  %73 = load i32, ptr %drop, align 4, !tbaa !12
  %tobool55 = icmp ne i32 %73, 0
  br i1 %tobool55, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then54
  %74 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call57 = call i32 @umfzi_store_lu_drop(ptr noundef %74, ptr noundef %75)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.then56
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.then56
  br label %if.end65

if.else:                                          ; preds = %if.then54
  %76 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call61 = call i32 @umfzi_store_lu(ptr noundef %76, ptr noundef %77)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.else
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end60
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end52
  %78 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend = getelementptr inbounds %struct.WorkType, ptr %78, i32 0, i32 44
  %79 = load i32, ptr %do_extend, align 4, !tbaa !30
  %tobool67 = icmp ne i32 %79, 0
  br i1 %tobool67, label %if.then68, label %if.else73

if.then68:                                        ; preds = %if.end66
  %80 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %81 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call69 = call i32 @umfzi_extend_front(ptr noundef %80, ptr noundef %81)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.then68
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.then68
  br label %if.end82

if.else73:                                        ; preds = %if.end66
  %82 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %84 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %call74 = call i32 @umfzi_create_element(ptr noundef %82, ptr noundef %83, ptr noundef %84)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.else73
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.else73
  %85 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call78 = call i32 @umfzi_init_front(ptr noundef %85, ptr noundef %86)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end77
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end72
  %87 = load i32, ptr %fixQ, align 4, !tbaa !12
  %tobool83 = icmp ne i32 %87, 0
  br i1 %tobool83, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.end82
  %88 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @umfzi_assemble_fixq(ptr noundef %88, ptr noundef %89)
  br label %if.end86

if.else85:                                        ; preds = %if.end82
  %90 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %91 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @umfzi_assemble(ptr noundef %90, ptr noundef %91)
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.then84
  %92 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @umfzi_scale_column(ptr noundef %92, ptr noundef %93)
  %94 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows = getelementptr inbounds %struct.WorkType, ptr %94, i32 0, i32 65
  %95 = load i32, ptr %fnrows, align 8, !tbaa !31
  %cmp87 = icmp eq i32 %95, 0
  br i1 %cmp87, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end86
  %96 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols = getelementptr inbounds %struct.WorkType, ptr %96, i32 0, i32 66
  %97 = load i32, ptr %fncols, align 4, !tbaa !32
  %cmp89 = icmp eq i32 %97, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end86
  %98 = phi i1 [ true, %if.end86 ], [ %cmp89, %lor.rhs ]
  %lor.ext = zext i1 %98 to i32
  store i32 %lor.ext, ptr %evaporate, align 4, !tbaa !12
  %99 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnpiv = getelementptr inbounds %struct.WorkType, ptr %99, i32 0, i32 73
  %100 = load i32, ptr %fnpiv, align 8, !tbaa !33
  %101 = load i32, ptr %nb, align 4, !tbaa !12
  %cmp91 = icmp sge i32 %100, %101
  br i1 %cmp91, label %if.then94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %102 = load i32, ptr %evaporate, align 4, !tbaa !12
  %tobool93 = icmp ne i32 %102, 0
  br i1 %tobool93, label %if.then94, label %if.end107

if.then94:                                        ; preds = %lor.lhs.false, %lor.end
  %103 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @umfzi_blas3_update(ptr noundef %103)
  %104 = load i32, ptr %drop, align 4, !tbaa !12
  %tobool95 = icmp ne i32 %104, 0
  br i1 %tobool95, label %if.then96, label %if.else101

if.then96:                                        ; preds = %if.then94
  %105 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call97 = call i32 @umfzi_store_lu_drop(ptr noundef %105, ptr noundef %106)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.then96
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end100:                                        ; preds = %if.then96
  br label %if.end106

if.else101:                                       ; preds = %if.then94
  %107 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %108 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call102 = call i32 @umfzi_store_lu(ptr noundef %107, ptr noundef %108)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.else101
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %if.else101
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end100
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %lor.lhs.false
  %109 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front = getelementptr inbounds %struct.WorkType, ptr %109, i32 0, i32 79
  store i32 0, ptr %pivrow_in_front, align 8, !tbaa !34
  %110 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front = getelementptr inbounds %struct.WorkType, ptr %110, i32 0, i32 80
  store i32 0, ptr %pivcol_in_front, align 4, !tbaa !35
  %111 = load i32, ptr %evaporate, align 4, !tbaa !12
  %tobool108 = icmp ne i32 %111, 0
  br i1 %tobool108, label %if.then109, label %if.end113

if.then109:                                       ; preds = %if.end107
  %112 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %114 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %call110 = call i32 @umfzi_create_element(ptr noundef %112, ptr noundef %113, ptr noundef %114)
  %115 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows111 = getelementptr inbounds %struct.WorkType, ptr %115, i32 0, i32 65
  store i32 0, ptr %fnrows111, align 8, !tbaa !31
  %116 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols112 = getelementptr inbounds %struct.WorkType, ptr %116, i32 0, i32 66
  store i32 0, ptr %fncols112, align 4, !tbaa !32
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.end107
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  br label %for.inc114

for.inc114:                                       ; preds = %while.end
  %117 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %frontid115 = getelementptr inbounds %struct.WorkType, ptr %117, i32 0, i32 52
  %118 = load i32, ptr %frontid115, align 4, !tbaa !19
  %inc116 = add nsw i32 %118, 1
  store i32 %inc116, ptr %frontid115, align 4, !tbaa !19
  br label %for.cond14, !llvm.loop !36

for.end117:                                       ; preds = %for.cond14
  %119 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @umfzi_blas3_update(ptr noundef %119)
  %120 = load i32, ptr %drop, align 4, !tbaa !12
  %tobool118 = icmp ne i32 %120, 0
  br i1 %tobool118, label %if.then119, label %if.else124

if.then119:                                       ; preds = %for.end117
  %121 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %122 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call120 = call i32 @umfzi_store_lu_drop(ptr noundef %121, ptr noundef %122)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.end123, label %if.then122

if.then122:                                       ; preds = %if.then119
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end123:                                        ; preds = %if.then119
  br label %if.end129

if.else124:                                       ; preds = %for.end117
  %123 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %call125 = call i32 @umfzi_store_lu(ptr noundef %123, ptr noundef %124)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end128, label %if.then127

if.then127:                                       ; preds = %if.else124
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end128:                                        ; preds = %if.else124
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end123
  %125 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows130 = getelementptr inbounds %struct.WorkType, ptr %125, i32 0, i32 65
  %126 = load i32, ptr %fnrows130, align 8, !tbaa !31
  %127 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new = getelementptr inbounds %struct.WorkType, ptr %127, i32 0, i32 77
  store i32 %126, ptr %fnrows_new, align 8, !tbaa !37
  %128 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols131 = getelementptr inbounds %struct.WorkType, ptr %128, i32 0, i32 66
  %129 = load i32, ptr %fncols131, align 4, !tbaa !32
  %130 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new = getelementptr inbounds %struct.WorkType, ptr %130, i32 0, i32 78
  store i32 %129, ptr %fncols_new, align 4, !tbaa !38
  %131 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %132 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %133 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %call132 = call i32 @umfzi_create_element(ptr noundef %131, ptr noundef %132, ptr noundef %133)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.end135, label %if.then134

if.then134:                                       ; preds = %if.end129
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end135:                                        ; preds = %if.end129
  %134 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows136 = getelementptr inbounds %struct.WorkType, ptr %134, i32 0, i32 65
  store i32 0, ptr %fnrows136, align 8, !tbaa !31
  %135 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols137 = getelementptr inbounds %struct.WorkType, ptr %135, i32 0, i32 66
  store i32 0, ptr %fncols137, align 4, !tbaa !32
  br label %for.inc138

for.inc138:                                       ; preds = %if.end135
  %136 = load i32, ptr %chain, align 4, !tbaa !12
  %inc139 = add nsw i32 %136, 1
  store i32 %inc139, ptr %chain, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !39

for.end140:                                       ; preds = %for.cond
  %137 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %138 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @umfzi_kernel_wrapup(ptr noundef %137, ptr noundef %138, ptr noundef %139)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end140, %if.then134, %if.then127, %if.then122, %if.then104, %if.then99, %if.then80, %if.then76, %if.then71, %if.then63, %if.then59, %if.then47, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %drop) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %jmax) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Front_npivcol) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %evaporate) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %fixQ) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Chain_start) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nchains) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %chain) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  %140 = load i32, ptr %retval, align 4
  ret i32 %140
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @umfzi_kernel_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @umfzi_start_front(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @umfzi_local_search(ptr noundef, ptr noundef, ptr noundef) #2

declare void @umfzi_blas3_update(ptr noundef) #2

declare i32 @umfzi_store_lu_drop(ptr noundef, ptr noundef) #2

declare i32 @umfzi_store_lu(ptr noundef, ptr noundef) #2

declare i32 @umfzi_extend_front(ptr noundef, ptr noundef) #2

declare i32 @umfzi_create_element(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @umfzi_init_front(ptr noundef, ptr noundef) #2

declare void @umfzi_assemble_fixq(ptr noundef, ptr noundef) #2

declare void @umfzi_assemble(ptr noundef, ptr noundef) #2

declare void @umfzi_scale_column(ptr noundef, ptr noundef) #2

declare void @umfzi_kernel_wrapup(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!9, !11, i64 64}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !11, i64 96, !11, i64 100, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !11, i64 176, !11, i64 180, !11, i64 184, !5, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260}
!10 = !{!"double", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!9, !5, i64 72}
!14 = !{!9, !5, i64 104}
!15 = !{!9, !11, i64 220}
!16 = !{!9, !11, i64 244}
!17 = !{!18, !10, i64 24}
!18 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !11, i64 92, !5, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !5, i64 208, !11, i64 216, !5, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304}
!19 = !{!20, !11, i64 780}
!20 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !11, i64 112, !11, i64 116, !5, i64 120, !5, i64 128, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !6, i64 196, !11, i64 708, !11, i64 712, !11, i64 716, !11, i64 720, !11, i64 724, !11, i64 728, !11, i64 732, !11, i64 736, !11, i64 740, !11, i64 744, !11, i64 748, !11, i64 752, !11, i64 756, !11, i64 760, !11, i64 764, !11, i64 768, !11, i64 772, !11, i64 776, !11, i64 780, !11, i64 784, !5, i64 792, !6, i64 800, !6, i64 1056, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !5, i64 1344, !5, i64 1352, !5, i64 1360, !5, i64 1368, !11, i64 1376, !11, i64 1380, !11, i64 1384, !11, i64 1388, !11, i64 1392, !11, i64 1396, !11, i64 1400, !11, i64 1404, !11, i64 1408, !11, i64 1412, !11, i64 1416, !11, i64 1420, !11, i64 1424, !11, i64 1428, !11, i64 1432, !11, i64 1436}
!21 = !{!20, !11, i64 724}
!22 = !{!20, !11, i64 728}
!23 = !{!20, !11, i64 732}
!24 = !{!20, !11, i64 736}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!20, !11, i64 708}
!28 = distinct !{!28, !26}
!29 = !{!20, !11, i64 752}
!30 = !{!20, !11, i64 748}
!31 = !{!20, !11, i64 1376}
!32 = !{!20, !11, i64 1380}
!33 = !{!20, !11, i64 1408}
!34 = !{!20, !11, i64 1432}
!35 = !{!20, !11, i64 1436}
!36 = distinct !{!36, !26}
!37 = !{!20, !11, i64 1424}
!38 = !{!20, !11, i64 1428}
!39 = distinct !{!39, !26}

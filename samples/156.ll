; ModuleID = 'samples/156.bc'
source_filename = "trifactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%struct.distdef = type { i32, i32, ptr }
%struct.hypre_PilutSolverGlobals = type { ptr, i32, i32, double, i32, ptr, ptr, i32, ptr, i32, ptr, i32, i32, double, double, i32, i32, i32, i32, i32, i32, ptr, ptr, [256 x i32], [256 x i32], [256 x i32] }
%struct.factormatdef = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [500 x i32], %struct.cphasedef, %struct.cphasedef }
%struct.cphasedef = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@.str = private unnamed_addr constant [29 x i8] c"hypre_SetUpLUFactor: petotal\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"hypre_SetUpLUFactor: rind\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"hypre_SetUpLUFactor: imap\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"hypre_SetUpLUFactor: ldu->gatherbuf\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"hypre_SetUpFactor: ldu->lx\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"hypre_SetUpFactor: ldu->ux\00", align 1
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"hypre_SetUpFactor: TriSolveComm->auxsptr\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"hypre_SetUpFactor: TriSolveComm->spes\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"hypre_SetUpFactor: TriSolveComm->sptr\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"hypre_SetUpFactor: TriSolveComm->sindex\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"hypre_SetUpFactor: TriSolveComm->rpes\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"hypre_SetUpFactor: TriSolveComm->raddr\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"hypre_SetUpFactor: TriSolveComm->rnum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"hypre_SetUpFactor: rnum\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"hypre_SetUpFactor: rowptr\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"hypre_SetUpFactor: colind\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"hypre_SetUpFactor: values\00", align 1

; Function Attrs: nounwind uwtable
define void @hypre_LDUSolve(ptr noundef %ddist, ptr noundef %ldu, ptr noundef %x, ptr noundef %b, ptr noundef %globals) #0 {
entry:
  %ddist.addr = alloca ptr, align 8
  %ldu.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %globals.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %TAG = alloca i32, align 4
  %nlevels = alloca i32, align 4
  %snbrpes = alloca i32, align 4
  %rnbrpes = alloca i32, align 4
  %perm = alloca ptr, align 8
  %iperm = alloca ptr, align 8
  %nnodes = alloca ptr, align 8
  %rowptr = alloca ptr, align 8
  %colind = alloca ptr, align 8
  %spes = alloca ptr, align 8
  %sptr = alloca ptr, align 8
  %sindex = alloca ptr, align 8
  %auxsptr = alloca ptr, align 8
  %rpes = alloca ptr, align 8
  %rdone = alloca ptr, align 8
  %rnum = alloca ptr, align 8
  %lx = alloca ptr, align 8
  %ux = alloca ptr, align 8
  %values = alloca ptr, align 8
  %dvalues = alloca ptr, align 8
  %gatherbuf = alloca ptr, align 8
  %raddr = alloca ptr, align 8
  %xx = alloca double, align 8
  %Status = alloca %struct.ompi_status_public_t, align 8
  %receive_requests = alloca ptr, align 8
  store ptr %ddist, ptr %ddist.addr, align 8, !tbaa !4
  store ptr %ldu, ptr %ldu.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %TAG) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlevels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %snbrpes) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnbrpes) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %perm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iperm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nnodes) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %colind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %spes) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sindex) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxsptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpes) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdone) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rnum) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %lx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ux) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dvalues) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gatherbuf) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %raddr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xx) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr %Status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %receive_requests) #5
  %0 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %ddist_lnrows = getelementptr inbounds %struct.distdef, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %ddist_lnrows, align 4, !tbaa !8
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %2, i32 0, i32 16
  store i32 %1, ptr %_lnrows, align 4, !tbaa !11
  %3 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %perm1 = getelementptr inbounds %struct.factormatdef, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %perm1, align 8, !tbaa !14
  store ptr %4, ptr %perm, align 8, !tbaa !4
  %5 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %iperm2 = getelementptr inbounds %struct.factormatdef, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %iperm2, align 8, !tbaa !17
  store ptr %6, ptr %iperm, align 8, !tbaa !4
  %7 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %nnodes3 = getelementptr inbounds %struct.factormatdef, ptr %7, i32 0, i32 20
  %arraydecay = getelementptr inbounds [500 x i32], ptr %nnodes3, i64 0, i64 0
  store ptr %arraydecay, ptr %nnodes, align 8, !tbaa !4
  %8 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %nlevels4 = getelementptr inbounds %struct.factormatdef, ptr %8, i32 0, i32 19
  %9 = load i32, ptr %nlevels4, align 8, !tbaa !18
  store i32 %9, ptr %nlevels, align 4, !tbaa !19
  %10 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %dvalues5 = getelementptr inbounds %struct.factormatdef, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %dvalues5, align 8, !tbaa !20
  store ptr %11, ptr %dvalues, align 8, !tbaa !4
  %12 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %gatherbuf6 = getelementptr inbounds %struct.factormatdef, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %gatherbuf6, align 8, !tbaa !21
  store ptr %13, ptr %gatherbuf, align 8, !tbaa !4
  %14 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lx7 = getelementptr inbounds %struct.factormatdef, ptr %14, i32 0, i32 15
  %15 = load ptr, ptr %lx7, align 8, !tbaa !22
  store ptr %15, ptr %lx, align 8, !tbaa !4
  %16 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ux8 = getelementptr inbounds %struct.factormatdef, ptr %16, i32 0, i32 16
  %17 = load ptr, ptr %ux8, align 8, !tbaa !23
  store ptr %17, ptr %ux, align 8, !tbaa !4
  %18 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm = getelementptr inbounds %struct.factormatdef, ptr %18, i32 0, i32 21
  %snbrpes9 = getelementptr inbounds %struct.cphasedef, ptr %lcomm, i32 0, i32 8
  %19 = load i32, ptr %snbrpes9, align 8, !tbaa !24
  store i32 %19, ptr %snbrpes, align 4, !tbaa !19
  %20 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm10 = getelementptr inbounds %struct.factormatdef, ptr %20, i32 0, i32 21
  %spes11 = getelementptr inbounds %struct.cphasedef, ptr %lcomm10, i32 0, i32 1
  %21 = load ptr, ptr %spes11, align 8, !tbaa !25
  store ptr %21, ptr %spes, align 8, !tbaa !4
  %22 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm12 = getelementptr inbounds %struct.factormatdef, ptr %22, i32 0, i32 21
  %sptr13 = getelementptr inbounds %struct.cphasedef, ptr %lcomm12, i32 0, i32 2
  %23 = load ptr, ptr %sptr13, align 8, !tbaa !26
  store ptr %23, ptr %sptr, align 8, !tbaa !4
  %24 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm14 = getelementptr inbounds %struct.factormatdef, ptr %24, i32 0, i32 21
  %sindex15 = getelementptr inbounds %struct.cphasedef, ptr %lcomm14, i32 0, i32 3
  %25 = load ptr, ptr %sindex15, align 8, !tbaa !27
  store ptr %25, ptr %sindex, align 8, !tbaa !4
  %26 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm16 = getelementptr inbounds %struct.factormatdef, ptr %26, i32 0, i32 21
  %auxsptr17 = getelementptr inbounds %struct.cphasedef, ptr %lcomm16, i32 0, i32 4
  %27 = load ptr, ptr %auxsptr17, align 8, !tbaa !28
  store ptr %27, ptr %auxsptr, align 8, !tbaa !4
  %28 = load ptr, ptr %sptr, align 8, !tbaa !4
  %cmp = icmp ne ptr %28, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %30 = load ptr, ptr %sptr, align 8, !tbaa !4
  %31 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %add = add nsw i32 %31, 1
  %conv = sext i32 %add to i64
  call void @hypre_memcpy_idx(ptr noundef %29, ptr noundef %30, i64 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %32 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm18 = getelementptr inbounds %struct.factormatdef, ptr %32, i32 0, i32 21
  %rnbrpes19 = getelementptr inbounds %struct.cphasedef, ptr %lcomm18, i32 0, i32 9
  %33 = load i32, ptr %rnbrpes19, align 4, !tbaa !29
  store i32 %33, ptr %rnbrpes, align 4, !tbaa !19
  %34 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm20 = getelementptr inbounds %struct.factormatdef, ptr %34, i32 0, i32 21
  %raddr21 = getelementptr inbounds %struct.cphasedef, ptr %lcomm20, i32 0, i32 0
  %35 = load ptr, ptr %raddr21, align 8, !tbaa !30
  store ptr %35, ptr %raddr, align 8, !tbaa !4
  %36 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm22 = getelementptr inbounds %struct.factormatdef, ptr %36, i32 0, i32 21
  %rpes23 = getelementptr inbounds %struct.cphasedef, ptr %lcomm22, i32 0, i32 5
  %37 = load ptr, ptr %rpes23, align 8, !tbaa !31
  store ptr %37, ptr %rpes, align 8, !tbaa !4
  %38 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm24 = getelementptr inbounds %struct.factormatdef, ptr %38, i32 0, i32 21
  %rdone25 = getelementptr inbounds %struct.cphasedef, ptr %lcomm24, i32 0, i32 6
  %39 = load ptr, ptr %rdone25, align 8, !tbaa !32
  store ptr %39, ptr %rdone, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i32, ptr %i, align 4, !tbaa !19
  %41 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp26 = icmp slt i32 %40, %41
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %rdone, align 8, !tbaa !4
  %43 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds i32, ptr %42, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %45 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lrowptr = getelementptr inbounds %struct.factormatdef, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %lrowptr, align 8, !tbaa !35
  store ptr %46, ptr %rowptr, align 8, !tbaa !4
  %47 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcolind = getelementptr inbounds %struct.factormatdef, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %lcolind, align 8, !tbaa !36
  store ptr %48, ptr %colind, align 8, !tbaa !4
  %49 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lvalues = getelementptr inbounds %struct.factormatdef, ptr %49, i32 0, i32 3
  %50 = load ptr, ptr %lvalues, align 8, !tbaa !37
  store ptr %50, ptr %values, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc72, %for.end
  %51 = load i32, ptr %i, align 4, !tbaa !19
  %52 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %53 = load i32, ptr %nlevels, align 4, !tbaa !19
  %cmp29 = icmp slt i32 1, %53
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond28
  br label %cond.end

cond.false:                                       ; preds = %for.cond28
  %54 = load i32, ptr %nlevels, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %54, %cond.false ]
  %cmp31 = icmp slt i32 0, %cond
  br i1 %cmp31, label %cond.true33, label %cond.false40

cond.true33:                                      ; preds = %cond.end
  %55 = load i32, ptr %nlevels, align 4, !tbaa !19
  %cmp34 = icmp slt i32 1, %55
  br i1 %cmp34, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %cond.true33
  br label %cond.end38

cond.false37:                                     ; preds = %cond.true33
  %56 = load i32, ptr %nlevels, align 4, !tbaa !19
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i32 [ 1, %cond.true36 ], [ %56, %cond.false37 ]
  br label %cond.end41

cond.false40:                                     ; preds = %cond.end
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %cond.end38
  %cond42 = phi i32 [ %cond39, %cond.end38 ], [ 0, %cond.false40 ]
  %idxprom43 = sext i32 %cond42 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %52, i64 %idxprom43
  %57 = load i32, ptr %arrayidx44, align 4, !tbaa !19
  %cmp45 = icmp slt i32 %51, %57
  br i1 %cmp45, label %for.body47, label %for.end74

for.body47:                                       ; preds = %cond.end41
  store double 0.000000e+00, ptr %xx, align 8, !tbaa !38
  %58 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %59 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom48 = sext i32 %59 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %58, i64 %idxprom48
  %60 = load i32, ptr %arrayidx49, align 4, !tbaa !19
  store i32 %60, ptr %j, align 4, !tbaa !19
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc63, %for.body47
  %61 = load i32, ptr %j, align 4, !tbaa !19
  %62 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %63 = load i32, ptr %i, align 4, !tbaa !19
  %add51 = add nsw i32 %63, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %62, i64 %idxprom52
  %64 = load i32, ptr %arrayidx53, align 4, !tbaa !19
  %cmp54 = icmp slt i32 %61, %64
  br i1 %cmp54, label %for.body56, label %for.end65

for.body56:                                       ; preds = %for.cond50
  %65 = load ptr, ptr %values, align 8, !tbaa !4
  %66 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom57 = sext i32 %66 to i64
  %arrayidx58 = getelementptr inbounds double, ptr %65, i64 %idxprom57
  %67 = load double, ptr %arrayidx58, align 8, !tbaa !38
  %68 = load ptr, ptr %lx, align 8, !tbaa !4
  %69 = load ptr, ptr %colind, align 8, !tbaa !4
  %70 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom59 = sext i32 %70 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %69, i64 %idxprom59
  %71 = load i32, ptr %arrayidx60, align 4, !tbaa !19
  %idxprom61 = sext i32 %71 to i64
  %arrayidx62 = getelementptr inbounds double, ptr %68, i64 %idxprom61
  %72 = load double, ptr %arrayidx62, align 8, !tbaa !38
  %73 = load double, ptr %xx, align 8, !tbaa !38
  %74 = call double @llvm.fmuladd.f64(double %67, double %72, double %73)
  store double %74, ptr %xx, align 8, !tbaa !38
  br label %for.inc63

for.inc63:                                        ; preds = %for.body56
  %75 = load i32, ptr %j, align 4, !tbaa !19
  %inc64 = add nsw i32 %75, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !19
  br label %for.cond50, !llvm.loop !39

for.end65:                                        ; preds = %for.cond50
  %76 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %perm, align 8, !tbaa !4
  %78 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom66 = sext i32 %78 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %77, i64 %idxprom66
  %79 = load i32, ptr %arrayidx67, align 4, !tbaa !19
  %idxprom68 = sext i32 %79 to i64
  %arrayidx69 = getelementptr inbounds double, ptr %76, i64 %idxprom68
  %80 = load double, ptr %arrayidx69, align 8, !tbaa !38
  %81 = load double, ptr %xx, align 8, !tbaa !38
  %sub = fsub double %80, %81
  %82 = load ptr, ptr %lx, align 8, !tbaa !4
  %83 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom70 = sext i32 %83 to i64
  %arrayidx71 = getelementptr inbounds double, ptr %82, i64 %idxprom70
  store double %sub, ptr %arrayidx71, align 8, !tbaa !38
  br label %for.inc72

for.inc72:                                        ; preds = %for.end65
  %84 = load i32, ptr %i, align 4, !tbaa !19
  %inc73 = add nsw i32 %84, 1
  store i32 %inc73, ptr %i, align 4, !tbaa !19
  br label %for.cond28, !llvm.loop !40

for.end74:                                        ; preds = %cond.end41
  %85 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %_npes, align 4, !tbaa !41
  %conv75 = sext i32 %86 to i64
  %call = call ptr @hypre_CAlloc(i64 noundef %conv75, i64 noundef 8, i32 noundef 0)
  store ptr %call, ptr %receive_requests, align 8, !tbaa !4
  store i32 1, ptr %ii, align 4, !tbaa !19
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc223, %for.end74
  %87 = load i32, ptr %ii, align 4, !tbaa !19
  %88 = load i32, ptr %nlevels, align 4, !tbaa !19
  %cmp77 = icmp slt i32 %87, %88
  br i1 %cmp77, label %for.body79, label %for.end225

for.body79:                                       ; preds = %for.cond76
  %89 = load i32, ptr %ii, align 4, !tbaa !19
  %or = or i32 256, %89
  store i32 %or, ptr %TAG, align 4, !tbaa !19
  %90 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm80 = getelementptr inbounds %struct.factormatdef, ptr %90, i32 0, i32 21
  %rnum81 = getelementptr inbounds %struct.cphasedef, ptr %lcomm80, i32 0, i32 7
  %91 = load ptr, ptr %rnum81, align 8, !tbaa !42
  %92 = load i32, ptr %ii, align 4, !tbaa !19
  %sub82 = sub nsw i32 %92, 1
  %93 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %mul = mul nsw i32 %sub82, %93
  %idxprom83 = sext i32 %mul to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %91, i64 %idxprom83
  store ptr %arrayidx84, ptr %rnum, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc111, %for.body79
  %94 = load i32, ptr %i, align 4, !tbaa !19
  %95 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp86 = icmp slt i32 %94, %95
  br i1 %cmp86, label %for.body88, label %for.end113

for.body88:                                       ; preds = %for.cond85
  %96 = load ptr, ptr %rnum, align 8, !tbaa !4
  %97 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom89 = sext i32 %97 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %96, i64 %idxprom89
  %98 = load i32, ptr %arrayidx90, align 4, !tbaa !19
  %cmp91 = icmp sgt i32 %98, 0
  br i1 %cmp91, label %if.then93, label %if.end110

if.then93:                                        ; preds = %for.body88
  %99 = load ptr, ptr %raddr, align 8, !tbaa !4
  %100 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom94 = sext i32 %100 to i64
  %arrayidx95 = getelementptr inbounds ptr, ptr %99, i64 %idxprom94
  %101 = load ptr, ptr %arrayidx95, align 8, !tbaa !4
  %102 = load ptr, ptr %rdone, align 8, !tbaa !4
  %103 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom96 = sext i32 %103 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %102, i64 %idxprom96
  %104 = load i32, ptr %arrayidx97, align 4, !tbaa !19
  %idx.ext = sext i32 %104 to i64
  %add.ptr = getelementptr inbounds double, ptr %101, i64 %idx.ext
  %105 = load ptr, ptr %rnum, align 8, !tbaa !4
  %106 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom98 = sext i32 %106 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %105, i64 %idxprom98
  %107 = load i32, ptr %arrayidx99, align 4, !tbaa !19
  %108 = load ptr, ptr %rpes, align 8, !tbaa !4
  %109 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom100 = sext i32 %109 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %108, i64 %idxprom100
  %110 = load i32, ptr %arrayidx101, align 4, !tbaa !19
  %111 = load i32, ptr %TAG, align 4, !tbaa !19
  %112 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %hypre_MPI_communicator, align 8, !tbaa !43
  %114 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %115 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom102 = sext i32 %115 to i64
  %arrayidx103 = getelementptr inbounds ptr, ptr %114, i64 %idxprom102
  %call104 = call i32 @hypre_MPI_Irecv(ptr noundef %add.ptr, i32 noundef %107, ptr noundef @ompi_mpi_double, i32 noundef %110, i32 noundef %111, ptr noundef %113, ptr noundef %arrayidx103)
  %116 = load ptr, ptr %rnum, align 8, !tbaa !4
  %117 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom105 = sext i32 %117 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %116, i64 %idxprom105
  %118 = load i32, ptr %arrayidx106, align 4, !tbaa !19
  %119 = load ptr, ptr %rdone, align 8, !tbaa !4
  %120 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom107 = sext i32 %120 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %119, i64 %idxprom107
  %121 = load i32, ptr %arrayidx108, align 4, !tbaa !19
  %add109 = add nsw i32 %121, %118
  store i32 %add109, ptr %arrayidx108, align 4, !tbaa !19
  br label %if.end110

if.end110:                                        ; preds = %if.then93, %for.body88
  br label %for.inc111

for.inc111:                                       ; preds = %if.end110
  %122 = load i32, ptr %i, align 4, !tbaa !19
  %inc112 = add nsw i32 %122, 1
  store i32 %inc112, ptr %i, align 4, !tbaa !19
  br label %for.cond85, !llvm.loop !44

for.end113:                                       ; preds = %for.cond85
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc166, %for.end113
  %123 = load i32, ptr %i, align 4, !tbaa !19
  %124 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp115 = icmp slt i32 %123, %124
  br i1 %cmp115, label %for.body117, label %for.end168

for.body117:                                      ; preds = %for.cond114
  %125 = load ptr, ptr %sptr, align 8, !tbaa !4
  %126 = load i32, ptr %i, align 4, !tbaa !19
  %add118 = add nsw i32 %126, 1
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %125, i64 %idxprom119
  %127 = load i32, ptr %arrayidx120, align 4, !tbaa !19
  %128 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %129 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom121 = sext i32 %129 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %128, i64 %idxprom121
  %130 = load i32, ptr %arrayidx122, align 4, !tbaa !19
  %cmp123 = icmp sgt i32 %127, %130
  br i1 %cmp123, label %land.lhs.true, label %if.end165

land.lhs.true:                                    ; preds = %for.body117
  %131 = load ptr, ptr %sindex, align 8, !tbaa !4
  %132 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %133 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom125 = sext i32 %133 to i64
  %arrayidx126 = getelementptr inbounds i32, ptr %132, i64 %idxprom125
  %134 = load i32, ptr %arrayidx126, align 4, !tbaa !19
  %idxprom127 = sext i32 %134 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %131, i64 %idxprom127
  %135 = load i32, ptr %arrayidx128, align 4, !tbaa !19
  %136 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %137 = load i32, ptr %ii, align 4, !tbaa !19
  %idxprom129 = sext i32 %137 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %136, i64 %idxprom129
  %138 = load i32, ptr %arrayidx130, align 4, !tbaa !19
  %cmp131 = icmp slt i32 %135, %138
  br i1 %cmp131, label %if.then133, label %if.end165

if.then133:                                       ; preds = %land.lhs.true
  %139 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %140 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom134 = sext i32 %140 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %139, i64 %idxprom134
  %141 = load i32, ptr %arrayidx135, align 4, !tbaa !19
  store i32 %141, ptr %j, align 4, !tbaa !19
  store i32 0, ptr %l, align 4, !tbaa !19
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc155, %if.then133
  %142 = load i32, ptr %j, align 4, !tbaa !19
  %143 = load ptr, ptr %sptr, align 8, !tbaa !4
  %144 = load i32, ptr %i, align 4, !tbaa !19
  %add137 = add nsw i32 %144, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %143, i64 %idxprom138
  %145 = load i32, ptr %arrayidx139, align 4, !tbaa !19
  %cmp140 = icmp slt i32 %142, %145
  br i1 %cmp140, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond136
  %146 = load ptr, ptr %sindex, align 8, !tbaa !4
  %147 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom142 = sext i32 %147 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %146, i64 %idxprom142
  %148 = load i32, ptr %arrayidx143, align 4, !tbaa !19
  %149 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %150 = load i32, ptr %ii, align 4, !tbaa !19
  %idxprom144 = sext i32 %150 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %149, i64 %idxprom144
  %151 = load i32, ptr %arrayidx145, align 4, !tbaa !19
  %cmp146 = icmp slt i32 %148, %151
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond136
  %152 = phi i1 [ false, %for.cond136 ], [ %cmp146, %land.rhs ]
  br i1 %152, label %for.body148, label %for.end158

for.body148:                                      ; preds = %land.end
  %153 = load ptr, ptr %lx, align 8, !tbaa !4
  %154 = load ptr, ptr %sindex, align 8, !tbaa !4
  %155 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom149 = sext i32 %155 to i64
  %arrayidx150 = getelementptr inbounds i32, ptr %154, i64 %idxprom149
  %156 = load i32, ptr %arrayidx150, align 4, !tbaa !19
  %idxprom151 = sext i32 %156 to i64
  %arrayidx152 = getelementptr inbounds double, ptr %153, i64 %idxprom151
  %157 = load double, ptr %arrayidx152, align 8, !tbaa !38
  %158 = load ptr, ptr %gatherbuf, align 8, !tbaa !4
  %159 = load i32, ptr %l, align 4, !tbaa !19
  %idxprom153 = sext i32 %159 to i64
  %arrayidx154 = getelementptr inbounds double, ptr %158, i64 %idxprom153
  store double %157, ptr %arrayidx154, align 8, !tbaa !38
  br label %for.inc155

for.inc155:                                       ; preds = %for.body148
  %160 = load i32, ptr %j, align 4, !tbaa !19
  %inc156 = add nsw i32 %160, 1
  store i32 %inc156, ptr %j, align 4, !tbaa !19
  %161 = load i32, ptr %l, align 4, !tbaa !19
  %inc157 = add nsw i32 %161, 1
  store i32 %inc157, ptr %l, align 4, !tbaa !19
  br label %for.cond136, !llvm.loop !45

for.end158:                                       ; preds = %land.end
  %162 = load ptr, ptr %gatherbuf, align 8, !tbaa !4
  %163 = load i32, ptr %l, align 4, !tbaa !19
  %164 = load ptr, ptr %spes, align 8, !tbaa !4
  %165 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom159 = sext i32 %165 to i64
  %arrayidx160 = getelementptr inbounds i32, ptr %164, i64 %idxprom159
  %166 = load i32, ptr %arrayidx160, align 4, !tbaa !19
  %167 = load i32, ptr %TAG, align 4, !tbaa !19
  %168 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator161 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %hypre_MPI_communicator161, align 8, !tbaa !43
  %call162 = call i32 @hypre_MPI_Send(ptr noundef %162, i32 noundef %163, ptr noundef @ompi_mpi_double, i32 noundef %166, i32 noundef %167, ptr noundef %169)
  %170 = load i32, ptr %j, align 4, !tbaa !19
  %171 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %172 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom163 = sext i32 %172 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %171, i64 %idxprom163
  store i32 %170, ptr %arrayidx164, align 4, !tbaa !19
  br label %if.end165

if.end165:                                        ; preds = %for.end158, %land.lhs.true, %for.body117
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %173 = load i32, ptr %i, align 4, !tbaa !19
  %inc167 = add nsw i32 %173, 1
  store i32 %inc167, ptr %i, align 4, !tbaa !19
  br label %for.cond114, !llvm.loop !46

for.end168:                                       ; preds = %for.cond114
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc182, %for.end168
  %174 = load i32, ptr %i, align 4, !tbaa !19
  %175 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp170 = icmp slt i32 %174, %175
  br i1 %cmp170, label %for.body172, label %for.end184

for.body172:                                      ; preds = %for.cond169
  %176 = load ptr, ptr %rnum, align 8, !tbaa !4
  %177 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom173 = sext i32 %177 to i64
  %arrayidx174 = getelementptr inbounds i32, ptr %176, i64 %idxprom173
  %178 = load i32, ptr %arrayidx174, align 4, !tbaa !19
  %cmp175 = icmp sgt i32 %178, 0
  br i1 %cmp175, label %if.then177, label %if.end181

if.then177:                                       ; preds = %for.body172
  %179 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %180 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom178 = sext i32 %180 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %179, i64 %idxprom178
  %call180 = call i32 @hypre_MPI_Wait(ptr noundef %arrayidx179, ptr noundef %Status)
  br label %if.end181

if.end181:                                        ; preds = %if.then177, %for.body172
  br label %for.inc182

for.inc182:                                       ; preds = %if.end181
  %181 = load i32, ptr %i, align 4, !tbaa !19
  %inc183 = add nsw i32 %181, 1
  store i32 %inc183, ptr %i, align 4, !tbaa !19
  br label %for.cond169, !llvm.loop !47

for.end184:                                       ; preds = %for.cond169
  %182 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %183 = load i32, ptr %ii, align 4, !tbaa !19
  %idxprom185 = sext i32 %183 to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %182, i64 %idxprom185
  %184 = load i32, ptr %arrayidx186, align 4, !tbaa !19
  store i32 %184, ptr %i, align 4, !tbaa !19
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc220, %for.end184
  %185 = load i32, ptr %i, align 4, !tbaa !19
  %186 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %187 = load i32, ptr %ii, align 4, !tbaa !19
  %add188 = add nsw i32 %187, 1
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %186, i64 %idxprom189
  %188 = load i32, ptr %arrayidx190, align 4, !tbaa !19
  %cmp191 = icmp slt i32 %185, %188
  br i1 %cmp191, label %for.body193, label %for.end222

for.body193:                                      ; preds = %for.cond187
  store double 0.000000e+00, ptr %xx, align 8, !tbaa !38
  %189 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %190 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom194 = sext i32 %190 to i64
  %arrayidx195 = getelementptr inbounds i32, ptr %189, i64 %idxprom194
  %191 = load i32, ptr %arrayidx195, align 4, !tbaa !19
  store i32 %191, ptr %j, align 4, !tbaa !19
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc210, %for.body193
  %192 = load i32, ptr %j, align 4, !tbaa !19
  %193 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %194 = load i32, ptr %i, align 4, !tbaa !19
  %add197 = add nsw i32 %194, 1
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %193, i64 %idxprom198
  %195 = load i32, ptr %arrayidx199, align 4, !tbaa !19
  %cmp200 = icmp slt i32 %192, %195
  br i1 %cmp200, label %for.body202, label %for.end212

for.body202:                                      ; preds = %for.cond196
  %196 = load ptr, ptr %values, align 8, !tbaa !4
  %197 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom203 = sext i32 %197 to i64
  %arrayidx204 = getelementptr inbounds double, ptr %196, i64 %idxprom203
  %198 = load double, ptr %arrayidx204, align 8, !tbaa !38
  %199 = load ptr, ptr %lx, align 8, !tbaa !4
  %200 = load ptr, ptr %colind, align 8, !tbaa !4
  %201 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom205 = sext i32 %201 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %200, i64 %idxprom205
  %202 = load i32, ptr %arrayidx206, align 4, !tbaa !19
  %idxprom207 = sext i32 %202 to i64
  %arrayidx208 = getelementptr inbounds double, ptr %199, i64 %idxprom207
  %203 = load double, ptr %arrayidx208, align 8, !tbaa !38
  %204 = load double, ptr %xx, align 8, !tbaa !38
  %205 = call double @llvm.fmuladd.f64(double %198, double %203, double %204)
  store double %205, ptr %xx, align 8, !tbaa !38
  br label %for.inc210

for.inc210:                                       ; preds = %for.body202
  %206 = load i32, ptr %j, align 4, !tbaa !19
  %inc211 = add nsw i32 %206, 1
  store i32 %inc211, ptr %j, align 4, !tbaa !19
  br label %for.cond196, !llvm.loop !48

for.end212:                                       ; preds = %for.cond196
  %207 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %208 = load ptr, ptr %perm, align 8, !tbaa !4
  %209 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom213 = sext i32 %209 to i64
  %arrayidx214 = getelementptr inbounds i32, ptr %208, i64 %idxprom213
  %210 = load i32, ptr %arrayidx214, align 4, !tbaa !19
  %idxprom215 = sext i32 %210 to i64
  %arrayidx216 = getelementptr inbounds double, ptr %207, i64 %idxprom215
  %211 = load double, ptr %arrayidx216, align 8, !tbaa !38
  %212 = load double, ptr %xx, align 8, !tbaa !38
  %sub217 = fsub double %211, %212
  %213 = load ptr, ptr %lx, align 8, !tbaa !4
  %214 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom218 = sext i32 %214 to i64
  %arrayidx219 = getelementptr inbounds double, ptr %213, i64 %idxprom218
  store double %sub217, ptr %arrayidx219, align 8, !tbaa !38
  br label %for.inc220

for.inc220:                                       ; preds = %for.end212
  %215 = load i32, ptr %i, align 4, !tbaa !19
  %inc221 = add nsw i32 %215, 1
  store i32 %inc221, ptr %i, align 4, !tbaa !19
  br label %for.cond187, !llvm.loop !49

for.end222:                                       ; preds = %for.cond187
  br label %for.inc223

for.inc223:                                       ; preds = %for.end222
  %216 = load i32, ptr %ii, align 4, !tbaa !19
  %inc224 = add nsw i32 %216, 1
  store i32 %inc224, ptr %ii, align 4, !tbaa !19
  br label %for.cond76, !llvm.loop !50

for.end225:                                       ; preds = %for.cond76
  %217 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm = getelementptr inbounds %struct.factormatdef, ptr %217, i32 0, i32 22
  %snbrpes226 = getelementptr inbounds %struct.cphasedef, ptr %ucomm, i32 0, i32 8
  %218 = load i32, ptr %snbrpes226, align 8, !tbaa !51
  store i32 %218, ptr %snbrpes, align 4, !tbaa !19
  %219 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm227 = getelementptr inbounds %struct.factormatdef, ptr %219, i32 0, i32 22
  %spes228 = getelementptr inbounds %struct.cphasedef, ptr %ucomm227, i32 0, i32 1
  %220 = load ptr, ptr %spes228, align 8, !tbaa !52
  store ptr %220, ptr %spes, align 8, !tbaa !4
  %221 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm229 = getelementptr inbounds %struct.factormatdef, ptr %221, i32 0, i32 22
  %sptr230 = getelementptr inbounds %struct.cphasedef, ptr %ucomm229, i32 0, i32 2
  %222 = load ptr, ptr %sptr230, align 8, !tbaa !53
  store ptr %222, ptr %sptr, align 8, !tbaa !4
  %223 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm231 = getelementptr inbounds %struct.factormatdef, ptr %223, i32 0, i32 22
  %sindex232 = getelementptr inbounds %struct.cphasedef, ptr %ucomm231, i32 0, i32 3
  %224 = load ptr, ptr %sindex232, align 8, !tbaa !54
  store ptr %224, ptr %sindex, align 8, !tbaa !4
  %225 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm233 = getelementptr inbounds %struct.factormatdef, ptr %225, i32 0, i32 22
  %auxsptr234 = getelementptr inbounds %struct.cphasedef, ptr %ucomm233, i32 0, i32 4
  %226 = load ptr, ptr %auxsptr234, align 8, !tbaa !55
  store ptr %226, ptr %auxsptr, align 8, !tbaa !4
  %227 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %228 = load ptr, ptr %sptr, align 8, !tbaa !4
  %229 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %add235 = add nsw i32 %229, 1
  %conv236 = sext i32 %add235 to i64
  call void @hypre_memcpy_idx(ptr noundef %227, ptr noundef %228, i64 noundef %conv236)
  %230 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm237 = getelementptr inbounds %struct.factormatdef, ptr %230, i32 0, i32 22
  %rnbrpes238 = getelementptr inbounds %struct.cphasedef, ptr %ucomm237, i32 0, i32 9
  %231 = load i32, ptr %rnbrpes238, align 4, !tbaa !56
  store i32 %231, ptr %rnbrpes, align 4, !tbaa !19
  %232 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm239 = getelementptr inbounds %struct.factormatdef, ptr %232, i32 0, i32 22
  %raddr240 = getelementptr inbounds %struct.cphasedef, ptr %ucomm239, i32 0, i32 0
  %233 = load ptr, ptr %raddr240, align 8, !tbaa !57
  store ptr %233, ptr %raddr, align 8, !tbaa !4
  %234 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm241 = getelementptr inbounds %struct.factormatdef, ptr %234, i32 0, i32 22
  %rpes242 = getelementptr inbounds %struct.cphasedef, ptr %ucomm241, i32 0, i32 5
  %235 = load ptr, ptr %rpes242, align 8, !tbaa !58
  store ptr %235, ptr %rpes, align 8, !tbaa !4
  %236 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm243 = getelementptr inbounds %struct.factormatdef, ptr %236, i32 0, i32 22
  %rdone244 = getelementptr inbounds %struct.cphasedef, ptr %ucomm243, i32 0, i32 6
  %237 = load ptr, ptr %rdone244, align 8, !tbaa !59
  store ptr %237, ptr %rdone, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond245

for.cond245:                                      ; preds = %for.inc251, %for.end225
  %238 = load i32, ptr %i, align 4, !tbaa !19
  %239 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp246 = icmp slt i32 %238, %239
  br i1 %cmp246, label %for.body248, label %for.end253

for.body248:                                      ; preds = %for.cond245
  %240 = load ptr, ptr %rdone, align 8, !tbaa !4
  %241 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom249 = sext i32 %241 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %240, i64 %idxprom249
  store i32 0, ptr %arrayidx250, align 4, !tbaa !19
  br label %for.inc251

for.inc251:                                       ; preds = %for.body248
  %242 = load i32, ptr %i, align 4, !tbaa !19
  %inc252 = add nsw i32 %242, 1
  store i32 %inc252, ptr %i, align 4, !tbaa !19
  br label %for.cond245, !llvm.loop !60

for.end253:                                       ; preds = %for.cond245
  %243 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %urowptr = getelementptr inbounds %struct.factormatdef, ptr %243, i32 0, i32 9
  %244 = load ptr, ptr %urowptr, align 8, !tbaa !61
  store ptr %244, ptr %rowptr, align 8, !tbaa !4
  %245 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucolind = getelementptr inbounds %struct.factormatdef, ptr %245, i32 0, i32 7
  %246 = load ptr, ptr %ucolind, align 8, !tbaa !62
  store ptr %246, ptr %colind, align 8, !tbaa !4
  %247 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uvalues = getelementptr inbounds %struct.factormatdef, ptr %247, i32 0, i32 8
  %248 = load ptr, ptr %uvalues, align 8, !tbaa !63
  store ptr %248, ptr %values, align 8, !tbaa !4
  %249 = load i32, ptr %nlevels, align 4, !tbaa !19
  store i32 %249, ptr %ii, align 4, !tbaa !19
  br label %for.cond254

for.cond254:                                      ; preds = %for.inc412, %for.end253
  %250 = load i32, ptr %ii, align 4, !tbaa !19
  %cmp255 = icmp sgt i32 %250, 0
  br i1 %cmp255, label %for.body257, label %for.end414

for.body257:                                      ; preds = %for.cond254
  %251 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %252 = load i32, ptr %ii, align 4, !tbaa !19
  %idxprom258 = sext i32 %252 to i64
  %arrayidx259 = getelementptr inbounds i32, ptr %251, i64 %idxprom258
  %253 = load i32, ptr %arrayidx259, align 4, !tbaa !19
  %sub260 = sub nsw i32 %253, 1
  store i32 %sub260, ptr %i, align 4, !tbaa !19
  br label %for.cond261

for.cond261:                                      ; preds = %for.inc295, %for.body257
  %254 = load i32, ptr %i, align 4, !tbaa !19
  %255 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %256 = load i32, ptr %ii, align 4, !tbaa !19
  %sub262 = sub nsw i32 %256, 1
  %idxprom263 = sext i32 %sub262 to i64
  %arrayidx264 = getelementptr inbounds i32, ptr %255, i64 %idxprom263
  %257 = load i32, ptr %arrayidx264, align 4, !tbaa !19
  %cmp265 = icmp sge i32 %254, %257
  br i1 %cmp265, label %for.body267, label %for.end296

for.body267:                                      ; preds = %for.cond261
  store double 0.000000e+00, ptr %xx, align 8, !tbaa !38
  %258 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %259 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom268 = sext i32 %259 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %258, i64 %idxprom268
  %260 = load i32, ptr %arrayidx269, align 4, !tbaa !19
  store i32 %260, ptr %j, align 4, !tbaa !19
  br label %for.cond270

for.cond270:                                      ; preds = %for.inc284, %for.body267
  %261 = load i32, ptr %j, align 4, !tbaa !19
  %262 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %263 = load i32, ptr %i, align 4, !tbaa !19
  %add271 = add nsw i32 %263, 1
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %262, i64 %idxprom272
  %264 = load i32, ptr %arrayidx273, align 4, !tbaa !19
  %cmp274 = icmp slt i32 %261, %264
  br i1 %cmp274, label %for.body276, label %for.end286

for.body276:                                      ; preds = %for.cond270
  %265 = load ptr, ptr %values, align 8, !tbaa !4
  %266 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom277 = sext i32 %266 to i64
  %arrayidx278 = getelementptr inbounds double, ptr %265, i64 %idxprom277
  %267 = load double, ptr %arrayidx278, align 8, !tbaa !38
  %268 = load ptr, ptr %ux, align 8, !tbaa !4
  %269 = load ptr, ptr %colind, align 8, !tbaa !4
  %270 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom279 = sext i32 %270 to i64
  %arrayidx280 = getelementptr inbounds i32, ptr %269, i64 %idxprom279
  %271 = load i32, ptr %arrayidx280, align 4, !tbaa !19
  %idxprom281 = sext i32 %271 to i64
  %arrayidx282 = getelementptr inbounds double, ptr %268, i64 %idxprom281
  %272 = load double, ptr %arrayidx282, align 8, !tbaa !38
  %273 = load double, ptr %xx, align 8, !tbaa !38
  %274 = call double @llvm.fmuladd.f64(double %267, double %272, double %273)
  store double %274, ptr %xx, align 8, !tbaa !38
  br label %for.inc284

for.inc284:                                       ; preds = %for.body276
  %275 = load i32, ptr %j, align 4, !tbaa !19
  %inc285 = add nsw i32 %275, 1
  store i32 %inc285, ptr %j, align 4, !tbaa !19
  br label %for.cond270, !llvm.loop !64

for.end286:                                       ; preds = %for.cond270
  %276 = load ptr, ptr %dvalues, align 8, !tbaa !4
  %277 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom287 = sext i32 %277 to i64
  %arrayidx288 = getelementptr inbounds double, ptr %276, i64 %idxprom287
  %278 = load double, ptr %arrayidx288, align 8, !tbaa !38
  %279 = load ptr, ptr %lx, align 8, !tbaa !4
  %280 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom289 = sext i32 %280 to i64
  %arrayidx290 = getelementptr inbounds double, ptr %279, i64 %idxprom289
  %281 = load double, ptr %arrayidx290, align 8, !tbaa !38
  %282 = load double, ptr %xx, align 8, !tbaa !38
  %sub291 = fsub double %281, %282
  %mul292 = fmul double %278, %sub291
  %283 = load ptr, ptr %ux, align 8, !tbaa !4
  %284 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom293 = sext i32 %284 to i64
  %arrayidx294 = getelementptr inbounds double, ptr %283, i64 %idxprom293
  store double %mul292, ptr %arrayidx294, align 8, !tbaa !38
  br label %for.inc295

for.inc295:                                       ; preds = %for.end286
  %285 = load i32, ptr %i, align 4, !tbaa !19
  %dec = add nsw i32 %285, -1
  store i32 %dec, ptr %i, align 4, !tbaa !19
  br label %for.cond261, !llvm.loop !65

for.end296:                                       ; preds = %for.cond261
  %286 = load i32, ptr %ii, align 4, !tbaa !19
  %or297 = or i32 512, %286
  store i32 %or297, ptr %TAG, align 4, !tbaa !19
  %287 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm298 = getelementptr inbounds %struct.factormatdef, ptr %287, i32 0, i32 22
  %rnum299 = getelementptr inbounds %struct.cphasedef, ptr %ucomm298, i32 0, i32 7
  %288 = load ptr, ptr %rnum299, align 8, !tbaa !66
  %289 = load i32, ptr %ii, align 4, !tbaa !19
  %sub300 = sub nsw i32 %289, 1
  %290 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %mul301 = mul nsw i32 %sub300, %290
  %idxprom302 = sext i32 %mul301 to i64
  %arrayidx303 = getelementptr inbounds i32, ptr %288, i64 %idxprom302
  store ptr %arrayidx303, ptr %rnum, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond304

for.cond304:                                      ; preds = %for.inc333, %for.end296
  %291 = load i32, ptr %i, align 4, !tbaa !19
  %292 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp305 = icmp slt i32 %291, %292
  br i1 %cmp305, label %for.body307, label %for.end335

for.body307:                                      ; preds = %for.cond304
  %293 = load ptr, ptr %rnum, align 8, !tbaa !4
  %294 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom308 = sext i32 %294 to i64
  %arrayidx309 = getelementptr inbounds i32, ptr %293, i64 %idxprom308
  %295 = load i32, ptr %arrayidx309, align 4, !tbaa !19
  %cmp310 = icmp sgt i32 %295, 0
  br i1 %cmp310, label %if.then312, label %if.end332

if.then312:                                       ; preds = %for.body307
  %296 = load ptr, ptr %raddr, align 8, !tbaa !4
  %297 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom313 = sext i32 %297 to i64
  %arrayidx314 = getelementptr inbounds ptr, ptr %296, i64 %idxprom313
  %298 = load ptr, ptr %arrayidx314, align 8, !tbaa !4
  %299 = load ptr, ptr %rdone, align 8, !tbaa !4
  %300 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom315 = sext i32 %300 to i64
  %arrayidx316 = getelementptr inbounds i32, ptr %299, i64 %idxprom315
  %301 = load i32, ptr %arrayidx316, align 4, !tbaa !19
  %idx.ext317 = sext i32 %301 to i64
  %add.ptr318 = getelementptr inbounds double, ptr %298, i64 %idx.ext317
  %302 = load ptr, ptr %rnum, align 8, !tbaa !4
  %303 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom319 = sext i32 %303 to i64
  %arrayidx320 = getelementptr inbounds i32, ptr %302, i64 %idxprom319
  %304 = load i32, ptr %arrayidx320, align 4, !tbaa !19
  %305 = load ptr, ptr %rpes, align 8, !tbaa !4
  %306 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom321 = sext i32 %306 to i64
  %arrayidx322 = getelementptr inbounds i32, ptr %305, i64 %idxprom321
  %307 = load i32, ptr %arrayidx322, align 4, !tbaa !19
  %308 = load i32, ptr %TAG, align 4, !tbaa !19
  %309 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator323 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %309, i32 0, i32 0
  %310 = load ptr, ptr %hypre_MPI_communicator323, align 8, !tbaa !43
  %311 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %312 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom324 = sext i32 %312 to i64
  %arrayidx325 = getelementptr inbounds ptr, ptr %311, i64 %idxprom324
  %call326 = call i32 @hypre_MPI_Irecv(ptr noundef %add.ptr318, i32 noundef %304, ptr noundef @ompi_mpi_double, i32 noundef %307, i32 noundef %308, ptr noundef %310, ptr noundef %arrayidx325)
  %313 = load ptr, ptr %rnum, align 8, !tbaa !4
  %314 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom327 = sext i32 %314 to i64
  %arrayidx328 = getelementptr inbounds i32, ptr %313, i64 %idxprom327
  %315 = load i32, ptr %arrayidx328, align 4, !tbaa !19
  %316 = load ptr, ptr %rdone, align 8, !tbaa !4
  %317 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom329 = sext i32 %317 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %316, i64 %idxprom329
  %318 = load i32, ptr %arrayidx330, align 4, !tbaa !19
  %add331 = add nsw i32 %318, %315
  store i32 %add331, ptr %arrayidx330, align 4, !tbaa !19
  br label %if.end332

if.end332:                                        ; preds = %if.then312, %for.body307
  br label %for.inc333

for.inc333:                                       ; preds = %if.end332
  %319 = load i32, ptr %i, align 4, !tbaa !19
  %inc334 = add nsw i32 %319, 1
  store i32 %inc334, ptr %i, align 4, !tbaa !19
  br label %for.cond304, !llvm.loop !67

for.end335:                                       ; preds = %for.cond304
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond336

for.cond336:                                      ; preds = %for.inc393, %for.end335
  %320 = load i32, ptr %i, align 4, !tbaa !19
  %321 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp337 = icmp slt i32 %320, %321
  br i1 %cmp337, label %for.body339, label %for.end395

for.body339:                                      ; preds = %for.cond336
  %322 = load ptr, ptr %sptr, align 8, !tbaa !4
  %323 = load i32, ptr %i, align 4, !tbaa !19
  %add340 = add nsw i32 %323, 1
  %idxprom341 = sext i32 %add340 to i64
  %arrayidx342 = getelementptr inbounds i32, ptr %322, i64 %idxprom341
  %324 = load i32, ptr %arrayidx342, align 4, !tbaa !19
  %325 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %326 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom343 = sext i32 %326 to i64
  %arrayidx344 = getelementptr inbounds i32, ptr %325, i64 %idxprom343
  %327 = load i32, ptr %arrayidx344, align 4, !tbaa !19
  %cmp345 = icmp sgt i32 %324, %327
  br i1 %cmp345, label %land.lhs.true347, label %if.end392

land.lhs.true347:                                 ; preds = %for.body339
  %328 = load ptr, ptr %sindex, align 8, !tbaa !4
  %329 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %330 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom348 = sext i32 %330 to i64
  %arrayidx349 = getelementptr inbounds i32, ptr %329, i64 %idxprom348
  %331 = load i32, ptr %arrayidx349, align 4, !tbaa !19
  %idxprom350 = sext i32 %331 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %328, i64 %idxprom350
  %332 = load i32, ptr %arrayidx351, align 4, !tbaa !19
  %333 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %334 = load i32, ptr %ii, align 4, !tbaa !19
  %sub352 = sub nsw i32 %334, 1
  %idxprom353 = sext i32 %sub352 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %333, i64 %idxprom353
  %335 = load i32, ptr %arrayidx354, align 4, !tbaa !19
  %cmp355 = icmp sge i32 %332, %335
  br i1 %cmp355, label %if.then357, label %if.end392

if.then357:                                       ; preds = %land.lhs.true347
  %336 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %337 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom358 = sext i32 %337 to i64
  %arrayidx359 = getelementptr inbounds i32, ptr %336, i64 %idxprom358
  %338 = load i32, ptr %arrayidx359, align 4, !tbaa !19
  store i32 %338, ptr %j, align 4, !tbaa !19
  store i32 0, ptr %l, align 4, !tbaa !19
  br label %for.cond360

for.cond360:                                      ; preds = %for.inc382, %if.then357
  %339 = load i32, ptr %j, align 4, !tbaa !19
  %340 = load ptr, ptr %sptr, align 8, !tbaa !4
  %341 = load i32, ptr %i, align 4, !tbaa !19
  %add361 = add nsw i32 %341, 1
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds i32, ptr %340, i64 %idxprom362
  %342 = load i32, ptr %arrayidx363, align 4, !tbaa !19
  %cmp364 = icmp slt i32 %339, %342
  br i1 %cmp364, label %land.rhs366, label %land.end374

land.rhs366:                                      ; preds = %for.cond360
  %343 = load ptr, ptr %sindex, align 8, !tbaa !4
  %344 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom367 = sext i32 %344 to i64
  %arrayidx368 = getelementptr inbounds i32, ptr %343, i64 %idxprom367
  %345 = load i32, ptr %arrayidx368, align 4, !tbaa !19
  %346 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %347 = load i32, ptr %ii, align 4, !tbaa !19
  %sub369 = sub nsw i32 %347, 1
  %idxprom370 = sext i32 %sub369 to i64
  %arrayidx371 = getelementptr inbounds i32, ptr %346, i64 %idxprom370
  %348 = load i32, ptr %arrayidx371, align 4, !tbaa !19
  %cmp372 = icmp sge i32 %345, %348
  br label %land.end374

land.end374:                                      ; preds = %land.rhs366, %for.cond360
  %349 = phi i1 [ false, %for.cond360 ], [ %cmp372, %land.rhs366 ]
  br i1 %349, label %for.body375, label %for.end385

for.body375:                                      ; preds = %land.end374
  %350 = load ptr, ptr %ux, align 8, !tbaa !4
  %351 = load ptr, ptr %sindex, align 8, !tbaa !4
  %352 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom376 = sext i32 %352 to i64
  %arrayidx377 = getelementptr inbounds i32, ptr %351, i64 %idxprom376
  %353 = load i32, ptr %arrayidx377, align 4, !tbaa !19
  %idxprom378 = sext i32 %353 to i64
  %arrayidx379 = getelementptr inbounds double, ptr %350, i64 %idxprom378
  %354 = load double, ptr %arrayidx379, align 8, !tbaa !38
  %355 = load ptr, ptr %gatherbuf, align 8, !tbaa !4
  %356 = load i32, ptr %l, align 4, !tbaa !19
  %idxprom380 = sext i32 %356 to i64
  %arrayidx381 = getelementptr inbounds double, ptr %355, i64 %idxprom380
  store double %354, ptr %arrayidx381, align 8, !tbaa !38
  br label %for.inc382

for.inc382:                                       ; preds = %for.body375
  %357 = load i32, ptr %j, align 4, !tbaa !19
  %inc383 = add nsw i32 %357, 1
  store i32 %inc383, ptr %j, align 4, !tbaa !19
  %358 = load i32, ptr %l, align 4, !tbaa !19
  %inc384 = add nsw i32 %358, 1
  store i32 %inc384, ptr %l, align 4, !tbaa !19
  br label %for.cond360, !llvm.loop !68

for.end385:                                       ; preds = %land.end374
  %359 = load ptr, ptr %gatherbuf, align 8, !tbaa !4
  %360 = load i32, ptr %l, align 4, !tbaa !19
  %361 = load ptr, ptr %spes, align 8, !tbaa !4
  %362 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom386 = sext i32 %362 to i64
  %arrayidx387 = getelementptr inbounds i32, ptr %361, i64 %idxprom386
  %363 = load i32, ptr %arrayidx387, align 4, !tbaa !19
  %364 = load i32, ptr %TAG, align 4, !tbaa !19
  %365 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator388 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %365, i32 0, i32 0
  %366 = load ptr, ptr %hypre_MPI_communicator388, align 8, !tbaa !43
  %call389 = call i32 @hypre_MPI_Send(ptr noundef %359, i32 noundef %360, ptr noundef @ompi_mpi_double, i32 noundef %363, i32 noundef %364, ptr noundef %366)
  %367 = load i32, ptr %j, align 4, !tbaa !19
  %368 = load ptr, ptr %auxsptr, align 8, !tbaa !4
  %369 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom390 = sext i32 %369 to i64
  %arrayidx391 = getelementptr inbounds i32, ptr %368, i64 %idxprom390
  store i32 %367, ptr %arrayidx391, align 4, !tbaa !19
  br label %if.end392

if.end392:                                        ; preds = %for.end385, %land.lhs.true347, %for.body339
  br label %for.inc393

for.inc393:                                       ; preds = %if.end392
  %370 = load i32, ptr %i, align 4, !tbaa !19
  %inc394 = add nsw i32 %370, 1
  store i32 %inc394, ptr %i, align 4, !tbaa !19
  br label %for.cond336, !llvm.loop !69

for.end395:                                       ; preds = %for.cond336
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc409, %for.end395
  %371 = load i32, ptr %i, align 4, !tbaa !19
  %372 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp397 = icmp slt i32 %371, %372
  br i1 %cmp397, label %for.body399, label %for.end411

for.body399:                                      ; preds = %for.cond396
  %373 = load ptr, ptr %rnum, align 8, !tbaa !4
  %374 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom400 = sext i32 %374 to i64
  %arrayidx401 = getelementptr inbounds i32, ptr %373, i64 %idxprom400
  %375 = load i32, ptr %arrayidx401, align 4, !tbaa !19
  %cmp402 = icmp sgt i32 %375, 0
  br i1 %cmp402, label %if.then404, label %if.end408

if.then404:                                       ; preds = %for.body399
  %376 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %377 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom405 = sext i32 %377 to i64
  %arrayidx406 = getelementptr inbounds ptr, ptr %376, i64 %idxprom405
  %call407 = call i32 @hypre_MPI_Wait(ptr noundef %arrayidx406, ptr noundef %Status)
  br label %if.end408

if.end408:                                        ; preds = %if.then404, %for.body399
  br label %for.inc409

for.inc409:                                       ; preds = %if.end408
  %378 = load i32, ptr %i, align 4, !tbaa !19
  %inc410 = add nsw i32 %378, 1
  store i32 %inc410, ptr %i, align 4, !tbaa !19
  br label %for.cond396, !llvm.loop !70

for.end411:                                       ; preds = %for.cond396
  br label %for.inc412

for.inc412:                                       ; preds = %for.end411
  %379 = load i32, ptr %ii, align 4, !tbaa !19
  %dec413 = add nsw i32 %379, -1
  store i32 %dec413, ptr %ii, align 4, !tbaa !19
  br label %for.cond254, !llvm.loop !71

for.end414:                                       ; preds = %for.cond254
  %380 = load ptr, ptr %nnodes, align 8, !tbaa !4
  %arrayidx415 = getelementptr inbounds i32, ptr %380, i64 0
  %381 = load i32, ptr %arrayidx415, align 4, !tbaa !19
  %sub416 = sub nsw i32 %381, 1
  store i32 %sub416, ptr %i, align 4, !tbaa !19
  br label %for.cond417

for.cond417:                                      ; preds = %for.inc448, %for.end414
  %382 = load i32, ptr %i, align 4, !tbaa !19
  %cmp418 = icmp sge i32 %382, 0
  br i1 %cmp418, label %for.body420, label %for.end450

for.body420:                                      ; preds = %for.cond417
  store double 0.000000e+00, ptr %xx, align 8, !tbaa !38
  %383 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %384 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom421 = sext i32 %384 to i64
  %arrayidx422 = getelementptr inbounds i32, ptr %383, i64 %idxprom421
  %385 = load i32, ptr %arrayidx422, align 4, !tbaa !19
  store i32 %385, ptr %j, align 4, !tbaa !19
  br label %for.cond423

for.cond423:                                      ; preds = %for.inc437, %for.body420
  %386 = load i32, ptr %j, align 4, !tbaa !19
  %387 = load ptr, ptr %rowptr, align 8, !tbaa !4
  %388 = load i32, ptr %i, align 4, !tbaa !19
  %add424 = add nsw i32 %388, 1
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds i32, ptr %387, i64 %idxprom425
  %389 = load i32, ptr %arrayidx426, align 4, !tbaa !19
  %cmp427 = icmp slt i32 %386, %389
  br i1 %cmp427, label %for.body429, label %for.end439

for.body429:                                      ; preds = %for.cond423
  %390 = load ptr, ptr %values, align 8, !tbaa !4
  %391 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom430 = sext i32 %391 to i64
  %arrayidx431 = getelementptr inbounds double, ptr %390, i64 %idxprom430
  %392 = load double, ptr %arrayidx431, align 8, !tbaa !38
  %393 = load ptr, ptr %ux, align 8, !tbaa !4
  %394 = load ptr, ptr %colind, align 8, !tbaa !4
  %395 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom432 = sext i32 %395 to i64
  %arrayidx433 = getelementptr inbounds i32, ptr %394, i64 %idxprom432
  %396 = load i32, ptr %arrayidx433, align 4, !tbaa !19
  %idxprom434 = sext i32 %396 to i64
  %arrayidx435 = getelementptr inbounds double, ptr %393, i64 %idxprom434
  %397 = load double, ptr %arrayidx435, align 8, !tbaa !38
  %398 = load double, ptr %xx, align 8, !tbaa !38
  %399 = call double @llvm.fmuladd.f64(double %392, double %397, double %398)
  store double %399, ptr %xx, align 8, !tbaa !38
  br label %for.inc437

for.inc437:                                       ; preds = %for.body429
  %400 = load i32, ptr %j, align 4, !tbaa !19
  %inc438 = add nsw i32 %400, 1
  store i32 %inc438, ptr %j, align 4, !tbaa !19
  br label %for.cond423, !llvm.loop !72

for.end439:                                       ; preds = %for.cond423
  %401 = load ptr, ptr %dvalues, align 8, !tbaa !4
  %402 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom440 = sext i32 %402 to i64
  %arrayidx441 = getelementptr inbounds double, ptr %401, i64 %idxprom440
  %403 = load double, ptr %arrayidx441, align 8, !tbaa !38
  %404 = load ptr, ptr %lx, align 8, !tbaa !4
  %405 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom442 = sext i32 %405 to i64
  %arrayidx443 = getelementptr inbounds double, ptr %404, i64 %idxprom442
  %406 = load double, ptr %arrayidx443, align 8, !tbaa !38
  %407 = load double, ptr %xx, align 8, !tbaa !38
  %sub444 = fsub double %406, %407
  %mul445 = fmul double %403, %sub444
  %408 = load ptr, ptr %ux, align 8, !tbaa !4
  %409 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom446 = sext i32 %409 to i64
  %arrayidx447 = getelementptr inbounds double, ptr %408, i64 %idxprom446
  store double %mul445, ptr %arrayidx447, align 8, !tbaa !38
  br label %for.inc448

for.inc448:                                       ; preds = %for.end439
  %410 = load i32, ptr %i, align 4, !tbaa !19
  %dec449 = add nsw i32 %410, -1
  store i32 %dec449, ptr %i, align 4, !tbaa !19
  br label %for.cond417, !llvm.loop !73

for.end450:                                       ; preds = %for.cond417
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond451

for.cond451:                                      ; preds = %for.inc462, %for.end450
  %411 = load i32, ptr %i, align 4, !tbaa !19
  %412 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows452 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %412, i32 0, i32 16
  %413 = load i32, ptr %_lnrows452, align 4, !tbaa !11
  %cmp453 = icmp slt i32 %411, %413
  br i1 %cmp453, label %for.body455, label %for.end464

for.body455:                                      ; preds = %for.cond451
  %414 = load ptr, ptr %ux, align 8, !tbaa !4
  %415 = load ptr, ptr %iperm, align 8, !tbaa !4
  %416 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom456 = sext i32 %416 to i64
  %arrayidx457 = getelementptr inbounds i32, ptr %415, i64 %idxprom456
  %417 = load i32, ptr %arrayidx457, align 4, !tbaa !19
  %idxprom458 = sext i32 %417 to i64
  %arrayidx459 = getelementptr inbounds double, ptr %414, i64 %idxprom458
  %418 = load double, ptr %arrayidx459, align 8, !tbaa !38
  %419 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %420 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom460 = sext i32 %420 to i64
  %arrayidx461 = getelementptr inbounds double, ptr %419, i64 %idxprom460
  store double %418, ptr %arrayidx461, align 8, !tbaa !38
  br label %for.inc462

for.inc462:                                       ; preds = %for.body455
  %421 = load i32, ptr %i, align 4, !tbaa !19
  %inc463 = add nsw i32 %421, 1
  store i32 %inc463, ptr %i, align 4, !tbaa !19
  br label %for.cond451, !llvm.loop !74

for.end464:                                       ; preds = %for.cond451
  %422 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %422, i32 noundef 0)
  store ptr null, ptr %receive_requests, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %receive_requests) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr %Status) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %raddr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %gatherbuf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dvalues) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ux) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rnum) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdone) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxsptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %spes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nnodes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iperm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %perm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnbrpes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %snbrpes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlevels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %TAG) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @hypre_memcpy_idx(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @hypre_MPI_Irecv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_MPI_Wait(ptr noundef, ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SetUpLUFactor(ptr noundef %ddist, ptr noundef %ldu, i32 noundef %maxnz, ptr noundef %globals) #0 {
entry:
  %ddist.addr = alloca ptr, align 8
  %ldu.addr = alloca ptr, align 8
  %maxnz.addr = alloca i32, align 4
  %globals.addr = alloca ptr, align 8
  %maxsend = alloca i32, align 4
  %petotal = alloca ptr, align 8
  %rind = alloca ptr, align 8
  %imap = alloca ptr, align 8
  store ptr %ddist, ptr %ddist.addr, align 8, !tbaa !4
  store ptr %ldu, ptr %ldu.addr, align 8, !tbaa !4
  store i32 %maxnz, ptr %maxnz.addr, align 4, !tbaa !19
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxsend) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %petotal) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %imap) #5
  %0 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %_npes, align 4, !tbaa !41
  %add = add nsw i32 %1, 1
  %call = call ptr @hypre_idx_malloc(i32 noundef %add, ptr noundef @.str)
  store ptr %call, ptr %petotal, align 8, !tbaa !4
  %2 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %ddist_nrows = getelementptr inbounds %struct.distdef, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %ddist_nrows, align 8, !tbaa !75
  %call1 = call ptr @hypre_idx_malloc(i32 noundef %3, ptr noundef @.str.1)
  store ptr %call1, ptr %rind, align 8, !tbaa !4
  %4 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %ddist_nrows2 = getelementptr inbounds %struct.distdef, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %ddist_nrows2, align 8, !tbaa !75
  %call3 = call ptr @hypre_idx_malloc_init(i32 noundef %5, i32 noundef -1, ptr noundef @.str.2)
  store ptr %call3, ptr %imap, align 8, !tbaa !4
  store i32 0, ptr %maxsend, align 4, !tbaa !19
  %6 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %8 = load i32, ptr %maxnz.addr, align 4, !tbaa !19
  %9 = load ptr, ptr %petotal, align 8, !tbaa !4
  %10 = load ptr, ptr %rind, align 8, !tbaa !4
  %11 = load ptr, ptr %imap, align 8, !tbaa !4
  %12 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  call void @hypre_SetUpFactor(ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %maxsend, i32 noundef 1, ptr noundef %12)
  %13 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %15 = load i32, ptr %maxnz.addr, align 4, !tbaa !19
  %16 = load ptr, ptr %petotal, align 8, !tbaa !4
  %17 = load ptr, ptr %rind, align 8, !tbaa !4
  %18 = load ptr, ptr %imap, align 8, !tbaa !4
  %19 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  call void @hypre_SetUpFactor(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %maxsend, i32 noundef 0, ptr noundef %19)
  %20 = load i32, ptr %maxsend, align 4, !tbaa !19
  %call4 = call ptr @hypre_fp_malloc(i32 noundef %20, ptr noundef @.str.3)
  %21 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %gatherbuf = getelementptr inbounds %struct.factormatdef, ptr %21, i32 0, i32 14
  store ptr %call4, ptr %gatherbuf, align 8, !tbaa !21
  %22 = load ptr, ptr %petotal, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %22, i32 noundef 0)
  store ptr null, ptr %petotal, align 8, !tbaa !4
  %23 = load ptr, ptr %rind, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %23, i32 noundef 0)
  store ptr null, ptr %rind, align 8, !tbaa !4
  %24 = load ptr, ptr %imap, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %24, i32 noundef 0)
  store ptr null, ptr %imap, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %imap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %petotal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxsend) #5
  ret i32 0
}

declare ptr @hypre_idx_malloc(i32 noundef, ptr noundef) #2

declare ptr @hypre_idx_malloc_init(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @hypre_SetUpFactor(ptr noundef %ddist, ptr noundef %ldu, i32 noundef %maxnz, ptr noundef %petotal, ptr noundef %rind, ptr noundef %imap, ptr noundef %maxsendP, i32 noundef %DoingL, ptr noundef %globals) #0 {
entry:
  %ddist.addr = alloca ptr, align 8
  %ldu.addr = alloca ptr, align 8
  %maxnz.addr = alloca i32, align 4
  %petotal.addr = alloca ptr, align 8
  %rind.addr = alloca ptr, align 8
  %imap.addr = alloca ptr, align 8
  %maxsendP.addr = alloca ptr, align 8
  %DoingL.addr = alloca i32, align 4
  %globals.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %nlevels = alloca i32, align 4
  %nrecv = alloca i32, align 4
  %nsend = alloca i32, align 4
  %snbrpes = alloca i32, align 4
  %rnbrpes = alloca i32, align 4
  %rowdist = alloca ptr, align 8
  %sptr = alloca ptr, align 8
  %sindex = alloca ptr, align 8
  %spes = alloca ptr, align 8
  %rpes = alloca ptr, align 8
  %perm = alloca ptr, align 8
  %iperm = alloca ptr, align 8
  %newrowptr = alloca ptr, align 8
  %newcolind = alloca ptr, align 8
  %srowptr = alloca ptr, align 8
  %erowptr = alloca ptr, align 8
  %colind = alloca ptr, align 8
  %rnum = alloca ptr, align 8
  %newvalues = alloca ptr, align 8
  %values = alloca ptr, align 8
  %x = alloca ptr, align 8
  %raddr = alloca ptr, align 8
  %TriSolveComm = alloca ptr, align 8
  %Status = alloca %struct.ompi_status_public_t, align 8
  %receive_requests = alloca ptr, align 8
  %MyColType_rnbr = alloca ptr, align 8
  store ptr %ddist, ptr %ddist.addr, align 8, !tbaa !4
  store ptr %ldu, ptr %ldu.addr, align 8, !tbaa !4
  store i32 %maxnz, ptr %maxnz.addr, align 4, !tbaa !19
  store ptr %petotal, ptr %petotal.addr, align 8, !tbaa !4
  store ptr %rind, ptr %rind.addr, align 8, !tbaa !4
  store ptr %imap, ptr %imap.addr, align 8, !tbaa !4
  store ptr %maxsendP, ptr %maxsendP.addr, align 8, !tbaa !4
  store i32 %DoingL, ptr %DoingL.addr, align 4, !tbaa !19
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlevels) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrecv) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %snbrpes) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnbrpes) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowdist) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sindex) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %spes) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpes) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %perm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iperm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newrowptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newcolind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %srowptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %erowptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %colind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rnum) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newvalues) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %raddr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %TriSolveComm) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr %Status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %receive_requests) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %MyColType_rnbr) #5
  %0 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %ddist_lnrows = getelementptr inbounds %struct.distdef, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %ddist_lnrows, align 4, !tbaa !8
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %2, i32 0, i32 16
  store i32 %1, ptr %_lnrows, align 4, !tbaa !11
  %3 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %nlevels1 = getelementptr inbounds %struct.factormatdef, ptr %3, i32 0, i32 19
  %4 = load i32, ptr %nlevels1, align 8, !tbaa !18
  store i32 %4, ptr %nlevels, align 4, !tbaa !19
  %5 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %ddist_rowdist = getelementptr inbounds %struct.distdef, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %ddist_rowdist, align 8, !tbaa !76
  store ptr %6, ptr %rowdist, align 8, !tbaa !4
  %7 = load ptr, ptr %rowdist, align 8, !tbaa !4
  %8 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_mype = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %_mype, align 8, !tbaa !77
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !19
  %11 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %11, i32 0, i32 11
  store i32 %10, ptr %_firstrow, align 8, !tbaa !78
  %12 = load ptr, ptr %rowdist, align 8, !tbaa !4
  %13 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_mype2 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %_mype2, align 8, !tbaa !77
  %add = add nsw i32 %14, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 %idxprom3
  %15 = load i32, ptr %arrayidx4, align 4, !tbaa !19
  %16 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lastrow = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %16, i32 0, i32 12
  store i32 %15, ptr %_lastrow, align 4, !tbaa !79
  %17 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %perm5 = getelementptr inbounds %struct.factormatdef, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %perm5, align 8, !tbaa !14
  store ptr %18, ptr %perm, align 8, !tbaa !4
  %19 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %iperm6 = getelementptr inbounds %struct.factormatdef, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %iperm6, align 8, !tbaa !17
  store ptr %20, ptr %iperm, align 8, !tbaa !4
  %21 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %22 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lsrowptr = getelementptr inbounds %struct.factormatdef, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %lsrowptr, align 8, !tbaa !80
  br label %cond.end

cond.false:                                       ; preds = %entry
  %24 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %usrowptr = getelementptr inbounds %struct.factormatdef, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %usrowptr, align 8, !tbaa !81
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %23, %cond.true ], [ %25, %cond.false ]
  store ptr %cond, ptr %srowptr, align 8, !tbaa !4
  %26 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool7 = icmp ne i32 %26, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  %27 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lerowptr = getelementptr inbounds %struct.factormatdef, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %lerowptr, align 8, !tbaa !82
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  %29 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uerowptr = getelementptr inbounds %struct.factormatdef, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %uerowptr, align 8, !tbaa !83
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi ptr [ %28, %cond.true8 ], [ %30, %cond.false9 ]
  store ptr %cond11, ptr %erowptr, align 8, !tbaa !4
  %31 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool12 = icmp ne i32 %31, 0
  br i1 %tobool12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end10
  %32 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcolind = getelementptr inbounds %struct.factormatdef, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %lcolind, align 8, !tbaa !36
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  %34 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucolind = getelementptr inbounds %struct.factormatdef, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %ucolind, align 8, !tbaa !62
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi ptr [ %33, %cond.true13 ], [ %35, %cond.false14 ]
  store ptr %cond16, ptr %colind, align 8, !tbaa !4
  %36 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool17 = icmp ne i32 %36, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end15
  %37 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lvalues = getelementptr inbounds %struct.factormatdef, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %lvalues, align 8, !tbaa !37
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  %39 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uvalues = getelementptr inbounds %struct.factormatdef, ptr %39, i32 0, i32 8
  %40 = load ptr, ptr %uvalues, align 8, !tbaa !63
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi ptr [ %38, %cond.true18 ], [ %40, %cond.false19 ]
  store ptr %cond21, ptr %values, align 8, !tbaa !4
  %41 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool22 = icmp ne i32 %41, 0
  br i1 %tobool22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end20
  %42 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcomm = getelementptr inbounds %struct.factormatdef, ptr %42, i32 0, i32 21
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  %43 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucomm = getelementptr inbounds %struct.factormatdef, ptr %43, i32 0, i32 22
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true23
  %cond26 = phi ptr [ %lcomm, %cond.true23 ], [ %ucomm, %cond.false24 ]
  store ptr %cond26, ptr %TriSolveComm, align 8, !tbaa !4
  store i32 0, ptr %nrecv, align 4, !tbaa !19
  %44 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %nnodes = getelementptr inbounds %struct.factormatdef, ptr %44, i32 0, i32 20
  %arrayidx27 = getelementptr inbounds [500 x i32], ptr %nnodes, i64 0, i64 0
  %45 = load i32, ptr %arrayidx27, align 4, !tbaa !19
  store i32 %45, ptr %ii, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %cond.end25
  %46 = load i32, ptr %ii, align 4, !tbaa !19
  %47 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows28 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %47, i32 0, i32 16
  %48 = load i32, ptr %_lnrows28, align 4, !tbaa !11
  %cmp = icmp slt i32 %46, %48
  br i1 %cmp, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %perm, align 8, !tbaa !4
  %50 = load i32, ptr %ii, align 4, !tbaa !19
  %idxprom29 = sext i32 %50 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %49, i64 %idxprom29
  %51 = load i32, ptr %arrayidx30, align 4, !tbaa !19
  store i32 %51, ptr %i, align 4, !tbaa !19
  %52 = load ptr, ptr %srowptr, align 8, !tbaa !4
  %53 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom31 = sext i32 %53 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %52, i64 %idxprom31
  %54 = load i32, ptr %arrayidx32, align 4, !tbaa !19
  store i32 %54, ptr %j, align 4, !tbaa !19
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %for.body
  %55 = load i32, ptr %j, align 4, !tbaa !19
  %56 = load ptr, ptr %erowptr, align 8, !tbaa !4
  %57 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom34 = sext i32 %57 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %56, i64 %idxprom34
  %58 = load i32, ptr %arrayidx35, align 4, !tbaa !19
  %cmp36 = icmp slt i32 %55, %58
  br i1 %cmp36, label %for.body37, label %for.end

for.body37:                                       ; preds = %for.cond33
  %59 = load ptr, ptr %colind, align 8, !tbaa !4
  %60 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom38 = sext i32 %60 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %59, i64 %idxprom38
  %61 = load i32, ptr %arrayidx39, align 4, !tbaa !19
  store i32 %61, ptr %k, align 4, !tbaa !19
  %62 = load i32, ptr %k, align 4, !tbaa !19
  %63 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow40 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %63, i32 0, i32 11
  %64 = load i32, ptr %_firstrow40, align 8, !tbaa !78
  %cmp41 = icmp slt i32 %62, %64
  br i1 %cmp41, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body37
  %65 = load i32, ptr %k, align 4, !tbaa !19
  %66 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lastrow42 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %66, i32 0, i32 12
  %67 = load i32, ptr %_lastrow42, align 4, !tbaa !79
  %cmp43 = icmp sge i32 %65, %67
  br i1 %cmp43, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body37
  %68 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %69 = load i32, ptr %k, align 4, !tbaa !19
  %idxprom44 = sext i32 %69 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %68, i64 %idxprom44
  %70 = load i32, ptr %arrayidx45, align 4, !tbaa !19
  %cmp46 = icmp eq i32 %70, -1
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %71 = load i32, ptr %k, align 4, !tbaa !19
  %72 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  %73 = load i32, ptr %nrecv, align 4, !tbaa !19
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %nrecv, align 4, !tbaa !19
  %idxprom47 = sext i32 %73 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %72, i64 %idxprom47
  store i32 %71, ptr %arrayidx48, align 4, !tbaa !19
  %74 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %75 = load i32, ptr %k, align 4, !tbaa !19
  %idxprom49 = sext i32 %75 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %74, i64 %idxprom49
  store i32 -2, ptr %arrayidx50, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %76 = load i32, ptr %j, align 4, !tbaa !19
  %inc51 = add nsw i32 %76, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !19
  br label %for.cond33, !llvm.loop !84

for.end:                                          ; preds = %for.cond33
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %77 = load i32, ptr %ii, align 4, !tbaa !19
  %inc53 = add nsw i32 %77, 1
  store i32 %inc53, ptr %ii, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !85

for.end54:                                        ; preds = %for.cond
  %78 = load i32, ptr %nrecv, align 4, !tbaa !19
  %79 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  call void @hypre_sincsort_fast(i32 noundef %78, ptr noundef %79)
  %80 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool55 = icmp ne i32 %80, 0
  br i1 %tobool55, label %if.then56, label %if.else

if.then56:                                        ; preds = %for.end54
  %81 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows57 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %81, i32 0, i32 16
  %82 = load i32, ptr %_lnrows57, align 4, !tbaa !11
  %83 = load i32, ptr %nrecv, align 4, !tbaa !19
  %add58 = add nsw i32 %82, %83
  %84 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %hypre_MPI_communicator, align 8, !tbaa !43
  %call = call i32 @hypre_GlobalSEMax(i32 noundef %add58, ptr noundef %85)
  %86 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lxlen = getelementptr inbounds %struct.factormatdef, ptr %86, i32 0, i32 17
  store i32 %call, ptr %lxlen, align 8, !tbaa !86
  %87 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lxlen59 = getelementptr inbounds %struct.factormatdef, ptr %87, i32 0, i32 17
  %88 = load i32, ptr %lxlen59, align 8, !tbaa !86
  %call60 = call ptr @hypre_fp_malloc_init(i32 noundef %88, double noundef 0.000000e+00, ptr noundef @.str.4)
  %89 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lx = getelementptr inbounds %struct.factormatdef, ptr %89, i32 0, i32 15
  store ptr %call60, ptr %lx, align 8, !tbaa !22
  store ptr %call60, ptr %x, align 8, !tbaa !4
  br label %if.end67

if.else:                                          ; preds = %for.end54
  %90 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows61 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %90, i32 0, i32 16
  %91 = load i32, ptr %_lnrows61, align 4, !tbaa !11
  %92 = load i32, ptr %nrecv, align 4, !tbaa !19
  %add62 = add nsw i32 %91, %92
  %93 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator63 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %hypre_MPI_communicator63, align 8, !tbaa !43
  %call64 = call i32 @hypre_GlobalSEMax(i32 noundef %add62, ptr noundef %94)
  %95 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uxlen = getelementptr inbounds %struct.factormatdef, ptr %95, i32 0, i32 18
  store i32 %call64, ptr %uxlen, align 4, !tbaa !87
  %96 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uxlen65 = getelementptr inbounds %struct.factormatdef, ptr %96, i32 0, i32 18
  %97 = load i32, ptr %uxlen65, align 4, !tbaa !87
  %call66 = call ptr @hypre_fp_malloc_init(i32 noundef %97, double noundef 0.000000e+00, ptr noundef @.str.5)
  %98 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ux = getelementptr inbounds %struct.factormatdef, ptr %98, i32 0, i32 16
  store ptr %call66, ptr %ux, align 8, !tbaa !23
  store ptr %call66, ptr %x, align 8, !tbaa !4
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then56
  store i32 0, ptr %j, align 4, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc87, %if.end67
  %99 = load i32, ptr %i, align 4, !tbaa !19
  %100 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %100, i32 0, i32 2
  %101 = load i32, ptr %_npes, align 4, !tbaa !41
  %cmp69 = icmp slt i32 %99, %101
  br i1 %cmp69, label %for.body70, label %for.end89

for.body70:                                       ; preds = %for.cond68
  %102 = load i32, ptr %j, align 4, !tbaa !19
  store i32 %102, ptr %k, align 4, !tbaa !19
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc82, %for.body70
  %103 = load i32, ptr %j, align 4, !tbaa !19
  %104 = load i32, ptr %nrecv, align 4, !tbaa !19
  %cmp72 = icmp slt i32 %103, %104
  br i1 %cmp72, label %for.body73, label %for.end84

for.body73:                                       ; preds = %for.cond71
  %105 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  %106 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom74 = sext i32 %106 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %105, i64 %idxprom74
  %107 = load i32, ptr %arrayidx75, align 4, !tbaa !19
  %108 = load ptr, ptr %rowdist, align 8, !tbaa !4
  %109 = load i32, ptr %i, align 4, !tbaa !19
  %add76 = add nsw i32 %109, 1
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %108, i64 %idxprom77
  %110 = load i32, ptr %arrayidx78, align 4, !tbaa !19
  %cmp79 = icmp sge i32 %107, %110
  br i1 %cmp79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %for.body73
  br label %for.end84

if.end81:                                         ; preds = %for.body73
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %111 = load i32, ptr %j, align 4, !tbaa !19
  %inc83 = add nsw i32 %111, 1
  store i32 %inc83, ptr %j, align 4, !tbaa !19
  br label %for.cond71, !llvm.loop !88

for.end84:                                        ; preds = %if.then80, %for.cond71
  %112 = load i32, ptr %j, align 4, !tbaa !19
  %113 = load i32, ptr %k, align 4, !tbaa !19
  %sub = sub nsw i32 %112, %113
  %114 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %115 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom85 = sext i32 %115 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %114, i64 %idxprom85
  store i32 %sub, ptr %arrayidx86, align 4, !tbaa !19
  br label %for.inc87

for.inc87:                                        ; preds = %for.end84
  %116 = load i32, ptr %i, align 4, !tbaa !19
  %inc88 = add nsw i32 %116, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !19
  br label %for.cond68, !llvm.loop !89

for.end89:                                        ; preds = %for.cond68
  store i32 0, ptr %rnbrpes, align 4, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc100, %for.end89
  %117 = load i32, ptr %i, align 4, !tbaa !19
  %118 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes91 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %118, i32 0, i32 2
  %119 = load i32, ptr %_npes91, align 4, !tbaa !41
  %cmp92 = icmp slt i32 %117, %119
  br i1 %cmp92, label %for.body93, label %for.end102

for.body93:                                       ; preds = %for.cond90
  %120 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %121 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom94 = sext i32 %121 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %120, i64 %idxprom94
  %122 = load i32, ptr %arrayidx95, align 4, !tbaa !19
  %cmp96 = icmp sgt i32 %122, 0
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %for.body93
  %123 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %inc98 = add nsw i32 %123, 1
  store i32 %inc98, ptr %rnbrpes, align 4, !tbaa !19
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %for.body93
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %124 = load i32, ptr %i, align 4, !tbaa !19
  %inc101 = add nsw i32 %124, 1
  store i32 %inc101, ptr %i, align 4, !tbaa !19
  br label %for.cond90, !llvm.loop !90

for.end102:                                       ; preds = %for.cond90
  %125 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %126 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %rnbrpes103 = getelementptr inbounds %struct.cphasedef, ptr %126, i32 0, i32 9
  store i32 %125, ptr %rnbrpes103, align 4, !tbaa !91
  %127 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %128 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %128, i32 0, i32 25
  %arraydecay = getelementptr inbounds [256 x i32], ptr %_lu_recv, i64 0, i64 0
  %129 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator104 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %hypre_MPI_communicator104, align 8, !tbaa !43
  %call105 = call i32 @hypre_MPI_Alltoall(ptr noundef %127, i32 noundef 1, ptr noundef @ompi_mpi_int, ptr noundef %arraydecay, i32 noundef 1, ptr noundef @ompi_mpi_int, ptr noundef %130)
  store i32 0, ptr %snbrpes, align 4, !tbaa !19
  store i32 0, ptr %nsend, align 4, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc130, %for.end102
  %131 = load i32, ptr %i, align 4, !tbaa !19
  %132 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes107 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %132, i32 0, i32 2
  %133 = load i32, ptr %_npes107, align 4, !tbaa !41
  %cmp108 = icmp slt i32 %131, %133
  br i1 %cmp108, label %for.body109, label %for.end132

for.body109:                                      ; preds = %for.cond106
  %134 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv110 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %134, i32 0, i32 25
  %135 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom111 = sext i32 %135 to i64
  %arrayidx112 = getelementptr inbounds [256 x i32], ptr %_lu_recv110, i64 0, i64 %idxprom111
  %136 = load i32, ptr %arrayidx112, align 4, !tbaa !19
  %cmp113 = icmp sgt i32 %136, 0
  br i1 %cmp113, label %if.then114, label %if.end129

if.then114:                                       ; preds = %for.body109
  %137 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %inc115 = add nsw i32 %137, 1
  store i32 %inc115, ptr %snbrpes, align 4, !tbaa !19
  %138 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv116 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %138, i32 0, i32 25
  %139 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom117 = sext i32 %139 to i64
  %arrayidx118 = getelementptr inbounds [256 x i32], ptr %_lu_recv116, i64 0, i64 %idxprom117
  %140 = load i32, ptr %arrayidx118, align 4, !tbaa !19
  %141 = load i32, ptr %nsend, align 4, !tbaa !19
  %add119 = add nsw i32 %141, %140
  store i32 %add119, ptr %nsend, align 4, !tbaa !19
  %142 = load ptr, ptr %maxsendP.addr, align 8, !tbaa !4
  %143 = load i32, ptr %142, align 4, !tbaa !19
  %144 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv120 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %144, i32 0, i32 25
  %145 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom121 = sext i32 %145 to i64
  %arrayidx122 = getelementptr inbounds [256 x i32], ptr %_lu_recv120, i64 0, i64 %idxprom121
  %146 = load i32, ptr %arrayidx122, align 4, !tbaa !19
  %cmp123 = icmp slt i32 %143, %146
  br i1 %cmp123, label %if.then124, label %if.end128

if.then124:                                       ; preds = %if.then114
  %147 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv125 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %147, i32 0, i32 25
  %148 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom126 = sext i32 %148 to i64
  %arrayidx127 = getelementptr inbounds [256 x i32], ptr %_lu_recv125, i64 0, i64 %idxprom126
  %149 = load i32, ptr %arrayidx127, align 4, !tbaa !19
  %150 = load ptr, ptr %maxsendP.addr, align 8, !tbaa !4
  store i32 %149, ptr %150, align 4, !tbaa !19
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.then114
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %for.body109
  br label %for.inc130

for.inc130:                                       ; preds = %if.end129
  %151 = load i32, ptr %i, align 4, !tbaa !19
  %inc131 = add nsw i32 %151, 1
  store i32 %inc131, ptr %i, align 4, !tbaa !19
  br label %for.cond106, !llvm.loop !92

for.end132:                                       ; preds = %for.cond106
  %152 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %153 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %snbrpes133 = getelementptr inbounds %struct.cphasedef, ptr %153, i32 0, i32 8
  store i32 %152, ptr %snbrpes133, align 8, !tbaa !93
  %154 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %add134 = add nsw i32 %154, 1
  %call135 = call ptr @hypre_idx_malloc(i32 noundef %add134, ptr noundef @.str.6)
  %155 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %auxsptr = getelementptr inbounds %struct.cphasedef, ptr %155, i32 0, i32 4
  store ptr %call135, ptr %auxsptr, align 8, !tbaa !94
  %156 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %call136 = call ptr @hypre_idx_malloc(i32 noundef %156, ptr noundef @.str.7)
  %157 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %spes137 = getelementptr inbounds %struct.cphasedef, ptr %157, i32 0, i32 1
  store ptr %call136, ptr %spes137, align 8, !tbaa !95
  store ptr %call136, ptr %spes, align 8, !tbaa !4
  %158 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %add138 = add nsw i32 %158, 1
  %call139 = call ptr @hypre_idx_malloc(i32 noundef %add138, ptr noundef @.str.8)
  %159 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %sptr140 = getelementptr inbounds %struct.cphasedef, ptr %159, i32 0, i32 2
  store ptr %call139, ptr %sptr140, align 8, !tbaa !96
  store ptr %call139, ptr %sptr, align 8, !tbaa !4
  %160 = load i32, ptr %nsend, align 4, !tbaa !19
  %161 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator141 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %hypre_MPI_communicator141, align 8, !tbaa !43
  %call142 = call i32 @hypre_GlobalSEMax(i32 noundef %160, ptr noundef %162)
  %call143 = call ptr @hypre_idx_malloc(i32 noundef %call142, ptr noundef @.str.9)
  %163 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %sindex144 = getelementptr inbounds %struct.cphasedef, ptr %163, i32 0, i32 3
  store ptr %call143, ptr %sindex144, align 8, !tbaa !97
  store ptr %call143, ptr %sindex, align 8, !tbaa !4
  %164 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %call145 = call ptr @hypre_idx_malloc(i32 noundef %164, ptr noundef @.str.10)
  %165 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %rdone = getelementptr inbounds %struct.cphasedef, ptr %165, i32 0, i32 6
  store ptr %call145, ptr %rdone, align 8, !tbaa !98
  %166 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %call146 = call ptr @hypre_idx_malloc(i32 noundef %166, ptr noundef @.str.10)
  %167 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %rpes147 = getelementptr inbounds %struct.cphasedef, ptr %167, i32 0, i32 5
  store ptr %call146, ptr %rpes147, align 8, !tbaa !99
  store ptr %call146, ptr %rpes, align 8, !tbaa !4
  %168 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %add148 = add nsw i32 %168, 1
  %conv = sext i32 %add148 to i64
  %mul = mul i64 8, %conv
  %conv149 = trunc i64 %mul to i32
  %call150 = call ptr @hypre_mymalloc(i32 noundef %conv149, ptr noundef @.str.11)
  %169 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %raddr151 = getelementptr inbounds %struct.cphasedef, ptr %169, i32 0, i32 0
  store ptr %call150, ptr %raddr151, align 8, !tbaa !100
  store ptr %call150, ptr %raddr, align 8, !tbaa !4
  store i32 0, ptr %snbrpes, align 4, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc175, %for.end132
  %170 = load i32, ptr %i, align 4, !tbaa !19
  %171 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes153 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %171, i32 0, i32 2
  %172 = load i32, ptr %_npes153, align 4, !tbaa !41
  %cmp154 = icmp slt i32 %170, %172
  br i1 %cmp154, label %for.body156, label %for.end177

for.body156:                                      ; preds = %for.cond152
  %173 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv157 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %173, i32 0, i32 25
  %174 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom158 = sext i32 %174 to i64
  %arrayidx159 = getelementptr inbounds [256 x i32], ptr %_lu_recv157, i64 0, i64 %idxprom158
  %175 = load i32, ptr %arrayidx159, align 4, !tbaa !19
  %cmp160 = icmp sgt i32 %175, 0
  br i1 %cmp160, label %if.then162, label %if.end174

if.then162:                                       ; preds = %for.body156
  %176 = load i32, ptr %i, align 4, !tbaa !19
  %177 = load ptr, ptr %spes, align 8, !tbaa !4
  %178 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %idxprom163 = sext i32 %178 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %177, i64 %idxprom163
  store i32 %176, ptr %arrayidx164, align 4, !tbaa !19
  %179 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv165 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %179, i32 0, i32 25
  %180 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom166 = sext i32 %180 to i64
  %arrayidx167 = getelementptr inbounds [256 x i32], ptr %_lu_recv165, i64 0, i64 %idxprom166
  %181 = load i32, ptr %arrayidx167, align 4, !tbaa !19
  %182 = load ptr, ptr %sptr, align 8, !tbaa !4
  %183 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %idxprom168 = sext i32 %183 to i64
  %arrayidx169 = getelementptr inbounds i32, ptr %182, i64 %idxprom168
  store i32 %181, ptr %arrayidx169, align 4, !tbaa !19
  %184 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %inc170 = add nsw i32 %184, 1
  store i32 %inc170, ptr %snbrpes, align 4, !tbaa !19
  %185 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lu_recv171 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %185, i32 0, i32 25
  %186 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom172 = sext i32 %186 to i64
  %arrayidx173 = getelementptr inbounds [256 x i32], ptr %_lu_recv171, i64 0, i64 %idxprom172
  store i32 0, ptr %arrayidx173, align 4, !tbaa !19
  br label %if.end174

if.end174:                                        ; preds = %if.then162, %for.body156
  br label %for.inc175

for.inc175:                                       ; preds = %if.end174
  %187 = load i32, ptr %i, align 4, !tbaa !19
  %inc176 = add nsw i32 %187, 1
  store i32 %inc176, ptr %i, align 4, !tbaa !19
  br label %for.cond152, !llvm.loop !101

for.end177:                                       ; preds = %for.cond152
  br label %do.body

do.body:                                          ; preds = %for.end177
  %188 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %snbrpes178 = getelementptr inbounds %struct.cphasedef, ptr %188, i32 0, i32 8
  %189 = load i32, ptr %snbrpes178, align 8, !tbaa !93
  %190 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp179 = icmp eq i32 %189, %190
  %conv180 = zext i1 %cmp179 to i32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, ptr %i, align 4, !tbaa !19
  br label %for.cond181

for.cond181:                                      ; preds = %for.inc191, %do.end
  %191 = load i32, ptr %i, align 4, !tbaa !19
  %192 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp182 = icmp slt i32 %191, %192
  br i1 %cmp182, label %for.body184, label %for.end193

for.body184:                                      ; preds = %for.cond181
  %193 = load ptr, ptr %sptr, align 8, !tbaa !4
  %194 = load i32, ptr %i, align 4, !tbaa !19
  %sub185 = sub nsw i32 %194, 1
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %193, i64 %idxprom186
  %195 = load i32, ptr %arrayidx187, align 4, !tbaa !19
  %196 = load ptr, ptr %sptr, align 8, !tbaa !4
  %197 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom188 = sext i32 %197 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %196, i64 %idxprom188
  %198 = load i32, ptr %arrayidx189, align 4, !tbaa !19
  %add190 = add nsw i32 %198, %195
  store i32 %add190, ptr %arrayidx189, align 4, !tbaa !19
  br label %for.inc191

for.inc191:                                       ; preds = %for.body184
  %199 = load i32, ptr %i, align 4, !tbaa !19
  %inc192 = add nsw i32 %199, 1
  store i32 %inc192, ptr %i, align 4, !tbaa !19
  br label %for.cond181, !llvm.loop !102

for.end193:                                       ; preds = %for.cond181
  %200 = load i32, ptr %snbrpes, align 4, !tbaa !19
  store i32 %200, ptr %i, align 4, !tbaa !19
  br label %for.cond194

for.cond194:                                      ; preds = %for.inc203, %for.end193
  %201 = load i32, ptr %i, align 4, !tbaa !19
  %cmp195 = icmp sgt i32 %201, 0
  br i1 %cmp195, label %for.body197, label %for.end204

for.body197:                                      ; preds = %for.cond194
  %202 = load ptr, ptr %sptr, align 8, !tbaa !4
  %203 = load i32, ptr %i, align 4, !tbaa !19
  %sub198 = sub nsw i32 %203, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds i32, ptr %202, i64 %idxprom199
  %204 = load i32, ptr %arrayidx200, align 4, !tbaa !19
  %205 = load ptr, ptr %sptr, align 8, !tbaa !4
  %206 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom201 = sext i32 %206 to i64
  %arrayidx202 = getelementptr inbounds i32, ptr %205, i64 %idxprom201
  store i32 %204, ptr %arrayidx202, align 4, !tbaa !19
  br label %for.inc203

for.inc203:                                       ; preds = %for.body197
  %207 = load i32, ptr %i, align 4, !tbaa !19
  %dec = add nsw i32 %207, -1
  store i32 %dec, ptr %i, align 4, !tbaa !19
  br label %for.cond194, !llvm.loop !103

for.end204:                                       ; preds = %for.cond194
  %208 = load ptr, ptr %sptr, align 8, !tbaa !4
  %arrayidx205 = getelementptr inbounds i32, ptr %208, i64 0
  store i32 0, ptr %arrayidx205, align 4, !tbaa !19
  %209 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes206 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %209, i32 0, i32 2
  %210 = load i32, ptr %_npes206, align 4, !tbaa !41
  %conv207 = sext i32 %210 to i64
  %call208 = call ptr @hypre_CAlloc(i64 noundef %conv207, i64 noundef 8, i32 noundef 0)
  store ptr %call208, ptr %receive_requests, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc227, %for.end204
  %211 = load i32, ptr %i, align 4, !tbaa !19
  %212 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp210 = icmp slt i32 %211, %212
  br i1 %cmp210, label %for.body212, label %for.end229

for.body212:                                      ; preds = %for.cond209
  %213 = load ptr, ptr %sindex, align 8, !tbaa !4
  %214 = load ptr, ptr %sptr, align 8, !tbaa !4
  %215 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom213 = sext i32 %215 to i64
  %arrayidx214 = getelementptr inbounds i32, ptr %214, i64 %idxprom213
  %216 = load i32, ptr %arrayidx214, align 4, !tbaa !19
  %idx.ext = sext i32 %216 to i64
  %add.ptr = getelementptr inbounds i32, ptr %213, i64 %idx.ext
  %217 = load ptr, ptr %sptr, align 8, !tbaa !4
  %218 = load i32, ptr %i, align 4, !tbaa !19
  %add215 = add nsw i32 %218, 1
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds i32, ptr %217, i64 %idxprom216
  %219 = load i32, ptr %arrayidx217, align 4, !tbaa !19
  %220 = load ptr, ptr %sptr, align 8, !tbaa !4
  %221 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom218 = sext i32 %221 to i64
  %arrayidx219 = getelementptr inbounds i32, ptr %220, i64 %idxprom218
  %222 = load i32, ptr %arrayidx219, align 4, !tbaa !19
  %sub220 = sub nsw i32 %219, %222
  %223 = load ptr, ptr %spes, align 8, !tbaa !4
  %224 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom221 = sext i32 %224 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %223, i64 %idxprom221
  %225 = load i32, ptr %arrayidx222, align 4, !tbaa !19
  %226 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator223 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %226, i32 0, i32 0
  %227 = load ptr, ptr %hypre_MPI_communicator223, align 8, !tbaa !43
  %228 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %229 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom224 = sext i32 %229 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %228, i64 %idxprom224
  %call226 = call i32 @hypre_MPI_Irecv(ptr noundef %add.ptr, i32 noundef %sub220, ptr noundef @ompi_mpi_int, i32 noundef %225, i32 noundef 10, ptr noundef %227, ptr noundef %arrayidx225)
  br label %for.inc227

for.inc227:                                       ; preds = %for.body212
  %230 = load i32, ptr %i, align 4, !tbaa !19
  %inc228 = add nsw i32 %230, 1
  store i32 %inc228, ptr %i, align 4, !tbaa !19
  br label %for.cond209, !llvm.loop !104

for.end229:                                       ; preds = %for.cond209
  store i32 0, ptr %rnbrpes, align 4, !tbaa !19
  store i32 0, ptr %k, align 4, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond230

for.cond230:                                      ; preds = %for.inc265, %for.end229
  %231 = load i32, ptr %i, align 4, !tbaa !19
  %232 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes231 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %232, i32 0, i32 2
  %233 = load i32, ptr %_npes231, align 4, !tbaa !41
  %cmp232 = icmp slt i32 %231, %233
  br i1 %cmp232, label %for.body234, label %for.end267

for.body234:                                      ; preds = %for.cond230
  %234 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %235 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom235 = sext i32 %235 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %234, i64 %idxprom235
  %236 = load i32, ptr %arrayidx236, align 4, !tbaa !19
  %cmp237 = icmp sgt i32 %236, 0
  br i1 %cmp237, label %if.then239, label %if.end264

if.then239:                                       ; preds = %for.body234
  %237 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  %238 = load i32, ptr %k, align 4, !tbaa !19
  %idx.ext240 = sext i32 %238 to i64
  %add.ptr241 = getelementptr inbounds i32, ptr %237, i64 %idx.ext240
  %239 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %240 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom242 = sext i32 %240 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %239, i64 %idxprom242
  %241 = load i32, ptr %arrayidx243, align 4, !tbaa !19
  %242 = load i32, ptr %i, align 4, !tbaa !19
  %243 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator244 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %243, i32 0, i32 0
  %244 = load ptr, ptr %hypre_MPI_communicator244, align 8, !tbaa !43
  %call245 = call i32 @hypre_MPI_Send(ptr noundef %add.ptr241, i32 noundef %241, ptr noundef @ompi_mpi_int, i32 noundef %242, i32 noundef 10, ptr noundef %244)
  %245 = load ptr, ptr %x, align 8, !tbaa !4
  %246 = load i32, ptr %k, align 4, !tbaa !19
  %idx.ext246 = sext i32 %246 to i64
  %add.ptr247 = getelementptr inbounds double, ptr %245, i64 %idx.ext246
  %247 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows248 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %247, i32 0, i32 16
  %248 = load i32, ptr %_lnrows248, align 4, !tbaa !11
  %idx.ext249 = sext i32 %248 to i64
  %add.ptr250 = getelementptr inbounds double, ptr %add.ptr247, i64 %idx.ext249
  %249 = load ptr, ptr %raddr, align 8, !tbaa !4
  %250 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %idxprom251 = sext i32 %250 to i64
  %arrayidx252 = getelementptr inbounds ptr, ptr %249, i64 %idxprom251
  store ptr %add.ptr250, ptr %arrayidx252, align 8, !tbaa !4
  %251 = load i32, ptr %i, align 4, !tbaa !19
  %252 = load ptr, ptr %rpes, align 8, !tbaa !4
  %253 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %idxprom253 = sext i32 %253 to i64
  %arrayidx254 = getelementptr inbounds i32, ptr %252, i64 %idxprom253
  store i32 %251, ptr %arrayidx254, align 4, !tbaa !19
  %254 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %inc255 = add nsw i32 %254, 1
  store i32 %inc255, ptr %rnbrpes, align 4, !tbaa !19
  %255 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %256 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom256 = sext i32 %256 to i64
  %arrayidx257 = getelementptr inbounds i32, ptr %255, i64 %idxprom256
  %257 = load i32, ptr %arrayidx257, align 4, !tbaa !19
  %258 = load i32, ptr %k, align 4, !tbaa !19
  %add258 = add nsw i32 %258, %257
  store i32 %add258, ptr %k, align 4, !tbaa !19
  br label %do.body259

do.body259:                                       ; preds = %if.then239
  %259 = load i32, ptr %k, align 4, !tbaa !19
  %260 = load ptr, ptr %ddist.addr, align 8, !tbaa !4
  %ddist_nrows = getelementptr inbounds %struct.distdef, ptr %260, i32 0, i32 0
  %261 = load i32, ptr %ddist_nrows, align 8, !tbaa !75
  %cmp260 = icmp slt i32 %259, %261
  %conv261 = zext i1 %cmp260 to i32
  br label %do.cond262

do.cond262:                                       ; preds = %do.body259
  br label %do.end263

do.end263:                                        ; preds = %do.cond262
  br label %if.end264

if.end264:                                        ; preds = %do.end263, %for.body234
  br label %for.inc265

for.inc265:                                       ; preds = %if.end264
  %262 = load i32, ptr %i, align 4, !tbaa !19
  %inc266 = add nsw i32 %262, 1
  store i32 %inc266, ptr %i, align 4, !tbaa !19
  br label %for.cond230, !llvm.loop !105

for.end267:                                       ; preds = %for.cond230
  %263 = load ptr, ptr %x, align 8, !tbaa !4
  %264 = load i32, ptr %k, align 4, !tbaa !19
  %idx.ext268 = sext i32 %264 to i64
  %add.ptr269 = getelementptr inbounds double, ptr %263, i64 %idx.ext268
  %265 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows270 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %265, i32 0, i32 16
  %266 = load i32, ptr %_lnrows270, align 4, !tbaa !11
  %idx.ext271 = sext i32 %266 to i64
  %add.ptr272 = getelementptr inbounds double, ptr %add.ptr269, i64 %idx.ext271
  %267 = load ptr, ptr %raddr, align 8, !tbaa !4
  %268 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %idxprom273 = sext i32 %268 to i64
  %arrayidx274 = getelementptr inbounds ptr, ptr %267, i64 %idxprom273
  store ptr %add.ptr272, ptr %arrayidx274, align 8, !tbaa !4
  br label %do.body275

do.body275:                                       ; preds = %for.end267
  %269 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %rnbrpes276 = getelementptr inbounds %struct.cphasedef, ptr %269, i32 0, i32 9
  %270 = load i32, ptr %rnbrpes276, align 4, !tbaa !91
  %271 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp277 = icmp eq i32 %270, %271
  %conv278 = zext i1 %cmp277 to i32
  br label %do.cond279

do.cond279:                                       ; preds = %do.body275
  br label %do.end280

do.end280:                                        ; preds = %do.cond279
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond281

for.cond281:                                      ; preds = %for.inc288, %do.end280
  %272 = load i32, ptr %i, align 4, !tbaa !19
  %273 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp282 = icmp slt i32 %272, %273
  br i1 %cmp282, label %for.body284, label %for.end290

for.body284:                                      ; preds = %for.cond281
  %274 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %275 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom285 = sext i32 %275 to i64
  %arrayidx286 = getelementptr inbounds ptr, ptr %274, i64 %idxprom285
  %call287 = call i32 @hypre_MPI_Wait(ptr noundef %arrayidx286, ptr noundef %Status)
  br label %for.inc288

for.inc288:                                       ; preds = %for.body284
  %276 = load i32, ptr %i, align 4, !tbaa !19
  %inc289 = add nsw i32 %276, 1
  store i32 %inc289, ptr %i, align 4, !tbaa !19
  br label %for.cond281, !llvm.loop !106

for.end290:                                       ; preds = %for.cond281
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond291

for.cond291:                                      ; preds = %for.inc307, %for.end290
  %277 = load i32, ptr %i, align 4, !tbaa !19
  %278 = load i32, ptr %nsend, align 4, !tbaa !19
  %cmp292 = icmp slt i32 %277, %278
  br i1 %cmp292, label %for.body294, label %for.end309

for.body294:                                      ; preds = %for.cond291
  %279 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow295 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %279, i32 0, i32 11
  %280 = load i32, ptr %_firstrow295, align 8, !tbaa !78
  %281 = load ptr, ptr %sindex, align 8, !tbaa !4
  %282 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom296 = sext i32 %282 to i64
  %arrayidx297 = getelementptr inbounds i32, ptr %281, i64 %idxprom296
  %283 = load i32, ptr %arrayidx297, align 4, !tbaa !19
  %284 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lastrow298 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %284, i32 0, i32 12
  %285 = load i32, ptr %_lastrow298, align 4, !tbaa !79
  %286 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  call void @hypre_CheckBounds(i32 noundef %280, i32 noundef %283, i32 noundef %285, ptr noundef %286)
  %287 = load ptr, ptr %iperm, align 8, !tbaa !4
  %288 = load ptr, ptr %sindex, align 8, !tbaa !4
  %289 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom299 = sext i32 %289 to i64
  %arrayidx300 = getelementptr inbounds i32, ptr %288, i64 %idxprom299
  %290 = load i32, ptr %arrayidx300, align 4, !tbaa !19
  %291 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow301 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %291, i32 0, i32 11
  %292 = load i32, ptr %_firstrow301, align 8, !tbaa !78
  %sub302 = sub nsw i32 %290, %292
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds i32, ptr %287, i64 %idxprom303
  %293 = load i32, ptr %arrayidx304, align 4, !tbaa !19
  %294 = load ptr, ptr %sindex, align 8, !tbaa !4
  %295 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom305 = sext i32 %295 to i64
  %arrayidx306 = getelementptr inbounds i32, ptr %294, i64 %idxprom305
  store i32 %293, ptr %arrayidx306, align 4, !tbaa !19
  br label %for.inc307

for.inc307:                                       ; preds = %for.body294
  %296 = load i32, ptr %i, align 4, !tbaa !19
  %inc308 = add nsw i32 %296, 1
  store i32 %inc308, ptr %i, align 4, !tbaa !19
  br label %for.cond291, !llvm.loop !107

for.end309:                                       ; preds = %for.cond291
  %297 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool310 = icmp ne i32 %297, 0
  br i1 %tobool310, label %if.then311, label %if.else329

if.then311:                                       ; preds = %for.end309
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond312

for.cond312:                                      ; preds = %for.inc326, %if.then311
  %298 = load i32, ptr %i, align 4, !tbaa !19
  %299 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp313 = icmp slt i32 %298, %299
  br i1 %cmp313, label %for.body315, label %for.end328

for.body315:                                      ; preds = %for.cond312
  %300 = load ptr, ptr %sptr, align 8, !tbaa !4
  %301 = load i32, ptr %i, align 4, !tbaa !19
  %add316 = add nsw i32 %301, 1
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %300, i64 %idxprom317
  %302 = load i32, ptr %arrayidx318, align 4, !tbaa !19
  %303 = load ptr, ptr %sptr, align 8, !tbaa !4
  %304 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom319 = sext i32 %304 to i64
  %arrayidx320 = getelementptr inbounds i32, ptr %303, i64 %idxprom319
  %305 = load i32, ptr %arrayidx320, align 4, !tbaa !19
  %sub321 = sub nsw i32 %302, %305
  %306 = load ptr, ptr %sindex, align 8, !tbaa !4
  %307 = load ptr, ptr %sptr, align 8, !tbaa !4
  %308 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom322 = sext i32 %308 to i64
  %arrayidx323 = getelementptr inbounds i32, ptr %307, i64 %idxprom322
  %309 = load i32, ptr %arrayidx323, align 4, !tbaa !19
  %idx.ext324 = sext i32 %309 to i64
  %add.ptr325 = getelementptr inbounds i32, ptr %306, i64 %idx.ext324
  call void @hypre_sincsort_fast(i32 noundef %sub321, ptr noundef %add.ptr325)
  br label %for.inc326

for.inc326:                                       ; preds = %for.body315
  %310 = load i32, ptr %i, align 4, !tbaa !19
  %inc327 = add nsw i32 %310, 1
  store i32 %inc327, ptr %i, align 4, !tbaa !19
  br label %for.cond312, !llvm.loop !108

for.end328:                                       ; preds = %for.cond312
  br label %if.end347

if.else329:                                       ; preds = %for.end309
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc344, %if.else329
  %311 = load i32, ptr %i, align 4, !tbaa !19
  %312 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp331 = icmp slt i32 %311, %312
  br i1 %cmp331, label %for.body333, label %for.end346

for.body333:                                      ; preds = %for.cond330
  %313 = load ptr, ptr %sptr, align 8, !tbaa !4
  %314 = load i32, ptr %i, align 4, !tbaa !19
  %add334 = add nsw i32 %314, 1
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds i32, ptr %313, i64 %idxprom335
  %315 = load i32, ptr %arrayidx336, align 4, !tbaa !19
  %316 = load ptr, ptr %sptr, align 8, !tbaa !4
  %317 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom337 = sext i32 %317 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %316, i64 %idxprom337
  %318 = load i32, ptr %arrayidx338, align 4, !tbaa !19
  %sub339 = sub nsw i32 %315, %318
  %319 = load ptr, ptr %sindex, align 8, !tbaa !4
  %320 = load ptr, ptr %sptr, align 8, !tbaa !4
  %321 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom340 = sext i32 %321 to i64
  %arrayidx341 = getelementptr inbounds i32, ptr %320, i64 %idxprom340
  %322 = load i32, ptr %arrayidx341, align 4, !tbaa !19
  %idx.ext342 = sext i32 %322 to i64
  %add.ptr343 = getelementptr inbounds i32, ptr %319, i64 %idx.ext342
  call void @hypre_sdecsort_fast(i32 noundef %sub339, ptr noundef %add.ptr343)
  br label %for.inc344

for.inc344:                                       ; preds = %for.body333
  %323 = load i32, ptr %i, align 4, !tbaa !19
  %inc345 = add nsw i32 %323, 1
  store i32 %inc345, ptr %i, align 4, !tbaa !19
  br label %for.cond330, !llvm.loop !109

for.end346:                                       ; preds = %for.cond330
  br label %if.end347

if.end347:                                        ; preds = %for.end346, %for.end328
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond348

for.cond348:                                      ; preds = %for.inc363, %if.end347
  %324 = load i32, ptr %i, align 4, !tbaa !19
  %325 = load i32, ptr %nsend, align 4, !tbaa !19
  %cmp349 = icmp slt i32 %324, %325
  br i1 %cmp349, label %for.body351, label %for.end365

for.body351:                                      ; preds = %for.cond348
  %326 = load ptr, ptr %sindex, align 8, !tbaa !4
  %327 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom352 = sext i32 %327 to i64
  %arrayidx353 = getelementptr inbounds i32, ptr %326, i64 %idxprom352
  %328 = load i32, ptr %arrayidx353, align 4, !tbaa !19
  %329 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows354 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %329, i32 0, i32 16
  %330 = load i32, ptr %_lnrows354, align 4, !tbaa !11
  %331 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  call void @hypre_CheckBounds(i32 noundef 0, i32 noundef %328, i32 noundef %330, ptr noundef %331)
  %332 = load ptr, ptr %perm, align 8, !tbaa !4
  %333 = load ptr, ptr %sindex, align 8, !tbaa !4
  %334 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom355 = sext i32 %334 to i64
  %arrayidx356 = getelementptr inbounds i32, ptr %333, i64 %idxprom355
  %335 = load i32, ptr %arrayidx356, align 4, !tbaa !19
  %idxprom357 = sext i32 %335 to i64
  %arrayidx358 = getelementptr inbounds i32, ptr %332, i64 %idxprom357
  %336 = load i32, ptr %arrayidx358, align 4, !tbaa !19
  %337 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow359 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %337, i32 0, i32 11
  %338 = load i32, ptr %_firstrow359, align 8, !tbaa !78
  %add360 = add nsw i32 %336, %338
  %339 = load ptr, ptr %sindex, align 8, !tbaa !4
  %340 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom361 = sext i32 %340 to i64
  %arrayidx362 = getelementptr inbounds i32, ptr %339, i64 %idxprom361
  store i32 %add360, ptr %arrayidx362, align 4, !tbaa !19
  br label %for.inc363

for.inc363:                                       ; preds = %for.body351
  %341 = load i32, ptr %i, align 4, !tbaa !19
  %inc364 = add nsw i32 %341, 1
  store i32 %inc364, ptr %i, align 4, !tbaa !19
  br label %for.cond348, !llvm.loop !110

for.end365:                                       ; preds = %for.cond348
  store i32 0, ptr %k, align 4, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond366

for.cond366:                                      ; preds = %for.inc388, %for.end365
  %342 = load i32, ptr %i, align 4, !tbaa !19
  %343 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes367 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %343, i32 0, i32 2
  %344 = load i32, ptr %_npes367, align 4, !tbaa !41
  %cmp368 = icmp slt i32 %342, %344
  br i1 %cmp368, label %for.body370, label %for.end390

for.body370:                                      ; preds = %for.cond366
  %345 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %346 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom371 = sext i32 %346 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %345, i64 %idxprom371
  %347 = load i32, ptr %arrayidx372, align 4, !tbaa !19
  %cmp373 = icmp sgt i32 %347, 0
  br i1 %cmp373, label %if.then375, label %if.end387

if.then375:                                       ; preds = %for.body370
  %348 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  %349 = load i32, ptr %k, align 4, !tbaa !19
  %idx.ext376 = sext i32 %349 to i64
  %add.ptr377 = getelementptr inbounds i32, ptr %348, i64 %idx.ext376
  %350 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %351 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom378 = sext i32 %351 to i64
  %arrayidx379 = getelementptr inbounds i32, ptr %350, i64 %idxprom378
  %352 = load i32, ptr %arrayidx379, align 4, !tbaa !19
  %353 = load i32, ptr %i, align 4, !tbaa !19
  %354 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator380 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %354, i32 0, i32 0
  %355 = load ptr, ptr %hypre_MPI_communicator380, align 8, !tbaa !43
  %356 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %357 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom381 = sext i32 %357 to i64
  %arrayidx382 = getelementptr inbounds ptr, ptr %356, i64 %idxprom381
  %call383 = call i32 @hypre_MPI_Irecv(ptr noundef %add.ptr377, i32 noundef %352, ptr noundef @ompi_mpi_int, i32 noundef %353, i32 noundef 11, ptr noundef %355, ptr noundef %arrayidx382)
  %358 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %359 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom384 = sext i32 %359 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %358, i64 %idxprom384
  %360 = load i32, ptr %arrayidx385, align 4, !tbaa !19
  %361 = load i32, ptr %k, align 4, !tbaa !19
  %add386 = add nsw i32 %361, %360
  store i32 %add386, ptr %k, align 4, !tbaa !19
  br label %if.end387

if.end387:                                        ; preds = %if.then375, %for.body370
  br label %for.inc388

for.inc388:                                       ; preds = %if.end387
  %362 = load i32, ptr %i, align 4, !tbaa !19
  %inc389 = add nsw i32 %362, 1
  store i32 %inc389, ptr %i, align 4, !tbaa !19
  br label %for.cond366, !llvm.loop !111

for.end390:                                       ; preds = %for.cond366
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond391

for.cond391:                                      ; preds = %for.inc409, %for.end390
  %363 = load i32, ptr %i, align 4, !tbaa !19
  %364 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp392 = icmp slt i32 %363, %364
  br i1 %cmp392, label %for.body394, label %for.end411

for.body394:                                      ; preds = %for.cond391
  %365 = load ptr, ptr %sindex, align 8, !tbaa !4
  %366 = load ptr, ptr %sptr, align 8, !tbaa !4
  %367 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom395 = sext i32 %367 to i64
  %arrayidx396 = getelementptr inbounds i32, ptr %366, i64 %idxprom395
  %368 = load i32, ptr %arrayidx396, align 4, !tbaa !19
  %idx.ext397 = sext i32 %368 to i64
  %add.ptr398 = getelementptr inbounds i32, ptr %365, i64 %idx.ext397
  %369 = load ptr, ptr %sptr, align 8, !tbaa !4
  %370 = load i32, ptr %i, align 4, !tbaa !19
  %add399 = add nsw i32 %370, 1
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds i32, ptr %369, i64 %idxprom400
  %371 = load i32, ptr %arrayidx401, align 4, !tbaa !19
  %372 = load ptr, ptr %sptr, align 8, !tbaa !4
  %373 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom402 = sext i32 %373 to i64
  %arrayidx403 = getelementptr inbounds i32, ptr %372, i64 %idxprom402
  %374 = load i32, ptr %arrayidx403, align 4, !tbaa !19
  %sub404 = sub nsw i32 %371, %374
  %375 = load ptr, ptr %spes, align 8, !tbaa !4
  %376 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom405 = sext i32 %376 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %375, i64 %idxprom405
  %377 = load i32, ptr %arrayidx406, align 4, !tbaa !19
  %378 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator407 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %378, i32 0, i32 0
  %379 = load ptr, ptr %hypre_MPI_communicator407, align 8, !tbaa !43
  %call408 = call i32 @hypre_MPI_Send(ptr noundef %add.ptr398, i32 noundef %sub404, ptr noundef @ompi_mpi_int, i32 noundef %377, i32 noundef 11, ptr noundef %379)
  br label %for.inc409

for.inc409:                                       ; preds = %for.body394
  %380 = load i32, ptr %i, align 4, !tbaa !19
  %inc410 = add nsw i32 %380, 1
  store i32 %inc410, ptr %i, align 4, !tbaa !19
  br label %for.cond391, !llvm.loop !112

for.end411:                                       ; preds = %for.cond391
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond412

for.cond412:                                      ; preds = %for.inc426, %for.end411
  %381 = load i32, ptr %i, align 4, !tbaa !19
  %382 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_npes413 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %382, i32 0, i32 2
  %383 = load i32, ptr %_npes413, align 4, !tbaa !41
  %cmp414 = icmp slt i32 %381, %383
  br i1 %cmp414, label %for.body416, label %for.end428

for.body416:                                      ; preds = %for.cond412
  %384 = load ptr, ptr %petotal.addr, align 8, !tbaa !4
  %385 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom417 = sext i32 %385 to i64
  %arrayidx418 = getelementptr inbounds i32, ptr %384, i64 %idxprom417
  %386 = load i32, ptr %arrayidx418, align 4, !tbaa !19
  %cmp419 = icmp sgt i32 %386, 0
  br i1 %cmp419, label %if.then421, label %if.end425

if.then421:                                       ; preds = %for.body416
  %387 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  %388 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom422 = sext i32 %388 to i64
  %arrayidx423 = getelementptr inbounds ptr, ptr %387, i64 %idxprom422
  %call424 = call i32 @hypre_MPI_Wait(ptr noundef %arrayidx423, ptr noundef %Status)
  br label %if.end425

if.end425:                                        ; preds = %if.then421, %for.body416
  br label %for.inc426

for.inc426:                                       ; preds = %if.end425
  %389 = load i32, ptr %i, align 4, !tbaa !19
  %inc427 = add nsw i32 %389, 1
  store i32 %inc427, ptr %i, align 4, !tbaa !19
  br label %for.cond412, !llvm.loop !113

for.end428:                                       ; preds = %for.cond412
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc441, %for.end428
  %390 = load i32, ptr %i, align 4, !tbaa !19
  %391 = load i32, ptr %nsend, align 4, !tbaa !19
  %cmp430 = icmp slt i32 %390, %391
  br i1 %cmp430, label %for.body432, label %for.end443

for.body432:                                      ; preds = %for.cond429
  %392 = load ptr, ptr %iperm, align 8, !tbaa !4
  %393 = load ptr, ptr %sindex, align 8, !tbaa !4
  %394 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom433 = sext i32 %394 to i64
  %arrayidx434 = getelementptr inbounds i32, ptr %393, i64 %idxprom433
  %395 = load i32, ptr %arrayidx434, align 4, !tbaa !19
  %396 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow435 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %396, i32 0, i32 11
  %397 = load i32, ptr %_firstrow435, align 8, !tbaa !78
  %sub436 = sub nsw i32 %395, %397
  %idxprom437 = sext i32 %sub436 to i64
  %arrayidx438 = getelementptr inbounds i32, ptr %392, i64 %idxprom437
  %398 = load i32, ptr %arrayidx438, align 4, !tbaa !19
  %399 = load ptr, ptr %sindex, align 8, !tbaa !4
  %400 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom439 = sext i32 %400 to i64
  %arrayidx440 = getelementptr inbounds i32, ptr %399, i64 %idxprom439
  store i32 %398, ptr %arrayidx440, align 4, !tbaa !19
  br label %for.inc441

for.inc441:                                       ; preds = %for.body432
  %401 = load i32, ptr %i, align 4, !tbaa !19
  %inc442 = add nsw i32 %401, 1
  store i32 %inc442, ptr %i, align 4, !tbaa !19
  br label %for.cond429, !llvm.loop !114

for.end443:                                       ; preds = %for.cond429
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond444

for.cond444:                                      ; preds = %for.inc463, %for.end443
  %402 = load i32, ptr %i, align 4, !tbaa !19
  %403 = load i32, ptr %nrecv, align 4, !tbaa !19
  %cmp445 = icmp slt i32 %402, %403
  br i1 %cmp445, label %for.body447, label %for.end465

for.body447:                                      ; preds = %for.cond444
  br label %do.body448

do.body448:                                       ; preds = %for.body447
  %404 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %405 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  %406 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom449 = sext i32 %406 to i64
  %arrayidx450 = getelementptr inbounds i32, ptr %405, i64 %idxprom449
  %407 = load i32, ptr %arrayidx450, align 4, !tbaa !19
  %idxprom451 = sext i32 %407 to i64
  %arrayidx452 = getelementptr inbounds i32, ptr %404, i64 %idxprom451
  %408 = load i32, ptr %arrayidx452, align 4, !tbaa !19
  %cmp453 = icmp eq i32 %408, -2
  %conv454 = zext i1 %cmp453 to i32
  br label %do.cond455

do.cond455:                                       ; preds = %do.body448
  br label %do.end456

do.end456:                                        ; preds = %do.cond455
  %409 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows457 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %409, i32 0, i32 16
  %410 = load i32, ptr %_lnrows457, align 4, !tbaa !11
  %411 = load i32, ptr %i, align 4, !tbaa !19
  %add458 = add nsw i32 %410, %411
  %412 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %413 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  %414 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom459 = sext i32 %414 to i64
  %arrayidx460 = getelementptr inbounds i32, ptr %413, i64 %idxprom459
  %415 = load i32, ptr %arrayidx460, align 4, !tbaa !19
  %idxprom461 = sext i32 %415 to i64
  %arrayidx462 = getelementptr inbounds i32, ptr %412, i64 %idxprom461
  store i32 %add458, ptr %arrayidx462, align 4, !tbaa !19
  br label %for.inc463

for.inc463:                                       ; preds = %do.end456
  %416 = load i32, ptr %i, align 4, !tbaa !19
  %inc464 = add nsw i32 %416, 1
  store i32 %inc464, ptr %i, align 4, !tbaa !19
  br label %for.cond444, !llvm.loop !115

for.end465:                                       ; preds = %for.cond444
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond466

for.cond466:                                      ; preds = %for.inc477, %for.end465
  %417 = load i32, ptr %i, align 4, !tbaa !19
  %418 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows467 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %418, i32 0, i32 16
  %419 = load i32, ptr %_lnrows467, align 4, !tbaa !11
  %cmp468 = icmp slt i32 %417, %419
  br i1 %cmp468, label %for.body470, label %for.end479

for.body470:                                      ; preds = %for.cond466
  %420 = load i32, ptr %i, align 4, !tbaa !19
  %421 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %422 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow471 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %422, i32 0, i32 11
  %423 = load i32, ptr %_firstrow471, align 8, !tbaa !78
  %424 = load ptr, ptr %perm, align 8, !tbaa !4
  %425 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom472 = sext i32 %425 to i64
  %arrayidx473 = getelementptr inbounds i32, ptr %424, i64 %idxprom472
  %426 = load i32, ptr %arrayidx473, align 4, !tbaa !19
  %add474 = add nsw i32 %423, %426
  %idxprom475 = sext i32 %add474 to i64
  %arrayidx476 = getelementptr inbounds i32, ptr %421, i64 %idxprom475
  store i32 %420, ptr %arrayidx476, align 4, !tbaa !19
  br label %for.inc477

for.inc477:                                       ; preds = %for.body470
  %427 = load i32, ptr %i, align 4, !tbaa !19
  %inc478 = add nsw i32 %427, 1
  store i32 %inc478, ptr %i, align 4, !tbaa !19
  br label %for.cond466, !llvm.loop !116

for.end479:                                       ; preds = %for.cond466
  %428 = load i32, ptr %nlevels, align 4, !tbaa !19
  %429 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %mul480 = mul nsw i32 %428, %429
  %call481 = call ptr @hypre_idx_malloc(i32 noundef %mul480, ptr noundef @.str.12)
  %430 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %rnum482 = getelementptr inbounds %struct.cphasedef, ptr %430, i32 0, i32 7
  store ptr %call481, ptr %rnum482, align 8, !tbaa !117
  %431 = load i32, ptr %nlevels, align 4, !tbaa !19
  %call483 = call ptr @hypre_idx_malloc(i32 noundef %431, ptr noundef @.str.13)
  store ptr %call483, ptr %rnum, align 8, !tbaa !4
  %432 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %auxsptr484 = getelementptr inbounds %struct.cphasedef, ptr %432, i32 0, i32 4
  %433 = load ptr, ptr %auxsptr484, align 8, !tbaa !94
  %434 = load ptr, ptr %sptr, align 8, !tbaa !4
  %435 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %add485 = add nsw i32 %435, 1
  %conv486 = sext i32 %add485 to i64
  call void @hypre_memcpy_idx(ptr noundef %433, ptr noundef %434, i64 noundef %conv486)
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond487

for.cond487:                                      ; preds = %for.inc573, %for.end479
  %436 = load i32, ptr %i, align 4, !tbaa !19
  %437 = load i32, ptr %snbrpes, align 4, !tbaa !19
  %cmp488 = icmp slt i32 %436, %437
  br i1 %cmp488, label %for.body490, label %for.end575

for.body490:                                      ; preds = %for.cond487
  %438 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool491 = icmp ne i32 %438, 0
  br i1 %tobool491, label %if.then492, label %if.else530

if.then492:                                       ; preds = %for.body490
  store i32 1, ptr %ii, align 4, !tbaa !19
  br label %for.cond493

for.cond493:                                      ; preds = %for.inc524, %if.then492
  %439 = load i32, ptr %ii, align 4, !tbaa !19
  %440 = load i32, ptr %nlevels, align 4, !tbaa !19
  %cmp494 = icmp slt i32 %439, %440
  br i1 %cmp494, label %for.body496, label %for.end526

for.body496:                                      ; preds = %for.cond493
  %441 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %auxsptr497 = getelementptr inbounds %struct.cphasedef, ptr %441, i32 0, i32 4
  %442 = load ptr, ptr %auxsptr497, align 8, !tbaa !94
  %443 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom498 = sext i32 %443 to i64
  %arrayidx499 = getelementptr inbounds i32, ptr %442, i64 %idxprom498
  %444 = load i32, ptr %arrayidx499, align 4, !tbaa !19
  store i32 %444, ptr %j, align 4, !tbaa !19
  store i32 0, ptr %l, align 4, !tbaa !19
  br label %for.cond500

for.cond500:                                      ; preds = %for.inc514, %for.body496
  %445 = load i32, ptr %j, align 4, !tbaa !19
  %446 = load ptr, ptr %sptr, align 8, !tbaa !4
  %447 = load i32, ptr %i, align 4, !tbaa !19
  %add501 = add nsw i32 %447, 1
  %idxprom502 = sext i32 %add501 to i64
  %arrayidx503 = getelementptr inbounds i32, ptr %446, i64 %idxprom502
  %448 = load i32, ptr %arrayidx503, align 4, !tbaa !19
  %cmp504 = icmp slt i32 %445, %448
  br i1 %cmp504, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond500
  %449 = load ptr, ptr %sindex, align 8, !tbaa !4
  %450 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom506 = sext i32 %450 to i64
  %arrayidx507 = getelementptr inbounds i32, ptr %449, i64 %idxprom506
  %451 = load i32, ptr %arrayidx507, align 4, !tbaa !19
  %452 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %nnodes508 = getelementptr inbounds %struct.factormatdef, ptr %452, i32 0, i32 20
  %453 = load i32, ptr %ii, align 4, !tbaa !19
  %idxprom509 = sext i32 %453 to i64
  %arrayidx510 = getelementptr inbounds [500 x i32], ptr %nnodes508, i64 0, i64 %idxprom509
  %454 = load i32, ptr %arrayidx510, align 4, !tbaa !19
  %cmp511 = icmp slt i32 %451, %454
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond500
  %455 = phi i1 [ false, %for.cond500 ], [ %cmp511, %land.rhs ]
  br i1 %455, label %for.body513, label %for.end517

for.body513:                                      ; preds = %land.end
  br label %for.inc514

for.inc514:                                       ; preds = %for.body513
  %456 = load i32, ptr %j, align 4, !tbaa !19
  %inc515 = add nsw i32 %456, 1
  store i32 %inc515, ptr %j, align 4, !tbaa !19
  %457 = load i32, ptr %l, align 4, !tbaa !19
  %inc516 = add nsw i32 %457, 1
  store i32 %inc516, ptr %l, align 4, !tbaa !19
  br label %for.cond500, !llvm.loop !118

for.end517:                                       ; preds = %land.end
  %458 = load i32, ptr %l, align 4, !tbaa !19
  %459 = load ptr, ptr %rnum, align 8, !tbaa !4
  %460 = load i32, ptr %ii, align 4, !tbaa !19
  %sub518 = sub nsw i32 %460, 1
  %idxprom519 = sext i32 %sub518 to i64
  %arrayidx520 = getelementptr inbounds i32, ptr %459, i64 %idxprom519
  store i32 %458, ptr %arrayidx520, align 4, !tbaa !19
  %461 = load i32, ptr %j, align 4, !tbaa !19
  %462 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %auxsptr521 = getelementptr inbounds %struct.cphasedef, ptr %462, i32 0, i32 4
  %463 = load ptr, ptr %auxsptr521, align 8, !tbaa !94
  %464 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom522 = sext i32 %464 to i64
  %arrayidx523 = getelementptr inbounds i32, ptr %463, i64 %idxprom522
  store i32 %461, ptr %arrayidx523, align 4, !tbaa !19
  br label %for.inc524

for.inc524:                                       ; preds = %for.end517
  %465 = load i32, ptr %ii, align 4, !tbaa !19
  %inc525 = add nsw i32 %465, 1
  store i32 %inc525, ptr %ii, align 4, !tbaa !19
  br label %for.cond493, !llvm.loop !119

for.end526:                                       ; preds = %for.cond493
  %466 = load ptr, ptr %rnum, align 8, !tbaa !4
  %467 = load i32, ptr %nlevels, align 4, !tbaa !19
  %sub527 = sub nsw i32 %467, 1
  %idxprom528 = sext i32 %sub527 to i64
  %arrayidx529 = getelementptr inbounds i32, ptr %466, i64 %idxprom528
  store i32 0, ptr %arrayidx529, align 4, !tbaa !19
  br label %if.end568

if.else530:                                       ; preds = %for.body490
  %468 = load i32, ptr %nlevels, align 4, !tbaa !19
  store i32 %468, ptr %ii, align 4, !tbaa !19
  br label %for.cond531

for.cond531:                                      ; preds = %for.inc565, %if.else530
  %469 = load i32, ptr %ii, align 4, !tbaa !19
  %cmp532 = icmp sgt i32 %469, 0
  br i1 %cmp532, label %for.body534, label %for.end567

for.body534:                                      ; preds = %for.cond531
  %470 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %auxsptr535 = getelementptr inbounds %struct.cphasedef, ptr %470, i32 0, i32 4
  %471 = load ptr, ptr %auxsptr535, align 8, !tbaa !94
  %472 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom536 = sext i32 %472 to i64
  %arrayidx537 = getelementptr inbounds i32, ptr %471, i64 %idxprom536
  %473 = load i32, ptr %arrayidx537, align 4, !tbaa !19
  store i32 %473, ptr %j, align 4, !tbaa !19
  store i32 0, ptr %l, align 4, !tbaa !19
  br label %for.cond538

for.cond538:                                      ; preds = %for.inc555, %for.body534
  %474 = load i32, ptr %j, align 4, !tbaa !19
  %475 = load ptr, ptr %sptr, align 8, !tbaa !4
  %476 = load i32, ptr %i, align 4, !tbaa !19
  %add539 = add nsw i32 %476, 1
  %idxprom540 = sext i32 %add539 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %475, i64 %idxprom540
  %477 = load i32, ptr %arrayidx541, align 4, !tbaa !19
  %cmp542 = icmp slt i32 %474, %477
  br i1 %cmp542, label %land.rhs544, label %land.end553

land.rhs544:                                      ; preds = %for.cond538
  %478 = load ptr, ptr %sindex, align 8, !tbaa !4
  %479 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom545 = sext i32 %479 to i64
  %arrayidx546 = getelementptr inbounds i32, ptr %478, i64 %idxprom545
  %480 = load i32, ptr %arrayidx546, align 4, !tbaa !19
  %481 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %nnodes547 = getelementptr inbounds %struct.factormatdef, ptr %481, i32 0, i32 20
  %482 = load i32, ptr %ii, align 4, !tbaa !19
  %sub548 = sub nsw i32 %482, 1
  %idxprom549 = sext i32 %sub548 to i64
  %arrayidx550 = getelementptr inbounds [500 x i32], ptr %nnodes547, i64 0, i64 %idxprom549
  %483 = load i32, ptr %arrayidx550, align 4, !tbaa !19
  %cmp551 = icmp sge i32 %480, %483
  br label %land.end553

land.end553:                                      ; preds = %land.rhs544, %for.cond538
  %484 = phi i1 [ false, %for.cond538 ], [ %cmp551, %land.rhs544 ]
  br i1 %484, label %for.body554, label %for.end558

for.body554:                                      ; preds = %land.end553
  br label %for.inc555

for.inc555:                                       ; preds = %for.body554
  %485 = load i32, ptr %j, align 4, !tbaa !19
  %inc556 = add nsw i32 %485, 1
  store i32 %inc556, ptr %j, align 4, !tbaa !19
  %486 = load i32, ptr %l, align 4, !tbaa !19
  %inc557 = add nsw i32 %486, 1
  store i32 %inc557, ptr %l, align 4, !tbaa !19
  br label %for.cond538, !llvm.loop !120

for.end558:                                       ; preds = %land.end553
  %487 = load i32, ptr %l, align 4, !tbaa !19
  %488 = load ptr, ptr %rnum, align 8, !tbaa !4
  %489 = load i32, ptr %ii, align 4, !tbaa !19
  %sub559 = sub nsw i32 %489, 1
  %idxprom560 = sext i32 %sub559 to i64
  %arrayidx561 = getelementptr inbounds i32, ptr %488, i64 %idxprom560
  store i32 %487, ptr %arrayidx561, align 4, !tbaa !19
  %490 = load i32, ptr %j, align 4, !tbaa !19
  %491 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %auxsptr562 = getelementptr inbounds %struct.cphasedef, ptr %491, i32 0, i32 4
  %492 = load ptr, ptr %auxsptr562, align 8, !tbaa !94
  %493 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom563 = sext i32 %493 to i64
  %arrayidx564 = getelementptr inbounds i32, ptr %492, i64 %idxprom563
  store i32 %490, ptr %arrayidx564, align 4, !tbaa !19
  br label %for.inc565

for.inc565:                                       ; preds = %for.end558
  %494 = load i32, ptr %ii, align 4, !tbaa !19
  %dec566 = add nsw i32 %494, -1
  store i32 %dec566, ptr %ii, align 4, !tbaa !19
  br label %for.cond531, !llvm.loop !121

for.end567:                                       ; preds = %for.cond531
  br label %if.end568

if.end568:                                        ; preds = %for.end567, %for.end526
  %495 = load ptr, ptr %rnum, align 8, !tbaa !4
  %496 = load i32, ptr %nlevels, align 4, !tbaa !19
  %497 = load ptr, ptr %spes, align 8, !tbaa !4
  %498 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom569 = sext i32 %498 to i64
  %arrayidx570 = getelementptr inbounds i32, ptr %497, i64 %idxprom569
  %499 = load i32, ptr %arrayidx570, align 4, !tbaa !19
  %500 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator571 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %500, i32 0, i32 0
  %501 = load ptr, ptr %hypre_MPI_communicator571, align 8, !tbaa !43
  %call572 = call i32 @hypre_MPI_Send(ptr noundef %495, i32 noundef %496, ptr noundef @ompi_mpi_int, i32 noundef %499, i32 noundef 12, ptr noundef %501)
  br label %for.inc573

for.inc573:                                       ; preds = %if.end568
  %502 = load i32, ptr %i, align 4, !tbaa !19
  %inc574 = add nsw i32 %502, 1
  store i32 %inc574, ptr %i, align 4, !tbaa !19
  br label %for.cond487, !llvm.loop !122

for.end575:                                       ; preds = %for.cond487
  %503 = load ptr, ptr %rnum, align 8, !tbaa !4
  %tobool576 = icmp ne ptr %503, null
  br i1 %tobool576, label %if.then577, label %if.end578

if.then577:                                       ; preds = %for.end575
  %504 = load ptr, ptr %rnum, align 8, !tbaa !4
  call void @free(ptr noundef %504) #5
  br label %if.end578

if.end578:                                        ; preds = %if.then577, %for.end575
  %505 = load i32, ptr %nlevels, align 4, !tbaa !19
  %506 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %call579 = call i32 @hypre_MPI_Type_vector(i32 noundef %505, i32 noundef 1, i32 noundef %506, ptr noundef @ompi_mpi_int, ptr noundef %MyColType_rnbr)
  %call580 = call i32 @hypre_MPI_Type_commit(ptr noundef %MyColType_rnbr)
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond581

for.cond581:                                      ; preds = %for.inc592, %if.end578
  %507 = load i32, ptr %i, align 4, !tbaa !19
  %508 = load i32, ptr %rnbrpes, align 4, !tbaa !19
  %cmp582 = icmp slt i32 %507, %508
  br i1 %cmp582, label %for.body584, label %for.end594

for.body584:                                      ; preds = %for.cond581
  %509 = load ptr, ptr %TriSolveComm, align 8, !tbaa !4
  %rnum585 = getelementptr inbounds %struct.cphasedef, ptr %509, i32 0, i32 7
  %510 = load ptr, ptr %rnum585, align 8, !tbaa !117
  %511 = load i32, ptr %i, align 4, !tbaa !19
  %idx.ext586 = sext i32 %511 to i64
  %add.ptr587 = getelementptr inbounds i32, ptr %510, i64 %idx.ext586
  %512 = load ptr, ptr %MyColType_rnbr, align 8, !tbaa !4
  %513 = load ptr, ptr %rpes, align 8, !tbaa !4
  %514 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom588 = sext i32 %514 to i64
  %arrayidx589 = getelementptr inbounds i32, ptr %513, i64 %idxprom588
  %515 = load i32, ptr %arrayidx589, align 4, !tbaa !19
  %516 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %hypre_MPI_communicator590 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %516, i32 0, i32 0
  %517 = load ptr, ptr %hypre_MPI_communicator590, align 8, !tbaa !43
  %call591 = call i32 @hypre_MPI_Recv(ptr noundef %add.ptr587, i32 noundef 1, ptr noundef %512, i32 noundef %515, i32 noundef 12, ptr noundef %517, ptr noundef %Status)
  br label %for.inc592

for.inc592:                                       ; preds = %for.body584
  %518 = load i32, ptr %i, align 4, !tbaa !19
  %inc593 = add nsw i32 %518, 1
  store i32 %inc593, ptr %i, align 4, !tbaa !19
  br label %for.cond581, !llvm.loop !123

for.end594:                                       ; preds = %for.cond581
  %call595 = call i32 @hypre_MPI_Type_free(ptr noundef %MyColType_rnbr)
  %519 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows596 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %519, i32 0, i32 16
  %520 = load i32, ptr %_lnrows596, align 4, !tbaa !11
  %add597 = add nsw i32 %520, 1
  %call598 = call ptr @hypre_idx_malloc(i32 noundef %add597, ptr noundef @.str.14)
  store ptr %call598, ptr %newrowptr, align 8, !tbaa !4
  %521 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows599 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %521, i32 0, i32 16
  %522 = load i32, ptr %_lnrows599, align 4, !tbaa !11
  %523 = load i32, ptr %maxnz.addr, align 4, !tbaa !19
  %mul600 = mul nsw i32 %522, %523
  %call601 = call ptr @hypre_idx_malloc(i32 noundef %mul600, ptr noundef @.str.15)
  store ptr %call601, ptr %newcolind, align 8, !tbaa !4
  %524 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows602 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %524, i32 0, i32 16
  %525 = load i32, ptr %_lnrows602, align 4, !tbaa !11
  %526 = load i32, ptr %maxnz.addr, align 4, !tbaa !19
  %mul603 = mul nsw i32 %525, %526
  %call604 = call ptr @hypre_fp_malloc(i32 noundef %mul603, ptr noundef @.str.16)
  store ptr %call604, ptr %newvalues, align 8, !tbaa !4
  %527 = load ptr, ptr %newrowptr, align 8, !tbaa !4
  %arrayidx605 = getelementptr inbounds i32, ptr %527, i64 0
  store i32 0, ptr %arrayidx605, align 4, !tbaa !19
  store i32 0, ptr %k, align 4, !tbaa !19
  store i32 0, ptr %ii, align 4, !tbaa !19
  br label %for.cond606

for.cond606:                                      ; preds = %for.inc647, %for.end594
  %528 = load i32, ptr %ii, align 4, !tbaa !19
  %529 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows607 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %529, i32 0, i32 16
  %530 = load i32, ptr %_lnrows607, align 4, !tbaa !11
  %cmp608 = icmp slt i32 %528, %530
  br i1 %cmp608, label %for.body610, label %for.end649

for.body610:                                      ; preds = %for.cond606
  %531 = load ptr, ptr %perm, align 8, !tbaa !4
  %532 = load i32, ptr %ii, align 4, !tbaa !19
  %idxprom611 = sext i32 %532 to i64
  %arrayidx612 = getelementptr inbounds i32, ptr %531, i64 %idxprom611
  %533 = load i32, ptr %arrayidx612, align 4, !tbaa !19
  store i32 %533, ptr %i, align 4, !tbaa !19
  %534 = load ptr, ptr %srowptr, align 8, !tbaa !4
  %535 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom613 = sext i32 %535 to i64
  %arrayidx614 = getelementptr inbounds i32, ptr %534, i64 %idxprom613
  %536 = load i32, ptr %arrayidx614, align 4, !tbaa !19
  store i32 %536, ptr %j, align 4, !tbaa !19
  br label %for.cond615

for.cond615:                                      ; preds = %for.inc641, %for.body610
  %537 = load i32, ptr %j, align 4, !tbaa !19
  %538 = load ptr, ptr %erowptr, align 8, !tbaa !4
  %539 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom616 = sext i32 %539 to i64
  %arrayidx617 = getelementptr inbounds i32, ptr %538, i64 %idxprom616
  %540 = load i32, ptr %arrayidx617, align 4, !tbaa !19
  %cmp618 = icmp slt i32 %537, %540
  br i1 %cmp618, label %for.body620, label %for.end643

for.body620:                                      ; preds = %for.cond615
  br label %do.body621

do.body621:                                       ; preds = %for.body620
  %541 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %542 = load ptr, ptr %colind, align 8, !tbaa !4
  %543 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom622 = sext i32 %543 to i64
  %arrayidx623 = getelementptr inbounds i32, ptr %542, i64 %idxprom622
  %544 = load i32, ptr %arrayidx623, align 4, !tbaa !19
  %idxprom624 = sext i32 %544 to i64
  %arrayidx625 = getelementptr inbounds i32, ptr %541, i64 %idxprom624
  %545 = load i32, ptr %arrayidx625, align 4, !tbaa !19
  %cmp626 = icmp ne i32 %545, -1
  %conv627 = zext i1 %cmp626 to i32
  br label %do.cond628

do.cond628:                                       ; preds = %do.body621
  br label %do.end629

do.end629:                                        ; preds = %do.cond628
  %546 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %547 = load ptr, ptr %colind, align 8, !tbaa !4
  %548 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom630 = sext i32 %548 to i64
  %arrayidx631 = getelementptr inbounds i32, ptr %547, i64 %idxprom630
  %549 = load i32, ptr %arrayidx631, align 4, !tbaa !19
  %idxprom632 = sext i32 %549 to i64
  %arrayidx633 = getelementptr inbounds i32, ptr %546, i64 %idxprom632
  %550 = load i32, ptr %arrayidx633, align 4, !tbaa !19
  %551 = load ptr, ptr %newcolind, align 8, !tbaa !4
  %552 = load i32, ptr %k, align 4, !tbaa !19
  %idxprom634 = sext i32 %552 to i64
  %arrayidx635 = getelementptr inbounds i32, ptr %551, i64 %idxprom634
  store i32 %550, ptr %arrayidx635, align 4, !tbaa !19
  %553 = load ptr, ptr %values, align 8, !tbaa !4
  %554 = load i32, ptr %j, align 4, !tbaa !19
  %idxprom636 = sext i32 %554 to i64
  %arrayidx637 = getelementptr inbounds double, ptr %553, i64 %idxprom636
  %555 = load double, ptr %arrayidx637, align 8, !tbaa !38
  %556 = load ptr, ptr %newvalues, align 8, !tbaa !4
  %557 = load i32, ptr %k, align 4, !tbaa !19
  %idxprom638 = sext i32 %557 to i64
  %arrayidx639 = getelementptr inbounds double, ptr %556, i64 %idxprom638
  store double %555, ptr %arrayidx639, align 8, !tbaa !38
  %558 = load i32, ptr %k, align 4, !tbaa !19
  %inc640 = add nsw i32 %558, 1
  store i32 %inc640, ptr %k, align 4, !tbaa !19
  br label %for.inc641

for.inc641:                                       ; preds = %do.end629
  %559 = load i32, ptr %j, align 4, !tbaa !19
  %inc642 = add nsw i32 %559, 1
  store i32 %inc642, ptr %j, align 4, !tbaa !19
  br label %for.cond615, !llvm.loop !124

for.end643:                                       ; preds = %for.cond615
  %560 = load i32, ptr %k, align 4, !tbaa !19
  %561 = load ptr, ptr %newrowptr, align 8, !tbaa !4
  %562 = load i32, ptr %ii, align 4, !tbaa !19
  %add644 = add nsw i32 %562, 1
  %idxprom645 = sext i32 %add644 to i64
  %arrayidx646 = getelementptr inbounds i32, ptr %561, i64 %idxprom645
  store i32 %560, ptr %arrayidx646, align 4, !tbaa !19
  br label %for.inc647

for.inc647:                                       ; preds = %for.end643
  %563 = load i32, ptr %ii, align 4, !tbaa !19
  %inc648 = add nsw i32 %563, 1
  store i32 %inc648, ptr %ii, align 4, !tbaa !19
  br label %for.cond606, !llvm.loop !125

for.end649:                                       ; preds = %for.cond606
  %564 = load i32, ptr %DoingL.addr, align 4, !tbaa !19
  %tobool650 = icmp ne i32 %564, 0
  br i1 %tobool650, label %if.then651, label %if.else662

if.then651:                                       ; preds = %for.end649
  %565 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lsrowptr652 = getelementptr inbounds %struct.factormatdef, ptr %565, i32 0, i32 0
  %566 = load ptr, ptr %lsrowptr652, align 8, !tbaa !80
  call void @hypre_Free(ptr noundef %566, i32 noundef 0)
  %567 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lsrowptr653 = getelementptr inbounds %struct.factormatdef, ptr %567, i32 0, i32 0
  store ptr null, ptr %lsrowptr653, align 8, !tbaa !80
  %568 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lerowptr654 = getelementptr inbounds %struct.factormatdef, ptr %568, i32 0, i32 1
  %569 = load ptr, ptr %lerowptr654, align 8, !tbaa !82
  call void @hypre_Free(ptr noundef %569, i32 noundef 0)
  %570 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lerowptr655 = getelementptr inbounds %struct.factormatdef, ptr %570, i32 0, i32 1
  store ptr null, ptr %lerowptr655, align 8, !tbaa !82
  %571 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcolind656 = getelementptr inbounds %struct.factormatdef, ptr %571, i32 0, i32 2
  %572 = load ptr, ptr %lcolind656, align 8, !tbaa !36
  call void @hypre_Free(ptr noundef %572, i32 noundef 0)
  %573 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcolind657 = getelementptr inbounds %struct.factormatdef, ptr %573, i32 0, i32 2
  store ptr null, ptr %lcolind657, align 8, !tbaa !36
  %574 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lvalues658 = getelementptr inbounds %struct.factormatdef, ptr %574, i32 0, i32 3
  %575 = load ptr, ptr %lvalues658, align 8, !tbaa !37
  call void @hypre_Free(ptr noundef %575, i32 noundef 0)
  %576 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lvalues659 = getelementptr inbounds %struct.factormatdef, ptr %576, i32 0, i32 3
  store ptr null, ptr %lvalues659, align 8, !tbaa !37
  %577 = load ptr, ptr %newrowptr, align 8, !tbaa !4
  %578 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lrowptr = getelementptr inbounds %struct.factormatdef, ptr %578, i32 0, i32 4
  store ptr %577, ptr %lrowptr, align 8, !tbaa !35
  %579 = load ptr, ptr %newcolind, align 8, !tbaa !4
  %580 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lcolind660 = getelementptr inbounds %struct.factormatdef, ptr %580, i32 0, i32 2
  store ptr %579, ptr %lcolind660, align 8, !tbaa !36
  %581 = load ptr, ptr %newvalues, align 8, !tbaa !4
  %582 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %lvalues661 = getelementptr inbounds %struct.factormatdef, ptr %582, i32 0, i32 3
  store ptr %581, ptr %lvalues661, align 8, !tbaa !37
  br label %if.end690

if.else662:                                       ; preds = %for.end649
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond663

for.cond663:                                      ; preds = %for.inc674, %if.else662
  %583 = load i32, ptr %i, align 4, !tbaa !19
  %584 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows664 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %584, i32 0, i32 16
  %585 = load i32, ptr %_lnrows664, align 4, !tbaa !11
  %cmp665 = icmp slt i32 %583, %585
  br i1 %cmp665, label %for.body667, label %for.end676

for.body667:                                      ; preds = %for.cond663
  %586 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %dvalues = getelementptr inbounds %struct.factormatdef, ptr %586, i32 0, i32 10
  %587 = load ptr, ptr %dvalues, align 8, !tbaa !20
  %588 = load ptr, ptr %perm, align 8, !tbaa !4
  %589 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom668 = sext i32 %589 to i64
  %arrayidx669 = getelementptr inbounds i32, ptr %588, i64 %idxprom668
  %590 = load i32, ptr %arrayidx669, align 4, !tbaa !19
  %idxprom670 = sext i32 %590 to i64
  %arrayidx671 = getelementptr inbounds double, ptr %587, i64 %idxprom670
  %591 = load double, ptr %arrayidx671, align 8, !tbaa !38
  %592 = load ptr, ptr %values, align 8, !tbaa !4
  %593 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom672 = sext i32 %593 to i64
  %arrayidx673 = getelementptr inbounds double, ptr %592, i64 %idxprom672
  store double %591, ptr %arrayidx673, align 8, !tbaa !38
  br label %for.inc674

for.inc674:                                       ; preds = %for.body667
  %594 = load i32, ptr %i, align 4, !tbaa !19
  %inc675 = add nsw i32 %594, 1
  store i32 %inc675, ptr %i, align 4, !tbaa !19
  br label %for.cond663, !llvm.loop !126

for.end676:                                       ; preds = %for.cond663
  %595 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %dvalues677 = getelementptr inbounds %struct.factormatdef, ptr %595, i32 0, i32 10
  %596 = load ptr, ptr %dvalues677, align 8, !tbaa !20
  %597 = load ptr, ptr %values, align 8, !tbaa !4
  %598 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows678 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %598, i32 0, i32 16
  %599 = load i32, ptr %_lnrows678, align 4, !tbaa !11
  %conv679 = sext i32 %599 to i64
  call void @hypre_memcpy_fp(ptr noundef %596, ptr noundef %597, i64 noundef %conv679)
  %600 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %usrowptr680 = getelementptr inbounds %struct.factormatdef, ptr %600, i32 0, i32 5
  %601 = load ptr, ptr %usrowptr680, align 8, !tbaa !81
  call void @hypre_Free(ptr noundef %601, i32 noundef 0)
  %602 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %usrowptr681 = getelementptr inbounds %struct.factormatdef, ptr %602, i32 0, i32 5
  store ptr null, ptr %usrowptr681, align 8, !tbaa !81
  %603 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uerowptr682 = getelementptr inbounds %struct.factormatdef, ptr %603, i32 0, i32 6
  %604 = load ptr, ptr %uerowptr682, align 8, !tbaa !83
  call void @hypre_Free(ptr noundef %604, i32 noundef 0)
  %605 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uerowptr683 = getelementptr inbounds %struct.factormatdef, ptr %605, i32 0, i32 6
  store ptr null, ptr %uerowptr683, align 8, !tbaa !83
  %606 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucolind684 = getelementptr inbounds %struct.factormatdef, ptr %606, i32 0, i32 7
  %607 = load ptr, ptr %ucolind684, align 8, !tbaa !62
  call void @hypre_Free(ptr noundef %607, i32 noundef 0)
  %608 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucolind685 = getelementptr inbounds %struct.factormatdef, ptr %608, i32 0, i32 7
  store ptr null, ptr %ucolind685, align 8, !tbaa !62
  %609 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uvalues686 = getelementptr inbounds %struct.factormatdef, ptr %609, i32 0, i32 8
  %610 = load ptr, ptr %uvalues686, align 8, !tbaa !63
  call void @hypre_Free(ptr noundef %610, i32 noundef 0)
  %611 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uvalues687 = getelementptr inbounds %struct.factormatdef, ptr %611, i32 0, i32 8
  store ptr null, ptr %uvalues687, align 8, !tbaa !63
  %612 = load ptr, ptr %newrowptr, align 8, !tbaa !4
  %613 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %urowptr = getelementptr inbounds %struct.factormatdef, ptr %613, i32 0, i32 9
  store ptr %612, ptr %urowptr, align 8, !tbaa !61
  %614 = load ptr, ptr %newcolind, align 8, !tbaa !4
  %615 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %ucolind688 = getelementptr inbounds %struct.factormatdef, ptr %615, i32 0, i32 7
  store ptr %614, ptr %ucolind688, align 8, !tbaa !62
  %616 = load ptr, ptr %newvalues, align 8, !tbaa !4
  %617 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %uvalues689 = getelementptr inbounds %struct.factormatdef, ptr %617, i32 0, i32 8
  store ptr %616, ptr %uvalues689, align 8, !tbaa !63
  br label %if.end690

if.end690:                                        ; preds = %for.end676, %if.then651
  %618 = load ptr, ptr %receive_requests, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %618, i32 noundef 0)
  store ptr null, ptr %receive_requests, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond691

for.cond691:                                      ; preds = %for.inc699, %if.end690
  %619 = load i32, ptr %i, align 4, !tbaa !19
  %620 = load i32, ptr %nrecv, align 4, !tbaa !19
  %cmp692 = icmp slt i32 %619, %620
  br i1 %cmp692, label %for.body694, label %for.end701

for.body694:                                      ; preds = %for.cond691
  %621 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %622 = load ptr, ptr %rind.addr, align 8, !tbaa !4
  %623 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom695 = sext i32 %623 to i64
  %arrayidx696 = getelementptr inbounds i32, ptr %622, i64 %idxprom695
  %624 = load i32, ptr %arrayidx696, align 4, !tbaa !19
  %idxprom697 = sext i32 %624 to i64
  %arrayidx698 = getelementptr inbounds i32, ptr %621, i64 %idxprom697
  store i32 -1, ptr %arrayidx698, align 4, !tbaa !19
  br label %for.inc699

for.inc699:                                       ; preds = %for.body694
  %625 = load i32, ptr %i, align 4, !tbaa !19
  %inc700 = add nsw i32 %625, 1
  store i32 %inc700, ptr %i, align 4, !tbaa !19
  br label %for.cond691, !llvm.loop !127

for.end701:                                       ; preds = %for.cond691
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond702

for.cond702:                                      ; preds = %for.inc711, %for.end701
  %626 = load i32, ptr %i, align 4, !tbaa !19
  %627 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_lnrows703 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %627, i32 0, i32 16
  %628 = load i32, ptr %_lnrows703, align 4, !tbaa !11
  %cmp704 = icmp slt i32 %626, %628
  br i1 %cmp704, label %for.body706, label %for.end713

for.body706:                                      ; preds = %for.cond702
  %629 = load ptr, ptr %imap.addr, align 8, !tbaa !4
  %630 = load ptr, ptr %globals.addr, align 8, !tbaa !4
  %_firstrow707 = getelementptr inbounds %struct.hypre_PilutSolverGlobals, ptr %630, i32 0, i32 11
  %631 = load i32, ptr %_firstrow707, align 8, !tbaa !78
  %632 = load i32, ptr %i, align 4, !tbaa !19
  %add708 = add nsw i32 %631, %632
  %idxprom709 = sext i32 %add708 to i64
  %arrayidx710 = getelementptr inbounds i32, ptr %629, i64 %idxprom709
  store i32 -1, ptr %arrayidx710, align 4, !tbaa !19
  br label %for.inc711

for.inc711:                                       ; preds = %for.body706
  %633 = load i32, ptr %i, align 4, !tbaa !19
  %inc712 = add nsw i32 %633, 1
  store i32 %inc712, ptr %i, align 4, !tbaa !19
  br label %for.cond702, !llvm.loop !128

for.end713:                                       ; preds = %for.cond702
  call void @llvm.lifetime.end.p0(i64 8, ptr %MyColType_rnbr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %receive_requests) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr %Status) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %TriSolveComm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %raddr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newvalues) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rnum) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %erowptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %srowptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newcolind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newrowptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iperm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %perm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %spes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowdist) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnbrpes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %snbrpes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrecv) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlevels) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

declare ptr @hypre_fp_malloc(i32 noundef, ptr noundef) #2

declare void @hypre_sincsort_fast(i32 noundef, ptr noundef) #2

declare i32 @hypre_GlobalSEMax(i32 noundef, ptr noundef) #2

declare ptr @hypre_fp_malloc_init(i32 noundef, double noundef, ptr noundef) #2

declare i32 @hypre_MPI_Alltoall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_mymalloc(i32 noundef, ptr noundef) #2

declare void @hypre_CheckBounds(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @hypre_sdecsort_fast(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare i32 @hypre_MPI_Type_vector(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Type_commit(ptr noundef) #2

declare i32 @hypre_MPI_Recv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Type_free(ptr noundef) #2

declare void @hypre_memcpy_fp(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = !{!9, !10, i64 4}
!9 = !{!"distdef", !10, i64 0, !10, i64 4, !5, i64 8}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !10, i64 108}
!12 = !{!"", !5, i64 0, !10, i64 8, !10, i64 12, !13, i64 16, !10, i64 24, !5, i64 32, !5, i64 40, !10, i64 48, !5, i64 56, !10, i64 64, !5, i64 72, !10, i64 80, !10, i64 84, !13, i64 88, !13, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !5, i64 128, !5, i64 136, !6, i64 144, !6, i64 1168, !6, i64 2192}
!13 = !{!"double", !6, i64 0}
!14 = !{!15, !5, i64 96}
!15 = !{!"factormatdef", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !10, i64 136, !10, i64 140, !10, i64 144, !6, i64 148, !16, i64 2152, !16, i64 2224}
!16 = !{!"cphasedef", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !10, i64 64, !10, i64 68}
!17 = !{!15, !5, i64 104}
!18 = !{!15, !10, i64 144}
!19 = !{!10, !10, i64 0}
!20 = !{!15, !5, i64 80}
!21 = !{!15, !5, i64 112}
!22 = !{!15, !5, i64 120}
!23 = !{!15, !5, i64 128}
!24 = !{!15, !10, i64 2216}
!25 = !{!15, !5, i64 2160}
!26 = !{!15, !5, i64 2168}
!27 = !{!15, !5, i64 2176}
!28 = !{!15, !5, i64 2184}
!29 = !{!15, !10, i64 2220}
!30 = !{!15, !5, i64 2152}
!31 = !{!15, !5, i64 2192}
!32 = !{!15, !5, i64 2200}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!15, !5, i64 32}
!36 = !{!15, !5, i64 16}
!37 = !{!15, !5, i64 24}
!38 = !{!13, !13, i64 0}
!39 = distinct !{!39, !34}
!40 = distinct !{!40, !34}
!41 = !{!12, !10, i64 12}
!42 = !{!15, !5, i64 2208}
!43 = !{!12, !5, i64 0}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !34}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !34}
!48 = distinct !{!48, !34}
!49 = distinct !{!49, !34}
!50 = distinct !{!50, !34}
!51 = !{!15, !10, i64 2288}
!52 = !{!15, !5, i64 2232}
!53 = !{!15, !5, i64 2240}
!54 = !{!15, !5, i64 2248}
!55 = !{!15, !5, i64 2256}
!56 = !{!15, !10, i64 2292}
!57 = !{!15, !5, i64 2224}
!58 = !{!15, !5, i64 2264}
!59 = !{!15, !5, i64 2272}
!60 = distinct !{!60, !34}
!61 = !{!15, !5, i64 72}
!62 = !{!15, !5, i64 56}
!63 = !{!15, !5, i64 64}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = !{!15, !5, i64 2280}
!67 = distinct !{!67, !34}
!68 = distinct !{!68, !34}
!69 = distinct !{!69, !34}
!70 = distinct !{!70, !34}
!71 = distinct !{!71, !34}
!72 = distinct !{!72, !34}
!73 = distinct !{!73, !34}
!74 = distinct !{!74, !34}
!75 = !{!9, !10, i64 0}
!76 = !{!9, !5, i64 8}
!77 = !{!12, !10, i64 8}
!78 = !{!12, !10, i64 80}
!79 = !{!12, !10, i64 84}
!80 = !{!15, !5, i64 0}
!81 = !{!15, !5, i64 40}
!82 = !{!15, !5, i64 8}
!83 = !{!15, !5, i64 48}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
!86 = !{!15, !10, i64 136}
!87 = !{!15, !10, i64 140}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !34}
!90 = distinct !{!90, !34}
!91 = !{!16, !10, i64 68}
!92 = distinct !{!92, !34}
!93 = !{!16, !10, i64 64}
!94 = !{!16, !5, i64 32}
!95 = !{!16, !5, i64 8}
!96 = !{!16, !5, i64 16}
!97 = !{!16, !5, i64 24}
!98 = !{!16, !5, i64 48}
!99 = !{!16, !5, i64 40}
!100 = !{!16, !5, i64 0}
!101 = distinct !{!101, !34}
!102 = distinct !{!102, !34}
!103 = distinct !{!103, !34}
!104 = distinct !{!104, !34}
!105 = distinct !{!105, !34}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !34}
!109 = distinct !{!109, !34}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = distinct !{!113, !34}
!114 = distinct !{!114, !34}
!115 = distinct !{!115, !34}
!116 = distinct !{!116, !34}
!117 = !{!16, !5, i64 56}
!118 = distinct !{!118, !34}
!119 = distinct !{!119, !34}
!120 = distinct !{!120, !34}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34}
!125 = distinct !{!125, !34}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34}

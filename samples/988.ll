; ModuleID = 'samples/988.bc'
source_filename = "FGmres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_predefined_op_t = type opaque
%struct.Matrix = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"Iter (%d): computed rrn    : %e\0A\00", align 1
@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@ompi_mpi_op_sum = external global %struct.ompi_predefined_op_t, align 1

; Function Attrs: nounwind uwtable
define void @FGMRES_ParaSails(ptr noundef %mat, ptr noundef %ps, ptr noundef %b, ptr noundef %x, i64 noundef %dim, double noundef %tol, i64 noundef %max_iter) #0 {
entry:
  %mat.addr = alloca ptr, align 8
  %ps.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %dim.addr = alloca i64, align 8
  %tol.addr = alloca double, align 8
  %max_iter.addr = alloca i64, align 8
  %mype = alloca i64, align 8
  %iter = alloca i64, align 8
  %rel_resid = alloca double, align 8
  %H = alloca ptr, align 8
  %n = alloca i64, align 8
  %m1 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %beta = alloca double, align 8
  %resid0 = alloca double, align 8
  %s = alloca ptr, align 8
  %cs = alloca ptr, align 8
  %sn = alloca ptr, align 8
  %V = alloca ptr, align 8
  %W = alloca ptr, align 8
  %comm = alloca ptr, align 8
  store ptr %mat, ptr %mat.addr, align 8, !tbaa !4
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !8
  store double %tol, ptr %tol.addr, align 8, !tbaa !10
  store i64 %max_iter, ptr %max_iter.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mype) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel_resid) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %H) #5
  %0 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %1 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 %0, %add
  %mul1 = mul i64 8, %mul
  %call = call ptr @hypre_MAlloc(i64 noundef %mul1, i32 noundef 0)
  store ptr %call, ptr %H, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %2 = load ptr, ptr %mat.addr, align 8, !tbaa !4
  %end_row = getelementptr inbounds %struct.Matrix, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %end_row, align 8, !tbaa !12
  %4 = load ptr, ptr %mat.addr, align 8, !tbaa !4
  %beg_row = getelementptr inbounds %struct.Matrix, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %beg_row, align 8, !tbaa !14
  %sub = sub nsw i64 %3, %5
  %add2 = add nsw i64 %sub, 1
  store i64 %add2, ptr %n, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %m1) #5
  %6 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %add3 = add nsw i64 %6, 1
  store i64 %add3, ptr %m1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %resid0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %7 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %add4 = add nsw i64 %7, 1
  %mul5 = mul i64 8, %add4
  %call6 = call ptr @hypre_MAlloc(i64 noundef %mul5, i32 noundef 0)
  store ptr %call6, ptr %s, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs) #5
  %8 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %mul7 = mul i64 8, %8
  %call8 = call ptr @hypre_MAlloc(i64 noundef %mul7, i32 noundef 0)
  store ptr %call8, ptr %cs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sn) #5
  %9 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %mul9 = mul i64 8, %9
  %call10 = call ptr @hypre_MAlloc(i64 noundef %mul9, i32 noundef 0)
  store ptr %call10, ptr %sn, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %V) #5
  %10 = load i64, ptr %n, align 8, !tbaa !8
  %11 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %add11 = add nsw i64 %11, 1
  %mul12 = mul nsw i64 %10, %add11
  %mul13 = mul i64 8, %mul12
  %call14 = call ptr @hypre_MAlloc(i64 noundef %mul13, i32 noundef 0)
  store ptr %call14, ptr %V, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %W) #5
  %12 = load i64, ptr %n, align 8, !tbaa !8
  %13 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %mul15 = mul nsw i64 %12, %13
  %mul16 = mul i64 8, %mul15
  %call17 = call ptr @hypre_MAlloc(i64 noundef %mul16, i32 noundef 0)
  store ptr %call17, ptr %W, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #5
  %14 = load ptr, ptr %mat.addr, align 8, !tbaa !4
  %comm18 = getelementptr inbounds %struct.Matrix, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %comm18, align 8, !tbaa !15
  store ptr %15, ptr %comm, align 8, !tbaa !4
  %16 = load ptr, ptr %comm, align 8, !tbaa !4
  %call19 = call i64 @hypre_MPI_Comm_rank(ptr noundef %16, ptr noundef %mype)
  store i64 0, ptr %iter, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %land.end188, %entry
  %17 = load ptr, ptr %mat.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %V, align 8, !tbaa !4
  %20 = load i64, ptr %n, align 8, !tbaa !8
  %mul20 = mul nsw i64 0, %20
  %arrayidx = getelementptr inbounds double, ptr %19, i64 %mul20
  call void @MatrixMatvec(ptr noundef %17, ptr noundef %18, ptr noundef %arrayidx)
  %21 = load i64, ptr %n, align 8, !tbaa !8
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %V, align 8, !tbaa !4
  %24 = load i64, ptr %n, align 8, !tbaa !8
  %mul21 = mul nsw i64 0, %24
  %arrayidx22 = getelementptr inbounds double, ptr %23, i64 %mul21
  call void @Axpy(i64 noundef %21, double noundef -1.000000e+00, ptr noundef %22, ptr noundef %arrayidx22)
  %25 = load i64, ptr %n, align 8, !tbaa !8
  %26 = load ptr, ptr %V, align 8, !tbaa !4
  %27 = load i64, ptr %n, align 8, !tbaa !8
  %mul23 = mul nsw i64 0, %27
  %arrayidx24 = getelementptr inbounds double, ptr %26, i64 %mul23
  %28 = load ptr, ptr %V, align 8, !tbaa !4
  %29 = load i64, ptr %n, align 8, !tbaa !8
  %mul25 = mul nsw i64 0, %29
  %arrayidx26 = getelementptr inbounds double, ptr %28, i64 %mul25
  %30 = load ptr, ptr %comm, align 8, !tbaa !4
  %call27 = call double @InnerProd(i64 noundef %25, ptr noundef %arrayidx24, ptr noundef %arrayidx26, ptr noundef %30)
  %call28 = call double @sqrt(double noundef %call27) #5
  store double %call28, ptr %beta, align 8, !tbaa !10
  %31 = load i64, ptr %n, align 8, !tbaa !8
  %32 = load double, ptr %beta, align 8, !tbaa !10
  %div = fdiv double -1.000000e+00, %32
  %33 = load ptr, ptr %V, align 8, !tbaa !4
  %34 = load i64, ptr %n, align 8, !tbaa !8
  %mul29 = mul nsw i64 0, %34
  %arrayidx30 = getelementptr inbounds double, ptr %33, i64 %mul29
  call void @ScaleVector(i64 noundef %31, double noundef %div, ptr noundef %arrayidx30)
  %35 = load i64, ptr %iter, align 8, !tbaa !8
  %cmp = icmp eq i64 %35, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %36 = load double, ptr %beta, align 8, !tbaa !10
  store double %36, ptr %resid0, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  store i64 1, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %37 = load i64, ptr %i, align 8, !tbaa !8
  %38 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %add31 = add nsw i64 %38, 1
  %cmp32 = icmp slt i64 %37, %add31
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load ptr, ptr %s, align 8, !tbaa !4
  %40 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx33 = getelementptr inbounds double, ptr %39, i64 %40
  store double 0.000000e+00, ptr %arrayidx33, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %41, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %42 = load double, ptr %beta, align 8, !tbaa !10
  %43 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds double, ptr %43, i64 0
  store double %42, ptr %arrayidx34, align 8, !tbaa !10
  store i64 -1, ptr %i, align 8, !tbaa !8
  br label %do.body35

do.body35:                                        ; preds = %land.end, %for.end
  %44 = load i64, ptr %i, align 8, !tbaa !8
  %inc36 = add nsw i64 %44, 1
  store i64 %inc36, ptr %i, align 8, !tbaa !8
  %45 = load i64, ptr %iter, align 8, !tbaa !8
  %inc37 = add nsw i64 %45, 1
  store i64 %inc37, ptr %iter, align 8, !tbaa !8
  %46 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %cmp38 = icmp ne ptr %46, null
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %do.body35
  %47 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %V, align 8, !tbaa !4
  %49 = load i64, ptr %i, align 8, !tbaa !8
  %50 = load i64, ptr %n, align 8, !tbaa !8
  %mul40 = mul nsw i64 %49, %50
  %arrayidx41 = getelementptr inbounds double, ptr %48, i64 %mul40
  %51 = load ptr, ptr %W, align 8, !tbaa !4
  %52 = load i64, ptr %i, align 8, !tbaa !8
  %53 = load i64, ptr %n, align 8, !tbaa !8
  %mul42 = mul nsw i64 %52, %53
  %arrayidx43 = getelementptr inbounds double, ptr %51, i64 %mul42
  call void @ParaSailsApply(ptr noundef %47, ptr noundef %arrayidx41, ptr noundef %arrayidx43)
  br label %if.end48

if.else:                                          ; preds = %do.body35
  %54 = load i64, ptr %n, align 8, !tbaa !8
  %55 = load ptr, ptr %V, align 8, !tbaa !4
  %56 = load i64, ptr %i, align 8, !tbaa !8
  %57 = load i64, ptr %n, align 8, !tbaa !8
  %mul44 = mul nsw i64 %56, %57
  %arrayidx45 = getelementptr inbounds double, ptr %55, i64 %mul44
  %58 = load ptr, ptr %W, align 8, !tbaa !4
  %59 = load i64, ptr %i, align 8, !tbaa !8
  %60 = load i64, ptr %n, align 8, !tbaa !8
  %mul46 = mul nsw i64 %59, %60
  %arrayidx47 = getelementptr inbounds double, ptr %58, i64 %mul46
  call void @CopyVector(i64 noundef %54, ptr noundef %arrayidx45, ptr noundef %arrayidx47)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then39
  %61 = load ptr, ptr %mat.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %W, align 8, !tbaa !4
  %63 = load i64, ptr %i, align 8, !tbaa !8
  %64 = load i64, ptr %n, align 8, !tbaa !8
  %mul49 = mul nsw i64 %63, %64
  %arrayidx50 = getelementptr inbounds double, ptr %62, i64 %mul49
  %65 = load ptr, ptr %V, align 8, !tbaa !4
  %66 = load i64, ptr %i, align 8, !tbaa !8
  %add51 = add nsw i64 %66, 1
  %67 = load i64, ptr %n, align 8, !tbaa !8
  %mul52 = mul nsw i64 %add51, %67
  %arrayidx53 = getelementptr inbounds double, ptr %65, i64 %mul52
  call void @MatrixMatvec(ptr noundef %61, ptr noundef %arrayidx50, ptr noundef %arrayidx53)
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc74, %if.end48
  %68 = load i64, ptr %k, align 8, !tbaa !8
  %69 = load i64, ptr %i, align 8, !tbaa !8
  %cmp55 = icmp sle i64 %68, %69
  br i1 %cmp55, label %for.body56, label %for.end76

for.body56:                                       ; preds = %for.cond54
  %70 = load i64, ptr %n, align 8, !tbaa !8
  %71 = load ptr, ptr %V, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !8
  %add57 = add nsw i64 %72, 1
  %73 = load i64, ptr %n, align 8, !tbaa !8
  %mul58 = mul nsw i64 %add57, %73
  %arrayidx59 = getelementptr inbounds double, ptr %71, i64 %mul58
  %74 = load ptr, ptr %V, align 8, !tbaa !4
  %75 = load i64, ptr %k, align 8, !tbaa !8
  %76 = load i64, ptr %n, align 8, !tbaa !8
  %mul60 = mul nsw i64 %75, %76
  %arrayidx61 = getelementptr inbounds double, ptr %74, i64 %mul60
  %77 = load ptr, ptr %comm, align 8, !tbaa !4
  %call62 = call double @InnerProd(i64 noundef %70, ptr noundef %arrayidx59, ptr noundef %arrayidx61, ptr noundef %77)
  %78 = load ptr, ptr %H, align 8, !tbaa !4
  %79 = load i64, ptr %i, align 8, !tbaa !8
  %80 = load i64, ptr %m1, align 8, !tbaa !8
  %mul63 = mul nsw i64 %79, %80
  %81 = load i64, ptr %k, align 8, !tbaa !8
  %add64 = add nsw i64 %mul63, %81
  %arrayidx65 = getelementptr inbounds double, ptr %78, i64 %add64
  store double %call62, ptr %arrayidx65, align 8, !tbaa !10
  %82 = load i64, ptr %n, align 8, !tbaa !8
  %83 = load ptr, ptr %H, align 8, !tbaa !4
  %84 = load i64, ptr %i, align 8, !tbaa !8
  %85 = load i64, ptr %m1, align 8, !tbaa !8
  %mul66 = mul nsw i64 %84, %85
  %86 = load i64, ptr %k, align 8, !tbaa !8
  %add67 = add nsw i64 %mul66, %86
  %arrayidx68 = getelementptr inbounds double, ptr %83, i64 %add67
  %87 = load double, ptr %arrayidx68, align 8, !tbaa !10
  %fneg = fneg double %87
  %88 = load ptr, ptr %V, align 8, !tbaa !4
  %89 = load i64, ptr %k, align 8, !tbaa !8
  %90 = load i64, ptr %n, align 8, !tbaa !8
  %mul69 = mul nsw i64 %89, %90
  %arrayidx70 = getelementptr inbounds double, ptr %88, i64 %mul69
  %91 = load ptr, ptr %V, align 8, !tbaa !4
  %92 = load i64, ptr %i, align 8, !tbaa !8
  %add71 = add nsw i64 %92, 1
  %93 = load i64, ptr %n, align 8, !tbaa !8
  %mul72 = mul nsw i64 %add71, %93
  %arrayidx73 = getelementptr inbounds double, ptr %91, i64 %mul72
  call void @Axpy(i64 noundef %82, double noundef %fneg, ptr noundef %arrayidx70, ptr noundef %arrayidx73)
  br label %for.inc74

for.inc74:                                        ; preds = %for.body56
  %94 = load i64, ptr %k, align 8, !tbaa !8
  %inc75 = add nsw i64 %94, 1
  store i64 %inc75, ptr %k, align 8, !tbaa !8
  br label %for.cond54, !llvm.loop !18

for.end76:                                        ; preds = %for.cond54
  %95 = load i64, ptr %n, align 8, !tbaa !8
  %96 = load ptr, ptr %V, align 8, !tbaa !4
  %97 = load i64, ptr %i, align 8, !tbaa !8
  %add77 = add nsw i64 %97, 1
  %98 = load i64, ptr %n, align 8, !tbaa !8
  %mul78 = mul nsw i64 %add77, %98
  %arrayidx79 = getelementptr inbounds double, ptr %96, i64 %mul78
  %99 = load ptr, ptr %V, align 8, !tbaa !4
  %100 = load i64, ptr %i, align 8, !tbaa !8
  %add80 = add nsw i64 %100, 1
  %101 = load i64, ptr %n, align 8, !tbaa !8
  %mul81 = mul nsw i64 %add80, %101
  %arrayidx82 = getelementptr inbounds double, ptr %99, i64 %mul81
  %102 = load ptr, ptr %comm, align 8, !tbaa !4
  %call83 = call double @InnerProd(i64 noundef %95, ptr noundef %arrayidx79, ptr noundef %arrayidx82, ptr noundef %102)
  %call84 = call double @sqrt(double noundef %call83) #5
  %103 = load ptr, ptr %H, align 8, !tbaa !4
  %104 = load i64, ptr %i, align 8, !tbaa !8
  %105 = load i64, ptr %m1, align 8, !tbaa !8
  %mul85 = mul nsw i64 %104, %105
  %106 = load i64, ptr %i, align 8, !tbaa !8
  %add86 = add nsw i64 %106, 1
  %add87 = add nsw i64 %mul85, %add86
  %arrayidx88 = getelementptr inbounds double, ptr %103, i64 %add87
  store double %call84, ptr %arrayidx88, align 8, !tbaa !10
  %107 = load i64, ptr %n, align 8, !tbaa !8
  %108 = load ptr, ptr %H, align 8, !tbaa !4
  %109 = load i64, ptr %i, align 8, !tbaa !8
  %110 = load i64, ptr %m1, align 8, !tbaa !8
  %mul89 = mul nsw i64 %109, %110
  %111 = load i64, ptr %i, align 8, !tbaa !8
  %add90 = add nsw i64 %111, 1
  %add91 = add nsw i64 %mul89, %add90
  %arrayidx92 = getelementptr inbounds double, ptr %108, i64 %add91
  %112 = load double, ptr %arrayidx92, align 8, !tbaa !10
  %div93 = fdiv double 1.000000e+00, %112
  %113 = load ptr, ptr %V, align 8, !tbaa !4
  %114 = load i64, ptr %i, align 8, !tbaa !8
  %add94 = add nsw i64 %114, 1
  %115 = load i64, ptr %n, align 8, !tbaa !8
  %mul95 = mul nsw i64 %add94, %115
  %arrayidx96 = getelementptr inbounds double, ptr %113, i64 %mul95
  call void @ScaleVector(i64 noundef %107, double noundef %div93, ptr noundef %arrayidx96)
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc109, %for.end76
  %116 = load i64, ptr %k, align 8, !tbaa !8
  %117 = load i64, ptr %i, align 8, !tbaa !8
  %cmp98 = icmp slt i64 %116, %117
  br i1 %cmp98, label %for.body99, label %for.end111

for.body99:                                       ; preds = %for.cond97
  %118 = load ptr, ptr %H, align 8, !tbaa !4
  %119 = load i64, ptr %i, align 8, !tbaa !8
  %120 = load i64, ptr %m1, align 8, !tbaa !8
  %mul100 = mul nsw i64 %119, %120
  %121 = load i64, ptr %k, align 8, !tbaa !8
  %add101 = add nsw i64 %mul100, %121
  %arrayidx102 = getelementptr inbounds double, ptr %118, i64 %add101
  %122 = load ptr, ptr %H, align 8, !tbaa !4
  %123 = load i64, ptr %i, align 8, !tbaa !8
  %124 = load i64, ptr %m1, align 8, !tbaa !8
  %mul103 = mul nsw i64 %123, %124
  %125 = load i64, ptr %k, align 8, !tbaa !8
  %add104 = add nsw i64 %125, 1
  %add105 = add nsw i64 %mul103, %add104
  %arrayidx106 = getelementptr inbounds double, ptr %122, i64 %add105
  %126 = load ptr, ptr %cs, align 8, !tbaa !4
  %127 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx107 = getelementptr inbounds double, ptr %126, i64 %127
  %128 = load double, ptr %arrayidx107, align 8, !tbaa !10
  %129 = load ptr, ptr %sn, align 8, !tbaa !4
  %130 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx108 = getelementptr inbounds double, ptr %129, i64 %130
  %131 = load double, ptr %arrayidx108, align 8, !tbaa !10
  call void @ApplyPlaneRotation(ptr noundef %arrayidx102, ptr noundef %arrayidx106, double noundef %128, double noundef %131)
  br label %for.inc109

for.inc109:                                       ; preds = %for.body99
  %132 = load i64, ptr %k, align 8, !tbaa !8
  %inc110 = add nsw i64 %132, 1
  store i64 %inc110, ptr %k, align 8, !tbaa !8
  br label %for.cond97, !llvm.loop !19

for.end111:                                       ; preds = %for.cond97
  %133 = load ptr, ptr %H, align 8, !tbaa !4
  %134 = load i64, ptr %i, align 8, !tbaa !8
  %135 = load i64, ptr %m1, align 8, !tbaa !8
  %mul112 = mul nsw i64 %134, %135
  %136 = load i64, ptr %i, align 8, !tbaa !8
  %add113 = add nsw i64 %mul112, %136
  %arrayidx114 = getelementptr inbounds double, ptr %133, i64 %add113
  %137 = load double, ptr %arrayidx114, align 8, !tbaa !10
  %138 = load ptr, ptr %H, align 8, !tbaa !4
  %139 = load i64, ptr %i, align 8, !tbaa !8
  %140 = load i64, ptr %m1, align 8, !tbaa !8
  %mul115 = mul nsw i64 %139, %140
  %141 = load i64, ptr %i, align 8, !tbaa !8
  %add116 = add nsw i64 %141, 1
  %add117 = add nsw i64 %mul115, %add116
  %arrayidx118 = getelementptr inbounds double, ptr %138, i64 %add117
  %142 = load double, ptr %arrayidx118, align 8, !tbaa !10
  %143 = load ptr, ptr %cs, align 8, !tbaa !4
  %144 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx119 = getelementptr inbounds double, ptr %143, i64 %144
  %145 = load ptr, ptr %sn, align 8, !tbaa !4
  %146 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx120 = getelementptr inbounds double, ptr %145, i64 %146
  call void @GeneratePlaneRotation(double noundef %137, double noundef %142, ptr noundef %arrayidx119, ptr noundef %arrayidx120)
  %147 = load ptr, ptr %H, align 8, !tbaa !4
  %148 = load i64, ptr %i, align 8, !tbaa !8
  %149 = load i64, ptr %m1, align 8, !tbaa !8
  %mul121 = mul nsw i64 %148, %149
  %150 = load i64, ptr %i, align 8, !tbaa !8
  %add122 = add nsw i64 %mul121, %150
  %arrayidx123 = getelementptr inbounds double, ptr %147, i64 %add122
  %151 = load ptr, ptr %H, align 8, !tbaa !4
  %152 = load i64, ptr %i, align 8, !tbaa !8
  %153 = load i64, ptr %m1, align 8, !tbaa !8
  %mul124 = mul nsw i64 %152, %153
  %154 = load i64, ptr %i, align 8, !tbaa !8
  %add125 = add nsw i64 %154, 1
  %add126 = add nsw i64 %mul124, %add125
  %arrayidx127 = getelementptr inbounds double, ptr %151, i64 %add126
  %155 = load ptr, ptr %cs, align 8, !tbaa !4
  %156 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx128 = getelementptr inbounds double, ptr %155, i64 %156
  %157 = load double, ptr %arrayidx128, align 8, !tbaa !10
  %158 = load ptr, ptr %sn, align 8, !tbaa !4
  %159 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx129 = getelementptr inbounds double, ptr %158, i64 %159
  %160 = load double, ptr %arrayidx129, align 8, !tbaa !10
  call void @ApplyPlaneRotation(ptr noundef %arrayidx123, ptr noundef %arrayidx127, double noundef %157, double noundef %160)
  %161 = load ptr, ptr %s, align 8, !tbaa !4
  %162 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx130 = getelementptr inbounds double, ptr %161, i64 %162
  %163 = load ptr, ptr %s, align 8, !tbaa !4
  %164 = load i64, ptr %i, align 8, !tbaa !8
  %add131 = add nsw i64 %164, 1
  %arrayidx132 = getelementptr inbounds double, ptr %163, i64 %add131
  %165 = load ptr, ptr %cs, align 8, !tbaa !4
  %166 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx133 = getelementptr inbounds double, ptr %165, i64 %166
  %167 = load double, ptr %arrayidx133, align 8, !tbaa !10
  %168 = load ptr, ptr %sn, align 8, !tbaa !4
  %169 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx134 = getelementptr inbounds double, ptr %168, i64 %169
  %170 = load double, ptr %arrayidx134, align 8, !tbaa !10
  call void @ApplyPlaneRotation(ptr noundef %arrayidx130, ptr noundef %arrayidx132, double noundef %167, double noundef %170)
  %171 = load ptr, ptr %s, align 8, !tbaa !4
  %172 = load i64, ptr %i, align 8, !tbaa !8
  %add135 = add nsw i64 %172, 1
  %arrayidx136 = getelementptr inbounds double, ptr %171, i64 %add135
  %173 = load double, ptr %arrayidx136, align 8, !tbaa !10
  %cmp137 = fcmp olt double %173, 0.000000e+00
  br i1 %cmp137, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end111
  %174 = load ptr, ptr %s, align 8, !tbaa !4
  %175 = load i64, ptr %i, align 8, !tbaa !8
  %add138 = add nsw i64 %175, 1
  %arrayidx139 = getelementptr inbounds double, ptr %174, i64 %add138
  %176 = load double, ptr %arrayidx139, align 8, !tbaa !10
  %fneg140 = fneg double %176
  br label %cond.end

cond.false:                                       ; preds = %for.end111
  %177 = load ptr, ptr %s, align 8, !tbaa !4
  %178 = load i64, ptr %i, align 8, !tbaa !8
  %add141 = add nsw i64 %178, 1
  %arrayidx142 = getelementptr inbounds double, ptr %177, i64 %add141
  %179 = load double, ptr %arrayidx142, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg140, %cond.true ], [ %179, %cond.false ]
  %180 = load double, ptr %resid0, align 8, !tbaa !10
  %div143 = fdiv double %cond, %180
  store double %div143, ptr %rel_resid, align 8, !tbaa !10
  %181 = load double, ptr %rel_resid, align 8, !tbaa !10
  %182 = load double, ptr %tol.addr, align 8, !tbaa !10
  %cmp144 = fcmp ole double %181, %182
  br i1 %cmp144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %cond.end
  br label %do.end

if.end146:                                        ; preds = %cond.end
  br label %do.cond

do.cond:                                          ; preds = %if.end146
  %183 = load i64, ptr %i, align 8, !tbaa !8
  %add147 = add nsw i64 %183, 1
  %184 = load i64, ptr %dim.addr, align 8, !tbaa !8
  %cmp148 = icmp slt i64 %add147, %184
  br i1 %cmp148, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %185 = load i64, ptr %iter, align 8, !tbaa !8
  %add149 = add nsw i64 %185, 1
  %186 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %cmp150 = icmp sle i64 %add149, %186
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %187 = phi i1 [ false, %do.cond ], [ %cmp150, %land.rhs ]
  br i1 %187, label %do.body35, label %do.end, !llvm.loop !20

do.end:                                           ; preds = %land.end, %if.then145
  %188 = load i64, ptr %i, align 8, !tbaa !8
  store i64 %188, ptr %j, align 8, !tbaa !8
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc171, %do.end
  %189 = load i64, ptr %j, align 8, !tbaa !8
  %cmp152 = icmp sge i64 %189, 0
  br i1 %cmp152, label %for.body153, label %for.end173

for.body153:                                      ; preds = %for.cond151
  %190 = load ptr, ptr %H, align 8, !tbaa !4
  %191 = load i64, ptr %j, align 8, !tbaa !8
  %192 = load i64, ptr %m1, align 8, !tbaa !8
  %mul154 = mul nsw i64 %191, %192
  %193 = load i64, ptr %j, align 8, !tbaa !8
  %add155 = add nsw i64 %mul154, %193
  %arrayidx156 = getelementptr inbounds double, ptr %190, i64 %add155
  %194 = load double, ptr %arrayidx156, align 8, !tbaa !10
  %195 = load ptr, ptr %s, align 8, !tbaa !4
  %196 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx157 = getelementptr inbounds double, ptr %195, i64 %196
  %197 = load double, ptr %arrayidx157, align 8, !tbaa !10
  %div158 = fdiv double %197, %194
  store double %div158, ptr %arrayidx157, align 8, !tbaa !10
  %198 = load i64, ptr %j, align 8, !tbaa !8
  %sub159 = sub nsw i64 %198, 1
  store i64 %sub159, ptr %k, align 8, !tbaa !8
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc169, %for.body153
  %199 = load i64, ptr %k, align 8, !tbaa !8
  %cmp161 = icmp sge i64 %199, 0
  br i1 %cmp161, label %for.body162, label %for.end170

for.body162:                                      ; preds = %for.cond160
  %200 = load ptr, ptr %H, align 8, !tbaa !4
  %201 = load i64, ptr %j, align 8, !tbaa !8
  %202 = load i64, ptr %m1, align 8, !tbaa !8
  %mul163 = mul nsw i64 %201, %202
  %203 = load i64, ptr %k, align 8, !tbaa !8
  %add164 = add nsw i64 %mul163, %203
  %arrayidx165 = getelementptr inbounds double, ptr %200, i64 %add164
  %204 = load double, ptr %arrayidx165, align 8, !tbaa !10
  %205 = load ptr, ptr %s, align 8, !tbaa !4
  %206 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx166 = getelementptr inbounds double, ptr %205, i64 %206
  %207 = load double, ptr %arrayidx166, align 8, !tbaa !10
  %208 = load ptr, ptr %s, align 8, !tbaa !4
  %209 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx168 = getelementptr inbounds double, ptr %208, i64 %209
  %210 = load double, ptr %arrayidx168, align 8, !tbaa !10
  %neg = fneg double %204
  %211 = call double @llvm.fmuladd.f64(double %neg, double %207, double %210)
  store double %211, ptr %arrayidx168, align 8, !tbaa !10
  br label %for.inc169

for.inc169:                                       ; preds = %for.body162
  %212 = load i64, ptr %k, align 8, !tbaa !8
  %dec = add nsw i64 %212, -1
  store i64 %dec, ptr %k, align 8, !tbaa !8
  br label %for.cond160, !llvm.loop !21

for.end170:                                       ; preds = %for.cond160
  br label %for.inc171

for.inc171:                                       ; preds = %for.end170
  %213 = load i64, ptr %j, align 8, !tbaa !8
  %dec172 = add nsw i64 %213, -1
  store i64 %dec172, ptr %j, align 8, !tbaa !8
  br label %for.cond151, !llvm.loop !22

for.end173:                                       ; preds = %for.cond151
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc180, %for.end173
  %214 = load i64, ptr %j, align 8, !tbaa !8
  %215 = load i64, ptr %i, align 8, !tbaa !8
  %cmp175 = icmp sle i64 %214, %215
  br i1 %cmp175, label %for.body176, label %for.end182

for.body176:                                      ; preds = %for.cond174
  %216 = load i64, ptr %n, align 8, !tbaa !8
  %217 = load ptr, ptr %s, align 8, !tbaa !4
  %218 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx177 = getelementptr inbounds double, ptr %217, i64 %218
  %219 = load double, ptr %arrayidx177, align 8, !tbaa !10
  %220 = load ptr, ptr %W, align 8, !tbaa !4
  %221 = load i64, ptr %j, align 8, !tbaa !8
  %222 = load i64, ptr %n, align 8, !tbaa !8
  %mul178 = mul nsw i64 %221, %222
  %arrayidx179 = getelementptr inbounds double, ptr %220, i64 %mul178
  %223 = load ptr, ptr %x.addr, align 8, !tbaa !4
  call void @Axpy(i64 noundef %216, double noundef %219, ptr noundef %arrayidx179, ptr noundef %223)
  br label %for.inc180

for.inc180:                                       ; preds = %for.body176
  %224 = load i64, ptr %j, align 8, !tbaa !8
  %inc181 = add nsw i64 %224, 1
  store i64 %inc181, ptr %j, align 8, !tbaa !8
  br label %for.cond174, !llvm.loop !23

for.end182:                                       ; preds = %for.cond174
  br label %do.cond183

do.cond183:                                       ; preds = %for.end182
  %225 = load double, ptr %rel_resid, align 8, !tbaa !10
  %226 = load double, ptr %tol.addr, align 8, !tbaa !10
  %cmp184 = fcmp ogt double %225, %226
  br i1 %cmp184, label %land.rhs185, label %land.end188

land.rhs185:                                      ; preds = %do.cond183
  %227 = load i64, ptr %iter, align 8, !tbaa !8
  %add186 = add nsw i64 %227, 1
  %228 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %cmp187 = icmp sle i64 %add186, %228
  br label %land.end188

land.end188:                                      ; preds = %land.rhs185, %do.cond183
  %229 = phi i1 [ false, %do.cond183 ], [ %cmp187, %land.rhs185 ]
  br i1 %229, label %do.body, label %do.end189, !llvm.loop !24

do.end189:                                        ; preds = %land.end188
  %230 = load ptr, ptr %mat.addr, align 8, !tbaa !4
  %231 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %232 = load ptr, ptr %V, align 8, !tbaa !4
  %233 = load i64, ptr %n, align 8, !tbaa !8
  %mul190 = mul nsw i64 0, %233
  %arrayidx191 = getelementptr inbounds double, ptr %232, i64 %mul190
  call void @MatrixMatvec(ptr noundef %230, ptr noundef %231, ptr noundef %arrayidx191)
  %234 = load i64, ptr %n, align 8, !tbaa !8
  %235 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %236 = load ptr, ptr %V, align 8, !tbaa !4
  %237 = load i64, ptr %n, align 8, !tbaa !8
  %mul192 = mul nsw i64 0, %237
  %arrayidx193 = getelementptr inbounds double, ptr %236, i64 %mul192
  call void @Axpy(i64 noundef %234, double noundef -1.000000e+00, ptr noundef %235, ptr noundef %arrayidx193)
  %238 = load i64, ptr %n, align 8, !tbaa !8
  %239 = load ptr, ptr %V, align 8, !tbaa !4
  %240 = load i64, ptr %n, align 8, !tbaa !8
  %mul194 = mul nsw i64 0, %240
  %arrayidx195 = getelementptr inbounds double, ptr %239, i64 %mul194
  %241 = load ptr, ptr %V, align 8, !tbaa !4
  %242 = load i64, ptr %n, align 8, !tbaa !8
  %mul196 = mul nsw i64 0, %242
  %arrayidx197 = getelementptr inbounds double, ptr %241, i64 %mul196
  %243 = load ptr, ptr %comm, align 8, !tbaa !4
  %call198 = call double @InnerProd(i64 noundef %238, ptr noundef %arrayidx195, ptr noundef %arrayidx197, ptr noundef %243)
  %call199 = call double @sqrt(double noundef %call198) #5
  store double %call199, ptr %beta, align 8, !tbaa !10
  %244 = load double, ptr %beta, align 8, !tbaa !10
  %245 = load double, ptr %resid0, align 8, !tbaa !10
  %div200 = fdiv double %244, %245
  store double %div200, ptr %rel_resid, align 8, !tbaa !10
  %246 = load i64, ptr %mype, align 8, !tbaa !8
  %cmp201 = icmp eq i64 %246, 0
  br i1 %cmp201, label %if.then202, label %if.end204

if.then202:                                       ; preds = %do.end189
  %247 = load i64, ptr %iter, align 8, !tbaa !8
  %248 = load double, ptr %rel_resid, align 8, !tbaa !10
  %call203 = call i64 (ptr, ...) @hypre_printf(ptr noundef @.str, i64 noundef %247, double noundef %248)
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %do.end189
  %249 = load ptr, ptr %H, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %249, i32 noundef 0)
  store ptr null, ptr %H, align 8, !tbaa !4
  %250 = load ptr, ptr %s, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %250, i32 noundef 0)
  store ptr null, ptr %s, align 8, !tbaa !4
  %251 = load ptr, ptr %cs, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %251, i32 noundef 0)
  store ptr null, ptr %cs, align 8, !tbaa !4
  %252 = load ptr, ptr %sn, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %252, i32 noundef 0)
  store ptr null, ptr %sn, align 8, !tbaa !4
  %253 = load ptr, ptr %V, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %253, i32 noundef 0)
  store ptr null, ptr %V, align 8, !tbaa !4
  %254 = load ptr, ptr %W, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %254, i32 noundef 0)
  store ptr null, ptr %W, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %W) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %V) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %resid0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %H) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel_resid) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mype) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_MAlloc(i64 noundef, i32 noundef) #2

declare i64 @hypre_MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare void @MatrixMatvec(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @Axpy(i64 noundef %n, double noundef %alpha, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %one = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !10
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one) #5
  store i64 1, ptr %one, align 8, !tbaa !8
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call = call i64 @daxpy_(ptr noundef %n.addr, ptr noundef %alpha.addr, ptr noundef %0, ptr noundef %one, ptr noundef %1, ptr noundef %one)
  call void @llvm.lifetime.end.p0(i64 8, ptr %one) #5
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind uwtable
define internal double @InnerProd(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noundef %comm) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %comm.addr = alloca ptr, align 8
  %local_result = alloca double, align 8
  %result = alloca double, align 8
  %one = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_result) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %one) #5
  store i64 1, ptr %one, align 8, !tbaa !8
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call = call double @ddot_(ptr noundef %n.addr, ptr noundef %0, ptr noundef %one, ptr noundef %1, ptr noundef %one)
  store double %call, ptr %local_result, align 8, !tbaa !10
  %2 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call1 = call i64 @hypre_MPI_Allreduce(ptr noundef %local_result, ptr noundef %result, i64 noundef 1, ptr noundef @ompi_mpi_double, ptr noundef @ompi_mpi_op_sum, ptr noundef %2)
  %3 = load double, ptr %result, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %one) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_result) #5
  ret double %3
}

; Function Attrs: nounwind uwtable
define internal void @ScaleVector(i64 noundef %n, double noundef %alpha, ptr noundef %x) #0 {
entry:
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %one = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !10
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one) #5
  store i64 1, ptr %one, align 8, !tbaa !8
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call = call i64 @dscal_(ptr noundef %n.addr, ptr noundef %alpha.addr, ptr noundef %0, ptr noundef %one)
  call void @llvm.lifetime.end.p0(i64 8, ptr %one) #5
  ret void
}

declare void @ParaSailsApply(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @CopyVector(i64 noundef %n, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %one = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one) #5
  store i64 1, ptr %one, align 8, !tbaa !8
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call = call i64 @dcopy_(ptr noundef %n.addr, ptr noundef %0, ptr noundef %one, ptr noundef %1, ptr noundef %one)
  call void @llvm.lifetime.end.p0(i64 8, ptr %one) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ApplyPlaneRotation(ptr noundef %dx, ptr noundef %dy, double noundef %cs, double noundef %sn) #0 {
entry:
  %dx.addr = alloca ptr, align 8
  %dy.addr = alloca ptr, align 8
  %cs.addr = alloca double, align 8
  %sn.addr = alloca double, align 8
  %temp = alloca double, align 8
  store ptr %dx, ptr %dx.addr, align 8, !tbaa !4
  store ptr %dy, ptr %dy.addr, align 8, !tbaa !4
  store double %cs, ptr %cs.addr, align 8, !tbaa !10
  store double %sn, ptr %sn.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #5
  %0 = load double, ptr %cs.addr, align 8, !tbaa !10
  %1 = load ptr, ptr %dx.addr, align 8, !tbaa !4
  %2 = load double, ptr %1, align 8, !tbaa !10
  %3 = load double, ptr %sn.addr, align 8, !tbaa !10
  %4 = load ptr, ptr %dy.addr, align 8, !tbaa !4
  %5 = load double, ptr %4, align 8, !tbaa !10
  %mul1 = fmul double %3, %5
  %6 = call double @llvm.fmuladd.f64(double %0, double %2, double %mul1)
  store double %6, ptr %temp, align 8, !tbaa !10
  %7 = load double, ptr %sn.addr, align 8, !tbaa !10
  %fneg = fneg double %7
  %8 = load ptr, ptr %dx.addr, align 8, !tbaa !4
  %9 = load double, ptr %8, align 8, !tbaa !10
  %10 = load double, ptr %cs.addr, align 8, !tbaa !10
  %11 = load ptr, ptr %dy.addr, align 8, !tbaa !4
  %12 = load double, ptr %11, align 8, !tbaa !10
  %mul2 = fmul double %10, %12
  %13 = call double @llvm.fmuladd.f64(double %fneg, double %9, double %mul2)
  %14 = load ptr, ptr %dy.addr, align 8, !tbaa !4
  store double %13, ptr %14, align 8, !tbaa !10
  %15 = load double, ptr %temp, align 8, !tbaa !10
  %16 = load ptr, ptr %dx.addr, align 8, !tbaa !4
  store double %15, ptr %16, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GeneratePlaneRotation(double noundef %dx, double noundef %dy, ptr noundef %cs, ptr noundef %sn) #0 {
entry:
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %cs.addr = alloca ptr, align 8
  %sn.addr = alloca ptr, align 8
  %temp = alloca double, align 8
  %temp12 = alloca double, align 8
  store double %dx, ptr %dx.addr, align 8, !tbaa !10
  store double %dy, ptr %dy.addr, align 8, !tbaa !10
  store ptr %cs, ptr %cs.addr, align 8, !tbaa !4
  store ptr %sn, ptr %sn.addr, align 8, !tbaa !4
  %0 = load double, ptr %dy.addr, align 8, !tbaa !10
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cs.addr, align 8, !tbaa !4
  store double 1.000000e+00, ptr %1, align 8, !tbaa !10
  %2 = load ptr, ptr %sn.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %2, align 8, !tbaa !10
  br label %if.end18

if.else:                                          ; preds = %entry
  %3 = load double, ptr %dy.addr, align 8, !tbaa !10
  %cmp1 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %4 = load double, ptr %dy.addr, align 8, !tbaa !10
  %fneg = fneg double %4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %5 = load double, ptr %dy.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %5, %cond.false ]
  %6 = load double, ptr %dx.addr, align 8, !tbaa !10
  %cmp2 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %cond.end
  %7 = load double, ptr %dx.addr, align 8, !tbaa !10
  %fneg4 = fneg double %7
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  %8 = load double, ptr %dx.addr, align 8, !tbaa !10
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true3
  %cond7 = phi double [ %fneg4, %cond.true3 ], [ %8, %cond.false5 ]
  %cmp8 = fcmp ogt double %cond, %cond7
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %cond.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #5
  %9 = load double, ptr %dx.addr, align 8, !tbaa !10
  %10 = load double, ptr %dy.addr, align 8, !tbaa !10
  %div = fdiv double %9, %10
  store double %div, ptr %temp, align 8, !tbaa !10
  %11 = load double, ptr %temp, align 8, !tbaa !10
  %12 = load double, ptr %temp, align 8, !tbaa !10
  %13 = call double @llvm.fmuladd.f64(double %11, double %12, double 1.000000e+00)
  %call = call double @sqrt(double noundef %13) #5
  %div10 = fdiv double 1.000000e+00, %call
  %14 = load ptr, ptr %sn.addr, align 8, !tbaa !4
  store double %div10, ptr %14, align 8, !tbaa !10
  %15 = load double, ptr %temp, align 8, !tbaa !10
  %16 = load ptr, ptr %sn.addr, align 8, !tbaa !4
  %17 = load double, ptr %16, align 8, !tbaa !10
  %mul = fmul double %15, %17
  %18 = load ptr, ptr %cs.addr, align 8, !tbaa !4
  store double %mul, ptr %18, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #5
  br label %if.end

if.else11:                                        ; preds = %cond.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp12) #5
  %19 = load double, ptr %dy.addr, align 8, !tbaa !10
  %20 = load double, ptr %dx.addr, align 8, !tbaa !10
  %div13 = fdiv double %19, %20
  store double %div13, ptr %temp12, align 8, !tbaa !10
  %21 = load double, ptr %temp12, align 8, !tbaa !10
  %22 = load double, ptr %temp12, align 8, !tbaa !10
  %23 = call double @llvm.fmuladd.f64(double %21, double %22, double 1.000000e+00)
  %call15 = call double @sqrt(double noundef %23) #5
  %div16 = fdiv double 1.000000e+00, %call15
  %24 = load ptr, ptr %cs.addr, align 8, !tbaa !4
  store double %div16, ptr %24, align 8, !tbaa !10
  %25 = load double, ptr %temp12, align 8, !tbaa !10
  %26 = load ptr, ptr %cs.addr, align 8, !tbaa !4
  %27 = load double, ptr %26, align 8, !tbaa !10
  %mul17 = fmul double %25, %27
  %28 = load ptr, ptr %sn.addr, align 8, !tbaa !4
  store double %mul17, ptr %28, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp12) #5
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i64 @hypre_printf(ptr noundef, ...) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i64 @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @hypre_MPI_Allreduce(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !9, i64 16}
!13 = !{!"", !5, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168}
!14 = !{!13, !9, i64 8}
!15 = !{!13, !5, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}

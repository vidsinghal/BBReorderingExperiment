; ModuleID = 'samples/406.bc'
source_filename = "par_sv_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.hypre_ParCSRMatrix_struct = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.hypre_ParVector_struct = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.hypre_Vector = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct._hypre_ParCSRCommPkg = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@hypre__global_error = external global i32, align 4
@__const.hypre_BoomerAMG_GMExpandInterp.theta_2D = private unnamed_addr constant [2 x double] [double 5.000000e-01, double 5.000000e-01], align 16
@__const.hypre_BoomerAMG_GMExpandInterp.theta_3D = private unnamed_addr constant [3 x double] [double 0x3FD5555555555555, double 0x3FD5555555555555, double 0x3FD5555555555555], align 16
@.str = private unnamed_addr constant [16 x i8] c"par_sv_interp.c\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"WARNING - ROWS incorrectly ordered in hypre_BoomerAMG_GMExpandInterp!\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"hypre_BoomerAMG_GMExpandInterp: 1st Truncation error \0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Warning - diag Row Problem in hypre_BoomerAMG_GMExpandInterp!\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Warning - off-diag Row Problem in hypre_BoomerAMG_GMExpandInterp!\0A\00", align 1
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"WARNING - ROWS incorrectly ordered in hypre_BoomerAMGRefineInterp!\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Warning: ParCSRMatrix Memory Location Diag (%d) != Offd (%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGSmoothInterpVectors(ptr noundef %A, i32 noundef %num_smooth_vecs, ptr noundef %smooth_vecs, i32 noundef %smooth_steps) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %num_smooth_vecs.addr = alloca i32, align 4
  %smooth_vecs.addr = alloca ptr, align 8
  %smooth_steps.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca ptr, align 8
  %v = alloca ptr, align 8
  %z = alloca ptr, align 8
  %new_vector = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i32 %num_smooth_vecs, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  store ptr %smooth_vecs, ptr %smooth_vecs.addr, align 8, !tbaa !4
  store i32 %smooth_steps, ptr %smooth_steps.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector) #7
  %0 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %smooth_steps.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.end16

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call ptr @hypre_ParVectorInRangeOf(ptr noundef %3)
  store ptr %call, ptr %v, align 8, !tbaa !4
  %4 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call2 = call ptr @hypre_ParVectorInRangeOf(ptr noundef %4)
  store ptr %call2, ptr %f, align 8, !tbaa !4
  %5 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call3 = call ptr @hypre_ParVectorInRangeOf(ptr noundef %5)
  store ptr %call3, ptr %z, align 8, !tbaa !4
  %6 = load ptr, ptr %f, align 8, !tbaa !4
  %call4 = call i32 @hypre_ParVectorSetConstantValues(ptr noundef %6, double noundef 0.000000e+00)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then1
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %8 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %11, ptr %new_vector, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %j, align 4, !tbaa !8
  %13 = load i32, ptr %smooth_steps.addr, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %f, align 8, !tbaa !4
  %16 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %17 = load ptr, ptr %v, align 8, !tbaa !4
  %18 = load ptr, ptr %z, align 8, !tbaa !4
  %call9 = call i32 @hypre_BoomerAMGRelax(ptr noundef %14, ptr noundef %15, ptr noundef null, i32 noundef 3, i32 noundef 0, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef null, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond6, !llvm.loop !10

for.end:                                          ; preds = %for.cond6
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end12:                                        ; preds = %for.cond
  %21 = load ptr, ptr %v, align 8, !tbaa !4
  %call13 = call i32 @hypre_ParVectorDestroy(ptr noundef %21)
  %22 = load ptr, ptr %f, align 8, !tbaa !4
  %call14 = call i32 @hypre_ParVectorDestroy(ptr noundef %22)
  %23 = load ptr, ptr %z, align 8, !tbaa !4
  %call15 = call i32 @hypre_ParVectorDestroy(ptr noundef %23)
  br label %if.end16

if.end16:                                         ; preds = %for.end12, %if.end
  %24 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_ParVectorInRangeOf(ptr noundef) #2

declare i32 @hypre_ParVectorSetConstantValues(ptr noundef, double noundef) #2

declare i32 @hypre_BoomerAMGRelax(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParVectorDestroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGCoarsenInterpVectors(ptr noundef %P, i32 noundef %num_smooth_vecs, ptr noundef %smooth_vecs, ptr noundef %CF_marker, ptr noundef %new_smooth_vecs, i32 noundef %expand_level, i32 noundef %num_functions) #0 {
entry:
  %retval = alloca i32, align 4
  %P.addr = alloca ptr, align 8
  %num_smooth_vecs.addr = alloca i32, align 4
  %smooth_vecs.addr = alloca ptr, align 8
  %CF_marker.addr = alloca ptr, align 8
  %new_smooth_vecs.addr = alloca ptr, align 8
  %expand_level.addr = alloca i32, align 4
  %num_functions.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n_new = alloca i32, align 4
  %starts = alloca ptr, align 8
  %n_old_local = alloca i32, align 4
  %counter = alloca i32, align 4
  %orig_nf = alloca i32, align 4
  %old_vector_data = alloca ptr, align 8
  %new_vector_data = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %old_vector = alloca ptr, align 8
  %new_vector = alloca ptr, align 8
  %new_vector_array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store i32 %num_smooth_vecs, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  store ptr %smooth_vecs, ptr %smooth_vecs.addr, align 8, !tbaa !4
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store ptr %new_smooth_vecs, ptr %new_smooth_vecs.addr, align 8, !tbaa !4
  store i32 %expand_level, ptr %expand_level.addr, align 4, !tbaa !8
  store i32 %num_functions, ptr %num_functions.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_new) #7
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %global_num_cols = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %global_num_cols, align 4, !tbaa !13
  store i32 %1, ptr %n_new, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %starts) #7
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %col_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %col_starts, align 8, !tbaa !16
  store ptr %3, ptr %starts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_old_local) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_nf) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_vector_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #7
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %comm1, align 8, !tbaa !17
  store ptr %5, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_vector) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector_array) #7
  %6 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %conv = sext i32 %8 to i64
  %call = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 8, i32 noundef 0)
  store ptr %call, ptr %new_vector_array, align 8, !tbaa !4
  %9 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %10, ptr %old_vector, align 8, !tbaa !4
  %11 = load ptr, ptr %old_vector, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %local_vector, align 8, !tbaa !18
  %size = getelementptr inbounds %struct.hypre_Vector, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %size, align 8, !tbaa !20
  store i32 %13, ptr %n_old_local, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %15 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %14, %15
  br i1 %cmp2, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %comm, align 8, !tbaa !4
  %17 = load i32, ptr %n_new, align 4, !tbaa !8
  %18 = load ptr, ptr %starts, align 8, !tbaa !4
  %call4 = call ptr @hypre_ParVectorCreate(ptr noundef %16, i32 noundef %17, ptr noundef %18)
  store ptr %call4, ptr %new_vector, align 8, !tbaa !4
  %19 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %call5 = call i32 @hypre_ParVectorSetPartitioningOwner(ptr noundef %19, i32 noundef 0)
  %20 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %call6 = call i32 @hypre_ParVectorInitialize(ptr noundef %20)
  %21 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %local_vector7 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %local_vector7, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.hypre_Vector, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %data, align 8, !tbaa !22
  store ptr %23, ptr %new_vector_data, align 8, !tbaa !4
  %24 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %24, i64 %idxprom
  %26 = load ptr, ptr %arrayidx8, align 8, !tbaa !4
  store ptr %26, ptr %old_vector, align 8, !tbaa !4
  %27 = load ptr, ptr %old_vector, align 8, !tbaa !4
  %local_vector9 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %local_vector9, align 8, !tbaa !18
  %data10 = getelementptr inbounds %struct.hypre_Vector, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %data10, align 8, !tbaa !22
  store ptr %29, ptr %old_vector_data, align 8, !tbaa !4
  store i32 0, ptr %counter, align 4, !tbaa !8
  %30 = load i32, ptr %expand_level.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then11, label %if.else51

if.then11:                                        ; preds = %for.body
  %31 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %32 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %31, %32
  store i32 %sub, ptr %orig_nf, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc48, %if.then11
  %33 = load i32, ptr %j, align 4, !tbaa !8
  %34 = load i32, ptr %n_old_local, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %33, %34
  br i1 %cmp13, label %for.body15, label %for.end50

for.body15:                                       ; preds = %for.cond12
  %35 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom16 = sext i32 %36 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %35, i64 %idxprom16
  %37 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %cmp18 = icmp sge i32 %37, 0
  br i1 %cmp18, label %if.then20, label %if.end47

if.then20:                                        ; preds = %for.body15
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %if.then20
  %38 = load i32, ptr %k, align 4, !tbaa !8
  %39 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %38, %39
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %40 = load ptr, ptr %old_vector_data, align 8, !tbaa !4
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %42 = load i32, ptr %k, align 4, !tbaa !8
  %add = add nsw i32 %41, %42
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds double, ptr %40, i64 %idxprom25
  %43 = load double, ptr %arrayidx26, align 8, !tbaa !23
  %44 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %45 = load i32, ptr %counter, align 4, !tbaa !8
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %counter, align 4, !tbaa !8
  %idxprom27 = sext i32 %45 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %44, i64 %idxprom27
  store double %43, ptr %arrayidx28, align 8, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %46 = load i32, ptr %k, align 4, !tbaa !8
  %inc29 = add nsw i32 %46, 1
  store i32 %inc29, ptr %k, align 4, !tbaa !8
  br label %for.cond21, !llvm.loop !24

for.end:                                          ; preds = %for.cond21
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc44, %for.end
  %47 = load i32, ptr %k, align 4, !tbaa !8
  %48 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp31 = icmp slt i32 %47, %48
  br i1 %cmp31, label %for.body33, label %for.end46

for.body33:                                       ; preds = %for.cond30
  %49 = load i32, ptr %k, align 4, !tbaa !8
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %cmp34 = icmp eq i32 %49, %50
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.body33
  %51 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %52 = load i32, ptr %counter, align 4, !tbaa !8
  %inc37 = add nsw i32 %52, 1
  store i32 %inc37, ptr %counter, align 4, !tbaa !8
  %idxprom38 = sext i32 %52 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %51, i64 %idxprom38
  store double 1.000000e+00, ptr %arrayidx39, align 8, !tbaa !23
  br label %if.end43

if.else:                                          ; preds = %for.body33
  %53 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %54 = load i32, ptr %counter, align 4, !tbaa !8
  %inc40 = add nsw i32 %54, 1
  store i32 %inc40, ptr %counter, align 4, !tbaa !8
  %idxprom41 = sext i32 %54 to i64
  %arrayidx42 = getelementptr inbounds double, ptr %53, i64 %idxprom41
  store double 0.000000e+00, ptr %arrayidx42, align 8, !tbaa !23
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then36
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %55 = load i32, ptr %k, align 4, !tbaa !8
  %inc45 = add nsw i32 %55, 1
  store i32 %inc45, ptr %k, align 4, !tbaa !8
  br label %for.cond30, !llvm.loop !25

for.end46:                                        ; preds = %for.cond30
  br label %if.end47

if.end47:                                         ; preds = %for.end46, %for.body15
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %56 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %add49 = add nsw i32 %57, %56
  store i32 %add49, ptr %j, align 4, !tbaa !8
  br label %for.cond12, !llvm.loop !26

for.end50:                                        ; preds = %for.cond12
  br label %if.end70

if.else51:                                        ; preds = %for.body
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %if.else51
  %58 = load i32, ptr %j, align 4, !tbaa !8
  %59 = load i32, ptr %n_old_local, align 4, !tbaa !8
  %cmp53 = icmp slt i32 %58, %59
  br i1 %cmp53, label %for.body55, label %for.end69

for.body55:                                       ; preds = %for.cond52
  %60 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %61 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom56 = sext i32 %61 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %60, i64 %idxprom56
  %62 = load i32, ptr %arrayidx57, align 4, !tbaa !8
  %cmp58 = icmp sge i32 %62, 0
  br i1 %cmp58, label %if.then60, label %if.end66

if.then60:                                        ; preds = %for.body55
  %63 = load ptr, ptr %old_vector_data, align 8, !tbaa !4
  %64 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom61 = sext i32 %64 to i64
  %arrayidx62 = getelementptr inbounds double, ptr %63, i64 %idxprom61
  %65 = load double, ptr %arrayidx62, align 8, !tbaa !23
  %66 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %67 = load i32, ptr %counter, align 4, !tbaa !8
  %inc63 = add nsw i32 %67, 1
  store i32 %inc63, ptr %counter, align 4, !tbaa !8
  %idxprom64 = sext i32 %67 to i64
  %arrayidx65 = getelementptr inbounds double, ptr %66, i64 %idxprom64
  store double %65, ptr %arrayidx65, align 8, !tbaa !23
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %for.body55
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %68 = load i32, ptr %j, align 4, !tbaa !8
  %inc68 = add nsw i32 %68, 1
  store i32 %inc68, ptr %j, align 4, !tbaa !8
  br label %for.cond52, !llvm.loop !27

for.end69:                                        ; preds = %for.cond52
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %for.end50
  %69 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %70 = load ptr, ptr %new_vector_array, align 8, !tbaa !4
  %71 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom71 = sext i32 %71 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %70, i64 %idxprom71
  store ptr %69, ptr %arrayidx72, align 8, !tbaa !4
  br label %for.inc73

for.inc73:                                        ; preds = %if.end70
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %inc74 = add nsw i32 %72, 1
  store i32 %inc74, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !28

for.end75:                                        ; preds = %for.cond
  %73 = load ptr, ptr %new_vector_array, align 8, !tbaa !4
  %74 = load ptr, ptr %new_smooth_vecs.addr, align 8, !tbaa !4
  store ptr %73, ptr %74, align 8, !tbaa !4
  %75 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %75, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end75, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector_array) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_vector) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_vector_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_nf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_old_local) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %starts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_new) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
}

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

declare ptr @hypre_ParVectorCreate(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_ParVectorSetPartitioningOwner(ptr noundef, i32 noundef) #2

declare i32 @hypre_ParVectorInitialize(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMG_GMExpandInterp(ptr noundef %A, ptr noundef %P, i32 noundef %num_smooth_vecs, ptr noundef %smooth_vecs, ptr noundef %nf, ptr noundef %dof_func, ptr noundef %coarse_dof_func, i32 noundef %variant, i32 noundef %level, double noundef %abs_trunc, ptr noundef %weights, i32 noundef %q_max, ptr noundef %CF_marker, i32 noundef %interp_vec_first_level) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %num_smooth_vecs.addr = alloca i32, align 4
  %smooth_vecs.addr = alloca ptr, align 8
  %nf.addr = alloca ptr, align 8
  %dof_func.addr = alloca ptr, align 8
  %coarse_dof_func.addr = alloca ptr, align 8
  %variant.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %abs_trunc.addr = alloca double, align 8
  %weights.addr = alloca ptr, align 8
  %q_max.addr = alloca i32, align 4
  %CF_marker.addr = alloca ptr, align 8
  %interp_vec_first_level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %new_P = alloca ptr, align 8
  %P_diag = alloca ptr, align 8
  %P_diag_data = alloca ptr, align 8
  %P_diag_i = alloca ptr, align 8
  %P_diag_j = alloca ptr, align 8
  %num_rows_P = alloca i32, align 4
  %num_cols_P = alloca i32, align 4
  %P_diag_size = alloca i32, align 4
  %P_offd = alloca ptr, align 8
  %P_offd_i = alloca ptr, align 8
  %P_offd_size = alloca i32, align 4
  %P_offd_data = alloca ptr, align 8
  %P_offd_j = alloca ptr, align 8
  %num_cols_P_offd = alloca i32, align 4
  %col_map_offd_P = alloca ptr, align 8
  %col_starts = alloca ptr, align 8
  %new_col_map_offd_P = alloca ptr, align 8
  %comm_pkg = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %num_sends = alloca i32, align 4
  %new_nnz_diag = alloca i32, align 4
  %new_nnz_offd = alloca i32, align 4
  %orig_diag_start = alloca i32, align 4
  %orig_offd_start = alloca i32, align 4
  %j_diag_pos = alloca i32, align 4
  %j_offd_pos = alloca i32, align 4
  %nnz_diag = alloca i32, align 4
  %nnz_offd = alloca i32, align 4
  %fcn_num = alloca i32, align 4
  %num_elements = alloca i32, align 4
  %num_diag_elements = alloca i32, align 4
  %num_offd_elements = alloca i32, align 4
  %P_diag_j_new = alloca ptr, align 8
  %P_diag_i_new = alloca ptr, align 8
  %P_offd_i_new = alloca ptr, align 8
  %P_offd_j_new = alloca ptr, align 8
  %P_offd_j_big = alloca ptr, align 8
  %P_diag_data_new = alloca ptr, align 8
  %P_offd_data_new = alloca ptr, align 8
  %nv = alloca i32, align 4
  %ncv = alloca i32, align 4
  %ncv_peru = alloca i32, align 4
  %new_ncv = alloca i32, align 4
  %new_nf = alloca i32, align 4
  %myid = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %p_count_diag = alloca i32, align 4
  %p_count_offd = alloca i32, align 4
  %vector = alloca ptr, align 8
  %vec_data = alloca ptr, align 8
  %row_sum = alloca double, align 8
  %dbl_buf_data = alloca ptr, align 8
  %smooth_vec_offd = alloca ptr, align 8
  %offd_vec_data = alloca ptr, align 8
  %orig_nf = alloca i32, align 4
  %new_col_starts = alloca ptr, align 8
  %num_functions = alloca i32, align 4
  %c_dof_func = alloca ptr, align 8
  %modify = alloca i32, align 4
  %add_q = alloca i32, align 4
  %value = alloca double, align 8
  %trunc_value = alloca double, align 8
  %theta_2D = alloca [2 x double], align 16
  %theta_3D = alloca [3 x double], align 16
  %theta = alloca ptr, align 8
  %q_count = alloca i32, align 4
  %use_trunc_data = alloca i32, align 4
  %q_data = alloca ptr, align 8
  %q_trunc_data = alloca ptr, align 8
  %is_q = alloca ptr, align 8
  %q_alloc = alloca i32, align 4
  %aux_j = alloca ptr, align 8
  %aux_data = alloca ptr, align 8
  %is_diag = alloca ptr, align 8
  %col_map = alloca ptr, align 8
  %coarse_to_fine = alloca ptr, align 8
  %coarse_counter = alloca i32, align 4
  %fine_index = alloca i32, align 4
  %index = alloca i32, align 4
  %big_index = alloca i32, align 4
  %big_new_col = alloca i32, align 4
  %cur_col = alloca i32, align 4
  %g_nc = alloca i32, align 4
  %new_col = alloca i32, align 4
  %num_lost_sv = alloca ptr, align 8
  %q_count_sv = alloca ptr, align 8
  %lost_counter_q_sv = alloca ptr, align 8
  %lost_value_sv = alloca ptr, align 8
  %q_dist_value_sv = alloca ptr, align 8
  %start = alloca i32, align 4
  %c_index = alloca i32, align 4
  %comm_handle = alloca ptr, align 8
  %m = alloca i32, align 4
  %m_pos = alloca i32, align 4
  %m_val = alloca double, align 8
  %tot_num_lost = alloca i32, align 4
  %new_diag_pos = alloca i32, align 4
  %new_offd_pos = alloca i32, align 4
  %j_counter = alloca i32, align 4
  %new_j_counter = alloca i32, align 4
  %cnt_new_q_data = alloca i32, align 4
  %lost_counter_diag = alloca i32, align 4
  %lost_counter_offd = alloca i32, align 4
  %which_q = alloca i32, align 4
  %p_count_tot = alloca i32, align 4
  %spot = alloca i32, align 4
  %count = alloca i32, align 4
  %num_cols_P_offd1302 = alloca i32, align 4
  %P_offd_new_size = alloca i32, align 4
  %j_copy = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store i32 %num_smooth_vecs, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  store ptr %smooth_vecs, ptr %smooth_vecs.addr, align 8, !tbaa !4
  store ptr %nf, ptr %nf.addr, align 8, !tbaa !4
  store ptr %dof_func, ptr %dof_func.addr, align 8, !tbaa !4
  store ptr %coarse_dof_func, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !8
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store double %abs_trunc, ptr %abs_trunc.addr, align 8, !tbaa !23
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !4
  store i32 %q_max, ptr %q_max.addr, align 4, !tbaa !8
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store i32 %interp_vec_first_level, ptr %interp_vec_first_level.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_P) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag) #7
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %diag, align 8, !tbaa !29
  store ptr %2, ptr %P_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data) #7
  %3 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %data, align 8, !tbaa !30
  store ptr %4, ptr %P_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_i) #7
  %5 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %i1 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %i1, align 8, !tbaa !32
  store ptr %6, ptr %P_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_j) #7
  %7 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %j2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %j2, align 8, !tbaa !33
  store ptr %8, ptr %P_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_rows_P) #7
  %9 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %num_rows, align 8, !tbaa !34
  store i32 %10, ptr %num_rows_P, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_P) #7
  %11 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %num_cols, align 4, !tbaa !35
  store i32 %12, ptr %num_cols_P, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %P_diag_size) #7
  %13 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %14 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, ptr %13, i64 %idxprom
  %15 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %15, ptr %P_diag_size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd) #7
  %16 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %offd, align 8, !tbaa !36
  store ptr %18, ptr %P_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_i) #7
  %19 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %i3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %i3, align 8, !tbaa !32
  store ptr %20, ptr %P_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %P_offd_size) #7
  %21 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %22 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %idxprom4 = sext i32 %22 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %21, i64 %idxprom4
  %23 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  store i32 %23, ptr %P_offd_size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data) #7
  %24 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data6 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %data6, align 8, !tbaa !30
  store ptr %25, ptr %P_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j) #7
  %26 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %j7 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %j7, align 8, !tbaa !33
  store ptr %27, ptr %P_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_P_offd) #7
  %28 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %num_cols8 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %num_cols8, align 4, !tbaa !35
  store i32 %29, ptr %num_cols_P_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd_P) #7
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %30, align 8, !tbaa !4
  %col_map_offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %31, i32 0, i32 11
  %32 = load ptr, ptr %col_map_offd, align 8, !tbaa !37
  store ptr %32, ptr %col_map_offd_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_starts) #7
  %33 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %33, align 8, !tbaa !4
  %col_starts9 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %34, i32 0, i32 14
  %35 = load ptr, ptr %col_starts9, align 8, !tbaa !16
  store ptr %35, ptr %col_starts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_col_map_offd_P) #7
  store ptr null, ptr %new_col_map_offd_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #7
  %36 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %comm_pkg10 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %37, i32 0, i32 15
  %38 = load ptr, ptr %comm_pkg10, align 8, !tbaa !38
  store ptr %38, ptr %comm_pkg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_nnz_diag) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_nnz_offd) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_diag_start) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_offd_start) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_diag_pos) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_offd_pos) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nnz_diag) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nnz_offd) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %fcn_num) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_elements) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_diag_elements) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_offd_elements) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_j_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_i_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_i_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j_big) #7
  store ptr null, ptr %P_offd_j_big, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncv_peru) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_ncv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_nf) #7
  %39 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  store i32 %40, ptr %new_nf, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %myid) #7
  store i32 0, ptr %myid, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #7
  store i32 1, ptr %num_procs, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %p_count_diag) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %p_count_offd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_sum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbl_buf_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %smooth_vec_offd) #7
  store ptr null, ptr %smooth_vec_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %offd_vec_data) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_nf) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_col_starts) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_functions) #7
  %41 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  store i32 %42, ptr %num_functions, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_dof_func) #7
  %43 = load ptr, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %43, align 8, !tbaa !4
  store ptr %44, ptr %c_dof_func, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %modify) #7
  store i32 0, ptr %modify, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %add_q) #7
  store i32 0, ptr %add_q, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %trunc_value) #7
  store double 0.000000e+00, ptr %trunc_value, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 16, ptr %theta_2D) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %theta_2D, ptr align 16 @__const.hypre_BoomerAMG_GMExpandInterp.theta_2D, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr %theta_3D) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %theta_3D, ptr align 16 @__const.hypre_BoomerAMG_GMExpandInterp.theta_3D, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %theta) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_count) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %use_trunc_data) #7
  store i32 0, ptr %use_trunc_data, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_data) #7
  store ptr null, ptr %q_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_trunc_data) #7
  store ptr null, ptr %q_trunc_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_q) #7
  store ptr null, ptr %is_q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_alloc) #7
  store i32 0, ptr %q_alloc, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %aux_j) #7
  store ptr null, ptr %aux_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aux_data) #7
  store ptr null, ptr %aux_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_diag) #7
  store ptr null, ptr %is_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %coarse_to_fine) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %coarse_counter) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %fine_index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %big_index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %big_new_col) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_col) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %g_nc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_col) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_lost_sv) #7
  store ptr null, ptr %num_lost_sv, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_count_sv) #7
  store ptr null, ptr %q_count_sv, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lost_counter_q_sv) #7
  store ptr null, ptr %lost_counter_q_sv, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lost_value_sv) #7
  store ptr null, ptr %lost_value_sv, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_dist_value_sv) #7
  store ptr null, ptr %q_dist_value_sv, align 8, !tbaa !4
  %45 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %45, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %46 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp11 = icmp sgt i32 %46, 2
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, ptr %variant.addr, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %47 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool = icmp ne ptr %47, null
  br i1 %tobool, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  %48 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %48, align 8, !tbaa !4
  %call = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %49)
  %50 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %50, align 8, !tbaa !4
  %comm_pkg13 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %51, i32 0, i32 15
  %52 = load ptr, ptr %comm_pkg13, align 8, !tbaa !38
  store ptr %52, ptr %comm_pkg, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %53 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %comm15 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %comm15, align 8, !tbaa !39
  store ptr %54, ptr %comm, align 8, !tbaa !4
  %55 = load ptr, ptr %comm, align 8, !tbaa !4
  %call16 = call i32 @hypre_MPI_Comm_size(ptr noundef %55, ptr noundef %num_procs)
  %56 = load ptr, ptr %comm, align 8, !tbaa !4
  %call17 = call i32 @hypre_MPI_Comm_rank(ptr noundef %56, ptr noundef %myid)
  %57 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  store i32 %57, ptr %nv, align 4, !tbaa !8
  %58 = load i32, ptr %num_cols_P, align 4, !tbaa !8
  store i32 %58, ptr %ncv, align 4, !tbaa !8
  %59 = load i32, ptr %P_diag_size, align 4, !tbaa !8
  store i32 %59, ptr %nnz_diag, align 4, !tbaa !8
  %60 = load i32, ptr %P_offd_size, align 4, !tbaa !8
  store i32 %60, ptr %nnz_offd, align 4, !tbaa !8
  %61 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %61, 2
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end14
  %62 = load i32, ptr %level.addr, align 4, !tbaa !8
  %63 = load i32, ptr %interp_vec_first_level.addr, align 4, !tbaa !8
  %cmp20 = icmp eq i32 %62, %63
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false19, %if.end14
  store i32 1, ptr %add_q, align 4, !tbaa !8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false19
  %64 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp23 = icmp eq i32 %64, 2
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  store i32 1, ptr %modify, align 4, !tbaa !8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %65 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp26 = icmp eq i32 %65, 1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  store i32 1, ptr %use_trunc_data, align 4, !tbaa !8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %66 = load i32, ptr %ncv, align 4, !tbaa !8
  %67 = load i32, ptr %num_functions, align 4, !tbaa !8
  %div = sdiv i32 %66, %67
  store i32 %div, ptr %ncv_peru, align 4, !tbaa !8
  %68 = load i32, ptr %level.addr, align 4, !tbaa !8
  %69 = load i32, ptr %interp_vec_first_level.addr, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %68, %69
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  %70 = load i32, ptr %num_functions, align 4, !tbaa !8
  store i32 %70, ptr %orig_nf, align 4, !tbaa !8
  br label %if.end31

if.else:                                          ; preds = %if.end28
  %71 = load i32, ptr %num_functions, align 4, !tbaa !8
  %72 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %71, %72
  store i32 %sub, ptr %orig_nf, align 4, !tbaa !8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  %73 = load i32, ptr %modify, align 4, !tbaa !8
  %tobool32 = icmp ne i32 %73, 0
  br i1 %tobool32, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end31
  %74 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %cmp34 = icmp eq ptr %74, null
  br i1 %cmp34, label %if.then35, label %if.else41

if.then35:                                        ; preds = %if.then33
  %75 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %cmp36 = icmp eq i32 %75, 2
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then35
  %arraydecay = getelementptr inbounds [2 x double], ptr %theta_2D, i64 0, i64 0
  store ptr %arraydecay, ptr %theta, align 8, !tbaa !4
  br label %if.end40

if.else38:                                        ; preds = %if.then35
  %arraydecay39 = getelementptr inbounds [3 x double], ptr %theta_3D, i64 0, i64 0
  store ptr %arraydecay39, ptr %theta, align 8, !tbaa !4
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then37
  br label %if.end42

if.else41:                                        ; preds = %if.then33
  %76 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  store ptr %76, ptr %theta, align 8, !tbaa !4
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.end40
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end31
  %77 = load i32, ptr %ncv, align 4, !tbaa !8
  %conv = sext i32 %77 to i64
  %call44 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call44, ptr %col_map, align 8, !tbaa !4
  %78 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %tobool45 = icmp ne i32 %78, 0
  br i1 %tobool45, label %land.lhs.true, label %if.else54

land.lhs.true:                                    ; preds = %if.end43
  %79 = load i32, ptr %level.addr, align 4, !tbaa !8
  %80 = load i32, ptr %interp_vec_first_level.addr, align 4, !tbaa !8
  %cmp46 = icmp eq i32 %79, %80
  br i1 %cmp46, label %if.then48, label %if.else54

if.then48:                                        ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then48
  %81 = load i32, ptr %i, align 4, !tbaa !8
  %82 = load i32, ptr %ncv, align 4, !tbaa !8
  %cmp49 = icmp slt i32 %81, %82
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i32, ptr %i, align 4, !tbaa !8
  %84 = load i32, ptr %i, align 4, !tbaa !8
  %85 = load i32, ptr %num_functions, align 4, !tbaa !8
  %div51 = sdiv i32 %84, %85
  %86 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %mul = mul nsw i32 %div51, %86
  %add = add nsw i32 %83, %mul
  %87 = load ptr, ptr %col_map, align 8, !tbaa !4
  %88 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom52 = sext i32 %88 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %87, i64 %idxprom52
  store i32 %add, ptr %arrayidx53, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %89 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %89, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  br label %if.end64

if.else54:                                        ; preds = %land.lhs.true, %if.end43
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc61, %if.else54
  %90 = load i32, ptr %i, align 4, !tbaa !8
  %91 = load i32, ptr %ncv, align 4, !tbaa !8
  %cmp56 = icmp slt i32 %90, %91
  br i1 %cmp56, label %for.body58, label %for.end63

for.body58:                                       ; preds = %for.cond55
  %92 = load i32, ptr %i, align 4, !tbaa !8
  %93 = load ptr, ptr %col_map, align 8, !tbaa !4
  %94 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom59 = sext i32 %94 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %93, i64 %idxprom59
  store i32 %92, ptr %arrayidx60, align 4, !tbaa !8
  br label %for.inc61

for.inc61:                                        ; preds = %for.body58
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %inc62 = add nsw i32 %95, 1
  store i32 %inc62, ptr %i, align 4, !tbaa !8
  br label %for.cond55, !llvm.loop !42

for.end63:                                        ; preds = %for.cond55
  br label %if.end64

if.end64:                                         ; preds = %for.end63, %for.end
  %96 = load i32, ptr %nnz_diag, align 4, !tbaa !8
  %97 = load i32, ptr %nnz_diag, align 4, !tbaa !8
  %98 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %mul65 = mul nsw i32 %97, %98
  %add66 = add nsw i32 %96, %mul65
  store i32 %add66, ptr %new_nnz_diag, align 4, !tbaa !8
  %99 = load i32, ptr %nnz_offd, align 4, !tbaa !8
  %100 = load i32, ptr %nnz_offd, align 4, !tbaa !8
  %101 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %mul67 = mul nsw i32 %100, %101
  %add68 = add nsw i32 %99, %mul67
  store i32 %add68, ptr %new_nnz_offd, align 4, !tbaa !8
  %102 = load i32, ptr %level.addr, align 4, !tbaa !8
  %103 = load i32, ptr %interp_vec_first_level.addr, align 4, !tbaa !8
  %cmp69 = icmp eq i32 %102, %103
  br i1 %cmp69, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.end64
  %104 = load i32, ptr %ncv, align 4, !tbaa !8
  %105 = load i32, ptr %ncv_peru, align 4, !tbaa !8
  %106 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %mul72 = mul nsw i32 %105, %106
  %add73 = add nsw i32 %104, %mul72
  store i32 %add73, ptr %new_ncv, align 4, !tbaa !8
  br label %if.end75

if.else74:                                        ; preds = %if.end64
  %107 = load i32, ptr %ncv, align 4, !tbaa !8
  store i32 %107, ptr %new_ncv, align 4, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then71
  %108 = load i32, ptr %new_nnz_diag, align 4, !tbaa !8
  %conv76 = sext i32 %108 to i64
  %call77 = call ptr @hypre_CAlloc(i64 noundef %conv76, i64 noundef 4, i32 noundef 1)
  store ptr %call77, ptr %P_diag_j_new, align 8, !tbaa !4
  %109 = load i32, ptr %new_nnz_diag, align 4, !tbaa !8
  %conv78 = sext i32 %109 to i64
  %call79 = call ptr @hypre_CAlloc(i64 noundef %conv78, i64 noundef 8, i32 noundef 1)
  store ptr %call79, ptr %P_diag_data_new, align 8, !tbaa !4
  %110 = load i32, ptr %nv, align 4, !tbaa !8
  %add80 = add nsw i32 %110, 1
  %conv81 = sext i32 %add80 to i64
  %call82 = call ptr @hypre_CAlloc(i64 noundef %conv81, i64 noundef 4, i32 noundef 1)
  store ptr %call82, ptr %P_diag_i_new, align 8, !tbaa !4
  %111 = load i32, ptr %new_nnz_offd, align 4, !tbaa !8
  %conv83 = sext i32 %111 to i64
  %call84 = call ptr @hypre_CAlloc(i64 noundef %conv83, i64 noundef 4, i32 noundef 0)
  store ptr %call84, ptr %P_offd_j_big, align 8, !tbaa !4
  %112 = load i32, ptr %new_nnz_offd, align 4, !tbaa !8
  %conv85 = sext i32 %112 to i64
  %call86 = call ptr @hypre_CAlloc(i64 noundef %conv85, i64 noundef 4, i32 noundef 1)
  store ptr %call86, ptr %P_offd_j_new, align 8, !tbaa !4
  %113 = load i32, ptr %new_nnz_offd, align 4, !tbaa !8
  %conv87 = sext i32 %113 to i64
  %call88 = call ptr @hypre_CAlloc(i64 noundef %conv87, i64 noundef 8, i32 noundef 1)
  store ptr %call88, ptr %P_offd_data_new, align 8, !tbaa !4
  %114 = load i32, ptr %nv, align 4, !tbaa !8
  %add89 = add nsw i32 %114, 1
  %conv90 = sext i32 %add89 to i64
  %call91 = call ptr @hypre_CAlloc(i64 noundef %conv90, i64 noundef 4, i32 noundef 1)
  store ptr %call91, ptr %P_offd_i_new, align 8, !tbaa !4
  %115 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %arrayidx92 = getelementptr inbounds i32, ptr %115, i64 0
  %116 = load i32, ptr %arrayidx92, align 4, !tbaa !8
  %117 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds i32, ptr %117, i64 0
  store i32 %116, ptr %arrayidx93, align 4, !tbaa !8
  %118 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds i32, ptr %118, i64 0
  %119 = load i32, ptr %arrayidx94, align 4, !tbaa !8
  %120 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds i32, ptr %120, i64 0
  store i32 %119, ptr %arrayidx95, align 4, !tbaa !8
  %121 = load i32, ptr %add_q, align 4, !tbaa !8
  %tobool96 = icmp ne i32 %121, 0
  br i1 %tobool96, label %if.then97, label %if.end153

if.then97:                                        ; preds = %if.end75
  %122 = load i32, ptr %q_max.addr, align 4, !tbaa !8
  %cmp98 = icmp sgt i32 %122, 0
  br i1 %cmp98, label %if.then103, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %if.then97
  %123 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp101 = fcmp ogt double %123, 0.000000e+00
  br i1 %cmp101, label %if.then103, label %if.end152

if.then103:                                       ; preds = %lor.lhs.false100, %if.then97
  store i32 0, ptr %q_count, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc125, %if.then103
  %124 = load i32, ptr %i, align 4, !tbaa !8
  %125 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %cmp105 = icmp slt i32 %124, %125
  br i1 %cmp105, label %for.body107, label %for.end127

for.body107:                                      ; preds = %for.cond104
  %126 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %127 = load i32, ptr %i, align 4, !tbaa !8
  %add108 = add nsw i32 %127, 1
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %126, i64 %idxprom109
  %128 = load i32, ptr %arrayidx110, align 4, !tbaa !8
  %129 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %130 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom111 = sext i32 %130 to i64
  %arrayidx112 = getelementptr inbounds i32, ptr %129, i64 %idxprom111
  %131 = load i32, ptr %arrayidx112, align 4, !tbaa !8
  %sub113 = sub nsw i32 %128, %131
  store i32 %sub113, ptr %num_elements, align 4, !tbaa !8
  %132 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %133 = load i32, ptr %i, align 4, !tbaa !8
  %add114 = add nsw i32 %133, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %132, i64 %idxprom115
  %134 = load i32, ptr %arrayidx116, align 4, !tbaa !8
  %135 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %136 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom117 = sext i32 %136 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %135, i64 %idxprom117
  %137 = load i32, ptr %arrayidx118, align 4, !tbaa !8
  %sub119 = sub nsw i32 %134, %137
  %138 = load i32, ptr %num_elements, align 4, !tbaa !8
  %add120 = add nsw i32 %138, %sub119
  store i32 %add120, ptr %num_elements, align 4, !tbaa !8
  %139 = load i32, ptr %num_elements, align 4, !tbaa !8
  %140 = load i32, ptr %q_count, align 4, !tbaa !8
  %cmp121 = icmp sgt i32 %139, %140
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %for.body107
  %141 = load i32, ptr %num_elements, align 4, !tbaa !8
  store i32 %141, ptr %q_count, align 4, !tbaa !8
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %for.body107
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124
  %142 = load i32, ptr %i, align 4, !tbaa !8
  %inc126 = add nsw i32 %142, 1
  store i32 %inc126, ptr %i, align 4, !tbaa !8
  br label %for.cond104, !llvm.loop !43

for.end127:                                       ; preds = %for.cond104
  %143 = load i32, ptr %q_count, align 4, !tbaa !8
  %144 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %add128 = add nsw i32 %144, 1
  %mul129 = mul nsw i32 %143, %add128
  store i32 %mul129, ptr %q_alloc, align 4, !tbaa !8
  %145 = load i32, ptr %q_alloc, align 4, !tbaa !8
  %conv130 = sext i32 %145 to i64
  %call131 = call ptr @hypre_CAlloc(i64 noundef %conv130, i64 noundef 8, i32 noundef 0)
  store ptr %call131, ptr %q_data, align 8, !tbaa !4
  %146 = load i32, ptr %q_alloc, align 4, !tbaa !8
  %conv132 = sext i32 %146 to i64
  %call133 = call ptr @hypre_CAlloc(i64 noundef %conv132, i64 noundef 8, i32 noundef 0)
  store ptr %call133, ptr %q_trunc_data, align 8, !tbaa !4
  %147 = load i32, ptr %q_alloc, align 4, !tbaa !8
  %conv134 = sext i32 %147 to i64
  %call135 = call ptr @hypre_CAlloc(i64 noundef %conv134, i64 noundef 4, i32 noundef 0)
  store ptr %call135, ptr %is_q, align 8, !tbaa !4
  %148 = load i32, ptr %q_alloc, align 4, !tbaa !8
  %conv136 = sext i32 %148 to i64
  %call137 = call ptr @hypre_CAlloc(i64 noundef %conv136, i64 noundef 8, i32 noundef 0)
  store ptr %call137, ptr %aux_data, align 8, !tbaa !4
  %149 = load i32, ptr %q_alloc, align 4, !tbaa !8
  %conv138 = sext i32 %149 to i64
  %call139 = call ptr @hypre_CAlloc(i64 noundef %conv138, i64 noundef 4, i32 noundef 0)
  store ptr %call139, ptr %aux_j, align 8, !tbaa !4
  %150 = load i32, ptr %q_alloc, align 4, !tbaa !8
  %conv140 = sext i32 %150 to i64
  %call141 = call ptr @hypre_CAlloc(i64 noundef %conv140, i64 noundef 4, i32 noundef 0)
  store ptr %call141, ptr %is_diag, align 8, !tbaa !4
  %151 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %conv142 = sext i32 %151 to i64
  %call143 = call ptr @hypre_CAlloc(i64 noundef %conv142, i64 noundef 4, i32 noundef 0)
  store ptr %call143, ptr %q_count_sv, align 8, !tbaa !4
  %152 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %conv144 = sext i32 %152 to i64
  %call145 = call ptr @hypre_CAlloc(i64 noundef %conv144, i64 noundef 4, i32 noundef 0)
  store ptr %call145, ptr %num_lost_sv, align 8, !tbaa !4
  %153 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %conv146 = sext i32 %153 to i64
  %call147 = call ptr @hypre_CAlloc(i64 noundef %conv146, i64 noundef 4, i32 noundef 0)
  store ptr %call147, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %154 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %conv148 = sext i32 %154 to i64
  %call149 = call ptr @hypre_CAlloc(i64 noundef %conv148, i64 noundef 8, i32 noundef 0)
  store ptr %call149, ptr %lost_value_sv, align 8, !tbaa !4
  %155 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %conv150 = sext i32 %155 to i64
  %call151 = call ptr @hypre_CAlloc(i64 noundef %conv150, i64 noundef 8, i32 noundef 0)
  store ptr %call151, ptr %q_dist_value_sv, align 8, !tbaa !4
  br label %if.end152

if.end152:                                        ; preds = %for.end127, %lor.lhs.false100
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end75
  %156 = load i32, ptr %ncv, align 4, !tbaa !8
  %conv154 = sext i32 %156 to i64
  %call155 = call ptr @hypre_CAlloc(i64 noundef %conv154, i64 noundef 4, i32 noundef 0)
  store ptr %call155, ptr %coarse_to_fine, align 8, !tbaa !4
  store i32 0, ptr %coarse_counter, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc169, %if.end153
  %157 = load i32, ptr %i, align 4, !tbaa !8
  %158 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %cmp157 = icmp slt i32 %157, %158
  br i1 %cmp157, label %for.body159, label %for.end171

for.body159:                                      ; preds = %for.cond156
  %159 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom160 = sext i32 %160 to i64
  %arrayidx161 = getelementptr inbounds i32, ptr %159, i64 %idxprom160
  %161 = load i32, ptr %arrayidx161, align 4, !tbaa !8
  %cmp162 = icmp sge i32 %161, 0
  br i1 %cmp162, label %if.then164, label %if.end168

if.then164:                                       ; preds = %for.body159
  %162 = load i32, ptr %i, align 4, !tbaa !8
  %163 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %164 = load i32, ptr %coarse_counter, align 4, !tbaa !8
  %idxprom165 = sext i32 %164 to i64
  %arrayidx166 = getelementptr inbounds i32, ptr %163, i64 %idxprom165
  store i32 %162, ptr %arrayidx166, align 4, !tbaa !8
  %165 = load i32, ptr %coarse_counter, align 4, !tbaa !8
  %inc167 = add nsw i32 %165, 1
  store i32 %inc167, ptr %coarse_counter, align 4, !tbaa !8
  br label %if.end168

if.end168:                                        ; preds = %if.then164, %for.body159
  br label %for.inc169

for.inc169:                                       ; preds = %if.end168
  %166 = load i32, ptr %i, align 4, !tbaa !8
  %inc170 = add nsw i32 %166, 1
  store i32 %inc170, ptr %i, align 4, !tbaa !8
  br label %for.cond156, !llvm.loop !44

for.end171:                                       ; preds = %for.cond156
  %167 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp172 = icmp sgt i32 %167, 1
  br i1 %cmp172, label %if.then174, label %if.end226

if.then174:                                       ; preds = %for.end171
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_handle) #7
  %168 = load i32, ptr %num_cols_P_offd, align 4, !tbaa !8
  %169 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %mul175 = mul nsw i32 %168, %169
  %conv176 = sext i32 %mul175 to i64
  %call177 = call ptr @hypre_CAlloc(i64 noundef %conv176, i64 noundef 8, i32 noundef 0)
  store ptr %call177, ptr %smooth_vec_offd, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc223, %if.then174
  %170 = load i32, ptr %k, align 4, !tbaa !8
  %171 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp179 = icmp slt i32 %170, %171
  br i1 %cmp179, label %for.body181, label %for.end225

for.body181:                                      ; preds = %for.cond178
  %172 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %173 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom182 = sext i32 %173 to i64
  %arrayidx183 = getelementptr inbounds ptr, ptr %172, i64 %idxprom182
  %174 = load ptr, ptr %arrayidx183, align 8, !tbaa !4
  store ptr %174, ptr %vector, align 8, !tbaa !4
  %175 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %175, i32 0, i32 6
  %176 = load ptr, ptr %local_vector, align 8, !tbaa !18
  %data184 = getelementptr inbounds %struct.hypre_Vector, ptr %176, i32 0, i32 0
  %177 = load ptr, ptr %data184, align 8, !tbaa !22
  store ptr %177, ptr %vec_data, align 8, !tbaa !4
  %178 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends185 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %178, i32 0, i32 1
  %179 = load i32, ptr %num_sends185, align 8, !tbaa !45
  store i32 %179, ptr %num_sends, align 4, !tbaa !8
  %180 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %180, i32 0, i32 3
  %181 = load ptr, ptr %send_map_starts, align 8, !tbaa !46
  %182 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom186 = sext i32 %182 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %181, i64 %idxprom186
  %183 = load i32, ptr %arrayidx187, align 4, !tbaa !8
  %conv188 = sext i32 %183 to i64
  %call189 = call ptr @hypre_CAlloc(i64 noundef %conv188, i64 noundef 8, i32 noundef 0)
  store ptr %call189, ptr %dbl_buf_data, align 8, !tbaa !4
  %184 = load ptr, ptr %smooth_vec_offd, align 8, !tbaa !4
  %185 = load i32, ptr %k, align 4, !tbaa !8
  %186 = load i32, ptr %num_cols_P_offd, align 4, !tbaa !8
  %mul190 = mul nsw i32 %185, %186
  %idx.ext = sext i32 %mul190 to i64
  %add.ptr = getelementptr inbounds double, ptr %184, i64 %idx.ext
  store ptr %add.ptr, ptr %offd_vec_data, align 8, !tbaa !4
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc218, %for.body181
  %187 = load i32, ptr %i, align 4, !tbaa !8
  %188 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp192 = icmp slt i32 %187, %188
  br i1 %cmp192, label %for.body194, label %for.end220

for.body194:                                      ; preds = %for.cond191
  %189 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts195 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %189, i32 0, i32 3
  %190 = load ptr, ptr %send_map_starts195, align 8, !tbaa !46
  %191 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom196 = sext i32 %191 to i64
  %arrayidx197 = getelementptr inbounds i32, ptr %190, i64 %idxprom196
  %192 = load i32, ptr %arrayidx197, align 4, !tbaa !8
  store i32 %192, ptr %start, align 4, !tbaa !8
  %193 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %193, ptr %j, align 4, !tbaa !8
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc215, %for.body194
  %194 = load i32, ptr %j, align 4, !tbaa !8
  %195 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts199 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %195, i32 0, i32 3
  %196 = load ptr, ptr %send_map_starts199, align 8, !tbaa !46
  %197 = load i32, ptr %i, align 4, !tbaa !8
  %add200 = add nsw i32 %197, 1
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds i32, ptr %196, i64 %idxprom201
  %198 = load i32, ptr %arrayidx202, align 4, !tbaa !8
  %cmp203 = icmp slt i32 %194, %198
  br i1 %cmp203, label %for.body205, label %for.end217

for.body205:                                      ; preds = %for.cond198
  %199 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %199, i32 0, i32 4
  %200 = load ptr, ptr %send_map_elmts, align 8, !tbaa !47
  %201 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom206 = sext i32 %201 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %200, i64 %idxprom206
  %202 = load i32, ptr %arrayidx207, align 4, !tbaa !8
  store i32 %202, ptr %c_index, align 4, !tbaa !8
  %203 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %204 = load i32, ptr %c_index, align 4, !tbaa !8
  %idxprom208 = sext i32 %204 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %203, i64 %idxprom208
  %205 = load i32, ptr %arrayidx209, align 4, !tbaa !8
  store i32 %205, ptr %fine_index, align 4, !tbaa !8
  %206 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %207 = load i32, ptr %fine_index, align 4, !tbaa !8
  %idxprom210 = sext i32 %207 to i64
  %arrayidx211 = getelementptr inbounds double, ptr %206, i64 %idxprom210
  %208 = load double, ptr %arrayidx211, align 8, !tbaa !23
  %209 = load ptr, ptr %dbl_buf_data, align 8, !tbaa !4
  %210 = load i32, ptr %index, align 4, !tbaa !8
  %inc212 = add nsw i32 %210, 1
  store i32 %inc212, ptr %index, align 4, !tbaa !8
  %idxprom213 = sext i32 %210 to i64
  %arrayidx214 = getelementptr inbounds double, ptr %209, i64 %idxprom213
  store double %208, ptr %arrayidx214, align 8, !tbaa !23
  br label %for.inc215

for.inc215:                                       ; preds = %for.body205
  %211 = load i32, ptr %j, align 4, !tbaa !8
  %inc216 = add nsw i32 %211, 1
  store i32 %inc216, ptr %j, align 4, !tbaa !8
  br label %for.cond198, !llvm.loop !48

for.end217:                                       ; preds = %for.cond198
  br label %for.inc218

for.inc218:                                       ; preds = %for.end217
  %212 = load i32, ptr %i, align 4, !tbaa !8
  %inc219 = add nsw i32 %212, 1
  store i32 %inc219, ptr %i, align 4, !tbaa !8
  br label %for.cond191, !llvm.loop !49

for.end220:                                       ; preds = %for.cond191
  %213 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %214 = load ptr, ptr %dbl_buf_data, align 8, !tbaa !4
  %215 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %call221 = call ptr @hypre_ParCSRCommHandleCreate(i32 noundef 1, ptr noundef %213, ptr noundef %214, ptr noundef %215)
  store ptr %call221, ptr %comm_handle, align 8, !tbaa !4
  %216 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call222 = call i32 @hypre_ParCSRCommHandleDestroy(ptr noundef %216)
  %217 = load ptr, ptr %dbl_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %217, i32 noundef 0)
  store ptr null, ptr %dbl_buf_data, align 8, !tbaa !4
  br label %for.inc223

for.inc223:                                       ; preds = %for.end220
  %218 = load i32, ptr %k, align 4, !tbaa !8
  %inc224 = add nsw i32 %218, 1
  store i32 %inc224, ptr %k, align 4, !tbaa !8
  br label %for.cond178, !llvm.loop !50

for.end225:                                       ; preds = %for.cond178
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_handle) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #7
  br label %if.end226

if.end226:                                        ; preds = %for.end225, %for.end171
  store i32 0, ptr %j_diag_pos, align 4, !tbaa !8
  store i32 0, ptr %j_offd_pos, align 4, !tbaa !8
  store i32 0, ptr %orig_diag_start, align 4, !tbaa !8
  store i32 0, ptr %orig_offd_start, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc1232, %if.end226
  %219 = load i32, ptr %i, align 4, !tbaa !8
  %220 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %cmp228 = icmp slt i32 %219, %220
  br i1 %cmp228, label %for.body230, label %for.end1234

for.body230:                                      ; preds = %for.cond227
  store i32 0, ptr %q_count, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc241, %for.body230
  %221 = load i32, ptr %j, align 4, !tbaa !8
  %222 = load i32, ptr %q_alloc, align 4, !tbaa !8
  %cmp232 = icmp slt i32 %221, %222
  br i1 %cmp232, label %for.body234, label %for.end243

for.body234:                                      ; preds = %for.cond231
  %223 = load ptr, ptr %is_q, align 8, !tbaa !4
  %224 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom235 = sext i32 %224 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %223, i64 %idxprom235
  store i32 0, ptr %arrayidx236, align 4, !tbaa !8
  %225 = load ptr, ptr %q_data, align 8, !tbaa !4
  %226 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom237 = sext i32 %226 to i64
  %arrayidx238 = getelementptr inbounds double, ptr %225, i64 %idxprom237
  store double 0.000000e+00, ptr %arrayidx238, align 8, !tbaa !23
  %227 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %228 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom239 = sext i32 %228 to i64
  %arrayidx240 = getelementptr inbounds double, ptr %227, i64 %idxprom239
  store double 0.000000e+00, ptr %arrayidx240, align 8, !tbaa !23
  br label %for.inc241

for.inc241:                                       ; preds = %for.body234
  %229 = load i32, ptr %j, align 4, !tbaa !8
  %inc242 = add nsw i32 %229, 1
  store i32 %inc242, ptr %j, align 4, !tbaa !8
  br label %for.cond231, !llvm.loop !51

for.end243:                                       ; preds = %for.cond231
  %230 = load i32, ptr %i, align 4, !tbaa !8
  %conv244 = sitofp i32 %230 to double
  %231 = load i32, ptr %num_functions, align 4, !tbaa !8
  %conv245 = sitofp i32 %231 to double
  %call246 = call double @fmod(double noundef %conv244, double noundef %conv245) #7
  %conv247 = fptosi double %call246 to i32
  store i32 %conv247, ptr %fcn_num, align 4, !tbaa !8
  %232 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %233 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %234 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom248 = sext i32 %234 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %233, i64 %idxprom248
  %235 = load i32, ptr %arrayidx249, align 4, !tbaa !8
  %cmp250 = icmp ne i32 %232, %235
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %for.end243
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 623, i32 noundef 1, ptr noundef @.str.1)
  br label %if.end253

if.end253:                                        ; preds = %if.then252, %for.end243
  %236 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %237 = load i32, ptr %i, align 4, !tbaa !8
  %add254 = add nsw i32 %237, 1
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds i32, ptr %236, i64 %idxprom255
  %238 = load i32, ptr %arrayidx256, align 4, !tbaa !8
  %239 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %sub257 = sub nsw i32 %238, %239
  store i32 %sub257, ptr %num_diag_elements, align 4, !tbaa !8
  %240 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %241 = load i32, ptr %i, align 4, !tbaa !8
  %add258 = add nsw i32 %241, 1
  %idxprom259 = sext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds i32, ptr %240, i64 %idxprom259
  %242 = load i32, ptr %arrayidx260, align 4, !tbaa !8
  %243 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %sub261 = sub nsw i32 %242, %243
  store i32 %sub261, ptr %num_offd_elements, align 4, !tbaa !8
  store i32 0, ptr %p_count_diag, align 4, !tbaa !8
  store i32 0, ptr %p_count_offd, align 4, !tbaa !8
  %244 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %245 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %cmp262 = icmp slt i32 %244, %245
  br i1 %cmp262, label %if.then264, label %if.else564

if.then264:                                       ; preds = %if.end253
  %246 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp265 = icmp eq i32 %246, 1
  br i1 %cmp265, label %land.lhs.true270, label %lor.lhs.false267

lor.lhs.false267:                                 ; preds = %if.then264
  %247 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp268 = icmp eq i32 %247, 2
  br i1 %cmp268, label %land.lhs.true270, label %if.end302

land.lhs.true270:                                 ; preds = %lor.lhs.false267, %if.then264
  %248 = load i32, ptr %add_q, align 4, !tbaa !8
  %tobool271 = icmp ne i32 %248, 0
  br i1 %tobool271, label %if.then272, label %if.end302

if.then272:                                       ; preds = %land.lhs.true270
  store double 0.000000e+00, ptr %row_sum, align 8, !tbaa !23
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond273

for.cond273:                                      ; preds = %for.inc281, %if.then272
  %249 = load i32, ptr %j, align 4, !tbaa !8
  %250 = load i32, ptr %num_diag_elements, align 4, !tbaa !8
  %cmp274 = icmp slt i32 %249, %250
  br i1 %cmp274, label %for.body276, label %for.end283

for.body276:                                      ; preds = %for.cond273
  %251 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %252 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %253 = load i32, ptr %j, align 4, !tbaa !8
  %add277 = add nsw i32 %252, %253
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds double, ptr %251, i64 %idxprom278
  %254 = load double, ptr %arrayidx279, align 8, !tbaa !23
  %255 = load double, ptr %row_sum, align 8, !tbaa !23
  %add280 = fadd double %255, %254
  store double %add280, ptr %row_sum, align 8, !tbaa !23
  br label %for.inc281

for.inc281:                                       ; preds = %for.body276
  %256 = load i32, ptr %j, align 4, !tbaa !8
  %inc282 = add nsw i32 %256, 1
  store i32 %inc282, ptr %j, align 4, !tbaa !8
  br label %for.cond273, !llvm.loop !52

for.end283:                                       ; preds = %for.cond273
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond284

for.cond284:                                      ; preds = %for.inc292, %for.end283
  %257 = load i32, ptr %j, align 4, !tbaa !8
  %258 = load i32, ptr %num_offd_elements, align 4, !tbaa !8
  %cmp285 = icmp slt i32 %257, %258
  br i1 %cmp285, label %for.body287, label %for.end294

for.body287:                                      ; preds = %for.cond284
  %259 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %260 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %261 = load i32, ptr %j, align 4, !tbaa !8
  %add288 = add nsw i32 %260, %261
  %idxprom289 = sext i32 %add288 to i64
  %arrayidx290 = getelementptr inbounds double, ptr %259, i64 %idxprom289
  %262 = load double, ptr %arrayidx290, align 8, !tbaa !23
  %263 = load double, ptr %row_sum, align 8, !tbaa !23
  %add291 = fadd double %263, %262
  store double %add291, ptr %row_sum, align 8, !tbaa !23
  br label %for.inc292

for.inc292:                                       ; preds = %for.body287
  %264 = load i32, ptr %j, align 4, !tbaa !8
  %inc293 = add nsw i32 %264, 1
  store i32 %inc293, ptr %j, align 4, !tbaa !8
  br label %for.cond284, !llvm.loop !53

for.end294:                                       ; preds = %for.cond284
  %265 = load i32, ptr %num_diag_elements, align 4, !tbaa !8
  %266 = load i32, ptr %num_offd_elements, align 4, !tbaa !8
  %add295 = add nsw i32 %265, %266
  store i32 %add295, ptr %num_elements, align 4, !tbaa !8
  %267 = load i32, ptr %num_elements, align 4, !tbaa !8
  %tobool296 = icmp ne i32 %267, 0
  br i1 %tobool296, label %land.lhs.true297, label %if.end301

land.lhs.true297:                                 ; preds = %for.end294
  %268 = load double, ptr %row_sum, align 8, !tbaa !23
  %269 = call double @llvm.fabs.f64(double %268)
  %cmp298 = fcmp olt double %269, 1.000000e-15
  br i1 %cmp298, label %if.then300, label %if.end301

if.then300:                                       ; preds = %land.lhs.true297
  store double 1.000000e+00, ptr %row_sum, align 8, !tbaa !23
  br label %if.end301

if.end301:                                        ; preds = %if.then300, %land.lhs.true297, %for.end294
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %land.lhs.true270, %lor.lhs.false267
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond303

for.cond303:                                      ; preds = %for.inc426, %if.end302
  %270 = load i32, ptr %j, align 4, !tbaa !8
  %271 = load i32, ptr %num_diag_elements, align 4, !tbaa !8
  %cmp304 = icmp slt i32 %270, %271
  br i1 %cmp304, label %for.body306, label %for.end428

for.body306:                                      ; preds = %for.cond303
  %272 = load ptr, ptr %col_map, align 8, !tbaa !4
  %273 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %274 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %275 = load i32, ptr %j, align 4, !tbaa !8
  %add307 = add nsw i32 %274, %275
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds i32, ptr %273, i64 %idxprom308
  %276 = load i32, ptr %arrayidx309, align 4, !tbaa !8
  %idxprom310 = sext i32 %276 to i64
  %arrayidx311 = getelementptr inbounds i32, ptr %272, i64 %idxprom310
  %277 = load i32, ptr %arrayidx311, align 4, !tbaa !8
  store i32 %277, ptr %new_col, align 4, !tbaa !8
  %278 = load i32, ptr %new_col, align 4, !tbaa !8
  %279 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %280 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom312 = sext i32 %280 to i64
  %arrayidx313 = getelementptr inbounds i32, ptr %279, i64 %idxprom312
  store i32 %278, ptr %arrayidx313, align 4, !tbaa !8
  %281 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %282 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %283 = load i32, ptr %j, align 4, !tbaa !8
  %add314 = add nsw i32 %282, %283
  %idxprom315 = sext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds double, ptr %281, i64 %idxprom315
  %284 = load double, ptr %arrayidx316, align 8, !tbaa !23
  %285 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %286 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom317 = sext i32 %286 to i64
  %arrayidx318 = getelementptr inbounds double, ptr %285, i64 %idxprom317
  store double %284, ptr %arrayidx318, align 8, !tbaa !23
  %287 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %inc319 = add nsw i32 %287, 1
  store i32 %inc319, ptr %j_diag_pos, align 4, !tbaa !8
  %288 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %inc320 = add nsw i32 %288, 1
  store i32 %inc320, ptr %p_count_diag, align 4, !tbaa !8
  %289 = load i32, ptr %add_q, align 4, !tbaa !8
  %tobool321 = icmp ne i32 %289, 0
  br i1 %tobool321, label %if.then322, label %if.end425

if.then322:                                       ; preds = %for.body306
  %290 = load i32, ptr %new_col, align 4, !tbaa !8
  store i32 %290, ptr %cur_col, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc422, %if.then322
  %291 = load i32, ptr %k, align 4, !tbaa !8
  %292 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp324 = icmp slt i32 %291, %292
  br i1 %cmp324, label %for.body326, label %for.end424

for.body326:                                      ; preds = %for.cond323
  %293 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %294 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom327 = sext i32 %294 to i64
  %arrayidx328 = getelementptr inbounds ptr, ptr %293, i64 %idxprom327
  %295 = load ptr, ptr %arrayidx328, align 8, !tbaa !4
  store ptr %295, ptr %vector, align 8, !tbaa !4
  %296 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector329 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %296, i32 0, i32 6
  %297 = load ptr, ptr %local_vector329, align 8, !tbaa !18
  %data330 = getelementptr inbounds %struct.hypre_Vector, ptr %297, i32 0, i32 0
  %298 = load ptr, ptr %data330, align 8, !tbaa !22
  store ptr %298, ptr %vec_data, align 8, !tbaa !4
  %299 = load i32, ptr %cur_col, align 4, !tbaa !8
  %300 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %301 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %sub331 = sub nsw i32 %300, %301
  %302 = load i32, ptr %k, align 4, !tbaa !8
  %add332 = add nsw i32 %sub331, %302
  %add333 = add nsw i32 %299, %add332
  store i32 %add333, ptr %new_col, align 4, !tbaa !8
  %303 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp334 = icmp eq i32 %303, 2
  br i1 %cmp334, label %if.then336, label %if.else352

if.then336:                                       ; preds = %for.body326
  %304 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %305 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %306 = load i32, ptr %j, align 4, !tbaa !8
  %add337 = add nsw i32 %305, %306
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds i32, ptr %304, i64 %idxprom338
  %307 = load i32, ptr %arrayidx339, align 4, !tbaa !8
  store i32 %307, ptr %index, align 4, !tbaa !8
  %308 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %309 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom340 = sext i32 %309 to i64
  %arrayidx341 = getelementptr inbounds i32, ptr %308, i64 %idxprom340
  %310 = load i32, ptr %arrayidx341, align 4, !tbaa !8
  store i32 %310, ptr %fine_index, align 4, !tbaa !8
  %311 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %312 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %313 = load i32, ptr %j, align 4, !tbaa !8
  %add342 = add nsw i32 %312, %313
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds double, ptr %311, i64 %idxprom343
  %314 = load double, ptr %arrayidx344, align 8, !tbaa !23
  %315 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %316 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom345 = sext i32 %316 to i64
  %arrayidx346 = getelementptr inbounds double, ptr %315, i64 %idxprom345
  %317 = load double, ptr %arrayidx346, align 8, !tbaa !23
  %318 = load double, ptr %row_sum, align 8, !tbaa !23
  %div347 = fdiv double %317, %318
  %319 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %320 = load i32, ptr %fine_index, align 4, !tbaa !8
  %idxprom348 = sext i32 %320 to i64
  %arrayidx349 = getelementptr inbounds double, ptr %319, i64 %idxprom348
  %321 = load double, ptr %arrayidx349, align 8, !tbaa !23
  %sub350 = fsub double %div347, %321
  %mul351 = fmul double %314, %sub350
  store double %mul351, ptr %value, align 8, !tbaa !23
  br label %if.end393

if.else352:                                       ; preds = %for.body326
  %322 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %323 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %324 = load i32, ptr %j, align 4, !tbaa !8
  %add353 = add nsw i32 %323, %324
  %idxprom354 = sext i32 %add353 to i64
  %arrayidx355 = getelementptr inbounds double, ptr %322, i64 %idxprom354
  %325 = load double, ptr %arrayidx355, align 8, !tbaa !23
  %326 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %327 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom356 = sext i32 %327 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %326, i64 %idxprom356
  %328 = load double, ptr %arrayidx357, align 8, !tbaa !23
  %mul358 = fmul double %325, %328
  %329 = load double, ptr %row_sum, align 8, !tbaa !23
  %div359 = fdiv double %mul358, %329
  store double %div359, ptr %value, align 8, !tbaa !23
  %330 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp360 = fcmp ogt double %330, 0.000000e+00
  br i1 %cmp360, label %land.lhs.true362, label %if.end392

land.lhs.true362:                                 ; preds = %if.else352
  %331 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool363 = icmp ne i32 %331, 0
  br i1 %tobool363, label %if.then364, label %if.end392

if.then364:                                       ; preds = %land.lhs.true362
  %332 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %333 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %334 = load i32, ptr %j, align 4, !tbaa !8
  %add365 = add nsw i32 %333, %334
  %idxprom366 = sext i32 %add365 to i64
  %arrayidx367 = getelementptr inbounds i32, ptr %332, i64 %idxprom366
  %335 = load i32, ptr %arrayidx367, align 4, !tbaa !8
  store i32 %335, ptr %fine_index, align 4, !tbaa !8
  %336 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %337 = load i32, ptr %fine_index, align 4, !tbaa !8
  %idxprom368 = sext i32 %337 to i64
  %arrayidx369 = getelementptr inbounds i32, ptr %336, i64 %idxprom368
  %338 = load i32, ptr %arrayidx369, align 4, !tbaa !8
  store i32 %338, ptr %fine_index, align 4, !tbaa !8
  %339 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %340 = load i32, ptr %fine_index, align 4, !tbaa !8
  %idxprom370 = sext i32 %340 to i64
  %arrayidx371 = getelementptr inbounds double, ptr %339, i64 %idxprom370
  %341 = load double, ptr %arrayidx371, align 8, !tbaa !23
  %cmp372 = fcmp une double %341, 0.000000e+00
  br i1 %cmp372, label %if.then374, label %if.else384

if.then374:                                       ; preds = %if.then364
  %342 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %343 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %344 = load i32, ptr %j, align 4, !tbaa !8
  %add375 = add nsw i32 %343, %344
  %idxprom376 = sext i32 %add375 to i64
  %arrayidx377 = getelementptr inbounds double, ptr %342, i64 %idxprom376
  %345 = load double, ptr %arrayidx377, align 8, !tbaa !23
  %346 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %347 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom378 = sext i32 %347 to i64
  %arrayidx379 = getelementptr inbounds double, ptr %346, i64 %idxprom378
  %348 = load double, ptr %arrayidx379, align 8, !tbaa !23
  %mul380 = fmul double %345, %348
  %349 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %350 = load i32, ptr %fine_index, align 4, !tbaa !8
  %idxprom381 = sext i32 %350 to i64
  %arrayidx382 = getelementptr inbounds double, ptr %349, i64 %idxprom381
  %351 = load double, ptr %arrayidx382, align 8, !tbaa !23
  %div383 = fdiv double %mul380, %351
  store double %div383, ptr %trunc_value, align 8, !tbaa !23
  br label %if.end391

if.else384:                                       ; preds = %if.then364
  %352 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %353 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %354 = load i32, ptr %j, align 4, !tbaa !8
  %add385 = add nsw i32 %353, %354
  %idxprom386 = sext i32 %add385 to i64
  %arrayidx387 = getelementptr inbounds double, ptr %352, i64 %idxprom386
  %355 = load double, ptr %arrayidx387, align 8, !tbaa !23
  %356 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %357 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom388 = sext i32 %357 to i64
  %arrayidx389 = getelementptr inbounds double, ptr %356, i64 %idxprom388
  %358 = load double, ptr %arrayidx389, align 8, !tbaa !23
  %mul390 = fmul double %355, %358
  store double %mul390, ptr %trunc_value, align 8, !tbaa !23
  br label %if.end391

if.end391:                                        ; preds = %if.else384, %if.then374
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %land.lhs.true362, %if.else352
  br label %if.end393

if.end393:                                        ; preds = %if.end392, %if.then336
  %359 = load double, ptr %value, align 8, !tbaa !23
  %360 = call double @llvm.fabs.f64(double %359)
  %cmp394 = fcmp ogt double %360, 0.000000e+00
  br i1 %cmp394, label %if.then396, label %if.end421

if.then396:                                       ; preds = %if.end393
  %361 = load i32, ptr %q_max.addr, align 4, !tbaa !8
  %cmp397 = icmp sgt i32 %361, 0
  br i1 %cmp397, label %if.then402, label %lor.lhs.false399

lor.lhs.false399:                                 ; preds = %if.then396
  %362 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp400 = fcmp ogt double %362, 0.000000e+00
  br i1 %cmp400, label %if.then402, label %if.end414

if.then402:                                       ; preds = %lor.lhs.false399, %if.then396
  %363 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool403 = icmp ne i32 %363, 0
  br i1 %tobool403, label %if.then404, label %if.end407

if.then404:                                       ; preds = %if.then402
  %364 = load double, ptr %trunc_value, align 8, !tbaa !23
  %365 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %366 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %idxprom405 = sext i32 %366 to i64
  %arrayidx406 = getelementptr inbounds double, ptr %365, i64 %idxprom405
  store double %364, ptr %arrayidx406, align 8, !tbaa !23
  br label %if.end407

if.end407:                                        ; preds = %if.then404, %if.then402
  %367 = load i32, ptr %k, align 4, !tbaa !8
  %add408 = add nsw i32 %367, 1
  %368 = load ptr, ptr %is_q, align 8, !tbaa !4
  %369 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %idxprom409 = sext i32 %369 to i64
  %arrayidx410 = getelementptr inbounds i32, ptr %368, i64 %idxprom409
  store i32 %add408, ptr %arrayidx410, align 4, !tbaa !8
  %370 = load double, ptr %value, align 8, !tbaa !23
  %371 = load ptr, ptr %q_data, align 8, !tbaa !4
  %372 = load i32, ptr %q_count, align 4, !tbaa !8
  %inc411 = add nsw i32 %372, 1
  store i32 %inc411, ptr %q_count, align 4, !tbaa !8
  %idxprom412 = sext i32 %372 to i64
  %arrayidx413 = getelementptr inbounds double, ptr %371, i64 %idxprom412
  store double %370, ptr %arrayidx413, align 8, !tbaa !23
  br label %if.end414

if.end414:                                        ; preds = %if.end407, %lor.lhs.false399
  %373 = load i32, ptr %new_col, align 4, !tbaa !8
  %374 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %375 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom415 = sext i32 %375 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %374, i64 %idxprom415
  store i32 %373, ptr %arrayidx416, align 4, !tbaa !8
  %376 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %inc417 = add nsw i32 %376, 1
  store i32 %inc417, ptr %p_count_diag, align 4, !tbaa !8
  %377 = load double, ptr %value, align 8, !tbaa !23
  %378 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %379 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %inc418 = add nsw i32 %379, 1
  store i32 %inc418, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom419 = sext i32 %379 to i64
  %arrayidx420 = getelementptr inbounds double, ptr %378, i64 %idxprom419
  store double %377, ptr %arrayidx420, align 8, !tbaa !23
  br label %if.end421

if.end421:                                        ; preds = %if.end414, %if.end393
  br label %for.inc422

for.inc422:                                       ; preds = %if.end421
  %380 = load i32, ptr %k, align 4, !tbaa !8
  %inc423 = add nsw i32 %380, 1
  store i32 %inc423, ptr %k, align 4, !tbaa !8
  br label %for.cond323, !llvm.loop !54

for.end424:                                       ; preds = %for.cond323
  br label %if.end425

if.end425:                                        ; preds = %for.end424, %for.body306
  br label %for.inc426

for.inc426:                                       ; preds = %if.end425
  %381 = load i32, ptr %j, align 4, !tbaa !8
  %inc427 = add nsw i32 %381, 1
  store i32 %inc427, ptr %j, align 4, !tbaa !8
  br label %for.cond303, !llvm.loop !55

for.end428:                                       ; preds = %for.cond303
  %382 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  store i32 %382, ptr %p_count_offd, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc561, %for.end428
  %383 = load i32, ptr %j, align 4, !tbaa !8
  %384 = load i32, ptr %num_offd_elements, align 4, !tbaa !8
  %cmp430 = icmp slt i32 %383, %384
  br i1 %cmp430, label %for.body432, label %for.end563

for.body432:                                      ; preds = %for.cond429
  %385 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %386 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %387 = load i32, ptr %j, align 4, !tbaa !8
  %add433 = add nsw i32 %386, %387
  %idxprom434 = sext i32 %add433 to i64
  %arrayidx435 = getelementptr inbounds i32, ptr %385, i64 %idxprom434
  %388 = load i32, ptr %arrayidx435, align 4, !tbaa !8
  store i32 %388, ptr %index, align 4, !tbaa !8
  %389 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %390 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom436 = sext i32 %390 to i64
  %arrayidx437 = getelementptr inbounds i32, ptr %389, i64 %idxprom436
  %391 = load i32, ptr %arrayidx437, align 4, !tbaa !8
  store i32 %391, ptr %big_index, align 4, !tbaa !8
  %392 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %tobool438 = icmp ne i32 %392, 0
  br i1 %tobool438, label %land.lhs.true439, label %if.else446

land.lhs.true439:                                 ; preds = %for.body432
  %393 = load i32, ptr %level.addr, align 4, !tbaa !8
  %394 = load i32, ptr %interp_vec_first_level.addr, align 4, !tbaa !8
  %cmp440 = icmp eq i32 %393, %394
  br i1 %cmp440, label %if.then442, label %if.else446

if.then442:                                       ; preds = %land.lhs.true439
  %395 = load i32, ptr %big_index, align 4, !tbaa !8
  %396 = load i32, ptr %big_index, align 4, !tbaa !8
  %397 = load i32, ptr %num_functions, align 4, !tbaa !8
  %div443 = sdiv i32 %396, %397
  %398 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %mul444 = mul nsw i32 %div443, %398
  %add445 = add nsw i32 %395, %mul444
  store i32 %add445, ptr %big_new_col, align 4, !tbaa !8
  br label %if.end447

if.else446:                                       ; preds = %land.lhs.true439, %for.body432
  %399 = load i32, ptr %big_index, align 4, !tbaa !8
  store i32 %399, ptr %big_new_col, align 4, !tbaa !8
  br label %if.end447

if.end447:                                        ; preds = %if.else446, %if.then442
  %400 = load i32, ptr %big_new_col, align 4, !tbaa !8
  %401 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %402 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom448 = sext i32 %402 to i64
  %arrayidx449 = getelementptr inbounds i32, ptr %401, i64 %idxprom448
  store i32 %400, ptr %arrayidx449, align 4, !tbaa !8
  %403 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %404 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %405 = load i32, ptr %j, align 4, !tbaa !8
  %add450 = add nsw i32 %404, %405
  %idxprom451 = sext i32 %add450 to i64
  %arrayidx452 = getelementptr inbounds double, ptr %403, i64 %idxprom451
  %406 = load double, ptr %arrayidx452, align 8, !tbaa !23
  %407 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %408 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom453 = sext i32 %408 to i64
  %arrayidx454 = getelementptr inbounds double, ptr %407, i64 %idxprom453
  store double %406, ptr %arrayidx454, align 8, !tbaa !23
  %409 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %inc455 = add nsw i32 %409, 1
  store i32 %inc455, ptr %j_offd_pos, align 4, !tbaa !8
  %410 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %inc456 = add nsw i32 %410, 1
  store i32 %inc456, ptr %p_count_offd, align 4, !tbaa !8
  %411 = load i32, ptr %add_q, align 4, !tbaa !8
  %tobool457 = icmp ne i32 %411, 0
  br i1 %tobool457, label %if.then458, label %if.end560

if.then458:                                       ; preds = %if.end447
  %412 = load i32, ptr %big_new_col, align 4, !tbaa !8
  store i32 %412, ptr %cur_col, align 4, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond459

for.cond459:                                      ; preds = %for.inc557, %if.then458
  %413 = load i32, ptr %k, align 4, !tbaa !8
  %414 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp460 = icmp slt i32 %413, %414
  br i1 %cmp460, label %for.body462, label %for.end559

for.body462:                                      ; preds = %for.cond459
  %415 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %416 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom463 = sext i32 %416 to i64
  %arrayidx464 = getelementptr inbounds ptr, ptr %415, i64 %idxprom463
  %417 = load ptr, ptr %arrayidx464, align 8, !tbaa !4
  store ptr %417, ptr %vector, align 8, !tbaa !4
  %418 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector465 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %418, i32 0, i32 6
  %419 = load ptr, ptr %local_vector465, align 8, !tbaa !18
  %data466 = getelementptr inbounds %struct.hypre_Vector, ptr %419, i32 0, i32 0
  %420 = load ptr, ptr %data466, align 8, !tbaa !22
  store ptr %420, ptr %vec_data, align 8, !tbaa !4
  %421 = load ptr, ptr %smooth_vec_offd, align 8, !tbaa !4
  %422 = load i32, ptr %k, align 4, !tbaa !8
  %423 = load i32, ptr %num_cols_P_offd, align 4, !tbaa !8
  %mul467 = mul nsw i32 %422, %423
  %idx.ext468 = sext i32 %mul467 to i64
  %add.ptr469 = getelementptr inbounds double, ptr %421, i64 %idx.ext468
  store ptr %add.ptr469, ptr %offd_vec_data, align 8, !tbaa !4
  %424 = load i32, ptr %cur_col, align 4, !tbaa !8
  %425 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %426 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %sub470 = sub nsw i32 %425, %426
  %427 = load i32, ptr %k, align 4, !tbaa !8
  %add471 = add nsw i32 %sub470, %427
  %add472 = add nsw i32 %424, %add471
  store i32 %add472, ptr %big_new_col, align 4, !tbaa !8
  %428 = load i32, ptr %variant.addr, align 4, !tbaa !8
  %cmp473 = icmp eq i32 %428, 2
  br i1 %cmp473, label %if.then475, label %if.else489

if.then475:                                       ; preds = %for.body462
  %429 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %430 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %431 = load i32, ptr %j, align 4, !tbaa !8
  %add476 = add nsw i32 %430, %431
  %idxprom477 = sext i32 %add476 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %429, i64 %idxprom477
  %432 = load i32, ptr %arrayidx478, align 4, !tbaa !8
  store i32 %432, ptr %index, align 4, !tbaa !8
  %433 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %434 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %435 = load i32, ptr %j, align 4, !tbaa !8
  %add479 = add nsw i32 %434, %435
  %idxprom480 = sext i32 %add479 to i64
  %arrayidx481 = getelementptr inbounds double, ptr %433, i64 %idxprom480
  %436 = load double, ptr %arrayidx481, align 8, !tbaa !23
  %437 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %438 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom482 = sext i32 %438 to i64
  %arrayidx483 = getelementptr inbounds double, ptr %437, i64 %idxprom482
  %439 = load double, ptr %arrayidx483, align 8, !tbaa !23
  %440 = load double, ptr %row_sum, align 8, !tbaa !23
  %div484 = fdiv double %439, %440
  %441 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %442 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom485 = sext i32 %442 to i64
  %arrayidx486 = getelementptr inbounds double, ptr %441, i64 %idxprom485
  %443 = load double, ptr %arrayidx486, align 8, !tbaa !23
  %sub487 = fsub double %div484, %443
  %mul488 = fmul double %436, %sub487
  store double %mul488, ptr %value, align 8, !tbaa !23
  br label %if.end528

if.else489:                                       ; preds = %for.body462
  %444 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %445 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %446 = load i32, ptr %j, align 4, !tbaa !8
  %add490 = add nsw i32 %445, %446
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds double, ptr %444, i64 %idxprom491
  %447 = load double, ptr %arrayidx492, align 8, !tbaa !23
  %448 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %449 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom493 = sext i32 %449 to i64
  %arrayidx494 = getelementptr inbounds double, ptr %448, i64 %idxprom493
  %450 = load double, ptr %arrayidx494, align 8, !tbaa !23
  %mul495 = fmul double %447, %450
  %451 = load double, ptr %row_sum, align 8, !tbaa !23
  %div496 = fdiv double %mul495, %451
  store double %div496, ptr %value, align 8, !tbaa !23
  %452 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp497 = fcmp ogt double %452, 0.000000e+00
  br i1 %cmp497, label %land.lhs.true499, label %if.end527

land.lhs.true499:                                 ; preds = %if.else489
  %453 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool500 = icmp ne i32 %453, 0
  br i1 %tobool500, label %if.then501, label %if.end527

if.then501:                                       ; preds = %land.lhs.true499
  %454 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %455 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %456 = load i32, ptr %j, align 4, !tbaa !8
  %add502 = add nsw i32 %455, %456
  %idxprom503 = sext i32 %add502 to i64
  %arrayidx504 = getelementptr inbounds i32, ptr %454, i64 %idxprom503
  %457 = load i32, ptr %arrayidx504, align 4, !tbaa !8
  store i32 %457, ptr %index, align 4, !tbaa !8
  %458 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %459 = load i32, ptr %fine_index, align 4, !tbaa !8
  %idxprom505 = sext i32 %459 to i64
  %arrayidx506 = getelementptr inbounds double, ptr %458, i64 %idxprom505
  %460 = load double, ptr %arrayidx506, align 8, !tbaa !23
  %cmp507 = fcmp une double %460, 0.000000e+00
  br i1 %cmp507, label %if.then509, label %if.else519

if.then509:                                       ; preds = %if.then501
  %461 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %462 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %463 = load i32, ptr %j, align 4, !tbaa !8
  %add510 = add nsw i32 %462, %463
  %idxprom511 = sext i32 %add510 to i64
  %arrayidx512 = getelementptr inbounds double, ptr %461, i64 %idxprom511
  %464 = load double, ptr %arrayidx512, align 8, !tbaa !23
  %465 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %466 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom513 = sext i32 %466 to i64
  %arrayidx514 = getelementptr inbounds double, ptr %465, i64 %idxprom513
  %467 = load double, ptr %arrayidx514, align 8, !tbaa !23
  %mul515 = fmul double %464, %467
  %468 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %469 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom516 = sext i32 %469 to i64
  %arrayidx517 = getelementptr inbounds double, ptr %468, i64 %idxprom516
  %470 = load double, ptr %arrayidx517, align 8, !tbaa !23
  %div518 = fdiv double %mul515, %470
  store double %div518, ptr %trunc_value, align 8, !tbaa !23
  br label %if.end526

if.else519:                                       ; preds = %if.then501
  %471 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %472 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %473 = load i32, ptr %j, align 4, !tbaa !8
  %add520 = add nsw i32 %472, %473
  %idxprom521 = sext i32 %add520 to i64
  %arrayidx522 = getelementptr inbounds double, ptr %471, i64 %idxprom521
  %474 = load double, ptr %arrayidx522, align 8, !tbaa !23
  %475 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %476 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom523 = sext i32 %476 to i64
  %arrayidx524 = getelementptr inbounds double, ptr %475, i64 %idxprom523
  %477 = load double, ptr %arrayidx524, align 8, !tbaa !23
  %mul525 = fmul double %474, %477
  store double %mul525, ptr %trunc_value, align 8, !tbaa !23
  br label %if.end526

if.end526:                                        ; preds = %if.else519, %if.then509
  br label %if.end527

if.end527:                                        ; preds = %if.end526, %land.lhs.true499, %if.else489
  br label %if.end528

if.end528:                                        ; preds = %if.end527, %if.then475
  %478 = load double, ptr %value, align 8, !tbaa !23
  %479 = call double @llvm.fabs.f64(double %478)
  %cmp529 = fcmp ogt double %479, 0.000000e+00
  br i1 %cmp529, label %if.then531, label %if.end556

if.then531:                                       ; preds = %if.end528
  %480 = load i32, ptr %q_max.addr, align 4, !tbaa !8
  %cmp532 = icmp sgt i32 %480, 0
  br i1 %cmp532, label %if.then537, label %lor.lhs.false534

lor.lhs.false534:                                 ; preds = %if.then531
  %481 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp535 = fcmp ogt double %481, 0.000000e+00
  br i1 %cmp535, label %if.then537, label %if.end549

if.then537:                                       ; preds = %lor.lhs.false534, %if.then531
  %482 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool538 = icmp ne i32 %482, 0
  br i1 %tobool538, label %if.then539, label %if.end542

if.then539:                                       ; preds = %if.then537
  %483 = load double, ptr %trunc_value, align 8, !tbaa !23
  %484 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %485 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %idxprom540 = sext i32 %485 to i64
  %arrayidx541 = getelementptr inbounds double, ptr %484, i64 %idxprom540
  store double %483, ptr %arrayidx541, align 8, !tbaa !23
  br label %if.end542

if.end542:                                        ; preds = %if.then539, %if.then537
  %486 = load i32, ptr %k, align 4, !tbaa !8
  %add543 = add nsw i32 %486, 1
  %487 = load ptr, ptr %is_q, align 8, !tbaa !4
  %488 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %idxprom544 = sext i32 %488 to i64
  %arrayidx545 = getelementptr inbounds i32, ptr %487, i64 %idxprom544
  store i32 %add543, ptr %arrayidx545, align 4, !tbaa !8
  %489 = load double, ptr %value, align 8, !tbaa !23
  %490 = load ptr, ptr %q_data, align 8, !tbaa !4
  %491 = load i32, ptr %q_count, align 4, !tbaa !8
  %inc546 = add nsw i32 %491, 1
  store i32 %inc546, ptr %q_count, align 4, !tbaa !8
  %idxprom547 = sext i32 %491 to i64
  %arrayidx548 = getelementptr inbounds double, ptr %490, i64 %idxprom547
  store double %489, ptr %arrayidx548, align 8, !tbaa !23
  br label %if.end549

if.end549:                                        ; preds = %if.end542, %lor.lhs.false534
  %492 = load i32, ptr %big_new_col, align 4, !tbaa !8
  %493 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %494 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom550 = sext i32 %494 to i64
  %arrayidx551 = getelementptr inbounds i32, ptr %493, i64 %idxprom550
  store i32 %492, ptr %arrayidx551, align 4, !tbaa !8
  %495 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %inc552 = add nsw i32 %495, 1
  store i32 %inc552, ptr %p_count_offd, align 4, !tbaa !8
  %496 = load double, ptr %value, align 8, !tbaa !23
  %497 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %498 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %inc553 = add nsw i32 %498, 1
  store i32 %inc553, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom554 = sext i32 %498 to i64
  %arrayidx555 = getelementptr inbounds double, ptr %497, i64 %idxprom554
  store double %496, ptr %arrayidx555, align 8, !tbaa !23
  br label %if.end556

if.end556:                                        ; preds = %if.end549, %if.end528
  br label %for.inc557

for.inc557:                                       ; preds = %if.end556
  %499 = load i32, ptr %k, align 4, !tbaa !8
  %inc558 = add nsw i32 %499, 1
  store i32 %inc558, ptr %k, align 4, !tbaa !8
  br label %for.cond459, !llvm.loop !56

for.end559:                                       ; preds = %for.cond459
  br label %if.end560

if.end560:                                        ; preds = %for.end559, %if.end447
  br label %for.inc561

for.inc561:                                       ; preds = %if.end560
  %500 = load i32, ptr %j, align 4, !tbaa !8
  %inc562 = add nsw i32 %500, 1
  store i32 %inc562, ptr %j, align 4, !tbaa !8
  br label %for.cond429, !llvm.loop !57

for.end563:                                       ; preds = %for.cond429
  br label %if.end677

if.else564:                                       ; preds = %if.end253
  %501 = load i32, ptr %modify, align 4, !tbaa !8
  %tobool565 = icmp ne i32 %501, 0
  br i1 %tobool565, label %if.then566, label %if.else635

if.then566:                                       ; preds = %if.else564
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_val) #7
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond567

for.cond567:                                      ; preds = %for.inc597, %if.then566
  %502 = load i32, ptr %j, align 4, !tbaa !8
  %503 = load i32, ptr %num_diag_elements, align 4, !tbaa !8
  %cmp568 = icmp slt i32 %502, %503
  br i1 %cmp568, label %for.body570, label %for.end599

for.body570:                                      ; preds = %for.cond567
  store double 0.000000e+00, ptr %m_val, align 8, !tbaa !23
  store i32 0, ptr %m, align 4, !tbaa !8
  br label %for.cond571

for.cond571:                                      ; preds = %for.inc585, %for.body570
  %504 = load i32, ptr %m, align 4, !tbaa !8
  %505 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %cmp572 = icmp slt i32 %504, %505
  br i1 %cmp572, label %for.body574, label %for.end587

for.body574:                                      ; preds = %for.cond571
  %506 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %507 = load i32, ptr %i, align 4, !tbaa !8
  %508 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %509 = load i32, ptr %m, align 4, !tbaa !8
  %sub575 = sub nsw i32 %508, %509
  %sub576 = sub nsw i32 %507, %sub575
  %idxprom577 = sext i32 %sub576 to i64
  %arrayidx578 = getelementptr inbounds i32, ptr %506, i64 %idxprom577
  %510 = load i32, ptr %arrayidx578, align 4, !tbaa !8
  %511 = load i32, ptr %j, align 4, !tbaa !8
  %add579 = add nsw i32 %510, %511
  store i32 %add579, ptr %m_pos, align 4, !tbaa !8
  %512 = load ptr, ptr %theta, align 8, !tbaa !4
  %513 = load i32, ptr %m, align 4, !tbaa !8
  %idxprom580 = sext i32 %513 to i64
  %arrayidx581 = getelementptr inbounds double, ptr %512, i64 %idxprom580
  %514 = load double, ptr %arrayidx581, align 8, !tbaa !23
  %515 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %516 = load i32, ptr %m_pos, align 4, !tbaa !8
  %idxprom582 = sext i32 %516 to i64
  %arrayidx583 = getelementptr inbounds double, ptr %515, i64 %idxprom582
  %517 = load double, ptr %arrayidx583, align 8, !tbaa !23
  %518 = load double, ptr %m_val, align 8, !tbaa !23
  %519 = call double @llvm.fmuladd.f64(double %514, double %517, double %518)
  store double %519, ptr %m_val, align 8, !tbaa !23
  br label %for.inc585

for.inc585:                                       ; preds = %for.body574
  %520 = load i32, ptr %m, align 4, !tbaa !8
  %inc586 = add nsw i32 %520, 1
  store i32 %inc586, ptr %m, align 4, !tbaa !8
  br label %for.cond571, !llvm.loop !58

for.end587:                                       ; preds = %for.cond571
  %521 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %522 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %523 = load i32, ptr %j, align 4, !tbaa !8
  %add588 = add nsw i32 %522, %523
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds i32, ptr %521, i64 %idxprom589
  %524 = load i32, ptr %arrayidx590, align 4, !tbaa !8
  %525 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %526 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom591 = sext i32 %526 to i64
  %arrayidx592 = getelementptr inbounds i32, ptr %525, i64 %idxprom591
  store i32 %524, ptr %arrayidx592, align 4, !tbaa !8
  %527 = load double, ptr %m_val, align 8, !tbaa !23
  %528 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %529 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %inc593 = add nsw i32 %529, 1
  store i32 %inc593, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom594 = sext i32 %529 to i64
  %arrayidx595 = getelementptr inbounds double, ptr %528, i64 %idxprom594
  store double %527, ptr %arrayidx595, align 8, !tbaa !23
  %530 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %inc596 = add nsw i32 %530, 1
  store i32 %inc596, ptr %p_count_diag, align 4, !tbaa !8
  br label %for.inc597

for.inc597:                                       ; preds = %for.end587
  %531 = load i32, ptr %j, align 4, !tbaa !8
  %inc598 = add nsw i32 %531, 1
  store i32 %inc598, ptr %j, align 4, !tbaa !8
  br label %for.cond567, !llvm.loop !59

for.end599:                                       ; preds = %for.cond567
  %532 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  store i32 %532, ptr %p_count_offd, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond600

for.cond600:                                      ; preds = %for.inc632, %for.end599
  %533 = load i32, ptr %j, align 4, !tbaa !8
  %534 = load i32, ptr %num_offd_elements, align 4, !tbaa !8
  %cmp601 = icmp slt i32 %533, %534
  br i1 %cmp601, label %for.body603, label %for.end634

for.body603:                                      ; preds = %for.cond600
  store double 0.000000e+00, ptr %m_val, align 8, !tbaa !23
  store i32 0, ptr %m, align 4, !tbaa !8
  br label %for.cond604

for.cond604:                                      ; preds = %for.inc618, %for.body603
  %535 = load i32, ptr %m, align 4, !tbaa !8
  %536 = load i32, ptr %orig_nf, align 4, !tbaa !8
  %cmp605 = icmp slt i32 %535, %536
  br i1 %cmp605, label %for.body607, label %for.end620

for.body607:                                      ; preds = %for.cond604
  %537 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %538 = load i32, ptr %i, align 4, !tbaa !8
  %539 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %540 = load i32, ptr %m, align 4, !tbaa !8
  %sub608 = sub nsw i32 %539, %540
  %sub609 = sub nsw i32 %538, %sub608
  %idxprom610 = sext i32 %sub609 to i64
  %arrayidx611 = getelementptr inbounds i32, ptr %537, i64 %idxprom610
  %541 = load i32, ptr %arrayidx611, align 4, !tbaa !8
  %542 = load i32, ptr %j, align 4, !tbaa !8
  %add612 = add nsw i32 %541, %542
  store i32 %add612, ptr %m_pos, align 4, !tbaa !8
  %543 = load ptr, ptr %theta, align 8, !tbaa !4
  %544 = load i32, ptr %m, align 4, !tbaa !8
  %idxprom613 = sext i32 %544 to i64
  %arrayidx614 = getelementptr inbounds double, ptr %543, i64 %idxprom613
  %545 = load double, ptr %arrayidx614, align 8, !tbaa !23
  %546 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %547 = load i32, ptr %m_pos, align 4, !tbaa !8
  %idxprom615 = sext i32 %547 to i64
  %arrayidx616 = getelementptr inbounds double, ptr %546, i64 %idxprom615
  %548 = load double, ptr %arrayidx616, align 8, !tbaa !23
  %549 = load double, ptr %m_val, align 8, !tbaa !23
  %550 = call double @llvm.fmuladd.f64(double %545, double %548, double %549)
  store double %550, ptr %m_val, align 8, !tbaa !23
  br label %for.inc618

for.inc618:                                       ; preds = %for.body607
  %551 = load i32, ptr %m, align 4, !tbaa !8
  %inc619 = add nsw i32 %551, 1
  store i32 %inc619, ptr %m, align 4, !tbaa !8
  br label %for.cond604, !llvm.loop !60

for.end620:                                       ; preds = %for.cond604
  %552 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %553 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %554 = load i32, ptr %j, align 4, !tbaa !8
  %add621 = add nsw i32 %553, %554
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds i32, ptr %552, i64 %idxprom622
  %555 = load i32, ptr %arrayidx623, align 4, !tbaa !8
  store i32 %555, ptr %index, align 4, !tbaa !8
  %556 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %557 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom624 = sext i32 %557 to i64
  %arrayidx625 = getelementptr inbounds i32, ptr %556, i64 %idxprom624
  %558 = load i32, ptr %arrayidx625, align 4, !tbaa !8
  store i32 %558, ptr %big_index, align 4, !tbaa !8
  %559 = load i32, ptr %big_index, align 4, !tbaa !8
  %560 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %561 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom626 = sext i32 %561 to i64
  %arrayidx627 = getelementptr inbounds i32, ptr %560, i64 %idxprom626
  store i32 %559, ptr %arrayidx627, align 4, !tbaa !8
  %562 = load double, ptr %m_val, align 8, !tbaa !23
  %563 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %564 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %inc628 = add nsw i32 %564, 1
  store i32 %inc628, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom629 = sext i32 %564 to i64
  %arrayidx630 = getelementptr inbounds double, ptr %563, i64 %idxprom629
  store double %562, ptr %arrayidx630, align 8, !tbaa !23
  %565 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %inc631 = add nsw i32 %565, 1
  store i32 %inc631, ptr %p_count_offd, align 4, !tbaa !8
  br label %for.inc632

for.inc632:                                       ; preds = %for.end620
  %566 = load i32, ptr %j, align 4, !tbaa !8
  %inc633 = add nsw i32 %566, 1
  store i32 %inc633, ptr %j, align 4, !tbaa !8
  br label %for.cond600, !llvm.loop !61

for.end634:                                       ; preds = %for.cond600
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  br label %if.end676

if.else635:                                       ; preds = %if.else564
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond636

for.cond636:                                      ; preds = %for.inc652, %if.else635
  %567 = load i32, ptr %j, align 4, !tbaa !8
  %568 = load i32, ptr %num_diag_elements, align 4, !tbaa !8
  %cmp637 = icmp slt i32 %567, %568
  br i1 %cmp637, label %for.body639, label %for.end654

for.body639:                                      ; preds = %for.cond636
  %569 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %570 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %571 = load i32, ptr %j, align 4, !tbaa !8
  %add640 = add nsw i32 %570, %571
  %idxprom641 = sext i32 %add640 to i64
  %arrayidx642 = getelementptr inbounds i32, ptr %569, i64 %idxprom641
  %572 = load i32, ptr %arrayidx642, align 4, !tbaa !8
  %573 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %574 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom643 = sext i32 %574 to i64
  %arrayidx644 = getelementptr inbounds i32, ptr %573, i64 %idxprom643
  store i32 %572, ptr %arrayidx644, align 4, !tbaa !8
  %575 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %576 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %577 = load i32, ptr %j, align 4, !tbaa !8
  %add645 = add nsw i32 %576, %577
  %idxprom646 = sext i32 %add645 to i64
  %arrayidx647 = getelementptr inbounds double, ptr %575, i64 %idxprom646
  %578 = load double, ptr %arrayidx647, align 8, !tbaa !23
  %579 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %580 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %inc648 = add nsw i32 %580, 1
  store i32 %inc648, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom649 = sext i32 %580 to i64
  %arrayidx650 = getelementptr inbounds double, ptr %579, i64 %idxprom649
  store double %578, ptr %arrayidx650, align 8, !tbaa !23
  %581 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %inc651 = add nsw i32 %581, 1
  store i32 %inc651, ptr %p_count_diag, align 4, !tbaa !8
  br label %for.inc652

for.inc652:                                       ; preds = %for.body639
  %582 = load i32, ptr %j, align 4, !tbaa !8
  %inc653 = add nsw i32 %582, 1
  store i32 %inc653, ptr %j, align 4, !tbaa !8
  br label %for.cond636, !llvm.loop !62

for.end654:                                       ; preds = %for.cond636
  %583 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  store i32 %583, ptr %p_count_offd, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond655

for.cond655:                                      ; preds = %for.inc673, %for.end654
  %584 = load i32, ptr %j, align 4, !tbaa !8
  %585 = load i32, ptr %num_offd_elements, align 4, !tbaa !8
  %cmp656 = icmp slt i32 %584, %585
  br i1 %cmp656, label %for.body658, label %for.end675

for.body658:                                      ; preds = %for.cond655
  %586 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %587 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %588 = load i32, ptr %j, align 4, !tbaa !8
  %add659 = add nsw i32 %587, %588
  %idxprom660 = sext i32 %add659 to i64
  %arrayidx661 = getelementptr inbounds i32, ptr %586, i64 %idxprom660
  %589 = load i32, ptr %arrayidx661, align 4, !tbaa !8
  store i32 %589, ptr %index, align 4, !tbaa !8
  %590 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %591 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom662 = sext i32 %591 to i64
  %arrayidx663 = getelementptr inbounds i32, ptr %590, i64 %idxprom662
  %592 = load i32, ptr %arrayidx663, align 4, !tbaa !8
  store i32 %592, ptr %big_index, align 4, !tbaa !8
  %593 = load i32, ptr %big_index, align 4, !tbaa !8
  %594 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %595 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom664 = sext i32 %595 to i64
  %arrayidx665 = getelementptr inbounds i32, ptr %594, i64 %idxprom664
  store i32 %593, ptr %arrayidx665, align 4, !tbaa !8
  %596 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %597 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %598 = load i32, ptr %j, align 4, !tbaa !8
  %add666 = add nsw i32 %597, %598
  %idxprom667 = sext i32 %add666 to i64
  %arrayidx668 = getelementptr inbounds double, ptr %596, i64 %idxprom667
  %599 = load double, ptr %arrayidx668, align 8, !tbaa !23
  %600 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %601 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %inc669 = add nsw i32 %601, 1
  store i32 %inc669, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom670 = sext i32 %601 to i64
  %arrayidx671 = getelementptr inbounds double, ptr %600, i64 %idxprom670
  store double %599, ptr %arrayidx671, align 8, !tbaa !23
  %602 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %inc672 = add nsw i32 %602, 1
  store i32 %inc672, ptr %p_count_offd, align 4, !tbaa !8
  br label %for.inc673

for.inc673:                                       ; preds = %for.body658
  %603 = load i32, ptr %j, align 4, !tbaa !8
  %inc674 = add nsw i32 %603, 1
  store i32 %inc674, ptr %j, align 4, !tbaa !8
  br label %for.cond655, !llvm.loop !63

for.end675:                                       ; preds = %for.cond655
  br label %if.end676

if.end676:                                        ; preds = %for.end675, %for.end634
  br label %if.end677

if.end677:                                        ; preds = %if.end676, %for.end563
  %604 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %605 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %sub678 = sub nsw i32 %604, %605
  store i32 %sub678, ptr %p_count_offd, align 4, !tbaa !8
  %606 = load i32, ptr %add_q, align 4, !tbaa !8
  %tobool679 = icmp ne i32 %606, 0
  br i1 %tobool679, label %land.lhs.true680, label %if.end1199

land.lhs.true680:                                 ; preds = %if.end677
  %607 = load i32, ptr %q_count, align 4, !tbaa !8
  %cmp681 = icmp sgt i32 %607, 0
  br i1 %cmp681, label %land.lhs.true683, label %if.end1199

land.lhs.true683:                                 ; preds = %land.lhs.true680
  %608 = load i32, ptr %q_max.addr, align 4, !tbaa !8
  %cmp684 = icmp sgt i32 %608, 0
  br i1 %cmp684, label %if.then689, label %lor.lhs.false686

lor.lhs.false686:                                 ; preds = %land.lhs.true683
  %609 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp687 = fcmp ogt double %609, 0.000000e+00
  br i1 %cmp687, label %if.then689, label %if.end1199

if.then689:                                       ; preds = %lor.lhs.false686, %land.lhs.true683
  call void @llvm.lifetime.start.p0(i64 4, ptr %tot_num_lost) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_diag_pos) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_offd_pos) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_counter) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_j_counter) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt_new_q_data) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lost_counter_diag) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lost_counter_offd) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %which_q) #7
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond690

for.cond690:                                      ; preds = %for.inc704, %if.then689
  %610 = load i32, ptr %j, align 4, !tbaa !8
  %611 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp691 = icmp slt i32 %610, %611
  br i1 %cmp691, label %for.body693, label %for.end706

for.body693:                                      ; preds = %for.cond690
  %612 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %613 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom694 = sext i32 %613 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %612, i64 %idxprom694
  store i32 0, ptr %arrayidx695, align 4, !tbaa !8
  %614 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %615 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom696 = sext i32 %615 to i64
  %arrayidx697 = getelementptr inbounds i32, ptr %614, i64 %idxprom696
  store i32 0, ptr %arrayidx697, align 4, !tbaa !8
  %616 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %617 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom698 = sext i32 %617 to i64
  %arrayidx699 = getelementptr inbounds i32, ptr %616, i64 %idxprom698
  store i32 0, ptr %arrayidx699, align 4, !tbaa !8
  %618 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %619 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom700 = sext i32 %619 to i64
  %arrayidx701 = getelementptr inbounds double, ptr %618, i64 %idxprom700
  store double 0.000000e+00, ptr %arrayidx701, align 8, !tbaa !23
  %620 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %621 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom702 = sext i32 %621 to i64
  %arrayidx703 = getelementptr inbounds double, ptr %620, i64 %idxprom702
  store double 0.000000e+00, ptr %arrayidx703, align 8, !tbaa !23
  br label %for.inc704

for.inc704:                                       ; preds = %for.body693
  %622 = load i32, ptr %j, align 4, !tbaa !8
  %inc705 = add nsw i32 %622, 1
  store i32 %inc705, ptr %j, align 4, !tbaa !8
  br label %for.cond690, !llvm.loop !64

for.end706:                                       ; preds = %for.cond690
  %623 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp707 = fcmp ogt double %623, 0.000000e+00
  br i1 %cmp707, label %if.then709, label %if.end977

if.then709:                                       ; preds = %for.end706
  store i32 0, ptr %cnt_new_q_data, align 4, !tbaa !8
  store i32 0, ptr %j_counter, align 4, !tbaa !8
  %624 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %625 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom710 = sext i32 %625 to i64
  %arrayidx711 = getelementptr inbounds i32, ptr %624, i64 %idxprom710
  %626 = load i32, ptr %arrayidx711, align 4, !tbaa !8
  store i32 %626, ptr %j, align 4, !tbaa !8
  br label %for.cond712

for.cond712:                                      ; preds = %for.inc751, %if.then709
  %627 = load i32, ptr %j, align 4, !tbaa !8
  %628 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %629 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom713 = sext i32 %629 to i64
  %arrayidx714 = getelementptr inbounds i32, ptr %628, i64 %idxprom713
  %630 = load i32, ptr %arrayidx714, align 4, !tbaa !8
  %631 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %add715 = add nsw i32 %630, %631
  %cmp716 = icmp slt i32 %627, %add715
  br i1 %cmp716, label %for.body718, label %for.end753

for.body718:                                      ; preds = %for.cond712
  %632 = load ptr, ptr %is_q, align 8, !tbaa !4
  %633 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom719 = sext i32 %633 to i64
  %arrayidx720 = getelementptr inbounds i32, ptr %632, i64 %idxprom719
  %634 = load i32, ptr %arrayidx720, align 4, !tbaa !8
  %tobool721 = icmp ne i32 %634, 0
  br i1 %tobool721, label %if.then722, label %if.end749

if.then722:                                       ; preds = %for.body718
  %635 = load ptr, ptr %is_q, align 8, !tbaa !4
  %636 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom723 = sext i32 %636 to i64
  %arrayidx724 = getelementptr inbounds i32, ptr %635, i64 %idxprom723
  %637 = load i32, ptr %arrayidx724, align 4, !tbaa !8
  %sub725 = sub nsw i32 %637, 1
  store i32 %sub725, ptr %which_q, align 4, !tbaa !8
  %638 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %639 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom726 = sext i32 %639 to i64
  %arrayidx727 = getelementptr inbounds i32, ptr %638, i64 %idxprom726
  %640 = load i32, ptr %arrayidx727, align 4, !tbaa !8
  %inc728 = add nsw i32 %640, 1
  store i32 %inc728, ptr %arrayidx727, align 4, !tbaa !8
  %641 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool729 = icmp ne i32 %641, 0
  br i1 %tobool729, label %if.else733, label %if.then730

if.then730:                                       ; preds = %if.then722
  %642 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %643 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom731 = sext i32 %643 to i64
  %arrayidx732 = getelementptr inbounds double, ptr %642, i64 %idxprom731
  %644 = load double, ptr %arrayidx732, align 8, !tbaa !23
  %645 = call double @llvm.fabs.f64(double %644)
  store double %645, ptr %value, align 8, !tbaa !23
  br label %if.end736

if.else733:                                       ; preds = %if.then722
  %646 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %647 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom734 = sext i32 %647 to i64
  %arrayidx735 = getelementptr inbounds double, ptr %646, i64 %idxprom734
  %648 = load double, ptr %arrayidx735, align 8, !tbaa !23
  %649 = call double @llvm.fabs.f64(double %648)
  store double %649, ptr %value, align 8, !tbaa !23
  br label %if.end736

if.end736:                                        ; preds = %if.else733, %if.then730
  %650 = load double, ptr %value, align 8, !tbaa !23
  %651 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp737 = fcmp olt double %650, %651
  br i1 %cmp737, label %if.then739, label %if.end748

if.then739:                                       ; preds = %if.end736
  %652 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %653 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom740 = sext i32 %653 to i64
  %arrayidx741 = getelementptr inbounds i32, ptr %652, i64 %idxprom740
  %654 = load i32, ptr %arrayidx741, align 4, !tbaa !8
  %inc742 = add nsw i32 %654, 1
  store i32 %inc742, ptr %arrayidx741, align 4, !tbaa !8
  %655 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %656 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom743 = sext i32 %656 to i64
  %arrayidx744 = getelementptr inbounds double, ptr %655, i64 %idxprom743
  %657 = load double, ptr %arrayidx744, align 8, !tbaa !23
  %658 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %659 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom745 = sext i32 %659 to i64
  %arrayidx746 = getelementptr inbounds double, ptr %658, i64 %idxprom745
  %660 = load double, ptr %arrayidx746, align 8, !tbaa !23
  %add747 = fadd double %660, %657
  store double %add747, ptr %arrayidx746, align 8, !tbaa !23
  br label %if.end748

if.end748:                                        ; preds = %if.then739, %if.end736
  br label %if.end749

if.end749:                                        ; preds = %if.end748, %for.body718
  %661 = load i32, ptr %j_counter, align 4, !tbaa !8
  %inc750 = add nsw i32 %661, 1
  store i32 %inc750, ptr %j_counter, align 4, !tbaa !8
  br label %for.inc751

for.inc751:                                       ; preds = %if.end749
  %662 = load i32, ptr %j, align 4, !tbaa !8
  %inc752 = add nsw i32 %662, 1
  store i32 %inc752, ptr %j, align 4, !tbaa !8
  br label %for.cond712, !llvm.loop !65

for.end753:                                       ; preds = %for.cond712
  %663 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %664 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom754 = sext i32 %664 to i64
  %arrayidx755 = getelementptr inbounds i32, ptr %663, i64 %idxprom754
  %665 = load i32, ptr %arrayidx755, align 4, !tbaa !8
  store i32 %665, ptr %j, align 4, !tbaa !8
  br label %for.cond756

for.cond756:                                      ; preds = %for.inc795, %for.end753
  %666 = load i32, ptr %j, align 4, !tbaa !8
  %667 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %668 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom757 = sext i32 %668 to i64
  %arrayidx758 = getelementptr inbounds i32, ptr %667, i64 %idxprom757
  %669 = load i32, ptr %arrayidx758, align 4, !tbaa !8
  %670 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %add759 = add nsw i32 %669, %670
  %cmp760 = icmp slt i32 %666, %add759
  br i1 %cmp760, label %for.body762, label %for.end797

for.body762:                                      ; preds = %for.cond756
  %671 = load ptr, ptr %is_q, align 8, !tbaa !4
  %672 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom763 = sext i32 %672 to i64
  %arrayidx764 = getelementptr inbounds i32, ptr %671, i64 %idxprom763
  %673 = load i32, ptr %arrayidx764, align 4, !tbaa !8
  %tobool765 = icmp ne i32 %673, 0
  br i1 %tobool765, label %if.then766, label %if.end793

if.then766:                                       ; preds = %for.body762
  %674 = load ptr, ptr %is_q, align 8, !tbaa !4
  %675 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom767 = sext i32 %675 to i64
  %arrayidx768 = getelementptr inbounds i32, ptr %674, i64 %idxprom767
  %676 = load i32, ptr %arrayidx768, align 4, !tbaa !8
  %sub769 = sub nsw i32 %676, 1
  store i32 %sub769, ptr %which_q, align 4, !tbaa !8
  %677 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %678 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom770 = sext i32 %678 to i64
  %arrayidx771 = getelementptr inbounds i32, ptr %677, i64 %idxprom770
  %679 = load i32, ptr %arrayidx771, align 4, !tbaa !8
  %inc772 = add nsw i32 %679, 1
  store i32 %inc772, ptr %arrayidx771, align 4, !tbaa !8
  %680 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool773 = icmp ne i32 %680, 0
  br i1 %tobool773, label %if.else777, label %if.then774

if.then774:                                       ; preds = %if.then766
  %681 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %682 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom775 = sext i32 %682 to i64
  %arrayidx776 = getelementptr inbounds double, ptr %681, i64 %idxprom775
  %683 = load double, ptr %arrayidx776, align 8, !tbaa !23
  %684 = call double @llvm.fabs.f64(double %683)
  store double %684, ptr %value, align 8, !tbaa !23
  br label %if.end780

if.else777:                                       ; preds = %if.then766
  %685 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %686 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom778 = sext i32 %686 to i64
  %arrayidx779 = getelementptr inbounds double, ptr %685, i64 %idxprom778
  %687 = load double, ptr %arrayidx779, align 8, !tbaa !23
  %688 = call double @llvm.fabs.f64(double %687)
  store double %688, ptr %value, align 8, !tbaa !23
  br label %if.end780

if.end780:                                        ; preds = %if.else777, %if.then774
  %689 = load double, ptr %value, align 8, !tbaa !23
  %690 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp781 = fcmp olt double %689, %690
  br i1 %cmp781, label %if.then783, label %if.end792

if.then783:                                       ; preds = %if.end780
  %691 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %692 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom784 = sext i32 %692 to i64
  %arrayidx785 = getelementptr inbounds i32, ptr %691, i64 %idxprom784
  %693 = load i32, ptr %arrayidx785, align 4, !tbaa !8
  %inc786 = add nsw i32 %693, 1
  store i32 %inc786, ptr %arrayidx785, align 4, !tbaa !8
  %694 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %695 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom787 = sext i32 %695 to i64
  %arrayidx788 = getelementptr inbounds double, ptr %694, i64 %idxprom787
  %696 = load double, ptr %arrayidx788, align 8, !tbaa !23
  %697 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %698 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom789 = sext i32 %698 to i64
  %arrayidx790 = getelementptr inbounds double, ptr %697, i64 %idxprom789
  %699 = load double, ptr %arrayidx790, align 8, !tbaa !23
  %add791 = fadd double %699, %696
  store double %add791, ptr %arrayidx790, align 8, !tbaa !23
  br label %if.end792

if.end792:                                        ; preds = %if.then783, %if.end780
  br label %if.end793

if.end793:                                        ; preds = %if.end792, %for.body762
  %700 = load i32, ptr %j_counter, align 4, !tbaa !8
  %inc794 = add nsw i32 %700, 1
  store i32 %inc794, ptr %j_counter, align 4, !tbaa !8
  br label %for.inc795

for.inc795:                                       ; preds = %if.end793
  %701 = load i32, ptr %j, align 4, !tbaa !8
  %inc796 = add nsw i32 %701, 1
  store i32 %inc796, ptr %j, align 4, !tbaa !8
  br label %for.cond756, !llvm.loop !66

for.end797:                                       ; preds = %for.cond756
  store i32 0, ptr %tot_num_lost, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond798

for.cond798:                                      ; preds = %for.inc807, %for.end797
  %702 = load i32, ptr %j, align 4, !tbaa !8
  %703 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp799 = icmp slt i32 %702, %703
  br i1 %cmp799, label %for.body801, label %for.end809

for.body801:                                      ; preds = %for.cond798
  %704 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %705 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom802 = sext i32 %705 to i64
  %arrayidx803 = getelementptr inbounds double, ptr %704, i64 %idxprom802
  store double 0.000000e+00, ptr %arrayidx803, align 8, !tbaa !23
  %706 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %707 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom804 = sext i32 %707 to i64
  %arrayidx805 = getelementptr inbounds i32, ptr %706, i64 %idxprom804
  %708 = load i32, ptr %arrayidx805, align 4, !tbaa !8
  %709 = load i32, ptr %tot_num_lost, align 4, !tbaa !8
  %add806 = add nsw i32 %709, %708
  store i32 %add806, ptr %tot_num_lost, align 4, !tbaa !8
  br label %for.inc807

for.inc807:                                       ; preds = %for.body801
  %710 = load i32, ptr %j, align 4, !tbaa !8
  %inc808 = add nsw i32 %710, 1
  store i32 %inc808, ptr %j, align 4, !tbaa !8
  br label %for.cond798, !llvm.loop !67

for.end809:                                       ; preds = %for.cond798
  store i32 0, ptr %lost_counter_diag, align 4, !tbaa !8
  store i32 0, ptr %lost_counter_offd, align 4, !tbaa !8
  %711 = load i32, ptr %tot_num_lost, align 4, !tbaa !8
  %tobool810 = icmp ne i32 %711, 0
  br i1 %tobool810, label %if.then811, label %if.end976

if.then811:                                       ; preds = %for.end809
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond812

for.cond812:                                      ; preds = %for.inc836, %if.then811
  %712 = load i32, ptr %j, align 4, !tbaa !8
  %713 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp813 = icmp slt i32 %712, %713
  br i1 %cmp813, label %for.body815, label %for.end838

for.body815:                                      ; preds = %for.cond812
  %714 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %715 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom816 = sext i32 %715 to i64
  %arrayidx817 = getelementptr inbounds i32, ptr %714, i64 %idxprom816
  %716 = load i32, ptr %arrayidx817, align 4, !tbaa !8
  %717 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %718 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom818 = sext i32 %718 to i64
  %arrayidx819 = getelementptr inbounds i32, ptr %717, i64 %idxprom818
  %719 = load i32, ptr %arrayidx819, align 4, !tbaa !8
  %sub820 = sub nsw i32 %716, %719
  %cmp821 = icmp sgt i32 %sub820, 0
  br i1 %cmp821, label %if.then823, label %if.end835

if.then823:                                       ; preds = %for.body815
  %720 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %721 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom824 = sext i32 %721 to i64
  %arrayidx825 = getelementptr inbounds double, ptr %720, i64 %idxprom824
  %722 = load double, ptr %arrayidx825, align 8, !tbaa !23
  %723 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %724 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom826 = sext i32 %724 to i64
  %arrayidx827 = getelementptr inbounds i32, ptr %723, i64 %idxprom826
  %725 = load i32, ptr %arrayidx827, align 4, !tbaa !8
  %726 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %727 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom828 = sext i32 %727 to i64
  %arrayidx829 = getelementptr inbounds i32, ptr %726, i64 %idxprom828
  %728 = load i32, ptr %arrayidx829, align 4, !tbaa !8
  %sub830 = sub nsw i32 %725, %728
  %conv831 = sitofp i32 %sub830 to double
  %div832 = fdiv double %722, %conv831
  %729 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %730 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom833 = sext i32 %730 to i64
  %arrayidx834 = getelementptr inbounds double, ptr %729, i64 %idxprom833
  store double %div832, ptr %arrayidx834, align 8, !tbaa !23
  br label %if.end835

if.end835:                                        ; preds = %if.then823, %for.body815
  br label %for.inc836

for.inc836:                                       ; preds = %if.end835
  %731 = load i32, ptr %j, align 4, !tbaa !8
  %inc837 = add nsw i32 %731, 1
  store i32 %inc837, ptr %j, align 4, !tbaa !8
  br label %for.cond812, !llvm.loop !68

for.end838:                                       ; preds = %for.cond812
  store i32 0, ptr %j_counter, align 4, !tbaa !8
  store i32 0, ptr %new_j_counter, align 4, !tbaa !8
  %732 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %733 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom839 = sext i32 %733 to i64
  %arrayidx840 = getelementptr inbounds i32, ptr %732, i64 %idxprom839
  %734 = load i32, ptr %arrayidx840, align 4, !tbaa !8
  store i32 %734, ptr %new_diag_pos, align 4, !tbaa !8
  %735 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %736 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom841 = sext i32 %736 to i64
  %arrayidx842 = getelementptr inbounds i32, ptr %735, i64 %idxprom841
  %737 = load i32, ptr %arrayidx842, align 4, !tbaa !8
  store i32 %737, ptr %j, align 4, !tbaa !8
  br label %for.cond843

for.cond843:                                      ; preds = %for.inc900, %for.end838
  %738 = load i32, ptr %j, align 4, !tbaa !8
  %739 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %740 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom844 = sext i32 %740 to i64
  %arrayidx845 = getelementptr inbounds i32, ptr %739, i64 %idxprom844
  %741 = load i32, ptr %arrayidx845, align 4, !tbaa !8
  %742 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %add846 = add nsw i32 %741, %742
  %cmp847 = icmp slt i32 %738, %add846
  br i1 %cmp847, label %for.body849, label %for.end902

for.body849:                                      ; preds = %for.cond843
  %743 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool850 = icmp ne i32 %743, 0
  br i1 %tobool850, label %if.else854, label %if.then851

if.then851:                                       ; preds = %for.body849
  %744 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %745 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom852 = sext i32 %745 to i64
  %arrayidx853 = getelementptr inbounds double, ptr %744, i64 %idxprom852
  %746 = load double, ptr %arrayidx853, align 8, !tbaa !23
  %747 = call double @llvm.fabs.f64(double %746)
  store double %747, ptr %value, align 8, !tbaa !23
  br label %if.end857

if.else854:                                       ; preds = %for.body849
  %748 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %749 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom855 = sext i32 %749 to i64
  %arrayidx856 = getelementptr inbounds double, ptr %748, i64 %idxprom855
  %750 = load double, ptr %arrayidx856, align 8, !tbaa !23
  %751 = call double @llvm.fabs.f64(double %750)
  store double %751, ptr %value, align 8, !tbaa !23
  br label %if.end857

if.end857:                                        ; preds = %if.else854, %if.then851
  %752 = load ptr, ptr %is_q, align 8, !tbaa !4
  %753 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom858 = sext i32 %753 to i64
  %arrayidx859 = getelementptr inbounds i32, ptr %752, i64 %idxprom858
  %754 = load i32, ptr %arrayidx859, align 4, !tbaa !8
  %tobool860 = icmp ne i32 %754, 0
  br i1 %tobool860, label %land.lhs.true861, label %if.else869

land.lhs.true861:                                 ; preds = %if.end857
  %755 = load double, ptr %value, align 8, !tbaa !23
  %756 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp862 = fcmp olt double %755, %756
  br i1 %cmp862, label %if.then864, label %if.else869

if.then864:                                       ; preds = %land.lhs.true861
  %757 = load ptr, ptr %is_q, align 8, !tbaa !4
  %758 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom865 = sext i32 %758 to i64
  %arrayidx866 = getelementptr inbounds i32, ptr %757, i64 %idxprom865
  %759 = load i32, ptr %arrayidx866, align 4, !tbaa !8
  %sub867 = sub nsw i32 %759, 1
  store i32 %sub867, ptr %which_q, align 4, !tbaa !8
  %760 = load i32, ptr %lost_counter_diag, align 4, !tbaa !8
  %inc868 = add nsw i32 %760, 1
  store i32 %inc868, ptr %lost_counter_diag, align 4, !tbaa !8
  br label %if.end898

if.else869:                                       ; preds = %land.lhs.true861, %if.end857
  %761 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %762 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom870 = sext i32 %762 to i64
  %arrayidx871 = getelementptr inbounds double, ptr %761, i64 %idxprom870
  %763 = load double, ptr %arrayidx871, align 8, !tbaa !23
  store double %763, ptr %value, align 8, !tbaa !23
  %764 = load ptr, ptr %is_q, align 8, !tbaa !4
  %765 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom872 = sext i32 %765 to i64
  %arrayidx873 = getelementptr inbounds i32, ptr %764, i64 %idxprom872
  %766 = load i32, ptr %arrayidx873, align 4, !tbaa !8
  %tobool874 = icmp ne i32 %766, 0
  br i1 %tobool874, label %if.then875, label %if.end885

if.then875:                                       ; preds = %if.else869
  %767 = load ptr, ptr %is_q, align 8, !tbaa !4
  %768 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom876 = sext i32 %768 to i64
  %arrayidx877 = getelementptr inbounds i32, ptr %767, i64 %idxprom876
  %769 = load i32, ptr %arrayidx877, align 4, !tbaa !8
  %sub878 = sub nsw i32 %769, 1
  store i32 %sub878, ptr %which_q, align 4, !tbaa !8
  %770 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %771 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom879 = sext i32 %771 to i64
  %arrayidx880 = getelementptr inbounds double, ptr %770, i64 %idxprom879
  %772 = load double, ptr %arrayidx880, align 8, !tbaa !23
  %773 = load double, ptr %value, align 8, !tbaa !23
  %add881 = fadd double %773, %772
  store double %add881, ptr %value, align 8, !tbaa !23
  %774 = load double, ptr %value, align 8, !tbaa !23
  %775 = load ptr, ptr %q_data, align 8, !tbaa !4
  %776 = load i32, ptr %cnt_new_q_data, align 4, !tbaa !8
  %inc882 = add nsw i32 %776, 1
  store i32 %inc882, ptr %cnt_new_q_data, align 4, !tbaa !8
  %idxprom883 = sext i32 %776 to i64
  %arrayidx884 = getelementptr inbounds double, ptr %775, i64 %idxprom883
  store double %774, ptr %arrayidx884, align 8, !tbaa !23
  br label %if.end885

if.end885:                                        ; preds = %if.then875, %if.else869
  %777 = load double, ptr %value, align 8, !tbaa !23
  %778 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %779 = load i32, ptr %new_diag_pos, align 4, !tbaa !8
  %idxprom886 = sext i32 %779 to i64
  %arrayidx887 = getelementptr inbounds double, ptr %778, i64 %idxprom886
  store double %777, ptr %arrayidx887, align 8, !tbaa !23
  %780 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %781 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom888 = sext i32 %781 to i64
  %arrayidx889 = getelementptr inbounds i32, ptr %780, i64 %idxprom888
  %782 = load i32, ptr %arrayidx889, align 4, !tbaa !8
  %783 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %784 = load i32, ptr %new_diag_pos, align 4, !tbaa !8
  %idxprom890 = sext i32 %784 to i64
  %arrayidx891 = getelementptr inbounds i32, ptr %783, i64 %idxprom890
  store i32 %782, ptr %arrayidx891, align 4, !tbaa !8
  %785 = load i32, ptr %new_diag_pos, align 4, !tbaa !8
  %inc892 = add nsw i32 %785, 1
  store i32 %inc892, ptr %new_diag_pos, align 4, !tbaa !8
  %786 = load ptr, ptr %is_q, align 8, !tbaa !4
  %787 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom893 = sext i32 %787 to i64
  %arrayidx894 = getelementptr inbounds i32, ptr %786, i64 %idxprom893
  %788 = load i32, ptr %arrayidx894, align 4, !tbaa !8
  %789 = load ptr, ptr %is_q, align 8, !tbaa !4
  %790 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %idxprom895 = sext i32 %790 to i64
  %arrayidx896 = getelementptr inbounds i32, ptr %789, i64 %idxprom895
  store i32 %788, ptr %arrayidx896, align 4, !tbaa !8
  %791 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %inc897 = add nsw i32 %791, 1
  store i32 %inc897, ptr %new_j_counter, align 4, !tbaa !8
  br label %if.end898

if.end898:                                        ; preds = %if.end885, %if.then864
  %792 = load i32, ptr %j_counter, align 4, !tbaa !8
  %inc899 = add nsw i32 %792, 1
  store i32 %inc899, ptr %j_counter, align 4, !tbaa !8
  br label %for.inc900

for.inc900:                                       ; preds = %if.end898
  %793 = load i32, ptr %j, align 4, !tbaa !8
  %inc901 = add nsw i32 %793, 1
  store i32 %inc901, ptr %j, align 4, !tbaa !8
  br label %for.cond843, !llvm.loop !69

for.end902:                                       ; preds = %for.cond843
  %794 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %795 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom903 = sext i32 %795 to i64
  %arrayidx904 = getelementptr inbounds i32, ptr %794, i64 %idxprom903
  %796 = load i32, ptr %arrayidx904, align 4, !tbaa !8
  store i32 %796, ptr %new_offd_pos, align 4, !tbaa !8
  %797 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %798 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom905 = sext i32 %798 to i64
  %arrayidx906 = getelementptr inbounds i32, ptr %797, i64 %idxprom905
  %799 = load i32, ptr %arrayidx906, align 4, !tbaa !8
  store i32 %799, ptr %j, align 4, !tbaa !8
  br label %for.cond907

for.cond907:                                      ; preds = %for.inc964, %for.end902
  %800 = load i32, ptr %j, align 4, !tbaa !8
  %801 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %802 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom908 = sext i32 %802 to i64
  %arrayidx909 = getelementptr inbounds i32, ptr %801, i64 %idxprom908
  %803 = load i32, ptr %arrayidx909, align 4, !tbaa !8
  %804 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %add910 = add nsw i32 %803, %804
  %cmp911 = icmp slt i32 %800, %add910
  br i1 %cmp911, label %for.body913, label %for.end966

for.body913:                                      ; preds = %for.cond907
  %805 = load i32, ptr %use_trunc_data, align 4, !tbaa !8
  %tobool914 = icmp ne i32 %805, 0
  br i1 %tobool914, label %if.else918, label %if.then915

if.then915:                                       ; preds = %for.body913
  %806 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %807 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom916 = sext i32 %807 to i64
  %arrayidx917 = getelementptr inbounds double, ptr %806, i64 %idxprom916
  %808 = load double, ptr %arrayidx917, align 8, !tbaa !23
  %809 = call double @llvm.fabs.f64(double %808)
  store double %809, ptr %value, align 8, !tbaa !23
  br label %if.end921

if.else918:                                       ; preds = %for.body913
  %810 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %811 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom919 = sext i32 %811 to i64
  %arrayidx920 = getelementptr inbounds double, ptr %810, i64 %idxprom919
  %812 = load double, ptr %arrayidx920, align 8, !tbaa !23
  %813 = call double @llvm.fabs.f64(double %812)
  store double %813, ptr %value, align 8, !tbaa !23
  br label %if.end921

if.end921:                                        ; preds = %if.else918, %if.then915
  %814 = load ptr, ptr %is_q, align 8, !tbaa !4
  %815 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom922 = sext i32 %815 to i64
  %arrayidx923 = getelementptr inbounds i32, ptr %814, i64 %idxprom922
  %816 = load i32, ptr %arrayidx923, align 4, !tbaa !8
  %tobool924 = icmp ne i32 %816, 0
  br i1 %tobool924, label %land.lhs.true925, label %if.else933

land.lhs.true925:                                 ; preds = %if.end921
  %817 = load double, ptr %value, align 8, !tbaa !23
  %818 = load double, ptr %abs_trunc.addr, align 8, !tbaa !23
  %cmp926 = fcmp olt double %817, %818
  br i1 %cmp926, label %if.then928, label %if.else933

if.then928:                                       ; preds = %land.lhs.true925
  %819 = load ptr, ptr %is_q, align 8, !tbaa !4
  %820 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom929 = sext i32 %820 to i64
  %arrayidx930 = getelementptr inbounds i32, ptr %819, i64 %idxprom929
  %821 = load i32, ptr %arrayidx930, align 4, !tbaa !8
  %sub931 = sub nsw i32 %821, 1
  store i32 %sub931, ptr %which_q, align 4, !tbaa !8
  %822 = load i32, ptr %lost_counter_offd, align 4, !tbaa !8
  %inc932 = add nsw i32 %822, 1
  store i32 %inc932, ptr %lost_counter_offd, align 4, !tbaa !8
  br label %if.end962

if.else933:                                       ; preds = %land.lhs.true925, %if.end921
  %823 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %824 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom934 = sext i32 %824 to i64
  %arrayidx935 = getelementptr inbounds double, ptr %823, i64 %idxprom934
  %825 = load double, ptr %arrayidx935, align 8, !tbaa !23
  store double %825, ptr %value, align 8, !tbaa !23
  %826 = load ptr, ptr %is_q, align 8, !tbaa !4
  %827 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom936 = sext i32 %827 to i64
  %arrayidx937 = getelementptr inbounds i32, ptr %826, i64 %idxprom936
  %828 = load i32, ptr %arrayidx937, align 4, !tbaa !8
  %tobool938 = icmp ne i32 %828, 0
  br i1 %tobool938, label %if.then939, label %if.end949

if.then939:                                       ; preds = %if.else933
  %829 = load ptr, ptr %is_q, align 8, !tbaa !4
  %830 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom940 = sext i32 %830 to i64
  %arrayidx941 = getelementptr inbounds i32, ptr %829, i64 %idxprom940
  %831 = load i32, ptr %arrayidx941, align 4, !tbaa !8
  %sub942 = sub nsw i32 %831, 1
  store i32 %sub942, ptr %which_q, align 4, !tbaa !8
  %832 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %833 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom943 = sext i32 %833 to i64
  %arrayidx944 = getelementptr inbounds double, ptr %832, i64 %idxprom943
  %834 = load double, ptr %arrayidx944, align 8, !tbaa !23
  %835 = load double, ptr %value, align 8, !tbaa !23
  %add945 = fadd double %835, %834
  store double %add945, ptr %value, align 8, !tbaa !23
  %836 = load double, ptr %value, align 8, !tbaa !23
  %837 = load ptr, ptr %q_data, align 8, !tbaa !4
  %838 = load i32, ptr %cnt_new_q_data, align 4, !tbaa !8
  %inc946 = add nsw i32 %838, 1
  store i32 %inc946, ptr %cnt_new_q_data, align 4, !tbaa !8
  %idxprom947 = sext i32 %838 to i64
  %arrayidx948 = getelementptr inbounds double, ptr %837, i64 %idxprom947
  store double %836, ptr %arrayidx948, align 8, !tbaa !23
  br label %if.end949

if.end949:                                        ; preds = %if.then939, %if.else933
  %839 = load double, ptr %value, align 8, !tbaa !23
  %840 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %841 = load i32, ptr %new_offd_pos, align 4, !tbaa !8
  %idxprom950 = sext i32 %841 to i64
  %arrayidx951 = getelementptr inbounds double, ptr %840, i64 %idxprom950
  store double %839, ptr %arrayidx951, align 8, !tbaa !23
  %842 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %843 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom952 = sext i32 %843 to i64
  %arrayidx953 = getelementptr inbounds i32, ptr %842, i64 %idxprom952
  %844 = load i32, ptr %arrayidx953, align 4, !tbaa !8
  %845 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %846 = load i32, ptr %new_offd_pos, align 4, !tbaa !8
  %idxprom954 = sext i32 %846 to i64
  %arrayidx955 = getelementptr inbounds i32, ptr %845, i64 %idxprom954
  store i32 %844, ptr %arrayidx955, align 4, !tbaa !8
  %847 = load i32, ptr %new_offd_pos, align 4, !tbaa !8
  %inc956 = add nsw i32 %847, 1
  store i32 %inc956, ptr %new_offd_pos, align 4, !tbaa !8
  %848 = load ptr, ptr %is_q, align 8, !tbaa !4
  %849 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom957 = sext i32 %849 to i64
  %arrayidx958 = getelementptr inbounds i32, ptr %848, i64 %idxprom957
  %850 = load i32, ptr %arrayidx958, align 4, !tbaa !8
  %851 = load ptr, ptr %is_q, align 8, !tbaa !4
  %852 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %idxprom959 = sext i32 %852 to i64
  %arrayidx960 = getelementptr inbounds i32, ptr %851, i64 %idxprom959
  store i32 %850, ptr %arrayidx960, align 4, !tbaa !8
  %853 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %inc961 = add nsw i32 %853, 1
  store i32 %inc961, ptr %new_j_counter, align 4, !tbaa !8
  br label %if.end962

if.end962:                                        ; preds = %if.end949, %if.then928
  %854 = load i32, ptr %j_counter, align 4, !tbaa !8
  %inc963 = add nsw i32 %854, 1
  store i32 %inc963, ptr %j_counter, align 4, !tbaa !8
  br label %for.inc964

for.inc964:                                       ; preds = %if.end962
  %855 = load i32, ptr %j, align 4, !tbaa !8
  %inc965 = add nsw i32 %855, 1
  store i32 %inc965, ptr %j, align 4, !tbaa !8
  br label %for.cond907, !llvm.loop !70

for.end966:                                       ; preds = %for.cond907
  %856 = load i32, ptr %lost_counter_diag, align 4, !tbaa !8
  %857 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %sub967 = sub nsw i32 %857, %856
  store i32 %sub967, ptr %p_count_diag, align 4, !tbaa !8
  %858 = load i32, ptr %lost_counter_offd, align 4, !tbaa !8
  %859 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %sub968 = sub nsw i32 %859, %858
  store i32 %sub968, ptr %p_count_offd, align 4, !tbaa !8
  %860 = load i32, ptr %lost_counter_diag, align 4, !tbaa !8
  %861 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %sub969 = sub nsw i32 %861, %860
  store i32 %sub969, ptr %j_diag_pos, align 4, !tbaa !8
  %862 = load i32, ptr %lost_counter_offd, align 4, !tbaa !8
  %863 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %sub970 = sub nsw i32 %863, %862
  store i32 %sub970, ptr %j_offd_pos, align 4, !tbaa !8
  %864 = load i32, ptr %tot_num_lost, align 4, !tbaa !8
  %865 = load i32, ptr %lost_counter_diag, align 4, !tbaa !8
  %866 = load i32, ptr %lost_counter_offd, align 4, !tbaa !8
  %add971 = add nsw i32 %865, %866
  %cmp972 = icmp ne i32 %864, %add971
  br i1 %cmp972, label %if.then974, label %if.end975

if.then974:                                       ; preds = %for.end966
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1124, i32 noundef 1, ptr noundef @.str.2)
  br label %if.end975

if.end975:                                        ; preds = %if.then974, %for.end966
  br label %if.end976

if.end976:                                        ; preds = %if.end975, %for.end809
  br label %if.end977

if.end977:                                        ; preds = %if.end976, %for.end706
  %867 = load i32, ptr %q_max.addr, align 4, !tbaa !8
  %cmp978 = icmp sgt i32 %867, 0
  br i1 %cmp978, label %if.then980, label %if.end1198

if.then980:                                       ; preds = %if.end977
  call void @llvm.lifetime.start.p0(i64 4, ptr %p_count_tot) #7
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond981

for.cond981:                                      ; preds = %for.inc991, %if.then980
  %868 = load i32, ptr %j, align 4, !tbaa !8
  %869 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp982 = icmp slt i32 %868, %869
  br i1 %cmp982, label %for.body984, label %for.end993

for.body984:                                      ; preds = %for.cond981
  %870 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %871 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom985 = sext i32 %871 to i64
  %arrayidx986 = getelementptr inbounds i32, ptr %870, i64 %idxprom985
  store i32 0, ptr %arrayidx986, align 4, !tbaa !8
  %872 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %873 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom987 = sext i32 %873 to i64
  %arrayidx988 = getelementptr inbounds i32, ptr %872, i64 %idxprom987
  store i32 0, ptr %arrayidx988, align 4, !tbaa !8
  %874 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %875 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom989 = sext i32 %875 to i64
  %arrayidx990 = getelementptr inbounds double, ptr %874, i64 %idxprom989
  store double 0.000000e+00, ptr %arrayidx990, align 8, !tbaa !23
  br label %for.inc991

for.inc991:                                       ; preds = %for.body984
  %876 = load i32, ptr %j, align 4, !tbaa !8
  %inc992 = add nsw i32 %876, 1
  store i32 %inc992, ptr %j, align 4, !tbaa !8
  br label %for.cond981, !llvm.loop !71

for.end993:                                       ; preds = %for.cond981
  store i32 0, ptr %j_counter, align 4, !tbaa !8
  %877 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %878 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom994 = sext i32 %878 to i64
  %arrayidx995 = getelementptr inbounds i32, ptr %877, i64 %idxprom994
  %879 = load i32, ptr %arrayidx995, align 4, !tbaa !8
  store i32 %879, ptr %j, align 4, !tbaa !8
  br label %for.cond996

for.cond996:                                      ; preds = %for.inc1025, %for.end993
  %880 = load i32, ptr %j, align 4, !tbaa !8
  %881 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %882 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom997 = sext i32 %882 to i64
  %arrayidx998 = getelementptr inbounds i32, ptr %881, i64 %idxprom997
  %883 = load i32, ptr %arrayidx998, align 4, !tbaa !8
  %884 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %add999 = add nsw i32 %883, %884
  %cmp1000 = icmp slt i32 %880, %add999
  br i1 %cmp1000, label %for.body1002, label %for.end1027

for.body1002:                                     ; preds = %for.cond996
  %885 = load ptr, ptr %is_q, align 8, !tbaa !4
  %886 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1003 = sext i32 %886 to i64
  %arrayidx1004 = getelementptr inbounds i32, ptr %885, i64 %idxprom1003
  %887 = load i32, ptr %arrayidx1004, align 4, !tbaa !8
  %tobool1005 = icmp ne i32 %887, 0
  br i1 %tobool1005, label %if.then1006, label %if.end1013

if.then1006:                                      ; preds = %for.body1002
  %888 = load ptr, ptr %is_q, align 8, !tbaa !4
  %889 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1007 = sext i32 %889 to i64
  %arrayidx1008 = getelementptr inbounds i32, ptr %888, i64 %idxprom1007
  %890 = load i32, ptr %arrayidx1008, align 4, !tbaa !8
  %sub1009 = sub nsw i32 %890, 1
  store i32 %sub1009, ptr %which_q, align 4, !tbaa !8
  %891 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %892 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1010 = sext i32 %892 to i64
  %arrayidx1011 = getelementptr inbounds i32, ptr %891, i64 %idxprom1010
  %893 = load i32, ptr %arrayidx1011, align 4, !tbaa !8
  %inc1012 = add nsw i32 %893, 1
  store i32 %inc1012, ptr %arrayidx1011, align 4, !tbaa !8
  br label %if.end1013

if.end1013:                                       ; preds = %if.then1006, %for.body1002
  %894 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %895 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1014 = sext i32 %895 to i64
  %arrayidx1015 = getelementptr inbounds i32, ptr %894, i64 %idxprom1014
  %896 = load i32, ptr %arrayidx1015, align 4, !tbaa !8
  %897 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %898 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1016 = sext i32 %898 to i64
  %arrayidx1017 = getelementptr inbounds i32, ptr %897, i64 %idxprom1016
  store i32 %896, ptr %arrayidx1017, align 4, !tbaa !8
  %899 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %900 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1018 = sext i32 %900 to i64
  %arrayidx1019 = getelementptr inbounds double, ptr %899, i64 %idxprom1018
  %901 = load double, ptr %arrayidx1019, align 8, !tbaa !23
  %902 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %903 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1020 = sext i32 %903 to i64
  %arrayidx1021 = getelementptr inbounds double, ptr %902, i64 %idxprom1020
  store double %901, ptr %arrayidx1021, align 8, !tbaa !23
  %904 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %905 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1022 = sext i32 %905 to i64
  %arrayidx1023 = getelementptr inbounds i32, ptr %904, i64 %idxprom1022
  store i32 1, ptr %arrayidx1023, align 4, !tbaa !8
  %906 = load i32, ptr %j_counter, align 4, !tbaa !8
  %inc1024 = add nsw i32 %906, 1
  store i32 %inc1024, ptr %j_counter, align 4, !tbaa !8
  br label %for.inc1025

for.inc1025:                                      ; preds = %if.end1013
  %907 = load i32, ptr %j, align 4, !tbaa !8
  %inc1026 = add nsw i32 %907, 1
  store i32 %inc1026, ptr %j, align 4, !tbaa !8
  br label %for.cond996, !llvm.loop !72

for.end1027:                                      ; preds = %for.cond996
  %908 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %909 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1028 = sext i32 %909 to i64
  %arrayidx1029 = getelementptr inbounds i32, ptr %908, i64 %idxprom1028
  %910 = load i32, ptr %arrayidx1029, align 4, !tbaa !8
  store i32 %910, ptr %j, align 4, !tbaa !8
  br label %for.cond1030

for.cond1030:                                     ; preds = %for.inc1059, %for.end1027
  %911 = load i32, ptr %j, align 4, !tbaa !8
  %912 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %913 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1031 = sext i32 %913 to i64
  %arrayidx1032 = getelementptr inbounds i32, ptr %912, i64 %idxprom1031
  %914 = load i32, ptr %arrayidx1032, align 4, !tbaa !8
  %915 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %add1033 = add nsw i32 %914, %915
  %cmp1034 = icmp slt i32 %911, %add1033
  br i1 %cmp1034, label %for.body1036, label %for.end1061

for.body1036:                                     ; preds = %for.cond1030
  %916 = load ptr, ptr %is_q, align 8, !tbaa !4
  %917 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1037 = sext i32 %917 to i64
  %arrayidx1038 = getelementptr inbounds i32, ptr %916, i64 %idxprom1037
  %918 = load i32, ptr %arrayidx1038, align 4, !tbaa !8
  %tobool1039 = icmp ne i32 %918, 0
  br i1 %tobool1039, label %if.then1040, label %if.end1047

if.then1040:                                      ; preds = %for.body1036
  %919 = load ptr, ptr %is_q, align 8, !tbaa !4
  %920 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1041 = sext i32 %920 to i64
  %arrayidx1042 = getelementptr inbounds i32, ptr %919, i64 %idxprom1041
  %921 = load i32, ptr %arrayidx1042, align 4, !tbaa !8
  %sub1043 = sub nsw i32 %921, 1
  store i32 %sub1043, ptr %which_q, align 4, !tbaa !8
  %922 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %923 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1044 = sext i32 %923 to i64
  %arrayidx1045 = getelementptr inbounds i32, ptr %922, i64 %idxprom1044
  %924 = load i32, ptr %arrayidx1045, align 4, !tbaa !8
  %inc1046 = add nsw i32 %924, 1
  store i32 %inc1046, ptr %arrayidx1045, align 4, !tbaa !8
  br label %if.end1047

if.end1047:                                       ; preds = %if.then1040, %for.body1036
  %925 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %926 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1048 = sext i32 %926 to i64
  %arrayidx1049 = getelementptr inbounds i32, ptr %925, i64 %idxprom1048
  %927 = load i32, ptr %arrayidx1049, align 4, !tbaa !8
  %928 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %929 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1050 = sext i32 %929 to i64
  %arrayidx1051 = getelementptr inbounds i32, ptr %928, i64 %idxprom1050
  store i32 %927, ptr %arrayidx1051, align 4, !tbaa !8
  %930 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %931 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1052 = sext i32 %931 to i64
  %arrayidx1053 = getelementptr inbounds double, ptr %930, i64 %idxprom1052
  %932 = load double, ptr %arrayidx1053, align 8, !tbaa !23
  %933 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %934 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1054 = sext i32 %934 to i64
  %arrayidx1055 = getelementptr inbounds double, ptr %933, i64 %idxprom1054
  store double %932, ptr %arrayidx1055, align 8, !tbaa !23
  %935 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %936 = load i32, ptr %j_counter, align 4, !tbaa !8
  %idxprom1056 = sext i32 %936 to i64
  %arrayidx1057 = getelementptr inbounds i32, ptr %935, i64 %idxprom1056
  store i32 0, ptr %arrayidx1057, align 4, !tbaa !8
  %937 = load i32, ptr %j_counter, align 4, !tbaa !8
  %inc1058 = add nsw i32 %937, 1
  store i32 %inc1058, ptr %j_counter, align 4, !tbaa !8
  br label %for.inc1059

for.inc1059:                                      ; preds = %if.end1047
  %938 = load i32, ptr %j, align 4, !tbaa !8
  %inc1060 = add nsw i32 %938, 1
  store i32 %inc1060, ptr %j, align 4, !tbaa !8
  br label %for.cond1030, !llvm.loop !73

for.end1061:                                      ; preds = %for.cond1030
  store i32 0, ptr %tot_num_lost, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond1062

for.cond1062:                                     ; preds = %for.inc1088, %for.end1061
  %939 = load i32, ptr %j, align 4, !tbaa !8
  %940 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %cmp1063 = icmp slt i32 %939, %940
  br i1 %cmp1063, label %for.body1065, label %for.end1090

for.body1065:                                     ; preds = %for.cond1062
  %941 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %942 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1066 = sext i32 %942 to i64
  %arrayidx1067 = getelementptr inbounds double, ptr %941, i64 %idxprom1066
  store double 0.000000e+00, ptr %arrayidx1067, align 8, !tbaa !23
  %943 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %944 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1068 = sext i32 %944 to i64
  %arrayidx1069 = getelementptr inbounds double, ptr %943, i64 %idxprom1068
  store double 0.000000e+00, ptr %arrayidx1069, align 8, !tbaa !23
  %945 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %946 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1070 = sext i32 %946 to i64
  %arrayidx1071 = getelementptr inbounds i32, ptr %945, i64 %idxprom1070
  store i32 0, ptr %arrayidx1071, align 4, !tbaa !8
  %947 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %948 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1072 = sext i32 %948 to i64
  %arrayidx1073 = getelementptr inbounds i32, ptr %947, i64 %idxprom1072
  %949 = load i32, ptr %arrayidx1073, align 4, !tbaa !8
  %950 = load i32, ptr %q_max.addr, align 4, !tbaa !8
  %sub1074 = sub nsw i32 %949, %950
  %951 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %952 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1075 = sext i32 %952 to i64
  %arrayidx1076 = getelementptr inbounds i32, ptr %951, i64 %idxprom1075
  store i32 %sub1074, ptr %arrayidx1076, align 4, !tbaa !8
  %953 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %954 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1077 = sext i32 %954 to i64
  %arrayidx1078 = getelementptr inbounds i32, ptr %953, i64 %idxprom1077
  %955 = load i32, ptr %arrayidx1078, align 4, !tbaa !8
  %cmp1079 = icmp slt i32 %955, 0
  br i1 %cmp1079, label %if.then1081, label %if.end1084

if.then1081:                                      ; preds = %for.body1065
  %956 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %957 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1082 = sext i32 %957 to i64
  %arrayidx1083 = getelementptr inbounds i32, ptr %956, i64 %idxprom1082
  store i32 0, ptr %arrayidx1083, align 4, !tbaa !8
  br label %if.end1084

if.end1084:                                       ; preds = %if.then1081, %for.body1065
  %958 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %959 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1085 = sext i32 %959 to i64
  %arrayidx1086 = getelementptr inbounds i32, ptr %958, i64 %idxprom1085
  %960 = load i32, ptr %arrayidx1086, align 4, !tbaa !8
  %961 = load i32, ptr %tot_num_lost, align 4, !tbaa !8
  %add1087 = add nsw i32 %961, %960
  store i32 %add1087, ptr %tot_num_lost, align 4, !tbaa !8
  br label %for.inc1088

for.inc1088:                                      ; preds = %if.end1084
  %962 = load i32, ptr %j, align 4, !tbaa !8
  %inc1089 = add nsw i32 %962, 1
  store i32 %inc1089, ptr %j, align 4, !tbaa !8
  br label %for.cond1062, !llvm.loop !74

for.end1090:                                      ; preds = %for.cond1062
  %963 = load i32, ptr %tot_num_lost, align 4, !tbaa !8
  %cmp1091 = icmp sgt i32 %963, 0
  br i1 %cmp1091, label %if.then1093, label %if.end1197

if.then1093:                                      ; preds = %for.end1090
  %964 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %965 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %add1094 = add nsw i32 %964, %965
  store i32 %add1094, ptr %p_count_tot, align 4, !tbaa !8
  %966 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %967 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %968 = load ptr, ptr %is_q, align 8, !tbaa !4
  %969 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %970 = load i32, ptr %p_count_tot, align 4, !tbaa !8
  %sub1095 = sub nsw i32 %970, 1
  call void @hypre_BigQsort4_abs(ptr noundef %966, ptr noundef %967, ptr noundef %968, ptr noundef %969, i32 noundef 0, i32 noundef %sub1095)
  store i32 0, ptr %lost_counter_diag, align 4, !tbaa !8
  store i32 0, ptr %lost_counter_offd, align 4, !tbaa !8
  %971 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %972 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1096 = sext i32 %972 to i64
  %arrayidx1097 = getelementptr inbounds i32, ptr %971, i64 %idxprom1096
  %973 = load i32, ptr %arrayidx1097, align 4, !tbaa !8
  store i32 %973, ptr %new_diag_pos, align 4, !tbaa !8
  %974 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %975 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1098 = sext i32 %975 to i64
  %arrayidx1099 = getelementptr inbounds i32, ptr %974, i64 %idxprom1098
  %976 = load i32, ptr %arrayidx1099, align 4, !tbaa !8
  store i32 %976, ptr %new_offd_pos, align 4, !tbaa !8
  store i32 0, ptr %new_j_counter, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond1100

for.cond1100:                                     ; preds = %for.inc1190, %if.then1093
  %977 = load i32, ptr %j, align 4, !tbaa !8
  %978 = load i32, ptr %p_count_tot, align 4, !tbaa !8
  %cmp1101 = icmp slt i32 %977, %978
  br i1 %cmp1101, label %for.body1103, label %for.end1192

for.body1103:                                     ; preds = %for.cond1100
  store i32 0, ptr %which_q, align 4, !tbaa !8
  %979 = load ptr, ptr %is_q, align 8, !tbaa !4
  %980 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1104 = sext i32 %980 to i64
  %arrayidx1105 = getelementptr inbounds i32, ptr %979, i64 %idxprom1104
  %981 = load i32, ptr %arrayidx1105, align 4, !tbaa !8
  %tobool1106 = icmp ne i32 %981, 0
  br i1 %tobool1106, label %if.then1107, label %if.end1111

if.then1107:                                      ; preds = %for.body1103
  %982 = load ptr, ptr %is_q, align 8, !tbaa !4
  %983 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1108 = sext i32 %983 to i64
  %arrayidx1109 = getelementptr inbounds i32, ptr %982, i64 %idxprom1108
  %984 = load i32, ptr %arrayidx1109, align 4, !tbaa !8
  %sub1110 = sub nsw i32 %984, 1
  store i32 %sub1110, ptr %which_q, align 4, !tbaa !8
  br label %if.end1111

if.end1111:                                       ; preds = %if.then1107, %for.body1103
  %985 = load ptr, ptr %is_q, align 8, !tbaa !4
  %986 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1112 = sext i32 %986 to i64
  %arrayidx1113 = getelementptr inbounds i32, ptr %985, i64 %idxprom1112
  %987 = load i32, ptr %arrayidx1113, align 4, !tbaa !8
  %tobool1114 = icmp ne i32 %987, 0
  br i1 %tobool1114, label %land.lhs.true1115, label %if.else1145

land.lhs.true1115:                                ; preds = %if.end1111
  %988 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %989 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1116 = sext i32 %989 to i64
  %arrayidx1117 = getelementptr inbounds i32, ptr %988, i64 %idxprom1116
  %990 = load i32, ptr %arrayidx1117, align 4, !tbaa !8
  %991 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %992 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1118 = sext i32 %992 to i64
  %arrayidx1119 = getelementptr inbounds i32, ptr %991, i64 %idxprom1118
  %993 = load i32, ptr %arrayidx1119, align 4, !tbaa !8
  %cmp1120 = icmp slt i32 %990, %993
  br i1 %cmp1120, label %if.then1122, label %if.else1145

if.then1122:                                      ; preds = %land.lhs.true1115
  %994 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %995 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1123 = sext i32 %995 to i64
  %arrayidx1124 = getelementptr inbounds double, ptr %994, i64 %idxprom1123
  %996 = load double, ptr %arrayidx1124, align 8, !tbaa !23
  %997 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %998 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1125 = sext i32 %998 to i64
  %arrayidx1126 = getelementptr inbounds double, ptr %997, i64 %idxprom1125
  %999 = load double, ptr %arrayidx1126, align 8, !tbaa !23
  %add1127 = fadd double %999, %996
  store double %add1127, ptr %arrayidx1126, align 8, !tbaa !23
  %1000 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %1001 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1128 = sext i32 %1001 to i64
  %arrayidx1129 = getelementptr inbounds i32, ptr %1000, i64 %idxprom1128
  %1002 = load i32, ptr %arrayidx1129, align 4, !tbaa !8
  %inc1130 = add nsw i32 %1002, 1
  store i32 %inc1130, ptr %arrayidx1129, align 4, !tbaa !8
  %1003 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %1004 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1131 = sext i32 %1004 to i64
  %arrayidx1132 = getelementptr inbounds i32, ptr %1003, i64 %idxprom1131
  %1005 = load i32, ptr %arrayidx1132, align 4, !tbaa !8
  %tobool1133 = icmp ne i32 %1005, 0
  br i1 %tobool1133, label %if.then1134, label %if.else1136

if.then1134:                                      ; preds = %if.then1122
  %1006 = load i32, ptr %lost_counter_diag, align 4, !tbaa !8
  %inc1135 = add nsw i32 %1006, 1
  store i32 %inc1135, ptr %lost_counter_diag, align 4, !tbaa !8
  br label %if.end1138

if.else1136:                                      ; preds = %if.then1122
  %1007 = load i32, ptr %lost_counter_offd, align 4, !tbaa !8
  %inc1137 = add nsw i32 %1007, 1
  store i32 %inc1137, ptr %lost_counter_offd, align 4, !tbaa !8
  br label %if.end1138

if.end1138:                                       ; preds = %if.else1136, %if.then1134
  %1008 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %1009 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1139 = sext i32 %1009 to i64
  %arrayidx1140 = getelementptr inbounds double, ptr %1008, i64 %idxprom1139
  %1010 = load double, ptr %arrayidx1140, align 8, !tbaa !23
  %1011 = load i32, ptr %q_max.addr, align 4, !tbaa !8
  %conv1141 = sitofp i32 %1011 to double
  %div1142 = fdiv double %1010, %conv1141
  %1012 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %1013 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1143 = sext i32 %1013 to i64
  %arrayidx1144 = getelementptr inbounds double, ptr %1012, i64 %idxprom1143
  store double %div1142, ptr %arrayidx1144, align 8, !tbaa !23
  br label %if.end1189

if.else1145:                                      ; preds = %land.lhs.true1115, %if.end1111
  %1014 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %1015 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1146 = sext i32 %1015 to i64
  %arrayidx1147 = getelementptr inbounds double, ptr %1014, i64 %idxprom1146
  %1016 = load double, ptr %arrayidx1147, align 8, !tbaa !23
  store double %1016, ptr %value, align 8, !tbaa !23
  %1017 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1018 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1148 = sext i32 %1018 to i64
  %arrayidx1149 = getelementptr inbounds i32, ptr %1017, i64 %idxprom1148
  %1019 = load i32, ptr %arrayidx1149, align 4, !tbaa !8
  %tobool1150 = icmp ne i32 %1019, 0
  br i1 %tobool1150, label %if.then1151, label %if.end1158

if.then1151:                                      ; preds = %if.else1145
  %1020 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1021 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1152 = sext i32 %1021 to i64
  %arrayidx1153 = getelementptr inbounds i32, ptr %1020, i64 %idxprom1152
  %1022 = load i32, ptr %arrayidx1153, align 4, !tbaa !8
  %sub1154 = sub nsw i32 %1022, 1
  store i32 %sub1154, ptr %which_q, align 4, !tbaa !8
  %1023 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %1024 = load i32, ptr %which_q, align 4, !tbaa !8
  %idxprom1155 = sext i32 %1024 to i64
  %arrayidx1156 = getelementptr inbounds double, ptr %1023, i64 %idxprom1155
  %1025 = load double, ptr %arrayidx1156, align 8, !tbaa !23
  %1026 = load double, ptr %value, align 8, !tbaa !23
  %add1157 = fadd double %1026, %1025
  store double %add1157, ptr %value, align 8, !tbaa !23
  br label %if.end1158

if.end1158:                                       ; preds = %if.then1151, %if.else1145
  %1027 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %1028 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1159 = sext i32 %1028 to i64
  %arrayidx1160 = getelementptr inbounds i32, ptr %1027, i64 %idxprom1159
  %1029 = load i32, ptr %arrayidx1160, align 4, !tbaa !8
  %tobool1161 = icmp ne i32 %1029, 0
  br i1 %tobool1161, label %if.then1162, label %if.else1175

if.then1162:                                      ; preds = %if.end1158
  %1030 = load double, ptr %value, align 8, !tbaa !23
  %1031 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %1032 = load i32, ptr %new_diag_pos, align 4, !tbaa !8
  %idxprom1163 = sext i32 %1032 to i64
  %arrayidx1164 = getelementptr inbounds double, ptr %1031, i64 %idxprom1163
  store double %1030, ptr %arrayidx1164, align 8, !tbaa !23
  %1033 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %1034 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1165 = sext i32 %1034 to i64
  %arrayidx1166 = getelementptr inbounds i32, ptr %1033, i64 %idxprom1165
  %1035 = load i32, ptr %arrayidx1166, align 4, !tbaa !8
  %1036 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %1037 = load i32, ptr %new_diag_pos, align 4, !tbaa !8
  %idxprom1167 = sext i32 %1037 to i64
  %arrayidx1168 = getelementptr inbounds i32, ptr %1036, i64 %idxprom1167
  store i32 %1035, ptr %arrayidx1168, align 4, !tbaa !8
  %1038 = load i32, ptr %new_diag_pos, align 4, !tbaa !8
  %inc1169 = add nsw i32 %1038, 1
  store i32 %inc1169, ptr %new_diag_pos, align 4, !tbaa !8
  %1039 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1040 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1170 = sext i32 %1040 to i64
  %arrayidx1171 = getelementptr inbounds i32, ptr %1039, i64 %idxprom1170
  %1041 = load i32, ptr %arrayidx1171, align 4, !tbaa !8
  %1042 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1043 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %idxprom1172 = sext i32 %1043 to i64
  %arrayidx1173 = getelementptr inbounds i32, ptr %1042, i64 %idxprom1172
  store i32 %1041, ptr %arrayidx1173, align 4, !tbaa !8
  %1044 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %inc1174 = add nsw i32 %1044, 1
  store i32 %inc1174, ptr %new_j_counter, align 4, !tbaa !8
  br label %if.end1188

if.else1175:                                      ; preds = %if.end1158
  %1045 = load double, ptr %value, align 8, !tbaa !23
  %1046 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %1047 = load i32, ptr %new_offd_pos, align 4, !tbaa !8
  %idxprom1176 = sext i32 %1047 to i64
  %arrayidx1177 = getelementptr inbounds double, ptr %1046, i64 %idxprom1176
  store double %1045, ptr %arrayidx1177, align 8, !tbaa !23
  %1048 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %1049 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1178 = sext i32 %1049 to i64
  %arrayidx1179 = getelementptr inbounds i32, ptr %1048, i64 %idxprom1178
  %1050 = load i32, ptr %arrayidx1179, align 4, !tbaa !8
  %1051 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %1052 = load i32, ptr %new_offd_pos, align 4, !tbaa !8
  %idxprom1180 = sext i32 %1052 to i64
  %arrayidx1181 = getelementptr inbounds i32, ptr %1051, i64 %idxprom1180
  store i32 %1050, ptr %arrayidx1181, align 4, !tbaa !8
  %1053 = load i32, ptr %new_offd_pos, align 4, !tbaa !8
  %inc1182 = add nsw i32 %1053, 1
  store i32 %inc1182, ptr %new_offd_pos, align 4, !tbaa !8
  %1054 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1055 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1183 = sext i32 %1055 to i64
  %arrayidx1184 = getelementptr inbounds i32, ptr %1054, i64 %idxprom1183
  %1056 = load i32, ptr %arrayidx1184, align 4, !tbaa !8
  %1057 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1058 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %idxprom1185 = sext i32 %1058 to i64
  %arrayidx1186 = getelementptr inbounds i32, ptr %1057, i64 %idxprom1185
  store i32 %1056, ptr %arrayidx1186, align 4, !tbaa !8
  %1059 = load i32, ptr %new_j_counter, align 4, !tbaa !8
  %inc1187 = add nsw i32 %1059, 1
  store i32 %inc1187, ptr %new_j_counter, align 4, !tbaa !8
  br label %if.end1188

if.end1188:                                       ; preds = %if.else1175, %if.then1162
  br label %if.end1189

if.end1189:                                       ; preds = %if.end1188, %if.end1138
  br label %for.inc1190

for.inc1190:                                      ; preds = %if.end1189
  %1060 = load i32, ptr %j, align 4, !tbaa !8
  %inc1191 = add nsw i32 %1060, 1
  store i32 %inc1191, ptr %j, align 4, !tbaa !8
  br label %for.cond1100, !llvm.loop !75

for.end1192:                                      ; preds = %for.cond1100
  %1061 = load i32, ptr %lost_counter_diag, align 4, !tbaa !8
  %1062 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %sub1193 = sub nsw i32 %1062, %1061
  store i32 %sub1193, ptr %p_count_diag, align 4, !tbaa !8
  %1063 = load i32, ptr %lost_counter_offd, align 4, !tbaa !8
  %1064 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %sub1194 = sub nsw i32 %1064, %1063
  store i32 %sub1194, ptr %p_count_offd, align 4, !tbaa !8
  %1065 = load i32, ptr %lost_counter_diag, align 4, !tbaa !8
  %1066 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %sub1195 = sub nsw i32 %1066, %1065
  store i32 %sub1195, ptr %j_diag_pos, align 4, !tbaa !8
  %1067 = load i32, ptr %lost_counter_offd, align 4, !tbaa !8
  %1068 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %sub1196 = sub nsw i32 %1068, %1067
  store i32 %sub1196, ptr %j_offd_pos, align 4, !tbaa !8
  br label %if.end1197

if.end1197:                                       ; preds = %for.end1192, %for.end1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %p_count_tot) #7
  br label %if.end1198

if.end1198:                                       ; preds = %if.end1197, %if.end977
  call void @llvm.lifetime.end.p0(i64 4, ptr %which_q) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lost_counter_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lost_counter_diag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt_new_q_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_j_counter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_counter) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_offd_pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_diag_pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tot_num_lost) #7
  br label %if.end1199

if.end1199:                                       ; preds = %if.end1198, %lor.lhs.false686, %land.lhs.true680, %if.end677
  %1069 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %1070 = load i32, ptr %i, align 4, !tbaa !8
  %add1200 = add nsw i32 %1070, 1
  %idxprom1201 = sext i32 %add1200 to i64
  %arrayidx1202 = getelementptr inbounds i32, ptr %1069, i64 %idxprom1201
  %1071 = load i32, ptr %arrayidx1202, align 4, !tbaa !8
  store i32 %1071, ptr %orig_diag_start, align 4, !tbaa !8
  %1072 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %1073 = load i32, ptr %i, align 4, !tbaa !8
  %add1203 = add nsw i32 %1073, 1
  %idxprom1204 = sext i32 %add1203 to i64
  %arrayidx1205 = getelementptr inbounds i32, ptr %1072, i64 %idxprom1204
  %1074 = load i32, ptr %arrayidx1205, align 4, !tbaa !8
  store i32 %1074, ptr %orig_offd_start, align 4, !tbaa !8
  %1075 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1076 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1206 = sext i32 %1076 to i64
  %arrayidx1207 = getelementptr inbounds i32, ptr %1075, i64 %idxprom1206
  %1077 = load i32, ptr %arrayidx1207, align 4, !tbaa !8
  %1078 = load i32, ptr %p_count_diag, align 4, !tbaa !8
  %add1208 = add nsw i32 %1077, %1078
  %1079 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1080 = load i32, ptr %i, align 4, !tbaa !8
  %add1209 = add nsw i32 %1080, 1
  %idxprom1210 = sext i32 %add1209 to i64
  %arrayidx1211 = getelementptr inbounds i32, ptr %1079, i64 %idxprom1210
  store i32 %add1208, ptr %arrayidx1211, align 4, !tbaa !8
  %1081 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1082 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1212 = sext i32 %1082 to i64
  %arrayidx1213 = getelementptr inbounds i32, ptr %1081, i64 %idxprom1212
  %1083 = load i32, ptr %arrayidx1213, align 4, !tbaa !8
  %1084 = load i32, ptr %p_count_offd, align 4, !tbaa !8
  %add1214 = add nsw i32 %1083, %1084
  %1085 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1086 = load i32, ptr %i, align 4, !tbaa !8
  %add1215 = add nsw i32 %1086, 1
  %idxprom1216 = sext i32 %add1215 to i64
  %arrayidx1217 = getelementptr inbounds i32, ptr %1085, i64 %idxprom1216
  store i32 %add1214, ptr %arrayidx1217, align 4, !tbaa !8
  %1087 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %1088 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1089 = load i32, ptr %i, align 4, !tbaa !8
  %add1218 = add nsw i32 %1089, 1
  %idxprom1219 = sext i32 %add1218 to i64
  %arrayidx1220 = getelementptr inbounds i32, ptr %1088, i64 %idxprom1219
  %1090 = load i32, ptr %arrayidx1220, align 4, !tbaa !8
  %cmp1221 = icmp ne i32 %1087, %1090
  br i1 %cmp1221, label %if.then1223, label %if.end1224

if.then1223:                                      ; preds = %if.end1199
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1292, i32 noundef 1, ptr noundef @.str.3)
  br label %if.end1224

if.end1224:                                       ; preds = %if.then1223, %if.end1199
  %1091 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %1092 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1093 = load i32, ptr %i, align 4, !tbaa !8
  %add1225 = add nsw i32 %1093, 1
  %idxprom1226 = sext i32 %add1225 to i64
  %arrayidx1227 = getelementptr inbounds i32, ptr %1092, i64 %idxprom1226
  %1094 = load i32, ptr %arrayidx1227, align 4, !tbaa !8
  %cmp1228 = icmp ne i32 %1091, %1094
  br i1 %cmp1228, label %if.then1230, label %if.end1231

if.then1230:                                      ; preds = %if.end1224
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1296, i32 noundef 1, ptr noundef @.str.4)
  br label %if.end1231

if.end1231:                                       ; preds = %if.then1230, %if.end1224
  br label %for.inc1232

for.inc1232:                                      ; preds = %if.end1231
  %1095 = load i32, ptr %i, align 4, !tbaa !8
  %inc1233 = add nsw i32 %1095, 1
  store i32 %inc1233, ptr %i, align 4, !tbaa !8
  br label %for.cond227, !llvm.loop !76

for.end1234:                                      ; preds = %for.cond227
  %1096 = load i32, ptr %level.addr, align 4, !tbaa !8
  %1097 = load i32, ptr %interp_vec_first_level.addr, align 4, !tbaa !8
  %cmp1235 = icmp eq i32 %1096, %1097
  br i1 %cmp1235, label %if.then1237, label %if.else1277

if.then1237:                                      ; preds = %for.end1234
  call void @llvm.lifetime.start.p0(i64 4, ptr %spot) #7
  %1098 = load ptr, ptr %c_dof_func, align 8, !tbaa !4
  %1099 = load i32, ptr %new_ncv, align 4, !tbaa !8
  %conv1238 = sext i32 %1099 to i64
  %mul1239 = mul i64 4, %conv1238
  %call1240 = call ptr @hypre_ReAlloc(ptr noundef %1098, i64 noundef %mul1239, i32 noundef 0)
  store ptr %call1240, ptr %c_dof_func, align 8, !tbaa !4
  store i32 0, ptr %spot, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond1241

for.cond1241:                                     ; preds = %for.inc1256, %if.then1237
  %1100 = load i32, ptr %i, align 4, !tbaa !8
  %1101 = load i32, ptr %ncv_peru, align 4, !tbaa !8
  %cmp1242 = icmp slt i32 %1100, %1101
  br i1 %cmp1242, label %for.body1244, label %for.end1258

for.body1244:                                     ; preds = %for.cond1241
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond1245

for.cond1245:                                     ; preds = %for.inc1253, %for.body1244
  %1102 = load i32, ptr %k, align 4, !tbaa !8
  %1103 = load i32, ptr %num_functions, align 4, !tbaa !8
  %1104 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %add1246 = add nsw i32 %1103, %1104
  %cmp1247 = icmp slt i32 %1102, %add1246
  br i1 %cmp1247, label %for.body1249, label %for.end1255

for.body1249:                                     ; preds = %for.cond1245
  %1105 = load i32, ptr %k, align 4, !tbaa !8
  %1106 = load ptr, ptr %c_dof_func, align 8, !tbaa !4
  %1107 = load i32, ptr %spot, align 4, !tbaa !8
  %inc1250 = add nsw i32 %1107, 1
  store i32 %inc1250, ptr %spot, align 4, !tbaa !8
  %idxprom1251 = sext i32 %1107 to i64
  %arrayidx1252 = getelementptr inbounds i32, ptr %1106, i64 %idxprom1251
  store i32 %1105, ptr %arrayidx1252, align 4, !tbaa !8
  br label %for.inc1253

for.inc1253:                                      ; preds = %for.body1249
  %1108 = load i32, ptr %k, align 4, !tbaa !8
  %inc1254 = add nsw i32 %1108, 1
  store i32 %inc1254, ptr %k, align 4, !tbaa !8
  br label %for.cond1245, !llvm.loop !77

for.end1255:                                      ; preds = %for.cond1245
  br label %for.inc1256

for.inc1256:                                      ; preds = %for.end1255
  %1109 = load i32, ptr %i, align 4, !tbaa !8
  %inc1257 = add nsw i32 %1109, 1
  store i32 %inc1257, ptr %i, align 4, !tbaa !8
  br label %for.cond1241, !llvm.loop !78

for.end1258:                                      ; preds = %for.cond1241
  %1110 = load i32, ptr %num_functions, align 4, !tbaa !8
  %1111 = load i32, ptr %num_smooth_vecs.addr, align 4, !tbaa !8
  %add1259 = add nsw i32 %1110, %1111
  store i32 %add1259, ptr %new_nf, align 4, !tbaa !8
  %1112 = load i32, ptr %new_nf, align 4, !tbaa !8
  %1113 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  store i32 %1112, ptr %1113, align 4, !tbaa !8
  %1114 = load ptr, ptr %c_dof_func, align 8, !tbaa !4
  %1115 = load ptr, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  store ptr %1114, ptr %1115, align 8, !tbaa !4
  %call1260 = call ptr @hypre_CAlloc(i64 noundef 2, i64 noundef 4, i32 noundef 0)
  store ptr %call1260, ptr %new_col_starts, align 8, !tbaa !4
  %1116 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1261 = getelementptr inbounds i32, ptr %1116, i64 0
  %1117 = load i32, ptr %arrayidx1261, align 4, !tbaa !8
  %1118 = load i32, ptr %num_functions, align 4, !tbaa !8
  %div1262 = sdiv i32 %1117, %1118
  %1119 = load i32, ptr %new_nf, align 4, !tbaa !8
  %mul1263 = mul nsw i32 %div1262, %1119
  %1120 = load ptr, ptr %new_col_starts, align 8, !tbaa !4
  %arrayidx1264 = getelementptr inbounds i32, ptr %1120, i64 0
  store i32 %mul1263, ptr %arrayidx1264, align 4, !tbaa !8
  %1121 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1265 = getelementptr inbounds i32, ptr %1121, i64 1
  %1122 = load i32, ptr %arrayidx1265, align 4, !tbaa !8
  %1123 = load i32, ptr %num_functions, align 4, !tbaa !8
  %div1266 = sdiv i32 %1122, %1123
  %1124 = load i32, ptr %new_nf, align 4, !tbaa !8
  %mul1267 = mul nsw i32 %div1266, %1124
  %1125 = load ptr, ptr %new_col_starts, align 8, !tbaa !4
  %arrayidx1268 = getelementptr inbounds i32, ptr %1125, i64 1
  store i32 %mul1267, ptr %arrayidx1268, align 4, !tbaa !8
  %1126 = load i32, ptr %myid, align 4, !tbaa !8
  %1127 = load i32, ptr %num_procs, align 4, !tbaa !8
  %sub1269 = sub nsw i32 %1127, 1
  %cmp1270 = icmp eq i32 %1126, %sub1269
  br i1 %cmp1270, label %if.then1272, label %if.end1274

if.then1272:                                      ; preds = %for.end1258
  %1128 = load ptr, ptr %new_col_starts, align 8, !tbaa !4
  %arrayidx1273 = getelementptr inbounds i32, ptr %1128, i64 1
  %1129 = load i32, ptr %arrayidx1273, align 4, !tbaa !8
  store i32 %1129, ptr %g_nc, align 4, !tbaa !8
  br label %if.end1274

if.end1274:                                       ; preds = %if.then1272, %for.end1258
  %1130 = load i32, ptr %num_procs, align 4, !tbaa !8
  %sub1275 = sub nsw i32 %1130, 1
  %1131 = load ptr, ptr %comm, align 8, !tbaa !4
  %call1276 = call i32 @hypre_MPI_Bcast(ptr noundef %g_nc, i32 noundef 1, ptr noundef @ompi_mpi_int, i32 noundef %sub1275, ptr noundef %1131)
  call void @llvm.lifetime.end.p0(i64 4, ptr %spot) #7
  br label %if.end1283

if.else1277:                                      ; preds = %for.end1234
  %1132 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %1133 = load ptr, ptr %1132, align 8, !tbaa !4
  %global_num_cols = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1133, i32 0, i32 2
  %1134 = load i32, ptr %global_num_cols, align 4, !tbaa !13
  store i32 %1134, ptr %g_nc, align 4, !tbaa !8
  %call1278 = call ptr @hypre_CAlloc(i64 noundef 2, i64 noundef 4, i32 noundef 0)
  store ptr %call1278, ptr %new_col_starts, align 8, !tbaa !4
  %1135 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1279 = getelementptr inbounds i32, ptr %1135, i64 0
  %1136 = load i32, ptr %arrayidx1279, align 4, !tbaa !8
  %1137 = load ptr, ptr %new_col_starts, align 8, !tbaa !4
  %arrayidx1280 = getelementptr inbounds i32, ptr %1137, i64 0
  store i32 %1136, ptr %arrayidx1280, align 4, !tbaa !8
  %1138 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1281 = getelementptr inbounds i32, ptr %1138, i64 1
  %1139 = load i32, ptr %arrayidx1281, align 4, !tbaa !8
  %1140 = load ptr, ptr %new_col_starts, align 8, !tbaa !4
  %arrayidx1282 = getelementptr inbounds i32, ptr %1140, i64 1
  store i32 %1139, ptr %arrayidx1282, align 4, !tbaa !8
  br label %if.end1283

if.end1283:                                       ; preds = %if.else1277, %if.end1274
  %1141 = load ptr, ptr %comm, align 8, !tbaa !4
  %1142 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1142, i32 0, i32 1
  %1143 = load i32, ptr %global_num_rows, align 8, !tbaa !79
  %1144 = load i32, ptr %g_nc, align 4, !tbaa !8
  %1145 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %col_starts1284 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1145, i32 0, i32 14
  %1146 = load ptr, ptr %col_starts1284, align 8, !tbaa !16
  %1147 = load ptr, ptr %new_col_starts, align 8, !tbaa !4
  %1148 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1149 = load i32, ptr %nv, align 4, !tbaa !8
  %idxprom1285 = sext i32 %1149 to i64
  %arrayidx1286 = getelementptr inbounds i32, ptr %1148, i64 %idxprom1285
  %1150 = load i32, ptr %arrayidx1286, align 4, !tbaa !8
  %1151 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1152 = load i32, ptr %nv, align 4, !tbaa !8
  %idxprom1287 = sext i32 %1152 to i64
  %arrayidx1288 = getelementptr inbounds i32, ptr %1151, i64 %idxprom1287
  %1153 = load i32, ptr %arrayidx1288, align 4, !tbaa !8
  %call1289 = call ptr @hypre_ParCSRMatrixCreate(ptr noundef %1141, i32 noundef %1143, i32 noundef %1144, ptr noundef %1146, ptr noundef %1147, i32 noundef 0, i32 noundef %1150, i32 noundef %1153)
  store ptr %call1289, ptr %new_P, align 8, !tbaa !4
  %1154 = load ptr, ptr %new_P, align 8, !tbaa !4
  %diag1290 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1154, i32 0, i32 7
  %1155 = load ptr, ptr %diag1290, align 8, !tbaa !29
  store ptr %1155, ptr %P_diag, align 8, !tbaa !4
  %1156 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1157 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %i1291 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1157, i32 0, i32 0
  store ptr %1156, ptr %i1291, align 8, !tbaa !32
  %1158 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %1159 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %j1292 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1159, i32 0, i32 1
  store ptr %1158, ptr %j1292, align 8, !tbaa !33
  %1160 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %1161 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data1293 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1161, i32 0, i32 9
  store ptr %1160, ptr %data1293, align 8, !tbaa !30
  %1162 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1163 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %idxprom1294 = sext i32 %1163 to i64
  %arrayidx1295 = getelementptr inbounds i32, ptr %1162, i64 %idxprom1294
  %1164 = load i32, ptr %arrayidx1295, align 4, !tbaa !8
  %1165 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_nonzeros = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1165, i32 0, i32 5
  store i32 %1164, ptr %num_nonzeros, align 8, !tbaa !80
  %1166 = load ptr, ptr %new_P, align 8, !tbaa !4
  %offd1296 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1166, i32 0, i32 8
  %1167 = load ptr, ptr %offd1296, align 8, !tbaa !36
  store ptr %1167, ptr %P_offd, align 8, !tbaa !4
  %1168 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %1169 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data1297 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1169, i32 0, i32 9
  store ptr %1168, ptr %data1297, align 8, !tbaa !30
  %1170 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1171 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %i1298 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1171, i32 0, i32 0
  store ptr %1170, ptr %i1298, align 8, !tbaa !32
  %1172 = load ptr, ptr %new_P, align 8, !tbaa !4
  %owns_row_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1172, i32 0, i32 18
  store i32 0, ptr %owns_row_starts, align 4, !tbaa !81
  %1173 = load ptr, ptr %new_P, align 8, !tbaa !4
  %owns_col_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1173, i32 0, i32 19
  store i32 1, ptr %owns_col_starts, align 8, !tbaa !82
  %1174 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp1299 = icmp sgt i32 %1174, 1
  br i1 %cmp1299, label %if.then1301, label %if.end1361

if.then1301:                                      ; preds = %if.end1283
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_P_offd1302) #7
  store i32 0, ptr %num_cols_P_offd1302, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %P_offd_new_size) #7
  %1175 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1176 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %idxprom1303 = sext i32 %1176 to i64
  %arrayidx1304 = getelementptr inbounds i32, ptr %1175, i64 %idxprom1303
  %1177 = load i32, ptr %arrayidx1304, align 4, !tbaa !8
  store i32 %1177, ptr %P_offd_new_size, align 4, !tbaa !8
  %1178 = load i32, ptr %P_offd_new_size, align 4, !tbaa !8
  %tobool1305 = icmp ne i32 %1178, 0
  br i1 %tobool1305, label %if.then1306, label %if.end1358

if.then1306:                                      ; preds = %if.then1301
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_copy) #7
  %1179 = load i32, ptr %P_offd_new_size, align 4, !tbaa !8
  %conv1307 = sext i32 %1179 to i64
  %call1308 = call ptr @hypre_CAlloc(i64 noundef %conv1307, i64 noundef 4, i32 noundef 0)
  store ptr %call1308, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1180 = load i32, ptr %P_offd_new_size, align 4, !tbaa !8
  %conv1309 = sext i32 %1180 to i64
  %call1310 = call ptr @hypre_CAlloc(i64 noundef %conv1309, i64 noundef 4, i32 noundef 0)
  store ptr %call1310, ptr %j_copy, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond1311

for.cond1311:                                     ; preds = %for.inc1319, %if.then1306
  %1181 = load i32, ptr %i, align 4, !tbaa !8
  %1182 = load i32, ptr %P_offd_new_size, align 4, !tbaa !8
  %cmp1312 = icmp slt i32 %1181, %1182
  br i1 %cmp1312, label %for.body1314, label %for.end1321

for.body1314:                                     ; preds = %for.cond1311
  %1183 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %1184 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1315 = sext i32 %1184 to i64
  %arrayidx1316 = getelementptr inbounds i32, ptr %1183, i64 %idxprom1315
  %1185 = load i32, ptr %arrayidx1316, align 4, !tbaa !8
  %1186 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1187 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1317 = sext i32 %1187 to i64
  %arrayidx1318 = getelementptr inbounds i32, ptr %1186, i64 %idxprom1317
  store i32 %1185, ptr %arrayidx1318, align 4, !tbaa !8
  br label %for.inc1319

for.inc1319:                                      ; preds = %for.body1314
  %1188 = load i32, ptr %i, align 4, !tbaa !8
  %inc1320 = add nsw i32 %1188, 1
  store i32 %inc1320, ptr %i, align 4, !tbaa !8
  br label %for.cond1311, !llvm.loop !83

for.end1321:                                      ; preds = %for.cond1311
  %1189 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1190 = load i32, ptr %P_offd_new_size, align 4, !tbaa !8
  %sub1322 = sub nsw i32 %1190, 1
  call void @hypre_BigQsort0(ptr noundef %1189, i32 noundef 0, i32 noundef %sub1322)
  %1191 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %arrayidx1323 = getelementptr inbounds i32, ptr %1191, i64 0
  %1192 = load i32, ptr %arrayidx1323, align 4, !tbaa !8
  %1193 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %arrayidx1324 = getelementptr inbounds i32, ptr %1193, i64 0
  store i32 %1192, ptr %arrayidx1324, align 4, !tbaa !8
  store i32 0, ptr %count, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond1325

for.cond1325:                                     ; preds = %for.inc1342, %for.end1321
  %1194 = load i32, ptr %i, align 4, !tbaa !8
  %1195 = load i32, ptr %P_offd_new_size, align 4, !tbaa !8
  %cmp1326 = icmp slt i32 %1194, %1195
  br i1 %cmp1326, label %for.body1328, label %for.end1344

for.body1328:                                     ; preds = %for.cond1325
  %1196 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1197 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1329 = sext i32 %1197 to i64
  %arrayidx1330 = getelementptr inbounds i32, ptr %1196, i64 %idxprom1329
  %1198 = load i32, ptr %arrayidx1330, align 4, !tbaa !8
  %1199 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1200 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom1331 = sext i32 %1200 to i64
  %arrayidx1332 = getelementptr inbounds i32, ptr %1199, i64 %idxprom1331
  %1201 = load i32, ptr %arrayidx1332, align 4, !tbaa !8
  %cmp1333 = icmp sgt i32 %1198, %1201
  br i1 %cmp1333, label %if.then1335, label %if.end1341

if.then1335:                                      ; preds = %for.body1328
  %1202 = load i32, ptr %count, align 4, !tbaa !8
  %inc1336 = add nsw i32 %1202, 1
  store i32 %inc1336, ptr %count, align 4, !tbaa !8
  %1203 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1204 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1337 = sext i32 %1204 to i64
  %arrayidx1338 = getelementptr inbounds i32, ptr %1203, i64 %idxprom1337
  %1205 = load i32, ptr %arrayidx1338, align 4, !tbaa !8
  %1206 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1207 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom1339 = sext i32 %1207 to i64
  %arrayidx1340 = getelementptr inbounds i32, ptr %1206, i64 %idxprom1339
  store i32 %1205, ptr %arrayidx1340, align 4, !tbaa !8
  br label %if.end1341

if.end1341:                                       ; preds = %if.then1335, %for.body1328
  br label %for.inc1342

for.inc1342:                                      ; preds = %if.end1341
  %1208 = load i32, ptr %i, align 4, !tbaa !8
  %inc1343 = add nsw i32 %1208, 1
  store i32 %inc1343, ptr %i, align 4, !tbaa !8
  br label %for.cond1325, !llvm.loop !84

for.end1344:                                      ; preds = %for.cond1325
  %1209 = load i32, ptr %count, align 4, !tbaa !8
  %add1345 = add nsw i32 %1209, 1
  store i32 %add1345, ptr %num_cols_P_offd1302, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond1346

for.cond1346:                                     ; preds = %for.inc1355, %for.end1344
  %1210 = load i32, ptr %i, align 4, !tbaa !8
  %1211 = load i32, ptr %P_offd_new_size, align 4, !tbaa !8
  %cmp1347 = icmp slt i32 %1210, %1211
  br i1 %cmp1347, label %for.body1349, label %for.end1357

for.body1349:                                     ; preds = %for.cond1346
  %1212 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1213 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %1214 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1350 = sext i32 %1214 to i64
  %arrayidx1351 = getelementptr inbounds i32, ptr %1213, i64 %idxprom1350
  %1215 = load i32, ptr %arrayidx1351, align 4, !tbaa !8
  %1216 = load i32, ptr %num_cols_P_offd1302, align 4, !tbaa !8
  %call1352 = call i32 @hypre_BigBinarySearch(ptr noundef %1212, i32 noundef %1215, i32 noundef %1216)
  %1217 = load ptr, ptr %P_offd_j_new, align 8, !tbaa !4
  %1218 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1353 = sext i32 %1218 to i64
  %arrayidx1354 = getelementptr inbounds i32, ptr %1217, i64 %idxprom1353
  store i32 %call1352, ptr %arrayidx1354, align 4, !tbaa !8
  br label %for.inc1355

for.inc1355:                                      ; preds = %for.body1349
  %1219 = load i32, ptr %i, align 4, !tbaa !8
  %inc1356 = add nsw i32 %1219, 1
  store i32 %inc1356, ptr %i, align 4, !tbaa !8
  br label %for.cond1346, !llvm.loop !85

for.end1357:                                      ; preds = %for.cond1346
  %1220 = load ptr, ptr %j_copy, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1220, i32 noundef 0)
  store ptr null, ptr %j_copy, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_copy) #7
  br label %if.end1358

if.end1358:                                       ; preds = %for.end1357, %if.then1301
  %1221 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1222 = load ptr, ptr %new_P, align 8, !tbaa !4
  %col_map_offd1359 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1222, i32 0, i32 11
  store ptr %1221, ptr %col_map_offd1359, align 8, !tbaa !37
  %1223 = load i32, ptr %num_cols_P_offd1302, align 4, !tbaa !8
  %1224 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %num_cols1360 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1224, i32 0, i32 4
  store i32 %1223, ptr %num_cols1360, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr %P_offd_new_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_P_offd1302) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7
  br label %if.end1361

if.end1361:                                       ; preds = %if.end1358, %if.end1283
  %1225 = load ptr, ptr %P_offd_j_new, align 8, !tbaa !4
  %1226 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %j1362 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1226, i32 0, i32 1
  store ptr %1225, ptr %j1362, align 8, !tbaa !33
  %1227 = load ptr, ptr %new_P, align 8, !tbaa !4
  %call1363 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %1227)
  %1228 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %1229 = load ptr, ptr %1228, align 8, !tbaa !4
  %call1364 = call i32 @hypre_ParCSRMatrixDestroy(ptr noundef %1229)
  %1230 = load ptr, ptr %new_P, align 8, !tbaa !4
  %1231 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %1230, ptr %1231, align 8, !tbaa !4
  %1232 = load ptr, ptr %is_q, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1232, i32 noundef 0)
  store ptr null, ptr %is_q, align 8, !tbaa !4
  %1233 = load ptr, ptr %q_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1233, i32 noundef 0)
  store ptr null, ptr %q_data, align 8, !tbaa !4
  %1234 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1234, i32 noundef 0)
  store ptr null, ptr %q_trunc_data, align 8, !tbaa !4
  %1235 = load ptr, ptr %aux_j, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1235, i32 noundef 0)
  store ptr null, ptr %aux_j, align 8, !tbaa !4
  %1236 = load ptr, ptr %aux_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1236, i32 noundef 0)
  store ptr null, ptr %aux_data, align 8, !tbaa !4
  %1237 = load ptr, ptr %is_diag, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1237, i32 noundef 0)
  store ptr null, ptr %is_diag, align 8, !tbaa !4
  %1238 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1238, i32 noundef 0)
  store ptr null, ptr %P_offd_j_big, align 8, !tbaa !4
  %1239 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1239, i32 noundef 0)
  store ptr null, ptr %q_count_sv, align 8, !tbaa !4
  %1240 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1240, i32 noundef 0)
  store ptr null, ptr %num_lost_sv, align 8, !tbaa !4
  %1241 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1241, i32 noundef 0)
  store ptr null, ptr %lost_value_sv, align 8, !tbaa !4
  %1242 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1242, i32 noundef 0)
  store ptr null, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %1243 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1243, i32 noundef 0)
  store ptr null, ptr %q_dist_value_sv, align 8, !tbaa !4
  %1244 = load ptr, ptr %col_map, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1244, i32 noundef 0)
  store ptr null, ptr %col_map, align 8, !tbaa !4
  %1245 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1245, i32 noundef 0)
  store ptr null, ptr %coarse_to_fine, align 8, !tbaa !4
  %1246 = load ptr, ptr %smooth_vec_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1246, i32 noundef 0)
  store ptr null, ptr %smooth_vec_offd, align 8, !tbaa !4
  %1247 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_dist_value_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lost_value_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lost_counter_q_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_count_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_lost_sv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_col) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %g_nc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_col) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %big_new_col) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %big_index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %fine_index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %coarse_counter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %coarse_to_fine) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %aux_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %aux_j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_alloc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_q) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_trunc_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %use_trunc_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_count) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %theta) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %theta_3D) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %theta_2D) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %trunc_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %add_q) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %modify) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_dof_func) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_functions) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_col_starts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_nf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %offd_vec_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %smooth_vec_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbl_buf_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_sum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %p_count_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %p_count_diag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %myid) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_nf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_ncv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncv_peru) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j_big) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_i_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_i_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_j_new) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_offd_elements) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_diag_elements) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_elements) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %fcn_num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nnz_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nnz_diag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_offd_pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_diag_pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_offd_start) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_diag_start) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_nnz_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_nnz_diag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_col_map_offd_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_starts) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd_P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_P_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %P_offd_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %P_diag_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_rows_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret i32 %1247
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @hypre_MatvecCommPkgCreate(ptr noundef) #2

declare i32 @hypre_MPI_Comm_size(ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare ptr @hypre_ParCSRCommHandleCreate(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParCSRCommHandleDestroy(ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare double @fmod(double noundef, double noundef) #4

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @hypre_BigQsort4_abs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @hypre_ReAlloc(ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @hypre_MPI_Bcast(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @hypre_ParCSRMatrixCreate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @hypre_BigQsort0(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @hypre_BigBinarySearch(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @hypre_ParCSRMatrixDestroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGRefineInterp(ptr noundef %A, ptr noundef %P, ptr noundef %num_cpts_global, ptr noundef %nf, ptr noundef %dof_func, ptr noundef %CF_marker, i32 noundef %level) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %num_cpts_global.addr = alloca ptr, align 8
  %nf.addr = alloca ptr, align 8
  %dof_func.addr = alloca ptr, align 8
  %CF_marker.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pp = alloca i32, align 4
  %A_diag = alloca ptr, align 8
  %A_diag_data = alloca ptr, align 8
  %A_diag_i = alloca ptr, align 8
  %A_diag_j = alloca ptr, align 8
  %A_offd = alloca ptr, align 8
  %A_offd_data = alloca ptr, align 8
  %A_offd_i = alloca ptr, align 8
  %A_offd_j = alloca ptr, align 8
  %num_cols_A_offd = alloca i32, align 4
  %P_diag = alloca ptr, align 8
  %P_diag_data = alloca ptr, align 8
  %P_diag_i = alloca ptr, align 8
  %P_diag_j = alloca ptr, align 8
  %num_rows_P = alloca i32, align 4
  %P_diag_size = alloca i32, align 4
  %P_offd = alloca ptr, align 8
  %P_offd_i = alloca ptr, align 8
  %P_offd_size = alloca i32, align 4
  %P_offd_data = alloca ptr, align 8
  %P_offd_j = alloca ptr, align 8
  %num_cols_P_offd = alloca i32, align 4
  %col_map_offd_P = alloca ptr, align 8
  %memory_location = alloca i32, align 4
  %orig_diag_start = alloca i32, align 4
  %orig_offd_start = alloca i32, align 4
  %j_diag_pos = alloca i32, align 4
  %j_offd_pos = alloca i32, align 4
  %fcn_num = alloca i32, align 4
  %p_num_diag_elements = alloca i32, align 4
  %p_num_offd_elements = alloca i32, align 4
  %P_diag_data_new = alloca ptr, align 8
  %P_offd_data_new = alloca ptr, align 8
  %CF_marker_offd = alloca ptr, align 8
  %dof_func_offd = alloca ptr, align 8
  %fine_to_coarse_offd = alloca ptr, align 8
  %found = alloca i32, align 4
  %num_functions = alloca i32, align 4
  %comm_pkg_P = alloca ptr, align 8
  %comm_pkg_A = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %coarse_counter = alloca i32, align 4
  %j_ext_index = alloca i32, align 4
  %fine_to_coarse = alloca ptr, align 8
  %k_point = alloca i32, align 4
  %j_point = alloca i32, align 4
  %j_point_c = alloca i32, align 4
  %p_point = alloca i32, align 4
  %big_k = alloca i32, align 4
  %big_index = alloca i32, align 4
  %big_j_point_c = alloca i32, align 4
  %diagonal = alloca double, align 8
  %aw = alloca double, align 8
  %a_ij = alloca double, align 8
  %scale_row = alloca i32, align 4
  %sum = alloca double, align 8
  %new_row_sum = alloca double, align 8
  %orig_row_sum = alloca double, align 8
  %use_alt_w = alloca i32, align 4
  %kk = alloca i32, align 4
  %kk_count = alloca i32, align 4
  %cur_spot = alloca i32, align 4
  %dist_coarse = alloca i32, align 4
  %P_ext = alloca ptr, align 8
  %P_ext_data = alloca ptr, align 8
  %P_ext_i = alloca ptr, align 8
  %P_ext_j = alloca ptr, align 8
  %num_sends_A = alloca i32, align 4
  %index = alloca i32, align 4
  %start = alloca i32, align 4
  %myid = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %comm_handle = alloca ptr, align 8
  %int_buf_data = alloca ptr, align 8
  %big_buf_data = alloca ptr, align 8
  %my_first_cpt = alloca i32, align 4
  %tmp_i = alloca i32, align 4
  %kc = alloca i32, align 4
  %col_1 = alloca i32, align 4
  %col_n = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %num_cpts_global, ptr %num_cpts_global.addr, align 8, !tbaa !4
  store ptr %nf, ptr %nf.addr, align 8, !tbaa !4
  store ptr %dof_func, ptr %dof_func.addr, align 8, !tbaa !4
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %pp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag) #7
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %diag, align 8, !tbaa !29
  store ptr %1, ptr %A_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_data) #7
  %2 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %data, align 8, !tbaa !30
  store ptr %3, ptr %A_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_i) #7
  %4 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %i1 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %i1, align 8, !tbaa !32
  store ptr %5, ptr %A_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_j) #7
  %6 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %j2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %j2, align 8, !tbaa !33
  store ptr %7, ptr %A_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd) #7
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %offd, align 8, !tbaa !36
  store ptr %9, ptr %A_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_data) #7
  %10 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %data3, align 8, !tbaa !30
  store ptr %11, ptr %A_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_i) #7
  %12 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %i4 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %i4, align 8, !tbaa !32
  store ptr %13, ptr %A_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_j) #7
  %14 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %j5 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %j5, align 8, !tbaa !33
  store ptr %15, ptr %A_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_A_offd) #7
  %16 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %num_cols, align 4, !tbaa !35
  store i32 %17, ptr %num_cols_A_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag) #7
  %18 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %diag6 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %diag6, align 8, !tbaa !29
  store ptr %19, ptr %P_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data) #7
  %20 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data7 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %data7, align 8, !tbaa !30
  store ptr %21, ptr %P_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_i) #7
  %22 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %i8 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %i8, align 8, !tbaa !32
  store ptr %23, ptr %P_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_j) #7
  %24 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %j9 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %j9, align 8, !tbaa !33
  store ptr %25, ptr %P_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_rows_P) #7
  %26 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %num_rows, align 8, !tbaa !34
  store i32 %27, ptr %num_rows_P, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %P_diag_size) #7
  %28 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %29 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %30, ptr %P_diag_size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd) #7
  %31 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %offd10 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %31, i32 0, i32 8
  %32 = load ptr, ptr %offd10, align 8, !tbaa !36
  store ptr %32, ptr %P_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_i) #7
  %33 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %i11 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %i11, align 8, !tbaa !32
  store ptr %34, ptr %P_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %P_offd_size) #7
  %35 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %36 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %idxprom12 = sext i32 %36 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %35, i64 %idxprom12
  %37 = load i32, ptr %arrayidx13, align 4, !tbaa !8
  store i32 %37, ptr %P_offd_size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data) #7
  %38 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data14 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %38, i32 0, i32 9
  %39 = load ptr, ptr %data14, align 8, !tbaa !30
  store ptr %39, ptr %P_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j) #7
  %40 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %j15 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %j15, align 8, !tbaa !33
  store ptr %41, ptr %P_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_P_offd) #7
  %42 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %num_cols16 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %42, i32 0, i32 4
  %43 = load i32, ptr %num_cols16, align 4, !tbaa !35
  store i32 %43, ptr %num_cols_P_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd_P) #7
  %44 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %col_map_offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %44, i32 0, i32 11
  %45 = load ptr, ptr %col_map_offd, align 8, !tbaa !37
  store ptr %45, ptr %col_map_offd_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_location) #7
  %46 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %46)
  store i32 %call, ptr %memory_location, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_diag_start) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_offd_start) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_diag_pos) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_offd_pos) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %fcn_num) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %p_num_diag_elements) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %p_num_offd_elements) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %CF_marker_offd) #7
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dof_func_offd) #7
  store ptr null, ptr %dof_func_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fine_to_coarse_offd) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_functions) #7
  %47 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  store i32 %48, ptr %num_functions, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg_P) #7
  %49 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %comm_pkg = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %49, i32 0, i32 15
  %50 = load ptr, ptr %comm_pkg, align 8, !tbaa !38
  store ptr %50, ptr %comm_pkg_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg_A) #7
  %51 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm_pkg17 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %51, i32 0, i32 15
  %52 = load ptr, ptr %comm_pkg17, align 8, !tbaa !38
  store ptr %52, ptr %comm_pkg_A, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %coarse_counter) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_ext_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fine_to_coarse) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k_point) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_point) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j_point_c) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %p_point) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %big_k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %big_index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %big_j_point_c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %diagonal) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %aw) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_ij) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %scale_row) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_row_sum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_row_sum) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %use_alt_w) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %kk) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %kk_count) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_spot) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist_coarse) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext_i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext_j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends_A) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %myid) #7
  store i32 0, ptr %myid, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #7
  store i32 1, ptr %num_procs, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_handle) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_buf_data) #7
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_buf_data) #7
  store ptr null, ptr %big_buf_data, align 8, !tbaa !4
  %53 = load ptr, ptr %comm_pkg_P, align 8, !tbaa !4
  %tobool = icmp ne ptr %53, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %54 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call18 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %54)
  %55 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %comm_pkg19 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %55, i32 0, i32 15
  %56 = load ptr, ptr %comm_pkg19, align 8, !tbaa !38
  store ptr %56, ptr %comm_pkg_P, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %57 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %comm20 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %comm20, align 8, !tbaa !39
  store ptr %58, ptr %comm, align 8, !tbaa !4
  %59 = load ptr, ptr %comm, align 8, !tbaa !4
  %call21 = call i32 @hypre_MPI_Comm_size(ptr noundef %59, ptr noundef %num_procs)
  %60 = load ptr, ptr %comm, align 8, !tbaa !4
  %call22 = call i32 @hypre_MPI_Comm_rank(ptr noundef %60, ptr noundef %myid)
  %61 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %num_sends = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %num_sends, align 8, !tbaa !45
  store i32 %62, ptr %num_sends_A, align 4, !tbaa !8
  %63 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %63, i32 0, i32 3
  %64 = load ptr, ptr %send_map_starts, align 8, !tbaa !46
  %65 = load i32, ptr %num_sends_A, align 4, !tbaa !8
  %idxprom23 = sext i32 %65 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %64, i64 %idxprom23
  %66 = load i32, ptr %arrayidx24, align 4, !tbaa !8
  %conv = sext i32 %66 to i64
  %call25 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call25, ptr %big_buf_data, align 8, !tbaa !4
  %67 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts26 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %67, i32 0, i32 3
  %68 = load ptr, ptr %send_map_starts26, align 8, !tbaa !46
  %69 = load i32, ptr %num_sends_A, align 4, !tbaa !8
  %idxprom27 = sext i32 %69 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %68, i64 %idxprom27
  %70 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %conv29 = sext i32 %70 to i64
  %call30 = call ptr @hypre_CAlloc(i64 noundef %conv29, i64 noundef 4, i32 noundef 0)
  store ptr %call30, ptr %int_buf_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_first_cpt) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp_i) #7
  %71 = load ptr, ptr %num_cpts_global.addr, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds i32, ptr %71, i64 0
  %72 = load i32, ptr %arrayidx31, align 4, !tbaa !8
  store i32 %72, ptr %my_first_cpt, align 4, !tbaa !8
  %73 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %conv32 = sext i32 %73 to i64
  %call33 = call ptr @hypre_CAlloc(i64 noundef %conv32, i64 noundef 4, i32 noundef 0)
  store ptr %call33, ptr %fine_to_coarse, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %74 = load i32, ptr %i, align 4, !tbaa !8
  %75 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %cmp = icmp slt i32 %74, %75
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %77 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom35 = sext i32 %77 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %76, i64 %idxprom35
  store i32 -1, ptr %arrayidx36, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %coarse_counter, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.end
  %79 = load i32, ptr %i, align 4, !tbaa !8
  %80 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %cmp38 = icmp slt i32 %79, %80
  br i1 %cmp38, label %for.body40, label %for.end52

for.body40:                                       ; preds = %for.cond37
  %81 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %82 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom41 = sext i32 %82 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %81, i64 %idxprom41
  %83 = load i32, ptr %arrayidx42, align 4, !tbaa !8
  %cmp43 = icmp sge i32 %83, 0
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %for.body40
  %84 = load i32, ptr %coarse_counter, align 4, !tbaa !8
  %85 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %86 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom46 = sext i32 %86 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %85, i64 %idxprom46
  store i32 %84, ptr %arrayidx47, align 4, !tbaa !8
  %87 = load i32, ptr %coarse_counter, align 4, !tbaa !8
  %inc48 = add nsw i32 %87, 1
  store i32 %inc48, ptr %coarse_counter, align 4, !tbaa !8
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %for.body40
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %88 = load i32, ptr %i, align 4, !tbaa !8
  %inc51 = add nsw i32 %88, 1
  store i32 %inc51, ptr %i, align 4, !tbaa !8
  br label %for.cond37, !llvm.loop !88

for.end52:                                        ; preds = %for.cond37
  %89 = load i32, ptr %num_cols_A_offd, align 4, !tbaa !8
  %conv53 = sext i32 %89 to i64
  %call54 = call ptr @hypre_CAlloc(i64 noundef %conv53, i64 noundef 4, i32 noundef 0)
  store ptr %call54, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc80, %for.end52
  %90 = load i32, ptr %i, align 4, !tbaa !8
  %91 = load i32, ptr %num_sends_A, align 4, !tbaa !8
  %cmp56 = icmp slt i32 %90, %91
  br i1 %cmp56, label %for.body58, label %for.end82

for.body58:                                       ; preds = %for.cond55
  %92 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts59 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %92, i32 0, i32 3
  %93 = load ptr, ptr %send_map_starts59, align 8, !tbaa !46
  %94 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom60 = sext i32 %94 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %93, i64 %idxprom60
  %95 = load i32, ptr %arrayidx61, align 4, !tbaa !8
  store i32 %95, ptr %start, align 4, !tbaa !8
  %96 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %96, ptr %j, align 4, !tbaa !8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc77, %for.body58
  %97 = load i32, ptr %j, align 4, !tbaa !8
  %98 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts63 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %98, i32 0, i32 3
  %99 = load ptr, ptr %send_map_starts63, align 8, !tbaa !46
  %100 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %100, 1
  %idxprom64 = sext i32 %add to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %99, i64 %idxprom64
  %101 = load i32, ptr %arrayidx65, align 4, !tbaa !8
  %cmp66 = icmp slt i32 %97, %101
  br i1 %cmp66, label %for.body68, label %for.end79

for.body68:                                       ; preds = %for.cond62
  %102 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %103 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_elmts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %103, i32 0, i32 4
  %104 = load ptr, ptr %send_map_elmts, align 8, !tbaa !47
  %105 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom69 = sext i32 %105 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %104, i64 %idxprom69
  %106 = load i32, ptr %arrayidx70, align 4, !tbaa !8
  %idxprom71 = sext i32 %106 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %102, i64 %idxprom71
  %107 = load i32, ptr %arrayidx72, align 4, !tbaa !8
  store i32 %107, ptr %tmp_i, align 4, !tbaa !8
  %108 = load i32, ptr %tmp_i, align 4, !tbaa !8
  %109 = load i32, ptr %my_first_cpt, align 4, !tbaa !8
  %add73 = add nsw i32 %108, %109
  %110 = load ptr, ptr %big_buf_data, align 8, !tbaa !4
  %111 = load i32, ptr %index, align 4, !tbaa !8
  %inc74 = add nsw i32 %111, 1
  store i32 %inc74, ptr %index, align 4, !tbaa !8
  %idxprom75 = sext i32 %111 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %110, i64 %idxprom75
  store i32 %add73, ptr %arrayidx76, align 4, !tbaa !8
  br label %for.inc77

for.inc77:                                        ; preds = %for.body68
  %112 = load i32, ptr %j, align 4, !tbaa !8
  %inc78 = add nsw i32 %112, 1
  store i32 %inc78, ptr %j, align 4, !tbaa !8
  br label %for.cond62, !llvm.loop !89

for.end79:                                        ; preds = %for.cond62
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %113 = load i32, ptr %i, align 4, !tbaa !8
  %inc81 = add nsw i32 %113, 1
  store i32 %inc81, ptr %i, align 4, !tbaa !8
  br label %for.cond55, !llvm.loop !90

for.end82:                                        ; preds = %for.cond55
  %114 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %115 = load ptr, ptr %big_buf_data, align 8, !tbaa !4
  %116 = load ptr, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  %call83 = call ptr @hypre_ParCSRCommHandleCreate(i32 noundef 21, ptr noundef %114, ptr noundef %115, ptr noundef %116)
  store ptr %call83, ptr %comm_handle, align 8, !tbaa !4
  %117 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call84 = call i32 @hypre_ParCSRCommHandleDestroy(ptr noundef %117)
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp_i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_first_cpt) #7
  %118 = load i32, ptr %num_cols_A_offd, align 4, !tbaa !8
  %tobool85 = icmp ne i32 %118, 0
  br i1 %tobool85, label %if.then86, label %if.end89

if.then86:                                        ; preds = %for.end82
  %119 = load i32, ptr %num_cols_A_offd, align 4, !tbaa !8
  %conv87 = sext i32 %119 to i64
  %call88 = call ptr @hypre_CAlloc(i64 noundef %conv87, i64 noundef 4, i32 noundef 0)
  store ptr %call88, ptr %CF_marker_offd, align 8, !tbaa !4
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %for.end82
  %120 = load i32, ptr %num_functions, align 4, !tbaa !8
  %cmp90 = icmp sgt i32 %120, 1
  br i1 %cmp90, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %if.end89
  %121 = load i32, ptr %num_cols_A_offd, align 4, !tbaa !8
  %tobool92 = icmp ne i32 %121, 0
  br i1 %tobool92, label %if.then93, label %if.end96

if.then93:                                        ; preds = %land.lhs.true
  %122 = load i32, ptr %num_cols_A_offd, align 4, !tbaa !8
  %conv94 = sext i32 %122 to i64
  %call95 = call ptr @hypre_CAlloc(i64 noundef %conv94, i64 noundef 4, i32 noundef 0)
  store ptr %call95, ptr %dof_func_offd, align 8, !tbaa !4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %land.lhs.true, %if.end89
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc123, %if.end96
  %123 = load i32, ptr %i, align 4, !tbaa !8
  %124 = load i32, ptr %num_sends_A, align 4, !tbaa !8
  %cmp98 = icmp slt i32 %123, %124
  br i1 %cmp98, label %for.body100, label %for.end125

for.body100:                                      ; preds = %for.cond97
  %125 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts101 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %125, i32 0, i32 3
  %126 = load ptr, ptr %send_map_starts101, align 8, !tbaa !46
  %127 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom102 = sext i32 %127 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %126, i64 %idxprom102
  %128 = load i32, ptr %arrayidx103, align 4, !tbaa !8
  store i32 %128, ptr %start, align 4, !tbaa !8
  %129 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %129, ptr %j, align 4, !tbaa !8
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc120, %for.body100
  %130 = load i32, ptr %j, align 4, !tbaa !8
  %131 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts105 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %131, i32 0, i32 3
  %132 = load ptr, ptr %send_map_starts105, align 8, !tbaa !46
  %133 = load i32, ptr %i, align 4, !tbaa !8
  %add106 = add nsw i32 %133, 1
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %132, i64 %idxprom107
  %134 = load i32, ptr %arrayidx108, align 4, !tbaa !8
  %cmp109 = icmp slt i32 %130, %134
  br i1 %cmp109, label %for.body111, label %for.end122

for.body111:                                      ; preds = %for.cond104
  %135 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_elmts112 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %136, i32 0, i32 4
  %137 = load ptr, ptr %send_map_elmts112, align 8, !tbaa !47
  %138 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom113 = sext i32 %138 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %137, i64 %idxprom113
  %139 = load i32, ptr %arrayidx114, align 4, !tbaa !8
  %idxprom115 = sext i32 %139 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %135, i64 %idxprom115
  %140 = load i32, ptr %arrayidx116, align 4, !tbaa !8
  %141 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %142 = load i32, ptr %index, align 4, !tbaa !8
  %inc117 = add nsw i32 %142, 1
  store i32 %inc117, ptr %index, align 4, !tbaa !8
  %idxprom118 = sext i32 %142 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %141, i64 %idxprom118
  store i32 %140, ptr %arrayidx119, align 4, !tbaa !8
  br label %for.inc120

for.inc120:                                       ; preds = %for.body111
  %143 = load i32, ptr %j, align 4, !tbaa !8
  %inc121 = add nsw i32 %143, 1
  store i32 %inc121, ptr %j, align 4, !tbaa !8
  br label %for.cond104, !llvm.loop !91

for.end122:                                       ; preds = %for.cond104
  br label %for.inc123

for.inc123:                                       ; preds = %for.end122
  %144 = load i32, ptr %i, align 4, !tbaa !8
  %inc124 = add nsw i32 %144, 1
  store i32 %inc124, ptr %i, align 4, !tbaa !8
  br label %for.cond97, !llvm.loop !92

for.end125:                                       ; preds = %for.cond97
  %145 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %146 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %147 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %call126 = call ptr @hypre_ParCSRCommHandleCreate(i32 noundef 11, ptr noundef %145, ptr noundef %146, ptr noundef %147)
  store ptr %call126, ptr %comm_handle, align 8, !tbaa !4
  %148 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call127 = call i32 @hypre_ParCSRCommHandleDestroy(ptr noundef %148)
  %149 = load i32, ptr %num_functions, align 4, !tbaa !8
  %cmp128 = icmp sgt i32 %149, 1
  br i1 %cmp128, label %if.then130, label %if.end162

if.then130:                                       ; preds = %for.end125
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc157, %if.then130
  %150 = load i32, ptr %i, align 4, !tbaa !8
  %151 = load i32, ptr %num_sends_A, align 4, !tbaa !8
  %cmp132 = icmp slt i32 %150, %151
  br i1 %cmp132, label %for.body134, label %for.end159

for.body134:                                      ; preds = %for.cond131
  %152 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts135 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %152, i32 0, i32 3
  %153 = load ptr, ptr %send_map_starts135, align 8, !tbaa !46
  %154 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom136 = sext i32 %154 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %153, i64 %idxprom136
  %155 = load i32, ptr %arrayidx137, align 4, !tbaa !8
  store i32 %155, ptr %start, align 4, !tbaa !8
  %156 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %156, ptr %j, align 4, !tbaa !8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc154, %for.body134
  %157 = load i32, ptr %j, align 4, !tbaa !8
  %158 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts139 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %158, i32 0, i32 3
  %159 = load ptr, ptr %send_map_starts139, align 8, !tbaa !46
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %add140 = add nsw i32 %160, 1
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %159, i64 %idxprom141
  %161 = load i32, ptr %arrayidx142, align 4, !tbaa !8
  %cmp143 = icmp slt i32 %157, %161
  br i1 %cmp143, label %for.body145, label %for.end156

for.body145:                                      ; preds = %for.cond138
  %162 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_elmts146 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %163, i32 0, i32 4
  %164 = load ptr, ptr %send_map_elmts146, align 8, !tbaa !47
  %165 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom147 = sext i32 %165 to i64
  %arrayidx148 = getelementptr inbounds i32, ptr %164, i64 %idxprom147
  %166 = load i32, ptr %arrayidx148, align 4, !tbaa !8
  %idxprom149 = sext i32 %166 to i64
  %arrayidx150 = getelementptr inbounds i32, ptr %162, i64 %idxprom149
  %167 = load i32, ptr %arrayidx150, align 4, !tbaa !8
  %168 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %169 = load i32, ptr %index, align 4, !tbaa !8
  %inc151 = add nsw i32 %169, 1
  store i32 %inc151, ptr %index, align 4, !tbaa !8
  %idxprom152 = sext i32 %169 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %168, i64 %idxprom152
  store i32 %167, ptr %arrayidx153, align 4, !tbaa !8
  br label %for.inc154

for.inc154:                                       ; preds = %for.body145
  %170 = load i32, ptr %j, align 4, !tbaa !8
  %inc155 = add nsw i32 %170, 1
  store i32 %inc155, ptr %j, align 4, !tbaa !8
  br label %for.cond138, !llvm.loop !93

for.end156:                                       ; preds = %for.cond138
  br label %for.inc157

for.inc157:                                       ; preds = %for.end156
  %171 = load i32, ptr %i, align 4, !tbaa !8
  %inc158 = add nsw i32 %171, 1
  store i32 %inc158, ptr %i, align 4, !tbaa !8
  br label %for.cond131, !llvm.loop !94

for.end159:                                       ; preds = %for.cond131
  %172 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %173 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %174 = load ptr, ptr %dof_func_offd, align 8, !tbaa !4
  %call160 = call ptr @hypre_ParCSRCommHandleCreate(i32 noundef 11, ptr noundef %172, ptr noundef %173, ptr noundef %174)
  store ptr %call160, ptr %comm_handle, align 8, !tbaa !4
  %175 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call161 = call i32 @hypre_ParCSRCommHandleDestroy(ptr noundef %175)
  br label %if.end162

if.end162:                                        ; preds = %for.end159, %for.end125
  call void @llvm.lifetime.start.p0(i64 4, ptr %kc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_1) #7
  %176 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %first_col_diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %176, i32 0, i32 4
  %177 = load i32, ptr %first_col_diag, align 4, !tbaa !95
  store i32 %177, ptr %col_1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_n) #7
  %178 = load i32, ptr %col_1, align 4, !tbaa !8
  %179 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_cols163 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %179, i32 0, i32 4
  %180 = load i32, ptr %num_cols163, align 4, !tbaa !35
  %add164 = add nsw i32 %178, %180
  store i32 %add164, ptr %col_n, align 4, !tbaa !8
  %181 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp165 = icmp sgt i32 %181, 1
  br i1 %cmp165, label %if.then167, label %if.end171

if.then167:                                       ; preds = %if.end162
  %182 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %183 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call168 = call ptr @hypre_ParCSRMatrixExtractBExt(ptr noundef %182, ptr noundef %183, i32 noundef 1)
  store ptr %call168, ptr %P_ext, align 8, !tbaa !4
  %184 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %i169 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %184, i32 0, i32 0
  %185 = load ptr, ptr %i169, align 8, !tbaa !32
  store ptr %185, ptr %P_ext_i, align 8, !tbaa !4
  %186 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %big_j = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %186, i32 0, i32 2
  %187 = load ptr, ptr %big_j, align 8, !tbaa !96
  store ptr %187, ptr %P_ext_j, align 8, !tbaa !4
  %188 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %data170 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %188, i32 0, i32 9
  %189 = load ptr, ptr %data170, align 8, !tbaa !30
  store ptr %189, ptr %P_ext_data, align 8, !tbaa !4
  br label %if.end171

if.end171:                                        ; preds = %if.then167, %if.end162
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc220, %if.end171
  %190 = load i32, ptr %i, align 4, !tbaa !8
  %191 = load i32, ptr %num_cols_A_offd, align 4, !tbaa !8
  %cmp173 = icmp slt i32 %190, %191
  br i1 %cmp173, label %for.body175, label %for.end222

for.body175:                                      ; preds = %for.cond172
  %192 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %193 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom176 = sext i32 %193 to i64
  %arrayidx177 = getelementptr inbounds i32, ptr %192, i64 %idxprom176
  %194 = load i32, ptr %arrayidx177, align 4, !tbaa !8
  store i32 %194, ptr %j, align 4, !tbaa !8
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc215, %for.body175
  %195 = load i32, ptr %j, align 4, !tbaa !8
  %196 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %197 = load i32, ptr %i, align 4, !tbaa !8
  %add179 = add nsw i32 %197, 1
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %196, i64 %idxprom180
  %198 = load i32, ptr %arrayidx181, align 4, !tbaa !8
  %cmp182 = icmp slt i32 %195, %198
  br i1 %cmp182, label %for.body184, label %for.end217

for.body184:                                      ; preds = %for.cond178
  %199 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %200 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom185 = sext i32 %200 to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %199, i64 %idxprom185
  %201 = load i32, ptr %arrayidx186, align 4, !tbaa !8
  store i32 %201, ptr %big_k, align 4, !tbaa !8
  %202 = load i32, ptr %big_k, align 4, !tbaa !8
  %203 = load i32, ptr %col_1, align 4, !tbaa !8
  %cmp187 = icmp sge i32 %202, %203
  br i1 %cmp187, label %land.lhs.true189, label %if.else

land.lhs.true189:                                 ; preds = %for.body184
  %204 = load i32, ptr %big_k, align 4, !tbaa !8
  %205 = load i32, ptr %col_n, align 4, !tbaa !8
  %cmp190 = icmp slt i32 %204, %205
  br i1 %cmp190, label %if.then192, label %if.else

if.then192:                                       ; preds = %land.lhs.true189
  %206 = load i32, ptr %big_k, align 4, !tbaa !8
  %207 = load i32, ptr %col_1, align 4, !tbaa !8
  %sub = sub nsw i32 %206, %207
  %208 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %209 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom193 = sext i32 %209 to i64
  %arrayidx194 = getelementptr inbounds i32, ptr %208, i64 %idxprom193
  store i32 %sub, ptr %arrayidx194, align 4, !tbaa !8
  %210 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %211 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom195 = sext i32 %211 to i64
  %arrayidx196 = getelementptr inbounds double, ptr %210, i64 %idxprom195
  %212 = load double, ptr %arrayidx196, align 8, !tbaa !23
  %213 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %214 = load i32, ptr %index, align 4, !tbaa !8
  %inc197 = add nsw i32 %214, 1
  store i32 %inc197, ptr %index, align 4, !tbaa !8
  %idxprom198 = sext i32 %214 to i64
  %arrayidx199 = getelementptr inbounds double, ptr %213, i64 %idxprom198
  store double %212, ptr %arrayidx199, align 8, !tbaa !23
  br label %if.end214

if.else:                                          ; preds = %land.lhs.true189, %for.body184
  %215 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %216 = load i32, ptr %big_k, align 4, !tbaa !8
  %217 = load i32, ptr %num_cols_P_offd, align 4, !tbaa !8
  %call200 = call i32 @hypre_BigBinarySearch(ptr noundef %215, i32 noundef %216, i32 noundef %217)
  store i32 %call200, ptr %kc, align 4, !tbaa !8
  %218 = load i32, ptr %kc, align 4, !tbaa !8
  %cmp201 = icmp sgt i32 %218, -1
  br i1 %cmp201, label %if.then203, label %if.end213

if.then203:                                       ; preds = %if.else
  %219 = load i32, ptr %kc, align 4, !tbaa !8
  %sub204 = sub nsw i32 0, %219
  %sub205 = sub nsw i32 %sub204, 1
  %220 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %221 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom206 = sext i32 %221 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %220, i64 %idxprom206
  store i32 %sub205, ptr %arrayidx207, align 4, !tbaa !8
  %222 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %223 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom208 = sext i32 %223 to i64
  %arrayidx209 = getelementptr inbounds double, ptr %222, i64 %idxprom208
  %224 = load double, ptr %arrayidx209, align 8, !tbaa !23
  %225 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %226 = load i32, ptr %index, align 4, !tbaa !8
  %inc210 = add nsw i32 %226, 1
  store i32 %inc210, ptr %index, align 4, !tbaa !8
  %idxprom211 = sext i32 %226 to i64
  %arrayidx212 = getelementptr inbounds double, ptr %225, i64 %idxprom211
  store double %224, ptr %arrayidx212, align 8, !tbaa !23
  br label %if.end213

if.end213:                                        ; preds = %if.then203, %if.else
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then192
  br label %for.inc215

for.inc215:                                       ; preds = %if.end214
  %227 = load i32, ptr %j, align 4, !tbaa !8
  %inc216 = add nsw i32 %227, 1
  store i32 %inc216, ptr %j, align 4, !tbaa !8
  br label %for.cond178, !llvm.loop !97

for.end217:                                       ; preds = %for.cond178
  %228 = load i32, ptr %index, align 4, !tbaa !8
  %229 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %230 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom218 = sext i32 %230 to i64
  %arrayidx219 = getelementptr inbounds i32, ptr %229, i64 %idxprom218
  store i32 %228, ptr %arrayidx219, align 4, !tbaa !8
  br label %for.inc220

for.inc220:                                       ; preds = %for.end217
  %231 = load i32, ptr %i, align 4, !tbaa !8
  %inc221 = add nsw i32 %231, 1
  store i32 %inc221, ptr %i, align 4, !tbaa !8
  br label %for.cond172, !llvm.loop !98

for.end222:                                       ; preds = %for.cond172
  %232 = load i32, ptr %num_cols_A_offd, align 4, !tbaa !8
  store i32 %232, ptr %i, align 4, !tbaa !8
  br label %for.cond223

for.cond223:                                      ; preds = %for.inc232, %for.end222
  %233 = load i32, ptr %i, align 4, !tbaa !8
  %cmp224 = icmp sgt i32 %233, 0
  br i1 %cmp224, label %for.body226, label %for.end233

for.body226:                                      ; preds = %for.cond223
  %234 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %235 = load i32, ptr %i, align 4, !tbaa !8
  %sub227 = sub nsw i32 %235, 1
  %idxprom228 = sext i32 %sub227 to i64
  %arrayidx229 = getelementptr inbounds i32, ptr %234, i64 %idxprom228
  %236 = load i32, ptr %arrayidx229, align 4, !tbaa !8
  %237 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %238 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom230 = sext i32 %238 to i64
  %arrayidx231 = getelementptr inbounds i32, ptr %237, i64 %idxprom230
  store i32 %236, ptr %arrayidx231, align 4, !tbaa !8
  br label %for.inc232

for.inc232:                                       ; preds = %for.body226
  %239 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %239, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond223, !llvm.loop !99

for.end233:                                       ; preds = %for.cond223
  %240 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp234 = icmp sgt i32 %240, 1
  br i1 %cmp234, label %if.then236, label %if.end238

if.then236:                                       ; preds = %for.end233
  %241 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %arrayidx237 = getelementptr inbounds i32, ptr %241, i64 0
  store i32 0, ptr %arrayidx237, align 4, !tbaa !8
  br label %if.end238

if.end238:                                        ; preds = %if.then236, %for.end233
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %kc) #7
  %242 = load i32, ptr %P_diag_size, align 4, !tbaa !8
  %conv239 = sext i32 %242 to i64
  %call240 = call ptr @hypre_CAlloc(i64 noundef %conv239, i64 noundef 8, i32 noundef 1)
  store ptr %call240, ptr %P_diag_data_new, align 8, !tbaa !4
  %243 = load i32, ptr %P_offd_size, align 4, !tbaa !8
  %conv241 = sext i32 %243 to i64
  %call242 = call ptr @hypre_CAlloc(i64 noundef %conv241, i64 noundef 8, i32 noundef 1)
  store ptr %call242, ptr %P_offd_data_new, align 8, !tbaa !4
  store i32 0, ptr %j_diag_pos, align 4, !tbaa !8
  store i32 0, ptr %j_offd_pos, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond243

for.cond243:                                      ; preds = %for.inc1004, %if.end238
  %244 = load i32, ptr %i, align 4, !tbaa !8
  %245 = load i32, ptr %num_rows_P, align 4, !tbaa !8
  %cmp244 = icmp slt i32 %244, %245
  br i1 %cmp244, label %for.body246, label %for.end1006

for.body246:                                      ; preds = %for.cond243
  store double 0.000000e+00, ptr %new_row_sum, align 8, !tbaa !23
  store i32 0, ptr %use_alt_w, align 4, !tbaa !8
  store i32 0, ptr %scale_row, align 4, !tbaa !8
  store double 0.000000e+00, ptr %orig_row_sum, align 8, !tbaa !23
  %246 = load i32, ptr %i, align 4, !tbaa !8
  %conv247 = sitofp i32 %246 to double
  %247 = load i32, ptr %num_functions, align 4, !tbaa !8
  %conv248 = sitofp i32 %247 to double
  %call249 = call double @fmod(double noundef %conv247, double noundef %conv248) #7
  %conv250 = fptosi double %call249 to i32
  store i32 %conv250, ptr %fcn_num, align 4, !tbaa !8
  %248 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %249 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %250 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom251 = sext i32 %250 to i64
  %arrayidx252 = getelementptr inbounds i32, ptr %249, i64 %idxprom251
  %251 = load i32, ptr %arrayidx252, align 4, !tbaa !8
  %cmp253 = icmp ne i32 %248, %251
  br i1 %cmp253, label %if.then255, label %if.end256

if.then255:                                       ; preds = %for.body246
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1827, i32 noundef 1, ptr noundef @.str.5)
  br label %if.end256

if.end256:                                        ; preds = %if.then255, %for.body246
  %252 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %253 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom257 = sext i32 %253 to i64
  %arrayidx258 = getelementptr inbounds i32, ptr %252, i64 %idxprom257
  %254 = load i32, ptr %arrayidx258, align 4, !tbaa !8
  store i32 %254, ptr %orig_diag_start, align 4, !tbaa !8
  %255 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %256 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom259 = sext i32 %256 to i64
  %arrayidx260 = getelementptr inbounds i32, ptr %255, i64 %idxprom259
  %257 = load i32, ptr %arrayidx260, align 4, !tbaa !8
  store i32 %257, ptr %orig_offd_start, align 4, !tbaa !8
  %258 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %259 = load i32, ptr %i, align 4, !tbaa !8
  %add261 = add nsw i32 %259, 1
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds i32, ptr %258, i64 %idxprom262
  %260 = load i32, ptr %arrayidx263, align 4, !tbaa !8
  %261 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %sub264 = sub nsw i32 %260, %261
  store i32 %sub264, ptr %p_num_diag_elements, align 4, !tbaa !8
  %262 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %263 = load i32, ptr %i, align 4, !tbaa !8
  %add265 = add nsw i32 %263, 1
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %262, i64 %idxprom266
  %264 = load i32, ptr %arrayidx267, align 4, !tbaa !8
  %265 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %sub268 = sub nsw i32 %264, %265
  store i32 %sub268, ptr %p_num_offd_elements, align 4, !tbaa !8
  %266 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %267 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom269 = sext i32 %267 to i64
  %arrayidx270 = getelementptr inbounds i32, ptr %266, i64 %idxprom269
  %268 = load i32, ptr %arrayidx270, align 4, !tbaa !8
  %cmp271 = icmp sge i32 %268, 0
  br i1 %cmp271, label %if.then273, label %if.else300

if.then273:                                       ; preds = %if.end256
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc284, %if.then273
  %269 = load i32, ptr %j, align 4, !tbaa !8
  %270 = load i32, ptr %p_num_diag_elements, align 4, !tbaa !8
  %cmp275 = icmp slt i32 %269, %270
  br i1 %cmp275, label %for.body277, label %for.end286

for.body277:                                      ; preds = %for.cond274
  %271 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %272 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %273 = load i32, ptr %j, align 4, !tbaa !8
  %add278 = add nsw i32 %272, %273
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds double, ptr %271, i64 %idxprom279
  %274 = load double, ptr %arrayidx280, align 8, !tbaa !23
  %275 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %276 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %inc281 = add nsw i32 %276, 1
  store i32 %inc281, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom282 = sext i32 %276 to i64
  %arrayidx283 = getelementptr inbounds double, ptr %275, i64 %idxprom282
  store double %274, ptr %arrayidx283, align 8, !tbaa !23
  br label %for.inc284

for.inc284:                                       ; preds = %for.body277
  %277 = load i32, ptr %j, align 4, !tbaa !8
  %inc285 = add nsw i32 %277, 1
  store i32 %inc285, ptr %j, align 4, !tbaa !8
  br label %for.cond274, !llvm.loop !100

for.end286:                                       ; preds = %for.cond274
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond287

for.cond287:                                      ; preds = %for.inc297, %for.end286
  %278 = load i32, ptr %j, align 4, !tbaa !8
  %279 = load i32, ptr %p_num_offd_elements, align 4, !tbaa !8
  %cmp288 = icmp slt i32 %278, %279
  br i1 %cmp288, label %for.body290, label %for.end299

for.body290:                                      ; preds = %for.cond287
  %280 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %281 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %282 = load i32, ptr %j, align 4, !tbaa !8
  %add291 = add nsw i32 %281, %282
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds double, ptr %280, i64 %idxprom292
  %283 = load double, ptr %arrayidx293, align 8, !tbaa !23
  %284 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %285 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %inc294 = add nsw i32 %285, 1
  store i32 %inc294, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom295 = sext i32 %285 to i64
  %arrayidx296 = getelementptr inbounds double, ptr %284, i64 %idxprom295
  store double %283, ptr %arrayidx296, align 8, !tbaa !23
  br label %for.inc297

for.inc297:                                       ; preds = %for.body290
  %286 = load i32, ptr %j, align 4, !tbaa !8
  %inc298 = add nsw i32 %286, 1
  store i32 %inc298, ptr %j, align 4, !tbaa !8
  br label %for.cond287, !llvm.loop !101

for.end299:                                       ; preds = %for.cond287
  br label %if.end1003

if.else300:                                       ; preds = %if.end256
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond301

for.cond301:                                      ; preds = %for.inc312, %if.else300
  %287 = load i32, ptr %j, align 4, !tbaa !8
  %288 = load i32, ptr %p_num_diag_elements, align 4, !tbaa !8
  %cmp302 = icmp slt i32 %287, %288
  br i1 %cmp302, label %for.body304, label %for.end314

for.body304:                                      ; preds = %for.cond301
  %289 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %290 = load i32, ptr %orig_diag_start, align 4, !tbaa !8
  %291 = load i32, ptr %j, align 4, !tbaa !8
  %add305 = add nsw i32 %290, %291
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds double, ptr %289, i64 %idxprom306
  %292 = load double, ptr %arrayidx307, align 8, !tbaa !23
  %293 = load double, ptr %orig_row_sum, align 8, !tbaa !23
  %add308 = fadd double %293, %292
  store double %add308, ptr %orig_row_sum, align 8, !tbaa !23
  %294 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %295 = load i32, ptr %j_diag_pos, align 4, !tbaa !8
  %inc309 = add nsw i32 %295, 1
  store i32 %inc309, ptr %j_diag_pos, align 4, !tbaa !8
  %idxprom310 = sext i32 %295 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %294, i64 %idxprom310
  store double 0.000000e+00, ptr %arrayidx311, align 8, !tbaa !23
  br label %for.inc312

for.inc312:                                       ; preds = %for.body304
  %296 = load i32, ptr %j, align 4, !tbaa !8
  %inc313 = add nsw i32 %296, 1
  store i32 %inc313, ptr %j, align 4, !tbaa !8
  br label %for.cond301, !llvm.loop !102

for.end314:                                       ; preds = %for.cond301
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond315

for.cond315:                                      ; preds = %for.inc326, %for.end314
  %297 = load i32, ptr %j, align 4, !tbaa !8
  %298 = load i32, ptr %p_num_offd_elements, align 4, !tbaa !8
  %cmp316 = icmp slt i32 %297, %298
  br i1 %cmp316, label %for.body318, label %for.end328

for.body318:                                      ; preds = %for.cond315
  %299 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %300 = load i32, ptr %orig_offd_start, align 4, !tbaa !8
  %301 = load i32, ptr %j, align 4, !tbaa !8
  %add319 = add nsw i32 %300, %301
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds double, ptr %299, i64 %idxprom320
  %302 = load double, ptr %arrayidx321, align 8, !tbaa !23
  %303 = load double, ptr %orig_row_sum, align 8, !tbaa !23
  %add322 = fadd double %303, %302
  store double %add322, ptr %orig_row_sum, align 8, !tbaa !23
  %304 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %305 = load i32, ptr %j_offd_pos, align 4, !tbaa !8
  %inc323 = add nsw i32 %305, 1
  store i32 %inc323, ptr %j_offd_pos, align 4, !tbaa !8
  %idxprom324 = sext i32 %305 to i64
  %arrayidx325 = getelementptr inbounds double, ptr %304, i64 %idxprom324
  store double 0.000000e+00, ptr %arrayidx325, align 8, !tbaa !23
  br label %for.inc326

for.inc326:                                       ; preds = %for.body318
  %306 = load i32, ptr %j, align 4, !tbaa !8
  %inc327 = add nsw i32 %306, 1
  store i32 %inc327, ptr %j, align 4, !tbaa !8
  br label %for.cond315, !llvm.loop !103

for.end328:                                       ; preds = %for.cond315
  %307 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %308 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %309 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom329 = sext i32 %309 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %308, i64 %idxprom329
  %310 = load i32, ptr %arrayidx330, align 4, !tbaa !8
  %idxprom331 = sext i32 %310 to i64
  %arrayidx332 = getelementptr inbounds double, ptr %307, i64 %idxprom331
  %311 = load double, ptr %arrayidx332, align 8, !tbaa !23
  store double %311, ptr %diagonal, align 8, !tbaa !23
  %312 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %313 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom333 = sext i32 %313 to i64
  %arrayidx334 = getelementptr inbounds i32, ptr %312, i64 %idxprom333
  %314 = load i32, ptr %arrayidx334, align 4, !tbaa !8
  %add335 = add nsw i32 %314, 1
  store i32 %add335, ptr %j, align 4, !tbaa !8
  br label %for.cond336

for.cond336:                                      ; preds = %for.inc624, %for.end328
  %315 = load i32, ptr %j, align 4, !tbaa !8
  %316 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %317 = load i32, ptr %i, align 4, !tbaa !8
  %add337 = add nsw i32 %317, 1
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds i32, ptr %316, i64 %idxprom338
  %318 = load i32, ptr %arrayidx339, align 4, !tbaa !8
  %cmp340 = icmp slt i32 %315, %318
  br i1 %cmp340, label %for.body342, label %for.end626

for.body342:                                      ; preds = %for.cond336
  %319 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %320 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom343 = sext i32 %320 to i64
  %arrayidx344 = getelementptr inbounds i32, ptr %319, i64 %idxprom343
  %321 = load i32, ptr %arrayidx344, align 4, !tbaa !8
  store i32 %321, ptr %j_point, align 4, !tbaa !8
  %322 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %323 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %324 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom345 = sext i32 %324 to i64
  %arrayidx346 = getelementptr inbounds i32, ptr %323, i64 %idxprom345
  %325 = load i32, ptr %arrayidx346, align 4, !tbaa !8
  %cmp347 = icmp ne i32 %322, %325
  br i1 %cmp347, label %if.then349, label %if.end350

if.then349:                                       ; preds = %for.body342
  br label %for.inc624

if.end350:                                        ; preds = %for.body342
  store i32 0, ptr %dist_coarse, align 4, !tbaa !8
  %326 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %327 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom351 = sext i32 %327 to i64
  %arrayidx352 = getelementptr inbounds double, ptr %326, i64 %idxprom351
  %328 = load double, ptr %arrayidx352, align 8, !tbaa !23
  store double %328, ptr %a_ij, align 8, !tbaa !23
  store i32 0, ptr %found, align 4, !tbaa !8
  %329 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %330 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom353 = sext i32 %330 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %329, i64 %idxprom353
  %331 = load i32, ptr %arrayidx354, align 4, !tbaa !8
  %cmp355 = icmp sge i32 %331, 0
  br i1 %cmp355, label %if.then357, label %if.else384

if.then357:                                       ; preds = %if.end350
  %332 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %333 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom358 = sext i32 %333 to i64
  %arrayidx359 = getelementptr inbounds i32, ptr %332, i64 %idxprom358
  %334 = load i32, ptr %arrayidx359, align 4, !tbaa !8
  store i32 %334, ptr %j_point_c, align 4, !tbaa !8
  %335 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %336 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom360 = sext i32 %336 to i64
  %arrayidx361 = getelementptr inbounds i32, ptr %335, i64 %idxprom360
  %337 = load i32, ptr %arrayidx361, align 4, !tbaa !8
  store i32 %337, ptr %k, align 4, !tbaa !8
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc378, %if.then357
  %338 = load i32, ptr %k, align 4, !tbaa !8
  %339 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %340 = load i32, ptr %i, align 4, !tbaa !8
  %add363 = add nsw i32 %340, 1
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds i32, ptr %339, i64 %idxprom364
  %341 = load i32, ptr %arrayidx365, align 4, !tbaa !8
  %cmp366 = icmp slt i32 %338, %341
  br i1 %cmp366, label %for.body368, label %for.end380

for.body368:                                      ; preds = %for.cond362
  %342 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %343 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom369 = sext i32 %343 to i64
  %arrayidx370 = getelementptr inbounds i32, ptr %342, i64 %idxprom369
  %344 = load i32, ptr %arrayidx370, align 4, !tbaa !8
  %345 = load i32, ptr %j_point_c, align 4, !tbaa !8
  %cmp371 = icmp eq i32 %344, %345
  br i1 %cmp371, label %if.then373, label %if.end377

if.then373:                                       ; preds = %for.body368
  %346 = load double, ptr %a_ij, align 8, !tbaa !23
  %347 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %348 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom374 = sext i32 %348 to i64
  %arrayidx375 = getelementptr inbounds double, ptr %347, i64 %idxprom374
  %349 = load double, ptr %arrayidx375, align 8, !tbaa !23
  %add376 = fadd double %349, %346
  store double %add376, ptr %arrayidx375, align 8, !tbaa !23
  store i32 1, ptr %found, align 4, !tbaa !8
  br label %for.end380

if.end377:                                        ; preds = %for.body368
  br label %for.inc378

for.inc378:                                       ; preds = %if.end377
  %350 = load i32, ptr %k, align 4, !tbaa !8
  %inc379 = add nsw i32 %350, 1
  store i32 %inc379, ptr %k, align 4, !tbaa !8
  br label %for.cond362, !llvm.loop !104

for.end380:                                       ; preds = %if.then373, %for.cond362
  %351 = load i32, ptr %found, align 4, !tbaa !8
  %tobool381 = icmp ne i32 %351, 0
  br i1 %tobool381, label %if.end383, label %if.then382

if.then382:                                       ; preds = %for.end380
  store i32 1, ptr %dist_coarse, align 4, !tbaa !8
  br label %if.end383

if.end383:                                        ; preds = %if.then382, %for.end380
  br label %if.end579

if.else384:                                       ; preds = %if.end350
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !23
  %352 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %353 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom385 = sext i32 %353 to i64
  %arrayidx386 = getelementptr inbounds i32, ptr %352, i64 %idxprom385
  %354 = load i32, ptr %arrayidx386, align 4, !tbaa !8
  store i32 %354, ptr %pp, align 4, !tbaa !8
  br label %for.cond387

for.cond387:                                      ; preds = %for.inc417, %if.else384
  %355 = load i32, ptr %pp, align 4, !tbaa !8
  %356 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %357 = load i32, ptr %j_point, align 4, !tbaa !8
  %add388 = add nsw i32 %357, 1
  %idxprom389 = sext i32 %add388 to i64
  %arrayidx390 = getelementptr inbounds i32, ptr %356, i64 %idxprom389
  %358 = load i32, ptr %arrayidx390, align 4, !tbaa !8
  %cmp391 = icmp slt i32 %355, %358
  br i1 %cmp391, label %for.body393, label %for.end419

for.body393:                                      ; preds = %for.cond387
  %359 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %360 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom394 = sext i32 %360 to i64
  %arrayidx395 = getelementptr inbounds i32, ptr %359, i64 %idxprom394
  %361 = load i32, ptr %arrayidx395, align 4, !tbaa !8
  store i32 %361, ptr %p_point, align 4, !tbaa !8
  %362 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %363 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom396 = sext i32 %363 to i64
  %arrayidx397 = getelementptr inbounds i32, ptr %362, i64 %idxprom396
  %364 = load i32, ptr %arrayidx397, align 4, !tbaa !8
  store i32 %364, ptr %k, align 4, !tbaa !8
  br label %for.cond398

for.cond398:                                      ; preds = %for.inc414, %for.body393
  %365 = load i32, ptr %k, align 4, !tbaa !8
  %366 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %367 = load i32, ptr %i, align 4, !tbaa !8
  %add399 = add nsw i32 %367, 1
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds i32, ptr %366, i64 %idxprom400
  %368 = load i32, ptr %arrayidx401, align 4, !tbaa !8
  %cmp402 = icmp slt i32 %365, %368
  br i1 %cmp402, label %for.body404, label %for.end416

for.body404:                                      ; preds = %for.cond398
  %369 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %370 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom405 = sext i32 %370 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %369, i64 %idxprom405
  %371 = load i32, ptr %arrayidx406, align 4, !tbaa !8
  store i32 %371, ptr %k_point, align 4, !tbaa !8
  %372 = load i32, ptr %p_point, align 4, !tbaa !8
  %373 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp407 = icmp eq i32 %372, %373
  br i1 %cmp407, label %if.then409, label %if.end413

if.then409:                                       ; preds = %for.body404
  %374 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %375 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom410 = sext i32 %375 to i64
  %arrayidx411 = getelementptr inbounds double, ptr %374, i64 %idxprom410
  %376 = load double, ptr %arrayidx411, align 8, !tbaa !23
  %377 = load double, ptr %sum, align 8, !tbaa !23
  %add412 = fadd double %377, %376
  store double %add412, ptr %sum, align 8, !tbaa !23
  br label %for.end416

if.end413:                                        ; preds = %for.body404
  br label %for.inc414

for.inc414:                                       ; preds = %if.end413
  %378 = load i32, ptr %k, align 4, !tbaa !8
  %inc415 = add nsw i32 %378, 1
  store i32 %inc415, ptr %k, align 4, !tbaa !8
  br label %for.cond398, !llvm.loop !105

for.end416:                                       ; preds = %if.then409, %for.cond398
  br label %for.inc417

for.inc417:                                       ; preds = %for.end416
  %379 = load i32, ptr %pp, align 4, !tbaa !8
  %inc418 = add nsw i32 %379, 1
  store i32 %inc418, ptr %pp, align 4, !tbaa !8
  br label %for.cond387, !llvm.loop !106

for.end419:                                       ; preds = %for.cond387
  %380 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %381 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom420 = sext i32 %381 to i64
  %arrayidx421 = getelementptr inbounds i32, ptr %380, i64 %idxprom420
  %382 = load i32, ptr %arrayidx421, align 4, !tbaa !8
  store i32 %382, ptr %pp, align 4, !tbaa !8
  br label %for.cond422

for.cond422:                                      ; preds = %for.inc452, %for.end419
  %383 = load i32, ptr %pp, align 4, !tbaa !8
  %384 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %385 = load i32, ptr %j_point, align 4, !tbaa !8
  %add423 = add nsw i32 %385, 1
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %384, i64 %idxprom424
  %386 = load i32, ptr %arrayidx425, align 4, !tbaa !8
  %cmp426 = icmp slt i32 %383, %386
  br i1 %cmp426, label %for.body428, label %for.end454

for.body428:                                      ; preds = %for.cond422
  %387 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %388 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom429 = sext i32 %388 to i64
  %arrayidx430 = getelementptr inbounds i32, ptr %387, i64 %idxprom429
  %389 = load i32, ptr %arrayidx430, align 4, !tbaa !8
  store i32 %389, ptr %p_point, align 4, !tbaa !8
  %390 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %391 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom431 = sext i32 %391 to i64
  %arrayidx432 = getelementptr inbounds i32, ptr %390, i64 %idxprom431
  %392 = load i32, ptr %arrayidx432, align 4, !tbaa !8
  store i32 %392, ptr %k, align 4, !tbaa !8
  br label %for.cond433

for.cond433:                                      ; preds = %for.inc449, %for.body428
  %393 = load i32, ptr %k, align 4, !tbaa !8
  %394 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %395 = load i32, ptr %i, align 4, !tbaa !8
  %add434 = add nsw i32 %395, 1
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds i32, ptr %394, i64 %idxprom435
  %396 = load i32, ptr %arrayidx436, align 4, !tbaa !8
  %cmp437 = icmp slt i32 %393, %396
  br i1 %cmp437, label %for.body439, label %for.end451

for.body439:                                      ; preds = %for.cond433
  %397 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %398 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom440 = sext i32 %398 to i64
  %arrayidx441 = getelementptr inbounds i32, ptr %397, i64 %idxprom440
  %399 = load i32, ptr %arrayidx441, align 4, !tbaa !8
  store i32 %399, ptr %k_point, align 4, !tbaa !8
  %400 = load i32, ptr %p_point, align 4, !tbaa !8
  %401 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp442 = icmp eq i32 %400, %401
  br i1 %cmp442, label %if.then444, label %if.end448

if.then444:                                       ; preds = %for.body439
  %402 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %403 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom445 = sext i32 %403 to i64
  %arrayidx446 = getelementptr inbounds double, ptr %402, i64 %idxprom445
  %404 = load double, ptr %arrayidx446, align 8, !tbaa !23
  %405 = load double, ptr %sum, align 8, !tbaa !23
  %add447 = fadd double %405, %404
  store double %add447, ptr %sum, align 8, !tbaa !23
  br label %for.end451

if.end448:                                        ; preds = %for.body439
  br label %for.inc449

for.inc449:                                       ; preds = %if.end448
  %406 = load i32, ptr %k, align 4, !tbaa !8
  %inc450 = add nsw i32 %406, 1
  store i32 %inc450, ptr %k, align 4, !tbaa !8
  br label %for.cond433, !llvm.loop !107

for.end451:                                       ; preds = %if.then444, %for.cond433
  br label %for.inc452

for.inc452:                                       ; preds = %for.end451
  %407 = load i32, ptr %pp, align 4, !tbaa !8
  %inc453 = add nsw i32 %407, 1
  store i32 %inc453, ptr %pp, align 4, !tbaa !8
  br label %for.cond422, !llvm.loop !108

for.end454:                                       ; preds = %for.cond422
  %408 = load double, ptr %sum, align 8, !tbaa !23
  %409 = call double @llvm.fabs.f64(double %408)
  %cmp455 = fcmp olt double %409, 0x3D719799812DEA11
  br i1 %cmp455, label %if.then457, label %if.end458

if.then457:                                       ; preds = %for.end454
  store double 1.000000e+00, ptr %sum, align 8, !tbaa !23
  store i32 1, ptr %use_alt_w, align 4, !tbaa !8
  br label %if.end458

if.end458:                                        ; preds = %if.then457, %for.end454
  %410 = load i32, ptr %use_alt_w, align 4, !tbaa !8
  %tobool459 = icmp ne i32 %410, 0
  br i1 %tobool459, label %if.then460, label %if.end501

if.then460:                                       ; preds = %if.end458
  %411 = load double, ptr %a_ij, align 8, !tbaa !23
  %412 = load i32, ptr %p_num_diag_elements, align 4, !tbaa !8
  %413 = load i32, ptr %p_num_offd_elements, align 4, !tbaa !8
  %add461 = add nsw i32 %412, %413
  %conv462 = sitofp i32 %add461 to double
  %div = fdiv double %411, %conv462
  store double %div, ptr %aw, align 8, !tbaa !23
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %414 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %415 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom463 = sext i32 %415 to i64
  %arrayidx464 = getelementptr inbounds i32, ptr %414, i64 %idxprom463
  %416 = load i32, ptr %arrayidx464, align 4, !tbaa !8
  store i32 %416, ptr %kk, align 4, !tbaa !8
  br label %for.cond465

for.cond465:                                      ; preds = %for.inc479, %if.then460
  %417 = load i32, ptr %kk, align 4, !tbaa !8
  %418 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %419 = load i32, ptr %i, align 4, !tbaa !8
  %add466 = add nsw i32 %419, 1
  %idxprom467 = sext i32 %add466 to i64
  %arrayidx468 = getelementptr inbounds i32, ptr %418, i64 %idxprom467
  %420 = load i32, ptr %arrayidx468, align 4, !tbaa !8
  %cmp469 = icmp slt i32 %417, %420
  br i1 %cmp469, label %for.body471, label %for.end481

for.body471:                                      ; preds = %for.cond465
  %421 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %422 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom472 = sext i32 %422 to i64
  %arrayidx473 = getelementptr inbounds i32, ptr %421, i64 %idxprom472
  %423 = load i32, ptr %arrayidx473, align 4, !tbaa !8
  %424 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add474 = add nsw i32 %423, %424
  store i32 %add474, ptr %cur_spot, align 4, !tbaa !8
  %425 = load double, ptr %aw, align 8, !tbaa !23
  %426 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %427 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom475 = sext i32 %427 to i64
  %arrayidx476 = getelementptr inbounds double, ptr %426, i64 %idxprom475
  %428 = load double, ptr %arrayidx476, align 8, !tbaa !23
  %add477 = fadd double %428, %425
  store double %add477, ptr %arrayidx476, align 8, !tbaa !23
  %429 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc478 = add nsw i32 %429, 1
  store i32 %inc478, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc479

for.inc479:                                       ; preds = %for.body471
  %430 = load i32, ptr %kk, align 4, !tbaa !8
  %inc480 = add nsw i32 %430, 1
  store i32 %inc480, ptr %kk, align 4, !tbaa !8
  br label %for.cond465, !llvm.loop !109

for.end481:                                       ; preds = %for.cond465
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %431 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %432 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom482 = sext i32 %432 to i64
  %arrayidx483 = getelementptr inbounds i32, ptr %431, i64 %idxprom482
  %433 = load i32, ptr %arrayidx483, align 4, !tbaa !8
  store i32 %433, ptr %kk, align 4, !tbaa !8
  br label %for.cond484

for.cond484:                                      ; preds = %for.inc498, %for.end481
  %434 = load i32, ptr %kk, align 4, !tbaa !8
  %435 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %436 = load i32, ptr %i, align 4, !tbaa !8
  %add485 = add nsw i32 %436, 1
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %435, i64 %idxprom486
  %437 = load i32, ptr %arrayidx487, align 4, !tbaa !8
  %cmp488 = icmp slt i32 %434, %437
  br i1 %cmp488, label %for.body490, label %for.end500

for.body490:                                      ; preds = %for.cond484
  %438 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %439 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom491 = sext i32 %439 to i64
  %arrayidx492 = getelementptr inbounds i32, ptr %438, i64 %idxprom491
  %440 = load i32, ptr %arrayidx492, align 4, !tbaa !8
  %441 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add493 = add nsw i32 %440, %441
  store i32 %add493, ptr %cur_spot, align 4, !tbaa !8
  %442 = load double, ptr %aw, align 8, !tbaa !23
  %443 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %444 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom494 = sext i32 %444 to i64
  %arrayidx495 = getelementptr inbounds double, ptr %443, i64 %idxprom494
  %445 = load double, ptr %arrayidx495, align 8, !tbaa !23
  %add496 = fadd double %445, %442
  store double %add496, ptr %arrayidx495, align 8, !tbaa !23
  %446 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc497 = add nsw i32 %446, 1
  store i32 %inc497, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc498

for.inc498:                                       ; preds = %for.body490
  %447 = load i32, ptr %kk, align 4, !tbaa !8
  %inc499 = add nsw i32 %447, 1
  store i32 %inc499, ptr %kk, align 4, !tbaa !8
  br label %for.cond484, !llvm.loop !110

for.end500:                                       ; preds = %for.cond484
  br label %for.inc624

if.end501:                                        ; preds = %if.end458
  %448 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %449 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom502 = sext i32 %449 to i64
  %arrayidx503 = getelementptr inbounds i32, ptr %448, i64 %idxprom502
  %450 = load i32, ptr %arrayidx503, align 4, !tbaa !8
  store i32 %450, ptr %k, align 4, !tbaa !8
  br label %for.cond504

for.cond504:                                      ; preds = %for.inc537, %if.end501
  %451 = load i32, ptr %k, align 4, !tbaa !8
  %452 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %453 = load i32, ptr %i, align 4, !tbaa !8
  %add505 = add nsw i32 %453, 1
  %idxprom506 = sext i32 %add505 to i64
  %arrayidx507 = getelementptr inbounds i32, ptr %452, i64 %idxprom506
  %454 = load i32, ptr %arrayidx507, align 4, !tbaa !8
  %cmp508 = icmp slt i32 %451, %454
  br i1 %cmp508, label %for.body510, label %for.end539

for.body510:                                      ; preds = %for.cond504
  %455 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %456 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom511 = sext i32 %456 to i64
  %arrayidx512 = getelementptr inbounds i32, ptr %455, i64 %idxprom511
  %457 = load i32, ptr %arrayidx512, align 4, !tbaa !8
  store i32 %457, ptr %k_point, align 4, !tbaa !8
  %458 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %459 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom513 = sext i32 %459 to i64
  %arrayidx514 = getelementptr inbounds i32, ptr %458, i64 %idxprom513
  %460 = load i32, ptr %arrayidx514, align 4, !tbaa !8
  store i32 %460, ptr %pp, align 4, !tbaa !8
  br label %for.cond515

for.cond515:                                      ; preds = %for.inc534, %for.body510
  %461 = load i32, ptr %pp, align 4, !tbaa !8
  %462 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %463 = load i32, ptr %j_point, align 4, !tbaa !8
  %add516 = add nsw i32 %463, 1
  %idxprom517 = sext i32 %add516 to i64
  %arrayidx518 = getelementptr inbounds i32, ptr %462, i64 %idxprom517
  %464 = load i32, ptr %arrayidx518, align 4, !tbaa !8
  %cmp519 = icmp slt i32 %461, %464
  br i1 %cmp519, label %for.body521, label %for.end536

for.body521:                                      ; preds = %for.cond515
  %465 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %466 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom522 = sext i32 %466 to i64
  %arrayidx523 = getelementptr inbounds i32, ptr %465, i64 %idxprom522
  %467 = load i32, ptr %arrayidx523, align 4, !tbaa !8
  %468 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp524 = icmp eq i32 %467, %468
  br i1 %cmp524, label %if.then526, label %if.end533

if.then526:                                       ; preds = %for.body521
  %469 = load double, ptr %a_ij, align 8, !tbaa !23
  %470 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %471 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom527 = sext i32 %471 to i64
  %arrayidx528 = getelementptr inbounds double, ptr %470, i64 %idxprom527
  %472 = load double, ptr %arrayidx528, align 8, !tbaa !23
  %mul = fmul double %469, %472
  store double %mul, ptr %aw, align 8, !tbaa !23
  %473 = load double, ptr %aw, align 8, !tbaa !23
  %474 = load double, ptr %sum, align 8, !tbaa !23
  %div529 = fdiv double %473, %474
  store double %div529, ptr %aw, align 8, !tbaa !23
  %475 = load double, ptr %aw, align 8, !tbaa !23
  %476 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %477 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom530 = sext i32 %477 to i64
  %arrayidx531 = getelementptr inbounds double, ptr %476, i64 %idxprom530
  %478 = load double, ptr %arrayidx531, align 8, !tbaa !23
  %add532 = fadd double %478, %475
  store double %add532, ptr %arrayidx531, align 8, !tbaa !23
  br label %for.end536

if.end533:                                        ; preds = %for.body521
  br label %for.inc534

for.inc534:                                       ; preds = %if.end533
  %479 = load i32, ptr %pp, align 4, !tbaa !8
  %inc535 = add nsw i32 %479, 1
  store i32 %inc535, ptr %pp, align 4, !tbaa !8
  br label %for.cond515, !llvm.loop !111

for.end536:                                       ; preds = %if.then526, %for.cond515
  br label %for.inc537

for.inc537:                                       ; preds = %for.end536
  %480 = load i32, ptr %k, align 4, !tbaa !8
  %inc538 = add nsw i32 %480, 1
  store i32 %inc538, ptr %k, align 4, !tbaa !8
  br label %for.cond504, !llvm.loop !112

for.end539:                                       ; preds = %for.cond504
  %481 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %482 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom540 = sext i32 %482 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %481, i64 %idxprom540
  %483 = load i32, ptr %arrayidx541, align 4, !tbaa !8
  store i32 %483, ptr %k, align 4, !tbaa !8
  br label %for.cond542

for.cond542:                                      ; preds = %for.inc576, %for.end539
  %484 = load i32, ptr %k, align 4, !tbaa !8
  %485 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %486 = load i32, ptr %i, align 4, !tbaa !8
  %add543 = add nsw i32 %486, 1
  %idxprom544 = sext i32 %add543 to i64
  %arrayidx545 = getelementptr inbounds i32, ptr %485, i64 %idxprom544
  %487 = load i32, ptr %arrayidx545, align 4, !tbaa !8
  %cmp546 = icmp slt i32 %484, %487
  br i1 %cmp546, label %for.body548, label %for.end578

for.body548:                                      ; preds = %for.cond542
  %488 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %489 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom549 = sext i32 %489 to i64
  %arrayidx550 = getelementptr inbounds i32, ptr %488, i64 %idxprom549
  %490 = load i32, ptr %arrayidx550, align 4, !tbaa !8
  store i32 %490, ptr %k_point, align 4, !tbaa !8
  %491 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %492 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom551 = sext i32 %492 to i64
  %arrayidx552 = getelementptr inbounds i32, ptr %491, i64 %idxprom551
  %493 = load i32, ptr %arrayidx552, align 4, !tbaa !8
  store i32 %493, ptr %pp, align 4, !tbaa !8
  br label %for.cond553

for.cond553:                                      ; preds = %for.inc573, %for.body548
  %494 = load i32, ptr %pp, align 4, !tbaa !8
  %495 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %496 = load i32, ptr %j_point, align 4, !tbaa !8
  %add554 = add nsw i32 %496, 1
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds i32, ptr %495, i64 %idxprom555
  %497 = load i32, ptr %arrayidx556, align 4, !tbaa !8
  %cmp557 = icmp slt i32 %494, %497
  br i1 %cmp557, label %for.body559, label %for.end575

for.body559:                                      ; preds = %for.cond553
  %498 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %499 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom560 = sext i32 %499 to i64
  %arrayidx561 = getelementptr inbounds i32, ptr %498, i64 %idxprom560
  %500 = load i32, ptr %arrayidx561, align 4, !tbaa !8
  %501 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp562 = icmp eq i32 %500, %501
  br i1 %cmp562, label %if.then564, label %if.end572

if.then564:                                       ; preds = %for.body559
  %502 = load double, ptr %a_ij, align 8, !tbaa !23
  %503 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %504 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom565 = sext i32 %504 to i64
  %arrayidx566 = getelementptr inbounds double, ptr %503, i64 %idxprom565
  %505 = load double, ptr %arrayidx566, align 8, !tbaa !23
  %mul567 = fmul double %502, %505
  store double %mul567, ptr %aw, align 8, !tbaa !23
  %506 = load double, ptr %aw, align 8, !tbaa !23
  %507 = load double, ptr %sum, align 8, !tbaa !23
  %div568 = fdiv double %506, %507
  store double %div568, ptr %aw, align 8, !tbaa !23
  %508 = load double, ptr %aw, align 8, !tbaa !23
  %509 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %510 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom569 = sext i32 %510 to i64
  %arrayidx570 = getelementptr inbounds double, ptr %509, i64 %idxprom569
  %511 = load double, ptr %arrayidx570, align 8, !tbaa !23
  %add571 = fadd double %511, %508
  store double %add571, ptr %arrayidx570, align 8, !tbaa !23
  br label %for.end575

if.end572:                                        ; preds = %for.body559
  br label %for.inc573

for.inc573:                                       ; preds = %if.end572
  %512 = load i32, ptr %pp, align 4, !tbaa !8
  %inc574 = add nsw i32 %512, 1
  store i32 %inc574, ptr %pp, align 4, !tbaa !8
  br label %for.cond553, !llvm.loop !113

for.end575:                                       ; preds = %if.then564, %for.cond553
  br label %for.inc576

for.inc576:                                       ; preds = %for.end575
  %513 = load i32, ptr %k, align 4, !tbaa !8
  %inc577 = add nsw i32 %513, 1
  store i32 %inc577, ptr %k, align 4, !tbaa !8
  br label %for.cond542, !llvm.loop !114

for.end578:                                       ; preds = %for.cond542
  br label %if.end579

if.end579:                                        ; preds = %for.end578, %if.end383
  %514 = load i32, ptr %dist_coarse, align 4, !tbaa !8
  %tobool580 = icmp ne i32 %514, 0
  br i1 %tobool580, label %if.then581, label %if.end623

if.then581:                                       ; preds = %if.end579
  %515 = load double, ptr %a_ij, align 8, !tbaa !23
  %516 = load i32, ptr %p_num_diag_elements, align 4, !tbaa !8
  %517 = load i32, ptr %p_num_offd_elements, align 4, !tbaa !8
  %add582 = add nsw i32 %516, %517
  %conv583 = sitofp i32 %add582 to double
  %div584 = fdiv double %515, %conv583
  store double %div584, ptr %aw, align 8, !tbaa !23
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %518 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %519 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom585 = sext i32 %519 to i64
  %arrayidx586 = getelementptr inbounds i32, ptr %518, i64 %idxprom585
  %520 = load i32, ptr %arrayidx586, align 4, !tbaa !8
  store i32 %520, ptr %kk, align 4, !tbaa !8
  br label %for.cond587

for.cond587:                                      ; preds = %for.inc601, %if.then581
  %521 = load i32, ptr %kk, align 4, !tbaa !8
  %522 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %523 = load i32, ptr %i, align 4, !tbaa !8
  %add588 = add nsw i32 %523, 1
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds i32, ptr %522, i64 %idxprom589
  %524 = load i32, ptr %arrayidx590, align 4, !tbaa !8
  %cmp591 = icmp slt i32 %521, %524
  br i1 %cmp591, label %for.body593, label %for.end603

for.body593:                                      ; preds = %for.cond587
  %525 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %526 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom594 = sext i32 %526 to i64
  %arrayidx595 = getelementptr inbounds i32, ptr %525, i64 %idxprom594
  %527 = load i32, ptr %arrayidx595, align 4, !tbaa !8
  %528 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add596 = add nsw i32 %527, %528
  store i32 %add596, ptr %cur_spot, align 4, !tbaa !8
  %529 = load double, ptr %aw, align 8, !tbaa !23
  %530 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %531 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom597 = sext i32 %531 to i64
  %arrayidx598 = getelementptr inbounds double, ptr %530, i64 %idxprom597
  %532 = load double, ptr %arrayidx598, align 8, !tbaa !23
  %add599 = fadd double %532, %529
  store double %add599, ptr %arrayidx598, align 8, !tbaa !23
  %533 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc600 = add nsw i32 %533, 1
  store i32 %inc600, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc601

for.inc601:                                       ; preds = %for.body593
  %534 = load i32, ptr %kk, align 4, !tbaa !8
  %inc602 = add nsw i32 %534, 1
  store i32 %inc602, ptr %kk, align 4, !tbaa !8
  br label %for.cond587, !llvm.loop !115

for.end603:                                       ; preds = %for.cond587
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %535 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %536 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom604 = sext i32 %536 to i64
  %arrayidx605 = getelementptr inbounds i32, ptr %535, i64 %idxprom604
  %537 = load i32, ptr %arrayidx605, align 4, !tbaa !8
  store i32 %537, ptr %kk, align 4, !tbaa !8
  br label %for.cond606

for.cond606:                                      ; preds = %for.inc620, %for.end603
  %538 = load i32, ptr %kk, align 4, !tbaa !8
  %539 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %540 = load i32, ptr %i, align 4, !tbaa !8
  %add607 = add nsw i32 %540, 1
  %idxprom608 = sext i32 %add607 to i64
  %arrayidx609 = getelementptr inbounds i32, ptr %539, i64 %idxprom608
  %541 = load i32, ptr %arrayidx609, align 4, !tbaa !8
  %cmp610 = icmp slt i32 %538, %541
  br i1 %cmp610, label %for.body612, label %for.end622

for.body612:                                      ; preds = %for.cond606
  %542 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %543 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom613 = sext i32 %543 to i64
  %arrayidx614 = getelementptr inbounds i32, ptr %542, i64 %idxprom613
  %544 = load i32, ptr %arrayidx614, align 4, !tbaa !8
  %545 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add615 = add nsw i32 %544, %545
  store i32 %add615, ptr %cur_spot, align 4, !tbaa !8
  %546 = load double, ptr %aw, align 8, !tbaa !23
  %547 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %548 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom616 = sext i32 %548 to i64
  %arrayidx617 = getelementptr inbounds double, ptr %547, i64 %idxprom616
  %549 = load double, ptr %arrayidx617, align 8, !tbaa !23
  %add618 = fadd double %549, %546
  store double %add618, ptr %arrayidx617, align 8, !tbaa !23
  %550 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc619 = add nsw i32 %550, 1
  store i32 %inc619, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc620

for.inc620:                                       ; preds = %for.body612
  %551 = load i32, ptr %kk, align 4, !tbaa !8
  %inc621 = add nsw i32 %551, 1
  store i32 %inc621, ptr %kk, align 4, !tbaa !8
  br label %for.cond606, !llvm.loop !116

for.end622:                                       ; preds = %for.cond606
  br label %if.end623

if.end623:                                        ; preds = %for.end622, %if.end579
  br label %for.inc624

for.inc624:                                       ; preds = %if.end623, %for.end500, %if.then349
  %552 = load i32, ptr %j, align 4, !tbaa !8
  %inc625 = add nsw i32 %552, 1
  store i32 %inc625, ptr %j, align 4, !tbaa !8
  br label %for.cond336, !llvm.loop !117

for.end626:                                       ; preds = %for.cond336
  %553 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %554 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom627 = sext i32 %554 to i64
  %arrayidx628 = getelementptr inbounds i32, ptr %553, i64 %idxprom627
  %555 = load i32, ptr %arrayidx628, align 4, !tbaa !8
  store i32 %555, ptr %j, align 4, !tbaa !8
  br label %for.cond629

for.cond629:                                      ; preds = %for.inc924, %for.end626
  %556 = load i32, ptr %j, align 4, !tbaa !8
  %557 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %558 = load i32, ptr %i, align 4, !tbaa !8
  %add630 = add nsw i32 %558, 1
  %idxprom631 = sext i32 %add630 to i64
  %arrayidx632 = getelementptr inbounds i32, ptr %557, i64 %idxprom631
  %559 = load i32, ptr %arrayidx632, align 4, !tbaa !8
  %cmp633 = icmp slt i32 %556, %559
  br i1 %cmp633, label %for.body635, label %for.end926

for.body635:                                      ; preds = %for.cond629
  %560 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %561 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom636 = sext i32 %561 to i64
  %arrayidx637 = getelementptr inbounds i32, ptr %560, i64 %idxprom636
  %562 = load i32, ptr %arrayidx637, align 4, !tbaa !8
  store i32 %562, ptr %j_point, align 4, !tbaa !8
  %563 = load i32, ptr %fcn_num, align 4, !tbaa !8
  %564 = load ptr, ptr %dof_func_offd, align 8, !tbaa !4
  %565 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom638 = sext i32 %565 to i64
  %arrayidx639 = getelementptr inbounds i32, ptr %564, i64 %idxprom638
  %566 = load i32, ptr %arrayidx639, align 4, !tbaa !8
  %cmp640 = icmp ne i32 %563, %566
  br i1 %cmp640, label %if.then642, label %if.end643

if.then642:                                       ; preds = %for.body635
  br label %for.inc924

if.end643:                                        ; preds = %for.body635
  store i32 0, ptr %dist_coarse, align 4, !tbaa !8
  %567 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %568 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom644 = sext i32 %568 to i64
  %arrayidx645 = getelementptr inbounds double, ptr %567, i64 %idxprom644
  %569 = load double, ptr %arrayidx645, align 8, !tbaa !23
  store double %569, ptr %a_ij, align 8, !tbaa !23
  store i32 0, ptr %found, align 4, !tbaa !8
  %570 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %571 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom646 = sext i32 %571 to i64
  %arrayidx647 = getelementptr inbounds i32, ptr %570, i64 %idxprom646
  %572 = load i32, ptr %arrayidx647, align 4, !tbaa !8
  %cmp648 = icmp sge i32 %572, 0
  br i1 %cmp648, label %if.then650, label %if.else679

if.then650:                                       ; preds = %if.end643
  %573 = load ptr, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  %574 = load i32, ptr %j_point, align 4, !tbaa !8
  %idxprom651 = sext i32 %574 to i64
  %arrayidx652 = getelementptr inbounds i32, ptr %573, i64 %idxprom651
  %575 = load i32, ptr %arrayidx652, align 4, !tbaa !8
  store i32 %575, ptr %big_j_point_c, align 4, !tbaa !8
  %576 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %577 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom653 = sext i32 %577 to i64
  %arrayidx654 = getelementptr inbounds i32, ptr %576, i64 %idxprom653
  %578 = load i32, ptr %arrayidx654, align 4, !tbaa !8
  store i32 %578, ptr %k, align 4, !tbaa !8
  br label %for.cond655

for.cond655:                                      ; preds = %for.inc673, %if.then650
  %579 = load i32, ptr %k, align 4, !tbaa !8
  %580 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %581 = load i32, ptr %i, align 4, !tbaa !8
  %add656 = add nsw i32 %581, 1
  %idxprom657 = sext i32 %add656 to i64
  %arrayidx658 = getelementptr inbounds i32, ptr %580, i64 %idxprom657
  %582 = load i32, ptr %arrayidx658, align 4, !tbaa !8
  %cmp659 = icmp slt i32 %579, %582
  br i1 %cmp659, label %for.body661, label %for.end675

for.body661:                                      ; preds = %for.cond655
  %583 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %584 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom662 = sext i32 %584 to i64
  %arrayidx663 = getelementptr inbounds i32, ptr %583, i64 %idxprom662
  %585 = load i32, ptr %arrayidx663, align 4, !tbaa !8
  store i32 %585, ptr %index, align 4, !tbaa !8
  %586 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %587 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom664 = sext i32 %587 to i64
  %arrayidx665 = getelementptr inbounds i32, ptr %586, i64 %idxprom664
  %588 = load i32, ptr %arrayidx665, align 4, !tbaa !8
  store i32 %588, ptr %big_index, align 4, !tbaa !8
  %589 = load i32, ptr %big_index, align 4, !tbaa !8
  %590 = load i32, ptr %big_j_point_c, align 4, !tbaa !8
  %cmp666 = icmp eq i32 %589, %590
  br i1 %cmp666, label %if.then668, label %if.end672

if.then668:                                       ; preds = %for.body661
  %591 = load double, ptr %a_ij, align 8, !tbaa !23
  %592 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %593 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom669 = sext i32 %593 to i64
  %arrayidx670 = getelementptr inbounds double, ptr %592, i64 %idxprom669
  %594 = load double, ptr %arrayidx670, align 8, !tbaa !23
  %add671 = fadd double %594, %591
  store double %add671, ptr %arrayidx670, align 8, !tbaa !23
  store i32 1, ptr %found, align 4, !tbaa !8
  br label %for.end675

if.end672:                                        ; preds = %for.body661
  br label %for.inc673

for.inc673:                                       ; preds = %if.end672
  %595 = load i32, ptr %k, align 4, !tbaa !8
  %inc674 = add nsw i32 %595, 1
  store i32 %inc674, ptr %k, align 4, !tbaa !8
  br label %for.cond655, !llvm.loop !118

for.end675:                                       ; preds = %if.then668, %for.cond655
  %596 = load i32, ptr %found, align 4, !tbaa !8
  %tobool676 = icmp ne i32 %596, 0
  br i1 %tobool676, label %if.end678, label %if.then677

if.then677:                                       ; preds = %for.end675
  store i32 1, ptr %dist_coarse, align 4, !tbaa !8
  br label %if.end678

if.end678:                                        ; preds = %if.then677, %for.end675
  br label %if.end879

if.else679:                                       ; preds = %if.end643
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !23
  %597 = load i32, ptr %j_point, align 4, !tbaa !8
  store i32 %597, ptr %j_ext_index, align 4, !tbaa !8
  %598 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %599 = load i32, ptr %j_ext_index, align 4, !tbaa !8
  %idxprom680 = sext i32 %599 to i64
  %arrayidx681 = getelementptr inbounds i32, ptr %598, i64 %idxprom680
  %600 = load i32, ptr %arrayidx681, align 4, !tbaa !8
  store i32 %600, ptr %pp, align 4, !tbaa !8
  br label %for.cond682

for.cond682:                                      ; preds = %for.inc740, %if.else679
  %601 = load i32, ptr %pp, align 4, !tbaa !8
  %602 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %603 = load i32, ptr %j_ext_index, align 4, !tbaa !8
  %add683 = add nsw i32 %603, 1
  %idxprom684 = sext i32 %add683 to i64
  %arrayidx685 = getelementptr inbounds i32, ptr %602, i64 %idxprom684
  %604 = load i32, ptr %arrayidx685, align 4, !tbaa !8
  %cmp686 = icmp slt i32 %601, %604
  br i1 %cmp686, label %for.body688, label %for.end742

for.body688:                                      ; preds = %for.cond682
  %605 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %606 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom689 = sext i32 %606 to i64
  %arrayidx690 = getelementptr inbounds i32, ptr %605, i64 %idxprom689
  %607 = load i32, ptr %arrayidx690, align 4, !tbaa !8
  store i32 %607, ptr %p_point, align 4, !tbaa !8
  %608 = load i32, ptr %p_point, align 4, !tbaa !8
  %cmp691 = icmp sgt i32 %608, -1
  br i1 %cmp691, label %if.then693, label %if.else715

if.then693:                                       ; preds = %for.body688
  %609 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %610 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom694 = sext i32 %610 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %609, i64 %idxprom694
  %611 = load i32, ptr %arrayidx695, align 4, !tbaa !8
  store i32 %611, ptr %k, align 4, !tbaa !8
  br label %for.cond696

for.cond696:                                      ; preds = %for.inc712, %if.then693
  %612 = load i32, ptr %k, align 4, !tbaa !8
  %613 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %614 = load i32, ptr %i, align 4, !tbaa !8
  %add697 = add nsw i32 %614, 1
  %idxprom698 = sext i32 %add697 to i64
  %arrayidx699 = getelementptr inbounds i32, ptr %613, i64 %idxprom698
  %615 = load i32, ptr %arrayidx699, align 4, !tbaa !8
  %cmp700 = icmp slt i32 %612, %615
  br i1 %cmp700, label %for.body702, label %for.end714

for.body702:                                      ; preds = %for.cond696
  %616 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %617 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom703 = sext i32 %617 to i64
  %arrayidx704 = getelementptr inbounds i32, ptr %616, i64 %idxprom703
  %618 = load i32, ptr %arrayidx704, align 4, !tbaa !8
  store i32 %618, ptr %k_point, align 4, !tbaa !8
  %619 = load i32, ptr %p_point, align 4, !tbaa !8
  %620 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp705 = icmp eq i32 %619, %620
  br i1 %cmp705, label %if.then707, label %if.end711

if.then707:                                       ; preds = %for.body702
  %621 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %622 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom708 = sext i32 %622 to i64
  %arrayidx709 = getelementptr inbounds double, ptr %621, i64 %idxprom708
  %623 = load double, ptr %arrayidx709, align 8, !tbaa !23
  %624 = load double, ptr %sum, align 8, !tbaa !23
  %add710 = fadd double %624, %623
  store double %add710, ptr %sum, align 8, !tbaa !23
  br label %for.end714

if.end711:                                        ; preds = %for.body702
  br label %for.inc712

for.inc712:                                       ; preds = %if.end711
  %625 = load i32, ptr %k, align 4, !tbaa !8
  %inc713 = add nsw i32 %625, 1
  store i32 %inc713, ptr %k, align 4, !tbaa !8
  br label %for.cond696, !llvm.loop !119

for.end714:                                       ; preds = %if.then707, %for.cond696
  br label %if.end739

if.else715:                                       ; preds = %for.body688
  %626 = load i32, ptr %p_point, align 4, !tbaa !8
  %sub716 = sub nsw i32 0, %626
  %sub717 = sub nsw i32 %sub716, 1
  store i32 %sub717, ptr %p_point, align 4, !tbaa !8
  %627 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %628 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom718 = sext i32 %628 to i64
  %arrayidx719 = getelementptr inbounds i32, ptr %627, i64 %idxprom718
  %629 = load i32, ptr %arrayidx719, align 4, !tbaa !8
  store i32 %629, ptr %k, align 4, !tbaa !8
  br label %for.cond720

for.cond720:                                      ; preds = %for.inc736, %if.else715
  %630 = load i32, ptr %k, align 4, !tbaa !8
  %631 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %632 = load i32, ptr %i, align 4, !tbaa !8
  %add721 = add nsw i32 %632, 1
  %idxprom722 = sext i32 %add721 to i64
  %arrayidx723 = getelementptr inbounds i32, ptr %631, i64 %idxprom722
  %633 = load i32, ptr %arrayidx723, align 4, !tbaa !8
  %cmp724 = icmp slt i32 %630, %633
  br i1 %cmp724, label %for.body726, label %for.end738

for.body726:                                      ; preds = %for.cond720
  %634 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %635 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom727 = sext i32 %635 to i64
  %arrayidx728 = getelementptr inbounds i32, ptr %634, i64 %idxprom727
  %636 = load i32, ptr %arrayidx728, align 4, !tbaa !8
  store i32 %636, ptr %k_point, align 4, !tbaa !8
  %637 = load i32, ptr %p_point, align 4, !tbaa !8
  %638 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp729 = icmp eq i32 %637, %638
  br i1 %cmp729, label %if.then731, label %if.end735

if.then731:                                       ; preds = %for.body726
  %639 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %640 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom732 = sext i32 %640 to i64
  %arrayidx733 = getelementptr inbounds double, ptr %639, i64 %idxprom732
  %641 = load double, ptr %arrayidx733, align 8, !tbaa !23
  %642 = load double, ptr %sum, align 8, !tbaa !23
  %add734 = fadd double %642, %641
  store double %add734, ptr %sum, align 8, !tbaa !23
  br label %for.end738

if.end735:                                        ; preds = %for.body726
  br label %for.inc736

for.inc736:                                       ; preds = %if.end735
  %643 = load i32, ptr %k, align 4, !tbaa !8
  %inc737 = add nsw i32 %643, 1
  store i32 %inc737, ptr %k, align 4, !tbaa !8
  br label %for.cond720, !llvm.loop !120

for.end738:                                       ; preds = %if.then731, %for.cond720
  br label %if.end739

if.end739:                                        ; preds = %for.end738, %for.end714
  br label %for.inc740

for.inc740:                                       ; preds = %if.end739
  %644 = load i32, ptr %pp, align 4, !tbaa !8
  %inc741 = add nsw i32 %644, 1
  store i32 %inc741, ptr %pp, align 4, !tbaa !8
  br label %for.cond682, !llvm.loop !121

for.end742:                                       ; preds = %for.cond682
  %645 = load double, ptr %sum, align 8, !tbaa !23
  %646 = call double @llvm.fabs.f64(double %645)
  %cmp743 = fcmp olt double %646, 0x3D719799812DEA11
  br i1 %cmp743, label %if.then745, label %if.end746

if.then745:                                       ; preds = %for.end742
  store double 1.000000e+00, ptr %sum, align 8, !tbaa !23
  store i32 1, ptr %use_alt_w, align 4, !tbaa !8
  br label %if.end746

if.end746:                                        ; preds = %if.then745, %for.end742
  %647 = load i32, ptr %use_alt_w, align 4, !tbaa !8
  %tobool747 = icmp ne i32 %647, 0
  br i1 %tobool747, label %if.then748, label %if.end790

if.then748:                                       ; preds = %if.end746
  %648 = load double, ptr %a_ij, align 8, !tbaa !23
  %649 = load i32, ptr %p_num_diag_elements, align 4, !tbaa !8
  %650 = load i32, ptr %p_num_offd_elements, align 4, !tbaa !8
  %add749 = add nsw i32 %649, %650
  %conv750 = sitofp i32 %add749 to double
  %div751 = fdiv double %648, %conv750
  store double %div751, ptr %aw, align 8, !tbaa !23
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %651 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %652 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom752 = sext i32 %652 to i64
  %arrayidx753 = getelementptr inbounds i32, ptr %651, i64 %idxprom752
  %653 = load i32, ptr %arrayidx753, align 4, !tbaa !8
  store i32 %653, ptr %kk, align 4, !tbaa !8
  br label %for.cond754

for.cond754:                                      ; preds = %for.inc768, %if.then748
  %654 = load i32, ptr %kk, align 4, !tbaa !8
  %655 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %656 = load i32, ptr %i, align 4, !tbaa !8
  %add755 = add nsw i32 %656, 1
  %idxprom756 = sext i32 %add755 to i64
  %arrayidx757 = getelementptr inbounds i32, ptr %655, i64 %idxprom756
  %657 = load i32, ptr %arrayidx757, align 4, !tbaa !8
  %cmp758 = icmp slt i32 %654, %657
  br i1 %cmp758, label %for.body760, label %for.end770

for.body760:                                      ; preds = %for.cond754
  %658 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %659 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom761 = sext i32 %659 to i64
  %arrayidx762 = getelementptr inbounds i32, ptr %658, i64 %idxprom761
  %660 = load i32, ptr %arrayidx762, align 4, !tbaa !8
  %661 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add763 = add nsw i32 %660, %661
  store i32 %add763, ptr %cur_spot, align 4, !tbaa !8
  %662 = load double, ptr %aw, align 8, !tbaa !23
  %663 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %664 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom764 = sext i32 %664 to i64
  %arrayidx765 = getelementptr inbounds double, ptr %663, i64 %idxprom764
  %665 = load double, ptr %arrayidx765, align 8, !tbaa !23
  %add766 = fadd double %665, %662
  store double %add766, ptr %arrayidx765, align 8, !tbaa !23
  %666 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc767 = add nsw i32 %666, 1
  store i32 %inc767, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc768

for.inc768:                                       ; preds = %for.body760
  %667 = load i32, ptr %kk, align 4, !tbaa !8
  %inc769 = add nsw i32 %667, 1
  store i32 %inc769, ptr %kk, align 4, !tbaa !8
  br label %for.cond754, !llvm.loop !122

for.end770:                                       ; preds = %for.cond754
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %668 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %669 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom771 = sext i32 %669 to i64
  %arrayidx772 = getelementptr inbounds i32, ptr %668, i64 %idxprom771
  %670 = load i32, ptr %arrayidx772, align 4, !tbaa !8
  store i32 %670, ptr %kk, align 4, !tbaa !8
  br label %for.cond773

for.cond773:                                      ; preds = %for.inc787, %for.end770
  %671 = load i32, ptr %kk, align 4, !tbaa !8
  %672 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %673 = load i32, ptr %i, align 4, !tbaa !8
  %add774 = add nsw i32 %673, 1
  %idxprom775 = sext i32 %add774 to i64
  %arrayidx776 = getelementptr inbounds i32, ptr %672, i64 %idxprom775
  %674 = load i32, ptr %arrayidx776, align 4, !tbaa !8
  %cmp777 = icmp slt i32 %671, %674
  br i1 %cmp777, label %for.body779, label %for.end789

for.body779:                                      ; preds = %for.cond773
  %675 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %676 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom780 = sext i32 %676 to i64
  %arrayidx781 = getelementptr inbounds i32, ptr %675, i64 %idxprom780
  %677 = load i32, ptr %arrayidx781, align 4, !tbaa !8
  %678 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add782 = add nsw i32 %677, %678
  store i32 %add782, ptr %cur_spot, align 4, !tbaa !8
  %679 = load double, ptr %aw, align 8, !tbaa !23
  %680 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %681 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom783 = sext i32 %681 to i64
  %arrayidx784 = getelementptr inbounds double, ptr %680, i64 %idxprom783
  %682 = load double, ptr %arrayidx784, align 8, !tbaa !23
  %add785 = fadd double %682, %679
  store double %add785, ptr %arrayidx784, align 8, !tbaa !23
  %683 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc786 = add nsw i32 %683, 1
  store i32 %inc786, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc787

for.inc787:                                       ; preds = %for.body779
  %684 = load i32, ptr %kk, align 4, !tbaa !8
  %inc788 = add nsw i32 %684, 1
  store i32 %inc788, ptr %kk, align 4, !tbaa !8
  br label %for.cond773, !llvm.loop !123

for.end789:                                       ; preds = %for.cond773
  br label %for.inc924

if.end790:                                        ; preds = %if.end746
  %685 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %686 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom791 = sext i32 %686 to i64
  %arrayidx792 = getelementptr inbounds i32, ptr %685, i64 %idxprom791
  %687 = load i32, ptr %arrayidx792, align 4, !tbaa !8
  store i32 %687, ptr %k, align 4, !tbaa !8
  br label %for.cond793

for.cond793:                                      ; preds = %for.inc831, %if.end790
  %688 = load i32, ptr %k, align 4, !tbaa !8
  %689 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %690 = load i32, ptr %i, align 4, !tbaa !8
  %add794 = add nsw i32 %690, 1
  %idxprom795 = sext i32 %add794 to i64
  %arrayidx796 = getelementptr inbounds i32, ptr %689, i64 %idxprom795
  %691 = load i32, ptr %arrayidx796, align 4, !tbaa !8
  %cmp797 = icmp slt i32 %688, %691
  br i1 %cmp797, label %for.body799, label %for.end833

for.body799:                                      ; preds = %for.cond793
  %692 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %693 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom800 = sext i32 %693 to i64
  %arrayidx801 = getelementptr inbounds i32, ptr %692, i64 %idxprom800
  %694 = load i32, ptr %arrayidx801, align 4, !tbaa !8
  store i32 %694, ptr %k_point, align 4, !tbaa !8
  %695 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %696 = load i32, ptr %j_ext_index, align 4, !tbaa !8
  %idxprom802 = sext i32 %696 to i64
  %arrayidx803 = getelementptr inbounds i32, ptr %695, i64 %idxprom802
  %697 = load i32, ptr %arrayidx803, align 4, !tbaa !8
  store i32 %697, ptr %pp, align 4, !tbaa !8
  br label %for.cond804

for.cond804:                                      ; preds = %for.inc828, %for.body799
  %698 = load i32, ptr %pp, align 4, !tbaa !8
  %699 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %700 = load i32, ptr %j_ext_index, align 4, !tbaa !8
  %add805 = add nsw i32 %700, 1
  %idxprom806 = sext i32 %add805 to i64
  %arrayidx807 = getelementptr inbounds i32, ptr %699, i64 %idxprom806
  %701 = load i32, ptr %arrayidx807, align 4, !tbaa !8
  %cmp808 = icmp slt i32 %698, %701
  br i1 %cmp808, label %for.body810, label %for.end830

for.body810:                                      ; preds = %for.cond804
  %702 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %703 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom811 = sext i32 %703 to i64
  %arrayidx812 = getelementptr inbounds i32, ptr %702, i64 %idxprom811
  %704 = load i32, ptr %arrayidx812, align 4, !tbaa !8
  store i32 %704, ptr %p_point, align 4, !tbaa !8
  %705 = load i32, ptr %p_point, align 4, !tbaa !8
  %cmp813 = icmp sgt i32 %705, -1
  br i1 %cmp813, label %if.then815, label %if.end827

if.then815:                                       ; preds = %for.body810
  %706 = load i32, ptr %p_point, align 4, !tbaa !8
  %707 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp816 = icmp eq i32 %706, %707
  br i1 %cmp816, label %if.then818, label %if.end826

if.then818:                                       ; preds = %if.then815
  %708 = load double, ptr %a_ij, align 8, !tbaa !23
  %709 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %710 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom819 = sext i32 %710 to i64
  %arrayidx820 = getelementptr inbounds double, ptr %709, i64 %idxprom819
  %711 = load double, ptr %arrayidx820, align 8, !tbaa !23
  %mul821 = fmul double %708, %711
  store double %mul821, ptr %aw, align 8, !tbaa !23
  %712 = load double, ptr %aw, align 8, !tbaa !23
  %713 = load double, ptr %sum, align 8, !tbaa !23
  %div822 = fdiv double %712, %713
  store double %div822, ptr %aw, align 8, !tbaa !23
  %714 = load double, ptr %aw, align 8, !tbaa !23
  %715 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %716 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom823 = sext i32 %716 to i64
  %arrayidx824 = getelementptr inbounds double, ptr %715, i64 %idxprom823
  %717 = load double, ptr %arrayidx824, align 8, !tbaa !23
  %add825 = fadd double %717, %714
  store double %add825, ptr %arrayidx824, align 8, !tbaa !23
  br label %for.end830

if.end826:                                        ; preds = %if.then815
  br label %if.end827

if.end827:                                        ; preds = %if.end826, %for.body810
  br label %for.inc828

for.inc828:                                       ; preds = %if.end827
  %718 = load i32, ptr %pp, align 4, !tbaa !8
  %inc829 = add nsw i32 %718, 1
  store i32 %inc829, ptr %pp, align 4, !tbaa !8
  br label %for.cond804, !llvm.loop !124

for.end830:                                       ; preds = %if.then818, %for.cond804
  br label %for.inc831

for.inc831:                                       ; preds = %for.end830
  %719 = load i32, ptr %k, align 4, !tbaa !8
  %inc832 = add nsw i32 %719, 1
  store i32 %inc832, ptr %k, align 4, !tbaa !8
  br label %for.cond793, !llvm.loop !125

for.end833:                                       ; preds = %for.cond793
  %720 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %721 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom834 = sext i32 %721 to i64
  %arrayidx835 = getelementptr inbounds i32, ptr %720, i64 %idxprom834
  %722 = load i32, ptr %arrayidx835, align 4, !tbaa !8
  store i32 %722, ptr %k, align 4, !tbaa !8
  br label %for.cond836

for.cond836:                                      ; preds = %for.inc876, %for.end833
  %723 = load i32, ptr %k, align 4, !tbaa !8
  %724 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %725 = load i32, ptr %i, align 4, !tbaa !8
  %add837 = add nsw i32 %725, 1
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx839 = getelementptr inbounds i32, ptr %724, i64 %idxprom838
  %726 = load i32, ptr %arrayidx839, align 4, !tbaa !8
  %cmp840 = icmp slt i32 %723, %726
  br i1 %cmp840, label %for.body842, label %for.end878

for.body842:                                      ; preds = %for.cond836
  %727 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %728 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom843 = sext i32 %728 to i64
  %arrayidx844 = getelementptr inbounds i32, ptr %727, i64 %idxprom843
  %729 = load i32, ptr %arrayidx844, align 4, !tbaa !8
  store i32 %729, ptr %k_point, align 4, !tbaa !8
  %730 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %731 = load i32, ptr %j_ext_index, align 4, !tbaa !8
  %idxprom845 = sext i32 %731 to i64
  %arrayidx846 = getelementptr inbounds i32, ptr %730, i64 %idxprom845
  %732 = load i32, ptr %arrayidx846, align 4, !tbaa !8
  store i32 %732, ptr %pp, align 4, !tbaa !8
  br label %for.cond847

for.cond847:                                      ; preds = %for.inc873, %for.body842
  %733 = load i32, ptr %pp, align 4, !tbaa !8
  %734 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %735 = load i32, ptr %j_ext_index, align 4, !tbaa !8
  %add848 = add nsw i32 %735, 1
  %idxprom849 = sext i32 %add848 to i64
  %arrayidx850 = getelementptr inbounds i32, ptr %734, i64 %idxprom849
  %736 = load i32, ptr %arrayidx850, align 4, !tbaa !8
  %cmp851 = icmp slt i32 %733, %736
  br i1 %cmp851, label %for.body853, label %for.end875

for.body853:                                      ; preds = %for.cond847
  %737 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %738 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom854 = sext i32 %738 to i64
  %arrayidx855 = getelementptr inbounds i32, ptr %737, i64 %idxprom854
  %739 = load i32, ptr %arrayidx855, align 4, !tbaa !8
  store i32 %739, ptr %p_point, align 4, !tbaa !8
  %740 = load i32, ptr %p_point, align 4, !tbaa !8
  %cmp856 = icmp slt i32 %740, 0
  br i1 %cmp856, label %if.then858, label %if.end872

if.then858:                                       ; preds = %for.body853
  %741 = load i32, ptr %p_point, align 4, !tbaa !8
  %sub859 = sub nsw i32 0, %741
  %sub860 = sub nsw i32 %sub859, 1
  store i32 %sub860, ptr %p_point, align 4, !tbaa !8
  %742 = load i32, ptr %p_point, align 4, !tbaa !8
  %743 = load i32, ptr %k_point, align 4, !tbaa !8
  %cmp861 = icmp eq i32 %742, %743
  br i1 %cmp861, label %if.then863, label %if.end871

if.then863:                                       ; preds = %if.then858
  %744 = load double, ptr %a_ij, align 8, !tbaa !23
  %745 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %746 = load i32, ptr %pp, align 4, !tbaa !8
  %idxprom864 = sext i32 %746 to i64
  %arrayidx865 = getelementptr inbounds double, ptr %745, i64 %idxprom864
  %747 = load double, ptr %arrayidx865, align 8, !tbaa !23
  %mul866 = fmul double %744, %747
  store double %mul866, ptr %aw, align 8, !tbaa !23
  %748 = load double, ptr %aw, align 8, !tbaa !23
  %749 = load double, ptr %sum, align 8, !tbaa !23
  %div867 = fdiv double %748, %749
  store double %div867, ptr %aw, align 8, !tbaa !23
  %750 = load double, ptr %aw, align 8, !tbaa !23
  %751 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %752 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom868 = sext i32 %752 to i64
  %arrayidx869 = getelementptr inbounds double, ptr %751, i64 %idxprom868
  %753 = load double, ptr %arrayidx869, align 8, !tbaa !23
  %add870 = fadd double %753, %750
  store double %add870, ptr %arrayidx869, align 8, !tbaa !23
  br label %for.end875

if.end871:                                        ; preds = %if.then858
  br label %if.end872

if.end872:                                        ; preds = %if.end871, %for.body853
  br label %for.inc873

for.inc873:                                       ; preds = %if.end872
  %754 = load i32, ptr %pp, align 4, !tbaa !8
  %inc874 = add nsw i32 %754, 1
  store i32 %inc874, ptr %pp, align 4, !tbaa !8
  br label %for.cond847, !llvm.loop !126

for.end875:                                       ; preds = %if.then863, %for.cond847
  br label %for.inc876

for.inc876:                                       ; preds = %for.end875
  %755 = load i32, ptr %k, align 4, !tbaa !8
  %inc877 = add nsw i32 %755, 1
  store i32 %inc877, ptr %k, align 4, !tbaa !8
  br label %for.cond836, !llvm.loop !127

for.end878:                                       ; preds = %for.cond836
  br label %if.end879

if.end879:                                        ; preds = %for.end878, %if.end678
  %756 = load i32, ptr %dist_coarse, align 4, !tbaa !8
  %tobool880 = icmp ne i32 %756, 0
  br i1 %tobool880, label %if.then881, label %if.end923

if.then881:                                       ; preds = %if.end879
  %757 = load double, ptr %a_ij, align 8, !tbaa !23
  %758 = load i32, ptr %p_num_diag_elements, align 4, !tbaa !8
  %759 = load i32, ptr %p_num_offd_elements, align 4, !tbaa !8
  %add882 = add nsw i32 %758, %759
  %conv883 = sitofp i32 %add882 to double
  %div884 = fdiv double %757, %conv883
  store double %div884, ptr %aw, align 8, !tbaa !23
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %760 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %761 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom885 = sext i32 %761 to i64
  %arrayidx886 = getelementptr inbounds i32, ptr %760, i64 %idxprom885
  %762 = load i32, ptr %arrayidx886, align 4, !tbaa !8
  store i32 %762, ptr %kk, align 4, !tbaa !8
  br label %for.cond887

for.cond887:                                      ; preds = %for.inc901, %if.then881
  %763 = load i32, ptr %kk, align 4, !tbaa !8
  %764 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %765 = load i32, ptr %i, align 4, !tbaa !8
  %add888 = add nsw i32 %765, 1
  %idxprom889 = sext i32 %add888 to i64
  %arrayidx890 = getelementptr inbounds i32, ptr %764, i64 %idxprom889
  %766 = load i32, ptr %arrayidx890, align 4, !tbaa !8
  %cmp891 = icmp slt i32 %763, %766
  br i1 %cmp891, label %for.body893, label %for.end903

for.body893:                                      ; preds = %for.cond887
  %767 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %768 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom894 = sext i32 %768 to i64
  %arrayidx895 = getelementptr inbounds i32, ptr %767, i64 %idxprom894
  %769 = load i32, ptr %arrayidx895, align 4, !tbaa !8
  %770 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add896 = add nsw i32 %769, %770
  store i32 %add896, ptr %cur_spot, align 4, !tbaa !8
  %771 = load double, ptr %aw, align 8, !tbaa !23
  %772 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %773 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom897 = sext i32 %773 to i64
  %arrayidx898 = getelementptr inbounds double, ptr %772, i64 %idxprom897
  %774 = load double, ptr %arrayidx898, align 8, !tbaa !23
  %add899 = fadd double %774, %771
  store double %add899, ptr %arrayidx898, align 8, !tbaa !23
  %775 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc900 = add nsw i32 %775, 1
  store i32 %inc900, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc901

for.inc901:                                       ; preds = %for.body893
  %776 = load i32, ptr %kk, align 4, !tbaa !8
  %inc902 = add nsw i32 %776, 1
  store i32 %inc902, ptr %kk, align 4, !tbaa !8
  br label %for.cond887, !llvm.loop !128

for.end903:                                       ; preds = %for.cond887
  store i32 0, ptr %kk_count, align 4, !tbaa !8
  %777 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %778 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom904 = sext i32 %778 to i64
  %arrayidx905 = getelementptr inbounds i32, ptr %777, i64 %idxprom904
  %779 = load i32, ptr %arrayidx905, align 4, !tbaa !8
  store i32 %779, ptr %kk, align 4, !tbaa !8
  br label %for.cond906

for.cond906:                                      ; preds = %for.inc920, %for.end903
  %780 = load i32, ptr %kk, align 4, !tbaa !8
  %781 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %782 = load i32, ptr %i, align 4, !tbaa !8
  %add907 = add nsw i32 %782, 1
  %idxprom908 = sext i32 %add907 to i64
  %arrayidx909 = getelementptr inbounds i32, ptr %781, i64 %idxprom908
  %783 = load i32, ptr %arrayidx909, align 4, !tbaa !8
  %cmp910 = icmp slt i32 %780, %783
  br i1 %cmp910, label %for.body912, label %for.end922

for.body912:                                      ; preds = %for.cond906
  %784 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %785 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom913 = sext i32 %785 to i64
  %arrayidx914 = getelementptr inbounds i32, ptr %784, i64 %idxprom913
  %786 = load i32, ptr %arrayidx914, align 4, !tbaa !8
  %787 = load i32, ptr %kk_count, align 4, !tbaa !8
  %add915 = add nsw i32 %786, %787
  store i32 %add915, ptr %cur_spot, align 4, !tbaa !8
  %788 = load double, ptr %aw, align 8, !tbaa !23
  %789 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %790 = load i32, ptr %cur_spot, align 4, !tbaa !8
  %idxprom916 = sext i32 %790 to i64
  %arrayidx917 = getelementptr inbounds double, ptr %789, i64 %idxprom916
  %791 = load double, ptr %arrayidx917, align 8, !tbaa !23
  %add918 = fadd double %791, %788
  store double %add918, ptr %arrayidx917, align 8, !tbaa !23
  %792 = load i32, ptr %kk_count, align 4, !tbaa !8
  %inc919 = add nsw i32 %792, 1
  store i32 %inc919, ptr %kk_count, align 4, !tbaa !8
  br label %for.inc920

for.inc920:                                       ; preds = %for.body912
  %793 = load i32, ptr %kk, align 4, !tbaa !8
  %inc921 = add nsw i32 %793, 1
  store i32 %inc921, ptr %kk, align 4, !tbaa !8
  br label %for.cond906, !llvm.loop !129

for.end922:                                       ; preds = %for.cond906
  br label %if.end923

if.end923:                                        ; preds = %for.end922, %if.end879
  br label %for.inc924

for.inc924:                                       ; preds = %if.end923, %for.end789, %if.then642
  %794 = load i32, ptr %j, align 4, !tbaa !8
  %inc925 = add nsw i32 %794, 1
  store i32 %inc925, ptr %j, align 4, !tbaa !8
  br label %for.cond629, !llvm.loop !130

for.end926:                                       ; preds = %for.cond629
  %795 = load double, ptr %diagonal, align 8, !tbaa !23
  %796 = call double @llvm.fabs.f64(double %795)
  %cmp927 = fcmp ogt double %796, 0.000000e+00
  br i1 %cmp927, label %if.then929, label %if.end1002

if.then929:                                       ; preds = %for.end926
  %797 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %798 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom930 = sext i32 %798 to i64
  %arrayidx931 = getelementptr inbounds i32, ptr %797, i64 %idxprom930
  %799 = load i32, ptr %arrayidx931, align 4, !tbaa !8
  store i32 %799, ptr %k, align 4, !tbaa !8
  br label %for.cond932

for.cond932:                                      ; preds = %for.inc945, %if.then929
  %800 = load i32, ptr %k, align 4, !tbaa !8
  %801 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %802 = load i32, ptr %i, align 4, !tbaa !8
  %add933 = add nsw i32 %802, 1
  %idxprom934 = sext i32 %add933 to i64
  %arrayidx935 = getelementptr inbounds i32, ptr %801, i64 %idxprom934
  %803 = load i32, ptr %arrayidx935, align 4, !tbaa !8
  %cmp936 = icmp slt i32 %800, %803
  br i1 %cmp936, label %for.body938, label %for.end947

for.body938:                                      ; preds = %for.cond932
  %804 = load double, ptr %diagonal, align 8, !tbaa !23
  %fneg = fneg double %804
  %805 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %806 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom939 = sext i32 %806 to i64
  %arrayidx940 = getelementptr inbounds double, ptr %805, i64 %idxprom939
  %807 = load double, ptr %arrayidx940, align 8, !tbaa !23
  %div941 = fdiv double %807, %fneg
  store double %div941, ptr %arrayidx940, align 8, !tbaa !23
  %808 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %809 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom942 = sext i32 %809 to i64
  %arrayidx943 = getelementptr inbounds double, ptr %808, i64 %idxprom942
  %810 = load double, ptr %arrayidx943, align 8, !tbaa !23
  %811 = load double, ptr %new_row_sum, align 8, !tbaa !23
  %add944 = fadd double %811, %810
  store double %add944, ptr %new_row_sum, align 8, !tbaa !23
  br label %for.inc945

for.inc945:                                       ; preds = %for.body938
  %812 = load i32, ptr %k, align 4, !tbaa !8
  %inc946 = add nsw i32 %812, 1
  store i32 %inc946, ptr %k, align 4, !tbaa !8
  br label %for.cond932, !llvm.loop !131

for.end947:                                       ; preds = %for.cond932
  %813 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %814 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom948 = sext i32 %814 to i64
  %arrayidx949 = getelementptr inbounds i32, ptr %813, i64 %idxprom948
  %815 = load i32, ptr %arrayidx949, align 4, !tbaa !8
  store i32 %815, ptr %k, align 4, !tbaa !8
  br label %for.cond950

for.cond950:                                      ; preds = %for.inc964, %for.end947
  %816 = load i32, ptr %k, align 4, !tbaa !8
  %817 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %818 = load i32, ptr %i, align 4, !tbaa !8
  %add951 = add nsw i32 %818, 1
  %idxprom952 = sext i32 %add951 to i64
  %arrayidx953 = getelementptr inbounds i32, ptr %817, i64 %idxprom952
  %819 = load i32, ptr %arrayidx953, align 4, !tbaa !8
  %cmp954 = icmp slt i32 %816, %819
  br i1 %cmp954, label %for.body956, label %for.end966

for.body956:                                      ; preds = %for.cond950
  %820 = load double, ptr %diagonal, align 8, !tbaa !23
  %fneg957 = fneg double %820
  %821 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %822 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom958 = sext i32 %822 to i64
  %arrayidx959 = getelementptr inbounds double, ptr %821, i64 %idxprom958
  %823 = load double, ptr %arrayidx959, align 8, !tbaa !23
  %div960 = fdiv double %823, %fneg957
  store double %div960, ptr %arrayidx959, align 8, !tbaa !23
  %824 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %825 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom961 = sext i32 %825 to i64
  %arrayidx962 = getelementptr inbounds double, ptr %824, i64 %idxprom961
  %826 = load double, ptr %arrayidx962, align 8, !tbaa !23
  %827 = load double, ptr %new_row_sum, align 8, !tbaa !23
  %add963 = fadd double %827, %826
  store double %add963, ptr %new_row_sum, align 8, !tbaa !23
  br label %for.inc964

for.inc964:                                       ; preds = %for.body956
  %828 = load i32, ptr %k, align 4, !tbaa !8
  %inc965 = add nsw i32 %828, 1
  store i32 %inc965, ptr %k, align 4, !tbaa !8
  br label %for.cond950, !llvm.loop !132

for.end966:                                       ; preds = %for.cond950
  %829 = load i32, ptr %scale_row, align 4, !tbaa !8
  %tobool967 = icmp ne i32 %829, 0
  br i1 %tobool967, label %if.then968, label %if.end1001

if.then968:                                       ; preds = %for.end966
  %830 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %831 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom969 = sext i32 %831 to i64
  %arrayidx970 = getelementptr inbounds i32, ptr %830, i64 %idxprom969
  %832 = load i32, ptr %arrayidx970, align 4, !tbaa !8
  store i32 %832, ptr %k, align 4, !tbaa !8
  br label %for.cond971

for.cond971:                                      ; preds = %for.inc982, %if.then968
  %833 = load i32, ptr %k, align 4, !tbaa !8
  %834 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %835 = load i32, ptr %i, align 4, !tbaa !8
  %add972 = add nsw i32 %835, 1
  %idxprom973 = sext i32 %add972 to i64
  %arrayidx974 = getelementptr inbounds i32, ptr %834, i64 %idxprom973
  %836 = load i32, ptr %arrayidx974, align 4, !tbaa !8
  %cmp975 = icmp slt i32 %833, %836
  br i1 %cmp975, label %for.body977, label %for.end984

for.body977:                                      ; preds = %for.cond971
  %837 = load double, ptr %orig_row_sum, align 8, !tbaa !23
  %838 = load double, ptr %new_row_sum, align 8, !tbaa !23
  %div978 = fdiv double %837, %838
  %839 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %840 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom979 = sext i32 %840 to i64
  %arrayidx980 = getelementptr inbounds double, ptr %839, i64 %idxprom979
  %841 = load double, ptr %arrayidx980, align 8, !tbaa !23
  %mul981 = fmul double %841, %div978
  store double %mul981, ptr %arrayidx980, align 8, !tbaa !23
  br label %for.inc982

for.inc982:                                       ; preds = %for.body977
  %842 = load i32, ptr %k, align 4, !tbaa !8
  %inc983 = add nsw i32 %842, 1
  store i32 %inc983, ptr %k, align 4, !tbaa !8
  br label %for.cond971, !llvm.loop !133

for.end984:                                       ; preds = %for.cond971
  %843 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %844 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom985 = sext i32 %844 to i64
  %arrayidx986 = getelementptr inbounds i32, ptr %843, i64 %idxprom985
  %845 = load i32, ptr %arrayidx986, align 4, !tbaa !8
  store i32 %845, ptr %k, align 4, !tbaa !8
  br label %for.cond987

for.cond987:                                      ; preds = %for.inc998, %for.end984
  %846 = load i32, ptr %k, align 4, !tbaa !8
  %847 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %848 = load i32, ptr %i, align 4, !tbaa !8
  %add988 = add nsw i32 %848, 1
  %idxprom989 = sext i32 %add988 to i64
  %arrayidx990 = getelementptr inbounds i32, ptr %847, i64 %idxprom989
  %849 = load i32, ptr %arrayidx990, align 4, !tbaa !8
  %cmp991 = icmp slt i32 %846, %849
  br i1 %cmp991, label %for.body993, label %for.end1000

for.body993:                                      ; preds = %for.cond987
  %850 = load double, ptr %orig_row_sum, align 8, !tbaa !23
  %851 = load double, ptr %new_row_sum, align 8, !tbaa !23
  %div994 = fdiv double %850, %851
  %852 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %853 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom995 = sext i32 %853 to i64
  %arrayidx996 = getelementptr inbounds double, ptr %852, i64 %idxprom995
  %854 = load double, ptr %arrayidx996, align 8, !tbaa !23
  %mul997 = fmul double %854, %div994
  store double %mul997, ptr %arrayidx996, align 8, !tbaa !23
  br label %for.inc998

for.inc998:                                       ; preds = %for.body993
  %855 = load i32, ptr %k, align 4, !tbaa !8
  %inc999 = add nsw i32 %855, 1
  store i32 %inc999, ptr %k, align 4, !tbaa !8
  br label %for.cond987, !llvm.loop !134

for.end1000:                                      ; preds = %for.cond987
  br label %if.end1001

if.end1001:                                       ; preds = %for.end1000, %for.end966
  br label %if.end1002

if.end1002:                                       ; preds = %if.end1001, %for.end926
  br label %if.end1003

if.end1003:                                       ; preds = %if.end1002, %for.end299
  br label %for.inc1004

for.inc1004:                                      ; preds = %if.end1003
  %856 = load i32, ptr %i, align 4, !tbaa !8
  %inc1005 = add nsw i32 %856, 1
  store i32 %inc1005, ptr %i, align 4, !tbaa !8
  br label %for.cond243, !llvm.loop !135

for.end1006:                                      ; preds = %for.cond243
  %857 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %858 = load i32, ptr %memory_location, align 4, !tbaa !86
  call void @hypre_Free(ptr noundef %857, i32 noundef %858)
  store ptr null, ptr %P_diag_data, align 8, !tbaa !4
  %859 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %860 = load i32, ptr %memory_location, align 4, !tbaa !86
  call void @hypre_Free(ptr noundef %859, i32 noundef %860)
  store ptr null, ptr %P_offd_data, align 8, !tbaa !4
  %861 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %862 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data1007 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %862, i32 0, i32 9
  store ptr %861, ptr %data1007, align 8, !tbaa !30
  %863 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %864 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data1008 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %864, i32 0, i32 9
  store ptr %863, ptr %data1008, align 8, !tbaa !30
  %865 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %865, i32 noundef 0)
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  %866 = load ptr, ptr %dof_func_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %866, i32 noundef 0)
  store ptr null, ptr %dof_func_offd, align 8, !tbaa !4
  %867 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %867, i32 noundef 0)
  store ptr null, ptr %fine_to_coarse, align 8, !tbaa !4
  %868 = load ptr, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %868, i32 noundef 0)
  store ptr null, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  %869 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %869, i32 noundef 0)
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  %870 = load ptr, ptr %big_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %870, i32 noundef 0)
  store ptr null, ptr %big_buf_data, align 8, !tbaa !4
  %871 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp1009 = icmp sgt i32 %871, 1
  br i1 %cmp1009, label %if.then1011, label %if.end1013

if.then1011:                                      ; preds = %for.end1006
  %872 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %call1012 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %872)
  br label %if.end1013

if.end1013:                                       ; preds = %if.then1011, %for.end1006
  %873 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_buf_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_buf_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_handle) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %myid) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends_A) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist_coarse) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_spot) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %kk_count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %kk) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %use_alt_w) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_row_sum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_row_sum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %scale_row) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_ij) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %aw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %diagonal) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %big_j_point_c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %big_index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %big_k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %p_point) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_point_c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_point) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k_point) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fine_to_coarse) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_ext_index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %coarse_counter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg_A) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg_P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_functions) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fine_to_coarse_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dof_func_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %CF_marker_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %p_num_offd_elements) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %p_num_diag_elements) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %fcn_num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_offd_pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j_diag_pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_offd_start) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_diag_start) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_location) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd_P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_P_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %P_offd_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %P_diag_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_rows_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_A_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %pp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret i32 %873
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %matrix) #6 {
entry:
  %matrix.addr = alloca ptr, align 8
  %memory_diag = alloca i32, align 4
  %memory_offd = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_diag) #7
  %0 = load ptr, ptr %matrix.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %diag, align 8, !tbaa !29
  %memory_location = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i32 0, i32 12
  %2 = load i32, ptr %memory_location, align 4, !tbaa !136
  store i32 %2, ptr %memory_diag, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_offd) #7
  %3 = load ptr, ptr %matrix.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %offd, align 8, !tbaa !36
  %memory_location1 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 12
  %5 = load i32, ptr %memory_location1, align 4, !tbaa !136
  store i32 %5, ptr %memory_offd, align 4, !tbaa !86
  %6 = load i32, ptr %memory_diag, align 4, !tbaa !86
  %7 = load i32, ptr %memory_offd, align 4, !tbaa !86
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %memory_diag, align 4, !tbaa !86
  %9 = load i32, ptr %memory_offd, align 4, !tbaa !86
  %call = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.6, i32 noundef %8, i32 noundef %9)
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %10 = load i32, ptr %memory_diag, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_diag) #7
  ret i32 %10
}

declare ptr @hypre_ParCSRMatrixExtractBExt(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @hypre_CSRMatrixDestroy(ptr noundef) #2

declare i32 @hypre_printf(ptr noundef, ...) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !9, i64 12}
!14 = !{!"hypre_ParCSRMatrix_struct", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !15, i64 128, !5, i64 136, !5, i64 144, !9, i64 152, !5, i64 160, !9, i64 168, !5, i64 176, !9, i64 184, !5, i64 192, !5, i64 200}
!15 = !{!"double", !6, i64 0}
!16 = !{!14, !5, i64 88}
!17 = !{!14, !5, i64 0}
!18 = !{!19, !5, i64 40}
!19 = !{!"hypre_ParVector_struct", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !9, i64 48, !9, i64 52, !5, i64 56}
!20 = !{!21, !9, i64 8}
!21 = !{!"", !5, i64 0, !9, i64 8, !9, i64 12, !6, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!22 = !{!21, !5, i64 0}
!23 = !{!15, !15, i64 0}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!14, !5, i64 32}
!30 = !{!31, !5, i64 64}
!31 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !5, i64 40, !5, i64 48, !9, i64 56, !5, i64 64, !5, i64 72, !9, i64 80, !6, i64 84}
!32 = !{!31, !5, i64 0}
!33 = !{!31, !5, i64 8}
!34 = !{!31, !9, i64 24}
!35 = !{!31, !9, i64 28}
!36 = !{!14, !5, i64 40}
!37 = !{!14, !5, i64 64}
!38 = !{!14, !5, i64 96}
!39 = !{!40, !5, i64 0}
!40 = !{!"_hypre_ParCSRCommPkg", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !9, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = !{!40, !9, i64 8}
!46 = !{!40, !5, i64 24}
!47 = !{!40, !5, i64 32}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = !{!14, !9, i64 8}
!80 = !{!31, !9, i64 32}
!81 = !{!14, !9, i64 116}
!82 = !{!14, !9, i64 120}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = !{!6, !6, i64 0}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = !{!14, !9, i64 20}
!96 = !{!31, !5, i64 16}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !11}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = !{!31, !6, i64 84}

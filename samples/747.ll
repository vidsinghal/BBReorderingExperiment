; ModuleID = 'samples/747.bc'
source_filename = "par_sv_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.hypre_ParCSRMatrix_struct = type { ptr, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i64], [2 x i64], ptr, ptr, i64, i64, double, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, ptr }
%struct.hypre_ParVector_struct = type { ptr, i64, i64, i64, [2 x i64], i64, ptr, i64, i64, ptr }
%struct.hypre_Vector = type { ptr, i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i64, i64, i64, ptr, ptr, i64, i64, ptr, ptr, i64, i32 }
%struct.hypre_IntArray = type { ptr, i64, i32 }
%struct._hypre_ParCSRCommPkg = type { ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }

@hypre__global_error = external global i64, align 8
@__const.hypre_BoomerAMG_GMExpandInterp.theta_2D = private unnamed_addr constant [2 x double] [double 5.000000e-01, double 5.000000e-01], align 16
@__const.hypre_BoomerAMG_GMExpandInterp.theta_3D = private unnamed_addr constant [3 x double] [double 0x3FD5555555555555, double 0x3FD5555555555555, double 0x3FD5555555555555], align 16
@.str = private unnamed_addr constant [16 x i8] c"par_sv_interp.c\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"WARNING - ROWS incorrectly ordered in hypre_BoomerAMG_GMExpandInterp!\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"hypre_BoomerAMG_GMExpandInterp: 1st Truncation error \0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Warning - diag Row Problem in hypre_BoomerAMG_GMExpandInterp!\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Warning - off-diag Row Problem in hypre_BoomerAMG_GMExpandInterp!\0A\00", align 1
@ompi_mpi_long_long_int = external global %struct.ompi_predefined_datatype_t, align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"WARNING - ROWS incorrectly ordered in hypre_BoomerAMGRefineInterp!\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Error: ParCSRMatrix Memory Location Diag (%d) != Offd (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"./../parcsr_mv/_hypre_parcsr_mv.h\00", align 1

; Function Attrs: nounwind uwtable
define i64 @hypre_BoomerAMGSmoothInterpVectors(ptr noundef %A, i64 noundef %num_smooth_vecs, ptr noundef %smooth_vecs, i64 noundef %smooth_steps) #0 {
entry:
  %retval = alloca i64, align 8
  %A.addr = alloca ptr, align 8
  %num_smooth_vecs.addr = alloca i64, align 8
  %smooth_vecs.addr = alloca ptr, align 8
  %smooth_steps.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %f = alloca ptr, align 8
  %v = alloca ptr, align 8
  %z = alloca ptr, align 8
  %new_vector = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %num_smooth_vecs, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  store ptr %smooth_vecs, ptr %smooth_vecs.addr, align 8, !tbaa !4
  store i64 %smooth_steps, ptr %smooth_steps.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector) #7
  %0 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  store i64 %1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %smooth_steps.addr, align 8, !tbaa !8
  %tobool = icmp ne i64 %2, 0
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
  %call4 = call i64 @hypre_ParVectorSetConstantValues(ptr noundef %6, double noundef 0.000000e+00)
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then1
  %7 = load i64, ptr %i, align 8, !tbaa !8
  %8 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp5 = icmp slt i64 %7, %8
  br i1 %cmp5, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %10 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %10
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %11, ptr %new_vector, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %12 = load i64, ptr %j, align 8, !tbaa !8
  %13 = load i64, ptr %smooth_steps.addr, align 8, !tbaa !8
  %cmp7 = icmp slt i64 %12, %13
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %f, align 8, !tbaa !4
  %16 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %17 = load ptr, ptr %v, align 8, !tbaa !4
  %18 = load ptr, ptr %z, align 8, !tbaa !4
  %call9 = call i64 @hypre_BoomerAMGRelax(ptr noundef %14, ptr noundef %15, ptr noundef null, i64 noundef 3, i64 noundef 0, double noundef 1.000000e+00, double noundef 1.000000e+00, ptr noundef null, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i64, ptr %j, align 8, !tbaa !8
  %inc = add nsw i64 %19, 1
  store i64 %inc, ptr %j, align 8, !tbaa !8
  br label %for.cond6, !llvm.loop !10

for.end:                                          ; preds = %for.cond6
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %20 = load i64, ptr %i, align 8, !tbaa !8
  %inc11 = add nsw i64 %20, 1
  store i64 %inc11, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end12:                                        ; preds = %for.cond
  %21 = load ptr, ptr %v, align 8, !tbaa !4
  %call13 = call i64 @hypre_ParVectorDestroy(ptr noundef %21)
  %22 = load ptr, ptr %f, align 8, !tbaa !4
  %call14 = call i64 @hypre_ParVectorDestroy(ptr noundef %22)
  %23 = load ptr, ptr %z, align 8, !tbaa !4
  %call15 = call i64 @hypre_ParVectorDestroy(ptr noundef %23)
  br label %if.end16

if.end16:                                         ; preds = %for.end12, %if.end
  %24 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  store i64 %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  %25 = load i64, ptr %retval, align 8
  ret i64 %25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_ParVectorInRangeOf(ptr noundef) #2

declare i64 @hypre_ParVectorSetConstantValues(ptr noundef, double noundef) #2

declare i64 @hypre_BoomerAMGRelax(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @hypre_ParVectorDestroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @hypre_BoomerAMGCoarsenInterpVectors(ptr noundef %P, i64 noundef %num_smooth_vecs, ptr noundef %smooth_vecs, ptr noundef %CF_marker, ptr noundef %new_smooth_vecs, i64 noundef %expand_level, i64 noundef %num_functions) #0 {
entry:
  %retval = alloca i64, align 8
  %P.addr = alloca ptr, align 8
  %num_smooth_vecs.addr = alloca i64, align 8
  %smooth_vecs.addr = alloca ptr, align 8
  %CF_marker.addr = alloca ptr, align 8
  %new_smooth_vecs.addr = alloca ptr, align 8
  %expand_level.addr = alloca i64, align 8
  %num_functions.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %n_new = alloca i64, align 8
  %starts = alloca ptr, align 8
  %n_old_local = alloca i64, align 8
  %counter = alloca i64, align 8
  %orig_nf = alloca i64, align 8
  %old_vector_data = alloca ptr, align 8
  %new_vector_data = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %old_vector = alloca ptr, align 8
  %new_vector = alloca ptr, align 8
  %new_vector_array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store i64 %num_smooth_vecs, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  store ptr %smooth_vecs, ptr %smooth_vecs.addr, align 8, !tbaa !4
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store ptr %new_smooth_vecs, ptr %new_smooth_vecs.addr, align 8, !tbaa !4
  store i64 %expand_level, ptr %expand_level.addr, align 8, !tbaa !8
  store i64 %num_functions, ptr %num_functions.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_new) #7
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %global_num_cols = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %global_num_cols, align 8, !tbaa !13
  store i64 %1, ptr %n_new, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %starts) #7
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %col_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %2, i32 0, i32 15
  %arraydecay = getelementptr inbounds [2 x i64], ptr %col_starts, i64 0, i64 0
  store ptr %arraydecay, ptr %starts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_old_local) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_nf) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_vector_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #7
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %comm1, align 8, !tbaa !16
  store ptr %4, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_vector) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vector_array) #7
  %5 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  store i64 %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %call = call ptr @hypre_CAlloc(i64 noundef %7, i64 noundef 8, i32 noundef 0)
  store ptr %call, ptr %new_vector_array, align 8, !tbaa !4
  %8 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %9, ptr %old_vector, align 8, !tbaa !4
  %10 = load ptr, ptr %old_vector, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %size = getelementptr inbounds %struct.hypre_Vector, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %size, align 8, !tbaa !19
  store i64 %12, ptr %n_old_local, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %14 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp2 = icmp slt i64 %13, %14
  br i1 %cmp2, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %comm, align 8, !tbaa !4
  %16 = load i64, ptr %n_new, align 8, !tbaa !8
  %17 = load ptr, ptr %starts, align 8, !tbaa !4
  %call3 = call ptr @hypre_ParVectorCreate(ptr noundef %15, i64 noundef %16, ptr noundef %17)
  store ptr %call3, ptr %new_vector, align 8, !tbaa !4
  %18 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %call4 = call i64 @hypre_ParVectorInitialize(ptr noundef %18)
  %19 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %local_vector5 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %local_vector5, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.hypre_Vector, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %data, align 8, !tbaa !21
  store ptr %21, ptr %new_vector_data, align 8, !tbaa !4
  %22 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %23 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds ptr, ptr %22, i64 %23
  %24 = load ptr, ptr %arrayidx6, align 8, !tbaa !4
  store ptr %24, ptr %old_vector, align 8, !tbaa !4
  %25 = load ptr, ptr %old_vector, align 8, !tbaa !4
  %local_vector7 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %local_vector7, align 8, !tbaa !17
  %data8 = getelementptr inbounds %struct.hypre_Vector, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %data8, align 8, !tbaa !21
  store ptr %27, ptr %old_vector_data, align 8, !tbaa !4
  store i64 0, ptr %counter, align 8, !tbaa !8
  %28 = load i64, ptr %expand_level.addr, align 8, !tbaa !8
  %tobool = icmp ne i64 %28, 0
  br i1 %tobool, label %if.then9, label %if.else39

if.then9:                                         ; preds = %for.body
  %29 = load i64, ptr %num_functions.addr, align 8, !tbaa !8
  %30 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %sub = sub nsw i64 %29, %30
  store i64 %sub, ptr %orig_nf, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc36, %if.then9
  %31 = load i64, ptr %j, align 8, !tbaa !8
  %32 = load i64, ptr %n_old_local, align 8, !tbaa !8
  %cmp11 = icmp slt i64 %31, %32
  br i1 %cmp11, label %for.body12, label %for.end38

for.body12:                                       ; preds = %for.cond10
  %33 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %34 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx13 = getelementptr inbounds i64, ptr %33, i64 %34
  %35 = load i64, ptr %arrayidx13, align 8, !tbaa !8
  %cmp14 = icmp sge i64 %35, 0
  br i1 %cmp14, label %if.then15, label %if.end35

if.then15:                                        ; preds = %for.body12
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.then15
  %36 = load i64, ptr %k, align 8, !tbaa !8
  %37 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %cmp17 = icmp slt i64 %36, %37
  br i1 %cmp17, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond16
  %38 = load ptr, ptr %old_vector_data, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !8
  %40 = load i64, ptr %k, align 8, !tbaa !8
  %add = add nsw i64 %39, %40
  %arrayidx19 = getelementptr inbounds double, ptr %38, i64 %add
  %41 = load double, ptr %arrayidx19, align 8, !tbaa !22
  %42 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %43 = load i64, ptr %counter, align 8, !tbaa !8
  %inc = add nsw i64 %43, 1
  store i64 %inc, ptr %counter, align 8, !tbaa !8
  %arrayidx20 = getelementptr inbounds double, ptr %42, i64 %43
  store double %41, ptr %arrayidx20, align 8, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body18
  %44 = load i64, ptr %k, align 8, !tbaa !8
  %inc21 = add nsw i64 %44, 1
  store i64 %inc21, ptr %k, align 8, !tbaa !8
  br label %for.cond16, !llvm.loop !23

for.end:                                          ; preds = %for.cond16
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc32, %for.end
  %45 = load i64, ptr %k, align 8, !tbaa !8
  %46 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp23 = icmp slt i64 %45, %46
  br i1 %cmp23, label %for.body24, label %for.end34

for.body24:                                       ; preds = %for.cond22
  %47 = load i64, ptr %k, align 8, !tbaa !8
  %48 = load i64, ptr %i, align 8, !tbaa !8
  %cmp25 = icmp eq i64 %47, %48
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %for.body24
  %49 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %50 = load i64, ptr %counter, align 8, !tbaa !8
  %inc27 = add nsw i64 %50, 1
  store i64 %inc27, ptr %counter, align 8, !tbaa !8
  %arrayidx28 = getelementptr inbounds double, ptr %49, i64 %50
  store double 1.000000e+00, ptr %arrayidx28, align 8, !tbaa !22
  br label %if.end31

if.else:                                          ; preds = %for.body24
  %51 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %52 = load i64, ptr %counter, align 8, !tbaa !8
  %inc29 = add nsw i64 %52, 1
  store i64 %inc29, ptr %counter, align 8, !tbaa !8
  %arrayidx30 = getelementptr inbounds double, ptr %51, i64 %52
  store double 0.000000e+00, ptr %arrayidx30, align 8, !tbaa !22
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %53 = load i64, ptr %k, align 8, !tbaa !8
  %inc33 = add nsw i64 %53, 1
  store i64 %inc33, ptr %k, align 8, !tbaa !8
  br label %for.cond22, !llvm.loop !24

for.end34:                                        ; preds = %for.cond22
  br label %if.end35

if.end35:                                         ; preds = %for.end34, %for.body12
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %54 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %55 = load i64, ptr %j, align 8, !tbaa !8
  %add37 = add nsw i64 %55, %54
  store i64 %add37, ptr %j, align 8, !tbaa !8
  br label %for.cond10, !llvm.loop !25

for.end38:                                        ; preds = %for.cond10
  br label %if.end53

if.else39:                                        ; preds = %for.body
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc50, %if.else39
  %56 = load i64, ptr %j, align 8, !tbaa !8
  %57 = load i64, ptr %n_old_local, align 8, !tbaa !8
  %cmp41 = icmp slt i64 %56, %57
  br i1 %cmp41, label %for.body42, label %for.end52

for.body42:                                       ; preds = %for.cond40
  %58 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %59 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx43 = getelementptr inbounds i64, ptr %58, i64 %59
  %60 = load i64, ptr %arrayidx43, align 8, !tbaa !8
  %cmp44 = icmp sge i64 %60, 0
  br i1 %cmp44, label %if.then45, label %if.end49

if.then45:                                        ; preds = %for.body42
  %61 = load ptr, ptr %old_vector_data, align 8, !tbaa !4
  %62 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx46 = getelementptr inbounds double, ptr %61, i64 %62
  %63 = load double, ptr %arrayidx46, align 8, !tbaa !22
  %64 = load ptr, ptr %new_vector_data, align 8, !tbaa !4
  %65 = load i64, ptr %counter, align 8, !tbaa !8
  %inc47 = add nsw i64 %65, 1
  store i64 %inc47, ptr %counter, align 8, !tbaa !8
  %arrayidx48 = getelementptr inbounds double, ptr %64, i64 %65
  store double %63, ptr %arrayidx48, align 8, !tbaa !22
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %for.body42
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %66 = load i64, ptr %j, align 8, !tbaa !8
  %inc51 = add nsw i64 %66, 1
  store i64 %inc51, ptr %j, align 8, !tbaa !8
  br label %for.cond40, !llvm.loop !26

for.end52:                                        ; preds = %for.cond40
  br label %if.end53

if.end53:                                         ; preds = %for.end52, %for.end38
  %67 = load ptr, ptr %new_vector, align 8, !tbaa !4
  %68 = load ptr, ptr %new_vector_array, align 8, !tbaa !4
  %69 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx54 = getelementptr inbounds ptr, ptr %68, i64 %69
  store ptr %67, ptr %arrayidx54, align 8, !tbaa !4
  br label %for.inc55

for.inc55:                                        ; preds = %if.end53
  %70 = load i64, ptr %i, align 8, !tbaa !8
  %inc56 = add nsw i64 %70, 1
  store i64 %inc56, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !27

for.end57:                                        ; preds = %for.cond
  %71 = load ptr, ptr %new_vector_array, align 8, !tbaa !4
  %72 = load ptr, ptr %new_smooth_vecs.addr, align 8, !tbaa !4
  store ptr %71, ptr %72, align 8, !tbaa !4
  %73 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  store i64 %73, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end57, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector_array) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_vector) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vector_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_vector_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_nf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_old_local) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %starts) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  %74 = load i64, ptr %retval, align 8
  ret i64 %74
}

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

declare ptr @hypre_ParVectorCreate(ptr noundef, i64 noundef, ptr noundef) #2

declare i64 @hypre_ParVectorInitialize(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i64 @hypre_BoomerAMG_GMExpandInterp(ptr noundef %A, ptr noundef %P, i64 noundef %num_smooth_vecs, ptr noundef %smooth_vecs, ptr noundef %nf, ptr noundef %dof_func, ptr noundef %coarse_dof_func, i64 noundef %variant, i64 noundef %level, double noundef %abs_trunc, ptr noundef %weights, i64 noundef %q_max, ptr noundef %CF_marker, i64 noundef %interp_vec_first_level) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %num_smooth_vecs.addr = alloca i64, align 8
  %smooth_vecs.addr = alloca ptr, align 8
  %nf.addr = alloca ptr, align 8
  %dof_func.addr = alloca ptr, align 8
  %coarse_dof_func.addr = alloca ptr, align 8
  %variant.addr = alloca i64, align 8
  %level.addr = alloca i64, align 8
  %abs_trunc.addr = alloca double, align 8
  %weights.addr = alloca ptr, align 8
  %q_max.addr = alloca i64, align 8
  %CF_marker.addr = alloca ptr, align 8
  %interp_vec_first_level.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %new_P = alloca ptr, align 8
  %P_diag = alloca ptr, align 8
  %P_diag_data = alloca ptr, align 8
  %P_diag_i = alloca ptr, align 8
  %P_diag_j = alloca ptr, align 8
  %num_rows_P = alloca i64, align 8
  %num_cols_P = alloca i64, align 8
  %P_diag_size = alloca i64, align 8
  %P_offd = alloca ptr, align 8
  %P_offd_i = alloca ptr, align 8
  %P_offd_size = alloca i64, align 8
  %P_offd_data = alloca ptr, align 8
  %P_offd_j = alloca ptr, align 8
  %num_cols_P_offd = alloca i64, align 8
  %col_map_offd_P = alloca ptr, align 8
  %col_starts = alloca ptr, align 8
  %new_col_map_offd_P = alloca ptr, align 8
  %comm_pkg = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %num_sends = alloca i64, align 8
  %new_nnz_diag = alloca i64, align 8
  %new_nnz_offd = alloca i64, align 8
  %orig_diag_start = alloca i64, align 8
  %orig_offd_start = alloca i64, align 8
  %j_diag_pos = alloca i64, align 8
  %j_offd_pos = alloca i64, align 8
  %nnz_diag = alloca i64, align 8
  %nnz_offd = alloca i64, align 8
  %fcn_num = alloca i64, align 8
  %num_elements = alloca i64, align 8
  %num_diag_elements = alloca i64, align 8
  %num_offd_elements = alloca i64, align 8
  %P_diag_j_new = alloca ptr, align 8
  %P_diag_i_new = alloca ptr, align 8
  %P_offd_i_new = alloca ptr, align 8
  %P_offd_j_new = alloca ptr, align 8
  %P_offd_j_big = alloca ptr, align 8
  %P_diag_data_new = alloca ptr, align 8
  %P_offd_data_new = alloca ptr, align 8
  %nv = alloca i64, align 8
  %ncv = alloca i64, align 8
  %ncv_peru = alloca i64, align 8
  %new_ncv = alloca i64, align 8
  %new_nf = alloca i64, align 8
  %myid = alloca i64, align 8
  %num_procs = alloca i64, align 8
  %p_count_diag = alloca i64, align 8
  %p_count_offd = alloca i64, align 8
  %vector = alloca ptr, align 8
  %vec_data = alloca ptr, align 8
  %row_sum = alloca double, align 8
  %dbl_buf_data = alloca ptr, align 8
  %smooth_vec_offd = alloca ptr, align 8
  %offd_vec_data = alloca ptr, align 8
  %orig_nf = alloca i64, align 8
  %new_col_starts = alloca [2 x i64], align 16
  %num_functions = alloca i64, align 8
  %c_dof_func = alloca ptr, align 8
  %modify = alloca i64, align 8
  %add_q = alloca i64, align 8
  %value = alloca double, align 8
  %trunc_value = alloca double, align 8
  %theta_2D = alloca [2 x double], align 16
  %theta_3D = alloca [3 x double], align 16
  %theta = alloca ptr, align 8
  %q_count = alloca i64, align 8
  %use_trunc_data = alloca i64, align 8
  %q_data = alloca ptr, align 8
  %q_trunc_data = alloca ptr, align 8
  %is_q = alloca ptr, align 8
  %q_alloc = alloca i64, align 8
  %aux_j = alloca ptr, align 8
  %aux_data = alloca ptr, align 8
  %is_diag = alloca ptr, align 8
  %col_map = alloca ptr, align 8
  %coarse_to_fine = alloca ptr, align 8
  %coarse_counter = alloca i64, align 8
  %fine_index = alloca i64, align 8
  %index = alloca i64, align 8
  %big_index = alloca i64, align 8
  %big_new_col = alloca i64, align 8
  %cur_col = alloca i64, align 8
  %g_nc = alloca i64, align 8
  %new_col = alloca i64, align 8
  %num_lost_sv = alloca ptr, align 8
  %q_count_sv = alloca ptr, align 8
  %lost_counter_q_sv = alloca ptr, align 8
  %lost_value_sv = alloca ptr, align 8
  %q_dist_value_sv = alloca ptr, align 8
  %memory_location_P = alloca i32, align 4
  %start = alloca i64, align 8
  %c_index = alloca i64, align 8
  %comm_handle = alloca ptr, align 8
  %m = alloca i64, align 8
  %m_pos = alloca i64, align 8
  %m_val = alloca double, align 8
  %tot_num_lost = alloca i64, align 8
  %new_diag_pos = alloca i64, align 8
  %new_offd_pos = alloca i64, align 8
  %j_counter = alloca i64, align 8
  %new_j_counter = alloca i64, align 8
  %cnt_new_q_data = alloca i64, align 8
  %lost_counter_diag = alloca i64, align 8
  %lost_counter_offd = alloca i64, align 8
  %which_q = alloca i64, align 8
  %p_count_tot = alloca i64, align 8
  %spot = alloca i64, align 8
  %count = alloca i64, align 8
  %num_cols_P_offd1121 = alloca i64, align 8
  %P_offd_new_size = alloca i64, align 8
  %j_copy = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store i64 %num_smooth_vecs, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  store ptr %smooth_vecs, ptr %smooth_vecs.addr, align 8, !tbaa !4
  store ptr %nf, ptr %nf.addr, align 8, !tbaa !4
  store ptr %dof_func, ptr %dof_func.addr, align 8, !tbaa !4
  store ptr %coarse_dof_func, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  store i64 %variant, ptr %variant.addr, align 8, !tbaa !8
  store i64 %level, ptr %level.addr, align 8, !tbaa !8
  store double %abs_trunc, ptr %abs_trunc.addr, align 8, !tbaa !22
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !4
  store i64 %q_max, ptr %q_max.addr, align 8, !tbaa !8
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store i64 %interp_vec_first_level, ptr %interp_vec_first_level.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_P) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag) #7
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %diag, align 8, !tbaa !28
  store ptr %2, ptr %P_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data) #7
  %3 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %data, align 8, !tbaa !29
  store ptr %4, ptr %P_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_i) #7
  %5 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %i1 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %i1, align 8, !tbaa !31
  store ptr %6, ptr %P_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_j) #7
  %7 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %j2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %j2, align 8, !tbaa !32
  store ptr %8, ptr %P_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_rows_P) #7
  %9 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %num_rows, align 8, !tbaa !33
  store i64 %10, ptr %num_rows_P, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_cols_P) #7
  %11 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %num_cols, align 8, !tbaa !34
  store i64 %12, ptr %num_cols_P, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_size) #7
  %13 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %14 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %15, ptr %P_diag_size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd) #7
  %16 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %offd, align 8, !tbaa !35
  store ptr %18, ptr %P_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_i) #7
  %19 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %i3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %i3, align 8, !tbaa !31
  store ptr %20, ptr %P_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_size) #7
  %21 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %22 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds i64, ptr %21, i64 %22
  %23 = load i64, ptr %arrayidx4, align 8, !tbaa !8
  store i64 %23, ptr %P_offd_size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data) #7
  %24 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data5 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %data5, align 8, !tbaa !29
  store ptr %25, ptr %P_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j) #7
  %26 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %j6 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %j6, align 8, !tbaa !32
  store ptr %27, ptr %P_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_cols_P_offd) #7
  %28 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %num_cols7 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %28, i32 0, i32 4
  %29 = load i64, ptr %num_cols7, align 8, !tbaa !34
  store i64 %29, ptr %num_cols_P_offd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd_P) #7
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %30, align 8, !tbaa !4
  %col_map_offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %col_map_offd, align 8, !tbaa !36
  store ptr %32, ptr %col_map_offd_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_starts) #7
  %33 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %33, align 8, !tbaa !4
  %col_starts8 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %34, i32 0, i32 15
  %arraydecay = getelementptr inbounds [2 x i64], ptr %col_starts8, i64 0, i64 0
  store ptr %arraydecay, ptr %col_starts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_col_map_offd_P) #7
  store ptr null, ptr %new_col_map_offd_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #7
  %35 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %35, align 8, !tbaa !4
  %comm_pkg9 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %36, i32 0, i32 16
  %37 = load ptr, ptr %comm_pkg9, align 8, !tbaa !37
  store ptr %37, ptr %comm_pkg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_sends) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_nnz_diag) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_nnz_offd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_diag_start) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_offd_start) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_diag_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_offd_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nnz_diag) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nnz_offd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcn_num) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_elements) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_diag_elements) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_offd_elements) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_j_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_i_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_i_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j_big) #7
  store ptr null, ptr %P_offd_j_big, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncv_peru) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ncv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_nf) #7
  %38 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  %39 = load i64, ptr %38, align 8, !tbaa !8
  store i64 %39, ptr %new_nf, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %myid) #7
  store i64 0, ptr %myid, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_procs) #7
  store i64 1, ptr %num_procs, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_count_diag) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_count_offd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_sum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbl_buf_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %smooth_vec_offd) #7
  store ptr null, ptr %smooth_vec_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %offd_vec_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_nf) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %new_col_starts) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_functions) #7
  %40 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  %41 = load i64, ptr %40, align 8, !tbaa !8
  store i64 %41, ptr %num_functions, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_dof_func) #7
  %42 = load ptr, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %42, align 8, !tbaa !4
  %data10 = getelementptr inbounds %struct.hypre_IntArray, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %data10, align 8, !tbaa !38
  store ptr %44, ptr %c_dof_func, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %modify) #7
  store i64 0, ptr %modify, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %add_q) #7
  store i64 0, ptr %add_q, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %trunc_value) #7
  store double 0.000000e+00, ptr %trunc_value, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 16, ptr %theta_2D) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %theta_2D, ptr align 16 @__const.hypre_BoomerAMG_GMExpandInterp.theta_2D, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr %theta_3D) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %theta_3D, ptr align 16 @__const.hypre_BoomerAMG_GMExpandInterp.theta_3D, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %theta) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_count) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_trunc_data) #7
  store i64 0, ptr %use_trunc_data, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_data) #7
  store ptr null, ptr %q_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_trunc_data) #7
  store ptr null, ptr %q_trunc_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_q) #7
  store ptr null, ptr %is_q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_alloc) #7
  store i64 0, ptr %q_alloc, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %aux_j) #7
  store ptr null, ptr %aux_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aux_data) #7
  store ptr null, ptr %aux_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_diag) #7
  store ptr null, ptr %is_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %coarse_to_fine) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %coarse_counter) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fine_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_new_col) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_col) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %g_nc) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_col) #7
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_location_P) #7
  %45 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %45)
  store i32 %call, ptr %memory_location_P, align 4, !tbaa !40
  %46 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp = icmp slt i64 %46, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %47 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp11 = icmp sgt i64 %47, 2
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 2, ptr %variant.addr, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %48 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool = icmp ne ptr %48, null
  br i1 %tobool, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end
  %49 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %49, align 8, !tbaa !4
  %call13 = call i64 @hypre_MatvecCommPkgCreate(ptr noundef %50)
  %51 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %comm_pkg14 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %52, i32 0, i32 16
  %53 = load ptr, ptr %comm_pkg14, align 8, !tbaa !37
  store ptr %53, ptr %comm_pkg, align 8, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %54 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %comm16 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %comm16, align 8, !tbaa !41
  store ptr %55, ptr %comm, align 8, !tbaa !4
  %56 = load ptr, ptr %comm, align 8, !tbaa !4
  %call17 = call i64 @hypre_MPI_Comm_size(ptr noundef %56, ptr noundef %num_procs)
  %57 = load ptr, ptr %comm, align 8, !tbaa !4
  %call18 = call i64 @hypre_MPI_Comm_rank(ptr noundef %57, ptr noundef %myid)
  %58 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  store i64 %58, ptr %nv, align 8, !tbaa !8
  %59 = load i64, ptr %num_cols_P, align 8, !tbaa !8
  store i64 %59, ptr %ncv, align 8, !tbaa !8
  %60 = load i64, ptr %P_diag_size, align 8, !tbaa !8
  store i64 %60, ptr %nnz_diag, align 8, !tbaa !8
  %61 = load i64, ptr %P_offd_size, align 8, !tbaa !8
  store i64 %61, ptr %nnz_offd, align 8, !tbaa !8
  %62 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp19 = icmp eq i64 %62, 2
  br i1 %cmp19, label %if.then22, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end15
  %63 = load i64, ptr %level.addr, align 8, !tbaa !8
  %64 = load i64, ptr %interp_vec_first_level.addr, align 8, !tbaa !8
  %cmp21 = icmp eq i64 %63, %64
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false20, %if.end15
  store i64 1, ptr %add_q, align 8, !tbaa !8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %lor.lhs.false20
  %65 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp24 = icmp eq i64 %65, 2
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  store i64 1, ptr %modify, align 8, !tbaa !8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  %66 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp27 = icmp eq i64 %66, 1
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  store i64 1, ptr %use_trunc_data, align 8, !tbaa !8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  %67 = load i64, ptr %ncv, align 8, !tbaa !8
  %68 = load i64, ptr %num_functions, align 8, !tbaa !8
  %div = sdiv i64 %67, %68
  store i64 %div, ptr %ncv_peru, align 8, !tbaa !8
  %69 = load i64, ptr %level.addr, align 8, !tbaa !8
  %70 = load i64, ptr %interp_vec_first_level.addr, align 8, !tbaa !8
  %cmp30 = icmp eq i64 %69, %70
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %71 = load i64, ptr %num_functions, align 8, !tbaa !8
  store i64 %71, ptr %orig_nf, align 8, !tbaa !8
  br label %if.end32

if.else:                                          ; preds = %if.end29
  %72 = load i64, ptr %num_functions, align 8, !tbaa !8
  %73 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %sub = sub nsw i64 %72, %73
  store i64 %sub, ptr %orig_nf, align 8, !tbaa !8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then31
  %74 = load i64, ptr %modify, align 8, !tbaa !8
  %tobool33 = icmp ne i64 %74, 0
  br i1 %tobool33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.end32
  %75 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %cmp35 = icmp eq ptr %75, null
  br i1 %cmp35, label %if.then36, label %if.else43

if.then36:                                        ; preds = %if.then34
  %76 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %cmp37 = icmp eq i64 %76, 2
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.then36
  %arraydecay39 = getelementptr inbounds [2 x double], ptr %theta_2D, i64 0, i64 0
  store ptr %arraydecay39, ptr %theta, align 8, !tbaa !4
  br label %if.end42

if.else40:                                        ; preds = %if.then36
  %arraydecay41 = getelementptr inbounds [3 x double], ptr %theta_3D, i64 0, i64 0
  store ptr %arraydecay41, ptr %theta, align 8, !tbaa !4
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then38
  br label %if.end44

if.else43:                                        ; preds = %if.then34
  %77 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  store ptr %77, ptr %theta, align 8, !tbaa !4
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.end42
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end32
  %78 = load i64, ptr %ncv, align 8, !tbaa !8
  %call46 = call ptr @hypre_CAlloc(i64 noundef %78, i64 noundef 8, i32 noundef 0)
  store ptr %call46, ptr %col_map, align 8, !tbaa !4
  %79 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %tobool47 = icmp ne i64 %79, 0
  br i1 %tobool47, label %land.lhs.true, label %if.else53

land.lhs.true:                                    ; preds = %if.end45
  %80 = load i64, ptr %level.addr, align 8, !tbaa !8
  %81 = load i64, ptr %interp_vec_first_level.addr, align 8, !tbaa !8
  %cmp48 = icmp eq i64 %80, %81
  br i1 %cmp48, label %if.then49, label %if.else53

if.then49:                                        ; preds = %land.lhs.true
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then49
  %82 = load i64, ptr %i, align 8, !tbaa !8
  %83 = load i64, ptr %ncv, align 8, !tbaa !8
  %cmp50 = icmp slt i64 %82, %83
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i64, ptr %i, align 8, !tbaa !8
  %85 = load i64, ptr %i, align 8, !tbaa !8
  %86 = load i64, ptr %num_functions, align 8, !tbaa !8
  %div51 = sdiv i64 %85, %86
  %87 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %mul = mul nsw i64 %div51, %87
  %add = add nsw i64 %84, %mul
  %88 = load ptr, ptr %col_map, align 8, !tbaa !4
  %89 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx52 = getelementptr inbounds i64, ptr %88, i64 %89
  store i64 %add, ptr %arrayidx52, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %90 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %90, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else53:                                        ; preds = %land.lhs.true, %if.end45
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc58, %if.else53
  %91 = load i64, ptr %i, align 8, !tbaa !8
  %92 = load i64, ptr %ncv, align 8, !tbaa !8
  %cmp55 = icmp slt i64 %91, %92
  br i1 %cmp55, label %for.body56, label %for.end60

for.body56:                                       ; preds = %for.cond54
  %93 = load i64, ptr %i, align 8, !tbaa !8
  %94 = load ptr, ptr %col_map, align 8, !tbaa !4
  %95 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx57 = getelementptr inbounds i64, ptr %94, i64 %95
  store i64 %93, ptr %arrayidx57, align 8, !tbaa !8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body56
  %96 = load i64, ptr %i, align 8, !tbaa !8
  %inc59 = add nsw i64 %96, 1
  store i64 %inc59, ptr %i, align 8, !tbaa !8
  br label %for.cond54, !llvm.loop !44

for.end60:                                        ; preds = %for.cond54
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %for.end
  %97 = load i64, ptr %nnz_diag, align 8, !tbaa !8
  %98 = load i64, ptr %nnz_diag, align 8, !tbaa !8
  %99 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %mul62 = mul nsw i64 %98, %99
  %add63 = add nsw i64 %97, %mul62
  store i64 %add63, ptr %new_nnz_diag, align 8, !tbaa !8
  %100 = load i64, ptr %nnz_offd, align 8, !tbaa !8
  %101 = load i64, ptr %nnz_offd, align 8, !tbaa !8
  %102 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %mul64 = mul nsw i64 %101, %102
  %add65 = add nsw i64 %100, %mul64
  store i64 %add65, ptr %new_nnz_offd, align 8, !tbaa !8
  %103 = load i64, ptr %level.addr, align 8, !tbaa !8
  %104 = load i64, ptr %interp_vec_first_level.addr, align 8, !tbaa !8
  %cmp66 = icmp eq i64 %103, %104
  br i1 %cmp66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %if.end61
  %105 = load i64, ptr %ncv, align 8, !tbaa !8
  %106 = load i64, ptr %ncv_peru, align 8, !tbaa !8
  %107 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %mul68 = mul nsw i64 %106, %107
  %add69 = add nsw i64 %105, %mul68
  store i64 %add69, ptr %new_ncv, align 8, !tbaa !8
  br label %if.end71

if.else70:                                        ; preds = %if.end61
  %108 = load i64, ptr %ncv, align 8, !tbaa !8
  store i64 %108, ptr %new_ncv, align 8, !tbaa !8
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then67
  %109 = load i64, ptr %new_nnz_diag, align 8, !tbaa !8
  %110 = load i32, ptr %memory_location_P, align 4, !tbaa !40
  %call72 = call ptr @hypre_CAlloc(i64 noundef %109, i64 noundef 8, i32 noundef %110)
  store ptr %call72, ptr %P_diag_j_new, align 8, !tbaa !4
  %111 = load i64, ptr %new_nnz_diag, align 8, !tbaa !8
  %112 = load i32, ptr %memory_location_P, align 4, !tbaa !40
  %call73 = call ptr @hypre_CAlloc(i64 noundef %111, i64 noundef 8, i32 noundef %112)
  store ptr %call73, ptr %P_diag_data_new, align 8, !tbaa !4
  %113 = load i64, ptr %nv, align 8, !tbaa !8
  %add74 = add nsw i64 %113, 1
  %114 = load i32, ptr %memory_location_P, align 4, !tbaa !40
  %call75 = call ptr @hypre_CAlloc(i64 noundef %add74, i64 noundef 8, i32 noundef %114)
  store ptr %call75, ptr %P_diag_i_new, align 8, !tbaa !4
  %115 = load i64, ptr %new_nnz_offd, align 8, !tbaa !8
  %call76 = call ptr @hypre_CAlloc(i64 noundef %115, i64 noundef 8, i32 noundef 0)
  store ptr %call76, ptr %P_offd_j_big, align 8, !tbaa !4
  %116 = load i64, ptr %new_nnz_offd, align 8, !tbaa !8
  %117 = load i32, ptr %memory_location_P, align 4, !tbaa !40
  %call77 = call ptr @hypre_CAlloc(i64 noundef %116, i64 noundef 8, i32 noundef %117)
  store ptr %call77, ptr %P_offd_j_new, align 8, !tbaa !4
  %118 = load i64, ptr %new_nnz_offd, align 8, !tbaa !8
  %119 = load i32, ptr %memory_location_P, align 4, !tbaa !40
  %call78 = call ptr @hypre_CAlloc(i64 noundef %118, i64 noundef 8, i32 noundef %119)
  store ptr %call78, ptr %P_offd_data_new, align 8, !tbaa !4
  %120 = load i64, ptr %nv, align 8, !tbaa !8
  %add79 = add nsw i64 %120, 1
  %121 = load i32, ptr %memory_location_P, align 4, !tbaa !40
  %call80 = call ptr @hypre_CAlloc(i64 noundef %add79, i64 noundef 8, i32 noundef %121)
  store ptr %call80, ptr %P_offd_i_new, align 8, !tbaa !4
  %122 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds i64, ptr %122, i64 0
  %123 = load i64, ptr %arrayidx81, align 8, !tbaa !8
  %124 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds i64, ptr %124, i64 0
  store i64 %123, ptr %arrayidx82, align 8, !tbaa !8
  %125 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %arrayidx83 = getelementptr inbounds i64, ptr %125, i64 0
  %126 = load i64, ptr %arrayidx83, align 8, !tbaa !8
  %127 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds i64, ptr %127, i64 0
  store i64 %126, ptr %arrayidx84, align 8, !tbaa !8
  %128 = load i64, ptr %add_q, align 8, !tbaa !8
  %tobool85 = icmp ne i64 %128, 0
  br i1 %tobool85, label %if.then86, label %if.end123

if.then86:                                        ; preds = %if.end71
  %129 = load i64, ptr %q_max.addr, align 8, !tbaa !8
  %cmp87 = icmp sgt i64 %129, 0
  br i1 %cmp87, label %if.then90, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.then86
  %130 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp89 = fcmp ogt double %130, 0.000000e+00
  br i1 %cmp89, label %if.then90, label %if.end122

if.then90:                                        ; preds = %lor.lhs.false88, %if.then86
  store i64 0, ptr %q_count, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc106, %if.then90
  %131 = load i64, ptr %i, align 8, !tbaa !8
  %132 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %cmp92 = icmp slt i64 %131, %132
  br i1 %cmp92, label %for.body93, label %for.end108

for.body93:                                       ; preds = %for.cond91
  %133 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %134 = load i64, ptr %i, align 8, !tbaa !8
  %add94 = add nsw i64 %134, 1
  %arrayidx95 = getelementptr inbounds i64, ptr %133, i64 %add94
  %135 = load i64, ptr %arrayidx95, align 8, !tbaa !8
  %136 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %137 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx96 = getelementptr inbounds i64, ptr %136, i64 %137
  %138 = load i64, ptr %arrayidx96, align 8, !tbaa !8
  %sub97 = sub nsw i64 %135, %138
  store i64 %sub97, ptr %num_elements, align 8, !tbaa !8
  %139 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %140 = load i64, ptr %i, align 8, !tbaa !8
  %add98 = add nsw i64 %140, 1
  %arrayidx99 = getelementptr inbounds i64, ptr %139, i64 %add98
  %141 = load i64, ptr %arrayidx99, align 8, !tbaa !8
  %142 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %143 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx100 = getelementptr inbounds i64, ptr %142, i64 %143
  %144 = load i64, ptr %arrayidx100, align 8, !tbaa !8
  %sub101 = sub nsw i64 %141, %144
  %145 = load i64, ptr %num_elements, align 8, !tbaa !8
  %add102 = add nsw i64 %145, %sub101
  store i64 %add102, ptr %num_elements, align 8, !tbaa !8
  %146 = load i64, ptr %num_elements, align 8, !tbaa !8
  %147 = load i64, ptr %q_count, align 8, !tbaa !8
  %cmp103 = icmp sgt i64 %146, %147
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %for.body93
  %148 = load i64, ptr %num_elements, align 8, !tbaa !8
  store i64 %148, ptr %q_count, align 8, !tbaa !8
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %for.body93
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %149 = load i64, ptr %i, align 8, !tbaa !8
  %inc107 = add nsw i64 %149, 1
  store i64 %inc107, ptr %i, align 8, !tbaa !8
  br label %for.cond91, !llvm.loop !45

for.end108:                                       ; preds = %for.cond91
  %150 = load i64, ptr %q_count, align 8, !tbaa !8
  %151 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %add109 = add nsw i64 %151, 1
  %mul110 = mul nsw i64 %150, %add109
  store i64 %mul110, ptr %q_alloc, align 8, !tbaa !8
  %152 = load i64, ptr %q_alloc, align 8, !tbaa !8
  %call111 = call ptr @hypre_CAlloc(i64 noundef %152, i64 noundef 8, i32 noundef 0)
  store ptr %call111, ptr %q_data, align 8, !tbaa !4
  %153 = load i64, ptr %q_alloc, align 8, !tbaa !8
  %call112 = call ptr @hypre_CAlloc(i64 noundef %153, i64 noundef 8, i32 noundef 0)
  store ptr %call112, ptr %q_trunc_data, align 8, !tbaa !4
  %154 = load i64, ptr %q_alloc, align 8, !tbaa !8
  %call113 = call ptr @hypre_CAlloc(i64 noundef %154, i64 noundef 8, i32 noundef 0)
  store ptr %call113, ptr %is_q, align 8, !tbaa !4
  %155 = load i64, ptr %q_alloc, align 8, !tbaa !8
  %call114 = call ptr @hypre_CAlloc(i64 noundef %155, i64 noundef 8, i32 noundef 0)
  store ptr %call114, ptr %aux_data, align 8, !tbaa !4
  %156 = load i64, ptr %q_alloc, align 8, !tbaa !8
  %call115 = call ptr @hypre_CAlloc(i64 noundef %156, i64 noundef 8, i32 noundef 0)
  store ptr %call115, ptr %aux_j, align 8, !tbaa !4
  %157 = load i64, ptr %q_alloc, align 8, !tbaa !8
  %call116 = call ptr @hypre_CAlloc(i64 noundef %157, i64 noundef 8, i32 noundef 0)
  store ptr %call116, ptr %is_diag, align 8, !tbaa !4
  %158 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %call117 = call ptr @hypre_CAlloc(i64 noundef %158, i64 noundef 8, i32 noundef 0)
  store ptr %call117, ptr %q_count_sv, align 8, !tbaa !4
  %159 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %call118 = call ptr @hypre_CAlloc(i64 noundef %159, i64 noundef 8, i32 noundef 0)
  store ptr %call118, ptr %num_lost_sv, align 8, !tbaa !4
  %160 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %call119 = call ptr @hypre_CAlloc(i64 noundef %160, i64 noundef 8, i32 noundef 0)
  store ptr %call119, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %161 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %call120 = call ptr @hypre_CAlloc(i64 noundef %161, i64 noundef 8, i32 noundef 0)
  store ptr %call120, ptr %lost_value_sv, align 8, !tbaa !4
  %162 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %call121 = call ptr @hypre_CAlloc(i64 noundef %162, i64 noundef 8, i32 noundef 0)
  store ptr %call121, ptr %q_dist_value_sv, align 8, !tbaa !4
  br label %if.end122

if.end122:                                        ; preds = %for.end108, %lor.lhs.false88
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end71
  %163 = load i64, ptr %ncv, align 8, !tbaa !8
  %call124 = call ptr @hypre_CAlloc(i64 noundef %163, i64 noundef 8, i32 noundef 0)
  store ptr %call124, ptr %coarse_to_fine, align 8, !tbaa !4
  store i64 0, ptr %coarse_counter, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc134, %if.end123
  %164 = load i64, ptr %i, align 8, !tbaa !8
  %165 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %cmp126 = icmp slt i64 %164, %165
  br i1 %cmp126, label %for.body127, label %for.end136

for.body127:                                      ; preds = %for.cond125
  %166 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %167 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx128 = getelementptr inbounds i64, ptr %166, i64 %167
  %168 = load i64, ptr %arrayidx128, align 8, !tbaa !8
  %cmp129 = icmp sge i64 %168, 0
  br i1 %cmp129, label %if.then130, label %if.end133

if.then130:                                       ; preds = %for.body127
  %169 = load i64, ptr %i, align 8, !tbaa !8
  %170 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %171 = load i64, ptr %coarse_counter, align 8, !tbaa !8
  %arrayidx131 = getelementptr inbounds i64, ptr %170, i64 %171
  store i64 %169, ptr %arrayidx131, align 8, !tbaa !8
  %172 = load i64, ptr %coarse_counter, align 8, !tbaa !8
  %inc132 = add nsw i64 %172, 1
  store i64 %inc132, ptr %coarse_counter, align 8, !tbaa !8
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %for.body127
  br label %for.inc134

for.inc134:                                       ; preds = %if.end133
  %173 = load i64, ptr %i, align 8, !tbaa !8
  %inc135 = add nsw i64 %173, 1
  store i64 %inc135, ptr %i, align 8, !tbaa !8
  br label %for.cond125, !llvm.loop !46

for.end136:                                       ; preds = %for.cond125
  %174 = load i64, ptr %num_procs, align 8, !tbaa !8
  %cmp137 = icmp sgt i64 %174, 1
  br i1 %cmp137, label %if.then138, label %if.end177

if.then138:                                       ; preds = %for.end136
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_handle) #7
  %175 = load i64, ptr %num_cols_P_offd, align 8, !tbaa !8
  %176 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %mul139 = mul nsw i64 %175, %176
  %call140 = call ptr @hypre_CAlloc(i64 noundef %mul139, i64 noundef 8, i32 noundef 0)
  store ptr %call140, ptr %smooth_vec_offd, align 8, !tbaa !4
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc174, %if.then138
  %177 = load i64, ptr %k, align 8, !tbaa !8
  %178 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp142 = icmp slt i64 %177, %178
  br i1 %cmp142, label %for.body143, label %for.end176

for.body143:                                      ; preds = %for.cond141
  %179 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %180 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx144 = getelementptr inbounds ptr, ptr %179, i64 %180
  %181 = load ptr, ptr %arrayidx144, align 8, !tbaa !4
  store ptr %181, ptr %vector, align 8, !tbaa !4
  %182 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %182, i32 0, i32 6
  %183 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %data145 = getelementptr inbounds %struct.hypre_Vector, ptr %183, i32 0, i32 0
  %184 = load ptr, ptr %data145, align 8, !tbaa !21
  store ptr %184, ptr %vec_data, align 8, !tbaa !4
  %185 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends146 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %185, i32 0, i32 2
  %186 = load i64, ptr %num_sends146, align 8, !tbaa !47
  store i64 %186, ptr %num_sends, align 8, !tbaa !8
  %187 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %187, i32 0, i32 4
  %188 = load ptr, ptr %send_map_starts, align 8, !tbaa !48
  %189 = load i64, ptr %num_sends, align 8, !tbaa !8
  %arrayidx147 = getelementptr inbounds i64, ptr %188, i64 %189
  %190 = load i64, ptr %arrayidx147, align 8, !tbaa !8
  %call148 = call ptr @hypre_CAlloc(i64 noundef %190, i64 noundef 8, i32 noundef 0)
  store ptr %call148, ptr %dbl_buf_data, align 8, !tbaa !4
  %191 = load ptr, ptr %smooth_vec_offd, align 8, !tbaa !4
  %192 = load i64, ptr %k, align 8, !tbaa !8
  %193 = load i64, ptr %num_cols_P_offd, align 8, !tbaa !8
  %mul149 = mul nsw i64 %192, %193
  %add.ptr = getelementptr inbounds double, ptr %191, i64 %mul149
  store ptr %add.ptr, ptr %offd_vec_data, align 8, !tbaa !4
  store i64 0, ptr %index, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc169, %for.body143
  %194 = load i64, ptr %i, align 8, !tbaa !8
  %195 = load i64, ptr %num_sends, align 8, !tbaa !8
  %cmp151 = icmp slt i64 %194, %195
  br i1 %cmp151, label %for.body152, label %for.end171

for.body152:                                      ; preds = %for.cond150
  %196 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts153 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %196, i32 0, i32 4
  %197 = load ptr, ptr %send_map_starts153, align 8, !tbaa !48
  %198 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx154 = getelementptr inbounds i64, ptr %197, i64 %198
  %199 = load i64, ptr %arrayidx154, align 8, !tbaa !8
  store i64 %199, ptr %start, align 8, !tbaa !8
  %200 = load i64, ptr %start, align 8, !tbaa !8
  store i64 %200, ptr %j, align 8, !tbaa !8
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc166, %for.body152
  %201 = load i64, ptr %j, align 8, !tbaa !8
  %202 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts156 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %202, i32 0, i32 4
  %203 = load ptr, ptr %send_map_starts156, align 8, !tbaa !48
  %204 = load i64, ptr %i, align 8, !tbaa !8
  %add157 = add nsw i64 %204, 1
  %arrayidx158 = getelementptr inbounds i64, ptr %203, i64 %add157
  %205 = load i64, ptr %arrayidx158, align 8, !tbaa !8
  %cmp159 = icmp slt i64 %201, %205
  br i1 %cmp159, label %for.body160, label %for.end168

for.body160:                                      ; preds = %for.cond155
  %206 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %206, i32 0, i32 5
  %207 = load ptr, ptr %send_map_elmts, align 8, !tbaa !49
  %208 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx161 = getelementptr inbounds i64, ptr %207, i64 %208
  %209 = load i64, ptr %arrayidx161, align 8, !tbaa !8
  store i64 %209, ptr %c_index, align 8, !tbaa !8
  %210 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %211 = load i64, ptr %c_index, align 8, !tbaa !8
  %arrayidx162 = getelementptr inbounds i64, ptr %210, i64 %211
  %212 = load i64, ptr %arrayidx162, align 8, !tbaa !8
  store i64 %212, ptr %fine_index, align 8, !tbaa !8
  %213 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %214 = load i64, ptr %fine_index, align 8, !tbaa !8
  %arrayidx163 = getelementptr inbounds double, ptr %213, i64 %214
  %215 = load double, ptr %arrayidx163, align 8, !tbaa !22
  %216 = load ptr, ptr %dbl_buf_data, align 8, !tbaa !4
  %217 = load i64, ptr %index, align 8, !tbaa !8
  %inc164 = add nsw i64 %217, 1
  store i64 %inc164, ptr %index, align 8, !tbaa !8
  %arrayidx165 = getelementptr inbounds double, ptr %216, i64 %217
  store double %215, ptr %arrayidx165, align 8, !tbaa !22
  br label %for.inc166

for.inc166:                                       ; preds = %for.body160
  %218 = load i64, ptr %j, align 8, !tbaa !8
  %inc167 = add nsw i64 %218, 1
  store i64 %inc167, ptr %j, align 8, !tbaa !8
  br label %for.cond155, !llvm.loop !50

for.end168:                                       ; preds = %for.cond155
  br label %for.inc169

for.inc169:                                       ; preds = %for.end168
  %219 = load i64, ptr %i, align 8, !tbaa !8
  %inc170 = add nsw i64 %219, 1
  store i64 %inc170, ptr %i, align 8, !tbaa !8
  br label %for.cond150, !llvm.loop !51

for.end171:                                       ; preds = %for.cond150
  %220 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %221 = load ptr, ptr %dbl_buf_data, align 8, !tbaa !4
  %222 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %call172 = call ptr @hypre_ParCSRCommHandleCreate(i64 noundef 1, ptr noundef %220, ptr noundef %221, ptr noundef %222)
  store ptr %call172, ptr %comm_handle, align 8, !tbaa !4
  %223 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call173 = call i64 @hypre_ParCSRCommHandleDestroy(ptr noundef %223)
  %224 = load ptr, ptr %dbl_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %224, i32 noundef 0)
  store ptr null, ptr %dbl_buf_data, align 8, !tbaa !4
  br label %for.inc174

for.inc174:                                       ; preds = %for.end171
  %225 = load i64, ptr %k, align 8, !tbaa !8
  %inc175 = add nsw i64 %225, 1
  store i64 %inc175, ptr %k, align 8, !tbaa !8
  br label %for.cond141, !llvm.loop !52

for.end176:                                       ; preds = %for.cond141
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_handle) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7
  br label %if.end177

if.end177:                                        ; preds = %for.end176, %for.end136
  store i64 0, ptr %j_diag_pos, align 8, !tbaa !8
  store i64 0, ptr %j_offd_pos, align 8, !tbaa !8
  store i64 0, ptr %orig_diag_start, align 8, !tbaa !8
  store i64 0, ptr %orig_offd_start, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc1053, %if.end177
  %226 = load i64, ptr %i, align 8, !tbaa !8
  %227 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %cmp179 = icmp slt i64 %226, %227
  br i1 %cmp179, label %for.body180, label %for.end1055

for.body180:                                      ; preds = %for.cond178
  store i64 0, ptr %q_count, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond181

for.cond181:                                      ; preds = %for.inc187, %for.body180
  %228 = load i64, ptr %j, align 8, !tbaa !8
  %229 = load i64, ptr %q_alloc, align 8, !tbaa !8
  %cmp182 = icmp slt i64 %228, %229
  br i1 %cmp182, label %for.body183, label %for.end189

for.body183:                                      ; preds = %for.cond181
  %230 = load ptr, ptr %is_q, align 8, !tbaa !4
  %231 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx184 = getelementptr inbounds i64, ptr %230, i64 %231
  store i64 0, ptr %arrayidx184, align 8, !tbaa !8
  %232 = load ptr, ptr %q_data, align 8, !tbaa !4
  %233 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx185 = getelementptr inbounds double, ptr %232, i64 %233
  store double 0.000000e+00, ptr %arrayidx185, align 8, !tbaa !22
  %234 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %235 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx186 = getelementptr inbounds double, ptr %234, i64 %235
  store double 0.000000e+00, ptr %arrayidx186, align 8, !tbaa !22
  br label %for.inc187

for.inc187:                                       ; preds = %for.body183
  %236 = load i64, ptr %j, align 8, !tbaa !8
  %inc188 = add nsw i64 %236, 1
  store i64 %inc188, ptr %j, align 8, !tbaa !8
  br label %for.cond181, !llvm.loop !53

for.end189:                                       ; preds = %for.cond181
  %237 = load i64, ptr %i, align 8, !tbaa !8
  %conv = sitofp i64 %237 to double
  %238 = load i64, ptr %num_functions, align 8, !tbaa !8
  %conv190 = sitofp i64 %238 to double
  %call191 = call double @fmod(double noundef %conv, double noundef %conv190) #7
  %conv192 = fptosi double %call191 to i64
  store i64 %conv192, ptr %fcn_num, align 8, !tbaa !8
  %239 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %240 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %241 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx193 = getelementptr inbounds i64, ptr %240, i64 %241
  %242 = load i64, ptr %arrayidx193, align 8, !tbaa !8
  %cmp194 = icmp ne i64 %239, %242
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %for.end189
  call void @hypre_error_handler(ptr noundef @.str, i64 noundef 656, i64 noundef 1, ptr noundef @.str.1)
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %for.end189
  %243 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %244 = load i64, ptr %i, align 8, !tbaa !8
  %add198 = add nsw i64 %244, 1
  %arrayidx199 = getelementptr inbounds i64, ptr %243, i64 %add198
  %245 = load i64, ptr %arrayidx199, align 8, !tbaa !8
  %246 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %sub200 = sub nsw i64 %245, %246
  store i64 %sub200, ptr %num_diag_elements, align 8, !tbaa !8
  %247 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %248 = load i64, ptr %i, align 8, !tbaa !8
  %add201 = add nsw i64 %248, 1
  %arrayidx202 = getelementptr inbounds i64, ptr %247, i64 %add201
  %249 = load i64, ptr %arrayidx202, align 8, !tbaa !8
  %250 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %sub203 = sub nsw i64 %249, %250
  store i64 %sub203, ptr %num_offd_elements, align 8, !tbaa !8
  store i64 0, ptr %p_count_diag, align 8, !tbaa !8
  store i64 0, ptr %p_count_offd, align 8, !tbaa !8
  %251 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %252 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %cmp204 = icmp slt i64 %251, %252
  br i1 %cmp204, label %if.then206, label %if.else469

if.then206:                                       ; preds = %if.end197
  %253 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp207 = icmp eq i64 %253, 1
  br i1 %cmp207, label %land.lhs.true212, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %if.then206
  %254 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp210 = icmp eq i64 %254, 2
  br i1 %cmp210, label %land.lhs.true212, label %if.end244

land.lhs.true212:                                 ; preds = %lor.lhs.false209, %if.then206
  %255 = load i64, ptr %add_q, align 8, !tbaa !8
  %tobool213 = icmp ne i64 %255, 0
  br i1 %tobool213, label %if.then214, label %if.end244

if.then214:                                       ; preds = %land.lhs.true212
  store double 0.000000e+00, ptr %row_sum, align 8, !tbaa !22
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond215

for.cond215:                                      ; preds = %for.inc222, %if.then214
  %256 = load i64, ptr %j, align 8, !tbaa !8
  %257 = load i64, ptr %num_diag_elements, align 8, !tbaa !8
  %cmp216 = icmp slt i64 %256, %257
  br i1 %cmp216, label %for.body218, label %for.end224

for.body218:                                      ; preds = %for.cond215
  %258 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %259 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %260 = load i64, ptr %j, align 8, !tbaa !8
  %add219 = add nsw i64 %259, %260
  %arrayidx220 = getelementptr inbounds double, ptr %258, i64 %add219
  %261 = load double, ptr %arrayidx220, align 8, !tbaa !22
  %262 = load double, ptr %row_sum, align 8, !tbaa !22
  %add221 = fadd double %262, %261
  store double %add221, ptr %row_sum, align 8, !tbaa !22
  br label %for.inc222

for.inc222:                                       ; preds = %for.body218
  %263 = load i64, ptr %j, align 8, !tbaa !8
  %inc223 = add nsw i64 %263, 1
  store i64 %inc223, ptr %j, align 8, !tbaa !8
  br label %for.cond215, !llvm.loop !54

for.end224:                                       ; preds = %for.cond215
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc232, %for.end224
  %264 = load i64, ptr %j, align 8, !tbaa !8
  %265 = load i64, ptr %num_offd_elements, align 8, !tbaa !8
  %cmp226 = icmp slt i64 %264, %265
  br i1 %cmp226, label %for.body228, label %for.end234

for.body228:                                      ; preds = %for.cond225
  %266 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %267 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %268 = load i64, ptr %j, align 8, !tbaa !8
  %add229 = add nsw i64 %267, %268
  %arrayidx230 = getelementptr inbounds double, ptr %266, i64 %add229
  %269 = load double, ptr %arrayidx230, align 8, !tbaa !22
  %270 = load double, ptr %row_sum, align 8, !tbaa !22
  %add231 = fadd double %270, %269
  store double %add231, ptr %row_sum, align 8, !tbaa !22
  br label %for.inc232

for.inc232:                                       ; preds = %for.body228
  %271 = load i64, ptr %j, align 8, !tbaa !8
  %inc233 = add nsw i64 %271, 1
  store i64 %inc233, ptr %j, align 8, !tbaa !8
  br label %for.cond225, !llvm.loop !55

for.end234:                                       ; preds = %for.cond225
  %272 = load i64, ptr %num_diag_elements, align 8, !tbaa !8
  %273 = load i64, ptr %num_offd_elements, align 8, !tbaa !8
  %add235 = add nsw i64 %272, %273
  store i64 %add235, ptr %num_elements, align 8, !tbaa !8
  %274 = load i64, ptr %num_elements, align 8, !tbaa !8
  %tobool236 = icmp ne i64 %274, 0
  br i1 %tobool236, label %land.lhs.true237, label %if.end243

land.lhs.true237:                                 ; preds = %for.end234
  %275 = load double, ptr %row_sum, align 8, !tbaa !22
  %cmp238 = fcmp ogt double %275, 0.000000e+00
  br i1 %cmp238, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true237
  %276 = load double, ptr %row_sum, align 8, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true237
  %277 = load double, ptr %row_sum, align 8, !tbaa !22
  %fneg = fneg double %277
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %276, %cond.true ], [ %fneg, %cond.false ]
  %cmp240 = fcmp olt double %cond, 1.000000e-15
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %cond.end
  store double 1.000000e+00, ptr %row_sum, align 8, !tbaa !22
  br label %if.end243

if.end243:                                        ; preds = %if.then242, %cond.end, %for.end234
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %land.lhs.true212, %lor.lhs.false209
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond245

for.cond245:                                      ; preds = %for.inc349, %if.end244
  %278 = load i64, ptr %j, align 8, !tbaa !8
  %279 = load i64, ptr %num_diag_elements, align 8, !tbaa !8
  %cmp246 = icmp slt i64 %278, %279
  br i1 %cmp246, label %for.body248, label %for.end351

for.body248:                                      ; preds = %for.cond245
  %280 = load ptr, ptr %col_map, align 8, !tbaa !4
  %281 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %282 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %283 = load i64, ptr %j, align 8, !tbaa !8
  %add249 = add nsw i64 %282, %283
  %arrayidx250 = getelementptr inbounds i64, ptr %281, i64 %add249
  %284 = load i64, ptr %arrayidx250, align 8, !tbaa !8
  %arrayidx251 = getelementptr inbounds i64, ptr %280, i64 %284
  %285 = load i64, ptr %arrayidx251, align 8, !tbaa !8
  store i64 %285, ptr %new_col, align 8, !tbaa !8
  %286 = load i64, ptr %new_col, align 8, !tbaa !8
  %287 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %288 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx252 = getelementptr inbounds i64, ptr %287, i64 %288
  store i64 %286, ptr %arrayidx252, align 8, !tbaa !8
  %289 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %290 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %291 = load i64, ptr %j, align 8, !tbaa !8
  %add253 = add nsw i64 %290, %291
  %arrayidx254 = getelementptr inbounds double, ptr %289, i64 %add253
  %292 = load double, ptr %arrayidx254, align 8, !tbaa !22
  %293 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %294 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx255 = getelementptr inbounds double, ptr %293, i64 %294
  store double %292, ptr %arrayidx255, align 8, !tbaa !22
  %295 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %inc256 = add nsw i64 %295, 1
  store i64 %inc256, ptr %j_diag_pos, align 8, !tbaa !8
  %296 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %inc257 = add nsw i64 %296, 1
  store i64 %inc257, ptr %p_count_diag, align 8, !tbaa !8
  %297 = load i64, ptr %add_q, align 8, !tbaa !8
  %tobool258 = icmp ne i64 %297, 0
  br i1 %tobool258, label %if.then259, label %if.end348

if.then259:                                       ; preds = %for.body248
  %298 = load i64, ptr %new_col, align 8, !tbaa !8
  store i64 %298, ptr %cur_col, align 8, !tbaa !8
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond260

for.cond260:                                      ; preds = %for.inc345, %if.then259
  %299 = load i64, ptr %k, align 8, !tbaa !8
  %300 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp261 = icmp slt i64 %299, %300
  br i1 %cmp261, label %for.body263, label %for.end347

for.body263:                                      ; preds = %for.cond260
  %301 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %302 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx264 = getelementptr inbounds ptr, ptr %301, i64 %302
  %303 = load ptr, ptr %arrayidx264, align 8, !tbaa !4
  store ptr %303, ptr %vector, align 8, !tbaa !4
  %304 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector265 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %304, i32 0, i32 6
  %305 = load ptr, ptr %local_vector265, align 8, !tbaa !17
  %data266 = getelementptr inbounds %struct.hypre_Vector, ptr %305, i32 0, i32 0
  %306 = load ptr, ptr %data266, align 8, !tbaa !21
  store ptr %306, ptr %vec_data, align 8, !tbaa !4
  %307 = load i64, ptr %cur_col, align 8, !tbaa !8
  %308 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %309 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %sub267 = sub nsw i64 %308, %309
  %310 = load i64, ptr %k, align 8, !tbaa !8
  %add268 = add nsw i64 %sub267, %310
  %add269 = add nsw i64 %307, %add268
  store i64 %add269, ptr %new_col, align 8, !tbaa !8
  %311 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp270 = icmp eq i64 %311, 2
  br i1 %cmp270, label %if.then272, label %if.else283

if.then272:                                       ; preds = %for.body263
  %312 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %313 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %314 = load i64, ptr %j, align 8, !tbaa !8
  %add273 = add nsw i64 %313, %314
  %arrayidx274 = getelementptr inbounds i64, ptr %312, i64 %add273
  %315 = load i64, ptr %arrayidx274, align 8, !tbaa !8
  store i64 %315, ptr %index, align 8, !tbaa !8
  %316 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %317 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx275 = getelementptr inbounds i64, ptr %316, i64 %317
  %318 = load i64, ptr %arrayidx275, align 8, !tbaa !8
  store i64 %318, ptr %fine_index, align 8, !tbaa !8
  %319 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %320 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %321 = load i64, ptr %j, align 8, !tbaa !8
  %add276 = add nsw i64 %320, %321
  %arrayidx277 = getelementptr inbounds double, ptr %319, i64 %add276
  %322 = load double, ptr %arrayidx277, align 8, !tbaa !22
  %323 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %324 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx278 = getelementptr inbounds double, ptr %323, i64 %324
  %325 = load double, ptr %arrayidx278, align 8, !tbaa !22
  %326 = load double, ptr %row_sum, align 8, !tbaa !22
  %div279 = fdiv double %325, %326
  %327 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %328 = load i64, ptr %fine_index, align 8, !tbaa !8
  %arrayidx280 = getelementptr inbounds double, ptr %327, i64 %328
  %329 = load double, ptr %arrayidx280, align 8, !tbaa !22
  %sub281 = fsub double %div279, %329
  %mul282 = fmul double %322, %sub281
  store double %mul282, ptr %value, align 8, !tbaa !22
  br label %if.end314

if.else283:                                       ; preds = %for.body263
  %330 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %331 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %332 = load i64, ptr %j, align 8, !tbaa !8
  %add284 = add nsw i64 %331, %332
  %arrayidx285 = getelementptr inbounds double, ptr %330, i64 %add284
  %333 = load double, ptr %arrayidx285, align 8, !tbaa !22
  %334 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %335 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx286 = getelementptr inbounds double, ptr %334, i64 %335
  %336 = load double, ptr %arrayidx286, align 8, !tbaa !22
  %mul287 = fmul double %333, %336
  %337 = load double, ptr %row_sum, align 8, !tbaa !22
  %div288 = fdiv double %mul287, %337
  store double %div288, ptr %value, align 8, !tbaa !22
  %338 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp289 = fcmp ogt double %338, 0.000000e+00
  br i1 %cmp289, label %land.lhs.true291, label %if.end313

land.lhs.true291:                                 ; preds = %if.else283
  %339 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool292 = icmp ne i64 %339, 0
  br i1 %tobool292, label %if.then293, label %if.end313

if.then293:                                       ; preds = %land.lhs.true291
  %340 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %341 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %342 = load i64, ptr %j, align 8, !tbaa !8
  %add294 = add nsw i64 %341, %342
  %arrayidx295 = getelementptr inbounds i64, ptr %340, i64 %add294
  %343 = load i64, ptr %arrayidx295, align 8, !tbaa !8
  store i64 %343, ptr %fine_index, align 8, !tbaa !8
  %344 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  %345 = load i64, ptr %fine_index, align 8, !tbaa !8
  %arrayidx296 = getelementptr inbounds i64, ptr %344, i64 %345
  %346 = load i64, ptr %arrayidx296, align 8, !tbaa !8
  store i64 %346, ptr %fine_index, align 8, !tbaa !8
  %347 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %348 = load i64, ptr %fine_index, align 8, !tbaa !8
  %arrayidx297 = getelementptr inbounds double, ptr %347, i64 %348
  %349 = load double, ptr %arrayidx297, align 8, !tbaa !22
  %cmp298 = fcmp une double %349, 0.000000e+00
  br i1 %cmp298, label %if.then300, label %if.else307

if.then300:                                       ; preds = %if.then293
  %350 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %351 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %352 = load i64, ptr %j, align 8, !tbaa !8
  %add301 = add nsw i64 %351, %352
  %arrayidx302 = getelementptr inbounds double, ptr %350, i64 %add301
  %353 = load double, ptr %arrayidx302, align 8, !tbaa !22
  %354 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %355 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx303 = getelementptr inbounds double, ptr %354, i64 %355
  %356 = load double, ptr %arrayidx303, align 8, !tbaa !22
  %mul304 = fmul double %353, %356
  %357 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %358 = load i64, ptr %fine_index, align 8, !tbaa !8
  %arrayidx305 = getelementptr inbounds double, ptr %357, i64 %358
  %359 = load double, ptr %arrayidx305, align 8, !tbaa !22
  %div306 = fdiv double %mul304, %359
  store double %div306, ptr %trunc_value, align 8, !tbaa !22
  br label %if.end312

if.else307:                                       ; preds = %if.then293
  %360 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %361 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %362 = load i64, ptr %j, align 8, !tbaa !8
  %add308 = add nsw i64 %361, %362
  %arrayidx309 = getelementptr inbounds double, ptr %360, i64 %add308
  %363 = load double, ptr %arrayidx309, align 8, !tbaa !22
  %364 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %365 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx310 = getelementptr inbounds double, ptr %364, i64 %365
  %366 = load double, ptr %arrayidx310, align 8, !tbaa !22
  %mul311 = fmul double %363, %366
  store double %mul311, ptr %trunc_value, align 8, !tbaa !22
  br label %if.end312

if.end312:                                        ; preds = %if.else307, %if.then300
  br label %if.end313

if.end313:                                        ; preds = %if.end312, %land.lhs.true291, %if.else283
  br label %if.end314

if.end314:                                        ; preds = %if.end313, %if.then272
  %367 = load double, ptr %value, align 8, !tbaa !22
  %cmp315 = fcmp ogt double %367, 0.000000e+00
  br i1 %cmp315, label %cond.true317, label %cond.false318

cond.true317:                                     ; preds = %if.end314
  %368 = load double, ptr %value, align 8, !tbaa !22
  br label %cond.end320

cond.false318:                                    ; preds = %if.end314
  %369 = load double, ptr %value, align 8, !tbaa !22
  %fneg319 = fneg double %369
  br label %cond.end320

cond.end320:                                      ; preds = %cond.false318, %cond.true317
  %cond321 = phi double [ %368, %cond.true317 ], [ %fneg319, %cond.false318 ]
  %cmp322 = fcmp ogt double %cond321, 0.000000e+00
  br i1 %cmp322, label %if.then324, label %if.end344

if.then324:                                       ; preds = %cond.end320
  %370 = load i64, ptr %q_max.addr, align 8, !tbaa !8
  %cmp325 = icmp sgt i64 %370, 0
  br i1 %cmp325, label %if.then330, label %lor.lhs.false327

lor.lhs.false327:                                 ; preds = %if.then324
  %371 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp328 = fcmp ogt double %371, 0.000000e+00
  br i1 %cmp328, label %if.then330, label %if.end339

if.then330:                                       ; preds = %lor.lhs.false327, %if.then324
  %372 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool331 = icmp ne i64 %372, 0
  br i1 %tobool331, label %if.then332, label %if.end334

if.then332:                                       ; preds = %if.then330
  %373 = load double, ptr %trunc_value, align 8, !tbaa !22
  %374 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %375 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %arrayidx333 = getelementptr inbounds double, ptr %374, i64 %375
  store double %373, ptr %arrayidx333, align 8, !tbaa !22
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %if.then330
  %376 = load i64, ptr %k, align 8, !tbaa !8
  %add335 = add nsw i64 %376, 1
  %377 = load ptr, ptr %is_q, align 8, !tbaa !4
  %378 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %arrayidx336 = getelementptr inbounds i64, ptr %377, i64 %378
  store i64 %add335, ptr %arrayidx336, align 8, !tbaa !8
  %379 = load double, ptr %value, align 8, !tbaa !22
  %380 = load ptr, ptr %q_data, align 8, !tbaa !4
  %381 = load i64, ptr %q_count, align 8, !tbaa !8
  %inc337 = add nsw i64 %381, 1
  store i64 %inc337, ptr %q_count, align 8, !tbaa !8
  %arrayidx338 = getelementptr inbounds double, ptr %380, i64 %381
  store double %379, ptr %arrayidx338, align 8, !tbaa !22
  br label %if.end339

if.end339:                                        ; preds = %if.end334, %lor.lhs.false327
  %382 = load i64, ptr %new_col, align 8, !tbaa !8
  %383 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %384 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx340 = getelementptr inbounds i64, ptr %383, i64 %384
  store i64 %382, ptr %arrayidx340, align 8, !tbaa !8
  %385 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %inc341 = add nsw i64 %385, 1
  store i64 %inc341, ptr %p_count_diag, align 8, !tbaa !8
  %386 = load double, ptr %value, align 8, !tbaa !22
  %387 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %388 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %inc342 = add nsw i64 %388, 1
  store i64 %inc342, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx343 = getelementptr inbounds double, ptr %387, i64 %388
  store double %386, ptr %arrayidx343, align 8, !tbaa !22
  br label %if.end344

if.end344:                                        ; preds = %if.end339, %cond.end320
  br label %for.inc345

for.inc345:                                       ; preds = %if.end344
  %389 = load i64, ptr %k, align 8, !tbaa !8
  %inc346 = add nsw i64 %389, 1
  store i64 %inc346, ptr %k, align 8, !tbaa !8
  br label %for.cond260, !llvm.loop !56

for.end347:                                       ; preds = %for.cond260
  br label %if.end348

if.end348:                                        ; preds = %for.end347, %for.body248
  br label %for.inc349

for.inc349:                                       ; preds = %if.end348
  %390 = load i64, ptr %j, align 8, !tbaa !8
  %inc350 = add nsw i64 %390, 1
  store i64 %inc350, ptr %j, align 8, !tbaa !8
  br label %for.cond245, !llvm.loop !57

for.end351:                                       ; preds = %for.cond245
  %391 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  store i64 %391, ptr %p_count_offd, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond352

for.cond352:                                      ; preds = %for.inc466, %for.end351
  %392 = load i64, ptr %j, align 8, !tbaa !8
  %393 = load i64, ptr %num_offd_elements, align 8, !tbaa !8
  %cmp353 = icmp slt i64 %392, %393
  br i1 %cmp353, label %for.body355, label %for.end468

for.body355:                                      ; preds = %for.cond352
  %394 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %395 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %396 = load i64, ptr %j, align 8, !tbaa !8
  %add356 = add nsw i64 %395, %396
  %arrayidx357 = getelementptr inbounds i64, ptr %394, i64 %add356
  %397 = load i64, ptr %arrayidx357, align 8, !tbaa !8
  store i64 %397, ptr %index, align 8, !tbaa !8
  %398 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %399 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx358 = getelementptr inbounds i64, ptr %398, i64 %399
  %400 = load i64, ptr %arrayidx358, align 8, !tbaa !8
  store i64 %400, ptr %big_index, align 8, !tbaa !8
  %401 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %tobool359 = icmp ne i64 %401, 0
  br i1 %tobool359, label %land.lhs.true360, label %if.else367

land.lhs.true360:                                 ; preds = %for.body355
  %402 = load i64, ptr %level.addr, align 8, !tbaa !8
  %403 = load i64, ptr %interp_vec_first_level.addr, align 8, !tbaa !8
  %cmp361 = icmp eq i64 %402, %403
  br i1 %cmp361, label %if.then363, label %if.else367

if.then363:                                       ; preds = %land.lhs.true360
  %404 = load i64, ptr %big_index, align 8, !tbaa !8
  %405 = load i64, ptr %big_index, align 8, !tbaa !8
  %406 = load i64, ptr %num_functions, align 8, !tbaa !8
  %div364 = sdiv i64 %405, %406
  %407 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %mul365 = mul nsw i64 %div364, %407
  %add366 = add nsw i64 %404, %mul365
  store i64 %add366, ptr %big_new_col, align 8, !tbaa !8
  br label %if.end368

if.else367:                                       ; preds = %land.lhs.true360, %for.body355
  %408 = load i64, ptr %big_index, align 8, !tbaa !8
  store i64 %408, ptr %big_new_col, align 8, !tbaa !8
  br label %if.end368

if.end368:                                        ; preds = %if.else367, %if.then363
  %409 = load i64, ptr %big_new_col, align 8, !tbaa !8
  %410 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %411 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx369 = getelementptr inbounds i64, ptr %410, i64 %411
  store i64 %409, ptr %arrayidx369, align 8, !tbaa !8
  %412 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %413 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %414 = load i64, ptr %j, align 8, !tbaa !8
  %add370 = add nsw i64 %413, %414
  %arrayidx371 = getelementptr inbounds double, ptr %412, i64 %add370
  %415 = load double, ptr %arrayidx371, align 8, !tbaa !22
  %416 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %417 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx372 = getelementptr inbounds double, ptr %416, i64 %417
  store double %415, ptr %arrayidx372, align 8, !tbaa !22
  %418 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %inc373 = add nsw i64 %418, 1
  store i64 %inc373, ptr %j_offd_pos, align 8, !tbaa !8
  %419 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %inc374 = add nsw i64 %419, 1
  store i64 %inc374, ptr %p_count_offd, align 8, !tbaa !8
  %420 = load i64, ptr %add_q, align 8, !tbaa !8
  %tobool375 = icmp ne i64 %420, 0
  br i1 %tobool375, label %if.then376, label %if.end465

if.then376:                                       ; preds = %if.end368
  %421 = load i64, ptr %big_new_col, align 8, !tbaa !8
  store i64 %421, ptr %cur_col, align 8, !tbaa !8
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond377

for.cond377:                                      ; preds = %for.inc462, %if.then376
  %422 = load i64, ptr %k, align 8, !tbaa !8
  %423 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp378 = icmp slt i64 %422, %423
  br i1 %cmp378, label %for.body380, label %for.end464

for.body380:                                      ; preds = %for.cond377
  %424 = load ptr, ptr %smooth_vecs.addr, align 8, !tbaa !4
  %425 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx381 = getelementptr inbounds ptr, ptr %424, i64 %425
  %426 = load ptr, ptr %arrayidx381, align 8, !tbaa !4
  store ptr %426, ptr %vector, align 8, !tbaa !4
  %427 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector382 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %427, i32 0, i32 6
  %428 = load ptr, ptr %local_vector382, align 8, !tbaa !17
  %data383 = getelementptr inbounds %struct.hypre_Vector, ptr %428, i32 0, i32 0
  %429 = load ptr, ptr %data383, align 8, !tbaa !21
  store ptr %429, ptr %vec_data, align 8, !tbaa !4
  %430 = load ptr, ptr %smooth_vec_offd, align 8, !tbaa !4
  %431 = load i64, ptr %k, align 8, !tbaa !8
  %432 = load i64, ptr %num_cols_P_offd, align 8, !tbaa !8
  %mul384 = mul nsw i64 %431, %432
  %add.ptr385 = getelementptr inbounds double, ptr %430, i64 %mul384
  store ptr %add.ptr385, ptr %offd_vec_data, align 8, !tbaa !4
  %433 = load i64, ptr %cur_col, align 8, !tbaa !8
  %434 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %435 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %sub386 = sub nsw i64 %434, %435
  %436 = load i64, ptr %k, align 8, !tbaa !8
  %add387 = add nsw i64 %sub386, %436
  %add388 = add nsw i64 %433, %add387
  store i64 %add388, ptr %big_new_col, align 8, !tbaa !8
  %437 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %cmp389 = icmp eq i64 %437, 2
  br i1 %cmp389, label %if.then391, label %if.else401

if.then391:                                       ; preds = %for.body380
  %438 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %439 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %440 = load i64, ptr %j, align 8, !tbaa !8
  %add392 = add nsw i64 %439, %440
  %arrayidx393 = getelementptr inbounds i64, ptr %438, i64 %add392
  %441 = load i64, ptr %arrayidx393, align 8, !tbaa !8
  store i64 %441, ptr %index, align 8, !tbaa !8
  %442 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %443 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %444 = load i64, ptr %j, align 8, !tbaa !8
  %add394 = add nsw i64 %443, %444
  %arrayidx395 = getelementptr inbounds double, ptr %442, i64 %add394
  %445 = load double, ptr %arrayidx395, align 8, !tbaa !22
  %446 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %447 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx396 = getelementptr inbounds double, ptr %446, i64 %447
  %448 = load double, ptr %arrayidx396, align 8, !tbaa !22
  %449 = load double, ptr %row_sum, align 8, !tbaa !22
  %div397 = fdiv double %448, %449
  %450 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %451 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx398 = getelementptr inbounds double, ptr %450, i64 %451
  %452 = load double, ptr %arrayidx398, align 8, !tbaa !22
  %sub399 = fsub double %div397, %452
  %mul400 = fmul double %445, %sub399
  store double %mul400, ptr %value, align 8, !tbaa !22
  br label %if.end431

if.else401:                                       ; preds = %for.body380
  %453 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %454 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %455 = load i64, ptr %j, align 8, !tbaa !8
  %add402 = add nsw i64 %454, %455
  %arrayidx403 = getelementptr inbounds double, ptr %453, i64 %add402
  %456 = load double, ptr %arrayidx403, align 8, !tbaa !22
  %457 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %458 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx404 = getelementptr inbounds double, ptr %457, i64 %458
  %459 = load double, ptr %arrayidx404, align 8, !tbaa !22
  %mul405 = fmul double %456, %459
  %460 = load double, ptr %row_sum, align 8, !tbaa !22
  %div406 = fdiv double %mul405, %460
  store double %div406, ptr %value, align 8, !tbaa !22
  %461 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp407 = fcmp ogt double %461, 0.000000e+00
  br i1 %cmp407, label %land.lhs.true409, label %if.end430

land.lhs.true409:                                 ; preds = %if.else401
  %462 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool410 = icmp ne i64 %462, 0
  br i1 %tobool410, label %if.then411, label %if.end430

if.then411:                                       ; preds = %land.lhs.true409
  %463 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %464 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %465 = load i64, ptr %j, align 8, !tbaa !8
  %add412 = add nsw i64 %464, %465
  %arrayidx413 = getelementptr inbounds i64, ptr %463, i64 %add412
  %466 = load i64, ptr %arrayidx413, align 8, !tbaa !8
  store i64 %466, ptr %index, align 8, !tbaa !8
  %467 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %468 = load i64, ptr %fine_index, align 8, !tbaa !8
  %arrayidx414 = getelementptr inbounds double, ptr %467, i64 %468
  %469 = load double, ptr %arrayidx414, align 8, !tbaa !22
  %cmp415 = fcmp une double %469, 0.000000e+00
  br i1 %cmp415, label %if.then417, label %if.else424

if.then417:                                       ; preds = %if.then411
  %470 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %471 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %472 = load i64, ptr %j, align 8, !tbaa !8
  %add418 = add nsw i64 %471, %472
  %arrayidx419 = getelementptr inbounds double, ptr %470, i64 %add418
  %473 = load double, ptr %arrayidx419, align 8, !tbaa !22
  %474 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %475 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx420 = getelementptr inbounds double, ptr %474, i64 %475
  %476 = load double, ptr %arrayidx420, align 8, !tbaa !22
  %mul421 = fmul double %473, %476
  %477 = load ptr, ptr %offd_vec_data, align 8, !tbaa !4
  %478 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx422 = getelementptr inbounds double, ptr %477, i64 %478
  %479 = load double, ptr %arrayidx422, align 8, !tbaa !22
  %div423 = fdiv double %mul421, %479
  store double %div423, ptr %trunc_value, align 8, !tbaa !22
  br label %if.end429

if.else424:                                       ; preds = %if.then411
  %480 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %481 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %482 = load i64, ptr %j, align 8, !tbaa !8
  %add425 = add nsw i64 %481, %482
  %arrayidx426 = getelementptr inbounds double, ptr %480, i64 %add425
  %483 = load double, ptr %arrayidx426, align 8, !tbaa !22
  %484 = load ptr, ptr %vec_data, align 8, !tbaa !4
  %485 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx427 = getelementptr inbounds double, ptr %484, i64 %485
  %486 = load double, ptr %arrayidx427, align 8, !tbaa !22
  %mul428 = fmul double %483, %486
  store double %mul428, ptr %trunc_value, align 8, !tbaa !22
  br label %if.end429

if.end429:                                        ; preds = %if.else424, %if.then417
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %land.lhs.true409, %if.else401
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %if.then391
  %487 = load double, ptr %value, align 8, !tbaa !22
  %cmp432 = fcmp ogt double %487, 0.000000e+00
  br i1 %cmp432, label %cond.true434, label %cond.false435

cond.true434:                                     ; preds = %if.end431
  %488 = load double, ptr %value, align 8, !tbaa !22
  br label %cond.end437

cond.false435:                                    ; preds = %if.end431
  %489 = load double, ptr %value, align 8, !tbaa !22
  %fneg436 = fneg double %489
  br label %cond.end437

cond.end437:                                      ; preds = %cond.false435, %cond.true434
  %cond438 = phi double [ %488, %cond.true434 ], [ %fneg436, %cond.false435 ]
  %cmp439 = fcmp ogt double %cond438, 0.000000e+00
  br i1 %cmp439, label %if.then441, label %if.end461

if.then441:                                       ; preds = %cond.end437
  %490 = load i64, ptr %q_max.addr, align 8, !tbaa !8
  %cmp442 = icmp sgt i64 %490, 0
  br i1 %cmp442, label %if.then447, label %lor.lhs.false444

lor.lhs.false444:                                 ; preds = %if.then441
  %491 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp445 = fcmp ogt double %491, 0.000000e+00
  br i1 %cmp445, label %if.then447, label %if.end456

if.then447:                                       ; preds = %lor.lhs.false444, %if.then441
  %492 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool448 = icmp ne i64 %492, 0
  br i1 %tobool448, label %if.then449, label %if.end451

if.then449:                                       ; preds = %if.then447
  %493 = load double, ptr %trunc_value, align 8, !tbaa !22
  %494 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %495 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %arrayidx450 = getelementptr inbounds double, ptr %494, i64 %495
  store double %493, ptr %arrayidx450, align 8, !tbaa !22
  br label %if.end451

if.end451:                                        ; preds = %if.then449, %if.then447
  %496 = load i64, ptr %k, align 8, !tbaa !8
  %add452 = add nsw i64 %496, 1
  %497 = load ptr, ptr %is_q, align 8, !tbaa !4
  %498 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %arrayidx453 = getelementptr inbounds i64, ptr %497, i64 %498
  store i64 %add452, ptr %arrayidx453, align 8, !tbaa !8
  %499 = load double, ptr %value, align 8, !tbaa !22
  %500 = load ptr, ptr %q_data, align 8, !tbaa !4
  %501 = load i64, ptr %q_count, align 8, !tbaa !8
  %inc454 = add nsw i64 %501, 1
  store i64 %inc454, ptr %q_count, align 8, !tbaa !8
  %arrayidx455 = getelementptr inbounds double, ptr %500, i64 %501
  store double %499, ptr %arrayidx455, align 8, !tbaa !22
  br label %if.end456

if.end456:                                        ; preds = %if.end451, %lor.lhs.false444
  %502 = load i64, ptr %big_new_col, align 8, !tbaa !8
  %503 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %504 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx457 = getelementptr inbounds i64, ptr %503, i64 %504
  store i64 %502, ptr %arrayidx457, align 8, !tbaa !8
  %505 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %inc458 = add nsw i64 %505, 1
  store i64 %inc458, ptr %p_count_offd, align 8, !tbaa !8
  %506 = load double, ptr %value, align 8, !tbaa !22
  %507 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %508 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %inc459 = add nsw i64 %508, 1
  store i64 %inc459, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx460 = getelementptr inbounds double, ptr %507, i64 %508
  store double %506, ptr %arrayidx460, align 8, !tbaa !22
  br label %if.end461

if.end461:                                        ; preds = %if.end456, %cond.end437
  br label %for.inc462

for.inc462:                                       ; preds = %if.end461
  %509 = load i64, ptr %k, align 8, !tbaa !8
  %inc463 = add nsw i64 %509, 1
  store i64 %inc463, ptr %k, align 8, !tbaa !8
  br label %for.cond377, !llvm.loop !58

for.end464:                                       ; preds = %for.cond377
  br label %if.end465

if.end465:                                        ; preds = %for.end464, %if.end368
  br label %for.inc466

for.inc466:                                       ; preds = %if.end465
  %510 = load i64, ptr %j, align 8, !tbaa !8
  %inc467 = add nsw i64 %510, 1
  store i64 %inc467, ptr %j, align 8, !tbaa !8
  br label %for.cond352, !llvm.loop !59

for.end468:                                       ; preds = %for.cond352
  br label %if.end560

if.else469:                                       ; preds = %if.end197
  %511 = load i64, ptr %modify, align 8, !tbaa !8
  %tobool470 = icmp ne i64 %511, 0
  br i1 %tobool470, label %if.then471, label %if.else527

if.then471:                                       ; preds = %if.else469
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_val) #7
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond472

for.cond472:                                      ; preds = %for.inc496, %if.then471
  %512 = load i64, ptr %j, align 8, !tbaa !8
  %513 = load i64, ptr %num_diag_elements, align 8, !tbaa !8
  %cmp473 = icmp slt i64 %512, %513
  br i1 %cmp473, label %for.body475, label %for.end498

for.body475:                                      ; preds = %for.cond472
  store double 0.000000e+00, ptr %m_val, align 8, !tbaa !22
  store i64 0, ptr %m, align 8, !tbaa !8
  br label %for.cond476

for.cond476:                                      ; preds = %for.inc487, %for.body475
  %514 = load i64, ptr %m, align 8, !tbaa !8
  %515 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %cmp477 = icmp slt i64 %514, %515
  br i1 %cmp477, label %for.body479, label %for.end489

for.body479:                                      ; preds = %for.cond476
  %516 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %517 = load i64, ptr %i, align 8, !tbaa !8
  %518 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %519 = load i64, ptr %m, align 8, !tbaa !8
  %sub480 = sub nsw i64 %518, %519
  %sub481 = sub nsw i64 %517, %sub480
  %arrayidx482 = getelementptr inbounds i64, ptr %516, i64 %sub481
  %520 = load i64, ptr %arrayidx482, align 8, !tbaa !8
  %521 = load i64, ptr %j, align 8, !tbaa !8
  %add483 = add nsw i64 %520, %521
  store i64 %add483, ptr %m_pos, align 8, !tbaa !8
  %522 = load ptr, ptr %theta, align 8, !tbaa !4
  %523 = load i64, ptr %m, align 8, !tbaa !8
  %arrayidx484 = getelementptr inbounds double, ptr %522, i64 %523
  %524 = load double, ptr %arrayidx484, align 8, !tbaa !22
  %525 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %526 = load i64, ptr %m_pos, align 8, !tbaa !8
  %arrayidx485 = getelementptr inbounds double, ptr %525, i64 %526
  %527 = load double, ptr %arrayidx485, align 8, !tbaa !22
  %528 = load double, ptr %m_val, align 8, !tbaa !22
  %529 = call double @llvm.fmuladd.f64(double %524, double %527, double %528)
  store double %529, ptr %m_val, align 8, !tbaa !22
  br label %for.inc487

for.inc487:                                       ; preds = %for.body479
  %530 = load i64, ptr %m, align 8, !tbaa !8
  %inc488 = add nsw i64 %530, 1
  store i64 %inc488, ptr %m, align 8, !tbaa !8
  br label %for.cond476, !llvm.loop !60

for.end489:                                       ; preds = %for.cond476
  %531 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %532 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %533 = load i64, ptr %j, align 8, !tbaa !8
  %add490 = add nsw i64 %532, %533
  %arrayidx491 = getelementptr inbounds i64, ptr %531, i64 %add490
  %534 = load i64, ptr %arrayidx491, align 8, !tbaa !8
  %535 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %536 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx492 = getelementptr inbounds i64, ptr %535, i64 %536
  store i64 %534, ptr %arrayidx492, align 8, !tbaa !8
  %537 = load double, ptr %m_val, align 8, !tbaa !22
  %538 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %539 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %inc493 = add nsw i64 %539, 1
  store i64 %inc493, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx494 = getelementptr inbounds double, ptr %538, i64 %539
  store double %537, ptr %arrayidx494, align 8, !tbaa !22
  %540 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %inc495 = add nsw i64 %540, 1
  store i64 %inc495, ptr %p_count_diag, align 8, !tbaa !8
  br label %for.inc496

for.inc496:                                       ; preds = %for.end489
  %541 = load i64, ptr %j, align 8, !tbaa !8
  %inc497 = add nsw i64 %541, 1
  store i64 %inc497, ptr %j, align 8, !tbaa !8
  br label %for.cond472, !llvm.loop !61

for.end498:                                       ; preds = %for.cond472
  %542 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  store i64 %542, ptr %p_count_offd, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond499

for.cond499:                                      ; preds = %for.inc524, %for.end498
  %543 = load i64, ptr %j, align 8, !tbaa !8
  %544 = load i64, ptr %num_offd_elements, align 8, !tbaa !8
  %cmp500 = icmp slt i64 %543, %544
  br i1 %cmp500, label %for.body502, label %for.end526

for.body502:                                      ; preds = %for.cond499
  store double 0.000000e+00, ptr %m_val, align 8, !tbaa !22
  store i64 0, ptr %m, align 8, !tbaa !8
  br label %for.cond503

for.cond503:                                      ; preds = %for.inc514, %for.body502
  %545 = load i64, ptr %m, align 8, !tbaa !8
  %546 = load i64, ptr %orig_nf, align 8, !tbaa !8
  %cmp504 = icmp slt i64 %545, %546
  br i1 %cmp504, label %for.body506, label %for.end516

for.body506:                                      ; preds = %for.cond503
  %547 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %548 = load i64, ptr %i, align 8, !tbaa !8
  %549 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %550 = load i64, ptr %m, align 8, !tbaa !8
  %sub507 = sub nsw i64 %549, %550
  %sub508 = sub nsw i64 %548, %sub507
  %arrayidx509 = getelementptr inbounds i64, ptr %547, i64 %sub508
  %551 = load i64, ptr %arrayidx509, align 8, !tbaa !8
  %552 = load i64, ptr %j, align 8, !tbaa !8
  %add510 = add nsw i64 %551, %552
  store i64 %add510, ptr %m_pos, align 8, !tbaa !8
  %553 = load ptr, ptr %theta, align 8, !tbaa !4
  %554 = load i64, ptr %m, align 8, !tbaa !8
  %arrayidx511 = getelementptr inbounds double, ptr %553, i64 %554
  %555 = load double, ptr %arrayidx511, align 8, !tbaa !22
  %556 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %557 = load i64, ptr %m_pos, align 8, !tbaa !8
  %arrayidx512 = getelementptr inbounds double, ptr %556, i64 %557
  %558 = load double, ptr %arrayidx512, align 8, !tbaa !22
  %559 = load double, ptr %m_val, align 8, !tbaa !22
  %560 = call double @llvm.fmuladd.f64(double %555, double %558, double %559)
  store double %560, ptr %m_val, align 8, !tbaa !22
  br label %for.inc514

for.inc514:                                       ; preds = %for.body506
  %561 = load i64, ptr %m, align 8, !tbaa !8
  %inc515 = add nsw i64 %561, 1
  store i64 %inc515, ptr %m, align 8, !tbaa !8
  br label %for.cond503, !llvm.loop !62

for.end516:                                       ; preds = %for.cond503
  %562 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %563 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %564 = load i64, ptr %j, align 8, !tbaa !8
  %add517 = add nsw i64 %563, %564
  %arrayidx518 = getelementptr inbounds i64, ptr %562, i64 %add517
  %565 = load i64, ptr %arrayidx518, align 8, !tbaa !8
  store i64 %565, ptr %index, align 8, !tbaa !8
  %566 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %567 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx519 = getelementptr inbounds i64, ptr %566, i64 %567
  %568 = load i64, ptr %arrayidx519, align 8, !tbaa !8
  store i64 %568, ptr %big_index, align 8, !tbaa !8
  %569 = load i64, ptr %big_index, align 8, !tbaa !8
  %570 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %571 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx520 = getelementptr inbounds i64, ptr %570, i64 %571
  store i64 %569, ptr %arrayidx520, align 8, !tbaa !8
  %572 = load double, ptr %m_val, align 8, !tbaa !22
  %573 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %574 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %inc521 = add nsw i64 %574, 1
  store i64 %inc521, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx522 = getelementptr inbounds double, ptr %573, i64 %574
  store double %572, ptr %arrayidx522, align 8, !tbaa !22
  %575 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %inc523 = add nsw i64 %575, 1
  store i64 %inc523, ptr %p_count_offd, align 8, !tbaa !8
  br label %for.inc524

for.inc524:                                       ; preds = %for.end516
  %576 = load i64, ptr %j, align 8, !tbaa !8
  %inc525 = add nsw i64 %576, 1
  store i64 %inc525, ptr %j, align 8, !tbaa !8
  br label %for.cond499, !llvm.loop !63

for.end526:                                       ; preds = %for.cond499
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_val) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #7
  br label %if.end559

if.else527:                                       ; preds = %if.else469
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond528

for.cond528:                                      ; preds = %for.inc540, %if.else527
  %577 = load i64, ptr %j, align 8, !tbaa !8
  %578 = load i64, ptr %num_diag_elements, align 8, !tbaa !8
  %cmp529 = icmp slt i64 %577, %578
  br i1 %cmp529, label %for.body531, label %for.end542

for.body531:                                      ; preds = %for.cond528
  %579 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %580 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %581 = load i64, ptr %j, align 8, !tbaa !8
  %add532 = add nsw i64 %580, %581
  %arrayidx533 = getelementptr inbounds i64, ptr %579, i64 %add532
  %582 = load i64, ptr %arrayidx533, align 8, !tbaa !8
  %583 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %584 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx534 = getelementptr inbounds i64, ptr %583, i64 %584
  store i64 %582, ptr %arrayidx534, align 8, !tbaa !8
  %585 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %586 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %587 = load i64, ptr %j, align 8, !tbaa !8
  %add535 = add nsw i64 %586, %587
  %arrayidx536 = getelementptr inbounds double, ptr %585, i64 %add535
  %588 = load double, ptr %arrayidx536, align 8, !tbaa !22
  %589 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %590 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %inc537 = add nsw i64 %590, 1
  store i64 %inc537, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx538 = getelementptr inbounds double, ptr %589, i64 %590
  store double %588, ptr %arrayidx538, align 8, !tbaa !22
  %591 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %inc539 = add nsw i64 %591, 1
  store i64 %inc539, ptr %p_count_diag, align 8, !tbaa !8
  br label %for.inc540

for.inc540:                                       ; preds = %for.body531
  %592 = load i64, ptr %j, align 8, !tbaa !8
  %inc541 = add nsw i64 %592, 1
  store i64 %inc541, ptr %j, align 8, !tbaa !8
  br label %for.cond528, !llvm.loop !64

for.end542:                                       ; preds = %for.cond528
  %593 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  store i64 %593, ptr %p_count_offd, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond543

for.cond543:                                      ; preds = %for.inc556, %for.end542
  %594 = load i64, ptr %j, align 8, !tbaa !8
  %595 = load i64, ptr %num_offd_elements, align 8, !tbaa !8
  %cmp544 = icmp slt i64 %594, %595
  br i1 %cmp544, label %for.body546, label %for.end558

for.body546:                                      ; preds = %for.cond543
  %596 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %597 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %598 = load i64, ptr %j, align 8, !tbaa !8
  %add547 = add nsw i64 %597, %598
  %arrayidx548 = getelementptr inbounds i64, ptr %596, i64 %add547
  %599 = load i64, ptr %arrayidx548, align 8, !tbaa !8
  store i64 %599, ptr %index, align 8, !tbaa !8
  %600 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %601 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx549 = getelementptr inbounds i64, ptr %600, i64 %601
  %602 = load i64, ptr %arrayidx549, align 8, !tbaa !8
  store i64 %602, ptr %big_index, align 8, !tbaa !8
  %603 = load i64, ptr %big_index, align 8, !tbaa !8
  %604 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %605 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx550 = getelementptr inbounds i64, ptr %604, i64 %605
  store i64 %603, ptr %arrayidx550, align 8, !tbaa !8
  %606 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %607 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %608 = load i64, ptr %j, align 8, !tbaa !8
  %add551 = add nsw i64 %607, %608
  %arrayidx552 = getelementptr inbounds double, ptr %606, i64 %add551
  %609 = load double, ptr %arrayidx552, align 8, !tbaa !22
  %610 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %611 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %inc553 = add nsw i64 %611, 1
  store i64 %inc553, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx554 = getelementptr inbounds double, ptr %610, i64 %611
  store double %609, ptr %arrayidx554, align 8, !tbaa !22
  %612 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %inc555 = add nsw i64 %612, 1
  store i64 %inc555, ptr %p_count_offd, align 8, !tbaa !8
  br label %for.inc556

for.inc556:                                       ; preds = %for.body546
  %613 = load i64, ptr %j, align 8, !tbaa !8
  %inc557 = add nsw i64 %613, 1
  store i64 %inc557, ptr %j, align 8, !tbaa !8
  br label %for.cond543, !llvm.loop !65

for.end558:                                       ; preds = %for.cond543
  br label %if.end559

if.end559:                                        ; preds = %for.end558, %for.end526
  br label %if.end560

if.end560:                                        ; preds = %if.end559, %for.end468
  %614 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %615 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %sub561 = sub nsw i64 %614, %615
  store i64 %sub561, ptr %p_count_offd, align 8, !tbaa !8
  %616 = load i64, ptr %add_q, align 8, !tbaa !8
  %tobool562 = icmp ne i64 %616, 0
  br i1 %tobool562, label %land.lhs.true563, label %if.end1028

land.lhs.true563:                                 ; preds = %if.end560
  %617 = load i64, ptr %q_count, align 8, !tbaa !8
  %cmp564 = icmp sgt i64 %617, 0
  br i1 %cmp564, label %land.lhs.true566, label %if.end1028

land.lhs.true566:                                 ; preds = %land.lhs.true563
  %618 = load i64, ptr %q_max.addr, align 8, !tbaa !8
  %cmp567 = icmp sgt i64 %618, 0
  br i1 %cmp567, label %if.then572, label %lor.lhs.false569

lor.lhs.false569:                                 ; preds = %land.lhs.true566
  %619 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp570 = fcmp ogt double %619, 0.000000e+00
  br i1 %cmp570, label %if.then572, label %if.end1028

if.then572:                                       ; preds = %lor.lhs.false569, %land.lhs.true566
  call void @llvm.lifetime.start.p0(i64 8, ptr %tot_num_lost) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_diag_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_offd_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_counter) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_j_counter) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cnt_new_q_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lost_counter_diag) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lost_counter_offd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %which_q) #7
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond573

for.cond573:                                      ; preds = %for.inc582, %if.then572
  %620 = load i64, ptr %j, align 8, !tbaa !8
  %621 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp574 = icmp slt i64 %620, %621
  br i1 %cmp574, label %for.body576, label %for.end584

for.body576:                                      ; preds = %for.cond573
  %622 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %623 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx577 = getelementptr inbounds i64, ptr %622, i64 %623
  store i64 0, ptr %arrayidx577, align 8, !tbaa !8
  %624 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %625 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx578 = getelementptr inbounds i64, ptr %624, i64 %625
  store i64 0, ptr %arrayidx578, align 8, !tbaa !8
  %626 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %627 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx579 = getelementptr inbounds i64, ptr %626, i64 %627
  store i64 0, ptr %arrayidx579, align 8, !tbaa !8
  %628 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %629 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx580 = getelementptr inbounds double, ptr %628, i64 %629
  store double 0.000000e+00, ptr %arrayidx580, align 8, !tbaa !22
  %630 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %631 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx581 = getelementptr inbounds double, ptr %630, i64 %631
  store double 0.000000e+00, ptr %arrayidx581, align 8, !tbaa !22
  br label %for.inc582

for.inc582:                                       ; preds = %for.body576
  %632 = load i64, ptr %j, align 8, !tbaa !8
  %inc583 = add nsw i64 %632, 1
  store i64 %inc583, ptr %j, align 8, !tbaa !8
  br label %for.cond573, !llvm.loop !66

for.end584:                                       ; preds = %for.cond573
  %633 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp585 = fcmp ogt double %633, 0.000000e+00
  br i1 %cmp585, label %if.then587, label %if.end865

if.then587:                                       ; preds = %for.end584
  store i64 0, ptr %cnt_new_q_data, align 8, !tbaa !8
  store i64 0, ptr %j_counter, align 8, !tbaa !8
  %634 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %635 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx588 = getelementptr inbounds i64, ptr %634, i64 %635
  %636 = load i64, ptr %arrayidx588, align 8, !tbaa !8
  store i64 %636, ptr %j, align 8, !tbaa !8
  br label %for.cond589

for.cond589:                                      ; preds = %for.inc637, %if.then587
  %637 = load i64, ptr %j, align 8, !tbaa !8
  %638 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %639 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx590 = getelementptr inbounds i64, ptr %638, i64 %639
  %640 = load i64, ptr %arrayidx590, align 8, !tbaa !8
  %641 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %add591 = add nsw i64 %640, %641
  %cmp592 = icmp slt i64 %637, %add591
  br i1 %cmp592, label %for.body594, label %for.end639

for.body594:                                      ; preds = %for.cond589
  %642 = load ptr, ptr %is_q, align 8, !tbaa !4
  %643 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx595 = getelementptr inbounds i64, ptr %642, i64 %643
  %644 = load i64, ptr %arrayidx595, align 8, !tbaa !8
  %tobool596 = icmp ne i64 %644, 0
  br i1 %tobool596, label %if.then597, label %if.end635

if.then597:                                       ; preds = %for.body594
  %645 = load ptr, ptr %is_q, align 8, !tbaa !4
  %646 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx598 = getelementptr inbounds i64, ptr %645, i64 %646
  %647 = load i64, ptr %arrayidx598, align 8, !tbaa !8
  %sub599 = sub nsw i64 %647, 1
  store i64 %sub599, ptr %which_q, align 8, !tbaa !8
  %648 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %649 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx600 = getelementptr inbounds i64, ptr %648, i64 %649
  %650 = load i64, ptr %arrayidx600, align 8, !tbaa !8
  %inc601 = add nsw i64 %650, 1
  store i64 %inc601, ptr %arrayidx600, align 8, !tbaa !8
  %651 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool602 = icmp ne i64 %651, 0
  br i1 %tobool602, label %if.else614, label %if.then603

if.then603:                                       ; preds = %if.then597
  %652 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %653 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx604 = getelementptr inbounds double, ptr %652, i64 %653
  %654 = load double, ptr %arrayidx604, align 8, !tbaa !22
  %cmp605 = fcmp ogt double %654, 0.000000e+00
  br i1 %cmp605, label %cond.true607, label %cond.false609

cond.true607:                                     ; preds = %if.then603
  %655 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %656 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx608 = getelementptr inbounds double, ptr %655, i64 %656
  %657 = load double, ptr %arrayidx608, align 8, !tbaa !22
  br label %cond.end612

cond.false609:                                    ; preds = %if.then603
  %658 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %659 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx610 = getelementptr inbounds double, ptr %658, i64 %659
  %660 = load double, ptr %arrayidx610, align 8, !tbaa !22
  %fneg611 = fneg double %660
  br label %cond.end612

cond.end612:                                      ; preds = %cond.false609, %cond.true607
  %cond613 = phi double [ %657, %cond.true607 ], [ %fneg611, %cond.false609 ]
  store double %cond613, ptr %value, align 8, !tbaa !22
  br label %if.end625

if.else614:                                       ; preds = %if.then597
  %661 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %662 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx615 = getelementptr inbounds double, ptr %661, i64 %662
  %663 = load double, ptr %arrayidx615, align 8, !tbaa !22
  %cmp616 = fcmp ogt double %663, 0.000000e+00
  br i1 %cmp616, label %cond.true618, label %cond.false620

cond.true618:                                     ; preds = %if.else614
  %664 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %665 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx619 = getelementptr inbounds double, ptr %664, i64 %665
  %666 = load double, ptr %arrayidx619, align 8, !tbaa !22
  br label %cond.end623

cond.false620:                                    ; preds = %if.else614
  %667 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %668 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx621 = getelementptr inbounds double, ptr %667, i64 %668
  %669 = load double, ptr %arrayidx621, align 8, !tbaa !22
  %fneg622 = fneg double %669
  br label %cond.end623

cond.end623:                                      ; preds = %cond.false620, %cond.true618
  %cond624 = phi double [ %666, %cond.true618 ], [ %fneg622, %cond.false620 ]
  store double %cond624, ptr %value, align 8, !tbaa !22
  br label %if.end625

if.end625:                                        ; preds = %cond.end623, %cond.end612
  %670 = load double, ptr %value, align 8, !tbaa !22
  %671 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp626 = fcmp olt double %670, %671
  br i1 %cmp626, label %if.then628, label %if.end634

if.then628:                                       ; preds = %if.end625
  %672 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %673 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx629 = getelementptr inbounds i64, ptr %672, i64 %673
  %674 = load i64, ptr %arrayidx629, align 8, !tbaa !8
  %inc630 = add nsw i64 %674, 1
  store i64 %inc630, ptr %arrayidx629, align 8, !tbaa !8
  %675 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %676 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx631 = getelementptr inbounds double, ptr %675, i64 %676
  %677 = load double, ptr %arrayidx631, align 8, !tbaa !22
  %678 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %679 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx632 = getelementptr inbounds double, ptr %678, i64 %679
  %680 = load double, ptr %arrayidx632, align 8, !tbaa !22
  %add633 = fadd double %680, %677
  store double %add633, ptr %arrayidx632, align 8, !tbaa !22
  br label %if.end634

if.end634:                                        ; preds = %if.then628, %if.end625
  br label %if.end635

if.end635:                                        ; preds = %if.end634, %for.body594
  %681 = load i64, ptr %j_counter, align 8, !tbaa !8
  %inc636 = add nsw i64 %681, 1
  store i64 %inc636, ptr %j_counter, align 8, !tbaa !8
  br label %for.inc637

for.inc637:                                       ; preds = %if.end635
  %682 = load i64, ptr %j, align 8, !tbaa !8
  %inc638 = add nsw i64 %682, 1
  store i64 %inc638, ptr %j, align 8, !tbaa !8
  br label %for.cond589, !llvm.loop !67

for.end639:                                       ; preds = %for.cond589
  %683 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %684 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx640 = getelementptr inbounds i64, ptr %683, i64 %684
  %685 = load i64, ptr %arrayidx640, align 8, !tbaa !8
  store i64 %685, ptr %j, align 8, !tbaa !8
  br label %for.cond641

for.cond641:                                      ; preds = %for.inc689, %for.end639
  %686 = load i64, ptr %j, align 8, !tbaa !8
  %687 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %688 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx642 = getelementptr inbounds i64, ptr %687, i64 %688
  %689 = load i64, ptr %arrayidx642, align 8, !tbaa !8
  %690 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %add643 = add nsw i64 %689, %690
  %cmp644 = icmp slt i64 %686, %add643
  br i1 %cmp644, label %for.body646, label %for.end691

for.body646:                                      ; preds = %for.cond641
  %691 = load ptr, ptr %is_q, align 8, !tbaa !4
  %692 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx647 = getelementptr inbounds i64, ptr %691, i64 %692
  %693 = load i64, ptr %arrayidx647, align 8, !tbaa !8
  %tobool648 = icmp ne i64 %693, 0
  br i1 %tobool648, label %if.then649, label %if.end687

if.then649:                                       ; preds = %for.body646
  %694 = load ptr, ptr %is_q, align 8, !tbaa !4
  %695 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx650 = getelementptr inbounds i64, ptr %694, i64 %695
  %696 = load i64, ptr %arrayidx650, align 8, !tbaa !8
  %sub651 = sub nsw i64 %696, 1
  store i64 %sub651, ptr %which_q, align 8, !tbaa !8
  %697 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %698 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx652 = getelementptr inbounds i64, ptr %697, i64 %698
  %699 = load i64, ptr %arrayidx652, align 8, !tbaa !8
  %inc653 = add nsw i64 %699, 1
  store i64 %inc653, ptr %arrayidx652, align 8, !tbaa !8
  %700 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool654 = icmp ne i64 %700, 0
  br i1 %tobool654, label %if.else666, label %if.then655

if.then655:                                       ; preds = %if.then649
  %701 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %702 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx656 = getelementptr inbounds double, ptr %701, i64 %702
  %703 = load double, ptr %arrayidx656, align 8, !tbaa !22
  %cmp657 = fcmp ogt double %703, 0.000000e+00
  br i1 %cmp657, label %cond.true659, label %cond.false661

cond.true659:                                     ; preds = %if.then655
  %704 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %705 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx660 = getelementptr inbounds double, ptr %704, i64 %705
  %706 = load double, ptr %arrayidx660, align 8, !tbaa !22
  br label %cond.end664

cond.false661:                                    ; preds = %if.then655
  %707 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %708 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx662 = getelementptr inbounds double, ptr %707, i64 %708
  %709 = load double, ptr %arrayidx662, align 8, !tbaa !22
  %fneg663 = fneg double %709
  br label %cond.end664

cond.end664:                                      ; preds = %cond.false661, %cond.true659
  %cond665 = phi double [ %706, %cond.true659 ], [ %fneg663, %cond.false661 ]
  store double %cond665, ptr %value, align 8, !tbaa !22
  br label %if.end677

if.else666:                                       ; preds = %if.then649
  %710 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %711 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx667 = getelementptr inbounds double, ptr %710, i64 %711
  %712 = load double, ptr %arrayidx667, align 8, !tbaa !22
  %cmp668 = fcmp ogt double %712, 0.000000e+00
  br i1 %cmp668, label %cond.true670, label %cond.false672

cond.true670:                                     ; preds = %if.else666
  %713 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %714 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx671 = getelementptr inbounds double, ptr %713, i64 %714
  %715 = load double, ptr %arrayidx671, align 8, !tbaa !22
  br label %cond.end675

cond.false672:                                    ; preds = %if.else666
  %716 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %717 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx673 = getelementptr inbounds double, ptr %716, i64 %717
  %718 = load double, ptr %arrayidx673, align 8, !tbaa !22
  %fneg674 = fneg double %718
  br label %cond.end675

cond.end675:                                      ; preds = %cond.false672, %cond.true670
  %cond676 = phi double [ %715, %cond.true670 ], [ %fneg674, %cond.false672 ]
  store double %cond676, ptr %value, align 8, !tbaa !22
  br label %if.end677

if.end677:                                        ; preds = %cond.end675, %cond.end664
  %719 = load double, ptr %value, align 8, !tbaa !22
  %720 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp678 = fcmp olt double %719, %720
  br i1 %cmp678, label %if.then680, label %if.end686

if.then680:                                       ; preds = %if.end677
  %721 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %722 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx681 = getelementptr inbounds i64, ptr %721, i64 %722
  %723 = load i64, ptr %arrayidx681, align 8, !tbaa !8
  %inc682 = add nsw i64 %723, 1
  store i64 %inc682, ptr %arrayidx681, align 8, !tbaa !8
  %724 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %725 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx683 = getelementptr inbounds double, ptr %724, i64 %725
  %726 = load double, ptr %arrayidx683, align 8, !tbaa !22
  %727 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %728 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx684 = getelementptr inbounds double, ptr %727, i64 %728
  %729 = load double, ptr %arrayidx684, align 8, !tbaa !22
  %add685 = fadd double %729, %726
  store double %add685, ptr %arrayidx684, align 8, !tbaa !22
  br label %if.end686

if.end686:                                        ; preds = %if.then680, %if.end677
  br label %if.end687

if.end687:                                        ; preds = %if.end686, %for.body646
  %730 = load i64, ptr %j_counter, align 8, !tbaa !8
  %inc688 = add nsw i64 %730, 1
  store i64 %inc688, ptr %j_counter, align 8, !tbaa !8
  br label %for.inc689

for.inc689:                                       ; preds = %if.end687
  %731 = load i64, ptr %j, align 8, !tbaa !8
  %inc690 = add nsw i64 %731, 1
  store i64 %inc690, ptr %j, align 8, !tbaa !8
  br label %for.cond641, !llvm.loop !68

for.end691:                                       ; preds = %for.cond641
  store i64 0, ptr %tot_num_lost, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond692

for.cond692:                                      ; preds = %for.inc699, %for.end691
  %732 = load i64, ptr %j, align 8, !tbaa !8
  %733 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp693 = icmp slt i64 %732, %733
  br i1 %cmp693, label %for.body695, label %for.end701

for.body695:                                      ; preds = %for.cond692
  %734 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %735 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx696 = getelementptr inbounds double, ptr %734, i64 %735
  store double 0.000000e+00, ptr %arrayidx696, align 8, !tbaa !22
  %736 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %737 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx697 = getelementptr inbounds i64, ptr %736, i64 %737
  %738 = load i64, ptr %arrayidx697, align 8, !tbaa !8
  %739 = load i64, ptr %tot_num_lost, align 8, !tbaa !8
  %add698 = add nsw i64 %739, %738
  store i64 %add698, ptr %tot_num_lost, align 8, !tbaa !8
  br label %for.inc699

for.inc699:                                       ; preds = %for.body695
  %740 = load i64, ptr %j, align 8, !tbaa !8
  %inc700 = add nsw i64 %740, 1
  store i64 %inc700, ptr %j, align 8, !tbaa !8
  br label %for.cond692, !llvm.loop !69

for.end701:                                       ; preds = %for.cond692
  store i64 0, ptr %lost_counter_diag, align 8, !tbaa !8
  store i64 0, ptr %lost_counter_offd, align 8, !tbaa !8
  %741 = load i64, ptr %tot_num_lost, align 8, !tbaa !8
  %tobool702 = icmp ne i64 %741, 0
  br i1 %tobool702, label %if.then703, label %if.end864

if.then703:                                       ; preds = %for.end701
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond704

for.cond704:                                      ; preds = %for.inc722, %if.then703
  %742 = load i64, ptr %j, align 8, !tbaa !8
  %743 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp705 = icmp slt i64 %742, %743
  br i1 %cmp705, label %for.body707, label %for.end724

for.body707:                                      ; preds = %for.cond704
  %744 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %745 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx708 = getelementptr inbounds i64, ptr %744, i64 %745
  %746 = load i64, ptr %arrayidx708, align 8, !tbaa !8
  %747 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %748 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx709 = getelementptr inbounds i64, ptr %747, i64 %748
  %749 = load i64, ptr %arrayidx709, align 8, !tbaa !8
  %sub710 = sub nsw i64 %746, %749
  %cmp711 = icmp sgt i64 %sub710, 0
  br i1 %cmp711, label %if.then713, label %if.end721

if.then713:                                       ; preds = %for.body707
  %750 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %751 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx714 = getelementptr inbounds double, ptr %750, i64 %751
  %752 = load double, ptr %arrayidx714, align 8, !tbaa !22
  %753 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %754 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx715 = getelementptr inbounds i64, ptr %753, i64 %754
  %755 = load i64, ptr %arrayidx715, align 8, !tbaa !8
  %756 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %757 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx716 = getelementptr inbounds i64, ptr %756, i64 %757
  %758 = load i64, ptr %arrayidx716, align 8, !tbaa !8
  %sub717 = sub nsw i64 %755, %758
  %conv718 = sitofp i64 %sub717 to double
  %div719 = fdiv double %752, %conv718
  %759 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %760 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx720 = getelementptr inbounds double, ptr %759, i64 %760
  store double %div719, ptr %arrayidx720, align 8, !tbaa !22
  br label %if.end721

if.end721:                                        ; preds = %if.then713, %for.body707
  br label %for.inc722

for.inc722:                                       ; preds = %if.end721
  %761 = load i64, ptr %j, align 8, !tbaa !8
  %inc723 = add nsw i64 %761, 1
  store i64 %inc723, ptr %j, align 8, !tbaa !8
  br label %for.cond704, !llvm.loop !70

for.end724:                                       ; preds = %for.cond704
  store i64 0, ptr %j_counter, align 8, !tbaa !8
  store i64 0, ptr %new_j_counter, align 8, !tbaa !8
  %762 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %763 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx725 = getelementptr inbounds i64, ptr %762, i64 %763
  %764 = load i64, ptr %arrayidx725, align 8, !tbaa !8
  store i64 %764, ptr %new_diag_pos, align 8, !tbaa !8
  %765 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %766 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx726 = getelementptr inbounds i64, ptr %765, i64 %766
  %767 = load i64, ptr %arrayidx726, align 8, !tbaa !8
  store i64 %767, ptr %j, align 8, !tbaa !8
  br label %for.cond727

for.cond727:                                      ; preds = %for.inc787, %for.end724
  %768 = load i64, ptr %j, align 8, !tbaa !8
  %769 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %770 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx728 = getelementptr inbounds i64, ptr %769, i64 %770
  %771 = load i64, ptr %arrayidx728, align 8, !tbaa !8
  %772 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %add729 = add nsw i64 %771, %772
  %cmp730 = icmp slt i64 %768, %add729
  br i1 %cmp730, label %for.body732, label %for.end789

for.body732:                                      ; preds = %for.cond727
  %773 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool733 = icmp ne i64 %773, 0
  br i1 %tobool733, label %if.else745, label %if.then734

if.then734:                                       ; preds = %for.body732
  %774 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %775 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx735 = getelementptr inbounds double, ptr %774, i64 %775
  %776 = load double, ptr %arrayidx735, align 8, !tbaa !22
  %cmp736 = fcmp ogt double %776, 0.000000e+00
  br i1 %cmp736, label %cond.true738, label %cond.false740

cond.true738:                                     ; preds = %if.then734
  %777 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %778 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx739 = getelementptr inbounds double, ptr %777, i64 %778
  %779 = load double, ptr %arrayidx739, align 8, !tbaa !22
  br label %cond.end743

cond.false740:                                    ; preds = %if.then734
  %780 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %781 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx741 = getelementptr inbounds double, ptr %780, i64 %781
  %782 = load double, ptr %arrayidx741, align 8, !tbaa !22
  %fneg742 = fneg double %782
  br label %cond.end743

cond.end743:                                      ; preds = %cond.false740, %cond.true738
  %cond744 = phi double [ %779, %cond.true738 ], [ %fneg742, %cond.false740 ]
  store double %cond744, ptr %value, align 8, !tbaa !22
  br label %if.end756

if.else745:                                       ; preds = %for.body732
  %783 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %784 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx746 = getelementptr inbounds double, ptr %783, i64 %784
  %785 = load double, ptr %arrayidx746, align 8, !tbaa !22
  %cmp747 = fcmp ogt double %785, 0.000000e+00
  br i1 %cmp747, label %cond.true749, label %cond.false751

cond.true749:                                     ; preds = %if.else745
  %786 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %787 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx750 = getelementptr inbounds double, ptr %786, i64 %787
  %788 = load double, ptr %arrayidx750, align 8, !tbaa !22
  br label %cond.end754

cond.false751:                                    ; preds = %if.else745
  %789 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %790 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx752 = getelementptr inbounds double, ptr %789, i64 %790
  %791 = load double, ptr %arrayidx752, align 8, !tbaa !22
  %fneg753 = fneg double %791
  br label %cond.end754

cond.end754:                                      ; preds = %cond.false751, %cond.true749
  %cond755 = phi double [ %788, %cond.true749 ], [ %fneg753, %cond.false751 ]
  store double %cond755, ptr %value, align 8, !tbaa !22
  br label %if.end756

if.end756:                                        ; preds = %cond.end754, %cond.end743
  %792 = load ptr, ptr %is_q, align 8, !tbaa !4
  %793 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx757 = getelementptr inbounds i64, ptr %792, i64 %793
  %794 = load i64, ptr %arrayidx757, align 8, !tbaa !8
  %tobool758 = icmp ne i64 %794, 0
  br i1 %tobool758, label %land.lhs.true759, label %if.else766

land.lhs.true759:                                 ; preds = %if.end756
  %795 = load double, ptr %value, align 8, !tbaa !22
  %796 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp760 = fcmp olt double %795, %796
  br i1 %cmp760, label %if.then762, label %if.else766

if.then762:                                       ; preds = %land.lhs.true759
  %797 = load ptr, ptr %is_q, align 8, !tbaa !4
  %798 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx763 = getelementptr inbounds i64, ptr %797, i64 %798
  %799 = load i64, ptr %arrayidx763, align 8, !tbaa !8
  %sub764 = sub nsw i64 %799, 1
  store i64 %sub764, ptr %which_q, align 8, !tbaa !8
  %800 = load i64, ptr %lost_counter_diag, align 8, !tbaa !8
  %inc765 = add nsw i64 %800, 1
  store i64 %inc765, ptr %lost_counter_diag, align 8, !tbaa !8
  br label %if.end785

if.else766:                                       ; preds = %land.lhs.true759, %if.end756
  %801 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %802 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx767 = getelementptr inbounds double, ptr %801, i64 %802
  %803 = load double, ptr %arrayidx767, align 8, !tbaa !22
  store double %803, ptr %value, align 8, !tbaa !22
  %804 = load ptr, ptr %is_q, align 8, !tbaa !4
  %805 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx768 = getelementptr inbounds i64, ptr %804, i64 %805
  %806 = load i64, ptr %arrayidx768, align 8, !tbaa !8
  %tobool769 = icmp ne i64 %806, 0
  br i1 %tobool769, label %if.then770, label %if.end777

if.then770:                                       ; preds = %if.else766
  %807 = load ptr, ptr %is_q, align 8, !tbaa !4
  %808 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx771 = getelementptr inbounds i64, ptr %807, i64 %808
  %809 = load i64, ptr %arrayidx771, align 8, !tbaa !8
  %sub772 = sub nsw i64 %809, 1
  store i64 %sub772, ptr %which_q, align 8, !tbaa !8
  %810 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %811 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx773 = getelementptr inbounds double, ptr %810, i64 %811
  %812 = load double, ptr %arrayidx773, align 8, !tbaa !22
  %813 = load double, ptr %value, align 8, !tbaa !22
  %add774 = fadd double %813, %812
  store double %add774, ptr %value, align 8, !tbaa !22
  %814 = load double, ptr %value, align 8, !tbaa !22
  %815 = load ptr, ptr %q_data, align 8, !tbaa !4
  %816 = load i64, ptr %cnt_new_q_data, align 8, !tbaa !8
  %inc775 = add nsw i64 %816, 1
  store i64 %inc775, ptr %cnt_new_q_data, align 8, !tbaa !8
  %arrayidx776 = getelementptr inbounds double, ptr %815, i64 %816
  store double %814, ptr %arrayidx776, align 8, !tbaa !22
  br label %if.end777

if.end777:                                        ; preds = %if.then770, %if.else766
  %817 = load double, ptr %value, align 8, !tbaa !22
  %818 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %819 = load i64, ptr %new_diag_pos, align 8, !tbaa !8
  %arrayidx778 = getelementptr inbounds double, ptr %818, i64 %819
  store double %817, ptr %arrayidx778, align 8, !tbaa !22
  %820 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %821 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx779 = getelementptr inbounds i64, ptr %820, i64 %821
  %822 = load i64, ptr %arrayidx779, align 8, !tbaa !8
  %823 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %824 = load i64, ptr %new_diag_pos, align 8, !tbaa !8
  %arrayidx780 = getelementptr inbounds i64, ptr %823, i64 %824
  store i64 %822, ptr %arrayidx780, align 8, !tbaa !8
  %825 = load i64, ptr %new_diag_pos, align 8, !tbaa !8
  %inc781 = add nsw i64 %825, 1
  store i64 %inc781, ptr %new_diag_pos, align 8, !tbaa !8
  %826 = load ptr, ptr %is_q, align 8, !tbaa !4
  %827 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx782 = getelementptr inbounds i64, ptr %826, i64 %827
  %828 = load i64, ptr %arrayidx782, align 8, !tbaa !8
  %829 = load ptr, ptr %is_q, align 8, !tbaa !4
  %830 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %arrayidx783 = getelementptr inbounds i64, ptr %829, i64 %830
  store i64 %828, ptr %arrayidx783, align 8, !tbaa !8
  %831 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %inc784 = add nsw i64 %831, 1
  store i64 %inc784, ptr %new_j_counter, align 8, !tbaa !8
  br label %if.end785

if.end785:                                        ; preds = %if.end777, %if.then762
  %832 = load i64, ptr %j_counter, align 8, !tbaa !8
  %inc786 = add nsw i64 %832, 1
  store i64 %inc786, ptr %j_counter, align 8, !tbaa !8
  br label %for.inc787

for.inc787:                                       ; preds = %if.end785
  %833 = load i64, ptr %j, align 8, !tbaa !8
  %inc788 = add nsw i64 %833, 1
  store i64 %inc788, ptr %j, align 8, !tbaa !8
  br label %for.cond727, !llvm.loop !71

for.end789:                                       ; preds = %for.cond727
  %834 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %835 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx790 = getelementptr inbounds i64, ptr %834, i64 %835
  %836 = load i64, ptr %arrayidx790, align 8, !tbaa !8
  store i64 %836, ptr %new_offd_pos, align 8, !tbaa !8
  %837 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %838 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx791 = getelementptr inbounds i64, ptr %837, i64 %838
  %839 = load i64, ptr %arrayidx791, align 8, !tbaa !8
  store i64 %839, ptr %j, align 8, !tbaa !8
  br label %for.cond792

for.cond792:                                      ; preds = %for.inc852, %for.end789
  %840 = load i64, ptr %j, align 8, !tbaa !8
  %841 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %842 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx793 = getelementptr inbounds i64, ptr %841, i64 %842
  %843 = load i64, ptr %arrayidx793, align 8, !tbaa !8
  %844 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %add794 = add nsw i64 %843, %844
  %cmp795 = icmp slt i64 %840, %add794
  br i1 %cmp795, label %for.body797, label %for.end854

for.body797:                                      ; preds = %for.cond792
  %845 = load i64, ptr %use_trunc_data, align 8, !tbaa !8
  %tobool798 = icmp ne i64 %845, 0
  br i1 %tobool798, label %if.else810, label %if.then799

if.then799:                                       ; preds = %for.body797
  %846 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %847 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx800 = getelementptr inbounds double, ptr %846, i64 %847
  %848 = load double, ptr %arrayidx800, align 8, !tbaa !22
  %cmp801 = fcmp ogt double %848, 0.000000e+00
  br i1 %cmp801, label %cond.true803, label %cond.false805

cond.true803:                                     ; preds = %if.then799
  %849 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %850 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx804 = getelementptr inbounds double, ptr %849, i64 %850
  %851 = load double, ptr %arrayidx804, align 8, !tbaa !22
  br label %cond.end808

cond.false805:                                    ; preds = %if.then799
  %852 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %853 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx806 = getelementptr inbounds double, ptr %852, i64 %853
  %854 = load double, ptr %arrayidx806, align 8, !tbaa !22
  %fneg807 = fneg double %854
  br label %cond.end808

cond.end808:                                      ; preds = %cond.false805, %cond.true803
  %cond809 = phi double [ %851, %cond.true803 ], [ %fneg807, %cond.false805 ]
  store double %cond809, ptr %value, align 8, !tbaa !22
  br label %if.end821

if.else810:                                       ; preds = %for.body797
  %855 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %856 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx811 = getelementptr inbounds double, ptr %855, i64 %856
  %857 = load double, ptr %arrayidx811, align 8, !tbaa !22
  %cmp812 = fcmp ogt double %857, 0.000000e+00
  br i1 %cmp812, label %cond.true814, label %cond.false816

cond.true814:                                     ; preds = %if.else810
  %858 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %859 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx815 = getelementptr inbounds double, ptr %858, i64 %859
  %860 = load double, ptr %arrayidx815, align 8, !tbaa !22
  br label %cond.end819

cond.false816:                                    ; preds = %if.else810
  %861 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  %862 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx817 = getelementptr inbounds double, ptr %861, i64 %862
  %863 = load double, ptr %arrayidx817, align 8, !tbaa !22
  %fneg818 = fneg double %863
  br label %cond.end819

cond.end819:                                      ; preds = %cond.false816, %cond.true814
  %cond820 = phi double [ %860, %cond.true814 ], [ %fneg818, %cond.false816 ]
  store double %cond820, ptr %value, align 8, !tbaa !22
  br label %if.end821

if.end821:                                        ; preds = %cond.end819, %cond.end808
  %864 = load ptr, ptr %is_q, align 8, !tbaa !4
  %865 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx822 = getelementptr inbounds i64, ptr %864, i64 %865
  %866 = load i64, ptr %arrayidx822, align 8, !tbaa !8
  %tobool823 = icmp ne i64 %866, 0
  br i1 %tobool823, label %land.lhs.true824, label %if.else831

land.lhs.true824:                                 ; preds = %if.end821
  %867 = load double, ptr %value, align 8, !tbaa !22
  %868 = load double, ptr %abs_trunc.addr, align 8, !tbaa !22
  %cmp825 = fcmp olt double %867, %868
  br i1 %cmp825, label %if.then827, label %if.else831

if.then827:                                       ; preds = %land.lhs.true824
  %869 = load ptr, ptr %is_q, align 8, !tbaa !4
  %870 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx828 = getelementptr inbounds i64, ptr %869, i64 %870
  %871 = load i64, ptr %arrayidx828, align 8, !tbaa !8
  %sub829 = sub nsw i64 %871, 1
  store i64 %sub829, ptr %which_q, align 8, !tbaa !8
  %872 = load i64, ptr %lost_counter_offd, align 8, !tbaa !8
  %inc830 = add nsw i64 %872, 1
  store i64 %inc830, ptr %lost_counter_offd, align 8, !tbaa !8
  br label %if.end850

if.else831:                                       ; preds = %land.lhs.true824, %if.end821
  %873 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %874 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx832 = getelementptr inbounds double, ptr %873, i64 %874
  %875 = load double, ptr %arrayidx832, align 8, !tbaa !22
  store double %875, ptr %value, align 8, !tbaa !22
  %876 = load ptr, ptr %is_q, align 8, !tbaa !4
  %877 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx833 = getelementptr inbounds i64, ptr %876, i64 %877
  %878 = load i64, ptr %arrayidx833, align 8, !tbaa !8
  %tobool834 = icmp ne i64 %878, 0
  br i1 %tobool834, label %if.then835, label %if.end842

if.then835:                                       ; preds = %if.else831
  %879 = load ptr, ptr %is_q, align 8, !tbaa !4
  %880 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx836 = getelementptr inbounds i64, ptr %879, i64 %880
  %881 = load i64, ptr %arrayidx836, align 8, !tbaa !8
  %sub837 = sub nsw i64 %881, 1
  store i64 %sub837, ptr %which_q, align 8, !tbaa !8
  %882 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %883 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx838 = getelementptr inbounds double, ptr %882, i64 %883
  %884 = load double, ptr %arrayidx838, align 8, !tbaa !22
  %885 = load double, ptr %value, align 8, !tbaa !22
  %add839 = fadd double %885, %884
  store double %add839, ptr %value, align 8, !tbaa !22
  %886 = load double, ptr %value, align 8, !tbaa !22
  %887 = load ptr, ptr %q_data, align 8, !tbaa !4
  %888 = load i64, ptr %cnt_new_q_data, align 8, !tbaa !8
  %inc840 = add nsw i64 %888, 1
  store i64 %inc840, ptr %cnt_new_q_data, align 8, !tbaa !8
  %arrayidx841 = getelementptr inbounds double, ptr %887, i64 %888
  store double %886, ptr %arrayidx841, align 8, !tbaa !22
  br label %if.end842

if.end842:                                        ; preds = %if.then835, %if.else831
  %889 = load double, ptr %value, align 8, !tbaa !22
  %890 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %891 = load i64, ptr %new_offd_pos, align 8, !tbaa !8
  %arrayidx843 = getelementptr inbounds double, ptr %890, i64 %891
  store double %889, ptr %arrayidx843, align 8, !tbaa !22
  %892 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %893 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx844 = getelementptr inbounds i64, ptr %892, i64 %893
  %894 = load i64, ptr %arrayidx844, align 8, !tbaa !8
  %895 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %896 = load i64, ptr %new_offd_pos, align 8, !tbaa !8
  %arrayidx845 = getelementptr inbounds i64, ptr %895, i64 %896
  store i64 %894, ptr %arrayidx845, align 8, !tbaa !8
  %897 = load i64, ptr %new_offd_pos, align 8, !tbaa !8
  %inc846 = add nsw i64 %897, 1
  store i64 %inc846, ptr %new_offd_pos, align 8, !tbaa !8
  %898 = load ptr, ptr %is_q, align 8, !tbaa !4
  %899 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx847 = getelementptr inbounds i64, ptr %898, i64 %899
  %900 = load i64, ptr %arrayidx847, align 8, !tbaa !8
  %901 = load ptr, ptr %is_q, align 8, !tbaa !4
  %902 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %arrayidx848 = getelementptr inbounds i64, ptr %901, i64 %902
  store i64 %900, ptr %arrayidx848, align 8, !tbaa !8
  %903 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %inc849 = add nsw i64 %903, 1
  store i64 %inc849, ptr %new_j_counter, align 8, !tbaa !8
  br label %if.end850

if.end850:                                        ; preds = %if.end842, %if.then827
  %904 = load i64, ptr %j_counter, align 8, !tbaa !8
  %inc851 = add nsw i64 %904, 1
  store i64 %inc851, ptr %j_counter, align 8, !tbaa !8
  br label %for.inc852

for.inc852:                                       ; preds = %if.end850
  %905 = load i64, ptr %j, align 8, !tbaa !8
  %inc853 = add nsw i64 %905, 1
  store i64 %inc853, ptr %j, align 8, !tbaa !8
  br label %for.cond792, !llvm.loop !72

for.end854:                                       ; preds = %for.cond792
  %906 = load i64, ptr %lost_counter_diag, align 8, !tbaa !8
  %907 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %sub855 = sub nsw i64 %907, %906
  store i64 %sub855, ptr %p_count_diag, align 8, !tbaa !8
  %908 = load i64, ptr %lost_counter_offd, align 8, !tbaa !8
  %909 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %sub856 = sub nsw i64 %909, %908
  store i64 %sub856, ptr %p_count_offd, align 8, !tbaa !8
  %910 = load i64, ptr %lost_counter_diag, align 8, !tbaa !8
  %911 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %sub857 = sub nsw i64 %911, %910
  store i64 %sub857, ptr %j_diag_pos, align 8, !tbaa !8
  %912 = load i64, ptr %lost_counter_offd, align 8, !tbaa !8
  %913 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %sub858 = sub nsw i64 %913, %912
  store i64 %sub858, ptr %j_offd_pos, align 8, !tbaa !8
  %914 = load i64, ptr %tot_num_lost, align 8, !tbaa !8
  %915 = load i64, ptr %lost_counter_diag, align 8, !tbaa !8
  %916 = load i64, ptr %lost_counter_offd, align 8, !tbaa !8
  %add859 = add nsw i64 %915, %916
  %cmp860 = icmp ne i64 %914, %add859
  br i1 %cmp860, label %if.then862, label %if.end863

if.then862:                                       ; preds = %for.end854
  call void @hypre_error_handler(ptr noundef @.str, i64 noundef 1189, i64 noundef 1, ptr noundef @.str.2)
  br label %if.end863

if.end863:                                        ; preds = %if.then862, %for.end854
  br label %if.end864

if.end864:                                        ; preds = %if.end863, %for.end701
  br label %if.end865

if.end865:                                        ; preds = %if.end864, %for.end584
  %917 = load i64, ptr %q_max.addr, align 8, !tbaa !8
  %cmp866 = icmp sgt i64 %917, 0
  br i1 %cmp866, label %if.then868, label %if.end1027

if.then868:                                       ; preds = %if.end865
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_count_tot) #7
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond869

for.cond869:                                      ; preds = %for.inc876, %if.then868
  %918 = load i64, ptr %j, align 8, !tbaa !8
  %919 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp870 = icmp slt i64 %918, %919
  br i1 %cmp870, label %for.body872, label %for.end878

for.body872:                                      ; preds = %for.cond869
  %920 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %921 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx873 = getelementptr inbounds i64, ptr %920, i64 %921
  store i64 0, ptr %arrayidx873, align 8, !tbaa !8
  %922 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %923 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx874 = getelementptr inbounds i64, ptr %922, i64 %923
  store i64 0, ptr %arrayidx874, align 8, !tbaa !8
  %924 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %925 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx875 = getelementptr inbounds double, ptr %924, i64 %925
  store double 0.000000e+00, ptr %arrayidx875, align 8, !tbaa !22
  br label %for.inc876

for.inc876:                                       ; preds = %for.body872
  %926 = load i64, ptr %j, align 8, !tbaa !8
  %inc877 = add nsw i64 %926, 1
  store i64 %inc877, ptr %j, align 8, !tbaa !8
  br label %for.cond869, !llvm.loop !73

for.end878:                                       ; preds = %for.cond869
  store i64 0, ptr %j_counter, align 8, !tbaa !8
  %927 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %928 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx879 = getelementptr inbounds i64, ptr %927, i64 %928
  %929 = load i64, ptr %arrayidx879, align 8, !tbaa !8
  store i64 %929, ptr %j, align 8, !tbaa !8
  br label %for.cond880

for.cond880:                                      ; preds = %for.inc900, %for.end878
  %930 = load i64, ptr %j, align 8, !tbaa !8
  %931 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %932 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx881 = getelementptr inbounds i64, ptr %931, i64 %932
  %933 = load i64, ptr %arrayidx881, align 8, !tbaa !8
  %934 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %add882 = add nsw i64 %933, %934
  %cmp883 = icmp slt i64 %930, %add882
  br i1 %cmp883, label %for.body885, label %for.end902

for.body885:                                      ; preds = %for.cond880
  %935 = load ptr, ptr %is_q, align 8, !tbaa !4
  %936 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx886 = getelementptr inbounds i64, ptr %935, i64 %936
  %937 = load i64, ptr %arrayidx886, align 8, !tbaa !8
  %tobool887 = icmp ne i64 %937, 0
  br i1 %tobool887, label %if.then888, label %if.end893

if.then888:                                       ; preds = %for.body885
  %938 = load ptr, ptr %is_q, align 8, !tbaa !4
  %939 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx889 = getelementptr inbounds i64, ptr %938, i64 %939
  %940 = load i64, ptr %arrayidx889, align 8, !tbaa !8
  %sub890 = sub nsw i64 %940, 1
  store i64 %sub890, ptr %which_q, align 8, !tbaa !8
  %941 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %942 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx891 = getelementptr inbounds i64, ptr %941, i64 %942
  %943 = load i64, ptr %arrayidx891, align 8, !tbaa !8
  %inc892 = add nsw i64 %943, 1
  store i64 %inc892, ptr %arrayidx891, align 8, !tbaa !8
  br label %if.end893

if.end893:                                        ; preds = %if.then888, %for.body885
  %944 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %945 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx894 = getelementptr inbounds i64, ptr %944, i64 %945
  %946 = load i64, ptr %arrayidx894, align 8, !tbaa !8
  %947 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %948 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx895 = getelementptr inbounds i64, ptr %947, i64 %948
  store i64 %946, ptr %arrayidx895, align 8, !tbaa !8
  %949 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %950 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx896 = getelementptr inbounds double, ptr %949, i64 %950
  %951 = load double, ptr %arrayidx896, align 8, !tbaa !22
  %952 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %953 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx897 = getelementptr inbounds double, ptr %952, i64 %953
  store double %951, ptr %arrayidx897, align 8, !tbaa !22
  %954 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %955 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx898 = getelementptr inbounds i64, ptr %954, i64 %955
  store i64 1, ptr %arrayidx898, align 8, !tbaa !8
  %956 = load i64, ptr %j_counter, align 8, !tbaa !8
  %inc899 = add nsw i64 %956, 1
  store i64 %inc899, ptr %j_counter, align 8, !tbaa !8
  br label %for.inc900

for.inc900:                                       ; preds = %if.end893
  %957 = load i64, ptr %j, align 8, !tbaa !8
  %inc901 = add nsw i64 %957, 1
  store i64 %inc901, ptr %j, align 8, !tbaa !8
  br label %for.cond880, !llvm.loop !74

for.end902:                                       ; preds = %for.cond880
  %958 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %959 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx903 = getelementptr inbounds i64, ptr %958, i64 %959
  %960 = load i64, ptr %arrayidx903, align 8, !tbaa !8
  store i64 %960, ptr %j, align 8, !tbaa !8
  br label %for.cond904

for.cond904:                                      ; preds = %for.inc924, %for.end902
  %961 = load i64, ptr %j, align 8, !tbaa !8
  %962 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %963 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx905 = getelementptr inbounds i64, ptr %962, i64 %963
  %964 = load i64, ptr %arrayidx905, align 8, !tbaa !8
  %965 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %add906 = add nsw i64 %964, %965
  %cmp907 = icmp slt i64 %961, %add906
  br i1 %cmp907, label %for.body909, label %for.end926

for.body909:                                      ; preds = %for.cond904
  %966 = load ptr, ptr %is_q, align 8, !tbaa !4
  %967 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx910 = getelementptr inbounds i64, ptr %966, i64 %967
  %968 = load i64, ptr %arrayidx910, align 8, !tbaa !8
  %tobool911 = icmp ne i64 %968, 0
  br i1 %tobool911, label %if.then912, label %if.end917

if.then912:                                       ; preds = %for.body909
  %969 = load ptr, ptr %is_q, align 8, !tbaa !4
  %970 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx913 = getelementptr inbounds i64, ptr %969, i64 %970
  %971 = load i64, ptr %arrayidx913, align 8, !tbaa !8
  %sub914 = sub nsw i64 %971, 1
  store i64 %sub914, ptr %which_q, align 8, !tbaa !8
  %972 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %973 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx915 = getelementptr inbounds i64, ptr %972, i64 %973
  %974 = load i64, ptr %arrayidx915, align 8, !tbaa !8
  %inc916 = add nsw i64 %974, 1
  store i64 %inc916, ptr %arrayidx915, align 8, !tbaa !8
  br label %if.end917

if.end917:                                        ; preds = %if.then912, %for.body909
  %975 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %976 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx918 = getelementptr inbounds i64, ptr %975, i64 %976
  %977 = load i64, ptr %arrayidx918, align 8, !tbaa !8
  %978 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %979 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx919 = getelementptr inbounds i64, ptr %978, i64 %979
  store i64 %977, ptr %arrayidx919, align 8, !tbaa !8
  %980 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %981 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx920 = getelementptr inbounds double, ptr %980, i64 %981
  %982 = load double, ptr %arrayidx920, align 8, !tbaa !22
  %983 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %984 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx921 = getelementptr inbounds double, ptr %983, i64 %984
  store double %982, ptr %arrayidx921, align 8, !tbaa !22
  %985 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %986 = load i64, ptr %j_counter, align 8, !tbaa !8
  %arrayidx922 = getelementptr inbounds i64, ptr %985, i64 %986
  store i64 0, ptr %arrayidx922, align 8, !tbaa !8
  %987 = load i64, ptr %j_counter, align 8, !tbaa !8
  %inc923 = add nsw i64 %987, 1
  store i64 %inc923, ptr %j_counter, align 8, !tbaa !8
  br label %for.inc924

for.inc924:                                       ; preds = %if.end917
  %988 = load i64, ptr %j, align 8, !tbaa !8
  %inc925 = add nsw i64 %988, 1
  store i64 %inc925, ptr %j, align 8, !tbaa !8
  br label %for.cond904, !llvm.loop !75

for.end926:                                       ; preds = %for.cond904
  store i64 0, ptr %tot_num_lost, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond927

for.cond927:                                      ; preds = %for.inc945, %for.end926
  %989 = load i64, ptr %j, align 8, !tbaa !8
  %990 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %cmp928 = icmp slt i64 %989, %990
  br i1 %cmp928, label %for.body930, label %for.end947

for.body930:                                      ; preds = %for.cond927
  %991 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %992 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx931 = getelementptr inbounds double, ptr %991, i64 %992
  store double 0.000000e+00, ptr %arrayidx931, align 8, !tbaa !22
  %993 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %994 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx932 = getelementptr inbounds double, ptr %993, i64 %994
  store double 0.000000e+00, ptr %arrayidx932, align 8, !tbaa !22
  %995 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %996 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx933 = getelementptr inbounds i64, ptr %995, i64 %996
  store i64 0, ptr %arrayidx933, align 8, !tbaa !8
  %997 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  %998 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx934 = getelementptr inbounds i64, ptr %997, i64 %998
  %999 = load i64, ptr %arrayidx934, align 8, !tbaa !8
  %1000 = load i64, ptr %q_max.addr, align 8, !tbaa !8
  %sub935 = sub nsw i64 %999, %1000
  %1001 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %1002 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx936 = getelementptr inbounds i64, ptr %1001, i64 %1002
  store i64 %sub935, ptr %arrayidx936, align 8, !tbaa !8
  %1003 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %1004 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx937 = getelementptr inbounds i64, ptr %1003, i64 %1004
  %1005 = load i64, ptr %arrayidx937, align 8, !tbaa !8
  %cmp938 = icmp slt i64 %1005, 0
  br i1 %cmp938, label %if.then940, label %if.end942

if.then940:                                       ; preds = %for.body930
  %1006 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %1007 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx941 = getelementptr inbounds i64, ptr %1006, i64 %1007
  store i64 0, ptr %arrayidx941, align 8, !tbaa !8
  br label %if.end942

if.end942:                                        ; preds = %if.then940, %for.body930
  %1008 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %1009 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx943 = getelementptr inbounds i64, ptr %1008, i64 %1009
  %1010 = load i64, ptr %arrayidx943, align 8, !tbaa !8
  %1011 = load i64, ptr %tot_num_lost, align 8, !tbaa !8
  %add944 = add nsw i64 %1011, %1010
  store i64 %add944, ptr %tot_num_lost, align 8, !tbaa !8
  br label %for.inc945

for.inc945:                                       ; preds = %if.end942
  %1012 = load i64, ptr %j, align 8, !tbaa !8
  %inc946 = add nsw i64 %1012, 1
  store i64 %inc946, ptr %j, align 8, !tbaa !8
  br label %for.cond927, !llvm.loop !76

for.end947:                                       ; preds = %for.cond927
  %1013 = load i64, ptr %tot_num_lost, align 8, !tbaa !8
  %cmp948 = icmp sgt i64 %1013, 0
  br i1 %cmp948, label %if.then950, label %if.end1026

if.then950:                                       ; preds = %for.end947
  %1014 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %1015 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %add951 = add nsw i64 %1014, %1015
  store i64 %add951, ptr %p_count_tot, align 8, !tbaa !8
  %1016 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %1017 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %1018 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1019 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %1020 = load i64, ptr %p_count_tot, align 8, !tbaa !8
  %sub952 = sub nsw i64 %1020, 1
  call void @hypre_BigQsort4_abs(ptr noundef %1016, ptr noundef %1017, ptr noundef %1018, ptr noundef %1019, i64 noundef 0, i64 noundef %sub952)
  store i64 0, ptr %lost_counter_diag, align 8, !tbaa !8
  store i64 0, ptr %lost_counter_offd, align 8, !tbaa !8
  %1021 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1022 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx953 = getelementptr inbounds i64, ptr %1021, i64 %1022
  %1023 = load i64, ptr %arrayidx953, align 8, !tbaa !8
  store i64 %1023, ptr %new_diag_pos, align 8, !tbaa !8
  %1024 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1025 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx954 = getelementptr inbounds i64, ptr %1024, i64 %1025
  %1026 = load i64, ptr %arrayidx954, align 8, !tbaa !8
  store i64 %1026, ptr %new_offd_pos, align 8, !tbaa !8
  store i64 0, ptr %new_j_counter, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond955

for.cond955:                                      ; preds = %for.inc1019, %if.then950
  %1027 = load i64, ptr %j, align 8, !tbaa !8
  %1028 = load i64, ptr %p_count_tot, align 8, !tbaa !8
  %cmp956 = icmp slt i64 %1027, %1028
  br i1 %cmp956, label %for.body958, label %for.end1021

for.body958:                                      ; preds = %for.cond955
  store i64 0, ptr %which_q, align 8, !tbaa !8
  %1029 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1030 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx959 = getelementptr inbounds i64, ptr %1029, i64 %1030
  %1031 = load i64, ptr %arrayidx959, align 8, !tbaa !8
  %tobool960 = icmp ne i64 %1031, 0
  br i1 %tobool960, label %if.then961, label %if.end964

if.then961:                                       ; preds = %for.body958
  %1032 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1033 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx962 = getelementptr inbounds i64, ptr %1032, i64 %1033
  %1034 = load i64, ptr %arrayidx962, align 8, !tbaa !8
  %sub963 = sub nsw i64 %1034, 1
  store i64 %sub963, ptr %which_q, align 8, !tbaa !8
  br label %if.end964

if.end964:                                        ; preds = %if.then961, %for.body958
  %1035 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1036 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx965 = getelementptr inbounds i64, ptr %1035, i64 %1036
  %1037 = load i64, ptr %arrayidx965, align 8, !tbaa !8
  %tobool966 = icmp ne i64 %1037, 0
  br i1 %tobool966, label %land.lhs.true967, label %if.else989

land.lhs.true967:                                 ; preds = %if.end964
  %1038 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %1039 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx968 = getelementptr inbounds i64, ptr %1038, i64 %1039
  %1040 = load i64, ptr %arrayidx968, align 8, !tbaa !8
  %1041 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  %1042 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx969 = getelementptr inbounds i64, ptr %1041, i64 %1042
  %1043 = load i64, ptr %arrayidx969, align 8, !tbaa !8
  %cmp970 = icmp slt i64 %1040, %1043
  br i1 %cmp970, label %if.then972, label %if.else989

if.then972:                                       ; preds = %land.lhs.true967
  %1044 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %1045 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx973 = getelementptr inbounds double, ptr %1044, i64 %1045
  %1046 = load double, ptr %arrayidx973, align 8, !tbaa !22
  %1047 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %1048 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx974 = getelementptr inbounds double, ptr %1047, i64 %1048
  %1049 = load double, ptr %arrayidx974, align 8, !tbaa !22
  %add975 = fadd double %1049, %1046
  store double %add975, ptr %arrayidx974, align 8, !tbaa !22
  %1050 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %1051 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx976 = getelementptr inbounds i64, ptr %1050, i64 %1051
  %1052 = load i64, ptr %arrayidx976, align 8, !tbaa !8
  %inc977 = add nsw i64 %1052, 1
  store i64 %inc977, ptr %arrayidx976, align 8, !tbaa !8
  %1053 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %1054 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx978 = getelementptr inbounds i64, ptr %1053, i64 %1054
  %1055 = load i64, ptr %arrayidx978, align 8, !tbaa !8
  %tobool979 = icmp ne i64 %1055, 0
  br i1 %tobool979, label %if.then980, label %if.else982

if.then980:                                       ; preds = %if.then972
  %1056 = load i64, ptr %lost_counter_diag, align 8, !tbaa !8
  %inc981 = add nsw i64 %1056, 1
  store i64 %inc981, ptr %lost_counter_diag, align 8, !tbaa !8
  br label %if.end984

if.else982:                                       ; preds = %if.then972
  %1057 = load i64, ptr %lost_counter_offd, align 8, !tbaa !8
  %inc983 = add nsw i64 %1057, 1
  store i64 %inc983, ptr %lost_counter_offd, align 8, !tbaa !8
  br label %if.end984

if.end984:                                        ; preds = %if.else982, %if.then980
  %1058 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  %1059 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx985 = getelementptr inbounds double, ptr %1058, i64 %1059
  %1060 = load double, ptr %arrayidx985, align 8, !tbaa !22
  %1061 = load i64, ptr %q_max.addr, align 8, !tbaa !8
  %conv986 = sitofp i64 %1061 to double
  %div987 = fdiv double %1060, %conv986
  %1062 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %1063 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx988 = getelementptr inbounds double, ptr %1062, i64 %1063
  store double %div987, ptr %arrayidx988, align 8, !tbaa !22
  br label %if.end1018

if.else989:                                       ; preds = %land.lhs.true967, %if.end964
  %1064 = load ptr, ptr %aux_data, align 8, !tbaa !4
  %1065 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx990 = getelementptr inbounds double, ptr %1064, i64 %1065
  %1066 = load double, ptr %arrayidx990, align 8, !tbaa !22
  store double %1066, ptr %value, align 8, !tbaa !22
  %1067 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1068 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx991 = getelementptr inbounds i64, ptr %1067, i64 %1068
  %1069 = load i64, ptr %arrayidx991, align 8, !tbaa !8
  %tobool992 = icmp ne i64 %1069, 0
  br i1 %tobool992, label %if.then993, label %if.end998

if.then993:                                       ; preds = %if.else989
  %1070 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1071 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx994 = getelementptr inbounds i64, ptr %1070, i64 %1071
  %1072 = load i64, ptr %arrayidx994, align 8, !tbaa !8
  %sub995 = sub nsw i64 %1072, 1
  store i64 %sub995, ptr %which_q, align 8, !tbaa !8
  %1073 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  %1074 = load i64, ptr %which_q, align 8, !tbaa !8
  %arrayidx996 = getelementptr inbounds double, ptr %1073, i64 %1074
  %1075 = load double, ptr %arrayidx996, align 8, !tbaa !22
  %1076 = load double, ptr %value, align 8, !tbaa !22
  %add997 = fadd double %1076, %1075
  store double %add997, ptr %value, align 8, !tbaa !22
  br label %if.end998

if.end998:                                        ; preds = %if.then993, %if.else989
  %1077 = load ptr, ptr %is_diag, align 8, !tbaa !4
  %1078 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx999 = getelementptr inbounds i64, ptr %1077, i64 %1078
  %1079 = load i64, ptr %arrayidx999, align 8, !tbaa !8
  %tobool1000 = icmp ne i64 %1079, 0
  br i1 %tobool1000, label %if.then1001, label %if.else1009

if.then1001:                                      ; preds = %if.end998
  %1080 = load double, ptr %value, align 8, !tbaa !22
  %1081 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %1082 = load i64, ptr %new_diag_pos, align 8, !tbaa !8
  %arrayidx1002 = getelementptr inbounds double, ptr %1081, i64 %1082
  store double %1080, ptr %arrayidx1002, align 8, !tbaa !22
  %1083 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %1084 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx1003 = getelementptr inbounds i64, ptr %1083, i64 %1084
  %1085 = load i64, ptr %arrayidx1003, align 8, !tbaa !8
  %1086 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %1087 = load i64, ptr %new_diag_pos, align 8, !tbaa !8
  %arrayidx1004 = getelementptr inbounds i64, ptr %1086, i64 %1087
  store i64 %1085, ptr %arrayidx1004, align 8, !tbaa !8
  %1088 = load i64, ptr %new_diag_pos, align 8, !tbaa !8
  %inc1005 = add nsw i64 %1088, 1
  store i64 %inc1005, ptr %new_diag_pos, align 8, !tbaa !8
  %1089 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1090 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx1006 = getelementptr inbounds i64, ptr %1089, i64 %1090
  %1091 = load i64, ptr %arrayidx1006, align 8, !tbaa !8
  %1092 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1093 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %arrayidx1007 = getelementptr inbounds i64, ptr %1092, i64 %1093
  store i64 %1091, ptr %arrayidx1007, align 8, !tbaa !8
  %1094 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %inc1008 = add nsw i64 %1094, 1
  store i64 %inc1008, ptr %new_j_counter, align 8, !tbaa !8
  br label %if.end1017

if.else1009:                                      ; preds = %if.end998
  %1095 = load double, ptr %value, align 8, !tbaa !22
  %1096 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %1097 = load i64, ptr %new_offd_pos, align 8, !tbaa !8
  %arrayidx1010 = getelementptr inbounds double, ptr %1096, i64 %1097
  store double %1095, ptr %arrayidx1010, align 8, !tbaa !22
  %1098 = load ptr, ptr %aux_j, align 8, !tbaa !4
  %1099 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx1011 = getelementptr inbounds i64, ptr %1098, i64 %1099
  %1100 = load i64, ptr %arrayidx1011, align 8, !tbaa !8
  %1101 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %1102 = load i64, ptr %new_offd_pos, align 8, !tbaa !8
  %arrayidx1012 = getelementptr inbounds i64, ptr %1101, i64 %1102
  store i64 %1100, ptr %arrayidx1012, align 8, !tbaa !8
  %1103 = load i64, ptr %new_offd_pos, align 8, !tbaa !8
  %inc1013 = add nsw i64 %1103, 1
  store i64 %inc1013, ptr %new_offd_pos, align 8, !tbaa !8
  %1104 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1105 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx1014 = getelementptr inbounds i64, ptr %1104, i64 %1105
  %1106 = load i64, ptr %arrayidx1014, align 8, !tbaa !8
  %1107 = load ptr, ptr %is_q, align 8, !tbaa !4
  %1108 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %arrayidx1015 = getelementptr inbounds i64, ptr %1107, i64 %1108
  store i64 %1106, ptr %arrayidx1015, align 8, !tbaa !8
  %1109 = load i64, ptr %new_j_counter, align 8, !tbaa !8
  %inc1016 = add nsw i64 %1109, 1
  store i64 %inc1016, ptr %new_j_counter, align 8, !tbaa !8
  br label %if.end1017

if.end1017:                                       ; preds = %if.else1009, %if.then1001
  br label %if.end1018

if.end1018:                                       ; preds = %if.end1017, %if.end984
  br label %for.inc1019

for.inc1019:                                      ; preds = %if.end1018
  %1110 = load i64, ptr %j, align 8, !tbaa !8
  %inc1020 = add nsw i64 %1110, 1
  store i64 %inc1020, ptr %j, align 8, !tbaa !8
  br label %for.cond955, !llvm.loop !77

for.end1021:                                      ; preds = %for.cond955
  %1111 = load i64, ptr %lost_counter_diag, align 8, !tbaa !8
  %1112 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %sub1022 = sub nsw i64 %1112, %1111
  store i64 %sub1022, ptr %p_count_diag, align 8, !tbaa !8
  %1113 = load i64, ptr %lost_counter_offd, align 8, !tbaa !8
  %1114 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %sub1023 = sub nsw i64 %1114, %1113
  store i64 %sub1023, ptr %p_count_offd, align 8, !tbaa !8
  %1115 = load i64, ptr %lost_counter_diag, align 8, !tbaa !8
  %1116 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %sub1024 = sub nsw i64 %1116, %1115
  store i64 %sub1024, ptr %j_diag_pos, align 8, !tbaa !8
  %1117 = load i64, ptr %lost_counter_offd, align 8, !tbaa !8
  %1118 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %sub1025 = sub nsw i64 %1118, %1117
  store i64 %sub1025, ptr %j_offd_pos, align 8, !tbaa !8
  br label %if.end1026

if.end1026:                                       ; preds = %for.end1021, %for.end947
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_count_tot) #7
  br label %if.end1027

if.end1027:                                       ; preds = %if.end1026, %if.end865
  call void @llvm.lifetime.end.p0(i64 8, ptr %which_q) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lost_counter_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lost_counter_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cnt_new_q_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_j_counter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_counter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_offd_pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_diag_pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tot_num_lost) #7
  br label %if.end1028

if.end1028:                                       ; preds = %if.end1027, %lor.lhs.false569, %land.lhs.true563, %if.end560
  %1119 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %1120 = load i64, ptr %i, align 8, !tbaa !8
  %add1029 = add nsw i64 %1120, 1
  %arrayidx1030 = getelementptr inbounds i64, ptr %1119, i64 %add1029
  %1121 = load i64, ptr %arrayidx1030, align 8, !tbaa !8
  store i64 %1121, ptr %orig_diag_start, align 8, !tbaa !8
  %1122 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %1123 = load i64, ptr %i, align 8, !tbaa !8
  %add1031 = add nsw i64 %1123, 1
  %arrayidx1032 = getelementptr inbounds i64, ptr %1122, i64 %add1031
  %1124 = load i64, ptr %arrayidx1032, align 8, !tbaa !8
  store i64 %1124, ptr %orig_offd_start, align 8, !tbaa !8
  %1125 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1126 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1033 = getelementptr inbounds i64, ptr %1125, i64 %1126
  %1127 = load i64, ptr %arrayidx1033, align 8, !tbaa !8
  %1128 = load i64, ptr %p_count_diag, align 8, !tbaa !8
  %add1034 = add nsw i64 %1127, %1128
  %1129 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1130 = load i64, ptr %i, align 8, !tbaa !8
  %add1035 = add nsw i64 %1130, 1
  %arrayidx1036 = getelementptr inbounds i64, ptr %1129, i64 %add1035
  store i64 %add1034, ptr %arrayidx1036, align 8, !tbaa !8
  %1131 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1132 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1037 = getelementptr inbounds i64, ptr %1131, i64 %1132
  %1133 = load i64, ptr %arrayidx1037, align 8, !tbaa !8
  %1134 = load i64, ptr %p_count_offd, align 8, !tbaa !8
  %add1038 = add nsw i64 %1133, %1134
  %1135 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1136 = load i64, ptr %i, align 8, !tbaa !8
  %add1039 = add nsw i64 %1136, 1
  %arrayidx1040 = getelementptr inbounds i64, ptr %1135, i64 %add1039
  store i64 %add1038, ptr %arrayidx1040, align 8, !tbaa !8
  %1137 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %1138 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1139 = load i64, ptr %i, align 8, !tbaa !8
  %add1041 = add nsw i64 %1139, 1
  %arrayidx1042 = getelementptr inbounds i64, ptr %1138, i64 %add1041
  %1140 = load i64, ptr %arrayidx1042, align 8, !tbaa !8
  %cmp1043 = icmp ne i64 %1137, %1140
  br i1 %cmp1043, label %if.then1045, label %if.end1046

if.then1045:                                      ; preds = %if.end1028
  call void @hypre_error_handler(ptr noundef @.str, i64 noundef 1361, i64 noundef 1, ptr noundef @.str.3)
  br label %if.end1046

if.end1046:                                       ; preds = %if.then1045, %if.end1028
  %1141 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %1142 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1143 = load i64, ptr %i, align 8, !tbaa !8
  %add1047 = add nsw i64 %1143, 1
  %arrayidx1048 = getelementptr inbounds i64, ptr %1142, i64 %add1047
  %1144 = load i64, ptr %arrayidx1048, align 8, !tbaa !8
  %cmp1049 = icmp ne i64 %1141, %1144
  br i1 %cmp1049, label %if.then1051, label %if.end1052

if.then1051:                                      ; preds = %if.end1046
  call void @hypre_error_handler(ptr noundef @.str, i64 noundef 1366, i64 noundef 1, ptr noundef @.str.4)
  br label %if.end1052

if.end1052:                                       ; preds = %if.then1051, %if.end1046
  br label %for.inc1053

for.inc1053:                                      ; preds = %if.end1052
  %1145 = load i64, ptr %i, align 8, !tbaa !8
  %inc1054 = add nsw i64 %1145, 1
  store i64 %inc1054, ptr %i, align 8, !tbaa !8
  br label %for.cond178, !llvm.loop !78

for.end1055:                                      ; preds = %for.cond178
  %1146 = load i64, ptr %level.addr, align 8, !tbaa !8
  %1147 = load i64, ptr %interp_vec_first_level.addr, align 8, !tbaa !8
  %cmp1056 = icmp eq i64 %1146, %1147
  br i1 %cmp1056, label %if.then1058, label %if.else1098

if.then1058:                                      ; preds = %for.end1055
  call void @llvm.lifetime.start.p0(i64 8, ptr %spot) #7
  %1148 = load ptr, ptr %c_dof_func, align 8, !tbaa !4
  %1149 = load ptr, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  %1150 = load ptr, ptr %1149, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.hypre_IntArray, ptr %1150, i32 0, i32 1
  %1151 = load i64, ptr %size, align 8, !tbaa !79
  %mul1059 = mul i64 8, %1151
  %1152 = load i64, ptr %new_ncv, align 8, !tbaa !8
  %mul1060 = mul i64 8, %1152
  %1153 = load ptr, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  %1154 = load ptr, ptr %1153, align 8, !tbaa !4
  %memory_location = getelementptr inbounds %struct.hypre_IntArray, ptr %1154, i32 0, i32 2
  %1155 = load i32, ptr %memory_location, align 8, !tbaa !80
  %call1061 = call ptr @hypre_ReAlloc_v2(ptr noundef %1148, i64 noundef %mul1059, i64 noundef %mul1060, i32 noundef %1155)
  store ptr %call1061, ptr %c_dof_func, align 8, !tbaa !4
  store i64 0, ptr %spot, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond1062

for.cond1062:                                     ; preds = %for.inc1076, %if.then1058
  %1156 = load i64, ptr %i, align 8, !tbaa !8
  %1157 = load i64, ptr %ncv_peru, align 8, !tbaa !8
  %cmp1063 = icmp slt i64 %1156, %1157
  br i1 %cmp1063, label %for.body1065, label %for.end1078

for.body1065:                                     ; preds = %for.cond1062
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond1066

for.cond1066:                                     ; preds = %for.inc1073, %for.body1065
  %1158 = load i64, ptr %k, align 8, !tbaa !8
  %1159 = load i64, ptr %num_functions, align 8, !tbaa !8
  %1160 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %add1067 = add nsw i64 %1159, %1160
  %cmp1068 = icmp slt i64 %1158, %add1067
  br i1 %cmp1068, label %for.body1070, label %for.end1075

for.body1070:                                     ; preds = %for.cond1066
  %1161 = load i64, ptr %k, align 8, !tbaa !8
  %1162 = load ptr, ptr %c_dof_func, align 8, !tbaa !4
  %1163 = load i64, ptr %spot, align 8, !tbaa !8
  %inc1071 = add nsw i64 %1163, 1
  store i64 %inc1071, ptr %spot, align 8, !tbaa !8
  %arrayidx1072 = getelementptr inbounds i64, ptr %1162, i64 %1163
  store i64 %1161, ptr %arrayidx1072, align 8, !tbaa !8
  br label %for.inc1073

for.inc1073:                                      ; preds = %for.body1070
  %1164 = load i64, ptr %k, align 8, !tbaa !8
  %inc1074 = add nsw i64 %1164, 1
  store i64 %inc1074, ptr %k, align 8, !tbaa !8
  br label %for.cond1066, !llvm.loop !81

for.end1075:                                      ; preds = %for.cond1066
  br label %for.inc1076

for.inc1076:                                      ; preds = %for.end1075
  %1165 = load i64, ptr %i, align 8, !tbaa !8
  %inc1077 = add nsw i64 %1165, 1
  store i64 %inc1077, ptr %i, align 8, !tbaa !8
  br label %for.cond1062, !llvm.loop !82

for.end1078:                                      ; preds = %for.cond1062
  %1166 = load i64, ptr %num_functions, align 8, !tbaa !8
  %1167 = load i64, ptr %num_smooth_vecs.addr, align 8, !tbaa !8
  %add1079 = add nsw i64 %1166, %1167
  store i64 %add1079, ptr %new_nf, align 8, !tbaa !8
  %1168 = load i64, ptr %new_nf, align 8, !tbaa !8
  %1169 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  store i64 %1168, ptr %1169, align 8, !tbaa !8
  %1170 = load ptr, ptr %c_dof_func, align 8, !tbaa !4
  %1171 = load ptr, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  %1172 = load ptr, ptr %1171, align 8, !tbaa !4
  %data1080 = getelementptr inbounds %struct.hypre_IntArray, ptr %1172, i32 0, i32 0
  store ptr %1170, ptr %data1080, align 8, !tbaa !38
  %1173 = load i64, ptr %new_ncv, align 8, !tbaa !8
  %1174 = load ptr, ptr %coarse_dof_func.addr, align 8, !tbaa !4
  %1175 = load ptr, ptr %1174, align 8, !tbaa !4
  %size1081 = getelementptr inbounds %struct.hypre_IntArray, ptr %1175, i32 0, i32 1
  store i64 %1173, ptr %size1081, align 8, !tbaa !79
  %1176 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1082 = getelementptr inbounds i64, ptr %1176, i64 0
  %1177 = load i64, ptr %arrayidx1082, align 8, !tbaa !8
  %1178 = load i64, ptr %num_functions, align 8, !tbaa !8
  %div1083 = sdiv i64 %1177, %1178
  %1179 = load i64, ptr %new_nf, align 8, !tbaa !8
  %mul1084 = mul nsw i64 %div1083, %1179
  %arrayidx1085 = getelementptr inbounds [2 x i64], ptr %new_col_starts, i64 0, i64 0
  store i64 %mul1084, ptr %arrayidx1085, align 16, !tbaa !8
  %1180 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1086 = getelementptr inbounds i64, ptr %1180, i64 1
  %1181 = load i64, ptr %arrayidx1086, align 8, !tbaa !8
  %1182 = load i64, ptr %num_functions, align 8, !tbaa !8
  %div1087 = sdiv i64 %1181, %1182
  %1183 = load i64, ptr %new_nf, align 8, !tbaa !8
  %mul1088 = mul nsw i64 %div1087, %1183
  %arrayidx1089 = getelementptr inbounds [2 x i64], ptr %new_col_starts, i64 0, i64 1
  store i64 %mul1088, ptr %arrayidx1089, align 8, !tbaa !8
  %1184 = load i64, ptr %myid, align 8, !tbaa !8
  %1185 = load i64, ptr %num_procs, align 8, !tbaa !8
  %sub1090 = sub nsw i64 %1185, 1
  %cmp1091 = icmp eq i64 %1184, %sub1090
  br i1 %cmp1091, label %if.then1093, label %if.end1095

if.then1093:                                      ; preds = %for.end1078
  %arrayidx1094 = getelementptr inbounds [2 x i64], ptr %new_col_starts, i64 0, i64 1
  %1186 = load i64, ptr %arrayidx1094, align 8, !tbaa !8
  store i64 %1186, ptr %g_nc, align 8, !tbaa !8
  br label %if.end1095

if.end1095:                                       ; preds = %if.then1093, %for.end1078
  %1187 = load i64, ptr %num_procs, align 8, !tbaa !8
  %sub1096 = sub nsw i64 %1187, 1
  %1188 = load ptr, ptr %comm, align 8, !tbaa !4
  %call1097 = call i64 @hypre_MPI_Bcast(ptr noundef %g_nc, i64 noundef 1, ptr noundef @ompi_mpi_long_long_int, i64 noundef %sub1096, ptr noundef %1188)
  call void @llvm.lifetime.end.p0(i64 8, ptr %spot) #7
  br label %if.end1103

if.else1098:                                      ; preds = %for.end1055
  %1189 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %1190 = load ptr, ptr %1189, align 8, !tbaa !4
  %global_num_cols = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1190, i32 0, i32 2
  %1191 = load i64, ptr %global_num_cols, align 8, !tbaa !13
  store i64 %1191, ptr %g_nc, align 8, !tbaa !8
  %1192 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1099 = getelementptr inbounds i64, ptr %1192, i64 0
  %1193 = load i64, ptr %arrayidx1099, align 8, !tbaa !8
  %arrayidx1100 = getelementptr inbounds [2 x i64], ptr %new_col_starts, i64 0, i64 0
  store i64 %1193, ptr %arrayidx1100, align 16, !tbaa !8
  %1194 = load ptr, ptr %col_starts, align 8, !tbaa !4
  %arrayidx1101 = getelementptr inbounds i64, ptr %1194, i64 1
  %1195 = load i64, ptr %arrayidx1101, align 8, !tbaa !8
  %arrayidx1102 = getelementptr inbounds [2 x i64], ptr %new_col_starts, i64 0, i64 1
  store i64 %1195, ptr %arrayidx1102, align 8, !tbaa !8
  br label %if.end1103

if.end1103:                                       ; preds = %if.else1098, %if.end1095
  %1196 = load ptr, ptr %comm, align 8, !tbaa !4
  %1197 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1197, i32 0, i32 1
  %1198 = load i64, ptr %global_num_rows, align 8, !tbaa !83
  %1199 = load i64, ptr %g_nc, align 8, !tbaa !8
  %1200 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %col_starts1104 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1200, i32 0, i32 15
  %arraydecay1105 = getelementptr inbounds [2 x i64], ptr %col_starts1104, i64 0, i64 0
  %arraydecay1106 = getelementptr inbounds [2 x i64], ptr %new_col_starts, i64 0, i64 0
  %1201 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1202 = load i64, ptr %nv, align 8, !tbaa !8
  %arrayidx1107 = getelementptr inbounds i64, ptr %1201, i64 %1202
  %1203 = load i64, ptr %arrayidx1107, align 8, !tbaa !8
  %1204 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1205 = load i64, ptr %nv, align 8, !tbaa !8
  %arrayidx1108 = getelementptr inbounds i64, ptr %1204, i64 %1205
  %1206 = load i64, ptr %arrayidx1108, align 8, !tbaa !8
  %call1109 = call ptr @hypre_ParCSRMatrixCreate(ptr noundef %1196, i64 noundef %1198, i64 noundef %1199, ptr noundef %arraydecay1105, ptr noundef %arraydecay1106, i64 noundef 0, i64 noundef %1203, i64 noundef %1206)
  store ptr %call1109, ptr %new_P, align 8, !tbaa !4
  %1207 = load ptr, ptr %new_P, align 8, !tbaa !4
  %diag1110 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1207, i32 0, i32 8
  %1208 = load ptr, ptr %diag1110, align 8, !tbaa !28
  store ptr %1208, ptr %P_diag, align 8, !tbaa !4
  %1209 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1210 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %i1111 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1210, i32 0, i32 0
  store ptr %1209, ptr %i1111, align 8, !tbaa !31
  %1211 = load ptr, ptr %P_diag_j_new, align 8, !tbaa !4
  %1212 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %j1112 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1212, i32 0, i32 1
  store ptr %1211, ptr %j1112, align 8, !tbaa !32
  %1213 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %1214 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data1113 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1214, i32 0, i32 10
  store ptr %1213, ptr %data1113, align 8, !tbaa !29
  %1215 = load ptr, ptr %P_diag_i_new, align 8, !tbaa !4
  %1216 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %arrayidx1114 = getelementptr inbounds i64, ptr %1215, i64 %1216
  %1217 = load i64, ptr %arrayidx1114, align 8, !tbaa !8
  %1218 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_nonzeros = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1218, i32 0, i32 5
  store i64 %1217, ptr %num_nonzeros, align 8, !tbaa !84
  %1219 = load ptr, ptr %new_P, align 8, !tbaa !4
  %offd1115 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1219, i32 0, i32 9
  %1220 = load ptr, ptr %offd1115, align 8, !tbaa !35
  store ptr %1220, ptr %P_offd, align 8, !tbaa !4
  %1221 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %1222 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data1116 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1222, i32 0, i32 10
  store ptr %1221, ptr %data1116, align 8, !tbaa !29
  %1223 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1224 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %i1117 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1224, i32 0, i32 0
  store ptr %1223, ptr %i1117, align 8, !tbaa !31
  %1225 = load i64, ptr %num_procs, align 8, !tbaa !8
  %cmp1118 = icmp sgt i64 %1225, 1
  br i1 %cmp1118, label %if.then1120, label %if.end1169

if.then1120:                                      ; preds = %if.end1103
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_cols_P_offd1121) #7
  store i64 0, ptr %num_cols_P_offd1121, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_new_size) #7
  %1226 = load ptr, ptr %P_offd_i_new, align 8, !tbaa !4
  %1227 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %arrayidx1122 = getelementptr inbounds i64, ptr %1226, i64 %1227
  %1228 = load i64, ptr %arrayidx1122, align 8, !tbaa !8
  store i64 %1228, ptr %P_offd_new_size, align 8, !tbaa !8
  %1229 = load i64, ptr %P_offd_new_size, align 8, !tbaa !8
  %tobool1123 = icmp ne i64 %1229, 0
  br i1 %tobool1123, label %if.then1124, label %if.end1166

if.then1124:                                      ; preds = %if.then1120
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_copy) #7
  %1230 = load i64, ptr %P_offd_new_size, align 8, !tbaa !8
  %call1125 = call ptr @hypre_CAlloc(i64 noundef %1230, i64 noundef 8, i32 noundef 0)
  store ptr %call1125, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1231 = load i64, ptr %P_offd_new_size, align 8, !tbaa !8
  %call1126 = call ptr @hypre_CAlloc(i64 noundef %1231, i64 noundef 8, i32 noundef 0)
  store ptr %call1126, ptr %j_copy, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond1127

for.cond1127:                                     ; preds = %for.inc1133, %if.then1124
  %1232 = load i64, ptr %i, align 8, !tbaa !8
  %1233 = load i64, ptr %P_offd_new_size, align 8, !tbaa !8
  %cmp1128 = icmp slt i64 %1232, %1233
  br i1 %cmp1128, label %for.body1130, label %for.end1135

for.body1130:                                     ; preds = %for.cond1127
  %1234 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %1235 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1131 = getelementptr inbounds i64, ptr %1234, i64 %1235
  %1236 = load i64, ptr %arrayidx1131, align 8, !tbaa !8
  %1237 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1238 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1132 = getelementptr inbounds i64, ptr %1237, i64 %1238
  store i64 %1236, ptr %arrayidx1132, align 8, !tbaa !8
  br label %for.inc1133

for.inc1133:                                      ; preds = %for.body1130
  %1239 = load i64, ptr %i, align 8, !tbaa !8
  %inc1134 = add nsw i64 %1239, 1
  store i64 %inc1134, ptr %i, align 8, !tbaa !8
  br label %for.cond1127, !llvm.loop !85

for.end1135:                                      ; preds = %for.cond1127
  %1240 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1241 = load i64, ptr %P_offd_new_size, align 8, !tbaa !8
  %sub1136 = sub nsw i64 %1241, 1
  call void @hypre_BigQsort0(ptr noundef %1240, i64 noundef 0, i64 noundef %sub1136)
  %1242 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %arrayidx1137 = getelementptr inbounds i64, ptr %1242, i64 0
  %1243 = load i64, ptr %arrayidx1137, align 8, !tbaa !8
  %1244 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %arrayidx1138 = getelementptr inbounds i64, ptr %1244, i64 0
  store i64 %1243, ptr %arrayidx1138, align 8, !tbaa !8
  store i64 0, ptr %count, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond1139

for.cond1139:                                     ; preds = %for.inc1152, %for.end1135
  %1245 = load i64, ptr %i, align 8, !tbaa !8
  %1246 = load i64, ptr %P_offd_new_size, align 8, !tbaa !8
  %cmp1140 = icmp slt i64 %1245, %1246
  br i1 %cmp1140, label %for.body1142, label %for.end1154

for.body1142:                                     ; preds = %for.cond1139
  %1247 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1248 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1143 = getelementptr inbounds i64, ptr %1247, i64 %1248
  %1249 = load i64, ptr %arrayidx1143, align 8, !tbaa !8
  %1250 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1251 = load i64, ptr %count, align 8, !tbaa !8
  %arrayidx1144 = getelementptr inbounds i64, ptr %1250, i64 %1251
  %1252 = load i64, ptr %arrayidx1144, align 8, !tbaa !8
  %cmp1145 = icmp sgt i64 %1249, %1252
  br i1 %cmp1145, label %if.then1147, label %if.end1151

if.then1147:                                      ; preds = %for.body1142
  %1253 = load i64, ptr %count, align 8, !tbaa !8
  %inc1148 = add nsw i64 %1253, 1
  store i64 %inc1148, ptr %count, align 8, !tbaa !8
  %1254 = load ptr, ptr %j_copy, align 8, !tbaa !4
  %1255 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1149 = getelementptr inbounds i64, ptr %1254, i64 %1255
  %1256 = load i64, ptr %arrayidx1149, align 8, !tbaa !8
  %1257 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1258 = load i64, ptr %count, align 8, !tbaa !8
  %arrayidx1150 = getelementptr inbounds i64, ptr %1257, i64 %1258
  store i64 %1256, ptr %arrayidx1150, align 8, !tbaa !8
  br label %if.end1151

if.end1151:                                       ; preds = %if.then1147, %for.body1142
  br label %for.inc1152

for.inc1152:                                      ; preds = %if.end1151
  %1259 = load i64, ptr %i, align 8, !tbaa !8
  %inc1153 = add nsw i64 %1259, 1
  store i64 %inc1153, ptr %i, align 8, !tbaa !8
  br label %for.cond1139, !llvm.loop !86

for.end1154:                                      ; preds = %for.cond1139
  %1260 = load i64, ptr %count, align 8, !tbaa !8
  %add1155 = add nsw i64 %1260, 1
  store i64 %add1155, ptr %num_cols_P_offd1121, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond1156

for.cond1156:                                     ; preds = %for.inc1163, %for.end1154
  %1261 = load i64, ptr %i, align 8, !tbaa !8
  %1262 = load i64, ptr %P_offd_new_size, align 8, !tbaa !8
  %cmp1157 = icmp slt i64 %1261, %1262
  br i1 %cmp1157, label %for.body1159, label %for.end1165

for.body1159:                                     ; preds = %for.cond1156
  %1263 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1264 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  %1265 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1160 = getelementptr inbounds i64, ptr %1264, i64 %1265
  %1266 = load i64, ptr %arrayidx1160, align 8, !tbaa !8
  %1267 = load i64, ptr %num_cols_P_offd1121, align 8, !tbaa !8
  %call1161 = call i64 @hypre_BigBinarySearch(ptr noundef %1263, i64 noundef %1266, i64 noundef %1267)
  %1268 = load ptr, ptr %P_offd_j_new, align 8, !tbaa !4
  %1269 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1162 = getelementptr inbounds i64, ptr %1268, i64 %1269
  store i64 %call1161, ptr %arrayidx1162, align 8, !tbaa !8
  br label %for.inc1163

for.inc1163:                                      ; preds = %for.body1159
  %1270 = load i64, ptr %i, align 8, !tbaa !8
  %inc1164 = add nsw i64 %1270, 1
  store i64 %inc1164, ptr %i, align 8, !tbaa !8
  br label %for.cond1156, !llvm.loop !87

for.end1165:                                      ; preds = %for.cond1156
  %1271 = load ptr, ptr %j_copy, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1271, i32 noundef 0)
  store ptr null, ptr %j_copy, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_copy) #7
  br label %if.end1166

if.end1166:                                       ; preds = %for.end1165, %if.then1120
  %1272 = load ptr, ptr %new_col_map_offd_P, align 8, !tbaa !4
  %1273 = load ptr, ptr %new_P, align 8, !tbaa !4
  %col_map_offd1167 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1273, i32 0, i32 12
  store ptr %1272, ptr %col_map_offd1167, align 8, !tbaa !36
  %1274 = load i64, ptr %num_cols_P_offd1121, align 8, !tbaa !8
  %1275 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %num_cols1168 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1275, i32 0, i32 4
  store i64 %1274, ptr %num_cols1168, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_new_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_cols_P_offd1121) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #7
  br label %if.end1169

if.end1169:                                       ; preds = %if.end1166, %if.end1103
  %1276 = load ptr, ptr %P_offd_j_new, align 8, !tbaa !4
  %1277 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %j1170 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1277, i32 0, i32 1
  store ptr %1276, ptr %j1170, align 8, !tbaa !32
  %1278 = load ptr, ptr %new_P, align 8, !tbaa !4
  %call1171 = call i64 @hypre_MatvecCommPkgCreate(ptr noundef %1278)
  %1279 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %1280 = load ptr, ptr %1279, align 8, !tbaa !4
  %call1172 = call i64 @hypre_ParCSRMatrixDestroy(ptr noundef %1280)
  %1281 = load ptr, ptr %new_P, align 8, !tbaa !4
  %1282 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %1281, ptr %1282, align 8, !tbaa !4
  %1283 = load ptr, ptr %is_q, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1283, i32 noundef 0)
  store ptr null, ptr %is_q, align 8, !tbaa !4
  %1284 = load ptr, ptr %q_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1284, i32 noundef 0)
  store ptr null, ptr %q_data, align 8, !tbaa !4
  %1285 = load ptr, ptr %q_trunc_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1285, i32 noundef 0)
  store ptr null, ptr %q_trunc_data, align 8, !tbaa !4
  %1286 = load ptr, ptr %aux_j, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1286, i32 noundef 0)
  store ptr null, ptr %aux_j, align 8, !tbaa !4
  %1287 = load ptr, ptr %aux_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1287, i32 noundef 0)
  store ptr null, ptr %aux_data, align 8, !tbaa !4
  %1288 = load ptr, ptr %is_diag, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1288, i32 noundef 0)
  store ptr null, ptr %is_diag, align 8, !tbaa !4
  %1289 = load ptr, ptr %P_offd_j_big, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1289, i32 noundef 0)
  store ptr null, ptr %P_offd_j_big, align 8, !tbaa !4
  %1290 = load ptr, ptr %q_count_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1290, i32 noundef 0)
  store ptr null, ptr %q_count_sv, align 8, !tbaa !4
  %1291 = load ptr, ptr %num_lost_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1291, i32 noundef 0)
  store ptr null, ptr %num_lost_sv, align 8, !tbaa !4
  %1292 = load ptr, ptr %lost_value_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1292, i32 noundef 0)
  store ptr null, ptr %lost_value_sv, align 8, !tbaa !4
  %1293 = load ptr, ptr %lost_counter_q_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1293, i32 noundef 0)
  store ptr null, ptr %lost_counter_q_sv, align 8, !tbaa !4
  %1294 = load ptr, ptr %q_dist_value_sv, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1294, i32 noundef 0)
  store ptr null, ptr %q_dist_value_sv, align 8, !tbaa !4
  %1295 = load ptr, ptr %col_map, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1295, i32 noundef 0)
  store ptr null, ptr %col_map, align 8, !tbaa !4
  %1296 = load ptr, ptr %coarse_to_fine, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1296, i32 noundef 0)
  store ptr null, ptr %coarse_to_fine, align 8, !tbaa !4
  %1297 = load ptr, ptr %smooth_vec_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1297, i32 noundef 0)
  store ptr null, ptr %smooth_vec_offd, align 8, !tbaa !4
  %1298 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_location_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_dist_value_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lost_value_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lost_counter_q_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_count_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_lost_sv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_col) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %g_nc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_col) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_new_col) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fine_index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %coarse_counter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %coarse_to_fine) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %aux_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %aux_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_alloc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_q) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_trunc_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_trunc_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_count) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %theta) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %theta_3D) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %theta_2D) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %trunc_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %add_q) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %modify) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_dof_func) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_functions) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %new_col_starts) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_nf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %offd_vec_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %smooth_vec_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbl_buf_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_sum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_count_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_count_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_procs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %myid) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_nf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ncv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncv_peru) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j_big) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_i_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_i_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_j_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_offd_elements) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_diag_elements) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_elements) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcn_num) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nnz_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nnz_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_offd_pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_diag_pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_offd_start) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_diag_start) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_nnz_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_nnz_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_sends) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_col_map_offd_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_starts) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_cols_P_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_cols_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_rows_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  ret i64 %1298
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %matrix) #4 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca ptr, align 8
  %diag = alloca ptr, align 8
  %offd = alloca ptr, align 8
  %memory_diag = alloca i32, align 4
  %memory_offd = alloca i32, align 4
  %err_msg = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %matrix.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %diag) #7
  %1 = load ptr, ptr %matrix.addr, align 8, !tbaa !4
  %diag1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %diag1, align 8, !tbaa !28
  store ptr %2, ptr %diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %offd) #7
  %3 = load ptr, ptr %matrix.addr, align 8, !tbaa !4
  %offd2 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %offd2, align 8, !tbaa !35
  store ptr %4, ptr %offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_diag) #7
  %5 = load ptr, ptr %diag, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load ptr, ptr %diag, align 8, !tbaa !4
  %memory_location = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %memory_location, align 8, !tbaa !88
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, ptr %memory_diag, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_offd) #7
  %8 = load ptr, ptr %offd, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %cond.true5, label %cond.false7

cond.true5:                                       ; preds = %cond.end
  %9 = load ptr, ptr %offd, align 8, !tbaa !4
  %memory_location6 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %9, i32 0, i32 13
  %10 = load i32, ptr %memory_location6, align 8, !tbaa !88
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %10, %cond.true5 ], [ -1, %cond.false7 ]
  store i32 %cond9, ptr %memory_offd, align 4, !tbaa !40
  %11 = load ptr, ptr %diag, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %cond.end8
  %12 = load ptr, ptr %offd, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %12, null
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %13 = load i32, ptr %memory_diag, align 4, !tbaa !40
  %14 = load i32, ptr %memory_offd, align 4, !tbaa !40
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 1024, ptr %err_msg) #7
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %err_msg, i64 0, i64 0
  %15 = load i32, ptr %memory_diag, align 4, !tbaa !40
  %16 = load i32, ptr %memory_offd, align 4, !tbaa !40
  %call = call i64 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay, ptr noundef @.str.6, i32 noundef %15, i32 noundef %16)
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %err_msg, i64 0, i64 0
  call void @hypre_error_handler(ptr noundef @.str.7, i64 noundef 425, i64 noundef 2, ptr noundef %arraydecay14)
  br label %do.body

do.body:                                          ; preds = %if.then13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1024, ptr %err_msg) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  %17 = load i32, ptr %memory_diag, align 4, !tbaa !40
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true, %cond.end8
  %18 = load ptr, ptr %diag, align 8, !tbaa !4
  %tobool17 = icmp ne ptr %18, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  %19 = load i32, ptr %memory_diag, align 4, !tbaa !40
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %20 = load ptr, ptr %offd, align 8, !tbaa !4
  %tobool20 = icmp ne ptr %20, null
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  %21 = load i32, ptr %memory_offd, align 4, !tbaa !40
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then18, %if.end15, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_offd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %diag) #7
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare i64 @hypre_MatvecCommPkgCreate(ptr noundef) #2

declare i64 @hypre_MPI_Comm_size(ptr noundef, ptr noundef) #2

declare i64 @hypre_MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare ptr @hypre_ParCSRCommHandleCreate(i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @hypre_ParCSRCommHandleDestroy(ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare double @fmod(double noundef, double noundef) #5

declare void @hypre_error_handler(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @hypre_BigQsort4_abs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare ptr @hypre_ReAlloc_v2(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i64 @hypre_MPI_Bcast(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare ptr @hypre_ParCSRMatrixCreate(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) #2

declare void @hypre_BigQsort0(ptr noundef, i64 noundef, i64 noundef) #2

declare i64 @hypre_BigBinarySearch(ptr noundef, i64 noundef, i64 noundef) #2

declare i64 @hypre_ParCSRMatrixDestroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i64 @hypre_BoomerAMGRefineInterp(ptr noundef %A, ptr noundef %P, ptr noundef %num_cpts_global, ptr noundef %nf, ptr noundef %dof_func, ptr noundef %CF_marker, i64 noundef %level) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %num_cpts_global.addr = alloca ptr, align 8
  %nf.addr = alloca ptr, align 8
  %dof_func.addr = alloca ptr, align 8
  %CF_marker.addr = alloca ptr, align 8
  %level.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %pp = alloca i64, align 8
  %A_diag = alloca ptr, align 8
  %A_diag_data = alloca ptr, align 8
  %A_diag_i = alloca ptr, align 8
  %A_diag_j = alloca ptr, align 8
  %A_offd = alloca ptr, align 8
  %A_offd_data = alloca ptr, align 8
  %A_offd_i = alloca ptr, align 8
  %A_offd_j = alloca ptr, align 8
  %num_cols_A_offd = alloca i64, align 8
  %P_diag = alloca ptr, align 8
  %P_diag_data = alloca ptr, align 8
  %P_diag_i = alloca ptr, align 8
  %P_diag_j = alloca ptr, align 8
  %num_rows_P = alloca i64, align 8
  %P_diag_size = alloca i64, align 8
  %P_offd = alloca ptr, align 8
  %P_offd_i = alloca ptr, align 8
  %P_offd_size = alloca i64, align 8
  %P_offd_data = alloca ptr, align 8
  %P_offd_j = alloca ptr, align 8
  %num_cols_P_offd = alloca i64, align 8
  %col_map_offd_P = alloca ptr, align 8
  %memory_location = alloca i32, align 4
  %orig_diag_start = alloca i64, align 8
  %orig_offd_start = alloca i64, align 8
  %j_diag_pos = alloca i64, align 8
  %j_offd_pos = alloca i64, align 8
  %fcn_num = alloca i64, align 8
  %p_num_diag_elements = alloca i64, align 8
  %p_num_offd_elements = alloca i64, align 8
  %P_diag_data_new = alloca ptr, align 8
  %P_offd_data_new = alloca ptr, align 8
  %CF_marker_offd = alloca ptr, align 8
  %dof_func_offd = alloca ptr, align 8
  %fine_to_coarse_offd = alloca ptr, align 8
  %found = alloca i64, align 8
  %num_functions = alloca i64, align 8
  %comm_pkg_P = alloca ptr, align 8
  %comm_pkg_A = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %coarse_counter = alloca i64, align 8
  %j_ext_index = alloca i64, align 8
  %fine_to_coarse = alloca ptr, align 8
  %k_point = alloca i64, align 8
  %j_point = alloca i64, align 8
  %j_point_c = alloca i64, align 8
  %p_point = alloca i64, align 8
  %big_k = alloca i64, align 8
  %big_index = alloca i64, align 8
  %big_j_point_c = alloca i64, align 8
  %diagonal = alloca double, align 8
  %aw = alloca double, align 8
  %a_ij = alloca double, align 8
  %scale_row = alloca i64, align 8
  %sum = alloca double, align 8
  %new_row_sum = alloca double, align 8
  %orig_row_sum = alloca double, align 8
  %use_alt_w = alloca i64, align 8
  %kk = alloca i64, align 8
  %kk_count = alloca i64, align 8
  %cur_spot = alloca i64, align 8
  %dist_coarse = alloca i64, align 8
  %P_ext = alloca ptr, align 8
  %P_ext_data = alloca ptr, align 8
  %P_ext_i = alloca ptr, align 8
  %P_ext_j = alloca ptr, align 8
  %num_sends_A = alloca i64, align 8
  %index = alloca i64, align 8
  %start = alloca i64, align 8
  %myid = alloca i64, align 8
  %num_procs = alloca i64, align 8
  %comm_handle = alloca ptr, align 8
  %int_buf_data = alloca ptr, align 8
  %big_buf_data = alloca ptr, align 8
  %my_first_cpt = alloca i64, align 8
  %tmp_i = alloca i64, align 8
  %kc = alloca i64, align 8
  %col_1 = alloca i64, align 8
  %col_n = alloca i64, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %num_cpts_global, ptr %num_cpts_global.addr, align 8, !tbaa !4
  store ptr %nf, ptr %nf.addr, align 8, !tbaa !4
  store ptr %dof_func, ptr %dof_func.addr, align 8, !tbaa !4
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store i64 %level, ptr %level.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag) #7
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %diag, align 8, !tbaa !28
  store ptr %1, ptr %A_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_data) #7
  %2 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %data, align 8, !tbaa !29
  store ptr %3, ptr %A_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_i) #7
  %4 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %i1 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %i1, align 8, !tbaa !31
  store ptr %5, ptr %A_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_j) #7
  %6 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %j2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %j2, align 8, !tbaa !32
  store ptr %7, ptr %A_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd) #7
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %offd, align 8, !tbaa !35
  store ptr %9, ptr %A_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_data) #7
  %10 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %data3, align 8, !tbaa !29
  store ptr %11, ptr %A_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_i) #7
  %12 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %i4 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %i4, align 8, !tbaa !31
  store ptr %13, ptr %A_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_j) #7
  %14 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %j5 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %j5, align 8, !tbaa !32
  store ptr %15, ptr %A_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_cols_A_offd) #7
  %16 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %16, i32 0, i32 4
  %17 = load i64, ptr %num_cols, align 8, !tbaa !34
  store i64 %17, ptr %num_cols_A_offd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag) #7
  %18 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %diag6 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %diag6, align 8, !tbaa !28
  store ptr %19, ptr %P_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data) #7
  %20 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data7 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %data7, align 8, !tbaa !29
  store ptr %21, ptr %P_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_i) #7
  %22 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %i8 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %i8, align 8, !tbaa !31
  store ptr %23, ptr %P_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_j) #7
  %24 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %j9 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %j9, align 8, !tbaa !32
  store ptr %25, ptr %P_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_rows_P) #7
  %26 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %26, i32 0, i32 3
  %27 = load i64, ptr %num_rows, align 8, !tbaa !33
  store i64 %27, ptr %num_rows_P, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_size) #7
  %28 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %29 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %28, i64 %29
  %30 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %30, ptr %P_diag_size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd) #7
  %31 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %offd10 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %offd10, align 8, !tbaa !35
  store ptr %32, ptr %P_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_i) #7
  %33 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %i11 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %i11, align 8, !tbaa !31
  store ptr %34, ptr %P_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_size) #7
  %35 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %36 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds i64, ptr %35, i64 %36
  %37 = load i64, ptr %arrayidx12, align 8, !tbaa !8
  store i64 %37, ptr %P_offd_size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data) #7
  %38 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data13 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %38, i32 0, i32 10
  %39 = load ptr, ptr %data13, align 8, !tbaa !29
  store ptr %39, ptr %P_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_j) #7
  %40 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %j14 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %j14, align 8, !tbaa !32
  store ptr %41, ptr %P_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_cols_P_offd) #7
  %42 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %num_cols15 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %42, i32 0, i32 4
  %43 = load i64, ptr %num_cols15, align 8, !tbaa !34
  store i64 %43, ptr %num_cols_P_offd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd_P) #7
  %44 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %col_map_offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %col_map_offd, align 8, !tbaa !36
  store ptr %45, ptr %col_map_offd_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_location) #7
  %46 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %46)
  store i32 %call, ptr %memory_location, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_diag_start) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_offd_start) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_diag_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_offd_pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcn_num) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_num_diag_elements) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_num_offd_elements) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %CF_marker_offd) #7
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dof_func_offd) #7
  store ptr null, ptr %dof_func_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fine_to_coarse_offd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_functions) #7
  %47 = load ptr, ptr %nf.addr, align 8, !tbaa !4
  %48 = load i64, ptr %47, align 8, !tbaa !8
  store i64 %48, ptr %num_functions, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg_P) #7
  %49 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %comm_pkg = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %49, i32 0, i32 16
  %50 = load ptr, ptr %comm_pkg, align 8, !tbaa !37
  store ptr %50, ptr %comm_pkg_P, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg_A) #7
  %51 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm_pkg16 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %51, i32 0, i32 16
  %52 = load ptr, ptr %comm_pkg16, align 8, !tbaa !37
  store ptr %52, ptr %comm_pkg_A, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %coarse_counter) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_ext_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fine_to_coarse) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k_point) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_point) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j_point_c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_point) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_j_point_c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %diagonal) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %aw) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_ij) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %scale_row) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_row_sum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_row_sum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_alt_w) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk_count) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_spot) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist_coarse) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext_i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %P_ext_j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_sends_A) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %myid) #7
  store i64 0, ptr %myid, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_procs) #7
  store i64 1, ptr %num_procs, align 8, !tbaa !8
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
  %call17 = call i64 @hypre_MatvecCommPkgCreate(ptr noundef %54)
  %55 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %comm_pkg18 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %55, i32 0, i32 16
  %56 = load ptr, ptr %comm_pkg18, align 8, !tbaa !37
  store ptr %56, ptr %comm_pkg_P, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %57 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %comm19 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %comm19, align 8, !tbaa !41
  store ptr %58, ptr %comm, align 8, !tbaa !4
  %59 = load ptr, ptr %comm, align 8, !tbaa !4
  %call20 = call i64 @hypre_MPI_Comm_size(ptr noundef %59, ptr noundef %num_procs)
  %60 = load ptr, ptr %comm, align 8, !tbaa !4
  %call21 = call i64 @hypre_MPI_Comm_rank(ptr noundef %60, ptr noundef %myid)
  %61 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %num_sends = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %61, i32 0, i32 2
  %62 = load i64, ptr %num_sends, align 8, !tbaa !47
  store i64 %62, ptr %num_sends_A, align 8, !tbaa !8
  %63 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %63, i32 0, i32 4
  %64 = load ptr, ptr %send_map_starts, align 8, !tbaa !48
  %65 = load i64, ptr %num_sends_A, align 8, !tbaa !8
  %arrayidx22 = getelementptr inbounds i64, ptr %64, i64 %65
  %66 = load i64, ptr %arrayidx22, align 8, !tbaa !8
  %call23 = call ptr @hypre_CAlloc(i64 noundef %66, i64 noundef 8, i32 noundef 0)
  store ptr %call23, ptr %big_buf_data, align 8, !tbaa !4
  %67 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts24 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %send_map_starts24, align 8, !tbaa !48
  %69 = load i64, ptr %num_sends_A, align 8, !tbaa !8
  %arrayidx25 = getelementptr inbounds i64, ptr %68, i64 %69
  %70 = load i64, ptr %arrayidx25, align 8, !tbaa !8
  %call26 = call ptr @hypre_CAlloc(i64 noundef %70, i64 noundef 8, i32 noundef 0)
  store ptr %call26, ptr %int_buf_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %my_first_cpt) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_i) #7
  %71 = load ptr, ptr %num_cpts_global.addr, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds i64, ptr %71, i64 0
  %72 = load i64, ptr %arrayidx27, align 8, !tbaa !8
  store i64 %72, ptr %my_first_cpt, align 8, !tbaa !8
  %73 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %call28 = call ptr @hypre_CAlloc(i64 noundef %73, i64 noundef 8, i32 noundef 0)
  store ptr %call28, ptr %fine_to_coarse, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %74 = load i64, ptr %i, align 8, !tbaa !8
  %75 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %cmp = icmp slt i64 %74, %75
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx29 = getelementptr inbounds i64, ptr %76, i64 %77
  store i64 -1, ptr %arrayidx29, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %78, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %coarse_counter, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end
  %79 = load i64, ptr %i, align 8, !tbaa !8
  %80 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %cmp31 = icmp slt i64 %79, %80
  br i1 %cmp31, label %for.body32, label %for.end41

for.body32:                                       ; preds = %for.cond30
  %81 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %82 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx33 = getelementptr inbounds i64, ptr %81, i64 %82
  %83 = load i64, ptr %arrayidx33, align 8, !tbaa !8
  %cmp34 = icmp sge i64 %83, 0
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %for.body32
  %84 = load i64, ptr %coarse_counter, align 8, !tbaa !8
  %85 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %86 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx36 = getelementptr inbounds i64, ptr %85, i64 %86
  store i64 %84, ptr %arrayidx36, align 8, !tbaa !8
  %87 = load i64, ptr %coarse_counter, align 8, !tbaa !8
  %inc37 = add nsw i64 %87, 1
  store i64 %inc37, ptr %coarse_counter, align 8, !tbaa !8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %for.body32
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %88 = load i64, ptr %i, align 8, !tbaa !8
  %inc40 = add nsw i64 %88, 1
  store i64 %inc40, ptr %i, align 8, !tbaa !8
  br label %for.cond30, !llvm.loop !90

for.end41:                                        ; preds = %for.cond30
  %89 = load i64, ptr %num_cols_A_offd, align 8, !tbaa !8
  %call42 = call ptr @hypre_CAlloc(i64 noundef %89, i64 noundef 8, i32 noundef 0)
  store ptr %call42, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  store i64 0, ptr %index, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc61, %for.end41
  %90 = load i64, ptr %i, align 8, !tbaa !8
  %91 = load i64, ptr %num_sends_A, align 8, !tbaa !8
  %cmp44 = icmp slt i64 %90, %91
  br i1 %cmp44, label %for.body45, label %for.end63

for.body45:                                       ; preds = %for.cond43
  %92 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts46 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %92, i32 0, i32 4
  %93 = load ptr, ptr %send_map_starts46, align 8, !tbaa !48
  %94 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx47 = getelementptr inbounds i64, ptr %93, i64 %94
  %95 = load i64, ptr %arrayidx47, align 8, !tbaa !8
  store i64 %95, ptr %start, align 8, !tbaa !8
  %96 = load i64, ptr %start, align 8, !tbaa !8
  store i64 %96, ptr %j, align 8, !tbaa !8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.body45
  %97 = load i64, ptr %j, align 8, !tbaa !8
  %98 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts49 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %98, i32 0, i32 4
  %99 = load ptr, ptr %send_map_starts49, align 8, !tbaa !48
  %100 = load i64, ptr %i, align 8, !tbaa !8
  %add = add nsw i64 %100, 1
  %arrayidx50 = getelementptr inbounds i64, ptr %99, i64 %add
  %101 = load i64, ptr %arrayidx50, align 8, !tbaa !8
  %cmp51 = icmp slt i64 %97, %101
  br i1 %cmp51, label %for.body52, label %for.end60

for.body52:                                       ; preds = %for.cond48
  %102 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %103 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_elmts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %103, i32 0, i32 5
  %104 = load ptr, ptr %send_map_elmts, align 8, !tbaa !49
  %105 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx53 = getelementptr inbounds i64, ptr %104, i64 %105
  %106 = load i64, ptr %arrayidx53, align 8, !tbaa !8
  %arrayidx54 = getelementptr inbounds i64, ptr %102, i64 %106
  %107 = load i64, ptr %arrayidx54, align 8, !tbaa !8
  store i64 %107, ptr %tmp_i, align 8, !tbaa !8
  %108 = load i64, ptr %tmp_i, align 8, !tbaa !8
  %109 = load i64, ptr %my_first_cpt, align 8, !tbaa !8
  %add55 = add nsw i64 %108, %109
  %110 = load ptr, ptr %big_buf_data, align 8, !tbaa !4
  %111 = load i64, ptr %index, align 8, !tbaa !8
  %inc56 = add nsw i64 %111, 1
  store i64 %inc56, ptr %index, align 8, !tbaa !8
  %arrayidx57 = getelementptr inbounds i64, ptr %110, i64 %111
  store i64 %add55, ptr %arrayidx57, align 8, !tbaa !8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body52
  %112 = load i64, ptr %j, align 8, !tbaa !8
  %inc59 = add nsw i64 %112, 1
  store i64 %inc59, ptr %j, align 8, !tbaa !8
  br label %for.cond48, !llvm.loop !91

for.end60:                                        ; preds = %for.cond48
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %113 = load i64, ptr %i, align 8, !tbaa !8
  %inc62 = add nsw i64 %113, 1
  store i64 %inc62, ptr %i, align 8, !tbaa !8
  br label %for.cond43, !llvm.loop !92

for.end63:                                        ; preds = %for.cond43
  %114 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %115 = load ptr, ptr %big_buf_data, align 8, !tbaa !4
  %116 = load ptr, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  %call64 = call ptr @hypre_ParCSRCommHandleCreate(i64 noundef 21, ptr noundef %114, ptr noundef %115, ptr noundef %116)
  store ptr %call64, ptr %comm_handle, align 8, !tbaa !4
  %117 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call65 = call i64 @hypre_ParCSRCommHandleDestroy(ptr noundef %117)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %my_first_cpt) #7
  %118 = load i64, ptr %num_cols_A_offd, align 8, !tbaa !8
  %tobool66 = icmp ne i64 %118, 0
  br i1 %tobool66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end63
  %119 = load i64, ptr %num_cols_A_offd, align 8, !tbaa !8
  %call68 = call ptr @hypre_CAlloc(i64 noundef %119, i64 noundef 8, i32 noundef 0)
  store ptr %call68, ptr %CF_marker_offd, align 8, !tbaa !4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.end63
  %120 = load i64, ptr %num_functions, align 8, !tbaa !8
  %cmp70 = icmp sgt i64 %120, 1
  br i1 %cmp70, label %land.lhs.true, label %if.end74

land.lhs.true:                                    ; preds = %if.end69
  %121 = load i64, ptr %num_cols_A_offd, align 8, !tbaa !8
  %tobool71 = icmp ne i64 %121, 0
  br i1 %tobool71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %land.lhs.true
  %122 = load i64, ptr %num_cols_A_offd, align 8, !tbaa !8
  %call73 = call ptr @hypre_CAlloc(i64 noundef %122, i64 noundef 8, i32 noundef 0)
  store ptr %call73, ptr %dof_func_offd, align 8, !tbaa !4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %land.lhs.true, %if.end69
  store i64 0, ptr %index, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc94, %if.end74
  %123 = load i64, ptr %i, align 8, !tbaa !8
  %124 = load i64, ptr %num_sends_A, align 8, !tbaa !8
  %cmp76 = icmp slt i64 %123, %124
  br i1 %cmp76, label %for.body77, label %for.end96

for.body77:                                       ; preds = %for.cond75
  %125 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts78 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %125, i32 0, i32 4
  %126 = load ptr, ptr %send_map_starts78, align 8, !tbaa !48
  %127 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx79 = getelementptr inbounds i64, ptr %126, i64 %127
  %128 = load i64, ptr %arrayidx79, align 8, !tbaa !8
  store i64 %128, ptr %start, align 8, !tbaa !8
  %129 = load i64, ptr %start, align 8, !tbaa !8
  store i64 %129, ptr %j, align 8, !tbaa !8
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc91, %for.body77
  %130 = load i64, ptr %j, align 8, !tbaa !8
  %131 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts81 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %131, i32 0, i32 4
  %132 = load ptr, ptr %send_map_starts81, align 8, !tbaa !48
  %133 = load i64, ptr %i, align 8, !tbaa !8
  %add82 = add nsw i64 %133, 1
  %arrayidx83 = getelementptr inbounds i64, ptr %132, i64 %add82
  %134 = load i64, ptr %arrayidx83, align 8, !tbaa !8
  %cmp84 = icmp slt i64 %130, %134
  br i1 %cmp84, label %for.body85, label %for.end93

for.body85:                                       ; preds = %for.cond80
  %135 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_elmts86 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %136, i32 0, i32 5
  %137 = load ptr, ptr %send_map_elmts86, align 8, !tbaa !49
  %138 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx87 = getelementptr inbounds i64, ptr %137, i64 %138
  %139 = load i64, ptr %arrayidx87, align 8, !tbaa !8
  %arrayidx88 = getelementptr inbounds i64, ptr %135, i64 %139
  %140 = load i64, ptr %arrayidx88, align 8, !tbaa !8
  %141 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %142 = load i64, ptr %index, align 8, !tbaa !8
  %inc89 = add nsw i64 %142, 1
  store i64 %inc89, ptr %index, align 8, !tbaa !8
  %arrayidx90 = getelementptr inbounds i64, ptr %141, i64 %142
  store i64 %140, ptr %arrayidx90, align 8, !tbaa !8
  br label %for.inc91

for.inc91:                                        ; preds = %for.body85
  %143 = load i64, ptr %j, align 8, !tbaa !8
  %inc92 = add nsw i64 %143, 1
  store i64 %inc92, ptr %j, align 8, !tbaa !8
  br label %for.cond80, !llvm.loop !93

for.end93:                                        ; preds = %for.cond80
  br label %for.inc94

for.inc94:                                        ; preds = %for.end93
  %144 = load i64, ptr %i, align 8, !tbaa !8
  %inc95 = add nsw i64 %144, 1
  store i64 %inc95, ptr %i, align 8, !tbaa !8
  br label %for.cond75, !llvm.loop !94

for.end96:                                        ; preds = %for.cond75
  %145 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %146 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %147 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %call97 = call ptr @hypre_ParCSRCommHandleCreate(i64 noundef 11, ptr noundef %145, ptr noundef %146, ptr noundef %147)
  store ptr %call97, ptr %comm_handle, align 8, !tbaa !4
  %148 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call98 = call i64 @hypre_ParCSRCommHandleDestroy(ptr noundef %148)
  %149 = load i64, ptr %num_functions, align 8, !tbaa !8
  %cmp99 = icmp sgt i64 %149, 1
  br i1 %cmp99, label %if.then100, label %if.end125

if.then100:                                       ; preds = %for.end96
  store i64 0, ptr %index, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc120, %if.then100
  %150 = load i64, ptr %i, align 8, !tbaa !8
  %151 = load i64, ptr %num_sends_A, align 8, !tbaa !8
  %cmp102 = icmp slt i64 %150, %151
  br i1 %cmp102, label %for.body103, label %for.end122

for.body103:                                      ; preds = %for.cond101
  %152 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts104 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %152, i32 0, i32 4
  %153 = load ptr, ptr %send_map_starts104, align 8, !tbaa !48
  %154 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx105 = getelementptr inbounds i64, ptr %153, i64 %154
  %155 = load i64, ptr %arrayidx105, align 8, !tbaa !8
  store i64 %155, ptr %start, align 8, !tbaa !8
  %156 = load i64, ptr %start, align 8, !tbaa !8
  store i64 %156, ptr %j, align 8, !tbaa !8
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc117, %for.body103
  %157 = load i64, ptr %j, align 8, !tbaa !8
  %158 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_starts107 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %158, i32 0, i32 4
  %159 = load ptr, ptr %send_map_starts107, align 8, !tbaa !48
  %160 = load i64, ptr %i, align 8, !tbaa !8
  %add108 = add nsw i64 %160, 1
  %arrayidx109 = getelementptr inbounds i64, ptr %159, i64 %add108
  %161 = load i64, ptr %arrayidx109, align 8, !tbaa !8
  %cmp110 = icmp slt i64 %157, %161
  br i1 %cmp110, label %for.body111, label %for.end119

for.body111:                                      ; preds = %for.cond106
  %162 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %send_map_elmts112 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %163, i32 0, i32 5
  %164 = load ptr, ptr %send_map_elmts112, align 8, !tbaa !49
  %165 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx113 = getelementptr inbounds i64, ptr %164, i64 %165
  %166 = load i64, ptr %arrayidx113, align 8, !tbaa !8
  %arrayidx114 = getelementptr inbounds i64, ptr %162, i64 %166
  %167 = load i64, ptr %arrayidx114, align 8, !tbaa !8
  %168 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %169 = load i64, ptr %index, align 8, !tbaa !8
  %inc115 = add nsw i64 %169, 1
  store i64 %inc115, ptr %index, align 8, !tbaa !8
  %arrayidx116 = getelementptr inbounds i64, ptr %168, i64 %169
  store i64 %167, ptr %arrayidx116, align 8, !tbaa !8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body111
  %170 = load i64, ptr %j, align 8, !tbaa !8
  %inc118 = add nsw i64 %170, 1
  store i64 %inc118, ptr %j, align 8, !tbaa !8
  br label %for.cond106, !llvm.loop !95

for.end119:                                       ; preds = %for.cond106
  br label %for.inc120

for.inc120:                                       ; preds = %for.end119
  %171 = load i64, ptr %i, align 8, !tbaa !8
  %inc121 = add nsw i64 %171, 1
  store i64 %inc121, ptr %i, align 8, !tbaa !8
  br label %for.cond101, !llvm.loop !96

for.end122:                                       ; preds = %for.cond101
  %172 = load ptr, ptr %comm_pkg_A, align 8, !tbaa !4
  %173 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %174 = load ptr, ptr %dof_func_offd, align 8, !tbaa !4
  %call123 = call ptr @hypre_ParCSRCommHandleCreate(i64 noundef 11, ptr noundef %172, ptr noundef %173, ptr noundef %174)
  store ptr %call123, ptr %comm_handle, align 8, !tbaa !4
  %175 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call124 = call i64 @hypre_ParCSRCommHandleDestroy(ptr noundef %175)
  br label %if.end125

if.end125:                                        ; preds = %for.end122, %for.end96
  call void @llvm.lifetime.start.p0(i64 8, ptr %kc) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_1) #7
  %176 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %first_col_diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %176, i32 0, i32 5
  %177 = load i64, ptr %first_col_diag, align 8, !tbaa !97
  store i64 %177, ptr %col_1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_n) #7
  %178 = load i64, ptr %col_1, align 8, !tbaa !8
  %179 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %num_cols126 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %179, i32 0, i32 4
  %180 = load i64, ptr %num_cols126, align 8, !tbaa !34
  %add127 = add nsw i64 %178, %180
  store i64 %add127, ptr %col_n, align 8, !tbaa !8
  %181 = load i64, ptr %num_procs, align 8, !tbaa !8
  %cmp128 = icmp sgt i64 %181, 1
  br i1 %cmp128, label %if.then129, label %if.end133

if.then129:                                       ; preds = %if.end125
  %182 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %183 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call130 = call ptr @hypre_ParCSRMatrixExtractBExt(ptr noundef %182, ptr noundef %183, i64 noundef 1)
  store ptr %call130, ptr %P_ext, align 8, !tbaa !4
  %184 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %i131 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %184, i32 0, i32 0
  %185 = load ptr, ptr %i131, align 8, !tbaa !31
  store ptr %185, ptr %P_ext_i, align 8, !tbaa !4
  %186 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %big_j = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %186, i32 0, i32 2
  %187 = load ptr, ptr %big_j, align 8, !tbaa !98
  store ptr %187, ptr %P_ext_j, align 8, !tbaa !4
  %188 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %data132 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %188, i32 0, i32 10
  %189 = load ptr, ptr %data132, align 8, !tbaa !29
  store ptr %189, ptr %P_ext_data, align 8, !tbaa !4
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.end125
  store i64 0, ptr %index, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc167, %if.end133
  %190 = load i64, ptr %i, align 8, !tbaa !8
  %191 = load i64, ptr %num_cols_A_offd, align 8, !tbaa !8
  %cmp135 = icmp slt i64 %190, %191
  br i1 %cmp135, label %for.body136, label %for.end169

for.body136:                                      ; preds = %for.cond134
  %192 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %193 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx137 = getelementptr inbounds i64, ptr %192, i64 %193
  %194 = load i64, ptr %arrayidx137, align 8, !tbaa !8
  store i64 %194, ptr %j, align 8, !tbaa !8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc163, %for.body136
  %195 = load i64, ptr %j, align 8, !tbaa !8
  %196 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %197 = load i64, ptr %i, align 8, !tbaa !8
  %add139 = add nsw i64 %197, 1
  %arrayidx140 = getelementptr inbounds i64, ptr %196, i64 %add139
  %198 = load i64, ptr %arrayidx140, align 8, !tbaa !8
  %cmp141 = icmp slt i64 %195, %198
  br i1 %cmp141, label %for.body142, label %for.end165

for.body142:                                      ; preds = %for.cond138
  %199 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %200 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx143 = getelementptr inbounds i64, ptr %199, i64 %200
  %201 = load i64, ptr %arrayidx143, align 8, !tbaa !8
  store i64 %201, ptr %big_k, align 8, !tbaa !8
  %202 = load i64, ptr %big_k, align 8, !tbaa !8
  %203 = load i64, ptr %col_1, align 8, !tbaa !8
  %cmp144 = icmp sge i64 %202, %203
  br i1 %cmp144, label %land.lhs.true145, label %if.else

land.lhs.true145:                                 ; preds = %for.body142
  %204 = load i64, ptr %big_k, align 8, !tbaa !8
  %205 = load i64, ptr %col_n, align 8, !tbaa !8
  %cmp146 = icmp slt i64 %204, %205
  br i1 %cmp146, label %if.then147, label %if.else

if.then147:                                       ; preds = %land.lhs.true145
  %206 = load i64, ptr %big_k, align 8, !tbaa !8
  %207 = load i64, ptr %col_1, align 8, !tbaa !8
  %sub = sub nsw i64 %206, %207
  %208 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %209 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx148 = getelementptr inbounds i64, ptr %208, i64 %209
  store i64 %sub, ptr %arrayidx148, align 8, !tbaa !8
  %210 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %211 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx149 = getelementptr inbounds double, ptr %210, i64 %211
  %212 = load double, ptr %arrayidx149, align 8, !tbaa !22
  %213 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %214 = load i64, ptr %index, align 8, !tbaa !8
  %inc150 = add nsw i64 %214, 1
  store i64 %inc150, ptr %index, align 8, !tbaa !8
  %arrayidx151 = getelementptr inbounds double, ptr %213, i64 %214
  store double %212, ptr %arrayidx151, align 8, !tbaa !22
  br label %if.end162

if.else:                                          ; preds = %land.lhs.true145, %for.body142
  %215 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %216 = load i64, ptr %big_k, align 8, !tbaa !8
  %217 = load i64, ptr %num_cols_P_offd, align 8, !tbaa !8
  %call152 = call i64 @hypre_BigBinarySearch(ptr noundef %215, i64 noundef %216, i64 noundef %217)
  store i64 %call152, ptr %kc, align 8, !tbaa !8
  %218 = load i64, ptr %kc, align 8, !tbaa !8
  %cmp153 = icmp sgt i64 %218, -1
  br i1 %cmp153, label %if.then154, label %if.end161

if.then154:                                       ; preds = %if.else
  %219 = load i64, ptr %kc, align 8, !tbaa !8
  %sub155 = sub nsw i64 0, %219
  %sub156 = sub nsw i64 %sub155, 1
  %220 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %221 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx157 = getelementptr inbounds i64, ptr %220, i64 %221
  store i64 %sub156, ptr %arrayidx157, align 8, !tbaa !8
  %222 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %223 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx158 = getelementptr inbounds double, ptr %222, i64 %223
  %224 = load double, ptr %arrayidx158, align 8, !tbaa !22
  %225 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %226 = load i64, ptr %index, align 8, !tbaa !8
  %inc159 = add nsw i64 %226, 1
  store i64 %inc159, ptr %index, align 8, !tbaa !8
  %arrayidx160 = getelementptr inbounds double, ptr %225, i64 %226
  store double %224, ptr %arrayidx160, align 8, !tbaa !22
  br label %if.end161

if.end161:                                        ; preds = %if.then154, %if.else
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then147
  br label %for.inc163

for.inc163:                                       ; preds = %if.end162
  %227 = load i64, ptr %j, align 8, !tbaa !8
  %inc164 = add nsw i64 %227, 1
  store i64 %inc164, ptr %j, align 8, !tbaa !8
  br label %for.cond138, !llvm.loop !99

for.end165:                                       ; preds = %for.cond138
  %228 = load i64, ptr %index, align 8, !tbaa !8
  %229 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %230 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx166 = getelementptr inbounds i64, ptr %229, i64 %230
  store i64 %228, ptr %arrayidx166, align 8, !tbaa !8
  br label %for.inc167

for.inc167:                                       ; preds = %for.end165
  %231 = load i64, ptr %i, align 8, !tbaa !8
  %inc168 = add nsw i64 %231, 1
  store i64 %inc168, ptr %i, align 8, !tbaa !8
  br label %for.cond134, !llvm.loop !100

for.end169:                                       ; preds = %for.cond134
  %232 = load i64, ptr %num_cols_A_offd, align 8, !tbaa !8
  store i64 %232, ptr %i, align 8, !tbaa !8
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc176, %for.end169
  %233 = load i64, ptr %i, align 8, !tbaa !8
  %cmp171 = icmp sgt i64 %233, 0
  br i1 %cmp171, label %for.body172, label %for.end177

for.body172:                                      ; preds = %for.cond170
  %234 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %235 = load i64, ptr %i, align 8, !tbaa !8
  %sub173 = sub nsw i64 %235, 1
  %arrayidx174 = getelementptr inbounds i64, ptr %234, i64 %sub173
  %236 = load i64, ptr %arrayidx174, align 8, !tbaa !8
  %237 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %238 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx175 = getelementptr inbounds i64, ptr %237, i64 %238
  store i64 %236, ptr %arrayidx175, align 8, !tbaa !8
  br label %for.inc176

for.inc176:                                       ; preds = %for.body172
  %239 = load i64, ptr %i, align 8, !tbaa !8
  %dec = add nsw i64 %239, -1
  store i64 %dec, ptr %i, align 8, !tbaa !8
  br label %for.cond170, !llvm.loop !101

for.end177:                                       ; preds = %for.cond170
  %240 = load i64, ptr %num_procs, align 8, !tbaa !8
  %cmp178 = icmp sgt i64 %240, 1
  br i1 %cmp178, label %if.then179, label %if.end181

if.then179:                                       ; preds = %for.end177
  %241 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %arrayidx180 = getelementptr inbounds i64, ptr %241, i64 0
  store i64 0, ptr %arrayidx180, align 8, !tbaa !8
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %for.end177
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %kc) #7
  %242 = load i64, ptr %P_diag_size, align 8, !tbaa !8
  %243 = load i32, ptr %memory_location, align 4, !tbaa !40
  %call182 = call ptr @hypre_CAlloc(i64 noundef %242, i64 noundef 8, i32 noundef %243)
  store ptr %call182, ptr %P_diag_data_new, align 8, !tbaa !4
  %244 = load i64, ptr %P_offd_size, align 8, !tbaa !8
  %245 = load i32, ptr %memory_location, align 4, !tbaa !40
  %call183 = call ptr @hypre_CAlloc(i64 noundef %244, i64 noundef 8, i32 noundef %245)
  store ptr %call183, ptr %P_offd_data_new, align 8, !tbaa !4
  store i64 0, ptr %j_diag_pos, align 8, !tbaa !8
  store i64 0, ptr %j_offd_pos, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc818, %if.end181
  %246 = load i64, ptr %i, align 8, !tbaa !8
  %247 = load i64, ptr %num_rows_P, align 8, !tbaa !8
  %cmp185 = icmp slt i64 %246, %247
  br i1 %cmp185, label %for.body186, label %for.end820

for.body186:                                      ; preds = %for.cond184
  store double 0.000000e+00, ptr %new_row_sum, align 8, !tbaa !22
  store i64 0, ptr %use_alt_w, align 8, !tbaa !8
  store i64 0, ptr %scale_row, align 8, !tbaa !8
  store double 0.000000e+00, ptr %orig_row_sum, align 8, !tbaa !22
  %248 = load i64, ptr %i, align 8, !tbaa !8
  %conv = sitofp i64 %248 to double
  %249 = load i64, ptr %num_functions, align 8, !tbaa !8
  %conv187 = sitofp i64 %249 to double
  %call188 = call double @fmod(double noundef %conv, double noundef %conv187) #7
  %conv189 = fptosi double %call188 to i64
  store i64 %conv189, ptr %fcn_num, align 8, !tbaa !8
  %250 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %251 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %252 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx190 = getelementptr inbounds i64, ptr %251, i64 %252
  %253 = load i64, ptr %arrayidx190, align 8, !tbaa !8
  %cmp191 = icmp ne i64 %250, %253
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %for.body186
  call void @hypre_error_handler(ptr noundef @.str, i64 noundef 1889, i64 noundef 1, ptr noundef @.str.5)
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %for.body186
  %254 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %255 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx195 = getelementptr inbounds i64, ptr %254, i64 %255
  %256 = load i64, ptr %arrayidx195, align 8, !tbaa !8
  store i64 %256, ptr %orig_diag_start, align 8, !tbaa !8
  %257 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %258 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx196 = getelementptr inbounds i64, ptr %257, i64 %258
  %259 = load i64, ptr %arrayidx196, align 8, !tbaa !8
  store i64 %259, ptr %orig_offd_start, align 8, !tbaa !8
  %260 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %261 = load i64, ptr %i, align 8, !tbaa !8
  %add197 = add nsw i64 %261, 1
  %arrayidx198 = getelementptr inbounds i64, ptr %260, i64 %add197
  %262 = load i64, ptr %arrayidx198, align 8, !tbaa !8
  %263 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %sub199 = sub nsw i64 %262, %263
  store i64 %sub199, ptr %p_num_diag_elements, align 8, !tbaa !8
  %264 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %265 = load i64, ptr %i, align 8, !tbaa !8
  %add200 = add nsw i64 %265, 1
  %arrayidx201 = getelementptr inbounds i64, ptr %264, i64 %add200
  %266 = load i64, ptr %arrayidx201, align 8, !tbaa !8
  %267 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %sub202 = sub nsw i64 %266, %267
  store i64 %sub202, ptr %p_num_offd_elements, align 8, !tbaa !8
  %268 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %269 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx203 = getelementptr inbounds i64, ptr %268, i64 %269
  %270 = load i64, ptr %arrayidx203, align 8, !tbaa !8
  %cmp204 = icmp sge i64 %270, 0
  br i1 %cmp204, label %if.then206, label %if.else229

if.then206:                                       ; preds = %if.end194
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc215, %if.then206
  %271 = load i64, ptr %j, align 8, !tbaa !8
  %272 = load i64, ptr %p_num_diag_elements, align 8, !tbaa !8
  %cmp208 = icmp slt i64 %271, %272
  br i1 %cmp208, label %for.body210, label %for.end217

for.body210:                                      ; preds = %for.cond207
  %273 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %274 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %275 = load i64, ptr %j, align 8, !tbaa !8
  %add211 = add nsw i64 %274, %275
  %arrayidx212 = getelementptr inbounds double, ptr %273, i64 %add211
  %276 = load double, ptr %arrayidx212, align 8, !tbaa !22
  %277 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %278 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %inc213 = add nsw i64 %278, 1
  store i64 %inc213, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx214 = getelementptr inbounds double, ptr %277, i64 %278
  store double %276, ptr %arrayidx214, align 8, !tbaa !22
  br label %for.inc215

for.inc215:                                       ; preds = %for.body210
  %279 = load i64, ptr %j, align 8, !tbaa !8
  %inc216 = add nsw i64 %279, 1
  store i64 %inc216, ptr %j, align 8, !tbaa !8
  br label %for.cond207, !llvm.loop !102

for.end217:                                       ; preds = %for.cond207
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond218

for.cond218:                                      ; preds = %for.inc226, %for.end217
  %280 = load i64, ptr %j, align 8, !tbaa !8
  %281 = load i64, ptr %p_num_offd_elements, align 8, !tbaa !8
  %cmp219 = icmp slt i64 %280, %281
  br i1 %cmp219, label %for.body221, label %for.end228

for.body221:                                      ; preds = %for.cond218
  %282 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %283 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %284 = load i64, ptr %j, align 8, !tbaa !8
  %add222 = add nsw i64 %283, %284
  %arrayidx223 = getelementptr inbounds double, ptr %282, i64 %add222
  %285 = load double, ptr %arrayidx223, align 8, !tbaa !22
  %286 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %287 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %inc224 = add nsw i64 %287, 1
  store i64 %inc224, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx225 = getelementptr inbounds double, ptr %286, i64 %287
  store double %285, ptr %arrayidx225, align 8, !tbaa !22
  br label %for.inc226

for.inc226:                                       ; preds = %for.body221
  %288 = load i64, ptr %j, align 8, !tbaa !8
  %inc227 = add nsw i64 %288, 1
  store i64 %inc227, ptr %j, align 8, !tbaa !8
  br label %for.cond218, !llvm.loop !103

for.end228:                                       ; preds = %for.cond218
  br label %if.end817

if.else229:                                       ; preds = %if.end194
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond230

for.cond230:                                      ; preds = %for.inc239, %if.else229
  %289 = load i64, ptr %j, align 8, !tbaa !8
  %290 = load i64, ptr %p_num_diag_elements, align 8, !tbaa !8
  %cmp231 = icmp slt i64 %289, %290
  br i1 %cmp231, label %for.body233, label %for.end241

for.body233:                                      ; preds = %for.cond230
  %291 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %292 = load i64, ptr %orig_diag_start, align 8, !tbaa !8
  %293 = load i64, ptr %j, align 8, !tbaa !8
  %add234 = add nsw i64 %292, %293
  %arrayidx235 = getelementptr inbounds double, ptr %291, i64 %add234
  %294 = load double, ptr %arrayidx235, align 8, !tbaa !22
  %295 = load double, ptr %orig_row_sum, align 8, !tbaa !22
  %add236 = fadd double %295, %294
  store double %add236, ptr %orig_row_sum, align 8, !tbaa !22
  %296 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %297 = load i64, ptr %j_diag_pos, align 8, !tbaa !8
  %inc237 = add nsw i64 %297, 1
  store i64 %inc237, ptr %j_diag_pos, align 8, !tbaa !8
  %arrayidx238 = getelementptr inbounds double, ptr %296, i64 %297
  store double 0.000000e+00, ptr %arrayidx238, align 8, !tbaa !22
  br label %for.inc239

for.inc239:                                       ; preds = %for.body233
  %298 = load i64, ptr %j, align 8, !tbaa !8
  %inc240 = add nsw i64 %298, 1
  store i64 %inc240, ptr %j, align 8, !tbaa !8
  br label %for.cond230, !llvm.loop !104

for.end241:                                       ; preds = %for.cond230
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond242

for.cond242:                                      ; preds = %for.inc251, %for.end241
  %299 = load i64, ptr %j, align 8, !tbaa !8
  %300 = load i64, ptr %p_num_offd_elements, align 8, !tbaa !8
  %cmp243 = icmp slt i64 %299, %300
  br i1 %cmp243, label %for.body245, label %for.end253

for.body245:                                      ; preds = %for.cond242
  %301 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %302 = load i64, ptr %orig_offd_start, align 8, !tbaa !8
  %303 = load i64, ptr %j, align 8, !tbaa !8
  %add246 = add nsw i64 %302, %303
  %arrayidx247 = getelementptr inbounds double, ptr %301, i64 %add246
  %304 = load double, ptr %arrayidx247, align 8, !tbaa !22
  %305 = load double, ptr %orig_row_sum, align 8, !tbaa !22
  %add248 = fadd double %305, %304
  store double %add248, ptr %orig_row_sum, align 8, !tbaa !22
  %306 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %307 = load i64, ptr %j_offd_pos, align 8, !tbaa !8
  %inc249 = add nsw i64 %307, 1
  store i64 %inc249, ptr %j_offd_pos, align 8, !tbaa !8
  %arrayidx250 = getelementptr inbounds double, ptr %306, i64 %307
  store double 0.000000e+00, ptr %arrayidx250, align 8, !tbaa !22
  br label %for.inc251

for.inc251:                                       ; preds = %for.body245
  %308 = load i64, ptr %j, align 8, !tbaa !8
  %inc252 = add nsw i64 %308, 1
  store i64 %inc252, ptr %j, align 8, !tbaa !8
  br label %for.cond242, !llvm.loop !105

for.end253:                                       ; preds = %for.cond242
  %309 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %310 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %311 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx254 = getelementptr inbounds i64, ptr %310, i64 %311
  %312 = load i64, ptr %arrayidx254, align 8, !tbaa !8
  %arrayidx255 = getelementptr inbounds double, ptr %309, i64 %312
  %313 = load double, ptr %arrayidx255, align 8, !tbaa !22
  store double %313, ptr %diagonal, align 8, !tbaa !22
  %314 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %315 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx256 = getelementptr inbounds i64, ptr %314, i64 %315
  %316 = load i64, ptr %arrayidx256, align 8, !tbaa !8
  %add257 = add nsw i64 %316, 1
  store i64 %add257, ptr %j, align 8, !tbaa !8
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc492, %for.end253
  %317 = load i64, ptr %j, align 8, !tbaa !8
  %318 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %319 = load i64, ptr %i, align 8, !tbaa !8
  %add259 = add nsw i64 %319, 1
  %arrayidx260 = getelementptr inbounds i64, ptr %318, i64 %add259
  %320 = load i64, ptr %arrayidx260, align 8, !tbaa !8
  %cmp261 = icmp slt i64 %317, %320
  br i1 %cmp261, label %for.body263, label %for.end494

for.body263:                                      ; preds = %for.cond258
  %321 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %322 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx264 = getelementptr inbounds i64, ptr %321, i64 %322
  %323 = load i64, ptr %arrayidx264, align 8, !tbaa !8
  store i64 %323, ptr %j_point, align 8, !tbaa !8
  %324 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %325 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %326 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx265 = getelementptr inbounds i64, ptr %325, i64 %326
  %327 = load i64, ptr %arrayidx265, align 8, !tbaa !8
  %cmp266 = icmp ne i64 %324, %327
  br i1 %cmp266, label %if.then268, label %if.end269

if.then268:                                       ; preds = %for.body263
  br label %for.inc492

if.end269:                                        ; preds = %for.body263
  store i64 0, ptr %dist_coarse, align 8, !tbaa !8
  %328 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %329 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx270 = getelementptr inbounds double, ptr %328, i64 %329
  %330 = load double, ptr %arrayidx270, align 8, !tbaa !22
  store double %330, ptr %a_ij, align 8, !tbaa !22
  store i64 0, ptr %found, align 8, !tbaa !8
  %331 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %332 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx271 = getelementptr inbounds i64, ptr %331, i64 %332
  %333 = load i64, ptr %arrayidx271, align 8, !tbaa !8
  %cmp272 = icmp sge i64 %333, 0
  br i1 %cmp272, label %if.then274, label %if.else296

if.then274:                                       ; preds = %if.end269
  %334 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  %335 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx275 = getelementptr inbounds i64, ptr %334, i64 %335
  %336 = load i64, ptr %arrayidx275, align 8, !tbaa !8
  store i64 %336, ptr %j_point_c, align 8, !tbaa !8
  %337 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %338 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx276 = getelementptr inbounds i64, ptr %337, i64 %338
  %339 = load i64, ptr %arrayidx276, align 8, !tbaa !8
  store i64 %339, ptr %k, align 8, !tbaa !8
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc290, %if.then274
  %340 = load i64, ptr %k, align 8, !tbaa !8
  %341 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %342 = load i64, ptr %i, align 8, !tbaa !8
  %add278 = add nsw i64 %342, 1
  %arrayidx279 = getelementptr inbounds i64, ptr %341, i64 %add278
  %343 = load i64, ptr %arrayidx279, align 8, !tbaa !8
  %cmp280 = icmp slt i64 %340, %343
  br i1 %cmp280, label %for.body282, label %for.end292

for.body282:                                      ; preds = %for.cond277
  %344 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %345 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx283 = getelementptr inbounds i64, ptr %344, i64 %345
  %346 = load i64, ptr %arrayidx283, align 8, !tbaa !8
  %347 = load i64, ptr %j_point_c, align 8, !tbaa !8
  %cmp284 = icmp eq i64 %346, %347
  br i1 %cmp284, label %if.then286, label %if.end289

if.then286:                                       ; preds = %for.body282
  %348 = load double, ptr %a_ij, align 8, !tbaa !22
  %349 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %350 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx287 = getelementptr inbounds double, ptr %349, i64 %350
  %351 = load double, ptr %arrayidx287, align 8, !tbaa !22
  %add288 = fadd double %351, %348
  store double %add288, ptr %arrayidx287, align 8, !tbaa !22
  store i64 1, ptr %found, align 8, !tbaa !8
  br label %for.end292

if.end289:                                        ; preds = %for.body282
  br label %for.inc290

for.inc290:                                       ; preds = %if.end289
  %352 = load i64, ptr %k, align 8, !tbaa !8
  %inc291 = add nsw i64 %352, 1
  store i64 %inc291, ptr %k, align 8, !tbaa !8
  br label %for.cond277, !llvm.loop !106

for.end292:                                       ; preds = %if.then286, %for.cond277
  %353 = load i64, ptr %found, align 8, !tbaa !8
  %tobool293 = icmp ne i64 %353, 0
  br i1 %tobool293, label %if.end295, label %if.then294

if.then294:                                       ; preds = %for.end292
  store i64 1, ptr %dist_coarse, align 8, !tbaa !8
  br label %if.end295

if.end295:                                        ; preds = %if.then294, %for.end292
  br label %if.end455

if.else296:                                       ; preds = %if.end269
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !22
  %354 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %355 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx297 = getelementptr inbounds i64, ptr %354, i64 %355
  %356 = load i64, ptr %arrayidx297, align 8, !tbaa !8
  store i64 %356, ptr %pp, align 8, !tbaa !8
  br label %for.cond298

for.cond298:                                      ; preds = %for.inc322, %if.else296
  %357 = load i64, ptr %pp, align 8, !tbaa !8
  %358 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %359 = load i64, ptr %j_point, align 8, !tbaa !8
  %add299 = add nsw i64 %359, 1
  %arrayidx300 = getelementptr inbounds i64, ptr %358, i64 %add299
  %360 = load i64, ptr %arrayidx300, align 8, !tbaa !8
  %cmp301 = icmp slt i64 %357, %360
  br i1 %cmp301, label %for.body303, label %for.end324

for.body303:                                      ; preds = %for.cond298
  %361 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %362 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx304 = getelementptr inbounds i64, ptr %361, i64 %362
  %363 = load i64, ptr %arrayidx304, align 8, !tbaa !8
  store i64 %363, ptr %p_point, align 8, !tbaa !8
  %364 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %365 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx305 = getelementptr inbounds i64, ptr %364, i64 %365
  %366 = load i64, ptr %arrayidx305, align 8, !tbaa !8
  store i64 %366, ptr %k, align 8, !tbaa !8
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc319, %for.body303
  %367 = load i64, ptr %k, align 8, !tbaa !8
  %368 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %369 = load i64, ptr %i, align 8, !tbaa !8
  %add307 = add nsw i64 %369, 1
  %arrayidx308 = getelementptr inbounds i64, ptr %368, i64 %add307
  %370 = load i64, ptr %arrayidx308, align 8, !tbaa !8
  %cmp309 = icmp slt i64 %367, %370
  br i1 %cmp309, label %for.body311, label %for.end321

for.body311:                                      ; preds = %for.cond306
  %371 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %372 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx312 = getelementptr inbounds i64, ptr %371, i64 %372
  %373 = load i64, ptr %arrayidx312, align 8, !tbaa !8
  store i64 %373, ptr %k_point, align 8, !tbaa !8
  %374 = load i64, ptr %p_point, align 8, !tbaa !8
  %375 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp313 = icmp eq i64 %374, %375
  br i1 %cmp313, label %if.then315, label %if.end318

if.then315:                                       ; preds = %for.body311
  %376 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %377 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx316 = getelementptr inbounds double, ptr %376, i64 %377
  %378 = load double, ptr %arrayidx316, align 8, !tbaa !22
  %379 = load double, ptr %sum, align 8, !tbaa !22
  %add317 = fadd double %379, %378
  store double %add317, ptr %sum, align 8, !tbaa !22
  br label %for.end321

if.end318:                                        ; preds = %for.body311
  br label %for.inc319

for.inc319:                                       ; preds = %if.end318
  %380 = load i64, ptr %k, align 8, !tbaa !8
  %inc320 = add nsw i64 %380, 1
  store i64 %inc320, ptr %k, align 8, !tbaa !8
  br label %for.cond306, !llvm.loop !107

for.end321:                                       ; preds = %if.then315, %for.cond306
  br label %for.inc322

for.inc322:                                       ; preds = %for.end321
  %381 = load i64, ptr %pp, align 8, !tbaa !8
  %inc323 = add nsw i64 %381, 1
  store i64 %inc323, ptr %pp, align 8, !tbaa !8
  br label %for.cond298, !llvm.loop !108

for.end324:                                       ; preds = %for.cond298
  %382 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %383 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx325 = getelementptr inbounds i64, ptr %382, i64 %383
  %384 = load i64, ptr %arrayidx325, align 8, !tbaa !8
  store i64 %384, ptr %pp, align 8, !tbaa !8
  br label %for.cond326

for.cond326:                                      ; preds = %for.inc350, %for.end324
  %385 = load i64, ptr %pp, align 8, !tbaa !8
  %386 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %387 = load i64, ptr %j_point, align 8, !tbaa !8
  %add327 = add nsw i64 %387, 1
  %arrayidx328 = getelementptr inbounds i64, ptr %386, i64 %add327
  %388 = load i64, ptr %arrayidx328, align 8, !tbaa !8
  %cmp329 = icmp slt i64 %385, %388
  br i1 %cmp329, label %for.body331, label %for.end352

for.body331:                                      ; preds = %for.cond326
  %389 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %390 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx332 = getelementptr inbounds i64, ptr %389, i64 %390
  %391 = load i64, ptr %arrayidx332, align 8, !tbaa !8
  store i64 %391, ptr %p_point, align 8, !tbaa !8
  %392 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %393 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx333 = getelementptr inbounds i64, ptr %392, i64 %393
  %394 = load i64, ptr %arrayidx333, align 8, !tbaa !8
  store i64 %394, ptr %k, align 8, !tbaa !8
  br label %for.cond334

for.cond334:                                      ; preds = %for.inc347, %for.body331
  %395 = load i64, ptr %k, align 8, !tbaa !8
  %396 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %397 = load i64, ptr %i, align 8, !tbaa !8
  %add335 = add nsw i64 %397, 1
  %arrayidx336 = getelementptr inbounds i64, ptr %396, i64 %add335
  %398 = load i64, ptr %arrayidx336, align 8, !tbaa !8
  %cmp337 = icmp slt i64 %395, %398
  br i1 %cmp337, label %for.body339, label %for.end349

for.body339:                                      ; preds = %for.cond334
  %399 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %400 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx340 = getelementptr inbounds i64, ptr %399, i64 %400
  %401 = load i64, ptr %arrayidx340, align 8, !tbaa !8
  store i64 %401, ptr %k_point, align 8, !tbaa !8
  %402 = load i64, ptr %p_point, align 8, !tbaa !8
  %403 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp341 = icmp eq i64 %402, %403
  br i1 %cmp341, label %if.then343, label %if.end346

if.then343:                                       ; preds = %for.body339
  %404 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %405 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx344 = getelementptr inbounds double, ptr %404, i64 %405
  %406 = load double, ptr %arrayidx344, align 8, !tbaa !22
  %407 = load double, ptr %sum, align 8, !tbaa !22
  %add345 = fadd double %407, %406
  store double %add345, ptr %sum, align 8, !tbaa !22
  br label %for.end349

if.end346:                                        ; preds = %for.body339
  br label %for.inc347

for.inc347:                                       ; preds = %if.end346
  %408 = load i64, ptr %k, align 8, !tbaa !8
  %inc348 = add nsw i64 %408, 1
  store i64 %inc348, ptr %k, align 8, !tbaa !8
  br label %for.cond334, !llvm.loop !109

for.end349:                                       ; preds = %if.then343, %for.cond334
  br label %for.inc350

for.inc350:                                       ; preds = %for.end349
  %409 = load i64, ptr %pp, align 8, !tbaa !8
  %inc351 = add nsw i64 %409, 1
  store i64 %inc351, ptr %pp, align 8, !tbaa !8
  br label %for.cond326, !llvm.loop !110

for.end352:                                       ; preds = %for.cond326
  %410 = load double, ptr %sum, align 8, !tbaa !22
  %cmp353 = fcmp ogt double %410, 0.000000e+00
  br i1 %cmp353, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end352
  %411 = load double, ptr %sum, align 8, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %for.end352
  %412 = load double, ptr %sum, align 8, !tbaa !22
  %fneg = fneg double %412
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %411, %cond.true ], [ %fneg, %cond.false ]
  %cmp355 = fcmp olt double %cond, 0x3D719799812DEA11
  br i1 %cmp355, label %if.then357, label %if.end358

if.then357:                                       ; preds = %cond.end
  store double 1.000000e+00, ptr %sum, align 8, !tbaa !22
  store i64 1, ptr %use_alt_w, align 8, !tbaa !8
  br label %if.end358

if.end358:                                        ; preds = %if.then357, %cond.end
  %413 = load i64, ptr %use_alt_w, align 8, !tbaa !8
  %tobool359 = icmp ne i64 %413, 0
  br i1 %tobool359, label %if.then360, label %if.end393

if.then360:                                       ; preds = %if.end358
  %414 = load double, ptr %a_ij, align 8, !tbaa !22
  %415 = load i64, ptr %p_num_diag_elements, align 8, !tbaa !8
  %416 = load i64, ptr %p_num_offd_elements, align 8, !tbaa !8
  %add361 = add nsw i64 %415, %416
  %conv362 = sitofp i64 %add361 to double
  %div = fdiv double %414, %conv362
  store double %div, ptr %aw, align 8, !tbaa !22
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %417 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %418 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx363 = getelementptr inbounds i64, ptr %417, i64 %418
  %419 = load i64, ptr %arrayidx363, align 8, !tbaa !8
  store i64 %419, ptr %kk, align 8, !tbaa !8
  br label %for.cond364

for.cond364:                                      ; preds = %for.inc375, %if.then360
  %420 = load i64, ptr %kk, align 8, !tbaa !8
  %421 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %422 = load i64, ptr %i, align 8, !tbaa !8
  %add365 = add nsw i64 %422, 1
  %arrayidx366 = getelementptr inbounds i64, ptr %421, i64 %add365
  %423 = load i64, ptr %arrayidx366, align 8, !tbaa !8
  %cmp367 = icmp slt i64 %420, %423
  br i1 %cmp367, label %for.body369, label %for.end377

for.body369:                                      ; preds = %for.cond364
  %424 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %425 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx370 = getelementptr inbounds i64, ptr %424, i64 %425
  %426 = load i64, ptr %arrayidx370, align 8, !tbaa !8
  %427 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add371 = add nsw i64 %426, %427
  store i64 %add371, ptr %cur_spot, align 8, !tbaa !8
  %428 = load double, ptr %aw, align 8, !tbaa !22
  %429 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %430 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx372 = getelementptr inbounds double, ptr %429, i64 %430
  %431 = load double, ptr %arrayidx372, align 8, !tbaa !22
  %add373 = fadd double %431, %428
  store double %add373, ptr %arrayidx372, align 8, !tbaa !22
  %432 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc374 = add nsw i64 %432, 1
  store i64 %inc374, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc375

for.inc375:                                       ; preds = %for.body369
  %433 = load i64, ptr %kk, align 8, !tbaa !8
  %inc376 = add nsw i64 %433, 1
  store i64 %inc376, ptr %kk, align 8, !tbaa !8
  br label %for.cond364, !llvm.loop !111

for.end377:                                       ; preds = %for.cond364
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %434 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %435 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx378 = getelementptr inbounds i64, ptr %434, i64 %435
  %436 = load i64, ptr %arrayidx378, align 8, !tbaa !8
  store i64 %436, ptr %kk, align 8, !tbaa !8
  br label %for.cond379

for.cond379:                                      ; preds = %for.inc390, %for.end377
  %437 = load i64, ptr %kk, align 8, !tbaa !8
  %438 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %439 = load i64, ptr %i, align 8, !tbaa !8
  %add380 = add nsw i64 %439, 1
  %arrayidx381 = getelementptr inbounds i64, ptr %438, i64 %add380
  %440 = load i64, ptr %arrayidx381, align 8, !tbaa !8
  %cmp382 = icmp slt i64 %437, %440
  br i1 %cmp382, label %for.body384, label %for.end392

for.body384:                                      ; preds = %for.cond379
  %441 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %442 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx385 = getelementptr inbounds i64, ptr %441, i64 %442
  %443 = load i64, ptr %arrayidx385, align 8, !tbaa !8
  %444 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add386 = add nsw i64 %443, %444
  store i64 %add386, ptr %cur_spot, align 8, !tbaa !8
  %445 = load double, ptr %aw, align 8, !tbaa !22
  %446 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %447 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx387 = getelementptr inbounds double, ptr %446, i64 %447
  %448 = load double, ptr %arrayidx387, align 8, !tbaa !22
  %add388 = fadd double %448, %445
  store double %add388, ptr %arrayidx387, align 8, !tbaa !22
  %449 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc389 = add nsw i64 %449, 1
  store i64 %inc389, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc390

for.inc390:                                       ; preds = %for.body384
  %450 = load i64, ptr %kk, align 8, !tbaa !8
  %inc391 = add nsw i64 %450, 1
  store i64 %inc391, ptr %kk, align 8, !tbaa !8
  br label %for.cond379, !llvm.loop !112

for.end392:                                       ; preds = %for.cond379
  br label %for.inc492

if.end393:                                        ; preds = %if.end358
  %451 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %452 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx394 = getelementptr inbounds i64, ptr %451, i64 %452
  %453 = load i64, ptr %arrayidx394, align 8, !tbaa !8
  store i64 %453, ptr %k, align 8, !tbaa !8
  br label %for.cond395

for.cond395:                                      ; preds = %for.inc421, %if.end393
  %454 = load i64, ptr %k, align 8, !tbaa !8
  %455 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %456 = load i64, ptr %i, align 8, !tbaa !8
  %add396 = add nsw i64 %456, 1
  %arrayidx397 = getelementptr inbounds i64, ptr %455, i64 %add396
  %457 = load i64, ptr %arrayidx397, align 8, !tbaa !8
  %cmp398 = icmp slt i64 %454, %457
  br i1 %cmp398, label %for.body400, label %for.end423

for.body400:                                      ; preds = %for.cond395
  %458 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %459 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx401 = getelementptr inbounds i64, ptr %458, i64 %459
  %460 = load i64, ptr %arrayidx401, align 8, !tbaa !8
  store i64 %460, ptr %k_point, align 8, !tbaa !8
  %461 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %462 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx402 = getelementptr inbounds i64, ptr %461, i64 %462
  %463 = load i64, ptr %arrayidx402, align 8, !tbaa !8
  store i64 %463, ptr %pp, align 8, !tbaa !8
  br label %for.cond403

for.cond403:                                      ; preds = %for.inc418, %for.body400
  %464 = load i64, ptr %pp, align 8, !tbaa !8
  %465 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %466 = load i64, ptr %j_point, align 8, !tbaa !8
  %add404 = add nsw i64 %466, 1
  %arrayidx405 = getelementptr inbounds i64, ptr %465, i64 %add404
  %467 = load i64, ptr %arrayidx405, align 8, !tbaa !8
  %cmp406 = icmp slt i64 %464, %467
  br i1 %cmp406, label %for.body408, label %for.end420

for.body408:                                      ; preds = %for.cond403
  %468 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %469 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx409 = getelementptr inbounds i64, ptr %468, i64 %469
  %470 = load i64, ptr %arrayidx409, align 8, !tbaa !8
  %471 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp410 = icmp eq i64 %470, %471
  br i1 %cmp410, label %if.then412, label %if.end417

if.then412:                                       ; preds = %for.body408
  %472 = load double, ptr %a_ij, align 8, !tbaa !22
  %473 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %474 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx413 = getelementptr inbounds double, ptr %473, i64 %474
  %475 = load double, ptr %arrayidx413, align 8, !tbaa !22
  %mul = fmul double %472, %475
  store double %mul, ptr %aw, align 8, !tbaa !22
  %476 = load double, ptr %aw, align 8, !tbaa !22
  %477 = load double, ptr %sum, align 8, !tbaa !22
  %div414 = fdiv double %476, %477
  store double %div414, ptr %aw, align 8, !tbaa !22
  %478 = load double, ptr %aw, align 8, !tbaa !22
  %479 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %480 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx415 = getelementptr inbounds double, ptr %479, i64 %480
  %481 = load double, ptr %arrayidx415, align 8, !tbaa !22
  %add416 = fadd double %481, %478
  store double %add416, ptr %arrayidx415, align 8, !tbaa !22
  br label %for.end420

if.end417:                                        ; preds = %for.body408
  br label %for.inc418

for.inc418:                                       ; preds = %if.end417
  %482 = load i64, ptr %pp, align 8, !tbaa !8
  %inc419 = add nsw i64 %482, 1
  store i64 %inc419, ptr %pp, align 8, !tbaa !8
  br label %for.cond403, !llvm.loop !113

for.end420:                                       ; preds = %if.then412, %for.cond403
  br label %for.inc421

for.inc421:                                       ; preds = %for.end420
  %483 = load i64, ptr %k, align 8, !tbaa !8
  %inc422 = add nsw i64 %483, 1
  store i64 %inc422, ptr %k, align 8, !tbaa !8
  br label %for.cond395, !llvm.loop !114

for.end423:                                       ; preds = %for.cond395
  %484 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %485 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx424 = getelementptr inbounds i64, ptr %484, i64 %485
  %486 = load i64, ptr %arrayidx424, align 8, !tbaa !8
  store i64 %486, ptr %k, align 8, !tbaa !8
  br label %for.cond425

for.cond425:                                      ; preds = %for.inc452, %for.end423
  %487 = load i64, ptr %k, align 8, !tbaa !8
  %488 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %489 = load i64, ptr %i, align 8, !tbaa !8
  %add426 = add nsw i64 %489, 1
  %arrayidx427 = getelementptr inbounds i64, ptr %488, i64 %add426
  %490 = load i64, ptr %arrayidx427, align 8, !tbaa !8
  %cmp428 = icmp slt i64 %487, %490
  br i1 %cmp428, label %for.body430, label %for.end454

for.body430:                                      ; preds = %for.cond425
  %491 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %492 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx431 = getelementptr inbounds i64, ptr %491, i64 %492
  %493 = load i64, ptr %arrayidx431, align 8, !tbaa !8
  store i64 %493, ptr %k_point, align 8, !tbaa !8
  %494 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %495 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx432 = getelementptr inbounds i64, ptr %494, i64 %495
  %496 = load i64, ptr %arrayidx432, align 8, !tbaa !8
  store i64 %496, ptr %pp, align 8, !tbaa !8
  br label %for.cond433

for.cond433:                                      ; preds = %for.inc449, %for.body430
  %497 = load i64, ptr %pp, align 8, !tbaa !8
  %498 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %499 = load i64, ptr %j_point, align 8, !tbaa !8
  %add434 = add nsw i64 %499, 1
  %arrayidx435 = getelementptr inbounds i64, ptr %498, i64 %add434
  %500 = load i64, ptr %arrayidx435, align 8, !tbaa !8
  %cmp436 = icmp slt i64 %497, %500
  br i1 %cmp436, label %for.body438, label %for.end451

for.body438:                                      ; preds = %for.cond433
  %501 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %502 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx439 = getelementptr inbounds i64, ptr %501, i64 %502
  %503 = load i64, ptr %arrayidx439, align 8, !tbaa !8
  %504 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp440 = icmp eq i64 %503, %504
  br i1 %cmp440, label %if.then442, label %if.end448

if.then442:                                       ; preds = %for.body438
  %505 = load double, ptr %a_ij, align 8, !tbaa !22
  %506 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %507 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx443 = getelementptr inbounds double, ptr %506, i64 %507
  %508 = load double, ptr %arrayidx443, align 8, !tbaa !22
  %mul444 = fmul double %505, %508
  store double %mul444, ptr %aw, align 8, !tbaa !22
  %509 = load double, ptr %aw, align 8, !tbaa !22
  %510 = load double, ptr %sum, align 8, !tbaa !22
  %div445 = fdiv double %509, %510
  store double %div445, ptr %aw, align 8, !tbaa !22
  %511 = load double, ptr %aw, align 8, !tbaa !22
  %512 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %513 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx446 = getelementptr inbounds double, ptr %512, i64 %513
  %514 = load double, ptr %arrayidx446, align 8, !tbaa !22
  %add447 = fadd double %514, %511
  store double %add447, ptr %arrayidx446, align 8, !tbaa !22
  br label %for.end451

if.end448:                                        ; preds = %for.body438
  br label %for.inc449

for.inc449:                                       ; preds = %if.end448
  %515 = load i64, ptr %pp, align 8, !tbaa !8
  %inc450 = add nsw i64 %515, 1
  store i64 %inc450, ptr %pp, align 8, !tbaa !8
  br label %for.cond433, !llvm.loop !115

for.end451:                                       ; preds = %if.then442, %for.cond433
  br label %for.inc452

for.inc452:                                       ; preds = %for.end451
  %516 = load i64, ptr %k, align 8, !tbaa !8
  %inc453 = add nsw i64 %516, 1
  store i64 %inc453, ptr %k, align 8, !tbaa !8
  br label %for.cond425, !llvm.loop !116

for.end454:                                       ; preds = %for.cond425
  br label %if.end455

if.end455:                                        ; preds = %for.end454, %if.end295
  %517 = load i64, ptr %dist_coarse, align 8, !tbaa !8
  %tobool456 = icmp ne i64 %517, 0
  br i1 %tobool456, label %if.then457, label %if.end491

if.then457:                                       ; preds = %if.end455
  %518 = load double, ptr %a_ij, align 8, !tbaa !22
  %519 = load i64, ptr %p_num_diag_elements, align 8, !tbaa !8
  %520 = load i64, ptr %p_num_offd_elements, align 8, !tbaa !8
  %add458 = add nsw i64 %519, %520
  %conv459 = sitofp i64 %add458 to double
  %div460 = fdiv double %518, %conv459
  store double %div460, ptr %aw, align 8, !tbaa !22
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %521 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %522 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx461 = getelementptr inbounds i64, ptr %521, i64 %522
  %523 = load i64, ptr %arrayidx461, align 8, !tbaa !8
  store i64 %523, ptr %kk, align 8, !tbaa !8
  br label %for.cond462

for.cond462:                                      ; preds = %for.inc473, %if.then457
  %524 = load i64, ptr %kk, align 8, !tbaa !8
  %525 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %526 = load i64, ptr %i, align 8, !tbaa !8
  %add463 = add nsw i64 %526, 1
  %arrayidx464 = getelementptr inbounds i64, ptr %525, i64 %add463
  %527 = load i64, ptr %arrayidx464, align 8, !tbaa !8
  %cmp465 = icmp slt i64 %524, %527
  br i1 %cmp465, label %for.body467, label %for.end475

for.body467:                                      ; preds = %for.cond462
  %528 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %529 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx468 = getelementptr inbounds i64, ptr %528, i64 %529
  %530 = load i64, ptr %arrayidx468, align 8, !tbaa !8
  %531 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add469 = add nsw i64 %530, %531
  store i64 %add469, ptr %cur_spot, align 8, !tbaa !8
  %532 = load double, ptr %aw, align 8, !tbaa !22
  %533 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %534 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx470 = getelementptr inbounds double, ptr %533, i64 %534
  %535 = load double, ptr %arrayidx470, align 8, !tbaa !22
  %add471 = fadd double %535, %532
  store double %add471, ptr %arrayidx470, align 8, !tbaa !22
  %536 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc472 = add nsw i64 %536, 1
  store i64 %inc472, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc473

for.inc473:                                       ; preds = %for.body467
  %537 = load i64, ptr %kk, align 8, !tbaa !8
  %inc474 = add nsw i64 %537, 1
  store i64 %inc474, ptr %kk, align 8, !tbaa !8
  br label %for.cond462, !llvm.loop !117

for.end475:                                       ; preds = %for.cond462
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %538 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %539 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx476 = getelementptr inbounds i64, ptr %538, i64 %539
  %540 = load i64, ptr %arrayidx476, align 8, !tbaa !8
  store i64 %540, ptr %kk, align 8, !tbaa !8
  br label %for.cond477

for.cond477:                                      ; preds = %for.inc488, %for.end475
  %541 = load i64, ptr %kk, align 8, !tbaa !8
  %542 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %543 = load i64, ptr %i, align 8, !tbaa !8
  %add478 = add nsw i64 %543, 1
  %arrayidx479 = getelementptr inbounds i64, ptr %542, i64 %add478
  %544 = load i64, ptr %arrayidx479, align 8, !tbaa !8
  %cmp480 = icmp slt i64 %541, %544
  br i1 %cmp480, label %for.body482, label %for.end490

for.body482:                                      ; preds = %for.cond477
  %545 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %546 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx483 = getelementptr inbounds i64, ptr %545, i64 %546
  %547 = load i64, ptr %arrayidx483, align 8, !tbaa !8
  %548 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add484 = add nsw i64 %547, %548
  store i64 %add484, ptr %cur_spot, align 8, !tbaa !8
  %549 = load double, ptr %aw, align 8, !tbaa !22
  %550 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %551 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx485 = getelementptr inbounds double, ptr %550, i64 %551
  %552 = load double, ptr %arrayidx485, align 8, !tbaa !22
  %add486 = fadd double %552, %549
  store double %add486, ptr %arrayidx485, align 8, !tbaa !22
  %553 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc487 = add nsw i64 %553, 1
  store i64 %inc487, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc488

for.inc488:                                       ; preds = %for.body482
  %554 = load i64, ptr %kk, align 8, !tbaa !8
  %inc489 = add nsw i64 %554, 1
  store i64 %inc489, ptr %kk, align 8, !tbaa !8
  br label %for.cond477, !llvm.loop !118

for.end490:                                       ; preds = %for.cond477
  br label %if.end491

if.end491:                                        ; preds = %for.end490, %if.end455
  br label %for.inc492

for.inc492:                                       ; preds = %if.end491, %for.end392, %if.then268
  %555 = load i64, ptr %j, align 8, !tbaa !8
  %inc493 = add nsw i64 %555, 1
  store i64 %inc493, ptr %j, align 8, !tbaa !8
  br label %for.cond258, !llvm.loop !119

for.end494:                                       ; preds = %for.cond258
  %556 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %557 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx495 = getelementptr inbounds i64, ptr %556, i64 %557
  %558 = load i64, ptr %arrayidx495, align 8, !tbaa !8
  store i64 %558, ptr %j, align 8, !tbaa !8
  br label %for.cond496

for.cond496:                                      ; preds = %for.inc744, %for.end494
  %559 = load i64, ptr %j, align 8, !tbaa !8
  %560 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %561 = load i64, ptr %i, align 8, !tbaa !8
  %add497 = add nsw i64 %561, 1
  %arrayidx498 = getelementptr inbounds i64, ptr %560, i64 %add497
  %562 = load i64, ptr %arrayidx498, align 8, !tbaa !8
  %cmp499 = icmp slt i64 %559, %562
  br i1 %cmp499, label %for.body501, label %for.end746

for.body501:                                      ; preds = %for.cond496
  %563 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %564 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx502 = getelementptr inbounds i64, ptr %563, i64 %564
  %565 = load i64, ptr %arrayidx502, align 8, !tbaa !8
  store i64 %565, ptr %j_point, align 8, !tbaa !8
  %566 = load i64, ptr %fcn_num, align 8, !tbaa !8
  %567 = load ptr, ptr %dof_func_offd, align 8, !tbaa !4
  %568 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx503 = getelementptr inbounds i64, ptr %567, i64 %568
  %569 = load i64, ptr %arrayidx503, align 8, !tbaa !8
  %cmp504 = icmp ne i64 %566, %569
  br i1 %cmp504, label %if.then506, label %if.end507

if.then506:                                       ; preds = %for.body501
  br label %for.inc744

if.end507:                                        ; preds = %for.body501
  store i64 0, ptr %dist_coarse, align 8, !tbaa !8
  %570 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %571 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx508 = getelementptr inbounds double, ptr %570, i64 %571
  %572 = load double, ptr %arrayidx508, align 8, !tbaa !22
  store double %572, ptr %a_ij, align 8, !tbaa !22
  store i64 0, ptr %found, align 8, !tbaa !8
  %573 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %574 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx509 = getelementptr inbounds i64, ptr %573, i64 %574
  %575 = load i64, ptr %arrayidx509, align 8, !tbaa !8
  %cmp510 = icmp sge i64 %575, 0
  br i1 %cmp510, label %if.then512, label %if.else535

if.then512:                                       ; preds = %if.end507
  %576 = load ptr, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  %577 = load i64, ptr %j_point, align 8, !tbaa !8
  %arrayidx513 = getelementptr inbounds i64, ptr %576, i64 %577
  %578 = load i64, ptr %arrayidx513, align 8, !tbaa !8
  store i64 %578, ptr %big_j_point_c, align 8, !tbaa !8
  %579 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %580 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx514 = getelementptr inbounds i64, ptr %579, i64 %580
  %581 = load i64, ptr %arrayidx514, align 8, !tbaa !8
  store i64 %581, ptr %k, align 8, !tbaa !8
  br label %for.cond515

for.cond515:                                      ; preds = %for.inc529, %if.then512
  %582 = load i64, ptr %k, align 8, !tbaa !8
  %583 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %584 = load i64, ptr %i, align 8, !tbaa !8
  %add516 = add nsw i64 %584, 1
  %arrayidx517 = getelementptr inbounds i64, ptr %583, i64 %add516
  %585 = load i64, ptr %arrayidx517, align 8, !tbaa !8
  %cmp518 = icmp slt i64 %582, %585
  br i1 %cmp518, label %for.body520, label %for.end531

for.body520:                                      ; preds = %for.cond515
  %586 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %587 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx521 = getelementptr inbounds i64, ptr %586, i64 %587
  %588 = load i64, ptr %arrayidx521, align 8, !tbaa !8
  store i64 %588, ptr %index, align 8, !tbaa !8
  %589 = load ptr, ptr %col_map_offd_P, align 8, !tbaa !4
  %590 = load i64, ptr %index, align 8, !tbaa !8
  %arrayidx522 = getelementptr inbounds i64, ptr %589, i64 %590
  %591 = load i64, ptr %arrayidx522, align 8, !tbaa !8
  store i64 %591, ptr %big_index, align 8, !tbaa !8
  %592 = load i64, ptr %big_index, align 8, !tbaa !8
  %593 = load i64, ptr %big_j_point_c, align 8, !tbaa !8
  %cmp523 = icmp eq i64 %592, %593
  br i1 %cmp523, label %if.then525, label %if.end528

if.then525:                                       ; preds = %for.body520
  %594 = load double, ptr %a_ij, align 8, !tbaa !22
  %595 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %596 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx526 = getelementptr inbounds double, ptr %595, i64 %596
  %597 = load double, ptr %arrayidx526, align 8, !tbaa !22
  %add527 = fadd double %597, %594
  store double %add527, ptr %arrayidx526, align 8, !tbaa !22
  store i64 1, ptr %found, align 8, !tbaa !8
  br label %for.end531

if.end528:                                        ; preds = %for.body520
  br label %for.inc529

for.inc529:                                       ; preds = %if.end528
  %598 = load i64, ptr %k, align 8, !tbaa !8
  %inc530 = add nsw i64 %598, 1
  store i64 %inc530, ptr %k, align 8, !tbaa !8
  br label %for.cond515, !llvm.loop !120

for.end531:                                       ; preds = %if.then525, %for.cond515
  %599 = load i64, ptr %found, align 8, !tbaa !8
  %tobool532 = icmp ne i64 %599, 0
  br i1 %tobool532, label %if.end534, label %if.then533

if.then533:                                       ; preds = %for.end531
  store i64 1, ptr %dist_coarse, align 8, !tbaa !8
  br label %if.end534

if.end534:                                        ; preds = %if.then533, %for.end531
  br label %if.end707

if.else535:                                       ; preds = %if.end507
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !22
  %600 = load i64, ptr %j_point, align 8, !tbaa !8
  store i64 %600, ptr %j_ext_index, align 8, !tbaa !8
  %601 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %602 = load i64, ptr %j_ext_index, align 8, !tbaa !8
  %arrayidx536 = getelementptr inbounds i64, ptr %601, i64 %602
  %603 = load i64, ptr %arrayidx536, align 8, !tbaa !8
  store i64 %603, ptr %pp, align 8, !tbaa !8
  br label %for.cond537

for.cond537:                                      ; preds = %for.inc585, %if.else535
  %604 = load i64, ptr %pp, align 8, !tbaa !8
  %605 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %606 = load i64, ptr %j_ext_index, align 8, !tbaa !8
  %add538 = add nsw i64 %606, 1
  %arrayidx539 = getelementptr inbounds i64, ptr %605, i64 %add538
  %607 = load i64, ptr %arrayidx539, align 8, !tbaa !8
  %cmp540 = icmp slt i64 %604, %607
  br i1 %cmp540, label %for.body542, label %for.end587

for.body542:                                      ; preds = %for.cond537
  %608 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %609 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx543 = getelementptr inbounds i64, ptr %608, i64 %609
  %610 = load i64, ptr %arrayidx543, align 8, !tbaa !8
  store i64 %610, ptr %p_point, align 8, !tbaa !8
  %611 = load i64, ptr %p_point, align 8, !tbaa !8
  %cmp544 = icmp sgt i64 %611, -1
  br i1 %cmp544, label %if.then546, label %if.else564

if.then546:                                       ; preds = %for.body542
  %612 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %613 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx547 = getelementptr inbounds i64, ptr %612, i64 %613
  %614 = load i64, ptr %arrayidx547, align 8, !tbaa !8
  store i64 %614, ptr %k, align 8, !tbaa !8
  br label %for.cond548

for.cond548:                                      ; preds = %for.inc561, %if.then546
  %615 = load i64, ptr %k, align 8, !tbaa !8
  %616 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %617 = load i64, ptr %i, align 8, !tbaa !8
  %add549 = add nsw i64 %617, 1
  %arrayidx550 = getelementptr inbounds i64, ptr %616, i64 %add549
  %618 = load i64, ptr %arrayidx550, align 8, !tbaa !8
  %cmp551 = icmp slt i64 %615, %618
  br i1 %cmp551, label %for.body553, label %for.end563

for.body553:                                      ; preds = %for.cond548
  %619 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %620 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx554 = getelementptr inbounds i64, ptr %619, i64 %620
  %621 = load i64, ptr %arrayidx554, align 8, !tbaa !8
  store i64 %621, ptr %k_point, align 8, !tbaa !8
  %622 = load i64, ptr %p_point, align 8, !tbaa !8
  %623 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp555 = icmp eq i64 %622, %623
  br i1 %cmp555, label %if.then557, label %if.end560

if.then557:                                       ; preds = %for.body553
  %624 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %625 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx558 = getelementptr inbounds double, ptr %624, i64 %625
  %626 = load double, ptr %arrayidx558, align 8, !tbaa !22
  %627 = load double, ptr %sum, align 8, !tbaa !22
  %add559 = fadd double %627, %626
  store double %add559, ptr %sum, align 8, !tbaa !22
  br label %for.end563

if.end560:                                        ; preds = %for.body553
  br label %for.inc561

for.inc561:                                       ; preds = %if.end560
  %628 = load i64, ptr %k, align 8, !tbaa !8
  %inc562 = add nsw i64 %628, 1
  store i64 %inc562, ptr %k, align 8, !tbaa !8
  br label %for.cond548, !llvm.loop !121

for.end563:                                       ; preds = %if.then557, %for.cond548
  br label %if.end584

if.else564:                                       ; preds = %for.body542
  %629 = load i64, ptr %p_point, align 8, !tbaa !8
  %sub565 = sub nsw i64 0, %629
  %sub566 = sub nsw i64 %sub565, 1
  store i64 %sub566, ptr %p_point, align 8, !tbaa !8
  %630 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %631 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx567 = getelementptr inbounds i64, ptr %630, i64 %631
  %632 = load i64, ptr %arrayidx567, align 8, !tbaa !8
  store i64 %632, ptr %k, align 8, !tbaa !8
  br label %for.cond568

for.cond568:                                      ; preds = %for.inc581, %if.else564
  %633 = load i64, ptr %k, align 8, !tbaa !8
  %634 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %635 = load i64, ptr %i, align 8, !tbaa !8
  %add569 = add nsw i64 %635, 1
  %arrayidx570 = getelementptr inbounds i64, ptr %634, i64 %add569
  %636 = load i64, ptr %arrayidx570, align 8, !tbaa !8
  %cmp571 = icmp slt i64 %633, %636
  br i1 %cmp571, label %for.body573, label %for.end583

for.body573:                                      ; preds = %for.cond568
  %637 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %638 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx574 = getelementptr inbounds i64, ptr %637, i64 %638
  %639 = load i64, ptr %arrayidx574, align 8, !tbaa !8
  store i64 %639, ptr %k_point, align 8, !tbaa !8
  %640 = load i64, ptr %p_point, align 8, !tbaa !8
  %641 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp575 = icmp eq i64 %640, %641
  br i1 %cmp575, label %if.then577, label %if.end580

if.then577:                                       ; preds = %for.body573
  %642 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %643 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx578 = getelementptr inbounds double, ptr %642, i64 %643
  %644 = load double, ptr %arrayidx578, align 8, !tbaa !22
  %645 = load double, ptr %sum, align 8, !tbaa !22
  %add579 = fadd double %645, %644
  store double %add579, ptr %sum, align 8, !tbaa !22
  br label %for.end583

if.end580:                                        ; preds = %for.body573
  br label %for.inc581

for.inc581:                                       ; preds = %if.end580
  %646 = load i64, ptr %k, align 8, !tbaa !8
  %inc582 = add nsw i64 %646, 1
  store i64 %inc582, ptr %k, align 8, !tbaa !8
  br label %for.cond568, !llvm.loop !122

for.end583:                                       ; preds = %if.then577, %for.cond568
  br label %if.end584

if.end584:                                        ; preds = %for.end583, %for.end563
  br label %for.inc585

for.inc585:                                       ; preds = %if.end584
  %647 = load i64, ptr %pp, align 8, !tbaa !8
  %inc586 = add nsw i64 %647, 1
  store i64 %inc586, ptr %pp, align 8, !tbaa !8
  br label %for.cond537, !llvm.loop !123

for.end587:                                       ; preds = %for.cond537
  %648 = load double, ptr %sum, align 8, !tbaa !22
  %cmp588 = fcmp ogt double %648, 0.000000e+00
  br i1 %cmp588, label %cond.true590, label %cond.false591

cond.true590:                                     ; preds = %for.end587
  %649 = load double, ptr %sum, align 8, !tbaa !22
  br label %cond.end593

cond.false591:                                    ; preds = %for.end587
  %650 = load double, ptr %sum, align 8, !tbaa !22
  %fneg592 = fneg double %650
  br label %cond.end593

cond.end593:                                      ; preds = %cond.false591, %cond.true590
  %cond594 = phi double [ %649, %cond.true590 ], [ %fneg592, %cond.false591 ]
  %cmp595 = fcmp olt double %cond594, 0x3D719799812DEA11
  br i1 %cmp595, label %if.then597, label %if.end598

if.then597:                                       ; preds = %cond.end593
  store double 1.000000e+00, ptr %sum, align 8, !tbaa !22
  store i64 1, ptr %use_alt_w, align 8, !tbaa !8
  br label %if.end598

if.end598:                                        ; preds = %if.then597, %cond.end593
  %651 = load i64, ptr %use_alt_w, align 8, !tbaa !8
  %tobool599 = icmp ne i64 %651, 0
  br i1 %tobool599, label %if.then600, label %if.end634

if.then600:                                       ; preds = %if.end598
  %652 = load double, ptr %a_ij, align 8, !tbaa !22
  %653 = load i64, ptr %p_num_diag_elements, align 8, !tbaa !8
  %654 = load i64, ptr %p_num_offd_elements, align 8, !tbaa !8
  %add601 = add nsw i64 %653, %654
  %conv602 = sitofp i64 %add601 to double
  %div603 = fdiv double %652, %conv602
  store double %div603, ptr %aw, align 8, !tbaa !22
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %655 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %656 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx604 = getelementptr inbounds i64, ptr %655, i64 %656
  %657 = load i64, ptr %arrayidx604, align 8, !tbaa !8
  store i64 %657, ptr %kk, align 8, !tbaa !8
  br label %for.cond605

for.cond605:                                      ; preds = %for.inc616, %if.then600
  %658 = load i64, ptr %kk, align 8, !tbaa !8
  %659 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %660 = load i64, ptr %i, align 8, !tbaa !8
  %add606 = add nsw i64 %660, 1
  %arrayidx607 = getelementptr inbounds i64, ptr %659, i64 %add606
  %661 = load i64, ptr %arrayidx607, align 8, !tbaa !8
  %cmp608 = icmp slt i64 %658, %661
  br i1 %cmp608, label %for.body610, label %for.end618

for.body610:                                      ; preds = %for.cond605
  %662 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %663 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx611 = getelementptr inbounds i64, ptr %662, i64 %663
  %664 = load i64, ptr %arrayidx611, align 8, !tbaa !8
  %665 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add612 = add nsw i64 %664, %665
  store i64 %add612, ptr %cur_spot, align 8, !tbaa !8
  %666 = load double, ptr %aw, align 8, !tbaa !22
  %667 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %668 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx613 = getelementptr inbounds double, ptr %667, i64 %668
  %669 = load double, ptr %arrayidx613, align 8, !tbaa !22
  %add614 = fadd double %669, %666
  store double %add614, ptr %arrayidx613, align 8, !tbaa !22
  %670 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc615 = add nsw i64 %670, 1
  store i64 %inc615, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc616

for.inc616:                                       ; preds = %for.body610
  %671 = load i64, ptr %kk, align 8, !tbaa !8
  %inc617 = add nsw i64 %671, 1
  store i64 %inc617, ptr %kk, align 8, !tbaa !8
  br label %for.cond605, !llvm.loop !124

for.end618:                                       ; preds = %for.cond605
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %672 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %673 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx619 = getelementptr inbounds i64, ptr %672, i64 %673
  %674 = load i64, ptr %arrayidx619, align 8, !tbaa !8
  store i64 %674, ptr %kk, align 8, !tbaa !8
  br label %for.cond620

for.cond620:                                      ; preds = %for.inc631, %for.end618
  %675 = load i64, ptr %kk, align 8, !tbaa !8
  %676 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %677 = load i64, ptr %i, align 8, !tbaa !8
  %add621 = add nsw i64 %677, 1
  %arrayidx622 = getelementptr inbounds i64, ptr %676, i64 %add621
  %678 = load i64, ptr %arrayidx622, align 8, !tbaa !8
  %cmp623 = icmp slt i64 %675, %678
  br i1 %cmp623, label %for.body625, label %for.end633

for.body625:                                      ; preds = %for.cond620
  %679 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %680 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx626 = getelementptr inbounds i64, ptr %679, i64 %680
  %681 = load i64, ptr %arrayidx626, align 8, !tbaa !8
  %682 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add627 = add nsw i64 %681, %682
  store i64 %add627, ptr %cur_spot, align 8, !tbaa !8
  %683 = load double, ptr %aw, align 8, !tbaa !22
  %684 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %685 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx628 = getelementptr inbounds double, ptr %684, i64 %685
  %686 = load double, ptr %arrayidx628, align 8, !tbaa !22
  %add629 = fadd double %686, %683
  store double %add629, ptr %arrayidx628, align 8, !tbaa !22
  %687 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc630 = add nsw i64 %687, 1
  store i64 %inc630, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc631

for.inc631:                                       ; preds = %for.body625
  %688 = load i64, ptr %kk, align 8, !tbaa !8
  %inc632 = add nsw i64 %688, 1
  store i64 %inc632, ptr %kk, align 8, !tbaa !8
  br label %for.cond620, !llvm.loop !125

for.end633:                                       ; preds = %for.cond620
  br label %for.inc744

if.end634:                                        ; preds = %if.end598
  %689 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %690 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx635 = getelementptr inbounds i64, ptr %689, i64 %690
  %691 = load i64, ptr %arrayidx635, align 8, !tbaa !8
  store i64 %691, ptr %k, align 8, !tbaa !8
  br label %for.cond636

for.cond636:                                      ; preds = %for.inc667, %if.end634
  %692 = load i64, ptr %k, align 8, !tbaa !8
  %693 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %694 = load i64, ptr %i, align 8, !tbaa !8
  %add637 = add nsw i64 %694, 1
  %arrayidx638 = getelementptr inbounds i64, ptr %693, i64 %add637
  %695 = load i64, ptr %arrayidx638, align 8, !tbaa !8
  %cmp639 = icmp slt i64 %692, %695
  br i1 %cmp639, label %for.body641, label %for.end669

for.body641:                                      ; preds = %for.cond636
  %696 = load ptr, ptr %P_diag_j, align 8, !tbaa !4
  %697 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx642 = getelementptr inbounds i64, ptr %696, i64 %697
  %698 = load i64, ptr %arrayidx642, align 8, !tbaa !8
  store i64 %698, ptr %k_point, align 8, !tbaa !8
  %699 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %700 = load i64, ptr %j_ext_index, align 8, !tbaa !8
  %arrayidx643 = getelementptr inbounds i64, ptr %699, i64 %700
  %701 = load i64, ptr %arrayidx643, align 8, !tbaa !8
  store i64 %701, ptr %pp, align 8, !tbaa !8
  br label %for.cond644

for.cond644:                                      ; preds = %for.inc664, %for.body641
  %702 = load i64, ptr %pp, align 8, !tbaa !8
  %703 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %704 = load i64, ptr %j_ext_index, align 8, !tbaa !8
  %add645 = add nsw i64 %704, 1
  %arrayidx646 = getelementptr inbounds i64, ptr %703, i64 %add645
  %705 = load i64, ptr %arrayidx646, align 8, !tbaa !8
  %cmp647 = icmp slt i64 %702, %705
  br i1 %cmp647, label %for.body649, label %for.end666

for.body649:                                      ; preds = %for.cond644
  %706 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %707 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx650 = getelementptr inbounds i64, ptr %706, i64 %707
  %708 = load i64, ptr %arrayidx650, align 8, !tbaa !8
  store i64 %708, ptr %p_point, align 8, !tbaa !8
  %709 = load i64, ptr %p_point, align 8, !tbaa !8
  %cmp651 = icmp sgt i64 %709, -1
  br i1 %cmp651, label %if.then653, label %if.end663

if.then653:                                       ; preds = %for.body649
  %710 = load i64, ptr %p_point, align 8, !tbaa !8
  %711 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp654 = icmp eq i64 %710, %711
  br i1 %cmp654, label %if.then656, label %if.end662

if.then656:                                       ; preds = %if.then653
  %712 = load double, ptr %a_ij, align 8, !tbaa !22
  %713 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %714 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx657 = getelementptr inbounds double, ptr %713, i64 %714
  %715 = load double, ptr %arrayidx657, align 8, !tbaa !22
  %mul658 = fmul double %712, %715
  store double %mul658, ptr %aw, align 8, !tbaa !22
  %716 = load double, ptr %aw, align 8, !tbaa !22
  %717 = load double, ptr %sum, align 8, !tbaa !22
  %div659 = fdiv double %716, %717
  store double %div659, ptr %aw, align 8, !tbaa !22
  %718 = load double, ptr %aw, align 8, !tbaa !22
  %719 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %720 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx660 = getelementptr inbounds double, ptr %719, i64 %720
  %721 = load double, ptr %arrayidx660, align 8, !tbaa !22
  %add661 = fadd double %721, %718
  store double %add661, ptr %arrayidx660, align 8, !tbaa !22
  br label %for.end666

if.end662:                                        ; preds = %if.then653
  br label %if.end663

if.end663:                                        ; preds = %if.end662, %for.body649
  br label %for.inc664

for.inc664:                                       ; preds = %if.end663
  %722 = load i64, ptr %pp, align 8, !tbaa !8
  %inc665 = add nsw i64 %722, 1
  store i64 %inc665, ptr %pp, align 8, !tbaa !8
  br label %for.cond644, !llvm.loop !126

for.end666:                                       ; preds = %if.then656, %for.cond644
  br label %for.inc667

for.inc667:                                       ; preds = %for.end666
  %723 = load i64, ptr %k, align 8, !tbaa !8
  %inc668 = add nsw i64 %723, 1
  store i64 %inc668, ptr %k, align 8, !tbaa !8
  br label %for.cond636, !llvm.loop !127

for.end669:                                       ; preds = %for.cond636
  %724 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %725 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx670 = getelementptr inbounds i64, ptr %724, i64 %725
  %726 = load i64, ptr %arrayidx670, align 8, !tbaa !8
  store i64 %726, ptr %k, align 8, !tbaa !8
  br label %for.cond671

for.cond671:                                      ; preds = %for.inc704, %for.end669
  %727 = load i64, ptr %k, align 8, !tbaa !8
  %728 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %729 = load i64, ptr %i, align 8, !tbaa !8
  %add672 = add nsw i64 %729, 1
  %arrayidx673 = getelementptr inbounds i64, ptr %728, i64 %add672
  %730 = load i64, ptr %arrayidx673, align 8, !tbaa !8
  %cmp674 = icmp slt i64 %727, %730
  br i1 %cmp674, label %for.body676, label %for.end706

for.body676:                                      ; preds = %for.cond671
  %731 = load ptr, ptr %P_offd_j, align 8, !tbaa !4
  %732 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx677 = getelementptr inbounds i64, ptr %731, i64 %732
  %733 = load i64, ptr %arrayidx677, align 8, !tbaa !8
  store i64 %733, ptr %k_point, align 8, !tbaa !8
  %734 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %735 = load i64, ptr %j_ext_index, align 8, !tbaa !8
  %arrayidx678 = getelementptr inbounds i64, ptr %734, i64 %735
  %736 = load i64, ptr %arrayidx678, align 8, !tbaa !8
  store i64 %736, ptr %pp, align 8, !tbaa !8
  br label %for.cond679

for.cond679:                                      ; preds = %for.inc701, %for.body676
  %737 = load i64, ptr %pp, align 8, !tbaa !8
  %738 = load ptr, ptr %P_ext_i, align 8, !tbaa !4
  %739 = load i64, ptr %j_ext_index, align 8, !tbaa !8
  %add680 = add nsw i64 %739, 1
  %arrayidx681 = getelementptr inbounds i64, ptr %738, i64 %add680
  %740 = load i64, ptr %arrayidx681, align 8, !tbaa !8
  %cmp682 = icmp slt i64 %737, %740
  br i1 %cmp682, label %for.body684, label %for.end703

for.body684:                                      ; preds = %for.cond679
  %741 = load ptr, ptr %P_ext_j, align 8, !tbaa !4
  %742 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx685 = getelementptr inbounds i64, ptr %741, i64 %742
  %743 = load i64, ptr %arrayidx685, align 8, !tbaa !8
  store i64 %743, ptr %p_point, align 8, !tbaa !8
  %744 = load i64, ptr %p_point, align 8, !tbaa !8
  %cmp686 = icmp slt i64 %744, 0
  br i1 %cmp686, label %if.then688, label %if.end700

if.then688:                                       ; preds = %for.body684
  %745 = load i64, ptr %p_point, align 8, !tbaa !8
  %sub689 = sub nsw i64 0, %745
  %sub690 = sub nsw i64 %sub689, 1
  store i64 %sub690, ptr %p_point, align 8, !tbaa !8
  %746 = load i64, ptr %p_point, align 8, !tbaa !8
  %747 = load i64, ptr %k_point, align 8, !tbaa !8
  %cmp691 = icmp eq i64 %746, %747
  br i1 %cmp691, label %if.then693, label %if.end699

if.then693:                                       ; preds = %if.then688
  %748 = load double, ptr %a_ij, align 8, !tbaa !22
  %749 = load ptr, ptr %P_ext_data, align 8, !tbaa !4
  %750 = load i64, ptr %pp, align 8, !tbaa !8
  %arrayidx694 = getelementptr inbounds double, ptr %749, i64 %750
  %751 = load double, ptr %arrayidx694, align 8, !tbaa !22
  %mul695 = fmul double %748, %751
  store double %mul695, ptr %aw, align 8, !tbaa !22
  %752 = load double, ptr %aw, align 8, !tbaa !22
  %753 = load double, ptr %sum, align 8, !tbaa !22
  %div696 = fdiv double %752, %753
  store double %div696, ptr %aw, align 8, !tbaa !22
  %754 = load double, ptr %aw, align 8, !tbaa !22
  %755 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %756 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx697 = getelementptr inbounds double, ptr %755, i64 %756
  %757 = load double, ptr %arrayidx697, align 8, !tbaa !22
  %add698 = fadd double %757, %754
  store double %add698, ptr %arrayidx697, align 8, !tbaa !22
  br label %for.end703

if.end699:                                        ; preds = %if.then688
  br label %if.end700

if.end700:                                        ; preds = %if.end699, %for.body684
  br label %for.inc701

for.inc701:                                       ; preds = %if.end700
  %758 = load i64, ptr %pp, align 8, !tbaa !8
  %inc702 = add nsw i64 %758, 1
  store i64 %inc702, ptr %pp, align 8, !tbaa !8
  br label %for.cond679, !llvm.loop !128

for.end703:                                       ; preds = %if.then693, %for.cond679
  br label %for.inc704

for.inc704:                                       ; preds = %for.end703
  %759 = load i64, ptr %k, align 8, !tbaa !8
  %inc705 = add nsw i64 %759, 1
  store i64 %inc705, ptr %k, align 8, !tbaa !8
  br label %for.cond671, !llvm.loop !129

for.end706:                                       ; preds = %for.cond671
  br label %if.end707

if.end707:                                        ; preds = %for.end706, %if.end534
  %760 = load i64, ptr %dist_coarse, align 8, !tbaa !8
  %tobool708 = icmp ne i64 %760, 0
  br i1 %tobool708, label %if.then709, label %if.end743

if.then709:                                       ; preds = %if.end707
  %761 = load double, ptr %a_ij, align 8, !tbaa !22
  %762 = load i64, ptr %p_num_diag_elements, align 8, !tbaa !8
  %763 = load i64, ptr %p_num_offd_elements, align 8, !tbaa !8
  %add710 = add nsw i64 %762, %763
  %conv711 = sitofp i64 %add710 to double
  %div712 = fdiv double %761, %conv711
  store double %div712, ptr %aw, align 8, !tbaa !22
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %764 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %765 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx713 = getelementptr inbounds i64, ptr %764, i64 %765
  %766 = load i64, ptr %arrayidx713, align 8, !tbaa !8
  store i64 %766, ptr %kk, align 8, !tbaa !8
  br label %for.cond714

for.cond714:                                      ; preds = %for.inc725, %if.then709
  %767 = load i64, ptr %kk, align 8, !tbaa !8
  %768 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %769 = load i64, ptr %i, align 8, !tbaa !8
  %add715 = add nsw i64 %769, 1
  %arrayidx716 = getelementptr inbounds i64, ptr %768, i64 %add715
  %770 = load i64, ptr %arrayidx716, align 8, !tbaa !8
  %cmp717 = icmp slt i64 %767, %770
  br i1 %cmp717, label %for.body719, label %for.end727

for.body719:                                      ; preds = %for.cond714
  %771 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %772 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx720 = getelementptr inbounds i64, ptr %771, i64 %772
  %773 = load i64, ptr %arrayidx720, align 8, !tbaa !8
  %774 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add721 = add nsw i64 %773, %774
  store i64 %add721, ptr %cur_spot, align 8, !tbaa !8
  %775 = load double, ptr %aw, align 8, !tbaa !22
  %776 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %777 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx722 = getelementptr inbounds double, ptr %776, i64 %777
  %778 = load double, ptr %arrayidx722, align 8, !tbaa !22
  %add723 = fadd double %778, %775
  store double %add723, ptr %arrayidx722, align 8, !tbaa !22
  %779 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc724 = add nsw i64 %779, 1
  store i64 %inc724, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc725

for.inc725:                                       ; preds = %for.body719
  %780 = load i64, ptr %kk, align 8, !tbaa !8
  %inc726 = add nsw i64 %780, 1
  store i64 %inc726, ptr %kk, align 8, !tbaa !8
  br label %for.cond714, !llvm.loop !130

for.end727:                                       ; preds = %for.cond714
  store i64 0, ptr %kk_count, align 8, !tbaa !8
  %781 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %782 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx728 = getelementptr inbounds i64, ptr %781, i64 %782
  %783 = load i64, ptr %arrayidx728, align 8, !tbaa !8
  store i64 %783, ptr %kk, align 8, !tbaa !8
  br label %for.cond729

for.cond729:                                      ; preds = %for.inc740, %for.end727
  %784 = load i64, ptr %kk, align 8, !tbaa !8
  %785 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %786 = load i64, ptr %i, align 8, !tbaa !8
  %add730 = add nsw i64 %786, 1
  %arrayidx731 = getelementptr inbounds i64, ptr %785, i64 %add730
  %787 = load i64, ptr %arrayidx731, align 8, !tbaa !8
  %cmp732 = icmp slt i64 %784, %787
  br i1 %cmp732, label %for.body734, label %for.end742

for.body734:                                      ; preds = %for.cond729
  %788 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %789 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx735 = getelementptr inbounds i64, ptr %788, i64 %789
  %790 = load i64, ptr %arrayidx735, align 8, !tbaa !8
  %791 = load i64, ptr %kk_count, align 8, !tbaa !8
  %add736 = add nsw i64 %790, %791
  store i64 %add736, ptr %cur_spot, align 8, !tbaa !8
  %792 = load double, ptr %aw, align 8, !tbaa !22
  %793 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %794 = load i64, ptr %cur_spot, align 8, !tbaa !8
  %arrayidx737 = getelementptr inbounds double, ptr %793, i64 %794
  %795 = load double, ptr %arrayidx737, align 8, !tbaa !22
  %add738 = fadd double %795, %792
  store double %add738, ptr %arrayidx737, align 8, !tbaa !22
  %796 = load i64, ptr %kk_count, align 8, !tbaa !8
  %inc739 = add nsw i64 %796, 1
  store i64 %inc739, ptr %kk_count, align 8, !tbaa !8
  br label %for.inc740

for.inc740:                                       ; preds = %for.body734
  %797 = load i64, ptr %kk, align 8, !tbaa !8
  %inc741 = add nsw i64 %797, 1
  store i64 %inc741, ptr %kk, align 8, !tbaa !8
  br label %for.cond729, !llvm.loop !131

for.end742:                                       ; preds = %for.cond729
  br label %if.end743

if.end743:                                        ; preds = %for.end742, %if.end707
  br label %for.inc744

for.inc744:                                       ; preds = %if.end743, %for.end633, %if.then506
  %798 = load i64, ptr %j, align 8, !tbaa !8
  %inc745 = add nsw i64 %798, 1
  store i64 %inc745, ptr %j, align 8, !tbaa !8
  br label %for.cond496, !llvm.loop !132

for.end746:                                       ; preds = %for.cond496
  %799 = load double, ptr %diagonal, align 8, !tbaa !22
  %cmp747 = fcmp ogt double %799, 0.000000e+00
  br i1 %cmp747, label %cond.true749, label %cond.false750

cond.true749:                                     ; preds = %for.end746
  %800 = load double, ptr %diagonal, align 8, !tbaa !22
  br label %cond.end752

cond.false750:                                    ; preds = %for.end746
  %801 = load double, ptr %diagonal, align 8, !tbaa !22
  %fneg751 = fneg double %801
  br label %cond.end752

cond.end752:                                      ; preds = %cond.false750, %cond.true749
  %cond753 = phi double [ %800, %cond.true749 ], [ %fneg751, %cond.false750 ]
  %cmp754 = fcmp ogt double %cond753, 0.000000e+00
  br i1 %cmp754, label %if.then756, label %if.end816

if.then756:                                       ; preds = %cond.end752
  %802 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %803 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx757 = getelementptr inbounds i64, ptr %802, i64 %803
  %804 = load i64, ptr %arrayidx757, align 8, !tbaa !8
  store i64 %804, ptr %k, align 8, !tbaa !8
  br label %for.cond758

for.cond758:                                      ; preds = %for.inc769, %if.then756
  %805 = load i64, ptr %k, align 8, !tbaa !8
  %806 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %807 = load i64, ptr %i, align 8, !tbaa !8
  %add759 = add nsw i64 %807, 1
  %arrayidx760 = getelementptr inbounds i64, ptr %806, i64 %add759
  %808 = load i64, ptr %arrayidx760, align 8, !tbaa !8
  %cmp761 = icmp slt i64 %805, %808
  br i1 %cmp761, label %for.body763, label %for.end771

for.body763:                                      ; preds = %for.cond758
  %809 = load double, ptr %diagonal, align 8, !tbaa !22
  %fneg764 = fneg double %809
  %810 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %811 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx765 = getelementptr inbounds double, ptr %810, i64 %811
  %812 = load double, ptr %arrayidx765, align 8, !tbaa !22
  %div766 = fdiv double %812, %fneg764
  store double %div766, ptr %arrayidx765, align 8, !tbaa !22
  %813 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %814 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx767 = getelementptr inbounds double, ptr %813, i64 %814
  %815 = load double, ptr %arrayidx767, align 8, !tbaa !22
  %816 = load double, ptr %new_row_sum, align 8, !tbaa !22
  %add768 = fadd double %816, %815
  store double %add768, ptr %new_row_sum, align 8, !tbaa !22
  br label %for.inc769

for.inc769:                                       ; preds = %for.body763
  %817 = load i64, ptr %k, align 8, !tbaa !8
  %inc770 = add nsw i64 %817, 1
  store i64 %inc770, ptr %k, align 8, !tbaa !8
  br label %for.cond758, !llvm.loop !133

for.end771:                                       ; preds = %for.cond758
  %818 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %819 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx772 = getelementptr inbounds i64, ptr %818, i64 %819
  %820 = load i64, ptr %arrayidx772, align 8, !tbaa !8
  store i64 %820, ptr %k, align 8, !tbaa !8
  br label %for.cond773

for.cond773:                                      ; preds = %for.inc784, %for.end771
  %821 = load i64, ptr %k, align 8, !tbaa !8
  %822 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %823 = load i64, ptr %i, align 8, !tbaa !8
  %add774 = add nsw i64 %823, 1
  %arrayidx775 = getelementptr inbounds i64, ptr %822, i64 %add774
  %824 = load i64, ptr %arrayidx775, align 8, !tbaa !8
  %cmp776 = icmp slt i64 %821, %824
  br i1 %cmp776, label %for.body778, label %for.end786

for.body778:                                      ; preds = %for.cond773
  %825 = load double, ptr %diagonal, align 8, !tbaa !22
  %fneg779 = fneg double %825
  %826 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %827 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx780 = getelementptr inbounds double, ptr %826, i64 %827
  %828 = load double, ptr %arrayidx780, align 8, !tbaa !22
  %div781 = fdiv double %828, %fneg779
  store double %div781, ptr %arrayidx780, align 8, !tbaa !22
  %829 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %830 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx782 = getelementptr inbounds double, ptr %829, i64 %830
  %831 = load double, ptr %arrayidx782, align 8, !tbaa !22
  %832 = load double, ptr %new_row_sum, align 8, !tbaa !22
  %add783 = fadd double %832, %831
  store double %add783, ptr %new_row_sum, align 8, !tbaa !22
  br label %for.inc784

for.inc784:                                       ; preds = %for.body778
  %833 = load i64, ptr %k, align 8, !tbaa !8
  %inc785 = add nsw i64 %833, 1
  store i64 %inc785, ptr %k, align 8, !tbaa !8
  br label %for.cond773, !llvm.loop !134

for.end786:                                       ; preds = %for.cond773
  %834 = load i64, ptr %scale_row, align 8, !tbaa !8
  %tobool787 = icmp ne i64 %834, 0
  br i1 %tobool787, label %if.then788, label %if.end815

if.then788:                                       ; preds = %for.end786
  %835 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %836 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx789 = getelementptr inbounds i64, ptr %835, i64 %836
  %837 = load i64, ptr %arrayidx789, align 8, !tbaa !8
  store i64 %837, ptr %k, align 8, !tbaa !8
  br label %for.cond790

for.cond790:                                      ; preds = %for.inc799, %if.then788
  %838 = load i64, ptr %k, align 8, !tbaa !8
  %839 = load ptr, ptr %P_diag_i, align 8, !tbaa !4
  %840 = load i64, ptr %i, align 8, !tbaa !8
  %add791 = add nsw i64 %840, 1
  %arrayidx792 = getelementptr inbounds i64, ptr %839, i64 %add791
  %841 = load i64, ptr %arrayidx792, align 8, !tbaa !8
  %cmp793 = icmp slt i64 %838, %841
  br i1 %cmp793, label %for.body795, label %for.end801

for.body795:                                      ; preds = %for.cond790
  %842 = load double, ptr %orig_row_sum, align 8, !tbaa !22
  %843 = load double, ptr %new_row_sum, align 8, !tbaa !22
  %div796 = fdiv double %842, %843
  %844 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %845 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx797 = getelementptr inbounds double, ptr %844, i64 %845
  %846 = load double, ptr %arrayidx797, align 8, !tbaa !22
  %mul798 = fmul double %846, %div796
  store double %mul798, ptr %arrayidx797, align 8, !tbaa !22
  br label %for.inc799

for.inc799:                                       ; preds = %for.body795
  %847 = load i64, ptr %k, align 8, !tbaa !8
  %inc800 = add nsw i64 %847, 1
  store i64 %inc800, ptr %k, align 8, !tbaa !8
  br label %for.cond790, !llvm.loop !135

for.end801:                                       ; preds = %for.cond790
  %848 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %849 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx802 = getelementptr inbounds i64, ptr %848, i64 %849
  %850 = load i64, ptr %arrayidx802, align 8, !tbaa !8
  store i64 %850, ptr %k, align 8, !tbaa !8
  br label %for.cond803

for.cond803:                                      ; preds = %for.inc812, %for.end801
  %851 = load i64, ptr %k, align 8, !tbaa !8
  %852 = load ptr, ptr %P_offd_i, align 8, !tbaa !4
  %853 = load i64, ptr %i, align 8, !tbaa !8
  %add804 = add nsw i64 %853, 1
  %arrayidx805 = getelementptr inbounds i64, ptr %852, i64 %add804
  %854 = load i64, ptr %arrayidx805, align 8, !tbaa !8
  %cmp806 = icmp slt i64 %851, %854
  br i1 %cmp806, label %for.body808, label %for.end814

for.body808:                                      ; preds = %for.cond803
  %855 = load double, ptr %orig_row_sum, align 8, !tbaa !22
  %856 = load double, ptr %new_row_sum, align 8, !tbaa !22
  %div809 = fdiv double %855, %856
  %857 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %858 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx810 = getelementptr inbounds double, ptr %857, i64 %858
  %859 = load double, ptr %arrayidx810, align 8, !tbaa !22
  %mul811 = fmul double %859, %div809
  store double %mul811, ptr %arrayidx810, align 8, !tbaa !22
  br label %for.inc812

for.inc812:                                       ; preds = %for.body808
  %860 = load i64, ptr %k, align 8, !tbaa !8
  %inc813 = add nsw i64 %860, 1
  store i64 %inc813, ptr %k, align 8, !tbaa !8
  br label %for.cond803, !llvm.loop !136

for.end814:                                       ; preds = %for.cond803
  br label %if.end815

if.end815:                                        ; preds = %for.end814, %for.end786
  br label %if.end816

if.end816:                                        ; preds = %if.end815, %cond.end752
  br label %if.end817

if.end817:                                        ; preds = %if.end816, %for.end228
  br label %for.inc818

for.inc818:                                       ; preds = %if.end817
  %861 = load i64, ptr %i, align 8, !tbaa !8
  %inc819 = add nsw i64 %861, 1
  store i64 %inc819, ptr %i, align 8, !tbaa !8
  br label %for.cond184, !llvm.loop !137

for.end820:                                       ; preds = %for.cond184
  %862 = load ptr, ptr %P_diag_data, align 8, !tbaa !4
  %863 = load i32, ptr %memory_location, align 4, !tbaa !40
  call void @hypre_Free(ptr noundef %862, i32 noundef %863)
  store ptr null, ptr %P_diag_data, align 8, !tbaa !4
  %864 = load ptr, ptr %P_offd_data, align 8, !tbaa !4
  %865 = load i32, ptr %memory_location, align 4, !tbaa !40
  call void @hypre_Free(ptr noundef %864, i32 noundef %865)
  store ptr null, ptr %P_offd_data, align 8, !tbaa !4
  %866 = load ptr, ptr %P_diag_data_new, align 8, !tbaa !4
  %867 = load ptr, ptr %P_diag, align 8, !tbaa !4
  %data821 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %867, i32 0, i32 10
  store ptr %866, ptr %data821, align 8, !tbaa !29
  %868 = load ptr, ptr %P_offd_data_new, align 8, !tbaa !4
  %869 = load ptr, ptr %P_offd, align 8, !tbaa !4
  %data822 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %869, i32 0, i32 10
  store ptr %868, ptr %data822, align 8, !tbaa !29
  %870 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %870, i32 noundef 0)
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  %871 = load ptr, ptr %dof_func_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %871, i32 noundef 0)
  store ptr null, ptr %dof_func_offd, align 8, !tbaa !4
  %872 = load ptr, ptr %fine_to_coarse, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %872, i32 noundef 0)
  store ptr null, ptr %fine_to_coarse, align 8, !tbaa !4
  %873 = load ptr, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %873, i32 noundef 0)
  store ptr null, ptr %fine_to_coarse_offd, align 8, !tbaa !4
  %874 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %874, i32 noundef 0)
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  %875 = load ptr, ptr %big_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %875, i32 noundef 0)
  store ptr null, ptr %big_buf_data, align 8, !tbaa !4
  %876 = load i64, ptr %num_procs, align 8, !tbaa !8
  %cmp823 = icmp sgt i64 %876, 1
  br i1 %cmp823, label %if.then825, label %if.end827

if.then825:                                       ; preds = %for.end820
  %877 = load ptr, ptr %P_ext, align 8, !tbaa !4
  %call826 = call i64 @hypre_CSRMatrixDestroy(ptr noundef %877)
  br label %if.end827

if.end827:                                        ; preds = %if.then825, %for.end820
  %878 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_buf_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_buf_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_handle) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_procs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %myid) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_sends_A) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_ext) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist_coarse) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_spot) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk_count) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_alt_w) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_row_sum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_row_sum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %scale_row) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_ij) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %aw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %diagonal) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_j_point_c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_point) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_point_c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_point) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k_point) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fine_to_coarse) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_ext_index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %coarse_counter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg_A) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_functions) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fine_to_coarse_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dof_func_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %CF_marker_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_num_offd_elements) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_num_diag_elements) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcn_num) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_offd_pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j_diag_pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_offd_start) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_diag_start) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_location) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_cols_P_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_rows_P) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %P_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_cols_A_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  ret i64 %878
}

declare ptr @hypre_ParCSRMatrixExtractBExt(ptr noundef, ptr noundef, i64 noundef) #2

declare i64 @hypre_CSRMatrixDestroy(ptr noundef) #2

declare i64 @hypre_sprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!"long long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !9, i64 16}
!14 = !{!"hypre_ParCSRMatrix_struct", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !6, i64 112, !6, i64 128, !5, i64 144, !5, i64 152, !9, i64 160, !9, i64 168, !15, i64 176, !5, i64 184, !5, i64 192, !9, i64 200, !5, i64 208, !9, i64 216, !5, i64 224, !9, i64 232, !5, i64 240, !5, i64 248}
!15 = !{!"double", !6, i64 0}
!16 = !{!14, !5, i64 0}
!17 = !{!18, !5, i64 56}
!18 = !{!"hypre_ParVector_struct", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 48, !5, i64 56, !9, i64 64, !9, i64 72, !5, i64 80}
!19 = !{!20, !9, i64 8}
!20 = !{!"", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!21 = !{!20, !5, i64 0}
!22 = !{!15, !15, i64 0}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = !{!14, !5, i64 64}
!29 = !{!30, !5, i64 80}
!30 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !9, i64 72, !5, i64 80, !5, i64 88, !9, i64 96, !6, i64 104}
!31 = !{!30, !5, i64 0}
!32 = !{!30, !5, i64 8}
!33 = !{!30, !9, i64 24}
!34 = !{!30, !9, i64 32}
!35 = !{!14, !5, i64 72}
!36 = !{!14, !5, i64 96}
!37 = !{!14, !5, i64 144}
!38 = !{!39, !5, i64 0}
!39 = !{!"", !5, i64 0, !9, i64 8, !6, i64 16}
!40 = !{!6, !6, i64 0}
!41 = !{!42, !5, i64 0}
!42 = !{!"_hypre_ParCSRCommPkg", !5, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !9, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = !{!42, !9, i64 16}
!48 = !{!42, !5, i64 32}
!49 = !{!42, !5, i64 40}
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
!79 = !{!39, !9, i64 8}
!80 = !{!39, !6, i64 16}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = !{!14, !9, i64 8}
!84 = !{!30, !9, i64 40}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = !{!30, !6, i64 104}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = !{!14, !9, i64 40}
!98 = !{!30, !5, i64 16}
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
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}

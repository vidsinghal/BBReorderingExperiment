; ModuleID = 'samples/90.bc'
source_filename = "par_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_predefined_op_t = type opaque
%struct.hypre_ParVector_struct = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.hypre_Vector = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%struct.hypre_DataExchangeResponse = type { ptr, i32, i32, ptr, ptr }
%struct.hypre_ProcListElements = type { i32, i32, ptr, ptr, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"par_vector.c\00", align 1
@hypre__global_error = external global i32, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s.INFO.%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%b\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@ompi_mpi_op_sum = external global %struct.ompi_predefined_op_t, align 1
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s.%05d\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Error: can't open output file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%b \0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%b \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%b %.14e\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%b %le\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Vector does not own data! -- hypre_ParVectorGetValues.\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Index out of range! -- hypre_ParVectorGetValues.\00", align 1

; Function Attrs: nounwind uwtable
define ptr @hypre_ParVectorCreate(ptr noundef %comm, i32 noundef %global_size, ptr noundef %partitioning) #0 {
entry:
  %retval = alloca ptr, align 8
  %comm.addr = alloca ptr, align 8
  %global_size.addr = alloca i32, align 4
  %partitioning.addr = alloca ptr, align 8
  %vector = alloca ptr, align 8
  %num_procs = alloca i32, align 4
  %my_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store i32 %global_size, ptr %global_size.addr, align 4, !tbaa !8
  store ptr %partitioning, ptr %partitioning.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_id) #4
  %0 = load i32, ptr %global_size.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 39, i32 noundef 20, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 64, i32 noundef 0)
  store ptr %call, ptr %vector, align 8, !tbaa !4
  %1 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call1 = call i32 @hypre_MPI_Comm_rank(ptr noundef %1, ptr noundef %my_id)
  %2 = load ptr, ptr %partitioning.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call3 = call i32 @hypre_MPI_Comm_size(ptr noundef %3, ptr noundef %num_procs)
  %4 = load i32, ptr %global_size.addr, align 4, !tbaa !8
  %5 = load i32, ptr %num_procs, align 4, !tbaa !8
  %6 = load i32, ptr %my_id, align 4, !tbaa !8
  %call4 = call i32 @hypre_GenerateLocalPartitioning(i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %partitioning.addr)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %vector, align 8, !tbaa !4
  %assumed_partition = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %7, i32 0, i32 9
  store ptr null, ptr %assumed_partition, align 8, !tbaa !10
  %8 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %vector, align 8, !tbaa !4
  %comm6 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %9, i32 0, i32 0
  store ptr %8, ptr %comm6, align 8, !tbaa !12
  %10 = load i32, ptr %global_size.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %vector, align 8, !tbaa !4
  %global_size7 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %11, i32 0, i32 1
  store i32 %10, ptr %global_size7, align 8, !tbaa !13
  %12 = load ptr, ptr %partitioning.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 0
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %14 = load ptr, ptr %vector, align 8, !tbaa !4
  %first_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %14, i32 0, i32 2
  store i32 %13, ptr %first_index, align 4, !tbaa !14
  %15 = load ptr, ptr %partitioning.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 1
  %16 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  %sub = sub nsw i32 %16, 1
  %17 = load ptr, ptr %vector, align 8, !tbaa !4
  %last_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %17, i32 0, i32 3
  store i32 %sub, ptr %last_index, align 8, !tbaa !15
  %18 = load ptr, ptr %partitioning.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %vector, align 8, !tbaa !4
  %partitioning9 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %19, i32 0, i32 4
  store ptr %18, ptr %partitioning9, align 8, !tbaa !16
  %20 = load ptr, ptr %partitioning.addr, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i32, ptr %20, i64 1
  %21 = load i32, ptr %arrayidx10, align 4, !tbaa !8
  %22 = load ptr, ptr %partitioning.addr, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i32, ptr %22, i64 0
  %23 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %sub12 = sub nsw i32 %21, %23
  %call13 = call ptr @hypre_SeqVectorCreate(i32 noundef %sub12)
  %24 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %24, i32 0, i32 6
  store ptr %call13, ptr %local_vector, align 8, !tbaa !17
  %25 = load ptr, ptr %vector, align 8, !tbaa !4
  %owns_data = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %25, i32 0, i32 7
  store i32 1, ptr %owns_data, align 8, !tbaa !18
  %26 = load ptr, ptr %vector, align 8, !tbaa !4
  %owns_partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %26, i32 0, i32 8
  store i32 1, ptr %owns_partitioning, align 4, !tbaa !19
  %27 = load ptr, ptr %vector, align 8, !tbaa !4
  %actual_local_size = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %27, i32 0, i32 5
  store i32 0, ptr %actual_local_size, align 8, !tbaa !20
  %28 = load ptr, ptr %vector, align 8, !tbaa !4
  store ptr %28, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector) #4
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @hypre_MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Comm_size(ptr noundef, ptr noundef) #2

declare i32 @hypre_GenerateLocalPartitioning(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @hypre_SeqVectorCreate(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @hypre_ParMultiVectorCreate(ptr noundef %comm, i32 noundef %global_size, ptr noundef %partitioning, i32 noundef %num_vectors) #0 {
entry:
  %comm.addr = alloca ptr, align 8
  %global_size.addr = alloca i32, align 4
  %partitioning.addr = alloca ptr, align 8
  %num_vectors.addr = alloca i32, align 4
  %vector = alloca ptr, align 8
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store i32 %global_size, ptr %global_size.addr, align 4, !tbaa !8
  store ptr %partitioning, ptr %partitioning.addr, align 8, !tbaa !4
  store i32 %num_vectors, ptr %num_vectors.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector) #4
  %0 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %1 = load i32, ptr %global_size.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %partitioning.addr, align 8, !tbaa !4
  %call = call ptr @hypre_ParVectorCreate(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  store ptr %call, ptr %vector, align 8, !tbaa !4
  %3 = load i32, ptr %num_vectors.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %num_vectors1 = getelementptr inbounds %struct.hypre_Vector, ptr %5, i32 0, i32 4
  store i32 %3, ptr %num_vectors1, align 4, !tbaa !21
  %6 = load ptr, ptr %vector, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector) #4
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorDestroy(ptr noundef %vector) #0 {
entry:
  %vector.addr = alloca ptr, align 8
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %owns_data = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %owns_data, align 8, !tbaa !18
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %call = call i32 @hypre_SeqVectorDestroy(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %owns_partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %owns_partitioning, align 4, !tbaa !19
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %partitioning, align 8, !tbaa !16
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %partitioning5 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %9, i32 0, i32 4
  store ptr null, ptr %partitioning5, align 8, !tbaa !16
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %assumed_partition = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %assumed_partition, align 8, !tbaa !10
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %12 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %assumed_partition9 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %assumed_partition9, align 8, !tbaa !10
  %call10 = call i32 @hypre_AssumedPartitionDestroy(ptr noundef %13)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6
  %14 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %14, i32 noundef 0)
  store ptr null, ptr %vector.addr, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %15 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  ret i32 %15
}

declare i32 @hypre_SeqVectorDestroy(ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

declare i32 @hypre_AssumedPartitionDestroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorInitialize_v2(ptr noundef %vector, i32 noundef %memory_location) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca ptr, align 8
  %memory_location.addr = alloca i32, align 4
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  store i32 %memory_location, ptr %memory_location.addr, align 4, !tbaa !23
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 133, i32 noundef 12, ptr noundef null)
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %4 = load i32, ptr %memory_location.addr, align 4, !tbaa !23
  %call = call i32 @hypre_SeqVectorInitialize_v2(ptr noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %local_vector1, align 8, !tbaa !17
  %size = getelementptr inbounds %struct.hypre_Vector, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %size, align 8, !tbaa !24
  %8 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %actual_local_size = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %8, i32 0, i32 5
  store i32 %7, ptr %actual_local_size, align 8, !tbaa !20
  %9 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @hypre_SeqVectorInitialize_v2(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorInitialize(ptr noundef %vector) #0 {
entry:
  %vector.addr = alloca ptr, align 8
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParVectorMemoryLocation(ptr noundef %1)
  %call1 = call i32 @hypre_ParVectorInitialize_v2(ptr noundef %0, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hypre_ParVectorMemoryLocation(ptr noundef %vector) #3 {
entry:
  %vector.addr = alloca ptr, align 8
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %memory_location = getelementptr inbounds %struct.hypre_Vector, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %memory_location, align 8, !tbaa !25
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorSetDataOwner(ptr noundef %vector, i32 noundef %owns_data) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca ptr, align 8
  %owns_data.addr = alloca i32, align 4
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  store i32 %owns_data, ptr %owns_data.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 159, i32 noundef 12, ptr noundef null)
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %owns_data.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %owns_data1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %3, i32 0, i32 7
  store i32 %2, ptr %owns_data1, align 8, !tbaa !18
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorSetPartitioningOwner(ptr noundef %vector, i32 noundef %owns_partitioning) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca ptr, align 8
  %owns_partitioning.addr = alloca i32, align 4
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  store i32 %owns_partitioning, ptr %owns_partitioning.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 177, i32 noundef 12, ptr noundef null)
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %owns_partitioning.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %owns_partitioning1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %3, i32 0, i32 8
  store i32 %2, ptr %owns_partitioning1, align 4, !tbaa !19
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define ptr @hypre_ParVectorRead(ptr noundef %comm, ptr noundef %file_name) #0 {
entry:
  %comm.addr = alloca ptr, align 8
  %file_name.addr = alloca ptr, align 8
  %new_file_name = alloca [80 x i8], align 16
  %par_vector = alloca ptr, align 8
  %my_id = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %partitioning = alloca ptr, align 8
  %global_size = alloca i32, align 4
  %i = alloca i32, align 4
  %fp = alloca ptr, align 8
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store ptr %file_name, ptr %file_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 80, ptr %new_file_name) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %par_vector) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #4
  %0 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_rank(ptr noundef %0, ptr noundef %my_id)
  %1 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call1 = call i32 @hypre_MPI_Comm_size(ptr noundef %1, ptr noundef %num_procs)
  %2 = load i32, ptr %num_procs, align 4, !tbaa !8
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %call2 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call2, ptr %partitioning, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %3 = load ptr, ptr %file_name.addr, align 8, !tbaa !4
  %4 = load i32, ptr %my_id, align 4, !tbaa !8
  %call3 = call i32 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, ptr noundef %3, i32 noundef %4)
  %arraydecay4 = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %call5 = call noalias ptr @fopen(ptr noundef %arraydecay4, ptr noundef @.str.2)
  store ptr %call5, ptr %fp, align 8, !tbaa !4
  %5 = load ptr, ptr %fp, align 8, !tbaa !4
  %call6 = call i32 (ptr, ptr, ...) @hypre_fscanf(ptr noundef %5, ptr noundef @.str.3, ptr noundef %global_size)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %fp, align 8, !tbaa !4
  %8 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %call8 = call i32 (ptr, ptr, ...) @hypre_fscanf(ptr noundef %7, ptr noundef @.str.3, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %fp, align 8, !tbaa !4
  %call9 = call i32 @fclose(ptr noundef %11)
  %call10 = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 64, i32 noundef 0)
  store ptr %call10, ptr %par_vector, align 8, !tbaa !4
  %12 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %comm11 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %13, i32 0, i32 0
  store ptr %12, ptr %comm11, align 8, !tbaa !12
  %14 = load i32, ptr %global_size, align 4, !tbaa !8
  %15 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %global_size12 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %15, i32 0, i32 1
  store i32 %14, ptr %global_size12, align 8, !tbaa !13
  %16 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i32, ptr %16, i64 0
  %17 = load i32, ptr %arrayidx13, align 4, !tbaa !8
  %18 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %first_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %18, i32 0, i32 2
  store i32 %17, ptr %first_index, align 4, !tbaa !14
  %19 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i32, ptr %19, i64 1
  %20 = load i32, ptr %arrayidx14, align 4, !tbaa !8
  %sub = sub nsw i32 %20, 1
  %21 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %last_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %21, i32 0, i32 3
  store i32 %sub, ptr %last_index, align 8, !tbaa !15
  %22 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %23 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %partitioning15 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %23, i32 0, i32 4
  store ptr %22, ptr %partitioning15, align 8, !tbaa !16
  %24 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %owns_data = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %24, i32 0, i32 7
  store i32 1, ptr %owns_data, align 8, !tbaa !18
  %25 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %owns_partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %25, i32 0, i32 8
  store i32 1, ptr %owns_partitioning, align 4, !tbaa !19
  %arraydecay16 = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %26 = load ptr, ptr %file_name.addr, align 8, !tbaa !4
  %27 = load i32, ptr %my_id, align 4, !tbaa !8
  %call17 = call i32 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay16, ptr noundef @.str.4, ptr noundef %26, i32 noundef %27)
  %arraydecay18 = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %call19 = call ptr @hypre_SeqVectorRead(ptr noundef %arraydecay18)
  %28 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %28, i32 0, i32 6
  store ptr %call19, ptr %local_vector, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.end
  %29 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %local_vector20 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %local_vector20, align 8, !tbaa !17
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %num_vectors, align 4, !tbaa !21
  %cmp21 = icmp eq i32 %31, 1
  %conv22 = zext i1 %cmp21 to i32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load ptr, ptr %par_vector, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %par_vector) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr %new_file_name) #4
  ret ptr %32
}

declare i32 @hypre_sprintf(ptr noundef, ptr noundef, ...) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @hypre_fscanf(ptr noundef, ptr noundef, ...) #2

declare i32 @fclose(ptr noundef) #2

declare ptr @hypre_SeqVectorRead(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorPrint(ptr noundef %vector, ptr noundef %file_name) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca ptr, align 8
  %file_name.addr = alloca ptr, align 8
  %new_file_name = alloca [80 x i8], align 16
  %local_vector = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %my_id = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %i = alloca i32, align 4
  %partitioning = alloca ptr, align 8
  %global_size = alloca i32, align 4
  %fp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  store ptr %file_name, ptr %file_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 80, ptr %new_file_name) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #4
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 283, i32 noundef 12, ptr noundef null)
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %local_vector1, align 8, !tbaa !17
  store ptr %3, ptr %local_vector, align 8, !tbaa !4
  %4 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %comm2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %comm2, align 8, !tbaa !12
  store ptr %5, ptr %comm, align 8, !tbaa !4
  %6 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %partitioning3 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %partitioning3, align 8, !tbaa !16
  store ptr %7, ptr %partitioning, align 8, !tbaa !4
  %8 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %global_size4 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %global_size4, align 8, !tbaa !13
  store i32 %9, ptr %global_size, align 4, !tbaa !8
  %10 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_rank(ptr noundef %10, ptr noundef %my_id)
  %11 = load ptr, ptr %comm, align 8, !tbaa !4
  %call5 = call i32 @hypre_MPI_Comm_size(ptr noundef %11, ptr noundef %num_procs)
  %arraydecay = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %12 = load ptr, ptr %file_name.addr, align 8, !tbaa !4
  %13 = load i32, ptr %my_id, align 4, !tbaa !8
  %call6 = call i32 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay, ptr noundef @.str.4, ptr noundef %12, i32 noundef %13)
  %14 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %arraydecay7 = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %call8 = call i32 @hypre_SeqVectorPrint(ptr noundef %14, ptr noundef %arraydecay7)
  %arraydecay9 = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %15 = load ptr, ptr %file_name.addr, align 8, !tbaa !4
  %16 = load i32, ptr %my_id, align 4, !tbaa !8
  %call10 = call i32 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay9, ptr noundef @.str.1, ptr noundef %15, i32 noundef %16)
  %arraydecay11 = getelementptr inbounds [80 x i8], ptr %new_file_name, i64 0, i64 0
  %call12 = call noalias ptr @fopen(ptr noundef %arraydecay11, ptr noundef @.str.5)
  store ptr %call12, ptr %fp, align 8, !tbaa !4
  %17 = load ptr, ptr %fp, align 8, !tbaa !4
  %18 = load i32, ptr %global_size, align 4, !tbaa !8
  %call13 = call i32 (ptr, ptr, ...) @hypre_fprintf(ptr noundef %17, ptr noundef @.str.3, i32 noundef %18)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %19, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %fp, align 8, !tbaa !4
  %21 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds i32, ptr %21, i64 %idxprom
  %23 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %call14 = call i32 (ptr, ptr, ...) @hypre_fprintf(ptr noundef %20, ptr noundef @.str.3, i32 noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %fp, align 8, !tbaa !4
  %call15 = call i32 @fclose(ptr noundef %25)
  %26 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr %new_file_name) #4
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare i32 @hypre_SeqVectorPrint(ptr noundef, ptr noundef) #2

declare i32 @hypre_fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorSetConstantValues(ptr noundef %v, double noundef %value) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %value.addr = alloca double, align 8
  %v_local = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store double %value, ptr %value.addr, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_local) #4
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %1, ptr %v_local, align 8, !tbaa !4
  %2 = load ptr, ptr %v_local, align 8, !tbaa !4
  %3 = load double, ptr %value.addr, align 8, !tbaa !29
  %call = call i32 @hypre_SeqVectorSetConstantValues(ptr noundef %2, double noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_local) #4
  ret i32 %call
}

declare i32 @hypre_SeqVectorSetConstantValues(ptr noundef, double noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorSetRandomValues(ptr noundef %v, i32 noundef %seed) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %seed.addr = alloca i32, align 4
  %my_id = alloca i32, align 4
  %v_local = alloca ptr, align 8
  %comm = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store i32 %seed, ptr %seed.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_local) #4
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %1, ptr %v_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %comm1, align 8, !tbaa !12
  store ptr %3, ptr %comm, align 8, !tbaa !4
  %4 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_rank(ptr noundef %4, ptr noundef %my_id)
  %5 = load i32, ptr %my_id, align 4, !tbaa !8
  %add = add nsw i32 %5, 1
  %6 = load i32, ptr %seed.addr, align 4, !tbaa !8
  %mul = mul nsw i32 %6, %add
  store i32 %mul, ptr %seed.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %v_local, align 8, !tbaa !4
  %8 = load i32, ptr %seed.addr, align 4, !tbaa !8
  %call2 = call i32 @hypre_SeqVectorSetRandomValues(ptr noundef %7, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_local) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_id) #4
  ret i32 %call2
}

declare i32 @hypre_SeqVectorSetRandomValues(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorCopy(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %x_local = alloca ptr, align 8
  %y_local = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_local) #4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %1, ptr %x_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_local) #4
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %local_vector1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %local_vector1, align 8, !tbaa !17
  store ptr %3, ptr %y_local, align 8, !tbaa !4
  %4 = load ptr, ptr %x_local, align 8, !tbaa !4
  %5 = load ptr, ptr %y_local, align 8, !tbaa !4
  %call = call i32 @hypre_SeqVectorCopy(ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_local) #4
  ret i32 %call
}

declare i32 @hypre_SeqVectorCopy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @hypre_ParVectorCloneShallow(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %comm = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm, align 8, !tbaa !12
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %global_size = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %global_size, align 8, !tbaa !13
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %partitioning, align 8, !tbaa !16
  %call = call ptr @hypre_ParVectorCreate(ptr noundef %1, i32 noundef %3, ptr noundef %5)
  store ptr %call, ptr %y, align 8, !tbaa !4
  %6 = load ptr, ptr %y, align 8, !tbaa !4
  %owns_data = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %6, i32 0, i32 7
  store i32 1, ptr %owns_data, align 8, !tbaa !18
  %7 = load ptr, ptr %y, align 8, !tbaa !4
  %owns_partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %7, i32 0, i32 8
  store i32 0, ptr %owns_partitioning, align 4, !tbaa !19
  %8 = load ptr, ptr %y, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %call1 = call i32 @hypre_SeqVectorDestroy(ptr noundef %9)
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %local_vector2, align 8, !tbaa !17
  %call3 = call ptr @hypre_SeqVectorCloneShallow(ptr noundef %11)
  %12 = load ptr, ptr %y, align 8, !tbaa !4
  %local_vector4 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %12, i32 0, i32 6
  store ptr %call3, ptr %local_vector4, align 8, !tbaa !17
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %first_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %first_index, align 4, !tbaa !14
  %15 = load ptr, ptr %y, align 8, !tbaa !4
  %first_index5 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %15, i32 0, i32 2
  store i32 %14, ptr %first_index5, align 4, !tbaa !14
  %16 = load ptr, ptr %y, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  ret ptr %16
}

declare ptr @hypre_SeqVectorCloneShallow(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @hypre_ParVectorCloneDeep_v2(ptr noundef %x, i32 noundef %memory_location) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %memory_location.addr = alloca i32, align 4
  %y = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i32 %memory_location, ptr %memory_location.addr, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %comm = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm, align 8, !tbaa !12
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %global_size = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %global_size, align 8, !tbaa !13
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %partitioning, align 8, !tbaa !16
  %call = call ptr @hypre_ParVectorCreate(ptr noundef %1, i32 noundef %3, ptr noundef %5)
  store ptr %call, ptr %y, align 8, !tbaa !4
  %6 = load ptr, ptr %y, align 8, !tbaa !4
  %owns_data = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %6, i32 0, i32 7
  store i32 1, ptr %owns_data, align 8, !tbaa !18
  %7 = load ptr, ptr %y, align 8, !tbaa !4
  %owns_partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %7, i32 0, i32 8
  store i32 0, ptr %owns_partitioning, align 4, !tbaa !19
  %8 = load ptr, ptr %y, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %call1 = call i32 @hypre_SeqVectorDestroy(ptr noundef %9)
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %local_vector2, align 8, !tbaa !17
  %12 = load i32, ptr %memory_location.addr, align 4, !tbaa !23
  %call3 = call ptr @hypre_SeqVectorCloneDeep_v2(ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %y, align 8, !tbaa !4
  %local_vector4 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %13, i32 0, i32 6
  store ptr %call3, ptr %local_vector4, align 8, !tbaa !17
  %14 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %first_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %first_index, align 4, !tbaa !14
  %16 = load ptr, ptr %y, align 8, !tbaa !4
  %first_index5 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %16, i32 0, i32 2
  store i32 %15, ptr %first_index5, align 4, !tbaa !14
  %17 = load ptr, ptr %y, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  ret ptr %17
}

declare ptr @hypre_SeqVectorCloneDeep_v2(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorMigrate(ptr noundef %x, i32 noundef %memory_location) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %memory_location.addr = alloca i32, align 4
  %x_local = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i32 %memory_location, ptr %memory_location.addr, align 4, !tbaa !23
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %memory_location.addr, align 4, !tbaa !23
  %call = call i32 @hypre_GetActualMemLocation(i32 noundef %2)
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call1 = call i32 @hypre_ParVectorMemoryLocation(ptr noundef %3)
  %call2 = call i32 @hypre_GetActualMemLocation(i32 noundef %call1)
  %cmp = icmp ne i32 %call, %call2
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_local) #4
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %6 = load i32, ptr %memory_location.addr, align 4, !tbaa !23
  %call4 = call ptr @hypre_SeqVectorCloneDeep_v2(ptr noundef %5, i32 noundef %6)
  store ptr %call4, ptr %x_local, align 8, !tbaa !4
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector5 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %local_vector5, align 8, !tbaa !17
  %call6 = call i32 @hypre_SeqVectorDestroy(ptr noundef %8)
  %9 = load ptr, ptr %x_local, align 8, !tbaa !4
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector7 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %10, i32 0, i32 6
  store ptr %9, ptr %local_vector7, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_local) #4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %11 = load i32, ptr %memory_location.addr, align 4, !tbaa !23
  %12 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector8 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %local_vector8, align 8, !tbaa !17
  %memory_location9 = getelementptr inbounds %struct.hypre_Vector, ptr %13, i32 0, i32 3
  store i32 %11, ptr %memory_location9, align 8, !tbaa !25
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %14 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hypre_GetActualMemLocation(i32 noundef %location) #3 {
entry:
  %retval = alloca i32, align 4
  %location.addr = alloca i32, align 4
  store i32 %location, ptr %location.addr, align 4, !tbaa !23
  %0 = load i32, ptr %location.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %location.addr, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorScale(double noundef %alpha, ptr noundef %y) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %y_local = alloca ptr, align 8
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !29
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_local) #4
  %0 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %1, ptr %y_local, align 8, !tbaa !4
  %2 = load double, ptr %alpha.addr, align 8, !tbaa !29
  %3 = load ptr, ptr %y_local, align 8, !tbaa !4
  %call = call i32 @hypre_SeqVectorScale(double noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_local) #4
  ret i32 %call
}

declare i32 @hypre_SeqVectorScale(double noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorAxpy(double noundef %alpha, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %x_local = alloca ptr, align 8
  %y_local = alloca ptr, align 8
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !29
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_local) #4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %1, ptr %x_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_local) #4
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %local_vector1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %local_vector1, align 8, !tbaa !17
  store ptr %3, ptr %y_local, align 8, !tbaa !4
  %4 = load double, ptr %alpha.addr, align 8, !tbaa !29
  %5 = load ptr, ptr %x_local, align 8, !tbaa !4
  %6 = load ptr, ptr %y_local, align 8, !tbaa !4
  %call = call i32 @hypre_SeqVectorAxpy(double noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_local) #4
  ret i32 %call
}

declare i32 @hypre_SeqVectorAxpy(double noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorMassAxpy(ptr noundef %alpha, ptr noundef %x, ptr noundef %y, i32 noundef %k, i32 noundef %unroll) #0 {
entry:
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %unroll.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x_local = alloca ptr, align 8
  %y_local = alloca ptr, align 8
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store i32 %k, ptr %k.addr, align 4, !tbaa !8
  store i32 %unroll, ptr %unroll.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_local) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_local) #4
  %0 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %1, ptr %y_local, align 8, !tbaa !4
  %2 = load i32, ptr %k.addr, align 4, !tbaa !8
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @hypre_MAlloc(i64 noundef %mul, i32 noundef 0)
  store ptr %call, ptr %x_local, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %4 = load i32, ptr %k.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %local_vector2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %local_vector2, align 8, !tbaa !17
  %9 = load ptr, ptr %x_local, align 8, !tbaa !4
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %idxprom3
  store ptr %8, ptr %arrayidx4, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %x_local, align 8, !tbaa !4
  %14 = load ptr, ptr %y_local, align 8, !tbaa !4
  %15 = load i32, ptr %k.addr, align 4, !tbaa !8
  %16 = load i32, ptr %unroll.addr, align 4, !tbaa !8
  %call5 = call i32 @hypre_SeqVectorMassAxpy(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %x_local, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %17, i32 noundef 0)
  store ptr null, ptr %x_local, align 8, !tbaa !4
  %18 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_local) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 %18
}

declare ptr @hypre_MAlloc(i64 noundef, i32 noundef) #2

declare i32 @hypre_SeqVectorMassAxpy(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define double @hypre_ParVectorInnerProd(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %x_local = alloca ptr, align 8
  %y_local = alloca ptr, align 8
  %result = alloca double, align 8
  %local_result = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !12
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_local) #4
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %3, ptr %x_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_local) #4
  %4 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %local_vector2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %local_vector2, align 8, !tbaa !17
  store ptr %5, ptr %y_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #4
  store double 0.000000e+00, ptr %result, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_result) #4
  %6 = load ptr, ptr %x_local, align 8, !tbaa !4
  %7 = load ptr, ptr %y_local, align 8, !tbaa !4
  %call = call double @hypre_SeqVectorInnerProd(ptr noundef %6, ptr noundef %7)
  store double %call, ptr %local_result, align 8, !tbaa !29
  %8 = load ptr, ptr %comm, align 8, !tbaa !4
  %call3 = call i32 @hypre_MPI_Allreduce(ptr noundef %local_result, ptr noundef %result, i32 noundef 1, ptr noundef @ompi_mpi_double, ptr noundef @ompi_mpi_op_sum, ptr noundef %8)
  %9 = load double, ptr %result, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_result) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  ret double %9
}

declare double @hypre_SeqVectorInnerProd(ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Allreduce(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorMassInnerProd(ptr noundef %x, ptr noundef %y, i32 noundef %k, i32 noundef %unroll, ptr noundef %result) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %unroll.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %x_local = alloca ptr, align 8
  %local_result = alloca ptr, align 8
  %i = alloca i32, align 4
  %y_local = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store i32 %k, ptr %k.addr, align 4, !tbaa !8
  store i32 %unroll, ptr %unroll.addr, align 4, !tbaa !8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !12
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_local) #4
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %3, ptr %x_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_result) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_local) #4
  %4 = load i32, ptr %k.addr, align 4, !tbaa !8
  %conv = sext i32 %4 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @hypre_MAlloc(i64 noundef %mul, i32 noundef 0)
  store ptr %call, ptr %y_local, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %6 = load i32, ptr %k.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %local_vector3 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %local_vector3, align 8, !tbaa !17
  %11 = load ptr, ptr %y_local, align 8, !tbaa !4
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  store ptr %10, ptr %arrayidx5, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %k.addr, align 4, !tbaa !8
  %conv6 = sext i32 %14 to i64
  %call7 = call ptr @hypre_CAlloc(i64 noundef %conv6, i64 noundef 8, i32 noundef 0)
  store ptr %call7, ptr %local_result, align 8, !tbaa !4
  %15 = load ptr, ptr %x_local, align 8, !tbaa !4
  %16 = load ptr, ptr %y_local, align 8, !tbaa !4
  %17 = load i32, ptr %k.addr, align 4, !tbaa !8
  %18 = load i32, ptr %unroll.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %local_result, align 8, !tbaa !4
  %call8 = call i32 @hypre_SeqVectorMassInnerProd(ptr noundef %15, ptr noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %local_result, align 8, !tbaa !4
  %21 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %22 = load i32, ptr %k.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %comm, align 8, !tbaa !4
  %call9 = call i32 @hypre_MPI_Allreduce(ptr noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef @ompi_mpi_double, ptr noundef @ompi_mpi_op_sum, ptr noundef %23)
  %24 = load ptr, ptr %y_local, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %24, i32 noundef 0)
  store ptr null, ptr %y_local, align 8, !tbaa !4
  %25 = load ptr, ptr %local_result, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %25, i32 noundef 0)
  store ptr null, ptr %local_result, align 8, !tbaa !4
  %26 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_local) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_result) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  ret i32 %26
}

declare i32 @hypre_SeqVectorMassInnerProd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorMassDotpTwo(ptr noundef %x, ptr noundef %y, ptr noundef %z, i32 noundef %k, i32 noundef %unroll, ptr noundef %result_x, ptr noundef %result_y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %unroll.addr = alloca i32, align 4
  %result_x.addr = alloca ptr, align 8
  %result_y.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %x_local = alloca ptr, align 8
  %y_local = alloca ptr, align 8
  %local_result = alloca ptr, align 8
  %result = alloca ptr, align 8
  %i = alloca i32, align 4
  %z_local = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  store i32 %k, ptr %k.addr, align 4, !tbaa !8
  store i32 %unroll, ptr %unroll.addr, align 4, !tbaa !8
  store ptr %result_x, ptr %result_x.addr, align 8, !tbaa !4
  store ptr %result_y, ptr %result_y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !12
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_local) #4
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %local_vector, align 8, !tbaa !17
  store ptr %3, ptr %x_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_local) #4
  %4 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %local_vector2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %local_vector2, align 8, !tbaa !17
  store ptr %5, ptr %y_local, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_result) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %z_local) #4
  %6 = load i32, ptr %k.addr, align 4, !tbaa !8
  %conv = sext i32 %6 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @hypre_MAlloc(i64 noundef %mul, i32 noundef 0)
  store ptr %call, ptr %z_local, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %8 = load i32, ptr %k.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %local_vector4 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %local_vector4, align 8, !tbaa !17
  %13 = load ptr, ptr %z_local, align 8, !tbaa !4
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %13, i64 %idxprom5
  store ptr %12, ptr %arrayidx6, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %k.addr, align 4, !tbaa !8
  %mul7 = mul nsw i32 2, %16
  %conv8 = sext i32 %mul7 to i64
  %call9 = call ptr @hypre_CAlloc(i64 noundef %conv8, i64 noundef 8, i32 noundef 0)
  store ptr %call9, ptr %local_result, align 8, !tbaa !4
  %17 = load i32, ptr %k.addr, align 4, !tbaa !8
  %mul10 = mul nsw i32 2, %17
  %conv11 = sext i32 %mul10 to i64
  %call12 = call ptr @hypre_CAlloc(i64 noundef %conv11, i64 noundef 8, i32 noundef 0)
  store ptr %call12, ptr %result, align 8, !tbaa !4
  %18 = load ptr, ptr %x_local, align 8, !tbaa !4
  %19 = load ptr, ptr %y_local, align 8, !tbaa !4
  %20 = load ptr, ptr %z_local, align 8, !tbaa !4
  %21 = load i32, ptr %k.addr, align 4, !tbaa !8
  %22 = load i32, ptr %unroll.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %local_result, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds double, ptr %23, i64 0
  %24 = load ptr, ptr %local_result, align 8, !tbaa !4
  %25 = load i32, ptr %k.addr, align 4, !tbaa !8
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds double, ptr %24, i64 %idxprom14
  %call16 = call i32 @hypre_SeqVectorMassDotpTwo(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %arrayidx13, ptr noundef %arrayidx15)
  %26 = load ptr, ptr %local_result, align 8, !tbaa !4
  %27 = load ptr, ptr %result, align 8, !tbaa !4
  %28 = load i32, ptr %k.addr, align 4, !tbaa !8
  %mul17 = mul nsw i32 2, %28
  %29 = load ptr, ptr %comm, align 8, !tbaa !4
  %call18 = call i32 @hypre_MPI_Allreduce(ptr noundef %26, ptr noundef %27, i32 noundef %mul17, ptr noundef @ompi_mpi_double, ptr noundef @ompi_mpi_op_sum, ptr noundef %29)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.end
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %31 = load i32, ptr %k.addr, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %for.body22, label %for.end33

for.body22:                                       ; preds = %for.cond19
  %32 = load ptr, ptr %result, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %32, i64 %idxprom23
  %34 = load double, ptr %arrayidx24, align 8, !tbaa !29
  %35 = load ptr, ptr %result_x.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %35, i64 %idxprom25
  store double %34, ptr %arrayidx26, align 8, !tbaa !29
  %37 = load ptr, ptr %result, align 8, !tbaa !4
  %38 = load i32, ptr %k.addr, align 4, !tbaa !8
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %38, %39
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds double, ptr %37, i64 %idxprom27
  %40 = load double, ptr %arrayidx28, align 8, !tbaa !29
  %41 = load ptr, ptr %result_y.addr, align 8, !tbaa !4
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %41, i64 %idxprom29
  store double %40, ptr %arrayidx30, align 8, !tbaa !29
  br label %for.inc31

for.inc31:                                        ; preds = %for.body22
  %43 = load i32, ptr %i, align 4, !tbaa !8
  %inc32 = add nsw i32 %43, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !8
  br label %for.cond19, !llvm.loop !34

for.end33:                                        ; preds = %for.cond19
  %44 = load ptr, ptr %z_local, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %44, i32 noundef 0)
  store ptr null, ptr %z_local, align 8, !tbaa !4
  %45 = load ptr, ptr %local_result, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %45, i32 noundef 0)
  store ptr null, ptr %local_result, align 8, !tbaa !4
  %46 = load ptr, ptr %result, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %46, i32 noundef 0)
  store ptr null, ptr %result, align 8, !tbaa !4
  %47 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %z_local) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_result) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_local) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  ret i32 %47
}

declare i32 @hypre_SeqVectorMassDotpTwo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @hypre_VectorToParVector(ptr noundef %comm, ptr noundef %v, ptr noundef %vec_starts) #0 {
entry:
  %comm.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %vec_starts.addr = alloca ptr, align 8
  %global_size = alloca i32, align 4
  %global_vec_starts = alloca ptr, align 8
  %first_index = alloca i32, align 4
  %last_index = alloca i32, align 4
  %local_size = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %my_id = alloca i32, align 4
  %global_vecstride = alloca i32, align 4
  %vecstride = alloca i32, align 4
  %idxstride = alloca i32, align 4
  %par_vector = alloca ptr, align 8
  %local_vector = alloca ptr, align 8
  %v_data = alloca ptr, align 8
  %local_data = alloca ptr, align 8
  %requests = alloca ptr, align 8
  %status = alloca ptr, align 8
  %status0 = alloca %struct.ompi_status_public_t, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %vec_starts, ptr %vec_starts.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %global_vec_starts) #4
  store ptr null, ptr %global_vec_starts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_size) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_vectors) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_vecstride) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vecstride) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %idxstride) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %par_vector) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %requests) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr %status0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  %0 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %0, ptr noundef %num_procs)
  %1 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call1 = call i32 @hypre_MPI_Comm_rank(ptr noundef %1, ptr noundef %my_id)
  %2 = load i32, ptr %my_id, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.hypre_Vector, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %size, align 8, !tbaa !24
  store i32 %4, ptr %global_size, align 4, !tbaa !8
  %5 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %data, align 8, !tbaa !35
  store ptr %6, ptr %v_data, align 8, !tbaa !4
  %7 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %num_vectors2 = getelementptr inbounds %struct.hypre_Vector, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %num_vectors2, align 4, !tbaa !21
  store i32 %8, ptr %num_vectors, align 4, !tbaa !8
  %9 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %vecstride3 = getelementptr inbounds %struct.hypre_Vector, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %vecstride3, align 4, !tbaa !36
  store i32 %10, ptr %global_vecstride, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call4 = call i32 @hypre_MPI_Bcast(ptr noundef %global_size, i32 noundef 1, ptr noundef @ompi_mpi_int, i32 noundef 0, ptr noundef %11)
  %12 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call5 = call i32 @hypre_MPI_Bcast(ptr noundef %num_vectors, i32 noundef 1, ptr noundef @ompi_mpi_int, i32 noundef 0, ptr noundef %12)
  %13 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call6 = call i32 @hypre_MPI_Bcast(ptr noundef %global_vecstride, i32 noundef 1, ptr noundef @ompi_mpi_int, i32 noundef 0, ptr noundef %13)
  %14 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %cmp7 = icmp eq i32 %14, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %16 = load i32, ptr %global_size, align 4, !tbaa !8
  %17 = load ptr, ptr %vec_starts.addr, align 8, !tbaa !4
  %call9 = call ptr @hypre_ParVectorCreate(ptr noundef %15, i32 noundef %16, ptr noundef %17)
  store ptr %call9, ptr %par_vector, align 8, !tbaa !4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %19 = load i32, ptr %global_size, align 4, !tbaa !8
  %20 = load ptr, ptr %vec_starts.addr, align 8, !tbaa !4
  %21 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %call10 = call ptr @hypre_ParMultiVectorCreate(ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21)
  store ptr %call10, ptr %par_vector, align 8, !tbaa !4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %22 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %partitioning = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %partitioning, align 8, !tbaa !16
  store ptr %23, ptr %vec_starts.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %first_index12 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %first_index12, align 4, !tbaa !14
  store i32 %25, ptr %first_index, align 4, !tbaa !8
  %26 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %last_index13 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %last_index13, align 8, !tbaa !15
  store i32 %27, ptr %last_index, align 4, !tbaa !8
  %28 = load i32, ptr %last_index, align 4, !tbaa !8
  %29 = load i32, ptr %first_index, align 4, !tbaa !8
  %sub = sub nsw i32 %28, %29
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %local_size, align 4, !tbaa !8
  %30 = load i32, ptr %my_id, align 4, !tbaa !8
  %cmp14 = icmp eq i32 %30, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  %31 = load i32, ptr %num_procs, align 4, !tbaa !8
  %add16 = add nsw i32 %31, 1
  %conv = sext i32 %add16 to i64
  %call17 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call17, ptr %global_vec_starts, align 8, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11
  %32 = load ptr, ptr %global_vec_starts, align 8, !tbaa !4
  %33 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call19 = call i32 @hypre_MPI_Gather(ptr noundef %first_index, i32 noundef 1, ptr noundef @ompi_mpi_int, ptr noundef %32, i32 noundef 1, ptr noundef @ompi_mpi_int, i32 noundef 0, ptr noundef %33)
  %34 = load i32, ptr %my_id, align 4, !tbaa !8
  %cmp20 = icmp eq i32 %34, 0
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  %35 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %global_size23 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %global_size23, align 8, !tbaa !13
  %37 = load ptr, ptr %global_vec_starts, align 8, !tbaa !4
  %38 = load i32, ptr %num_procs, align 4, !tbaa !8
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds i32, ptr %37, i64 %idxprom
  store i32 %36, ptr %arrayidx, align 4, !tbaa !8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18
  %39 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %call25 = call i32 @hypre_ParVectorInitialize(ptr noundef %39)
  %40 = load ptr, ptr %par_vector, align 8, !tbaa !4
  %local_vector26 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %40, i32 0, i32 6
  %41 = load ptr, ptr %local_vector26, align 8, !tbaa !17
  store ptr %41, ptr %local_vector, align 8, !tbaa !4
  %42 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %data27 = getelementptr inbounds %struct.hypre_Vector, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %data27, align 8, !tbaa !35
  store ptr %43, ptr %local_data, align 8, !tbaa !4
  %44 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %vecstride28 = getelementptr inbounds %struct.hypre_Vector, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %vecstride28, align 4, !tbaa !36
  store i32 %45, ptr %vecstride, align 4, !tbaa !8
  %46 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %idxstride29 = getelementptr inbounds %struct.hypre_Vector, ptr %46, i32 0, i32 7
  %47 = load i32, ptr %idxstride29, align 8, !tbaa !37
  store i32 %47, ptr %idxstride, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %if.end24
  %48 = load i32, ptr %idxstride, align 4, !tbaa !8
  %cmp30 = icmp eq i32 %48, 1
  %conv31 = zext i1 %cmp30 to i32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i32, ptr %my_id, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %49, 0
  br i1 %cmp32, label %if.then34, label %if.else106

if.then34:                                        ; preds = %do.end
  %50 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %51 = load i32, ptr %num_procs, align 4, !tbaa !8
  %sub35 = sub nsw i32 %51, 1
  %mul = mul nsw i32 %50, %sub35
  %conv36 = sext i32 %mul to i64
  %call37 = call ptr @hypre_CAlloc(i64 noundef %conv36, i64 noundef 8, i32 noundef 0)
  store ptr %call37, ptr %requests, align 8, !tbaa !4
  %52 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %53 = load i32, ptr %num_procs, align 4, !tbaa !8
  %sub38 = sub nsw i32 %53, 1
  %mul39 = mul nsw i32 %52, %sub38
  %conv40 = sext i32 %mul39 to i64
  %call41 = call ptr @hypre_CAlloc(i64 noundef %conv40, i64 noundef 24, i32 noundef 0)
  store ptr %call41, ptr %status, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !8
  store i32 1, ptr %p, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc63, %if.then34
  %54 = load i32, ptr %p, align 4, !tbaa !8
  %55 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %54, %55
  br i1 %cmp42, label %for.body, label %for.end65

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc, %for.body
  %56 = load i32, ptr %j, align 4, !tbaa !8
  %57 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %cmp45 = icmp slt i32 %56, %57
  br i1 %cmp45, label %for.body47, label %for.end

for.body47:                                       ; preds = %for.cond44
  %58 = load ptr, ptr %v_data, align 8, !tbaa !4
  %59 = load ptr, ptr %global_vec_starts, align 8, !tbaa !4
  %60 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom48 = sext i32 %60 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %59, i64 %idxprom48
  %61 = load i32, ptr %arrayidx49, align 4, !tbaa !8
  %idxprom50 = sext i32 %61 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %58, i64 %idxprom50
  %62 = load i32, ptr %j, align 4, !tbaa !8
  %63 = load i32, ptr %global_vecstride, align 4, !tbaa !8
  %mul52 = mul nsw i32 %62, %63
  %idx.ext = sext i32 %mul52 to i64
  %add.ptr = getelementptr inbounds double, ptr %arrayidx51, i64 %idx.ext
  %64 = load ptr, ptr %global_vec_starts, align 8, !tbaa !4
  %65 = load i32, ptr %p, align 4, !tbaa !8
  %add53 = add nsw i32 %65, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %64, i64 %idxprom54
  %66 = load i32, ptr %arrayidx55, align 4, !tbaa !8
  %67 = load ptr, ptr %global_vec_starts, align 8, !tbaa !4
  %68 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom56 = sext i32 %68 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %67, i64 %idxprom56
  %69 = load i32, ptr %arrayidx57, align 4, !tbaa !8
  %sub58 = sub nsw i32 %66, %69
  %70 = load i32, ptr %p, align 4, !tbaa !8
  %71 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %requests, align 8, !tbaa !4
  %73 = load i32, ptr %k, align 4, !tbaa !8
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %k, align 4, !tbaa !8
  %idxprom59 = sext i32 %73 to i64
  %arrayidx60 = getelementptr inbounds ptr, ptr %72, i64 %idxprom59
  %call61 = call i32 @hypre_MPI_Isend(ptr noundef %add.ptr, i32 noundef %sub58, ptr noundef @ompi_mpi_double, i32 noundef %70, i32 noundef 0, ptr noundef %71, ptr noundef %arrayidx60)
  br label %for.inc

for.inc:                                          ; preds = %for.body47
  %74 = load i32, ptr %j, align 4, !tbaa !8
  %inc62 = add nsw i32 %74, 1
  store i32 %inc62, ptr %j, align 4, !tbaa !8
  br label %for.cond44, !llvm.loop !38

for.end:                                          ; preds = %for.cond44
  br label %for.inc63

for.inc63:                                        ; preds = %for.end
  %75 = load i32, ptr %p, align 4, !tbaa !8
  %inc64 = add nsw i32 %75, 1
  store i32 %inc64, ptr %p, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !39

for.end65:                                        ; preds = %for.cond
  %76 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %cmp66 = icmp eq i32 %76, 1
  br i1 %cmp66, label %if.then68, label %if.else80

if.then68:                                        ; preds = %for.end65
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %if.then68
  %77 = load i32, ptr %i, align 4, !tbaa !8
  %78 = load i32, ptr %local_size, align 4, !tbaa !8
  %cmp70 = icmp slt i32 %77, %78
  br i1 %cmp70, label %for.body72, label %for.end79

for.body72:                                       ; preds = %for.cond69
  %79 = load ptr, ptr %v_data, align 8, !tbaa !4
  %80 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom73 = sext i32 %80 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %79, i64 %idxprom73
  %81 = load double, ptr %arrayidx74, align 8, !tbaa !29
  %82 = load ptr, ptr %local_data, align 8, !tbaa !4
  %83 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom75 = sext i32 %83 to i64
  %arrayidx76 = getelementptr inbounds double, ptr %82, i64 %idxprom75
  store double %81, ptr %arrayidx76, align 8, !tbaa !29
  br label %for.inc77

for.inc77:                                        ; preds = %for.body72
  %84 = load i32, ptr %i, align 4, !tbaa !8
  %inc78 = add nsw i32 %84, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !8
  br label %for.cond69, !llvm.loop !40

for.end79:                                        ; preds = %for.cond69
  br label %if.end103

if.else80:                                        ; preds = %for.end65
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc100, %if.else80
  %85 = load i32, ptr %j, align 4, !tbaa !8
  %86 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %cmp82 = icmp slt i32 %85, %86
  br i1 %cmp82, label %for.body84, label %for.end102

for.body84:                                       ; preds = %for.cond81
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc97, %for.body84
  %87 = load i32, ptr %i, align 4, !tbaa !8
  %88 = load i32, ptr %local_size, align 4, !tbaa !8
  %cmp86 = icmp slt i32 %87, %88
  br i1 %cmp86, label %for.body88, label %for.end99

for.body88:                                       ; preds = %for.cond85
  %89 = load ptr, ptr %v_data, align 8, !tbaa !4
  %90 = load i32, ptr %i, align 4, !tbaa !8
  %91 = load i32, ptr %j, align 4, !tbaa !8
  %92 = load i32, ptr %global_vecstride, align 4, !tbaa !8
  %mul89 = mul nsw i32 %91, %92
  %add90 = add nsw i32 %90, %mul89
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds double, ptr %89, i64 %idxprom91
  %93 = load double, ptr %arrayidx92, align 8, !tbaa !29
  %94 = load ptr, ptr %local_data, align 8, !tbaa !4
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %96 = load i32, ptr %j, align 4, !tbaa !8
  %97 = load i32, ptr %vecstride, align 4, !tbaa !8
  %mul93 = mul nsw i32 %96, %97
  %add94 = add nsw i32 %95, %mul93
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %94, i64 %idxprom95
  store double %93, ptr %arrayidx96, align 8, !tbaa !29
  br label %for.inc97

for.inc97:                                        ; preds = %for.body88
  %98 = load i32, ptr %i, align 4, !tbaa !8
  %inc98 = add nsw i32 %98, 1
  store i32 %inc98, ptr %i, align 4, !tbaa !8
  br label %for.cond85, !llvm.loop !41

for.end99:                                        ; preds = %for.cond85
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %99 = load i32, ptr %j, align 4, !tbaa !8
  %inc101 = add nsw i32 %99, 1
  store i32 %inc101, ptr %j, align 4, !tbaa !8
  br label %for.cond81, !llvm.loop !42

for.end102:                                       ; preds = %for.cond81
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %for.end79
  %100 = load i32, ptr %num_procs, align 4, !tbaa !8
  %sub104 = sub nsw i32 %100, 1
  %101 = load ptr, ptr %requests, align 8, !tbaa !4
  %102 = load ptr, ptr %status, align 8, !tbaa !4
  %call105 = call i32 @hypre_MPI_Waitall(i32 noundef %sub104, ptr noundef %101, ptr noundef %102)
  %103 = load ptr, ptr %requests, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %103, i32 noundef 0)
  store ptr null, ptr %requests, align 8, !tbaa !4
  %104 = load ptr, ptr %status, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %104, i32 noundef 0)
  store ptr null, ptr %status, align 8, !tbaa !4
  br label %if.end118

if.else106:                                       ; preds = %do.end
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc115, %if.else106
  %105 = load i32, ptr %j, align 4, !tbaa !8
  %106 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %cmp108 = icmp slt i32 %105, %106
  br i1 %cmp108, label %for.body110, label %for.end117

for.body110:                                      ; preds = %for.cond107
  %107 = load ptr, ptr %local_data, align 8, !tbaa !4
  %108 = load i32, ptr %j, align 4, !tbaa !8
  %109 = load i32, ptr %vecstride, align 4, !tbaa !8
  %mul111 = mul nsw i32 %108, %109
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds double, ptr %107, i64 %idx.ext112
  %110 = load i32, ptr %local_size, align 4, !tbaa !8
  %111 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call114 = call i32 @hypre_MPI_Recv(ptr noundef %add.ptr113, i32 noundef %110, ptr noundef @ompi_mpi_double, i32 noundef 0, i32 noundef 0, ptr noundef %111, ptr noundef %status0)
  br label %for.inc115

for.inc115:                                       ; preds = %for.body110
  %112 = load i32, ptr %j, align 4, !tbaa !8
  %inc116 = add nsw i32 %112, 1
  store i32 %inc116, ptr %j, align 4, !tbaa !8
  br label %for.cond107, !llvm.loop !43

for.end117:                                       ; preds = %for.cond107
  br label %if.end118

if.end118:                                        ; preds = %for.end117, %if.end103
  %113 = load ptr, ptr %global_vec_starts, align 8, !tbaa !4
  %tobool = icmp ne ptr %113, null
  br i1 %tobool, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end118
  %114 = load ptr, ptr %global_vec_starts, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %114, i32 noundef 0)
  store ptr null, ptr %global_vec_starts, align 8, !tbaa !4
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end118
  %115 = load ptr, ptr %par_vector, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %status0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %requests) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %par_vector) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %idxstride) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vecstride) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_vecstride) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_vectors) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_size) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %global_vec_starts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_size) #4
  ret ptr %115
}

declare i32 @hypre_MPI_Bcast(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_MPI_Gather(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_MPI_Isend(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Waitall(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Recv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @hypre_ParVectorToVectorAll(ptr noundef %par_v) #0 {
entry:
  %retval = alloca ptr, align 8
  %par_v.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %global_size = alloca i32, align 4
  %local_vector = alloca ptr, align 8
  %num_procs = alloca i32, align 4
  %my_id = alloca i32, align 4
  %num_vectors = alloca i32, align 4
  %vector = alloca ptr, align 8
  %vector_data = alloca ptr, align 8
  %local_data = alloca ptr, align 8
  %local_size = alloca i32, align 4
  %requests = alloca ptr, align 8
  %status = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %used_procs = alloca ptr, align 8
  %num_types = alloca i32, align 4
  %num_requests = alloca i32, align 4
  %vec_len = alloca i32, align 4
  %proc_id = alloca i32, align 4
  %new_vec_starts = alloca ptr, align 8
  %num_contacts = alloca i32, align 4
  %contact_proc_list = alloca [1 x i32], align 4
  %contact_send_buf = alloca [1 x i32], align 4
  %contact_send_buf_starts = alloca [2 x i32], align 4
  %max_response_size = alloca i32, align 4
  %response_recv_buf = alloca ptr, align 8
  %response_recv_buf_starts = alloca ptr, align 8
  %response_obj = alloca %struct.hypre_DataExchangeResponse, align 8
  %send_proc_obj = alloca %struct.hypre_ProcListElements, align 8
  %send_info = alloca ptr, align 8
  %status1 = alloca %struct.ompi_status_public_t, align 8
  %count = alloca i32, align 4
  %tag1 = alloca i32, align 4
  %tag2 = alloca i32, align 4
  %start = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %par_v, ptr %par_v.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %0 = load ptr, ptr %par_v.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !12
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_size) #4
  %2 = load ptr, ptr %par_v.addr, align 8, !tbaa !4
  %global_size2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %global_size2, align 8, !tbaa !13
  store i32 %3, ptr %global_size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_vector) #4
  %4 = load ptr, ptr %par_v.addr, align 8, !tbaa !4
  %local_vector3 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %local_vector3, align 8, !tbaa !17
  store ptr %5, ptr %local_vector, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_vectors) #4
  %6 = load ptr, ptr %par_v.addr, align 8, !tbaa !4
  %local_vector4 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %local_vector4, align 8, !tbaa !17
  %num_vectors5 = getelementptr inbounds %struct.hypre_Vector, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %num_vectors5, align 4, !tbaa !21
  store i32 %8, ptr %num_vectors, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_size) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %requests) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %used_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_types) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_requests) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vec_len) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %proc_id) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vec_starts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_contacts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %contact_proc_list) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %contact_send_buf) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %contact_send_buf_starts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_response_size) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %response_recv_buf) #4
  store ptr null, ptr %response_recv_buf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %response_recv_buf_starts) #4
  store ptr null, ptr %response_recv_buf_starts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %response_obj) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %send_proc_obj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_info) #4
  store ptr null, ptr %send_info, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %status1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag1) #4
  store i32 112, ptr %tag1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag2) #4
  store i32 223, ptr %tag2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #4
  %9 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %9, ptr noundef %num_procs)
  %10 = load ptr, ptr %comm, align 8, !tbaa !4
  %call6 = call i32 @hypre_MPI_Comm_rank(ptr noundef %10, ptr noundef %my_id)
  %11 = load ptr, ptr %par_v.addr, align 8, !tbaa !4
  %last_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %last_index, align 8, !tbaa !15
  %13 = load ptr, ptr %par_v.addr, align 8, !tbaa !4
  %first_index = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %first_index, align 4, !tbaa !14
  %sub = sub nsw i32 %12, %14
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %local_size, align 4, !tbaa !8
  %15 = load i32, ptr %local_size, align 4, !tbaa !8
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %num_contacts, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds [1 x i32], ptr %contact_proc_list, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  %16 = load ptr, ptr %par_v.addr, align 8, !tbaa !4
  %last_index7 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %last_index7, align 8, !tbaa !15
  %arrayidx8 = getelementptr inbounds [1 x i32], ptr %contact_send_buf, i64 0, i64 0
  store i32 %17, ptr %arrayidx8, align 4, !tbaa !8
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %contact_send_buf_starts, i64 0, i64 0
  store i32 0, ptr %arrayidx9, align 4, !tbaa !8
  %arrayidx10 = getelementptr inbounds [2 x i32], ptr %contact_send_buf_starts, i64 0, i64 1
  store i32 1, ptr %arrayidx10, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %num_contacts, align 4, !tbaa !8
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %contact_send_buf_starts, i64 0, i64 0
  store i32 0, ptr %arrayidx11, align 4, !tbaa !8
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %contact_send_buf_starts, i64 0, i64 1
  store i32 0, ptr %arrayidx12, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %length = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 0
  store i32 0, ptr %length, align 8, !tbaa !44
  %storage_length = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 1
  store i32 10, ptr %storage_length, align 4, !tbaa !46
  %storage_length13 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 1
  %18 = load i32, ptr %storage_length13, align 4, !tbaa !46
  %conv = sext i32 %18 to i64
  %call14 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  %id = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 2
  store ptr %call14, ptr %id, align 8, !tbaa !47
  %storage_length15 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 1
  %19 = load i32, ptr %storage_length15, align 4, !tbaa !46
  %add16 = add nsw i32 %19, 1
  %conv17 = sext i32 %add16 to i64
  %call18 = call ptr @hypre_CAlloc(i64 noundef %conv17, i64 noundef 4, i32 noundef 0)
  %vec_starts = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 3
  store ptr %call18, ptr %vec_starts, align 8, !tbaa !48
  %vec_starts19 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 3
  %20 = load ptr, ptr %vec_starts19, align 8, !tbaa !48
  %arrayidx20 = getelementptr inbounds i32, ptr %20, i64 0
  store i32 0, ptr %arrayidx20, align 4, !tbaa !8
  %element_storage_length = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 4
  store i32 10, ptr %element_storage_length, align 8, !tbaa !49
  %element_storage_length21 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 4
  %21 = load i32, ptr %element_storage_length21, align 8, !tbaa !49
  %conv22 = sext i32 %21 to i64
  %call23 = call ptr @hypre_CAlloc(i64 noundef %conv22, i64 noundef 4, i32 noundef 0)
  %elements = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 5
  store ptr %call23, ptr %elements, align 8, !tbaa !50
  store i32 0, ptr %max_response_size, align 4, !tbaa !8
  %fill_response = getelementptr inbounds %struct.hypre_DataExchangeResponse, ptr %response_obj, i32 0, i32 0
  store ptr @hypre_FillResponseParToVectorAll, ptr %fill_response, align 8, !tbaa !51
  %data1 = getelementptr inbounds %struct.hypre_DataExchangeResponse, ptr %response_obj, i32 0, i32 3
  store ptr null, ptr %data1, align 8, !tbaa !53
  %data2 = getelementptr inbounds %struct.hypre_DataExchangeResponse, ptr %response_obj, i32 0, i32 4
  store ptr %send_proc_obj, ptr %data2, align 8, !tbaa !54
  %22 = load i32, ptr %num_contacts, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [1 x i32], ptr %contact_proc_list, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [1 x i32], ptr %contact_send_buf, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [2 x i32], ptr %contact_send_buf_starts, i64 0, i64 0
  %23 = load i32, ptr %max_response_size, align 4, !tbaa !8
  %24 = load ptr, ptr %comm, align 8, !tbaa !4
  %call26 = call i32 @hypre_DataExchangeList(i32 noundef %22, ptr noundef %arraydecay, ptr noundef %arraydecay24, ptr noundef %arraydecay25, i32 noundef 4, i32 noundef 4, ptr noundef %response_obj, i32 noundef %23, i32 noundef 1, ptr noundef %24, ptr noundef %response_recv_buf, ptr noundef %response_recv_buf_starts)
  %25 = load i32, ptr %my_id, align 4, !tbaa !8
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then27, label %if.else75

if.then27:                                        ; preds = %if.end
  %26 = load i32, ptr %local_size, align 4, !tbaa !8
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %if.then29, label %if.else61

if.then29:                                        ; preds = %if.then27
  %27 = load i32, ptr %tag1, align 4, !tbaa !8
  %28 = load ptr, ptr %comm, align 8, !tbaa !4
  %call30 = call i32 @hypre_MPI_Probe(i32 noundef 0, i32 noundef %27, ptr noundef %28, ptr noundef %status1)
  %call31 = call i32 @hypre_MPI_Get_count(ptr noundef %status1, ptr noundef @ompi_mpi_int, ptr noundef %count)
  %29 = load i32, ptr %count, align 4, !tbaa !8
  %conv32 = sext i32 %29 to i64
  %call33 = call ptr @hypre_CAlloc(i64 noundef %conv32, i64 noundef 4, i32 noundef 0)
  store ptr %call33, ptr %send_info, align 8, !tbaa !4
  %30 = load ptr, ptr %send_info, align 8, !tbaa !4
  %31 = load i32, ptr %count, align 4, !tbaa !8
  %32 = load i32, ptr %tag1, align 4, !tbaa !8
  %33 = load ptr, ptr %comm, align 8, !tbaa !4
  %call34 = call i32 @hypre_MPI_Recv(ptr noundef %30, i32 noundef %31, ptr noundef @ompi_mpi_int, i32 noundef 0, i32 noundef %32, ptr noundef %33, ptr noundef %status1)
  %34 = load ptr, ptr %send_info, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds i32, ptr %34, i64 0
  %35 = load i32, ptr %arrayidx35, align 4, !tbaa !8
  store i32 %35, ptr %num_types, align 4, !tbaa !8
  %36 = load i32, ptr %num_types, align 4, !tbaa !8
  %conv36 = sext i32 %36 to i64
  %call37 = call ptr @hypre_CAlloc(i64 noundef %conv36, i64 noundef 4, i32 noundef 0)
  store ptr %call37, ptr %used_procs, align 8, !tbaa !4
  %37 = load i32, ptr %num_types, align 4, !tbaa !8
  %add38 = add nsw i32 %37, 1
  %conv39 = sext i32 %add38 to i64
  %call40 = call ptr @hypre_CAlloc(i64 noundef %conv39, i64 noundef 4, i32 noundef 0)
  store ptr %call40, ptr %new_vec_starts, align 8, !tbaa !4
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then29
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %39 = load i32, ptr %num_types, align 4, !tbaa !8
  %cmp41 = icmp sle i32 %38, %39
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load ptr, ptr %send_info, align 8, !tbaa !4
  %41 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %40, i64 %idxprom
  %42 = load i32, ptr %arrayidx43, align 4, !tbaa !8
  %43 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %44 = load i32, ptr %i, align 4, !tbaa !8
  %sub44 = sub nsw i32 %44, 1
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %43, i64 %idxprom45
  store i32 %42, ptr %arrayidx46, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %46 = load i32, ptr %num_types, align 4, !tbaa !8
  %add47 = add nsw i32 %46, 1
  store i32 %add47, ptr %i, align 4, !tbaa !8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %48 = load i32, ptr %count, align 4, !tbaa !8
  %cmp49 = icmp slt i32 %47, %48
  br i1 %cmp49, label %for.body51, label %for.end60

for.body51:                                       ; preds = %for.cond48
  %49 = load ptr, ptr %send_info, align 8, !tbaa !4
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom52 = sext i32 %50 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %49, i64 %idxprom52
  %51 = load i32, ptr %arrayidx53, align 4, !tbaa !8
  %52 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %54 = load i32, ptr %num_types, align 4, !tbaa !8
  %sub54 = sub nsw i32 %53, %54
  %sub55 = sub nsw i32 %sub54, 1
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %52, i64 %idxprom56
  store i32 %51, ptr %arrayidx57, align 4, !tbaa !8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body51
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %inc59 = add nsw i32 %55, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !8
  br label %for.cond48, !llvm.loop !56

for.end60:                                        ; preds = %for.cond48
  br label %if.end74

if.else61:                                        ; preds = %if.then27
  %vec_starts62 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 3
  %56 = load ptr, ptr %vec_starts62, align 8, !tbaa !48
  call void @hypre_Free(ptr noundef %56, i32 noundef 0)
  %vec_starts63 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 3
  store ptr null, ptr %vec_starts63, align 8, !tbaa !48
  %id64 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 2
  %57 = load ptr, ptr %id64, align 8, !tbaa !47
  call void @hypre_Free(ptr noundef %57, i32 noundef 0)
  %id65 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 2
  store ptr null, ptr %id65, align 8, !tbaa !47
  %elements66 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 5
  %58 = load ptr, ptr %elements66, align 8, !tbaa !50
  call void @hypre_Free(ptr noundef %58, i32 noundef 0)
  %elements67 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 5
  store ptr null, ptr %elements67, align 8, !tbaa !50
  %59 = load ptr, ptr %response_recv_buf, align 8, !tbaa !4
  %tobool68 = icmp ne ptr %59, null
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.else61
  %60 = load ptr, ptr %response_recv_buf, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %60, i32 noundef 0)
  store ptr null, ptr %response_recv_buf, align 8, !tbaa !4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.else61
  %61 = load ptr, ptr %response_recv_buf_starts, align 8, !tbaa !4
  %tobool71 = icmp ne ptr %61, null
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  %62 = load ptr, ptr %response_recv_buf_starts, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %62, i32 noundef 0)
  store ptr null, ptr %response_recv_buf_starts, align 8, !tbaa !4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %for.end60
  br label %if.end157

if.else75:                                        ; preds = %if.end
  %length76 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 0
  %63 = load i32, ptr %length76, align 8, !tbaa !44
  store i32 %63, ptr %num_types, align 4, !tbaa !8
  %64 = load i32, ptr %num_types, align 4, !tbaa !8
  %conv77 = sext i32 %64 to i64
  %call78 = call ptr @hypre_CAlloc(i64 noundef %conv77, i64 noundef 4, i32 noundef 0)
  store ptr %call78, ptr %used_procs, align 8, !tbaa !4
  %65 = load i32, ptr %num_types, align 4, !tbaa !8
  %add79 = add nsw i32 %65, 1
  %conv80 = sext i32 %add79 to i64
  %call81 = call ptr @hypre_CAlloc(i64 noundef %conv80, i64 noundef 4, i32 noundef 0)
  store ptr %call81, ptr %new_vec_starts, align 8, !tbaa !4
  %66 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds i32, ptr %66, i64 0
  store i32 0, ptr %arrayidx82, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc99, %if.else75
  %67 = load i32, ptr %i, align 4, !tbaa !8
  %68 = load i32, ptr %num_types, align 4, !tbaa !8
  %cmp84 = icmp slt i32 %67, %68
  br i1 %cmp84, label %for.body86, label %for.end101

for.body86:                                       ; preds = %for.cond83
  %id87 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 2
  %69 = load ptr, ptr %id87, align 8, !tbaa !47
  %70 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom88 = sext i32 %70 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %69, i64 %idxprom88
  %71 = load i32, ptr %arrayidx89, align 4, !tbaa !8
  %72 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %73 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom90 = sext i32 %73 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %72, i64 %idxprom90
  store i32 %71, ptr %arrayidx91, align 4, !tbaa !8
  %elements92 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 5
  %74 = load ptr, ptr %elements92, align 8, !tbaa !50
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom93 = sext i32 %75 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %74, i64 %idxprom93
  %76 = load i32, ptr %arrayidx94, align 4, !tbaa !8
  %add95 = add nsw i32 %76, 1
  %77 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %78 = load i32, ptr %i, align 4, !tbaa !8
  %add96 = add nsw i32 %78, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %77, i64 %idxprom97
  store i32 %add95, ptr %arrayidx98, align 4, !tbaa !8
  br label %for.inc99

for.inc99:                                        ; preds = %for.body86
  %79 = load i32, ptr %i, align 4, !tbaa !8
  %inc100 = add nsw i32 %79, 1
  store i32 %inc100, ptr %i, align 4, !tbaa !8
  br label %for.cond83, !llvm.loop !57

for.end101:                                       ; preds = %for.cond83
  %80 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %81 = load i32, ptr %num_types, align 4, !tbaa !8
  %sub102 = sub nsw i32 %81, 1
  call void @hypre_qsort0(ptr noundef %80, i32 noundef 0, i32 noundef %sub102)
  %82 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %83 = load i32, ptr %num_types, align 4, !tbaa !8
  call void @hypre_qsort0(ptr noundef %82, i32 noundef 0, i32 noundef %83)
  %84 = load i32, ptr %num_types, align 4, !tbaa !8
  %mul = mul nsw i32 2, %84
  %add103 = add nsw i32 %mul, 2
  store i32 %add103, ptr %count, align 4, !tbaa !8
  %85 = load i32, ptr %count, align 4, !tbaa !8
  %conv104 = sext i32 %85 to i64
  %call105 = call ptr @hypre_CAlloc(i64 noundef %conv104, i64 noundef 4, i32 noundef 0)
  store ptr %call105, ptr %send_info, align 8, !tbaa !4
  %86 = load i32, ptr %num_types, align 4, !tbaa !8
  %87 = load ptr, ptr %send_info, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds i32, ptr %87, i64 0
  store i32 %86, ptr %arrayidx106, align 4, !tbaa !8
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc116, %for.end101
  %88 = load i32, ptr %i, align 4, !tbaa !8
  %89 = load i32, ptr %num_types, align 4, !tbaa !8
  %cmp108 = icmp sle i32 %88, %89
  br i1 %cmp108, label %for.body110, label %for.end118

for.body110:                                      ; preds = %for.cond107
  %90 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %91 = load i32, ptr %i, align 4, !tbaa !8
  %sub111 = sub nsw i32 %91, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds i32, ptr %90, i64 %idxprom112
  %92 = load i32, ptr %arrayidx113, align 4, !tbaa !8
  %93 = load ptr, ptr %send_info, align 8, !tbaa !4
  %94 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom114 = sext i32 %94 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %93, i64 %idxprom114
  store i32 %92, ptr %arrayidx115, align 4, !tbaa !8
  br label %for.inc116

for.inc116:                                       ; preds = %for.body110
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %inc117 = add nsw i32 %95, 1
  store i32 %inc117, ptr %i, align 4, !tbaa !8
  br label %for.cond107, !llvm.loop !58

for.end118:                                       ; preds = %for.cond107
  %96 = load i32, ptr %num_types, align 4, !tbaa !8
  %add119 = add nsw i32 %96, 1
  store i32 %add119, ptr %i, align 4, !tbaa !8
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc130, %for.end118
  %97 = load i32, ptr %i, align 4, !tbaa !8
  %98 = load i32, ptr %count, align 4, !tbaa !8
  %cmp121 = icmp slt i32 %97, %98
  br i1 %cmp121, label %for.body123, label %for.end132

for.body123:                                      ; preds = %for.cond120
  %99 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %100 = load i32, ptr %i, align 4, !tbaa !8
  %101 = load i32, ptr %num_types, align 4, !tbaa !8
  %sub124 = sub nsw i32 %100, %101
  %sub125 = sub nsw i32 %sub124, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %99, i64 %idxprom126
  %102 = load i32, ptr %arrayidx127, align 4, !tbaa !8
  %103 = load ptr, ptr %send_info, align 8, !tbaa !4
  %104 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom128 = sext i32 %104 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %103, i64 %idxprom128
  store i32 %102, ptr %arrayidx129, align 4, !tbaa !8
  br label %for.inc130

for.inc130:                                       ; preds = %for.body123
  %105 = load i32, ptr %i, align 4, !tbaa !8
  %inc131 = add nsw i32 %105, 1
  store i32 %inc131, ptr %i, align 4, !tbaa !8
  br label %for.cond120, !llvm.loop !59

for.end132:                                       ; preds = %for.cond120
  %106 = load i32, ptr %num_types, align 4, !tbaa !8
  %conv133 = sext i32 %106 to i64
  %call134 = call ptr @hypre_CAlloc(i64 noundef %conv133, i64 noundef 8, i32 noundef 0)
  store ptr %call134, ptr %requests, align 8, !tbaa !4
  %107 = load i32, ptr %num_types, align 4, !tbaa !8
  %conv135 = sext i32 %107 to i64
  %call136 = call ptr @hypre_CAlloc(i64 noundef %conv135, i64 noundef 24, i32 noundef 0)
  store ptr %call136, ptr %status, align 8, !tbaa !4
  store i32 0, ptr %start, align 4, !tbaa !8
  %108 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %arrayidx137 = getelementptr inbounds i32, ptr %108, i64 0
  %109 = load i32, ptr %arrayidx137, align 4, !tbaa !8
  %cmp138 = icmp eq i32 %109, 0
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %for.end132
  store i32 1, ptr %start, align 4, !tbaa !8
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %for.end132
  %110 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %110, ptr %i, align 4, !tbaa !8
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc152, %if.end141
  %111 = load i32, ptr %i, align 4, !tbaa !8
  %112 = load i32, ptr %num_types, align 4, !tbaa !8
  %cmp143 = icmp slt i32 %111, %112
  br i1 %cmp143, label %for.body145, label %for.end154

for.body145:                                      ; preds = %for.cond142
  %113 = load ptr, ptr %send_info, align 8, !tbaa !4
  %114 = load i32, ptr %count, align 4, !tbaa !8
  %115 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %116 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom146 = sext i32 %116 to i64
  %arrayidx147 = getelementptr inbounds i32, ptr %115, i64 %idxprom146
  %117 = load i32, ptr %arrayidx147, align 4, !tbaa !8
  %118 = load i32, ptr %tag1, align 4, !tbaa !8
  %119 = load ptr, ptr %comm, align 8, !tbaa !4
  %120 = load ptr, ptr %requests, align 8, !tbaa !4
  %121 = load i32, ptr %i, align 4, !tbaa !8
  %122 = load i32, ptr %start, align 4, !tbaa !8
  %sub148 = sub nsw i32 %121, %122
  %idxprom149 = sext i32 %sub148 to i64
  %arrayidx150 = getelementptr inbounds ptr, ptr %120, i64 %idxprom149
  %call151 = call i32 @hypre_MPI_Isend(ptr noundef %113, i32 noundef %114, ptr noundef @ompi_mpi_int, i32 noundef %117, i32 noundef %118, ptr noundef %119, ptr noundef %arrayidx150)
  br label %for.inc152

for.inc152:                                       ; preds = %for.body145
  %123 = load i32, ptr %i, align 4, !tbaa !8
  %inc153 = add nsw i32 %123, 1
  store i32 %inc153, ptr %i, align 4, !tbaa !8
  br label %for.cond142, !llvm.loop !60

for.end154:                                       ; preds = %for.cond142
  %124 = load i32, ptr %num_types, align 4, !tbaa !8
  %125 = load i32, ptr %start, align 4, !tbaa !8
  %sub155 = sub nsw i32 %124, %125
  %126 = load ptr, ptr %requests, align 8, !tbaa !4
  %127 = load ptr, ptr %status, align 8, !tbaa !4
  %call156 = call i32 @hypre_MPI_Waitall(i32 noundef %sub155, ptr noundef %126, ptr noundef %127)
  %128 = load ptr, ptr %status, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %128, i32 noundef 0)
  store ptr null, ptr %status, align 8, !tbaa !4
  %129 = load ptr, ptr %requests, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %129, i32 noundef 0)
  store ptr null, ptr %requests, align 8, !tbaa !4
  br label %if.end157

if.end157:                                        ; preds = %for.end154, %if.end74
  %vec_starts158 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 3
  %130 = load ptr, ptr %vec_starts158, align 8, !tbaa !48
  call void @hypre_Free(ptr noundef %130, i32 noundef 0)
  %vec_starts159 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 3
  store ptr null, ptr %vec_starts159, align 8, !tbaa !48
  %id160 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 2
  %131 = load ptr, ptr %id160, align 8, !tbaa !47
  call void @hypre_Free(ptr noundef %131, i32 noundef 0)
  %id161 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 2
  store ptr null, ptr %id161, align 8, !tbaa !47
  %elements162 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 5
  %132 = load ptr, ptr %elements162, align 8, !tbaa !50
  call void @hypre_Free(ptr noundef %132, i32 noundef 0)
  %elements163 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %send_proc_obj, i32 0, i32 5
  store ptr null, ptr %elements163, align 8, !tbaa !50
  %133 = load ptr, ptr %send_info, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %133, i32 noundef 0)
  store ptr null, ptr %send_info, align 8, !tbaa !4
  %134 = load ptr, ptr %response_recv_buf, align 8, !tbaa !4
  %tobool164 = icmp ne ptr %134, null
  br i1 %tobool164, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end157
  %135 = load ptr, ptr %response_recv_buf, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %135, i32 noundef 0)
  store ptr null, ptr %response_recv_buf, align 8, !tbaa !4
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end157
  %136 = load ptr, ptr %response_recv_buf_starts, align 8, !tbaa !4
  %tobool167 = icmp ne ptr %136, null
  br i1 %tobool167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end166
  %137 = load ptr, ptr %response_recv_buf_starts, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %137, i32 noundef 0)
  store ptr null, ptr %response_recv_buf_starts, align 8, !tbaa !4
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end166
  %138 = load i32, ptr %local_size, align 4, !tbaa !8
  %tobool170 = icmp ne i32 %138, 0
  br i1 %tobool170, label %if.end172, label %if.then171

if.then171:                                       ; preds = %if.end169
  %139 = load ptr, ptr %used_procs, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %139, i32 noundef 0)
  store ptr null, ptr %used_procs, align 8, !tbaa !4
  %140 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %140, i32 noundef 0)
  store ptr null, ptr %new_vec_starts, align 8, !tbaa !4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end172:                                        ; preds = %if.end169
  %141 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_Vector, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %data, align 8, !tbaa !35
  store ptr %142, ptr %local_data, align 8, !tbaa !4
  %143 = load i32, ptr %global_size, align 4, !tbaa !8
  %call173 = call ptr @hypre_SeqVectorCreate(i32 noundef %143)
  store ptr %call173, ptr %vector, align 8, !tbaa !4
  %144 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %145 = load ptr, ptr %vector, align 8, !tbaa !4
  %num_vectors174 = getelementptr inbounds %struct.hypre_Vector, ptr %145, i32 0, i32 4
  store i32 %144, ptr %num_vectors174, align 4, !tbaa !21
  %146 = load ptr, ptr %vector, align 8, !tbaa !4
  %call175 = call i32 @hypre_SeqVectorInitialize(ptr noundef %146)
  %147 = load ptr, ptr %vector, align 8, !tbaa !4
  %data176 = getelementptr inbounds %struct.hypre_Vector, ptr %147, i32 0, i32 0
  %148 = load ptr, ptr %data176, align 8, !tbaa !35
  store ptr %148, ptr %vector_data, align 8, !tbaa !4
  %149 = load i32, ptr %num_types, align 4, !tbaa !8
  %mul177 = mul nsw i32 2, %149
  store i32 %mul177, ptr %num_requests, align 4, !tbaa !8
  %150 = load i32, ptr %num_requests, align 4, !tbaa !8
  %conv178 = sext i32 %150 to i64
  %call179 = call ptr @hypre_CAlloc(i64 noundef %conv178, i64 noundef 8, i32 noundef 0)
  store ptr %call179, ptr %requests, align 8, !tbaa !4
  %151 = load i32, ptr %num_requests, align 4, !tbaa !8
  %conv180 = sext i32 %151 to i64
  %call181 = call ptr @hypre_CAlloc(i64 noundef %conv180, i64 noundef 24, i32 noundef 0)
  store ptr %call181, ptr %status, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc203, %if.end172
  %152 = load i32, ptr %i, align 4, !tbaa !8
  %153 = load i32, ptr %num_types, align 4, !tbaa !8
  %cmp183 = icmp slt i32 %152, %153
  br i1 %cmp183, label %for.body185, label %for.end205

for.body185:                                      ; preds = %for.cond182
  %154 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %155 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom186 = sext i32 %155 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %154, i64 %idxprom186
  %156 = load i32, ptr %arrayidx187, align 4, !tbaa !8
  store i32 %156, ptr %proc_id, align 4, !tbaa !8
  %157 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %158 = load i32, ptr %i, align 4, !tbaa !8
  %add188 = add nsw i32 %158, 1
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %157, i64 %idxprom189
  %159 = load i32, ptr %arrayidx190, align 4, !tbaa !8
  %160 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %161 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom191 = sext i32 %161 to i64
  %arrayidx192 = getelementptr inbounds i32, ptr %160, i64 %idxprom191
  %162 = load i32, ptr %arrayidx192, align 4, !tbaa !8
  %sub193 = sub nsw i32 %159, %162
  store i32 %sub193, ptr %vec_len, align 4, !tbaa !8
  %163 = load ptr, ptr %vector_data, align 8, !tbaa !4
  %164 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  %165 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom194 = sext i32 %165 to i64
  %arrayidx195 = getelementptr inbounds i32, ptr %164, i64 %idxprom194
  %166 = load i32, ptr %arrayidx195, align 4, !tbaa !8
  %idxprom196 = sext i32 %166 to i64
  %arrayidx197 = getelementptr inbounds double, ptr %163, i64 %idxprom196
  %167 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %168 = load i32, ptr %vec_len, align 4, !tbaa !8
  %mul198 = mul nsw i32 %167, %168
  %169 = load i32, ptr %proc_id, align 4, !tbaa !8
  %170 = load i32, ptr %tag2, align 4, !tbaa !8
  %171 = load ptr, ptr %comm, align 8, !tbaa !4
  %172 = load ptr, ptr %requests, align 8, !tbaa !4
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %inc199 = add nsw i32 %173, 1
  store i32 %inc199, ptr %j, align 4, !tbaa !8
  %idxprom200 = sext i32 %173 to i64
  %arrayidx201 = getelementptr inbounds ptr, ptr %172, i64 %idxprom200
  %call202 = call i32 @hypre_MPI_Irecv(ptr noundef %arrayidx197, i32 noundef %mul198, ptr noundef @ompi_mpi_double, i32 noundef %169, i32 noundef %170, ptr noundef %171, ptr noundef %arrayidx201)
  br label %for.inc203

for.inc203:                                       ; preds = %for.body185
  %174 = load i32, ptr %i, align 4, !tbaa !8
  %inc204 = add nsw i32 %174, 1
  store i32 %inc204, ptr %i, align 4, !tbaa !8
  br label %for.cond182, !llvm.loop !61

for.end205:                                       ; preds = %for.cond182
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond206

for.cond206:                                      ; preds = %for.inc217, %for.end205
  %175 = load i32, ptr %i, align 4, !tbaa !8
  %176 = load i32, ptr %num_types, align 4, !tbaa !8
  %cmp207 = icmp slt i32 %175, %176
  br i1 %cmp207, label %for.body209, label %for.end219

for.body209:                                      ; preds = %for.cond206
  %177 = load ptr, ptr %local_data, align 8, !tbaa !4
  %178 = load i32, ptr %num_vectors, align 4, !tbaa !8
  %179 = load i32, ptr %local_size, align 4, !tbaa !8
  %mul210 = mul nsw i32 %178, %179
  %180 = load ptr, ptr %used_procs, align 8, !tbaa !4
  %181 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom211 = sext i32 %181 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %180, i64 %idxprom211
  %182 = load i32, ptr %arrayidx212, align 4, !tbaa !8
  %183 = load i32, ptr %tag2, align 4, !tbaa !8
  %184 = load ptr, ptr %comm, align 8, !tbaa !4
  %185 = load ptr, ptr %requests, align 8, !tbaa !4
  %186 = load i32, ptr %j, align 4, !tbaa !8
  %inc213 = add nsw i32 %186, 1
  store i32 %inc213, ptr %j, align 4, !tbaa !8
  %idxprom214 = sext i32 %186 to i64
  %arrayidx215 = getelementptr inbounds ptr, ptr %185, i64 %idxprom214
  %call216 = call i32 @hypre_MPI_Isend(ptr noundef %177, i32 noundef %mul210, ptr noundef @ompi_mpi_double, i32 noundef %182, i32 noundef %183, ptr noundef %184, ptr noundef %arrayidx215)
  br label %for.inc217

for.inc217:                                       ; preds = %for.body209
  %187 = load i32, ptr %i, align 4, !tbaa !8
  %inc218 = add nsw i32 %187, 1
  store i32 %inc218, ptr %i, align 4, !tbaa !8
  br label %for.cond206, !llvm.loop !62

for.end219:                                       ; preds = %for.cond206
  %188 = load i32, ptr %num_requests, align 4, !tbaa !8
  %189 = load ptr, ptr %requests, align 8, !tbaa !4
  %190 = load ptr, ptr %status, align 8, !tbaa !4
  %call220 = call i32 @hypre_MPI_Waitall(i32 noundef %188, ptr noundef %189, ptr noundef %190)
  %191 = load i32, ptr %num_requests, align 4, !tbaa !8
  %tobool221 = icmp ne i32 %191, 0
  br i1 %tobool221, label %if.then222, label %if.end223

if.then222:                                       ; preds = %for.end219
  %192 = load ptr, ptr %requests, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %192, i32 noundef 0)
  store ptr null, ptr %requests, align 8, !tbaa !4
  %193 = load ptr, ptr %status, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %193, i32 noundef 0)
  store ptr null, ptr %status, align 8, !tbaa !4
  %194 = load ptr, ptr %used_procs, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %194, i32 noundef 0)
  store ptr null, ptr %used_procs, align 8, !tbaa !4
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %for.end219
  %195 = load ptr, ptr %new_vec_starts, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %195, i32 noundef 0)
  store ptr null, ptr %new_vec_starts, align 8, !tbaa !4
  %196 = load ptr, ptr %vector, align 8, !tbaa !4
  store ptr %196, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end223, %if.then171, %if.end73
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %status1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_info) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr %send_proc_obj) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %response_obj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %response_recv_buf_starts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %response_recv_buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_response_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %contact_send_buf_starts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %contact_send_buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %contact_proc_list) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_contacts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vec_starts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %proc_id) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vec_len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_requests) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_types) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %used_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %requests) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_vectors) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  %197 = load ptr, ptr %retval, align 8
  ret ptr %197
}

; Function Attrs: nounwind uwtable
define i32 @hypre_FillResponseParToVectorAll(ptr noundef %p_recv_contact_buf, i32 noundef %contact_size, i32 noundef %contact_proc, ptr noundef %ro, ptr noundef %comm, ptr noundef %p_send_response_buf, ptr noundef %response_message_size) #0 {
entry:
  %p_recv_contact_buf.addr = alloca ptr, align 8
  %contact_size.addr = alloca i32, align 4
  %contact_proc.addr = alloca i32, align 4
  %ro.addr = alloca ptr, align 8
  %comm.addr = alloca ptr, align 8
  %p_send_response_buf.addr = alloca ptr, align 8
  %response_message_size.addr = alloca ptr, align 8
  %myid = alloca i32, align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %elength = alloca i32, align 4
  %recv_contact_buf = alloca ptr, align 8
  %response_obj = alloca ptr, align 8
  %send_proc_obj = alloca ptr, align 8
  store ptr %p_recv_contact_buf, ptr %p_recv_contact_buf.addr, align 8, !tbaa !4
  store i32 %contact_size, ptr %contact_size.addr, align 4, !tbaa !8
  store i32 %contact_proc, ptr %contact_proc.addr, align 4, !tbaa !8
  store ptr %ro, ptr %ro.addr, align 8, !tbaa !4
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store ptr %p_send_response_buf, ptr %p_send_response_buf.addr, align 8, !tbaa !4
  store ptr %response_message_size, ptr %response_message_size.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %myid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %elength) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_contact_buf) #4
  %0 = load ptr, ptr %p_recv_contact_buf.addr, align 8, !tbaa !4
  store ptr %0, ptr %recv_contact_buf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %response_obj) #4
  %1 = load ptr, ptr %ro.addr, align 8, !tbaa !4
  store ptr %1, ptr %response_obj, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_proc_obj) #4
  %2 = load ptr, ptr %response_obj, align 8, !tbaa !4
  %data2 = getelementptr inbounds %struct.hypre_DataExchangeResponse, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data2, align 8, !tbaa !54
  store ptr %3, ptr %send_proc_obj, align 8, !tbaa !4
  %4 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_rank(ptr noundef %4, ptr noundef %myid)
  %5 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.hypre_ProcListElements, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %length, align 8, !tbaa !44
  %7 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %storage_length = getelementptr inbounds %struct.hypre_ProcListElements, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %storage_length, align 4, !tbaa !46
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %storage_length1 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %storage_length1, align 4, !tbaa !46
  %add = add nsw i32 %10, 10
  store i32 %add, ptr %storage_length1, align 4, !tbaa !46
  %11 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.hypre_ProcListElements, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %id, align 8, !tbaa !47
  %13 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %storage_length2 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %storage_length2, align 4, !tbaa !46
  %conv = sext i32 %14 to i64
  %mul = mul i64 4, %conv
  %call3 = call ptr @hypre_ReAlloc(ptr noundef %12, i64 noundef %mul, i32 noundef 0)
  %15 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %id4 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %15, i32 0, i32 2
  store ptr %call3, ptr %id4, align 8, !tbaa !47
  %16 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %vec_starts = getelementptr inbounds %struct.hypre_ProcListElements, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %vec_starts, align 8, !tbaa !48
  %18 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %storage_length5 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %storage_length5, align 4, !tbaa !46
  %add6 = add nsw i32 %19, 1
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul i64 4, %conv7
  %call9 = call ptr @hypre_ReAlloc(ptr noundef %17, i64 noundef %mul8, i32 noundef 0)
  %20 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %vec_starts10 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %20, i32 0, i32 3
  store ptr %call9, ptr %vec_starts10, align 8, !tbaa !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %length11 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %length11, align 8, !tbaa !44
  store i32 %22, ptr %count, align 4, !tbaa !8
  %23 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %vec_starts12 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %vec_starts12, align 8, !tbaa !48
  %25 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i32, ptr %24, i64 %idxprom
  %26 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %26, ptr %index, align 4, !tbaa !8
  %27 = load i32, ptr %contact_proc.addr, align 4, !tbaa !8
  %28 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %id13 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %id13, align 8, !tbaa !47
  %30 = load i32, ptr %count, align 4, !tbaa !8
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %29, i64 %idxprom14
  store i32 %27, ptr %arrayidx15, align 4, !tbaa !8
  %31 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %element_storage_length = getelementptr inbounds %struct.hypre_ProcListElements, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %element_storage_length, align 8, !tbaa !49
  %33 = load i32, ptr %index, align 4, !tbaa !8
  %34 = load i32, ptr %contact_size.addr, align 4, !tbaa !8
  %add16 = add nsw i32 %33, %34
  %cmp17 = icmp slt i32 %32, %add16
  br i1 %cmp17, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end
  %35 = load i32, ptr %contact_size.addr, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %35, 10
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then19
  br label %cond.end

cond.false:                                       ; preds = %if.then19
  %36 = load i32, ptr %contact_size.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 10, %cond.true ], [ %36, %cond.false ]
  store i32 %cond, ptr %elength, align 4, !tbaa !8
  %37 = load i32, ptr %index, align 4, !tbaa !8
  %38 = load i32, ptr %elength, align 4, !tbaa !8
  %add22 = add nsw i32 %38, %37
  store i32 %add22, ptr %elength, align 4, !tbaa !8
  %39 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %elements = getelementptr inbounds %struct.hypre_ProcListElements, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %elements, align 8, !tbaa !50
  %41 = load i32, ptr %elength, align 4, !tbaa !8
  %conv23 = sext i32 %41 to i64
  %mul24 = mul i64 4, %conv23
  %call25 = call ptr @hypre_ReAlloc(ptr noundef %40, i64 noundef %mul24, i32 noundef 0)
  %42 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %elements26 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %42, i32 0, i32 5
  store ptr %call25, ptr %elements26, align 8, !tbaa !50
  %43 = load i32, ptr %elength, align 4, !tbaa !8
  %44 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %element_storage_length27 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %44, i32 0, i32 4
  store i32 %43, ptr %element_storage_length27, align 8, !tbaa !49
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.end
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %46 = load i32, ptr %contact_size.addr, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %45, %46
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %recv_contact_buf, align 8, !tbaa !4
  %48 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %48 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %47, i64 %idxprom31
  %49 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %50 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %elements33 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %50, i32 0, i32 5
  %51 = load ptr, ptr %elements33, align 8, !tbaa !50
  %52 = load i32, ptr %index, align 4, !tbaa !8
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %index, align 4, !tbaa !8
  %idxprom34 = sext i32 %52 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %51, i64 %idxprom34
  store i32 %49, ptr %arrayidx35, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %inc36 = add nsw i32 %53, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %54 = load i32, ptr %index, align 4, !tbaa !8
  %55 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %vec_starts37 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %55, i32 0, i32 3
  %56 = load ptr, ptr %vec_starts37, align 8, !tbaa !48
  %57 = load i32, ptr %count, align 4, !tbaa !8
  %add38 = add nsw i32 %57, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %56, i64 %idxprom39
  store i32 %54, ptr %arrayidx40, align 4, !tbaa !8
  %58 = load ptr, ptr %send_proc_obj, align 8, !tbaa !4
  %length41 = getelementptr inbounds %struct.hypre_ProcListElements, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %length41, align 8, !tbaa !44
  %inc42 = add nsw i32 %59, 1
  store i32 %inc42, ptr %length41, align 8, !tbaa !44
  %60 = load ptr, ptr %response_message_size.addr, align 8, !tbaa !4
  store i32 0, ptr %60, align 4, !tbaa !8
  %61 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_proc_obj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %response_obj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_contact_buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %elength) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %myid) #4
  ret i32 %61
}

declare i32 @hypre_DataExchangeList(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Probe(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Get_count(ptr noundef, ptr noundef, ptr noundef) #2

declare void @hypre_qsort0(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @hypre_SeqVectorInitialize(ptr noundef) #2

declare i32 @hypre_MPI_Irecv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorPrintIJ(ptr noundef %vector, i32 noundef %base_j, ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca ptr, align 8
  %base_j.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %global_size = alloca i32, align 4
  %j = alloca i32, align 4
  %partitioning = alloca ptr, align 8
  %local_data = alloca ptr, align 8
  %myid = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %i = alloca i32, align 4
  %part0 = alloca i32, align 4
  %new_filename = alloca [255 x i8], align 16
  %file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  store i32 %base_j, ptr %base_j.addr, align 4, !tbaa !8
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %myid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %part0) #4
  call void @llvm.lifetime.start.p0(i64 255, ptr %new_filename) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #4
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1051, i32 noundef 12, ptr noundef null)
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %comm1, align 8, !tbaa !12
  store ptr %3, ptr %comm, align 8, !tbaa !4
  %4 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %global_size2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %global_size2, align 8, !tbaa !13
  store i32 %5, ptr %global_size, align 4, !tbaa !8
  %6 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %partitioning3 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %partitioning3, align 8, !tbaa !16
  store ptr %7, ptr %partitioning, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %num_vectors, align 4, !tbaa !21
  %cmp = icmp eq i32 %10, 1
  %conv = zext i1 %cmp to i32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector4 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %local_vector4, align 8, !tbaa !17
  %num_vectors5 = getelementptr inbounds %struct.hypre_Vector, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %num_vectors5, align 4, !tbaa !21
  %cmp6 = icmp ne i32 %13, 1
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1060, i32 noundef 12, ptr noundef null)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end
  %14 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_rank(ptr noundef %14, ptr noundef %myid)
  %15 = load ptr, ptr %comm, align 8, !tbaa !4
  %call10 = call i32 @hypre_MPI_Comm_size(ptr noundef %15, ptr noundef %num_procs)
  %arraydecay = getelementptr inbounds [255 x i8], ptr %new_filename, i64 0, i64 0
  %16 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %17 = load i32, ptr %myid, align 4, !tbaa !8
  %call11 = call i32 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay, ptr noundef @.str.6, ptr noundef %16, i32 noundef %17)
  %arraydecay12 = getelementptr inbounds [255 x i8], ptr %new_filename, i64 0, i64 0
  %call13 = call noalias ptr @fopen(ptr noundef %arraydecay12, ptr noundef @.str.5)
  store ptr %call13, ptr %file, align 8, !tbaa !4
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end9
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1069, i32 noundef 1, ptr noundef @.str.7)
  %18 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %19 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector18 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %local_vector18, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.hypre_Vector, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %data, align 8, !tbaa !35
  store ptr %21, ptr %local_data, align 8, !tbaa !4
  %22 = load ptr, ptr %file, align 8, !tbaa !4
  %23 = load i32, ptr %global_size, align 4, !tbaa !8
  %call19 = call i32 (ptr, ptr, ...) @hypre_fprintf(ptr noundef %22, ptr noundef @.str.8, i32 noundef %23)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %24, 2
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %file, align 8, !tbaa !4
  %26 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds i32, ptr %26, i64 %idxprom
  %28 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %29 = load i32, ptr %base_j.addr, align 4, !tbaa !8
  %add = add nsw i32 %28, %29
  %call22 = call i32 (ptr, ptr, ...) @hypre_fprintf(ptr noundef %25, ptr noundef @.str.9, i32 noundef %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %file, align 8, !tbaa !4
  %call23 = call i32 (ptr, ptr, ...) @hypre_fprintf(ptr noundef %31, ptr noundef @.str.10)
  %32 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i32, ptr %32, i64 0
  %33 = load i32, ptr %arrayidx24, align 4, !tbaa !8
  store i32 %33, ptr %part0, align 4, !tbaa !8
  %34 = load i32, ptr %part0, align 4, !tbaa !8
  store i32 %34, ptr %j, align 4, !tbaa !8
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.end
  %35 = load i32, ptr %j, align 4, !tbaa !8
  %36 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i32, ptr %36, i64 1
  %37 = load i32, ptr %arrayidx26, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %35, %37
  br i1 %cmp27, label %for.body29, label %for.end36

for.body29:                                       ; preds = %for.cond25
  %38 = load ptr, ptr %file, align 8, !tbaa !4
  %39 = load i32, ptr %j, align 4, !tbaa !8
  %40 = load i32, ptr %base_j.addr, align 4, !tbaa !8
  %add30 = add nsw i32 %39, %40
  %41 = load ptr, ptr %local_data, align 8, !tbaa !4
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %43 = load i32, ptr %part0, align 4, !tbaa !8
  %sub = sub nsw i32 %42, %43
  %idxprom31 = sext i32 %sub to i64
  %arrayidx32 = getelementptr inbounds double, ptr %41, i64 %idxprom31
  %44 = load double, ptr %arrayidx32, align 8, !tbaa !29
  %call33 = call i32 (ptr, ptr, ...) @hypre_fprintf(ptr noundef %38, ptr noundef @.str.11, i32 noundef %add30, double noundef %44)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body29
  %45 = load i32, ptr %j, align 4, !tbaa !8
  %inc35 = add nsw i32 %45, 1
  store i32 %inc35, ptr %j, align 4, !tbaa !8
  br label %for.cond25, !llvm.loop !65

for.end36:                                        ; preds = %for.cond25
  %46 = load ptr, ptr %file, align 8, !tbaa !4
  %call37 = call i32 @fclose(ptr noundef %46)
  %47 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #4
  call void @llvm.lifetime.end.p0(i64 255, ptr %new_filename) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %part0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %myid) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorReadIJ(ptr noundef %comm, ptr noundef %filename, ptr noundef %base_j_ptr, ptr noundef %vector_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %comm.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %base_j_ptr.addr = alloca ptr, align 8
  %vector_ptr.addr = alloca ptr, align 8
  %global_size = alloca i32, align 4
  %J = alloca i32, align 4
  %vector = alloca ptr, align 8
  %local_vector = alloca ptr, align 8
  %local_data = alloca ptr, align 8
  %partitioning = alloca ptr, align 8
  %base_j = alloca i32, align 4
  %myid = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %new_filename = alloca [255 x i8], align 16
  %file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store ptr %base_j_ptr, ptr %base_j_ptr.addr, align 8, !tbaa !4
  store ptr %vector_ptr, ptr %vector_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_size) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %J) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %myid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 255, ptr %new_filename) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #4
  %0 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %0, ptr noundef %num_procs)
  %1 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %call1 = call i32 @hypre_MPI_Comm_rank(ptr noundef %1, ptr noundef %myid)
  %arraydecay = getelementptr inbounds [255 x i8], ptr %new_filename, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %3 = load i32, ptr %myid, align 4, !tbaa !8
  %call2 = call i32 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay, ptr noundef @.str.6, ptr noundef %2, i32 noundef %3)
  %arraydecay3 = getelementptr inbounds [255 x i8], ptr %new_filename, i64 0, i64 0
  %call4 = call noalias ptr @fopen(ptr noundef %arraydecay3, ptr noundef @.str.2)
  store ptr %call4, ptr %file, align 8, !tbaa !4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1137, i32 noundef 1, ptr noundef @.str.7)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %file, align 8, !tbaa !4
  %call5 = call i32 (ptr, ptr, ...) @hypre_fscanf(ptr noundef %5, ptr noundef @.str.12, ptr noundef %global_size)
  %call6 = call ptr @hypre_CAlloc(i64 noundef 2, i64 noundef 4, i32 noundef 0)
  store ptr %call6, ptr %partitioning, align 8, !tbaa !4
  %6 = load ptr, ptr %file, align 8, !tbaa !4
  %7 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %call7 = call i32 (ptr, ptr, ...) @hypre_fscanf(ptr noundef %6, ptr noundef @.str.12, ptr noundef %7)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %8, 2
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %file, align 8, !tbaa !4
  %10 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i32, ptr %10, i64 %idx.ext
  %call9 = call i32 (ptr, ptr, ...) @hypre_fscanf(ptr noundef %9, ptr noundef @.str.12, ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %base_j, align 4, !tbaa !8
  %13 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %14 = load i32, ptr %global_size, align 4, !tbaa !8
  %15 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %call10 = call ptr @hypre_ParVectorCreate(ptr noundef %13, i32 noundef %14, ptr noundef %15)
  store ptr %call10, ptr %vector, align 8, !tbaa !4
  %16 = load ptr, ptr %vector, align 8, !tbaa !4
  %call11 = call i32 @hypre_ParVectorInitialize(ptr noundef %16)
  %17 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector12 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %local_vector12, align 8, !tbaa !17
  store ptr %18, ptr %local_vector, align 8, !tbaa !4
  %19 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_Vector, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %data, align 8, !tbaa !35
  store ptr %20, ptr %local_data, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %21 = load i32, ptr %j, align 4, !tbaa !8
  %22 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %22, i64 1
  %23 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %24 = load ptr, ptr %partitioning, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 0
  %25 = load i32, ptr %arrayidx14, align 4, !tbaa !8
  %sub = sub nsw i32 %23, %25
  %cmp15 = icmp slt i32 %21, %sub
  br i1 %cmp15, label %for.body16, label %for.end22

for.body16:                                       ; preds = %for.cond13
  %26 = load ptr, ptr %file, align 8, !tbaa !4
  %27 = load ptr, ptr %local_data, align 8, !tbaa !4
  %28 = load i32, ptr %j, align 4, !tbaa !8
  %idx.ext17 = sext i32 %28 to i64
  %add.ptr18 = getelementptr inbounds double, ptr %27, i64 %idx.ext17
  %call19 = call i32 (ptr, ptr, ...) @hypre_fscanf(ptr noundef %26, ptr noundef @.str.13, ptr noundef %J, ptr noundef %add.ptr18)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body16
  %29 = load i32, ptr %j, align 4, !tbaa !8
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !8
  br label %for.cond13, !llvm.loop !67

for.end22:                                        ; preds = %for.cond13
  %30 = load ptr, ptr %file, align 8, !tbaa !4
  %call23 = call i32 @fclose(ptr noundef %30)
  %31 = load i32, ptr %base_j, align 4, !tbaa !8
  %32 = load ptr, ptr %base_j_ptr.addr, align 8, !tbaa !4
  store i32 %31, ptr %32, align 4, !tbaa !8
  %33 = load ptr, ptr %vector, align 8, !tbaa !4
  %34 = load ptr, ptr %vector_ptr.addr, align 8, !tbaa !4
  store ptr %33, ptr %34, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %for.end22
  %35 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector24 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %local_vector24, align 8, !tbaa !17
  %num_vectors = getelementptr inbounds %struct.hypre_Vector, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %num_vectors, align 4, !tbaa !21
  %cmp25 = icmp eq i32 %37, 1
  %conv = zext i1 %cmp25 to i32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load ptr, ptr %vector, align 8, !tbaa !4
  %local_vector26 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %local_vector26, align 8, !tbaa !17
  %num_vectors27 = getelementptr inbounds %struct.hypre_Vector, ptr %39, i32 0, i32 4
  %40 = load i32, ptr %num_vectors27, align 4, !tbaa !21
  %cmp28 = icmp ne i32 %40, 1
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1192, i32 noundef 1, ptr noundef null)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.end
  %41 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #4
  call void @llvm.lifetime.end.p0(i64 255, ptr %new_filename) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %myid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %partitioning) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %J) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_size) #4
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare ptr @hypre_ReAlloc(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define double @hypre_ParVectorLocalSumElts(ptr noundef %vector) #0 {
entry:
  %vector.addr = alloca ptr, align 8
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %local_vector, align 8, !tbaa !17
  %call = call double @hypre_SeqVectorSumElts(ptr noundef %1)
  ret double %call
}

declare double @hypre_SeqVectorSumElts(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_ParVectorGetValues(ptr noundef %vector, i32 noundef %num_values, ptr noundef %indices, ptr noundef %values) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca ptr, align 8
  %num_values.addr = alloca i32, align 4
  %indices.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %first_index = alloca i32, align 4
  %last_index = alloca i32, align 4
  %index = alloca i32, align 4
  %local_vector = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vector, ptr %vector.addr, align 8, !tbaa !4
  store i32 %num_values, ptr %num_values.addr, align 4, !tbaa !8
  store ptr %indices, ptr %indices.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #4
  %0 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %first_index1 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %first_index1, align 4, !tbaa !14
  store i32 %1, ptr %first_index, align 4, !tbaa !8
  %2 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %last_index2 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %last_index2, align 8, !tbaa !15
  store i32 %3, ptr %last_index, align 4, !tbaa !8
  %4 = load ptr, ptr %vector.addr, align 8, !tbaa !4
  %local_vector3 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %local_vector3, align 8, !tbaa !17
  store ptr %5, ptr %local_vector, align 8, !tbaa !4
  %6 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.hypre_Vector, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data4, align 8, !tbaa !35
  store ptr %7, ptr %data, align 8, !tbaa !4
  %8 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %owns_data = getelementptr inbounds %struct.hypre_Vector, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %owns_data, align 4, !tbaa !68
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1299, i32 noundef 1, ptr noundef @.str.14)
  %10 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %indices.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %13 = load i32, ptr %num_values.addr, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %indices.addr, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i32, ptr %14, i64 %idxprom
  %16 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %16, ptr %index, align 4, !tbaa !8
  %17 = load i32, ptr %index, align 4, !tbaa !8
  %18 = load i32, ptr %first_index, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load i32, ptr %index, align 4, !tbaa !8
  %20 = load i32, ptr %last_index, align 4, !tbaa !8
  %cmp8 = icmp sgt i32 %19, %20
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %for.body
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1310, i32 noundef 1, ptr noundef @.str.15)
  %21 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %for.end
  %23 = load i32, ptr %j, align 4, !tbaa !8
  %24 = load i32, ptr %num_values.addr, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %23, %24
  br i1 %cmp12, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond11
  %25 = load ptr, ptr %indices.addr, align 8, !tbaa !4
  %26 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %25, i64 %idxprom14
  %27 = load i32, ptr %arrayidx15, align 4, !tbaa !8
  %28 = load i32, ptr %first_index, align 4, !tbaa !8
  %sub = sub nsw i32 %27, %28
  store i32 %sub, ptr %i, align 4, !tbaa !8
  %29 = load ptr, ptr %data, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds double, ptr %29, i64 %idxprom16
  %31 = load double, ptr %arrayidx17, align 8, !tbaa !29
  %32 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %33 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom18 = sext i32 %33 to i64
  %arrayidx19 = getelementptr inbounds double, ptr %32, i64 %idxprom18
  store double %31, ptr %arrayidx19, align 8, !tbaa !29
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %inc21 = add nsw i32 %34, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !8
  br label %for.cond11, !llvm.loop !70

for.end22:                                        ; preds = %for.cond11
  br label %if.end36

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %num_values.addr, align 4, !tbaa !8
  %36 = load ptr, ptr %local_vector, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.hypre_Vector, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %size, align 8, !tbaa !24
  %cmp23 = icmp sgt i32 %35, %37
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1327, i32 noundef 20, ptr noundef null)
  %38 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %38, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.else
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %if.end25
  %39 = load i32, ptr %j, align 4, !tbaa !8
  %40 = load i32, ptr %num_values.addr, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %39, %40
  br i1 %cmp27, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond26
  %41 = load ptr, ptr %data, align 8, !tbaa !4
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %41, i64 %idxprom29
  %43 = load double, ptr %arrayidx30, align 8, !tbaa !29
  %44 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom31 = sext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds double, ptr %44, i64 %idxprom31
  store double %43, ptr %arrayidx32, align 8, !tbaa !29
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %46 = load i32, ptr %j, align 4, !tbaa !8
  %inc34 = add nsw i32 %46, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !8
  br label %for.cond26, !llvm.loop !71

for.end35:                                        ; preds = %for.cond26
  br label %if.end36

if.end36:                                         ; preds = %for.end35, %for.end22
  %47 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then24, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_vector) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!10 = !{!11, !5, i64 56}
!11 = !{!"hypre_ParVector_struct", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !9, i64 48, !9, i64 52, !5, i64 56}
!12 = !{!11, !5, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 12}
!15 = !{!11, !9, i64 16}
!16 = !{!11, !5, i64 24}
!17 = !{!11, !5, i64 40}
!18 = !{!11, !9, i64 48}
!19 = !{!11, !9, i64 52}
!20 = !{!11, !9, i64 32}
!21 = !{!22, !9, i64 20}
!22 = !{!"", !5, i64 0, !9, i64 8, !9, i64 12, !6, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!23 = !{!6, !6, i64 0}
!24 = !{!22, !9, i64 8}
!25 = !{!22, !6, i64 16}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !6, i64 0}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !27}
!35 = !{!22, !5, i64 0}
!36 = !{!22, !9, i64 28}
!37 = !{!22, !9, i64 32}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = !{!45, !9, i64 0}
!45 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!46 = !{!45, !9, i64 4}
!47 = !{!45, !5, i64 8}
!48 = !{!45, !5, i64 16}
!49 = !{!45, !9, i64 24}
!50 = !{!45, !5, i64 32}
!51 = !{!52, !5, i64 0}
!52 = !{!"", !5, i64 0, !9, i64 8, !9, i64 12, !5, i64 16, !5, i64 24}
!53 = !{!52, !5, i64 16}
!54 = !{!52, !5, i64 24}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !27}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !27}
!68 = !{!22, !9, i64 12}
!69 = distinct !{!69, !27}
!70 = distinct !{!70, !27}
!71 = distinct !{!71, !27}

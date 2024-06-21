; ModuleID = 'samples/664.bc'
source_filename = "par_relax_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_predefined_op_t = type opaque
%struct.hypre_ParCSRMatrix_struct = type { ptr, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i64], [2 x i64], ptr, ptr, i64, i64, double, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, ptr }
%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i64, i64, i64, ptr, ptr, i64, i64, ptr, ptr, i64, i32 }
%struct.hypre_ParVector_struct = type { ptr, i64, i64, i64, [2 x i64], i64, ptr, i64, i64, ptr }
%struct.hypre_Vector = type { ptr, i64, i64, i64, i32, i64, i64, i64, i64 }

@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@ompi_mpi_op_max = external global %struct.ompi_predefined_op_t, align 1
@hypre__global_error = external global i64, align 8
@.str = private unnamed_addr constant [60 x i8] c"Error: ParCSRMatrix Memory Location Diag (%d) != Offd (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"./../parcsr_mv/_hypre_parcsr_mv.h\00", align 1

; Function Attrs: nounwind uwtable
define i64 @hypre_ParCSRMaxEigEstimateHost(ptr noundef %A, i64 noundef %scale, ptr noundef %max_eig, ptr noundef %min_eig) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %scale.addr = alloca i64, align 8
  %max_eig.addr = alloca ptr, align 8
  %min_eig.addr = alloca ptr, align 8
  %A_num_rows = alloca i64, align 8
  %A_diag_i = alloca ptr, align 8
  %A_diag_j = alloca ptr, align 8
  %A_offd_i = alloca ptr, align 8
  %A_diag_data = alloca ptr, align 8
  %A_offd_data = alloca ptr, align 8
  %diag7 = alloca ptr, align 8
  %i8 = alloca i64, align 8
  %j9 = alloca i64, align 8
  %e_max = alloca double, align 8
  %e_min = alloca double, align 8
  %send_buf = alloca [2 x double], align 16
  %recv_buf = alloca [2 x double], align 16
  %memory_location = alloca i32, align 4
  %a_ii = alloca double, align 8
  %r_i = alloca double, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %scale, ptr %scale.addr, align 8, !tbaa !8
  store ptr %max_eig, ptr %max_eig.addr, align 8, !tbaa !4
  store ptr %min_eig, ptr %min_eig.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_num_rows) #6
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %diag, align 8, !tbaa !10
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %num_rows, align 8, !tbaa !13
  store i64 %2, ptr %A_num_rows, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_i) #6
  %3 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %diag1, align 8, !tbaa !10
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %i, align 8, !tbaa !15
  store ptr %5, ptr %A_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_j) #6
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag2 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %diag2, align 8, !tbaa !10
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %j, align 8, !tbaa !16
  store ptr %8, ptr %A_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_i) #6
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %offd, align 8, !tbaa !17
  %i3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %i3, align 8, !tbaa !15
  store ptr %11, ptr %A_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_data) #6
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag4 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %diag4, align 8, !tbaa !10
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %13, i32 0, i32 10
  %14 = load ptr, ptr %data, align 8, !tbaa !18
  store ptr %14, ptr %A_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_data) #6
  %15 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %offd5 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %offd5, align 8, !tbaa !17
  %data6 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %data6, align 8, !tbaa !18
  store ptr %17, ptr %A_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %diag7) #6
  store ptr null, ptr %diag7, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %j9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_max) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_min) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %send_buf) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %recv_buf) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_location) #6
  %18 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %18)
  store i32 %call, ptr %memory_location, align 4, !tbaa !19
  %19 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %cmp = icmp sgt i64 %19, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i64, ptr %A_num_rows, align 8, !tbaa !8
  %mul = mul i64 8, %20
  %21 = load i32, ptr %memory_location, align 4, !tbaa !19
  %call10 = call ptr @hypre_MAlloc(i64 noundef %mul, i32 noundef %21)
  store ptr %call10, ptr %diag7, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %i8, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %if.end
  %22 = load i64, ptr %i8, align 8, !tbaa !8
  %23 = load i64, ptr %A_num_rows, align 8, !tbaa !8
  %cmp11 = icmp slt i64 %22, %23
  br i1 %cmp11, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_ii) #6
  store double 0.000000e+00, ptr %a_ii, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_i) #6
  store double 0.000000e+00, ptr %r_i, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper) #6
  %24 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %25 = load i64, ptr %i8, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %24, i64 %25
  %26 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %26, ptr %j9, align 8, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %j9, align 8, !tbaa !8
  %28 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %29 = load i64, ptr %i8, align 8, !tbaa !8
  %add = add nsw i64 %29, 1
  %arrayidx13 = getelementptr inbounds i64, ptr %28, i64 %add
  %30 = load i64, ptr %arrayidx13, align 8, !tbaa !8
  %cmp14 = icmp slt i64 %27, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond12
  %31 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %32 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx16 = getelementptr inbounds i64, ptr %31, i64 %32
  %33 = load i64, ptr %arrayidx16, align 8, !tbaa !8
  %34 = load i64, ptr %i8, align 8, !tbaa !8
  %cmp17 = icmp eq i64 %33, %34
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body15
  %35 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %36 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx19 = getelementptr inbounds double, ptr %35, i64 %36
  %37 = load double, ptr %arrayidx19, align 8, !tbaa !20
  store double %37, ptr %a_ii, align 8, !tbaa !20
  br label %if.end25

if.else:                                          ; preds = %for.body15
  %38 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %39 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx20 = getelementptr inbounds double, ptr %38, i64 %39
  %40 = load double, ptr %arrayidx20, align 8, !tbaa !20
  %cmp21 = fcmp ogt double %40, 0.000000e+00
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %41 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %42 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx22 = getelementptr inbounds double, ptr %41, i64 %42
  %43 = load double, ptr %arrayidx22, align 8, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %44 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %45 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx23 = getelementptr inbounds double, ptr %44, i64 %45
  %46 = load double, ptr %arrayidx23, align 8, !tbaa !20
  %fneg = fneg double %46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %43, %cond.true ], [ %fneg, %cond.false ]
  %47 = load double, ptr %r_i, align 8, !tbaa !20
  %add24 = fadd double %47, %cond
  store double %add24, ptr %r_i, align 8, !tbaa !20
  br label %if.end25

if.end25:                                         ; preds = %cond.end, %if.then18
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %48 = load i64, ptr %j9, align 8, !tbaa !8
  %inc = add nsw i64 %48, 1
  store i64 %inc, ptr %j9, align 8, !tbaa !8
  br label %for.cond12, !llvm.loop !21

for.end:                                          ; preds = %for.cond12
  %49 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %50 = load i64, ptr %i8, align 8, !tbaa !8
  %arrayidx26 = getelementptr inbounds i64, ptr %49, i64 %50
  %51 = load i64, ptr %arrayidx26, align 8, !tbaa !8
  store i64 %51, ptr %j9, align 8, !tbaa !8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc42, %for.end
  %52 = load i64, ptr %j9, align 8, !tbaa !8
  %53 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %54 = load i64, ptr %i8, align 8, !tbaa !8
  %add28 = add nsw i64 %54, 1
  %arrayidx29 = getelementptr inbounds i64, ptr %53, i64 %add28
  %55 = load i64, ptr %arrayidx29, align 8, !tbaa !8
  %cmp30 = icmp slt i64 %52, %55
  br i1 %cmp30, label %for.body31, label %for.end44

for.body31:                                       ; preds = %for.cond27
  %56 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %57 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx32 = getelementptr inbounds double, ptr %56, i64 %57
  %58 = load double, ptr %arrayidx32, align 8, !tbaa !20
  %cmp33 = fcmp ogt double %58, 0.000000e+00
  br i1 %cmp33, label %cond.true34, label %cond.false36

cond.true34:                                      ; preds = %for.body31
  %59 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %60 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx35 = getelementptr inbounds double, ptr %59, i64 %60
  %61 = load double, ptr %arrayidx35, align 8, !tbaa !20
  br label %cond.end39

cond.false36:                                     ; preds = %for.body31
  %62 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %63 = load i64, ptr %j9, align 8, !tbaa !8
  %arrayidx37 = getelementptr inbounds double, ptr %62, i64 %63
  %64 = load double, ptr %arrayidx37, align 8, !tbaa !20
  %fneg38 = fneg double %64
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false36, %cond.true34
  %cond40 = phi double [ %61, %cond.true34 ], [ %fneg38, %cond.false36 ]
  %65 = load double, ptr %r_i, align 8, !tbaa !20
  %add41 = fadd double %65, %cond40
  store double %add41, ptr %r_i, align 8, !tbaa !20
  br label %for.inc42

for.inc42:                                        ; preds = %cond.end39
  %66 = load i64, ptr %j9, align 8, !tbaa !8
  %inc43 = add nsw i64 %66, 1
  store i64 %inc43, ptr %j9, align 8, !tbaa !8
  br label %for.cond27, !llvm.loop !23

for.end44:                                        ; preds = %for.cond27
  %67 = load double, ptr %a_ii, align 8, !tbaa !20
  %68 = load double, ptr %r_i, align 8, !tbaa !20
  %sub = fsub double %67, %68
  store double %sub, ptr %lower, align 8, !tbaa !20
  %69 = load double, ptr %a_ii, align 8, !tbaa !20
  %70 = load double, ptr %r_i, align 8, !tbaa !20
  %add45 = fadd double %69, %70
  store double %add45, ptr %upper, align 8, !tbaa !20
  %71 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %cmp46 = icmp eq i64 %71, 1
  br i1 %cmp46, label %if.then47, label %if.end61

if.then47:                                        ; preds = %for.end44
  %72 = load double, ptr %a_ii, align 8, !tbaa !20
  %cmp48 = fcmp ogt double %72, 0.000000e+00
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %if.then47
  %73 = load double, ptr %a_ii, align 8, !tbaa !20
  br label %cond.end52

cond.false50:                                     ; preds = %if.then47
  %74 = load double, ptr %a_ii, align 8, !tbaa !20
  %fneg51 = fneg double %74
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false50, %cond.true49
  %cond53 = phi double [ %73, %cond.true49 ], [ %fneg51, %cond.false50 ]
  %75 = load double, ptr %lower, align 8, !tbaa !20
  %div = fdiv double %75, %cond53
  store double %div, ptr %lower, align 8, !tbaa !20
  %76 = load double, ptr %a_ii, align 8, !tbaa !20
  %cmp54 = fcmp ogt double %76, 0.000000e+00
  br i1 %cmp54, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.end52
  %77 = load double, ptr %a_ii, align 8, !tbaa !20
  br label %cond.end58

cond.false56:                                     ; preds = %cond.end52
  %78 = load double, ptr %a_ii, align 8, !tbaa !20
  %fneg57 = fneg double %78
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false56, %cond.true55
  %cond59 = phi double [ %77, %cond.true55 ], [ %fneg57, %cond.false56 ]
  %79 = load double, ptr %upper, align 8, !tbaa !20
  %div60 = fdiv double %79, %cond59
  store double %div60, ptr %upper, align 8, !tbaa !20
  br label %if.end61

if.end61:                                         ; preds = %cond.end58, %for.end44
  %80 = load i64, ptr %i8, align 8, !tbaa !8
  %tobool = icmp ne i64 %80, 0
  br i1 %tobool, label %if.then62, label %if.else73

if.then62:                                        ; preds = %if.end61
  %81 = load double, ptr %e_max, align 8, !tbaa !20
  %82 = load double, ptr %upper, align 8, !tbaa !20
  %cmp63 = fcmp olt double %81, %82
  br i1 %cmp63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %if.then62
  %83 = load double, ptr %upper, align 8, !tbaa !20
  br label %cond.end66

cond.false65:                                     ; preds = %if.then62
  %84 = load double, ptr %e_max, align 8, !tbaa !20
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true64
  %cond67 = phi double [ %83, %cond.true64 ], [ %84, %cond.false65 ]
  store double %cond67, ptr %e_max, align 8, !tbaa !20
  %85 = load double, ptr %e_min, align 8, !tbaa !20
  %86 = load double, ptr %lower, align 8, !tbaa !20
  %cmp68 = fcmp olt double %85, %86
  br i1 %cmp68, label %cond.true69, label %cond.false70

cond.true69:                                      ; preds = %cond.end66
  %87 = load double, ptr %e_min, align 8, !tbaa !20
  br label %cond.end71

cond.false70:                                     ; preds = %cond.end66
  %88 = load double, ptr %lower, align 8, !tbaa !20
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false70, %cond.true69
  %cond72 = phi double [ %87, %cond.true69 ], [ %88, %cond.false70 ]
  store double %cond72, ptr %e_min, align 8, !tbaa !20
  br label %if.end74

if.else73:                                        ; preds = %if.end61
  %89 = load double, ptr %upper, align 8, !tbaa !20
  store double %89, ptr %e_max, align 8, !tbaa !20
  %90 = load double, ptr %lower, align 8, !tbaa !20
  store double %90, ptr %e_min, align 8, !tbaa !20
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %cond.end71
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_ii) #6
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %91 = load i64, ptr %i8, align 8, !tbaa !8
  %inc76 = add nsw i64 %91, 1
  store i64 %inc76, ptr %i8, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !24

for.end77:                                        ; preds = %for.cond
  %92 = load double, ptr %e_min, align 8, !tbaa !20
  %fneg78 = fneg double %92
  %arrayidx79 = getelementptr inbounds [2 x double], ptr %send_buf, i64 0, i64 0
  store double %fneg78, ptr %arrayidx79, align 16, !tbaa !20
  %93 = load double, ptr %e_max, align 8, !tbaa !20
  %arrayidx80 = getelementptr inbounds [2 x double], ptr %send_buf, i64 0, i64 1
  store double %93, ptr %arrayidx80, align 8, !tbaa !20
  %arraydecay = getelementptr inbounds [2 x double], ptr %send_buf, i64 0, i64 0
  %arraydecay81 = getelementptr inbounds [2 x double], ptr %recv_buf, i64 0, i64 0
  %94 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %comm, align 8, !tbaa !25
  %call82 = call i64 @hypre_MPI_Allreduce(ptr noundef %arraydecay, ptr noundef %arraydecay81, i64 noundef 2, ptr noundef @ompi_mpi_double, ptr noundef @ompi_mpi_op_max, ptr noundef %95)
  %arrayidx83 = getelementptr inbounds [2 x double], ptr %recv_buf, i64 0, i64 0
  %96 = load double, ptr %arrayidx83, align 16, !tbaa !20
  %fneg84 = fneg double %96
  store double %fneg84, ptr %e_min, align 8, !tbaa !20
  %arrayidx85 = getelementptr inbounds [2 x double], ptr %recv_buf, i64 0, i64 1
  %97 = load double, ptr %arrayidx85, align 8, !tbaa !20
  store double %97, ptr %e_max, align 8, !tbaa !20
  %98 = load double, ptr %e_min, align 8, !tbaa !20
  %cmp86 = fcmp ogt double %98, 0.000000e+00
  br i1 %cmp86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %for.end77
  %99 = load double, ptr %e_min, align 8, !tbaa !20
  br label %cond.end90

cond.false88:                                     ; preds = %for.end77
  %100 = load double, ptr %e_min, align 8, !tbaa !20
  %fneg89 = fneg double %100
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false88, %cond.true87
  %cond91 = phi double [ %99, %cond.true87 ], [ %fneg89, %cond.false88 ]
  %101 = load double, ptr %e_max, align 8, !tbaa !20
  %cmp92 = fcmp ogt double %101, 0.000000e+00
  br i1 %cmp92, label %cond.true93, label %cond.false94

cond.true93:                                      ; preds = %cond.end90
  %102 = load double, ptr %e_max, align 8, !tbaa !20
  br label %cond.end96

cond.false94:                                     ; preds = %cond.end90
  %103 = load double, ptr %e_max, align 8, !tbaa !20
  %fneg95 = fneg double %103
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false94, %cond.true93
  %cond97 = phi double [ %102, %cond.true93 ], [ %fneg95, %cond.false94 ]
  %cmp98 = fcmp ogt double %cond91, %cond97
  br i1 %cmp98, label %if.then99, label %if.else105

if.then99:                                        ; preds = %cond.end96
  %104 = load double, ptr %e_min, align 8, !tbaa !20
  %105 = load ptr, ptr %min_eig.addr, align 8, !tbaa !4
  store double %104, ptr %105, align 8, !tbaa !20
  %106 = load double, ptr %e_max, align 8, !tbaa !20
  %cmp100 = fcmp olt double 0.000000e+00, %106
  br i1 %cmp100, label %cond.true101, label %cond.false102

cond.true101:                                     ; preds = %if.then99
  br label %cond.end103

cond.false102:                                    ; preds = %if.then99
  %107 = load double, ptr %e_max, align 8, !tbaa !20
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false102, %cond.true101
  %cond104 = phi double [ 0.000000e+00, %cond.true101 ], [ %107, %cond.false102 ]
  %108 = load ptr, ptr %max_eig.addr, align 8, !tbaa !4
  store double %cond104, ptr %108, align 8, !tbaa !20
  br label %if.end111

if.else105:                                       ; preds = %cond.end96
  %109 = load double, ptr %e_min, align 8, !tbaa !20
  %cmp106 = fcmp olt double %109, 0.000000e+00
  br i1 %cmp106, label %cond.true107, label %cond.false108

cond.true107:                                     ; preds = %if.else105
  br label %cond.end109

cond.false108:                                    ; preds = %if.else105
  %110 = load double, ptr %e_min, align 8, !tbaa !20
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false108, %cond.true107
  %cond110 = phi double [ 0.000000e+00, %cond.true107 ], [ %110, %cond.false108 ]
  %111 = load ptr, ptr %min_eig.addr, align 8, !tbaa !4
  store double %cond110, ptr %111, align 8, !tbaa !20
  %112 = load double, ptr %e_max, align 8, !tbaa !20
  %113 = load ptr, ptr %max_eig.addr, align 8, !tbaa !4
  store double %112, ptr %113, align 8, !tbaa !20
  br label %if.end111

if.end111:                                        ; preds = %cond.end109, %cond.end103
  %114 = load ptr, ptr %diag7, align 8, !tbaa !4
  %115 = load i32, ptr %memory_location, align 4, !tbaa !19
  call void @hypre_Free(ptr noundef %114, i32 noundef %115)
  store ptr null, ptr %diag7, align 8, !tbaa !4
  %116 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_location) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %recv_buf) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %send_buf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_min) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_max) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %j9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %diag7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_num_rows) #6
  ret i64 %116
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %matrix) #2 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %diag) #6
  %1 = load ptr, ptr %matrix.addr, align 8, !tbaa !4
  %diag1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %diag1, align 8, !tbaa !10
  store ptr %2, ptr %diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %offd) #6
  %3 = load ptr, ptr %matrix.addr, align 8, !tbaa !4
  %offd2 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %offd2, align 8, !tbaa !17
  store ptr %4, ptr %offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_diag) #6
  %5 = load ptr, ptr %diag, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load ptr, ptr %diag, align 8, !tbaa !4
  %memory_location = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %memory_location, align 8, !tbaa !26
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, ptr %memory_diag, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %memory_offd) #6
  %8 = load ptr, ptr %offd, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %cond.true5, label %cond.false7

cond.true5:                                       ; preds = %cond.end
  %9 = load ptr, ptr %offd, align 8, !tbaa !4
  %memory_location6 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %9, i32 0, i32 13
  %10 = load i32, ptr %memory_location6, align 8, !tbaa !26
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %10, %cond.true5 ], [ -1, %cond.false7 ]
  store i32 %cond9, ptr %memory_offd, align 4, !tbaa !19
  %11 = load ptr, ptr %diag, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %11, null
  br i1 %tobool10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %cond.end8
  %12 = load ptr, ptr %offd, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %12, null
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %13 = load i32, ptr %memory_diag, align 4, !tbaa !19
  %14 = load i32, ptr %memory_offd, align 4, !tbaa !19
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 1024, ptr %err_msg) #6
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %err_msg, i64 0, i64 0
  %15 = load i32, ptr %memory_diag, align 4, !tbaa !19
  %16 = load i32, ptr %memory_offd, align 4, !tbaa !19
  %call = call i64 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %arraydecay, ptr noundef @.str, i32 noundef %15, i32 noundef %16)
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %err_msg, i64 0, i64 0
  call void @hypre_error_handler(ptr noundef @.str.1, i64 noundef 425, i64 noundef 2, ptr noundef %arraydecay14)
  br label %do.body

do.body:                                          ; preds = %if.then13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1024, ptr %err_msg) #6
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  %17 = load i32, ptr %memory_diag, align 4, !tbaa !19
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true, %cond.end8
  %18 = load ptr, ptr %diag, align 8, !tbaa !4
  %tobool17 = icmp ne ptr %18, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  %19 = load i32, ptr %memory_diag, align 4, !tbaa !19
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %20 = load ptr, ptr %offd, align 8, !tbaa !4
  %tobool20 = icmp ne ptr %20, null
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  %21 = load i32, ptr %memory_offd, align 4, !tbaa !19
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then18, %if.end15, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_offd) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %memory_diag) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %offd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %diag) #6
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare ptr @hypre_MAlloc(i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i64 @hypre_MPI_Allreduce(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @hypre_Free(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define i64 @hypre_ParCSRMaxEigEstimate(ptr noundef %A, i64 noundef %scale, ptr noundef %max_eig, ptr noundef %min_eig) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %scale.addr = alloca i64, align 8
  %max_eig.addr = alloca ptr, align 8
  %min_eig.addr = alloca ptr, align 8
  %ierr = alloca i64, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %scale, ptr %scale.addr, align 8, !tbaa !8
  store ptr %max_eig, ptr %max_eig.addr, align 8, !tbaa !4
  store ptr %min_eig, ptr %min_eig.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ierr) #6
  store i64 0, ptr %ierr, align 8, !tbaa !8
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %1 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %max_eig.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %min_eig.addr, align 8, !tbaa !4
  %call = call i64 @hypre_ParCSRMaxEigEstimateHost(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  store i64 %call, ptr %ierr, align 8, !tbaa !8
  %4 = load i64, ptr %ierr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ierr) #6
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @hypre_ParCSRMaxEigEstimateCG(ptr noundef %A, i64 noundef %scale, i64 noundef %max_iter, ptr noundef %max_eig, ptr noundef %min_eig) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %scale.addr = alloca i64, align 8
  %max_iter.addr = alloca i64, align 8
  %max_eig.addr = alloca ptr, align 8
  %min_eig.addr = alloca ptr, align 8
  %ierr = alloca i64, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %scale, ptr %scale.addr, align 8, !tbaa !8
  store i64 %max_iter, ptr %max_iter.addr, align 8, !tbaa !8
  store ptr %max_eig, ptr %max_eig.addr, align 8, !tbaa !4
  store ptr %min_eig, ptr %min_eig.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ierr) #6
  store i64 0, ptr %ierr, align 8, !tbaa !8
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %1 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %2 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %max_eig.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %min_eig.addr, align 8, !tbaa !4
  %call = call i64 @hypre_ParCSRMaxEigEstimateCGHost(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  store i64 %call, ptr %ierr, align 8, !tbaa !8
  %5 = load i64, ptr %ierr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ierr) #6
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @hypre_ParCSRMaxEigEstimateCGHost(ptr noundef %A, i64 noundef %scale, i64 noundef %max_iter, ptr noundef %max_eig, ptr noundef %min_eig) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %scale.addr = alloca i64, align 8
  %max_iter.addr = alloca i64, align 8
  %max_eig.addr = alloca ptr, align 8
  %min_eig.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %err = alloca i64, align 8
  %p = alloca ptr, align 8
  %s = alloca ptr, align 8
  %r = alloca ptr, align 8
  %ds = alloca ptr, align 8
  %u = alloca ptr, align 8
  %tridiag = alloca ptr, align 8
  %trioffd = alloca ptr, align 8
  %lambda_max = alloca double, align 8
  %beta = alloca double, align 8
  %gamma = alloca double, align 8
  %alpha = alloca double, align 8
  %sdotp = alloca double, align 8
  %gamma_old = alloca double, align 8
  %alphainv = alloca double, align 8
  %lambda_min = alloca double, align 8
  %s_data = alloca ptr, align 8
  %p_data = alloca ptr, align 8
  %ds_data = alloca ptr, align 8
  %u_data = alloca ptr, align 8
  %local_size = alloca i64, align 8
  %size = alloca i64, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i64 %scale, ptr %scale.addr, align 8, !tbaa !8
  store i64 %max_iter, ptr %max_iter.addr, align 8, !tbaa !8
  store ptr %max_eig, ptr %max_eig.addr, align 8, !tbaa !4
  store ptr %min_eig, ptr %min_eig.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tridiag) #6
  store ptr null, ptr %tridiag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %trioffd) #6
  store ptr null, ptr %trioffd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lambda_max) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #6
  store double 0.000000e+00, ptr %gamma, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdotp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma_old) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %alphainv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lambda_min) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds_data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %u_data) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_size) #6
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %diag, align 8, !tbaa !10
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %num_rows, align 8, !tbaa !13
  store i64 %2, ptr %local_size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6
  %3 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %global_num_rows, align 8, !tbaa !27
  store i64 %4, ptr %size, align 8, !tbaa !8
  %5 = load i64, ptr %size, align 8, !tbaa !8
  %6 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %size, align 8, !tbaa !8
  store i64 %7, ptr %max_iter.addr, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %comm, align 8, !tbaa !25
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %global_num_rows1, align 8, !tbaa !27
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %12, i32 0, i32 14
  %arraydecay = getelementptr inbounds [2 x i64], ptr %row_starts, i64 0, i64 0
  %call = call ptr @hypre_ParVectorCreate(ptr noundef %9, i64 noundef %11, ptr noundef %arraydecay)
  store ptr %call, ptr %r, align 8, !tbaa !4
  %13 = load ptr, ptr %r, align 8, !tbaa !4
  %call2 = call i64 @hypre_ParVectorInitialize(ptr noundef %13)
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm3 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %comm3, align 8, !tbaa !25
  %16 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows4 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %global_num_rows4, align 8, !tbaa !27
  %18 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts5 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %18, i32 0, i32 14
  %arraydecay6 = getelementptr inbounds [2 x i64], ptr %row_starts5, i64 0, i64 0
  %call7 = call ptr @hypre_ParVectorCreate(ptr noundef %15, i64 noundef %17, ptr noundef %arraydecay6)
  store ptr %call7, ptr %p, align 8, !tbaa !4
  %19 = load ptr, ptr %p, align 8, !tbaa !4
  %call8 = call i64 @hypre_ParVectorInitialize(ptr noundef %19)
  %20 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm9 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %comm9, align 8, !tbaa !25
  %22 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows10 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %22, i32 0, i32 1
  %23 = load i64, ptr %global_num_rows10, align 8, !tbaa !27
  %24 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts11 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %24, i32 0, i32 14
  %arraydecay12 = getelementptr inbounds [2 x i64], ptr %row_starts11, i64 0, i64 0
  %call13 = call ptr @hypre_ParVectorCreate(ptr noundef %21, i64 noundef %23, ptr noundef %arraydecay12)
  store ptr %call13, ptr %s, align 8, !tbaa !4
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  %call14 = call i64 @hypre_ParVectorInitialize(ptr noundef %25)
  %26 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm15 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %comm15, align 8, !tbaa !25
  %28 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows16 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %28, i32 0, i32 1
  %29 = load i64, ptr %global_num_rows16, align 8, !tbaa !27
  %30 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts17 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %30, i32 0, i32 14
  %arraydecay18 = getelementptr inbounds [2 x i64], ptr %row_starts17, i64 0, i64 0
  %call19 = call ptr @hypre_ParVectorCreate(ptr noundef %27, i64 noundef %29, ptr noundef %arraydecay18)
  store ptr %call19, ptr %ds, align 8, !tbaa !4
  %31 = load ptr, ptr %ds, align 8, !tbaa !4
  %call20 = call i64 @hypre_ParVectorInitialize(ptr noundef %31)
  %32 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm21 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %comm21, align 8, !tbaa !25
  %34 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows22 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %34, i32 0, i32 1
  %35 = load i64, ptr %global_num_rows22, align 8, !tbaa !27
  %36 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts23 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %36, i32 0, i32 14
  %arraydecay24 = getelementptr inbounds [2 x i64], ptr %row_starts23, i64 0, i64 0
  %call25 = call ptr @hypre_ParVectorCreate(ptr noundef %33, i64 noundef %35, ptr noundef %arraydecay24)
  store ptr %call25, ptr %u, align 8, !tbaa !4
  %37 = load ptr, ptr %u, align 8, !tbaa !4
  %call26 = call i64 @hypre_ParVectorInitialize(ptr noundef %37)
  %38 = load ptr, ptr %s, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %local_vector, align 8, !tbaa !28
  %data = getelementptr inbounds %struct.hypre_Vector, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %data, align 8, !tbaa !30
  store ptr %40, ptr %s_data, align 8, !tbaa !4
  %41 = load ptr, ptr %p, align 8, !tbaa !4
  %local_vector27 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %local_vector27, align 8, !tbaa !28
  %data28 = getelementptr inbounds %struct.hypre_Vector, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %data28, align 8, !tbaa !30
  store ptr %43, ptr %p_data, align 8, !tbaa !4
  %44 = load ptr, ptr %ds, align 8, !tbaa !4
  %local_vector29 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %local_vector29, align 8, !tbaa !28
  %data30 = getelementptr inbounds %struct.hypre_Vector, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %data30, align 8, !tbaa !30
  store ptr %46, ptr %ds_data, align 8, !tbaa !4
  %47 = load ptr, ptr %u, align 8, !tbaa !4
  %local_vector31 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %47, i32 0, i32 6
  %48 = load ptr, ptr %local_vector31, align 8, !tbaa !28
  %data32 = getelementptr inbounds %struct.hypre_Vector, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %data32, align 8, !tbaa !30
  store ptr %49, ptr %u_data, align 8, !tbaa !4
  %50 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %add = add nsw i64 %50, 1
  %call33 = call ptr @hypre_CAlloc(i64 noundef %add, i64 noundef 8, i32 noundef 0)
  store ptr %call33, ptr %tridiag, align 8, !tbaa !4
  %51 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %add34 = add nsw i64 %51, 1
  %call35 = call ptr @hypre_CAlloc(i64 noundef %add34, i64 noundef 8, i32 noundef 0)
  store ptr %call35, ptr %trioffd, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %52 = load i64, ptr %i, align 8, !tbaa !8
  %53 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %add36 = add nsw i64 %53, 1
  %cmp37 = icmp slt i64 %52, %add36
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load ptr, ptr %tridiag, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %54, i64 %55
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !20
  %56 = load ptr, ptr %trioffd, align 8, !tbaa !4
  %57 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx38 = getelementptr inbounds double, ptr %56, i64 %57
  store double 0.000000e+00, ptr %arrayidx38, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %58, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %59 = load ptr, ptr %r, align 8, !tbaa !4
  %call39 = call i64 @hypre_ParVectorSetRandomValues(ptr noundef %59, i64 noundef 1)
  %60 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %tobool = icmp ne i64 %60, 0
  br i1 %tobool, label %if.then40, label %if.else

if.then40:                                        ; preds = %for.end
  %61 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag41 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %61, i32 0, i32 8
  %62 = load ptr, ptr %diag41, align 8, !tbaa !10
  %63 = load ptr, ptr %ds_data, align 8, !tbaa !4
  call void @hypre_CSRMatrixExtractDiagonal(ptr noundef %62, ptr noundef %63, i64 noundef 4)
  br label %if.end43

if.else:                                          ; preds = %for.end
  %64 = load ptr, ptr %ds, align 8, !tbaa !4
  %call42 = call i64 @hypre_ParVectorSetConstantValues(ptr noundef %64, double noundef 1.000000e+00)
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then40
  %65 = load ptr, ptr %r, align 8, !tbaa !4
  %66 = load ptr, ptr %p, align 8, !tbaa !4
  %call44 = call double @hypre_ParVectorInnerProd(ptr noundef %65, ptr noundef %66)
  store double %call44, ptr %gamma, align 8, !tbaa !20
  store double 1.000000e+00, ptr %beta, align 8, !tbaa !20
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %if.end43
  %67 = load i64, ptr %i, align 8, !tbaa !8
  %68 = load i64, ptr %max_iter.addr, align 8, !tbaa !8
  %cmp45 = icmp slt i64 %67, %68
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %69 = load ptr, ptr %r, align 8, !tbaa !4
  %70 = load ptr, ptr %s, align 8, !tbaa !4
  %call46 = call i64 @hypre_ParVectorCopy(ptr noundef %69, ptr noundef %70)
  %71 = load double, ptr %gamma, align 8, !tbaa !20
  store double %71, ptr %gamma_old, align 8, !tbaa !20
  %72 = load ptr, ptr %r, align 8, !tbaa !4
  %73 = load ptr, ptr %s, align 8, !tbaa !4
  %call47 = call double @hypre_ParVectorInnerProd(ptr noundef %72, ptr noundef %73)
  store double %call47, ptr %gamma, align 8, !tbaa !20
  %74 = load double, ptr %gamma, align 8, !tbaa !20
  %cmp48 = fcmp olt double %74, 0x3CB0000000000000
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %while.body
  br label %while.end

if.end50:                                         ; preds = %while.body
  %75 = load i64, ptr %i, align 8, !tbaa !8
  %cmp51 = icmp eq i64 %75, 0
  br i1 %cmp51, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.end50
  store double 1.000000e+00, ptr %beta, align 8, !tbaa !20
  %76 = load ptr, ptr %s, align 8, !tbaa !4
  %77 = load ptr, ptr %p, align 8, !tbaa !4
  %call53 = call i64 @hypre_ParVectorCopy(ptr noundef %76, ptr noundef %77)
  br label %if.end64

if.else54:                                        ; preds = %if.end50
  %78 = load double, ptr %gamma, align 8, !tbaa !20
  %79 = load double, ptr %gamma_old, align 8, !tbaa !20
  %div = fdiv double %78, %79
  store double %div, ptr %beta, align 8, !tbaa !20
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc61, %if.else54
  %80 = load i64, ptr %j, align 8, !tbaa !8
  %81 = load i64, ptr %local_size, align 8, !tbaa !8
  %cmp56 = icmp slt i64 %80, %81
  br i1 %cmp56, label %for.body57, label %for.end63

for.body57:                                       ; preds = %for.cond55
  %82 = load ptr, ptr %s_data, align 8, !tbaa !4
  %83 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx58 = getelementptr inbounds double, ptr %82, i64 %83
  %84 = load double, ptr %arrayidx58, align 8, !tbaa !20
  %85 = load double, ptr %beta, align 8, !tbaa !20
  %86 = load ptr, ptr %p_data, align 8, !tbaa !4
  %87 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx59 = getelementptr inbounds double, ptr %86, i64 %87
  %88 = load double, ptr %arrayidx59, align 8, !tbaa !20
  %89 = call double @llvm.fmuladd.f64(double %85, double %88, double %84)
  %90 = load ptr, ptr %p_data, align 8, !tbaa !4
  %91 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx60 = getelementptr inbounds double, ptr %90, i64 %91
  store double %89, ptr %arrayidx60, align 8, !tbaa !20
  br label %for.inc61

for.inc61:                                        ; preds = %for.body57
  %92 = load i64, ptr %j, align 8, !tbaa !8
  %inc62 = add nsw i64 %92, 1
  store i64 %inc62, ptr %j, align 8, !tbaa !8
  br label %for.cond55, !llvm.loop !33

for.end63:                                        ; preds = %for.cond55
  br label %if.end64

if.end64:                                         ; preds = %for.end63, %if.then52
  %93 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %tobool65 = icmp ne i64 %93, 0
  br i1 %tobool65, label %if.then66, label %if.else87

if.then66:                                        ; preds = %if.end64
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc73, %if.then66
  %94 = load i64, ptr %j, align 8, !tbaa !8
  %95 = load i64, ptr %local_size, align 8, !tbaa !8
  %cmp68 = icmp slt i64 %94, %95
  br i1 %cmp68, label %for.body69, label %for.end75

for.body69:                                       ; preds = %for.cond67
  %96 = load ptr, ptr %ds_data, align 8, !tbaa !4
  %97 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx70 = getelementptr inbounds double, ptr %96, i64 %97
  %98 = load double, ptr %arrayidx70, align 8, !tbaa !20
  %99 = load ptr, ptr %p_data, align 8, !tbaa !4
  %100 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx71 = getelementptr inbounds double, ptr %99, i64 %100
  %101 = load double, ptr %arrayidx71, align 8, !tbaa !20
  %mul = fmul double %98, %101
  %102 = load ptr, ptr %u_data, align 8, !tbaa !4
  %103 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx72 = getelementptr inbounds double, ptr %102, i64 %103
  store double %mul, ptr %arrayidx72, align 8, !tbaa !20
  br label %for.inc73

for.inc73:                                        ; preds = %for.body69
  %104 = load i64, ptr %j, align 8, !tbaa !8
  %inc74 = add nsw i64 %104, 1
  store i64 %inc74, ptr %j, align 8, !tbaa !8
  br label %for.cond67, !llvm.loop !34

for.end75:                                        ; preds = %for.cond67
  %105 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %u, align 8, !tbaa !4
  %107 = load ptr, ptr %s, align 8, !tbaa !4
  %call76 = call i64 @hypre_ParCSRMatrixMatvec(double noundef 1.000000e+00, ptr noundef %105, ptr noundef %106, double noundef 0.000000e+00, ptr noundef %107)
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc84, %for.end75
  %108 = load i64, ptr %j, align 8, !tbaa !8
  %109 = load i64, ptr %local_size, align 8, !tbaa !8
  %cmp78 = icmp slt i64 %108, %109
  br i1 %cmp78, label %for.body79, label %for.end86

for.body79:                                       ; preds = %for.cond77
  %110 = load ptr, ptr %ds_data, align 8, !tbaa !4
  %111 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx80 = getelementptr inbounds double, ptr %110, i64 %111
  %112 = load double, ptr %arrayidx80, align 8, !tbaa !20
  %113 = load ptr, ptr %s_data, align 8, !tbaa !4
  %114 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx81 = getelementptr inbounds double, ptr %113, i64 %114
  %115 = load double, ptr %arrayidx81, align 8, !tbaa !20
  %mul82 = fmul double %112, %115
  %116 = load ptr, ptr %s_data, align 8, !tbaa !4
  %117 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx83 = getelementptr inbounds double, ptr %116, i64 %117
  store double %mul82, ptr %arrayidx83, align 8, !tbaa !20
  br label %for.inc84

for.inc84:                                        ; preds = %for.body79
  %118 = load i64, ptr %j, align 8, !tbaa !8
  %inc85 = add nsw i64 %118, 1
  store i64 %inc85, ptr %j, align 8, !tbaa !8
  br label %for.cond77, !llvm.loop !35

for.end86:                                        ; preds = %for.cond77
  br label %if.end89

if.else87:                                        ; preds = %if.end64
  %119 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %p, align 8, !tbaa !4
  %121 = load ptr, ptr %s, align 8, !tbaa !4
  %call88 = call i64 @hypre_ParCSRMatrixMatvec(double noundef 1.000000e+00, ptr noundef %119, ptr noundef %120, double noundef 0.000000e+00, ptr noundef %121)
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %for.end86
  %122 = load ptr, ptr %s, align 8, !tbaa !4
  %123 = load ptr, ptr %p, align 8, !tbaa !4
  %call90 = call double @hypre_ParVectorInnerProd(ptr noundef %122, ptr noundef %123)
  store double %call90, ptr %sdotp, align 8, !tbaa !20
  %124 = load double, ptr %gamma, align 8, !tbaa !20
  %125 = load double, ptr %sdotp, align 8, !tbaa !20
  %div91 = fdiv double %124, %125
  store double %div91, ptr %alpha, align 8, !tbaa !20
  %126 = load double, ptr %alpha, align 8, !tbaa !20
  %div92 = fdiv double 1.000000e+00, %126
  store double %div92, ptr %alphainv, align 8, !tbaa !20
  %127 = load double, ptr %alphainv, align 8, !tbaa !20
  %128 = load ptr, ptr %tridiag, align 8, !tbaa !4
  %129 = load i64, ptr %i, align 8, !tbaa !8
  %add93 = add nsw i64 %129, 1
  %arrayidx94 = getelementptr inbounds double, ptr %128, i64 %add93
  store double %127, ptr %arrayidx94, align 8, !tbaa !20
  %130 = load double, ptr %beta, align 8, !tbaa !20
  %131 = load ptr, ptr %tridiag, align 8, !tbaa !4
  %132 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx95 = getelementptr inbounds double, ptr %131, i64 %132
  %133 = load double, ptr %arrayidx95, align 8, !tbaa !20
  %mul96 = fmul double %133, %130
  store double %mul96, ptr %arrayidx95, align 8, !tbaa !20
  %134 = load double, ptr %alphainv, align 8, !tbaa !20
  %135 = load ptr, ptr %tridiag, align 8, !tbaa !4
  %136 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx97 = getelementptr inbounds double, ptr %135, i64 %136
  %137 = load double, ptr %arrayidx97, align 8, !tbaa !20
  %add98 = fadd double %137, %134
  store double %add98, ptr %arrayidx97, align 8, !tbaa !20
  %138 = load double, ptr %alphainv, align 8, !tbaa !20
  %139 = load ptr, ptr %trioffd, align 8, !tbaa !4
  %140 = load i64, ptr %i, align 8, !tbaa !8
  %add99 = add nsw i64 %140, 1
  %arrayidx100 = getelementptr inbounds double, ptr %139, i64 %add99
  store double %138, ptr %arrayidx100, align 8, !tbaa !20
  %141 = load double, ptr %beta, align 8, !tbaa !20
  %call101 = call double @sqrt(double noundef %141) #6
  %142 = load ptr, ptr %trioffd, align 8, !tbaa !4
  %143 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx102 = getelementptr inbounds double, ptr %142, i64 %143
  %144 = load double, ptr %arrayidx102, align 8, !tbaa !20
  %mul103 = fmul double %144, %call101
  store double %mul103, ptr %arrayidx102, align 8, !tbaa !20
  %145 = load double, ptr %alpha, align 8, !tbaa !20
  %fneg = fneg double %145
  %146 = load ptr, ptr %s, align 8, !tbaa !4
  %147 = load ptr, ptr %r, align 8, !tbaa !4
  %call104 = call i64 @hypre_ParVectorAxpy(double noundef %fneg, ptr noundef %146, ptr noundef %147)
  %148 = load i64, ptr %i, align 8, !tbaa !8
  %inc105 = add nsw i64 %148, 1
  store i64 %inc105, ptr %i, align 8, !tbaa !8
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %if.then49, %while.cond
  %149 = load ptr, ptr %tridiag, align 8, !tbaa !4
  %150 = load ptr, ptr %trioffd, align 8, !tbaa !4
  %call106 = call i64 @hypre_LINPACKcgtql1(ptr noundef %i, ptr noundef %149, ptr noundef %150, ptr noundef %err)
  %151 = load ptr, ptr %tridiag, align 8, !tbaa !4
  %152 = load i64, ptr %i, align 8, !tbaa !8
  %sub = sub nsw i64 %152, 1
  %arrayidx107 = getelementptr inbounds double, ptr %151, i64 %sub
  %153 = load double, ptr %arrayidx107, align 8, !tbaa !20
  store double %153, ptr %lambda_max, align 8, !tbaa !20
  %154 = load ptr, ptr %tridiag, align 8, !tbaa !4
  %arrayidx108 = getelementptr inbounds double, ptr %154, i64 0
  %155 = load double, ptr %arrayidx108, align 8, !tbaa !20
  store double %155, ptr %lambda_min, align 8, !tbaa !20
  %156 = load ptr, ptr %tridiag, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %156, i32 noundef 0)
  store ptr null, ptr %tridiag, align 8, !tbaa !4
  %157 = load ptr, ptr %trioffd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %157, i32 noundef 0)
  store ptr null, ptr %trioffd, align 8, !tbaa !4
  %158 = load ptr, ptr %r, align 8, !tbaa !4
  %call109 = call i64 @hypre_ParVectorDestroy(ptr noundef %158)
  %159 = load ptr, ptr %s, align 8, !tbaa !4
  %call110 = call i64 @hypre_ParVectorDestroy(ptr noundef %159)
  %160 = load ptr, ptr %p, align 8, !tbaa !4
  %call111 = call i64 @hypre_ParVectorDestroy(ptr noundef %160)
  %161 = load ptr, ptr %ds, align 8, !tbaa !4
  %call112 = call i64 @hypre_ParVectorDestroy(ptr noundef %161)
  %162 = load ptr, ptr %u, align 8, !tbaa !4
  %call113 = call i64 @hypre_ParVectorDestroy(ptr noundef %162)
  %163 = load double, ptr %lambda_max, align 8, !tbaa !20
  %164 = load ptr, ptr %max_eig.addr, align 8, !tbaa !4
  store double %163, ptr %164, align 8, !tbaa !20
  %165 = load double, ptr %lambda_min, align 8, !tbaa !20
  %166 = load ptr, ptr %min_eig.addr, align 8, !tbaa !4
  store double %165, ptr %166, align 8, !tbaa !20
  %167 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %u_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lambda_min) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %alphainv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma_old) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdotp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lambda_max) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %trioffd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tridiag) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  ret i64 %167
}

declare ptr @hypre_ParVectorCreate(ptr noundef, i64 noundef, ptr noundef) #3

declare i64 @hypre_ParVectorInitialize(ptr noundef) #3

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #3

declare i64 @hypre_ParVectorSetRandomValues(ptr noundef, i64 noundef) #3

declare void @hypre_CSRMatrixExtractDiagonal(ptr noundef, ptr noundef, i64 noundef) #3

declare i64 @hypre_ParVectorSetConstantValues(ptr noundef, double noundef) #3

declare double @hypre_ParVectorInnerProd(ptr noundef, ptr noundef) #3

declare i64 @hypre_ParVectorCopy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i64 @hypre_ParCSRMatrixMatvec(double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #5

declare i64 @hypre_ParVectorAxpy(double noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i64 @hypre_LINPACKcgtql1(ptr noundef %n, ptr noundef %d, ptr noundef %e, ptr noundef %ierr) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  %i__1 = alloca i64, align 8
  %i__2 = alloca i64, align 8
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %c_b10 = alloca double, align 8
  %c = alloca double, align 8
  %f = alloca double, align 8
  %g = alloca double, align 8
  %h = alloca double, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca i64, align 8
  %m = alloca i64, align 8
  %p = alloca double, align 8
  %r = alloca double, align 8
  %s = alloca double, align 8
  %c2 = alloca double, align 8
  %c3 = alloca double, align 8
  %l1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %s2 = alloca double, align 8
  %ii = alloca i64, align 8
  %dl1 = alloca double, align 8
  %el1 = alloca double, align 8
  %mml = alloca i64, align 8
  %tst1 = alloca double, align 8
  %tst2 = alloca double, align 8
  %ds = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_b10) #6
  store double 1.000000e+00, ptr %c_b10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %c3) #6
  store double 0.000000e+00, ptr %c3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %l1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #6
  store double 0.000000e+00, ptr %s2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %dl1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %el1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %mml) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tst1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tst2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #6
  %0 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %e.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %d.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 0, ptr %2, align 8, !tbaa !8
  %3 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %4 = load i64, ptr %3, align 8, !tbaa !8
  %cmp = icmp eq i64 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %L1001

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %5, align 8, !tbaa !8
  store i64 %6, ptr %i__1, align 8, !tbaa !8
  store i64 2, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, ptr %i, align 8, !tbaa !8
  %8 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp2 = icmp sle i64 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %10 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %9, i64 %10
  %11 = load double, ptr %arrayidx, align 8, !tbaa !20
  %12 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %sub = sub nsw i64 %13, 1
  %arrayidx3 = getelementptr inbounds double, ptr %12, i64 %sub
  store double %11, ptr %arrayidx3, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, ptr %f, align 8, !tbaa !20
  store double 0.000000e+00, ptr %tst1, align 8, !tbaa !20
  %15 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load i64, ptr %16, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds double, ptr %15, i64 %17
  store double 0.000000e+00, ptr %arrayidx4, align 8, !tbaa !20
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !8
  store i64 %19, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %l, align 8, !tbaa !8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc150, %for.end
  %20 = load i64, ptr %l, align 8, !tbaa !8
  %21 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp6 = icmp sle i64 %20, %21
  br i1 %cmp6, label %for.body7, label %for.end152

for.body7:                                        ; preds = %for.cond5
  store i64 0, ptr %j, align 8, !tbaa !8
  %22 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %23 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds double, ptr %22, i64 %23
  %24 = load double, ptr %arrayidx8, align 8, !tbaa !20
  store double %24, ptr %d__1, align 8, !tbaa !20
  %25 = load double, ptr %d__1, align 8, !tbaa !20
  %cmp9 = fcmp ogt double %25, 0.000000e+00
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body7
  %26 = load double, ptr %d__1, align 8, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %for.body7
  %27 = load double, ptr %d__1, align 8, !tbaa !20
  %fneg = fneg double %27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %26, %cond.true ], [ %fneg, %cond.false ]
  %28 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %29 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx10 = getelementptr inbounds double, ptr %28, i64 %29
  %30 = load double, ptr %arrayidx10, align 8, !tbaa !20
  store double %30, ptr %d__2, align 8, !tbaa !20
  %31 = load double, ptr %d__2, align 8, !tbaa !20
  %cmp11 = fcmp ogt double %31, 0.000000e+00
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  %32 = load double, ptr %d__2, align 8, !tbaa !20
  br label %cond.end15

cond.false13:                                     ; preds = %cond.end
  %33 = load double, ptr %d__2, align 8, !tbaa !20
  %fneg14 = fneg double %33
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true12
  %cond16 = phi double [ %32, %cond.true12 ], [ %fneg14, %cond.false13 ]
  %add = fadd double %cond, %cond16
  store double %add, ptr %h, align 8, !tbaa !20
  %34 = load double, ptr %tst1, align 8, !tbaa !20
  %35 = load double, ptr %h, align 8, !tbaa !20
  %cmp17 = fcmp olt double %34, %35
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %cond.end15
  %36 = load double, ptr %h, align 8, !tbaa !20
  store double %36, ptr %tst1, align 8, !tbaa !20
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %cond.end15
  %37 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %38 = load i64, ptr %37, align 8, !tbaa !8
  store i64 %38, ptr %i__2, align 8, !tbaa !8
  %39 = load i64, ptr %l, align 8, !tbaa !8
  store i64 %39, ptr %m, align 8, !tbaa !8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %if.end19
  %40 = load i64, ptr %m, align 8, !tbaa !8
  %41 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp21 = icmp sle i64 %40, %41
  br i1 %cmp21, label %for.body22, label %for.end36

for.body22:                                       ; preds = %for.cond20
  %42 = load double, ptr %tst1, align 8, !tbaa !20
  %43 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %44 = load i64, ptr %m, align 8, !tbaa !8
  %arrayidx23 = getelementptr inbounds double, ptr %43, i64 %44
  %45 = load double, ptr %arrayidx23, align 8, !tbaa !20
  store double %45, ptr %d__1, align 8, !tbaa !20
  %46 = load double, ptr %d__1, align 8, !tbaa !20
  %cmp24 = fcmp ogt double %46, 0.000000e+00
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %for.body22
  %47 = load double, ptr %d__1, align 8, !tbaa !20
  br label %cond.end28

cond.false26:                                     ; preds = %for.body22
  %48 = load double, ptr %d__1, align 8, !tbaa !20
  %fneg27 = fneg double %48
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true25
  %cond29 = phi double [ %47, %cond.true25 ], [ %fneg27, %cond.false26 ]
  %add30 = fadd double %42, %cond29
  store double %add30, ptr %tst2, align 8, !tbaa !20
  %49 = load double, ptr %tst2, align 8, !tbaa !20
  %50 = load double, ptr %tst1, align 8, !tbaa !20
  %cmp31 = fcmp oeq double %49, %50
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %cond.end28
  br label %L120

if.end33:                                         ; preds = %cond.end28
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %51 = load i64, ptr %m, align 8, !tbaa !8
  %inc35 = add nsw i64 %51, 1
  store i64 %inc35, ptr %m, align 8, !tbaa !8
  br label %for.cond20, !llvm.loop !38

for.end36:                                        ; preds = %for.cond20
  br label %L120

L120:                                             ; preds = %for.end36, %if.then32
  %52 = load i64, ptr %m, align 8, !tbaa !8
  %53 = load i64, ptr %l, align 8, !tbaa !8
  %cmp37 = icmp eq i64 %52, %53
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %L120
  br label %L210

if.end39:                                         ; preds = %L120
  br label %L130

L130:                                             ; preds = %if.then126, %if.end39
  %54 = load i64, ptr %j, align 8, !tbaa !8
  %cmp40 = icmp eq i64 %54, 30
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %L130
  br label %L1000

if.end42:                                         ; preds = %L130
  %55 = load i64, ptr %j, align 8, !tbaa !8
  %inc43 = add nsw i64 %55, 1
  store i64 %inc43, ptr %j, align 8, !tbaa !8
  %56 = load i64, ptr %l, align 8, !tbaa !8
  %add44 = add nsw i64 %56, 1
  store i64 %add44, ptr %l1, align 8, !tbaa !8
  %57 = load i64, ptr %l1, align 8, !tbaa !8
  %add45 = add nsw i64 %57, 1
  store i64 %add45, ptr %l2, align 8, !tbaa !8
  %58 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %59 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx46 = getelementptr inbounds double, ptr %58, i64 %59
  %60 = load double, ptr %arrayidx46, align 8, !tbaa !20
  store double %60, ptr %g, align 8, !tbaa !20
  %61 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %62 = load i64, ptr %l1, align 8, !tbaa !8
  %arrayidx47 = getelementptr inbounds double, ptr %61, i64 %62
  %63 = load double, ptr %arrayidx47, align 8, !tbaa !20
  %64 = load double, ptr %g, align 8, !tbaa !20
  %sub48 = fsub double %63, %64
  %65 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %66 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx49 = getelementptr inbounds double, ptr %65, i64 %66
  %67 = load double, ptr %arrayidx49, align 8, !tbaa !20
  %mul = fmul double %67, 2.000000e+00
  %div = fdiv double %sub48, %mul
  store double %div, ptr %p, align 8, !tbaa !20
  %call = call double @hypre_LINPACKcgpthy(ptr noundef %p, ptr noundef %c_b10)
  store double %call, ptr %r, align 8, !tbaa !20
  store double 1.000000e+00, ptr %ds, align 8, !tbaa !20
  %68 = load double, ptr %p, align 8, !tbaa !20
  %cmp50 = fcmp olt double %68, 0.000000e+00
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end42
  store double -1.000000e+00, ptr %ds, align 8, !tbaa !20
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end42
  %69 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %70 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx53 = getelementptr inbounds double, ptr %69, i64 %70
  %71 = load double, ptr %arrayidx53, align 8, !tbaa !20
  %72 = load double, ptr %p, align 8, !tbaa !20
  %73 = load double, ptr %ds, align 8, !tbaa !20
  %74 = load double, ptr %r, align 8, !tbaa !20
  %75 = call double @llvm.fmuladd.f64(double %73, double %74, double %72)
  %div55 = fdiv double %71, %75
  %76 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %77 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx56 = getelementptr inbounds double, ptr %76, i64 %77
  store double %div55, ptr %arrayidx56, align 8, !tbaa !20
  %78 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %79 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx57 = getelementptr inbounds double, ptr %78, i64 %79
  %80 = load double, ptr %arrayidx57, align 8, !tbaa !20
  %81 = load double, ptr %p, align 8, !tbaa !20
  %82 = load double, ptr %ds, align 8, !tbaa !20
  %83 = load double, ptr %r, align 8, !tbaa !20
  %84 = call double @llvm.fmuladd.f64(double %82, double %83, double %81)
  %mul59 = fmul double %80, %84
  %85 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %86 = load i64, ptr %l1, align 8, !tbaa !8
  %arrayidx60 = getelementptr inbounds double, ptr %85, i64 %86
  store double %mul59, ptr %arrayidx60, align 8, !tbaa !20
  %87 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %88 = load i64, ptr %l1, align 8, !tbaa !8
  %arrayidx61 = getelementptr inbounds double, ptr %87, i64 %88
  %89 = load double, ptr %arrayidx61, align 8, !tbaa !20
  store double %89, ptr %dl1, align 8, !tbaa !20
  %90 = load double, ptr %g, align 8, !tbaa !20
  %91 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %92 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx62 = getelementptr inbounds double, ptr %91, i64 %92
  %93 = load double, ptr %arrayidx62, align 8, !tbaa !20
  %sub63 = fsub double %90, %93
  store double %sub63, ptr %h, align 8, !tbaa !20
  %94 = load i64, ptr %l2, align 8, !tbaa !8
  %95 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %96 = load i64, ptr %95, align 8, !tbaa !8
  %cmp64 = icmp sgt i64 %94, %96
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end52
  br label %L145

if.end66:                                         ; preds = %if.end52
  %97 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %98 = load i64, ptr %97, align 8, !tbaa !8
  store i64 %98, ptr %i__2, align 8, !tbaa !8
  %99 = load i64, ptr %l2, align 8, !tbaa !8
  store i64 %99, ptr %i, align 8, !tbaa !8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc72, %if.end66
  %100 = load i64, ptr %i, align 8, !tbaa !8
  %101 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp68 = icmp sle i64 %100, %101
  br i1 %cmp68, label %for.body69, label %for.end74

for.body69:                                       ; preds = %for.cond67
  %102 = load double, ptr %h, align 8, !tbaa !20
  %103 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %104 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx70 = getelementptr inbounds double, ptr %103, i64 %104
  %105 = load double, ptr %arrayidx70, align 8, !tbaa !20
  %sub71 = fsub double %105, %102
  store double %sub71, ptr %arrayidx70, align 8, !tbaa !20
  br label %for.inc72

for.inc72:                                        ; preds = %for.body69
  %106 = load i64, ptr %i, align 8, !tbaa !8
  %inc73 = add nsw i64 %106, 1
  store i64 %inc73, ptr %i, align 8, !tbaa !8
  br label %for.cond67, !llvm.loop !39

for.end74:                                        ; preds = %for.cond67
  br label %L145

L145:                                             ; preds = %for.end74, %if.then65
  %107 = load double, ptr %h, align 8, !tbaa !20
  %108 = load double, ptr %f, align 8, !tbaa !20
  %add75 = fadd double %108, %107
  store double %add75, ptr %f, align 8, !tbaa !20
  %109 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %110 = load i64, ptr %m, align 8, !tbaa !8
  %arrayidx76 = getelementptr inbounds double, ptr %109, i64 %110
  %111 = load double, ptr %arrayidx76, align 8, !tbaa !20
  store double %111, ptr %p, align 8, !tbaa !20
  store double 1.000000e+00, ptr %c, align 8, !tbaa !20
  %112 = load double, ptr %c, align 8, !tbaa !20
  store double %112, ptr %c2, align 8, !tbaa !20
  %113 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %114 = load i64, ptr %l1, align 8, !tbaa !8
  %arrayidx77 = getelementptr inbounds double, ptr %113, i64 %114
  %115 = load double, ptr %arrayidx77, align 8, !tbaa !20
  store double %115, ptr %el1, align 8, !tbaa !20
  store double 0.000000e+00, ptr %s, align 8, !tbaa !20
  %116 = load i64, ptr %m, align 8, !tbaa !8
  %117 = load i64, ptr %l, align 8, !tbaa !8
  %sub78 = sub nsw i64 %116, %117
  store i64 %sub78, ptr %mml, align 8, !tbaa !8
  %118 = load i64, ptr %mml, align 8, !tbaa !8
  store i64 %118, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %ii, align 8, !tbaa !8
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc103, %L145
  %119 = load i64, ptr %ii, align 8, !tbaa !8
  %120 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp80 = icmp sle i64 %119, %120
  br i1 %cmp80, label %for.body81, label %for.end105

for.body81:                                       ; preds = %for.cond79
  %121 = load double, ptr %c2, align 8, !tbaa !20
  store double %121, ptr %c3, align 8, !tbaa !20
  %122 = load double, ptr %c, align 8, !tbaa !20
  store double %122, ptr %c2, align 8, !tbaa !20
  %123 = load double, ptr %s, align 8, !tbaa !20
  store double %123, ptr %s2, align 8, !tbaa !20
  %124 = load i64, ptr %m, align 8, !tbaa !8
  %125 = load i64, ptr %ii, align 8, !tbaa !8
  %sub82 = sub nsw i64 %124, %125
  store i64 %sub82, ptr %i, align 8, !tbaa !8
  %126 = load double, ptr %c, align 8, !tbaa !20
  %127 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %128 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx83 = getelementptr inbounds double, ptr %127, i64 %128
  %129 = load double, ptr %arrayidx83, align 8, !tbaa !20
  %mul84 = fmul double %126, %129
  store double %mul84, ptr %g, align 8, !tbaa !20
  %130 = load double, ptr %c, align 8, !tbaa !20
  %131 = load double, ptr %p, align 8, !tbaa !20
  %mul85 = fmul double %130, %131
  store double %mul85, ptr %h, align 8, !tbaa !20
  %132 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %133 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx86 = getelementptr inbounds double, ptr %132, i64 %133
  %call87 = call double @hypre_LINPACKcgpthy(ptr noundef %p, ptr noundef %arrayidx86)
  store double %call87, ptr %r, align 8, !tbaa !20
  %134 = load double, ptr %s, align 8, !tbaa !20
  %135 = load double, ptr %r, align 8, !tbaa !20
  %mul88 = fmul double %134, %135
  %136 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %137 = load i64, ptr %i, align 8, !tbaa !8
  %add89 = add nsw i64 %137, 1
  %arrayidx90 = getelementptr inbounds double, ptr %136, i64 %add89
  store double %mul88, ptr %arrayidx90, align 8, !tbaa !20
  %138 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %139 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx91 = getelementptr inbounds double, ptr %138, i64 %139
  %140 = load double, ptr %arrayidx91, align 8, !tbaa !20
  %141 = load double, ptr %r, align 8, !tbaa !20
  %div92 = fdiv double %140, %141
  store double %div92, ptr %s, align 8, !tbaa !20
  %142 = load double, ptr %p, align 8, !tbaa !20
  %143 = load double, ptr %r, align 8, !tbaa !20
  %div93 = fdiv double %142, %143
  store double %div93, ptr %c, align 8, !tbaa !20
  %144 = load double, ptr %c, align 8, !tbaa !20
  %145 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %146 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx94 = getelementptr inbounds double, ptr %145, i64 %146
  %147 = load double, ptr %arrayidx94, align 8, !tbaa !20
  %148 = load double, ptr %s, align 8, !tbaa !20
  %149 = load double, ptr %g, align 8, !tbaa !20
  %mul96 = fmul double %148, %149
  %neg = fneg double %mul96
  %150 = call double @llvm.fmuladd.f64(double %144, double %147, double %neg)
  store double %150, ptr %p, align 8, !tbaa !20
  %151 = load double, ptr %h, align 8, !tbaa !20
  %152 = load double, ptr %s, align 8, !tbaa !20
  %153 = load double, ptr %c, align 8, !tbaa !20
  %154 = load double, ptr %g, align 8, !tbaa !20
  %155 = load double, ptr %s, align 8, !tbaa !20
  %156 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %157 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx98 = getelementptr inbounds double, ptr %156, i64 %157
  %158 = load double, ptr %arrayidx98, align 8, !tbaa !20
  %mul99 = fmul double %155, %158
  %159 = call double @llvm.fmuladd.f64(double %153, double %154, double %mul99)
  %160 = call double @llvm.fmuladd.f64(double %152, double %159, double %151)
  %161 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %162 = load i64, ptr %i, align 8, !tbaa !8
  %add101 = add nsw i64 %162, 1
  %arrayidx102 = getelementptr inbounds double, ptr %161, i64 %add101
  store double %160, ptr %arrayidx102, align 8, !tbaa !20
  br label %for.inc103

for.inc103:                                       ; preds = %for.body81
  %163 = load i64, ptr %ii, align 8, !tbaa !8
  %inc104 = add nsw i64 %163, 1
  store i64 %inc104, ptr %ii, align 8, !tbaa !8
  br label %for.cond79, !llvm.loop !40

for.end105:                                       ; preds = %for.cond79
  %164 = load double, ptr %s, align 8, !tbaa !20
  %fneg106 = fneg double %164
  %165 = load double, ptr %s2, align 8, !tbaa !20
  %mul107 = fmul double %fneg106, %165
  %166 = load double, ptr %c3, align 8, !tbaa !20
  %mul108 = fmul double %mul107, %166
  %167 = load double, ptr %el1, align 8, !tbaa !20
  %mul109 = fmul double %mul108, %167
  %168 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %169 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx110 = getelementptr inbounds double, ptr %168, i64 %169
  %170 = load double, ptr %arrayidx110, align 8, !tbaa !20
  %mul111 = fmul double %mul109, %170
  %171 = load double, ptr %dl1, align 8, !tbaa !20
  %div112 = fdiv double %mul111, %171
  store double %div112, ptr %p, align 8, !tbaa !20
  %172 = load double, ptr %s, align 8, !tbaa !20
  %173 = load double, ptr %p, align 8, !tbaa !20
  %mul113 = fmul double %172, %173
  %174 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %175 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx114 = getelementptr inbounds double, ptr %174, i64 %175
  store double %mul113, ptr %arrayidx114, align 8, !tbaa !20
  %176 = load double, ptr %c, align 8, !tbaa !20
  %177 = load double, ptr %p, align 8, !tbaa !20
  %mul115 = fmul double %176, %177
  %178 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %179 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx116 = getelementptr inbounds double, ptr %178, i64 %179
  store double %mul115, ptr %arrayidx116, align 8, !tbaa !20
  %180 = load double, ptr %tst1, align 8, !tbaa !20
  %181 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %182 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx117 = getelementptr inbounds double, ptr %181, i64 %182
  %183 = load double, ptr %arrayidx117, align 8, !tbaa !20
  store double %183, ptr %d__1, align 8, !tbaa !20
  %184 = load double, ptr %d__1, align 8, !tbaa !20
  %cmp118 = fcmp ogt double %184, 0.000000e+00
  br i1 %cmp118, label %cond.true119, label %cond.false120

cond.true119:                                     ; preds = %for.end105
  %185 = load double, ptr %d__1, align 8, !tbaa !20
  br label %cond.end122

cond.false120:                                    ; preds = %for.end105
  %186 = load double, ptr %d__1, align 8, !tbaa !20
  %fneg121 = fneg double %186
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false120, %cond.true119
  %cond123 = phi double [ %185, %cond.true119 ], [ %fneg121, %cond.false120 ]
  %add124 = fadd double %180, %cond123
  store double %add124, ptr %tst2, align 8, !tbaa !20
  %187 = load double, ptr %tst2, align 8, !tbaa !20
  %188 = load double, ptr %tst1, align 8, !tbaa !20
  %cmp125 = fcmp ogt double %187, %188
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %cond.end122
  br label %L130

if.end127:                                        ; preds = %cond.end122
  br label %L210

L210:                                             ; preds = %if.end127, %if.then38
  %189 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %190 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx128 = getelementptr inbounds double, ptr %189, i64 %190
  %191 = load double, ptr %arrayidx128, align 8, !tbaa !20
  %192 = load double, ptr %f, align 8, !tbaa !20
  %add129 = fadd double %191, %192
  store double %add129, ptr %p, align 8, !tbaa !20
  %193 = load i64, ptr %l, align 8, !tbaa !8
  %cmp130 = icmp eq i64 %193, 1
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %L210
  br label %L250

if.end132:                                        ; preds = %L210
  %194 = load i64, ptr %l, align 8, !tbaa !8
  store i64 %194, ptr %i__2, align 8, !tbaa !8
  store i64 2, ptr %ii, align 8, !tbaa !8
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc146, %if.end132
  %195 = load i64, ptr %ii, align 8, !tbaa !8
  %196 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp134 = icmp sle i64 %195, %196
  br i1 %cmp134, label %for.body135, label %for.end148

for.body135:                                      ; preds = %for.cond133
  %197 = load i64, ptr %l, align 8, !tbaa !8
  %add136 = add nsw i64 %197, 2
  %198 = load i64, ptr %ii, align 8, !tbaa !8
  %sub137 = sub nsw i64 %add136, %198
  store i64 %sub137, ptr %i, align 8, !tbaa !8
  %199 = load double, ptr %p, align 8, !tbaa !20
  %200 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %201 = load i64, ptr %i, align 8, !tbaa !8
  %sub138 = sub nsw i64 %201, 1
  %arrayidx139 = getelementptr inbounds double, ptr %200, i64 %sub138
  %202 = load double, ptr %arrayidx139, align 8, !tbaa !20
  %cmp140 = fcmp oge double %199, %202
  br i1 %cmp140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %for.body135
  br label %L270

if.end142:                                        ; preds = %for.body135
  %203 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %204 = load i64, ptr %i, align 8, !tbaa !8
  %sub143 = sub nsw i64 %204, 1
  %arrayidx144 = getelementptr inbounds double, ptr %203, i64 %sub143
  %205 = load double, ptr %arrayidx144, align 8, !tbaa !20
  %206 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %207 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx145 = getelementptr inbounds double, ptr %206, i64 %207
  store double %205, ptr %arrayidx145, align 8, !tbaa !20
  br label %for.inc146

for.inc146:                                       ; preds = %if.end142
  %208 = load i64, ptr %ii, align 8, !tbaa !8
  %inc147 = add nsw i64 %208, 1
  store i64 %inc147, ptr %ii, align 8, !tbaa !8
  br label %for.cond133, !llvm.loop !41

for.end148:                                       ; preds = %for.cond133
  br label %L250

L250:                                             ; preds = %for.end148, %if.then131
  store i64 1, ptr %i, align 8, !tbaa !8
  br label %L270

L270:                                             ; preds = %L250, %if.then141
  %209 = load double, ptr %p, align 8, !tbaa !20
  %210 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %211 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx149 = getelementptr inbounds double, ptr %210, i64 %211
  store double %209, ptr %arrayidx149, align 8, !tbaa !20
  br label %for.inc150

for.inc150:                                       ; preds = %L270
  %212 = load i64, ptr %l, align 8, !tbaa !8
  %inc151 = add nsw i64 %212, 1
  store i64 %inc151, ptr %l, align 8, !tbaa !8
  br label %for.cond5, !llvm.loop !42

for.end152:                                       ; preds = %for.cond5
  br label %L1001

L1000:                                            ; preds = %if.then41
  %213 = load i64, ptr %l, align 8, !tbaa !8
  %214 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %213, ptr %214, align 8, !tbaa !8
  br label %L1001

L1001:                                            ; preds = %L1000, %for.end152, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tst2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tst1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %mml) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %el1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %dl1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_b10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #6
  ret i64 0
}

declare i64 @hypre_ParVectorDestroy(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i64 @hypre_ParCSRRelax_Cheby(ptr noundef %A, ptr noundef %f, double noundef %max_eig, double noundef %min_eig, double noundef %fraction, i64 noundef %order, i64 noundef %scale, i64 noundef %variant, ptr noundef %u, ptr noundef %v, ptr noundef %r) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %max_eig.addr = alloca double, align 8
  %min_eig.addr = alloca double, align 8
  %fraction.addr = alloca double, align 8
  %order.addr = alloca i64, align 8
  %scale.addr = alloca i64, align 8
  %variant.addr = alloca i64, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %coefs = alloca ptr, align 8
  %ds_data = alloca ptr, align 8
  %tmp_vec = alloca ptr, align 8
  %orig_u_vec = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store double %max_eig, ptr %max_eig.addr, align 8, !tbaa !20
  store double %min_eig, ptr %min_eig.addr, align 8, !tbaa !20
  store double %fraction, ptr %fraction.addr, align 8, !tbaa !20
  store i64 %order, ptr %order.addr, align 8, !tbaa !8
  store i64 %scale, ptr %scale.addr, align 8, !tbaa !8
  store i64 %variant, ptr %variant.addr, align 8, !tbaa !8
  store ptr %u, ptr %u.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coefs) #6
  store ptr null, ptr %coefs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds_data) #6
  store ptr null, ptr %ds_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_vec) #6
  store ptr null, ptr %tmp_vec, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_u_vec) #6
  store ptr null, ptr %orig_u_vec, align 8, !tbaa !4
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %1 = load double, ptr %max_eig.addr, align 8, !tbaa !20
  %2 = load double, ptr %min_eig.addr, align 8, !tbaa !20
  %3 = load double, ptr %fraction.addr, align 8, !tbaa !20
  %4 = load i64, ptr %order.addr, align 8, !tbaa !8
  %5 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %6 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %call = call i64 @hypre_ParCSRRelax_Cheby_Setup(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %coefs, ptr noundef %ds_data)
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %comm, align 8, !tbaa !25
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %global_num_rows, align 8, !tbaa !27
  %11 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %11, i32 0, i32 14
  %arraydecay = getelementptr inbounds [2 x i64], ptr %row_starts, i64 0, i64 0
  %call1 = call ptr @hypre_ParVectorCreate(ptr noundef %8, i64 noundef %10, ptr noundef %arraydecay)
  store ptr %call1, ptr %orig_u_vec, align 8, !tbaa !4
  %12 = load ptr, ptr %orig_u_vec, align 8, !tbaa !4
  %13 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call2 = call i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %13)
  %call3 = call i64 @hypre_ParVectorInitialize_v2(ptr noundef %12, i32 noundef %call2)
  %14 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm4 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %comm4, align 8, !tbaa !25
  %17 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows5 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %global_num_rows5, align 8, !tbaa !27
  %19 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts6 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %19, i32 0, i32 14
  %arraydecay7 = getelementptr inbounds [2 x i64], ptr %row_starts6, i64 0, i64 0
  %call8 = call ptr @hypre_ParVectorCreate(ptr noundef %16, i64 noundef %18, ptr noundef %arraydecay7)
  store ptr %call8, ptr %tmp_vec, align 8, !tbaa !4
  %20 = load ptr, ptr %tmp_vec, align 8, !tbaa !4
  %21 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call9 = call i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %21)
  %call10 = call i64 @hypre_ParVectorInitialize_v2(ptr noundef %20, i32 noundef %call9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %ds_data, align 8, !tbaa !4
  %25 = load ptr, ptr %coefs, align 8, !tbaa !4
  %26 = load i64, ptr %order.addr, align 8, !tbaa !8
  %27 = load i64, ptr %scale.addr, align 8, !tbaa !8
  %28 = load i64, ptr %variant.addr, align 8, !tbaa !8
  %29 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %orig_u_vec, align 8, !tbaa !4
  %33 = load ptr, ptr %tmp_vec, align 8, !tbaa !4
  %call11 = call i64 @hypre_ParCSRRelax_Cheby_Solve(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %ds_data, align 8, !tbaa !4
  %35 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call12 = call i32 @hypre_ParCSRMatrixMemoryLocation(ptr noundef %35)
  call void @hypre_Free(ptr noundef %34, i32 noundef %call12)
  store ptr null, ptr %ds_data, align 8, !tbaa !4
  %36 = load ptr, ptr %coefs, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %36, i32 noundef 0)
  store ptr null, ptr %coefs, align 8, !tbaa !4
  %37 = load ptr, ptr %orig_u_vec, align 8, !tbaa !4
  %call13 = call i64 @hypre_ParVectorDestroy(ptr noundef %37)
  %38 = load ptr, ptr %tmp_vec, align 8, !tbaa !4
  %call14 = call i64 @hypre_ParVectorDestroy(ptr noundef %38)
  %39 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_u_vec) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_vec) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds_data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %coefs) #6
  ret i64 %39
}

declare i64 @hypre_ParCSRRelax_Cheby_Setup(ptr noundef, double noundef, double noundef, double noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

declare i64 @hypre_ParVectorInitialize_v2(ptr noundef, i32 noundef) #3

declare i64 @hypre_ParCSRRelax_Cheby_Solve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i64 @hypre_ParCSRRelax_CG(ptr noundef %solver, ptr noundef %A, ptr noundef %f, ptr noundef %u, i64 noundef %num_its) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %num_its.addr = alloca i64, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %u, ptr %u.addr, align 8, !tbaa !4
  store i64 %num_its, ptr %num_its.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i64, ptr %num_its.addr, align 8, !tbaa !8
  %call = call i64 @HYPRE_PCGSetMaxIter(ptr noundef %0, i64 noundef %1)
  %2 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %call1 = call i64 @HYPRE_PCGSetTol(ptr noundef %2, double noundef 0.000000e+00)
  %3 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %call2 = call i64 @HYPRE_ParCSRPCGSolve(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  ret i64 %7
}

declare i64 @HYPRE_PCGSetMaxIter(ptr noundef, i64 noundef) #3

declare i64 @HYPRE_PCGSetTol(ptr noundef, double noundef) #3

declare i64 @HYPRE_ParCSRPCGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define double @hypre_LINPACKcgpthy(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ret_val = alloca double, align 8
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %d__3 = alloca double, align 8
  %p = alloca double, align 8
  %r = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %u = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_val) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load double, ptr %0, align 8, !tbaa !20
  %cmp = fcmp ogt double %1, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %3 = load double, ptr %2, align 8, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load double, ptr %4, align 8, !tbaa !20
  %fneg = fneg double %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %3, %cond.true ], [ %fneg, %cond.false ]
  store double %cond, ptr %d__1, align 8, !tbaa !20
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %7 = load double, ptr %6, align 8, !tbaa !20
  %cmp1 = fcmp ogt double %7, 0.000000e+00
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  %8 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %9 = load double, ptr %8, align 8, !tbaa !20
  br label %cond.end5

cond.false3:                                      ; preds = %cond.end
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %11 = load double, ptr %10, align 8, !tbaa !20
  %fneg4 = fneg double %11
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false3, %cond.true2
  %cond6 = phi double [ %9, %cond.true2 ], [ %fneg4, %cond.false3 ]
  store double %cond6, ptr %d__2, align 8, !tbaa !20
  %12 = load double, ptr %d__1, align 8, !tbaa !20
  %13 = load double, ptr %d__2, align 8, !tbaa !20
  %cmp7 = fcmp olt double %12, %13
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  %14 = load double, ptr %d__2, align 8, !tbaa !20
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  %15 = load double, ptr %d__1, align 8, !tbaa !20
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi double [ %14, %cond.true8 ], [ %15, %cond.false9 ]
  store double %cond11, ptr %p, align 8, !tbaa !20
  %16 = load double, ptr %p, align 8, !tbaa !20
  %tobool = fcmp une double %16, 0.000000e+00
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end10
  br label %L20

if.end:                                           ; preds = %cond.end10
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %18 = load double, ptr %17, align 8, !tbaa !20
  %cmp12 = fcmp ogt double %18, 0.000000e+00
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %if.end
  %19 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %20 = load double, ptr %19, align 8, !tbaa !20
  br label %cond.end16

cond.false14:                                     ; preds = %if.end
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %22 = load double, ptr %21, align 8, !tbaa !20
  %fneg15 = fneg double %22
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false14, %cond.true13
  %cond17 = phi double [ %20, %cond.true13 ], [ %fneg15, %cond.false14 ]
  store double %cond17, ptr %d__2, align 8, !tbaa !20
  %23 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %24 = load double, ptr %23, align 8, !tbaa !20
  %cmp18 = fcmp ogt double %24, 0.000000e+00
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %cond.end16
  %25 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %26 = load double, ptr %25, align 8, !tbaa !20
  br label %cond.end22

cond.false20:                                     ; preds = %cond.end16
  %27 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %28 = load double, ptr %27, align 8, !tbaa !20
  %fneg21 = fneg double %28
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true19
  %cond23 = phi double [ %26, %cond.true19 ], [ %fneg21, %cond.false20 ]
  store double %cond23, ptr %d__3, align 8, !tbaa !20
  %29 = load double, ptr %d__2, align 8, !tbaa !20
  %30 = load double, ptr %d__3, align 8, !tbaa !20
  %cmp24 = fcmp olt double %29, %30
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end22
  %31 = load double, ptr %d__2, align 8, !tbaa !20
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end22
  %32 = load double, ptr %d__3, align 8, !tbaa !20
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.true25
  %cond28 = phi double [ %31, %cond.true25 ], [ %32, %cond.false26 ]
  %33 = load double, ptr %p, align 8, !tbaa !20
  %div = fdiv double %cond28, %33
  store double %div, ptr %d__1, align 8, !tbaa !20
  %34 = load double, ptr %d__1, align 8, !tbaa !20
  %35 = load double, ptr %d__1, align 8, !tbaa !20
  %mul = fmul double %34, %35
  store double %mul, ptr %r, align 8, !tbaa !20
  br label %L10

L10:                                              ; preds = %if.end31, %cond.end27
  %36 = load double, ptr %r, align 8, !tbaa !20
  %add = fadd double %36, 4.000000e+00
  store double %add, ptr %t, align 8, !tbaa !20
  %37 = load double, ptr %t, align 8, !tbaa !20
  %cmp29 = fcmp oeq double %37, 4.000000e+00
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %L10
  br label %L20

if.end31:                                         ; preds = %L10
  %38 = load double, ptr %r, align 8, !tbaa !20
  %39 = load double, ptr %t, align 8, !tbaa !20
  %div32 = fdiv double %38, %39
  store double %div32, ptr %s, align 8, !tbaa !20
  %40 = load double, ptr %s, align 8, !tbaa !20
  %41 = call double @llvm.fmuladd.f64(double %40, double 2.000000e+00, double 1.000000e+00)
  store double %41, ptr %u, align 8, !tbaa !20
  %42 = load double, ptr %u, align 8, !tbaa !20
  %43 = load double, ptr %p, align 8, !tbaa !20
  %mul34 = fmul double %42, %43
  store double %mul34, ptr %p, align 8, !tbaa !20
  %44 = load double, ptr %s, align 8, !tbaa !20
  %45 = load double, ptr %u, align 8, !tbaa !20
  %div35 = fdiv double %44, %45
  store double %div35, ptr %d__1, align 8, !tbaa !20
  %46 = load double, ptr %d__1, align 8, !tbaa !20
  %47 = load double, ptr %d__1, align 8, !tbaa !20
  %mul36 = fmul double %46, %47
  %48 = load double, ptr %r, align 8, !tbaa !20
  %mul37 = fmul double %mul36, %48
  store double %mul37, ptr %r, align 8, !tbaa !20
  br label %L10

L20:                                              ; preds = %if.then30, %if.then
  %49 = load double, ptr %p, align 8, !tbaa !20
  store double %49, ptr %ret_val, align 8, !tbaa !20
  %50 = load double, ptr %ret_val, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_val) #6
  ret double %50
}

declare i64 @hypre_sprintf(ptr noundef, ptr noundef, ...) #3

declare void @hypre_error_handler(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!10 = !{!11, !5, i64 64}
!11 = !{!"hypre_ParCSRMatrix_struct", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !6, i64 112, !6, i64 128, !5, i64 144, !5, i64 152, !9, i64 160, !9, i64 168, !12, i64 176, !5, i64 184, !5, i64 192, !9, i64 200, !5, i64 208, !9, i64 216, !5, i64 224, !9, i64 232, !5, i64 240, !5, i64 248}
!12 = !{!"double", !6, i64 0}
!13 = !{!14, !9, i64 24}
!14 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !9, i64 72, !5, i64 80, !5, i64 88, !9, i64 96, !6, i64 104}
!15 = !{!14, !5, i64 0}
!16 = !{!14, !5, i64 8}
!17 = !{!11, !5, i64 72}
!18 = !{!14, !5, i64 80}
!19 = !{!6, !6, i64 0}
!20 = !{!12, !12, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = !{!11, !5, i64 0}
!26 = !{!14, !6, i64 104}
!27 = !{!11, !9, i64 8}
!28 = !{!29, !5, i64 56}
!29 = !{!"hypre_ParVector_struct", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 48, !5, i64 56, !9, i64 64, !9, i64 72, !5, i64 80}
!30 = !{!31, !5, i64 0}
!31 = !{!"", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}

; ModuleID = 'samples/210.bc'
source_filename = "sys_semi_restrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_SStructPMatrix = type { ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, i64, i64 }
%struct.hypre_SStructPVector = type { ptr, ptr, i64, ptr, ptr, i64, i64, ptr, i64 }
%struct.hypre_SysSemiRestrictData = type { i64, ptr }

@hypre__global_error = external global i64, align 8

; Function Attrs: nounwind uwtable
define i64 @hypre_SysSemiRestrictCreate(ptr noundef %sys_restrict_vdata_ptr) #0 {
entry:
  %sys_restrict_vdata_ptr.addr = alloca ptr, align 8
  %sys_restrict_data = alloca ptr, align 8
  store ptr %sys_restrict_vdata_ptr, ptr %sys_restrict_vdata_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys_restrict_data) #3
  %call = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 16, i32 noundef 0)
  store ptr %call, ptr %sys_restrict_data, align 8, !tbaa !4
  %0 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %1 = load ptr, ptr %sys_restrict_vdata_ptr.addr, align 8, !tbaa !4
  store ptr %0, ptr %1, align 8, !tbaa !4
  %2 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys_restrict_data) #3
  ret i64 %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @hypre_SysSemiRestrictSetup(ptr noundef %sys_restrict_vdata, ptr noundef %R, i64 noundef %R_stored_as_transpose, ptr noundef %r, ptr noundef %rc, ptr noundef %cindex, ptr noundef %findex, ptr noundef %stride) #0 {
entry:
  %sys_restrict_vdata.addr = alloca ptr, align 8
  %R.addr = alloca ptr, align 8
  %R_stored_as_transpose.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %rc.addr = alloca ptr, align 8
  %cindex.addr = alloca ptr, align 8
  %findex.addr = alloca ptr, align 8
  %stride.addr = alloca ptr, align 8
  %sys_restrict_data = alloca ptr, align 8
  %srestrict_data = alloca ptr, align 8
  %nvars = alloca i64, align 8
  %R_s = alloca ptr, align 8
  %rc_s = alloca ptr, align 8
  %r_s = alloca ptr, align 8
  %vi = alloca i64, align 8
  store ptr %sys_restrict_vdata, ptr %sys_restrict_vdata.addr, align 8, !tbaa !4
  store ptr %R, ptr %R.addr, align 8, !tbaa !4
  store i64 %R_stored_as_transpose, ptr %R_stored_as_transpose.addr, align 8, !tbaa !8
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  store ptr %rc, ptr %rc.addr, align 8, !tbaa !4
  store ptr %cindex, ptr %cindex.addr, align 8, !tbaa !4
  store ptr %findex, ptr %findex.addr, align 8, !tbaa !4
  store ptr %stride, ptr %stride.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys_restrict_data) #3
  %0 = load ptr, ptr %sys_restrict_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %sys_restrict_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %srestrict_data) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvars) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %R_s) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc_s) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_s) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #3
  %1 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %nvars1 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %nvars1, align 8, !tbaa !10
  store i64 %2, ptr %nvars, align 8, !tbaa !8
  %3 = load i64, ptr %nvars, align 8, !tbaa !8
  %call = call ptr @hypre_CAlloc(i64 noundef %3, i64 noundef 8, i32 noundef 0)
  store ptr %call, ptr %srestrict_data, align 8, !tbaa !4
  store i64 0, ptr %vi, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %vi, align 8, !tbaa !8
  %5 = load i64, ptr %nvars, align 8, !tbaa !8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %smatrices = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %smatrices, align 8, !tbaa !12
  %8 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %10 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds ptr, ptr %9, i64 %10
  %11 = load ptr, ptr %arrayidx2, align 8, !tbaa !4
  store ptr %11, ptr %R_s, align 8, !tbaa !4
  %12 = load ptr, ptr %rc.addr, align 8, !tbaa !4
  %svectors = getelementptr inbounds %struct.hypre_SStructPVector, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %svectors, align 8, !tbaa !13
  %14 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 %14
  %15 = load ptr, ptr %arrayidx3, align 8, !tbaa !4
  store ptr %15, ptr %rc_s, align 8, !tbaa !4
  %16 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %svectors4 = getelementptr inbounds %struct.hypre_SStructPVector, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %svectors4, align 8, !tbaa !13
  %18 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds ptr, ptr %17, i64 %18
  %19 = load ptr, ptr %arrayidx5, align 8, !tbaa !4
  store ptr %19, ptr %r_s, align 8, !tbaa !4
  %call6 = call ptr @hypre_SemiRestrictCreate()
  %20 = load ptr, ptr %srestrict_data, align 8, !tbaa !4
  %21 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx7 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %call6, ptr %arrayidx7, align 8, !tbaa !4
  %22 = load ptr, ptr %srestrict_data, align 8, !tbaa !4
  %23 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds ptr, ptr %22, i64 %23
  %24 = load ptr, ptr %arrayidx8, align 8, !tbaa !4
  %25 = load ptr, ptr %R_s, align 8, !tbaa !4
  %26 = load i64, ptr %R_stored_as_transpose.addr, align 8, !tbaa !8
  %27 = load ptr, ptr %r_s, align 8, !tbaa !4
  %28 = load ptr, ptr %rc_s, align 8, !tbaa !4
  %29 = load ptr, ptr %cindex.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %findex.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %stride.addr, align 8, !tbaa !4
  %call9 = call i64 @hypre_SemiRestrictSetup(ptr noundef %24, ptr noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, ptr %vi, align 8, !tbaa !8
  %inc = add nsw i64 %32, 1
  store i64 %inc, ptr %vi, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %33 = load i64, ptr %nvars, align 8, !tbaa !8
  %34 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %nvars10 = getelementptr inbounds %struct.hypre_SysSemiRestrictData, ptr %34, i32 0, i32 0
  store i64 %33, ptr %nvars10, align 8, !tbaa !17
  %35 = load ptr, ptr %srestrict_data, align 8, !tbaa !4
  %36 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %srestrict_data11 = getelementptr inbounds %struct.hypre_SysSemiRestrictData, ptr %36, i32 0, i32 1
  store ptr %35, ptr %srestrict_data11, align 8, !tbaa !19
  %37 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc_s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %R_s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvars) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %srestrict_data) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys_restrict_data) #3
  ret i64 %37
}

declare ptr @hypre_SemiRestrictCreate() #2

declare i64 @hypre_SemiRestrictSetup(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i64 @hypre_SysSemiRestrict(ptr noundef %sys_restrict_vdata, ptr noundef %R, ptr noundef %r, ptr noundef %rc) #0 {
entry:
  %sys_restrict_vdata.addr = alloca ptr, align 8
  %R.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %rc.addr = alloca ptr, align 8
  %sys_restrict_data = alloca ptr, align 8
  %srestrict_data = alloca ptr, align 8
  %nvars = alloca i64, align 8
  %sdata = alloca ptr, align 8
  %R_s = alloca ptr, align 8
  %rc_s = alloca ptr, align 8
  %r_s = alloca ptr, align 8
  %vi = alloca i64, align 8
  store ptr %sys_restrict_vdata, ptr %sys_restrict_vdata.addr, align 8, !tbaa !4
  store ptr %R, ptr %R.addr, align 8, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  store ptr %rc, ptr %rc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys_restrict_data) #3
  %0 = load ptr, ptr %sys_restrict_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %sys_restrict_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %srestrict_data) #3
  %1 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %srestrict_data1 = getelementptr inbounds %struct.hypre_SysSemiRestrictData, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %srestrict_data1, align 8, !tbaa !19
  store ptr %2, ptr %srestrict_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvars) #3
  %3 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %nvars2 = getelementptr inbounds %struct.hypre_SysSemiRestrictData, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %nvars2, align 8, !tbaa !17
  store i64 %4, ptr %nvars, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdata) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %R_s) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc_s) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_s) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #3
  store i64 0, ptr %vi, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %vi, align 8, !tbaa !8
  %6 = load i64, ptr %nvars, align 8, !tbaa !8
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %srestrict_data, align 8, !tbaa !4
  %8 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %9, ptr %sdata, align 8, !tbaa !4
  %10 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %smatrices = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %smatrices, align 8, !tbaa !12
  %12 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds ptr, ptr %11, i64 %12
  %13 = load ptr, ptr %arrayidx3, align 8, !tbaa !4
  %14 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds ptr, ptr %13, i64 %14
  %15 = load ptr, ptr %arrayidx4, align 8, !tbaa !4
  store ptr %15, ptr %R_s, align 8, !tbaa !4
  %16 = load ptr, ptr %rc.addr, align 8, !tbaa !4
  %svectors = getelementptr inbounds %struct.hypre_SStructPVector, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %svectors, align 8, !tbaa !13
  %18 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds ptr, ptr %17, i64 %18
  %19 = load ptr, ptr %arrayidx5, align 8, !tbaa !4
  store ptr %19, ptr %rc_s, align 8, !tbaa !4
  %20 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %svectors6 = getelementptr inbounds %struct.hypre_SStructPVector, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %svectors6, align 8, !tbaa !13
  %22 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx7 = getelementptr inbounds ptr, ptr %21, i64 %22
  %23 = load ptr, ptr %arrayidx7, align 8, !tbaa !4
  store ptr %23, ptr %r_s, align 8, !tbaa !4
  %24 = load ptr, ptr %sdata, align 8, !tbaa !4
  %25 = load ptr, ptr %R_s, align 8, !tbaa !4
  %26 = load ptr, ptr %r_s, align 8, !tbaa !4
  %27 = load ptr, ptr %rc_s, align 8, !tbaa !4
  %call = call i64 @hypre_SemiRestrict(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, ptr %vi, align 8, !tbaa !8
  %inc = add nsw i64 %28, 1
  store i64 %inc, ptr %vi, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %29 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc_s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %R_s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdata) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvars) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %srestrict_data) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys_restrict_data) #3
  ret i64 %29
}

declare i64 @hypre_SemiRestrict(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i64 @hypre_SysSemiRestrictDestroy(ptr noundef %sys_restrict_vdata) #0 {
entry:
  %sys_restrict_vdata.addr = alloca ptr, align 8
  %sys_restrict_data = alloca ptr, align 8
  %nvars = alloca i64, align 8
  %srestrict_data = alloca ptr, align 8
  %vi = alloca i64, align 8
  store ptr %sys_restrict_vdata, ptr %sys_restrict_vdata.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys_restrict_data) #3
  %0 = load ptr, ptr %sys_restrict_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %sys_restrict_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvars) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %srestrict_data) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #3
  %1 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %nvars1 = getelementptr inbounds %struct.hypre_SysSemiRestrictData, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %nvars1, align 8, !tbaa !17
  store i64 %3, ptr %nvars, align 8, !tbaa !8
  %4 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  %srestrict_data2 = getelementptr inbounds %struct.hypre_SysSemiRestrictData, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %srestrict_data2, align 8, !tbaa !19
  store ptr %5, ptr %srestrict_data, align 8, !tbaa !4
  store i64 0, ptr %vi, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i64, ptr %vi, align 8, !tbaa !8
  %7 = load i64, ptr %nvars, align 8, !tbaa !8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %srestrict_data, align 8, !tbaa !4
  %9 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %9
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %11 = load ptr, ptr %srestrict_data, align 8, !tbaa !4
  %12 = load i64, ptr %vi, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %12
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !4
  %call = call i64 @hypre_SemiRestrictDestroy(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, ptr %vi, align 8, !tbaa !8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %vi, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %srestrict_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %15, i32 noundef 0)
  store ptr null, ptr %srestrict_data, align 8, !tbaa !4
  %16 = load ptr, ptr %sys_restrict_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %16, i32 noundef 0)
  store ptr null, ptr %sys_restrict_data, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  %17 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %srestrict_data) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvars) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys_restrict_data) #3
  ret i64 %17
}

declare i64 @hypre_SemiRestrictDestroy(ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !6, i64 0}
!10 = !{!11, !9, i64 24}
!11 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !9, i64 80, !9, i64 88}
!12 = !{!11, !5, i64 48}
!13 = !{!14, !5, i64 24}
!14 = !{!"", !5, i64 0, !5, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !9, i64 40, !9, i64 48, !5, i64 56, !9, i64 64}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !9, i64 0}
!18 = !{!"", !9, i64 0, !5, i64 8}
!19 = !{!18, !5, i64 8}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}

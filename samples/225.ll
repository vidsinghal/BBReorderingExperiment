; ModuleID = 'samples/225.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/libproj4/vtklibproj4/src/pj_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.projCtx_t = type { i32, i32, ptr, ptr, ptr }
%struct.PJconsts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, [7 x double], ptr, i32, i32, ptr, i32, double, double, double, double, i32, [4 x i8], ptr, ptr, double, ptr, %struct.PJ_Region, double, ptr, %struct.PJ_Region, double }
%struct.PJ_Region = type { double, double, double, double }

@default_context_initialized = internal global i32 0, align 4
@default_context = internal global %struct.projCtx_t zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"PROJ_DEBUG\00", align 1
@vtk_pj_errno = external global i32, align 4

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_get_ctx(ptr noundef %pj) #0 {
entry:
  %pj.addr = alloca ptr, align 8
  store ptr %pj, ptr %pj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pj.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %ctx, align 8, !tbaa !8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @vtk_pj_set_ctx(ptr noundef %pj, ptr noundef %ctx) #0 {
entry:
  %pj.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %pj, ptr %pj.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pj.addr, align 8, !tbaa !4
  %ctx1 = getelementptr inbounds %struct.PJconsts, ptr %1, i32 0, i32 0
  store ptr %0, ptr %ctx1, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_get_default_ctx() #0 {
entry:
  call void @vtk_pj_acquire_lock()
  %0 = load volatile i32, ptr @default_context_initialized, align 4, !tbaa !13
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr @default_context, align 8, !tbaa !14
  store i32 0, ptr getelementptr inbounds (%struct.projCtx_t, ptr @default_context, i32 0, i32 1), align 4, !tbaa !16
  store ptr @vtk_pj_stderr_logger, ptr getelementptr inbounds (%struct.projCtx_t, ptr @default_context, i32 0, i32 2), align 8, !tbaa !17
  store ptr null, ptr getelementptr inbounds (%struct.projCtx_t, ptr @default_context, i32 0, i32 3), align 8, !tbaa !18
  %call = call ptr (...) @vtk_pj_get_default_fileapi()
  store ptr %call, ptr getelementptr inbounds (%struct.projCtx_t, ptr @default_context, i32 0, i32 4), align 8, !tbaa !19
  %call1 = call ptr @getenv(ptr noundef @.str) #7
  %cmp = icmp ne ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.then
  %call3 = call ptr @getenv(ptr noundef @.str) #7
  %call4 = call i32 @atoi(ptr noundef %call3) #8
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then2
  %call7 = call ptr @getenv(ptr noundef @.str) #7
  %call8 = call i32 @atoi(ptr noundef %call7) #8
  store i32 %call8, ptr getelementptr inbounds (%struct.projCtx_t, ptr @default_context, i32 0, i32 1), align 4, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %if.then2
  store i32 3, ptr getelementptr inbounds (%struct.projCtx_t, ptr @default_context, i32 0, i32 1), align 4, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  store volatile i32 1, ptr @default_context_initialized, align 4, !tbaa !13
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  call void @vtk_pj_release_lock()
  ret ptr @default_context
}

declare void @vtk_pj_acquire_lock() #1

declare void @vtk_pj_stderr_logger(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @vtk_pj_get_default_fileapi(...) #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #3 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !4
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare void @vtk_pj_release_lock() #1

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_ctx_alloc() #0 {
entry:
  %ctx = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7
  %call = call noalias ptr @malloc(i64 noundef 32) #9
  store ptr %call, ptr %ctx, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call1 = call ptr @vtk_pj_get_default_ctx()
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %call1, i64 32, i1 false)
  %1 = load ptr, ptr %ctx, align 8, !tbaa !4
  %last_errno = getelementptr inbounds %struct.projCtx_t, ptr %1, i32 0, i32 0
  store i32 0, ptr %last_errno, align 8, !tbaa !14
  %2 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define void @vtk_pj_ctx_free(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @free(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @vtk_pj_ctx_get_errno(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %last_errno = getelementptr inbounds %struct.projCtx_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %last_errno, align 8, !tbaa !14
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @vtk_pj_ctx_set_errno(ptr noundef %ctx, i32 noundef %new_errno) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %new_errno.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %new_errno, ptr %new_errno.addr, align 4, !tbaa !13
  %0 = load i32, ptr %new_errno.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %last_errno = getelementptr inbounds %struct.projCtx_t, ptr %1, i32 0, i32 0
  store i32 %0, ptr %last_errno, align 8, !tbaa !14
  %2 = load i32, ptr %new_errno.addr, align 4, !tbaa !13
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %new_errno.addr, align 4, !tbaa !13
  store i32 %3, ptr @vtk_pj_errno, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @vtk_pj_ctx_set_debug(ptr noundef %ctx, i32 noundef %new_debug) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %new_debug.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %new_debug, ptr %new_debug.addr, align 4, !tbaa !13
  %0 = load i32, ptr %new_debug.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %debug_level = getelementptr inbounds %struct.projCtx_t, ptr %1, i32 0, i32 1
  store i32 %0, ptr %debug_level, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @vtk_pj_ctx_set_logger(ptr noundef %ctx, ptr noundef %new_logger) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %new_logger.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %new_logger, ptr %new_logger.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %new_logger.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %logger = getelementptr inbounds %struct.projCtx_t, ptr %1, i32 0, i32 2
  store ptr %0, ptr %logger, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @vtk_pj_ctx_set_app_data(ptr noundef %ctx, ptr noundef %new_app_data) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %new_app_data.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %new_app_data, ptr %new_app_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %new_app_data.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %app_data = getelementptr inbounds %struct.projCtx_t, ptr %1, i32 0, i32 3
  store ptr %0, ptr %app_data, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_ctx_get_app_data(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %app_data = getelementptr inbounds %struct.projCtx_t, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %app_data, align 8, !tbaa !18
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @vtk_pj_ctx_set_fileapi(ptr noundef %ctx, ptr noundef %fileapi) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %fileapi.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %fileapi, ptr %fileapi.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %fileapi.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %fileapi1 = getelementptr inbounds %struct.projCtx_t, ptr %1, i32 0, i32 4
  store ptr %0, ptr %fileapi1, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_ctx_get_fileapi(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %fileapi = getelementptr inbounds %struct.projCtx_t, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %fileapi, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"PJconsts", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !10, i64 192, !6, i64 200, !5, i64 256, !10, i64 264, !10, i64 268, !5, i64 272, !10, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !10, i64 320, !6, i64 324, !5, i64 328, !5, i64 336, !11, i64 344, !5, i64 352, !12, i64 360, !11, i64 392, !5, i64 400, !12, i64 408, !11, i64 440}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !10, i64 0}
!15 = !{!"", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24}
!16 = !{!15, !10, i64 4}
!17 = !{!15, !5, i64 8}
!18 = !{!15, !5, i64 16}
!19 = !{!15, !5, i64 24}

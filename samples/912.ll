; ModuleID = 'samples/912.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/FLA_geqrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @sgeqrf_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @sgeqrf_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %8, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %9 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %10 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %10, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 100, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %11 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %12, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  store i32 %14, ptr %_y, align 4, !tbaa !8
  %15 = load i32, ptr %_x, align 4, !tbaa !8
  %16 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %15, %16
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %17 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %18 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %19 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %19, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %20 = load i32, ptr %datatype, align 4, !tbaa !8
  %21 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %conv = sext i32 %22 to i64
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %conv7 = sext i32 %24 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %20, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %conv9 = sext i32 %27 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %25, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %28 = load i32, ptr %datatype, align 4, !tbaa !8
  %29 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %29 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %28, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %30 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %31 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %31 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %30, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_stau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %32 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %32)
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %33, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %34 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @sgeqrf_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @FLA_Init_safe(ptr noundef) #2

declare i32 @FLA_Obj_create_without_buffer(i32 noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @FLA_Obj_attach_buffer(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLAME_invert_stau(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_free_without_buffer(ptr noundef) #2

declare i32 @FLA_Obj_free(ptr noundef) #2

declare void @FLA_Finalize_safe(i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @dgeqrf_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @dgeqrf_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %8, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %9 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %10 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %10, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 101, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %11 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %12, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  store i32 %14, ptr %_y, align 4, !tbaa !8
  %15 = load i32, ptr %_x, align 4, !tbaa !8
  %16 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %15, %16
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %17 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %18 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %19 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %19, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %20 = load i32, ptr %datatype, align 4, !tbaa !8
  %21 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %conv = sext i32 %22 to i64
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %conv7 = sext i32 %24 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %20, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %conv9 = sext i32 %27 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %25, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %28 = load i32, ptr %datatype, align 4, !tbaa !8
  %29 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %29 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %28, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %30 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %31 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %31 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %30, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_dtau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %32 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %32)
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %33, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %34 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %34
}

declare i32 @dgeqrf_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @FLAME_invert_dtau(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @sgeqr2_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @sgeqr2_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %7 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %7, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %9 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %9, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 100, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %12 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %_y, align 4, !tbaa !8
  %14 = load i32, ptr %_x, align 4, !tbaa !8
  %15 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %16 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %17 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %18, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %19 = load i32, ptr %datatype, align 4, !tbaa !8
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %conv = sext i32 %21 to i64
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %conv7 = sext i32 %23 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %19, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %24 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %conv9 = sext i32 %26 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %24, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %27 = load i32, ptr %datatype, align 4, !tbaa !8
  %28 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %28 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %27, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %29 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %30 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %30 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %29, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_stau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %31 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %31)
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %32, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %33 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %33
}

declare i32 @sgeqr2_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @dgeqr2_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @dgeqr2_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %7 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %7, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %9 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %9, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 101, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %12 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %_y, align 4, !tbaa !8
  %14 = load i32, ptr %_x, align 4, !tbaa !8
  %15 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %16 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %17 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %18, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %19 = load i32, ptr %datatype, align 4, !tbaa !8
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %conv = sext i32 %21 to i64
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %conv7 = sext i32 %23 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %19, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %24 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %conv9 = sext i32 %26 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %24, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %27 = load i32, ptr %datatype, align 4, !tbaa !8
  %28 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %28 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %27, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %29 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %30 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %30 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %29, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_dtau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %31 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %31)
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %32, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %33 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %33
}

declare i32 @dgeqr2_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @sgeqrfp_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @sgeqrfp_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %8, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %9 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %10 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %10, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 100, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %11 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %12, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  store i32 %14, ptr %_y, align 4, !tbaa !8
  %15 = load i32, ptr %_x, align 4, !tbaa !8
  %16 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %15, %16
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %17 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %18 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %19 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %19, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %20 = load i32, ptr %datatype, align 4, !tbaa !8
  %21 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %conv = sext i32 %22 to i64
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %conv7 = sext i32 %24 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %20, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %conv9 = sext i32 %27 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %25, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %28 = load i32, ptr %datatype, align 4, !tbaa !8
  %29 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %29 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %28, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %30 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %31 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %31 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %30, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_stau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %32 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %32)
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %33, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %34 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %34
}

declare i32 @sgeqrfp_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @dgeqrfp_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @dgeqrfp_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %8, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %9 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %10 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %10, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 101, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %11 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %12, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  store i32 %14, ptr %_y, align 4, !tbaa !8
  %15 = load i32, ptr %_x, align 4, !tbaa !8
  %16 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %15, %16
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %17 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %18 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %19 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %19, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %20 = load i32, ptr %datatype, align 4, !tbaa !8
  %21 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %conv = sext i32 %22 to i64
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %conv7 = sext i32 %24 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %20, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %conv9 = sext i32 %27 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %25, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %28 = load i32, ptr %datatype, align 4, !tbaa !8
  %29 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %29 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %28, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %30 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %31 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %31 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %30, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_dtau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %32 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %32)
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %33, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %34 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %34
}

declare i32 @dgeqrfp_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @sgeqr2p_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @sgeqr2p_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %7 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %7, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %9 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %9, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 100, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %12 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %_y, align 4, !tbaa !8
  %14 = load i32, ptr %_x, align 4, !tbaa !8
  %15 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %16 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %17 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %18, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %19 = load i32, ptr %datatype, align 4, !tbaa !8
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %conv = sext i32 %21 to i64
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %conv7 = sext i32 %23 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %19, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %24 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %conv9 = sext i32 %26 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %24, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %27 = load i32, ptr %datatype, align 4, !tbaa !8
  %28 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %28 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %27, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %29 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %30 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %30 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %29, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_stau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %31 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %31)
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %32, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %33 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %33
}

declare i32 @sgeqr2p_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @dgeqr2p_(ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_t, ptr noundef %buff_w, ptr noundef %info) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_t.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %A = alloca %struct.FLA_Obj_view, align 8
  %t = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %init_result = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @dgeqr2p_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %7 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %7, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb1
    i32 212, label %sw.bb2
    i32 512, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb1
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  %8 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %9 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %9, 512
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  store i32 101, ptr %datatype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %12 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %_y, align 4, !tbaa !8
  %14 = load i32, ptr %_x, align 4, !tbaa !8
  %15 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %16 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %17 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %18 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %18, ptr %min_m_n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %init_result) #3
  call void @FLA_Init_safe(ptr noundef %init_result)
  %19 = load i32, ptr %datatype, align 4, !tbaa !8
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %conv = sext i32 %21 to i64
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %conv7 = sext i32 %23 to i64
  %call8 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %19, i64 noundef %conv, i64 noundef %conv7, ptr noundef %A)
  %24 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %conv9 = sext i32 %26 to i64
  %call10 = call i32 @FLA_Obj_attach_buffer(ptr noundef %24, i64 noundef 1, i64 noundef %conv9, ptr noundef %A)
  %27 = load i32, ptr %datatype, align 4, !tbaa !8
  %28 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv11 = sext i32 %28 to i64
  %call12 = call i32 @FLA_Obj_create_without_buffer(i32 noundef %27, i64 noundef %conv11, i64 noundef 1, ptr noundef %t)
  %29 = load ptr, ptr %buff_t.addr, align 8, !tbaa !4
  %30 = load i32, ptr %min_m_n, align 4, !tbaa !8
  %conv13 = sext i32 %30 to i64
  %call14 = call i32 @FLA_Obj_attach_buffer(ptr noundef %29, i64 noundef 1, i64 noundef %conv13, ptr noundef %t)
  %call15 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call16 = call i32 @FLA_QR_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %call17 = call i32 @FLA_QR_UT(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call18 = call i32 @FLA_QR_UT_recover_tau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call19 = call i32 @FLAME_invert_dtau(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %call20 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %A)
  %call21 = call i32 @FLA_Obj_free_without_buffer(ptr noundef %t)
  %call22 = call i32 @FLA_Obj_free(ptr noundef %T)
  %31 = load i32, ptr %init_result, align 4, !tbaa !8
  call void @FLA_Finalize_safe(i32 noundef %31)
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %32, align 4, !tbaa !8
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %init_result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %sw.epilog
  %33 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %33
}

declare i32 @dgeqr2p_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!9 = !{!"int", !6, i64 0}

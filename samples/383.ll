; ModuleID = 'samples/383.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/hevd/lv/flamec/FLA_Hevd_lv_unb_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [195 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/hevd/lv/flamec/FLA_Hevd_lv_unb_var1.c\00", align 1
@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Hevd_lv_unb_var1(i64 noundef %n_iter_max, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %l, i64 noundef %k_accum, i64 noundef %b_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %n_iter_max.addr = alloca i64, align 8
  %k_accum.addr = alloca i64, align 8
  %b_alg.addr = alloca i64, align 8
  %uplo = alloca i32, align 4
  %dt = alloca i32, align 4
  %dt_real = alloca i32, align 4
  %dt_comp = alloca i32, align 4
  %scale = alloca %struct.FLA_Obj_view, align 8
  %T = alloca %struct.FLA_Obj_view, align 8
  %r = alloca %struct.FLA_Obj_view, align 8
  %d = alloca %struct.FLA_Obj_view, align 8
  %e = alloca %struct.FLA_Obj_view, align 8
  %G = alloca %struct.FLA_Obj_view, align 8
  %mn_A = alloca i64, align 8
  %n_G = alloca i64, align 8
  %r_val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n_iter_max, ptr %n_iter_max.addr, align 8, !tbaa !4
  store i64 %k_accum, ptr %k_accum.addr, align 8, !tbaa !4
  store i64 %b_alg, ptr %b_alg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplo) #3
  store i32 300, ptr %uplo, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_real) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_comp) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %scale) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %r) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %G) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mn_A) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_G) #3
  %0 = load i64, ptr %k_accum.addr, align 8, !tbaa !4
  store i64 %0, ptr %n_G, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call, ptr %mn_A, align 8, !tbaa !4
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call1, ptr %dt, align 4, !tbaa !8
  %call2 = call i32 @FLA_Obj_datatype_proj_to_real(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call2, ptr %dt_real, align 4, !tbaa !8
  %call3 = call i32 @FLA_Obj_datatype_proj_to_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call3, ptr %dt_comp, align 4, !tbaa !8
  %call4 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ne i64 %call4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %mn_A, align 8, !tbaa !4
  %cmp6 = icmp eq i64 %1, 1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %l)
  %call9 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @FLA_Tridiag_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %T)
  %2 = load i32, ptr %dt, align 4, !tbaa !8
  %3 = load i64, ptr %mn_A, align 8, !tbaa !4
  %call12 = call i32 @FLA_Obj_create(i32 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %r)
  %4 = load i32, ptr %dt_real, align 4, !tbaa !8
  %5 = load i64, ptr %mn_A, align 8, !tbaa !4
  %call13 = call i32 @FLA_Obj_create(i32 noundef %4, i64 noundef %5, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %d)
  %6 = load i32, ptr %dt_real, align 4, !tbaa !8
  %7 = load i64, ptr %mn_A, align 8, !tbaa !4
  %sub = sub i64 %7, 1
  %call14 = call i32 @FLA_Obj_create(i32 noundef %6, i64 noundef %sub, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %e)
  %8 = load i32, ptr %dt_comp, align 4, !tbaa !8
  %9 = load i64, ptr %mn_A, align 8, !tbaa !4
  %sub15 = sub i64 %9, 1
  %10 = load i64, ptr %n_G, align 8, !tbaa !4
  %call16 = call i32 @FLA_Obj_create(i32 noundef %8, i64 noundef %sub15, i64 noundef %10, i64 noundef 0, i64 noundef 0, ptr noundef %G)
  %11 = load i32, ptr %dt_real, align 4, !tbaa !8
  %call17 = call i32 @FLA_Obj_create(i32 noundef %11, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %scale)
  %12 = load i32, ptr %uplo, align 4, !tbaa !8
  %call18 = call i32 @FLA_Hevd_compute_scaling(i32 noundef %12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale)
  %call19 = call i32 @FLA_Obj_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end10
  %13 = load i32, ptr %uplo, align 4, !tbaa !8
  %call21 = call i32 @FLA_Scalr(i32 noundef %13, ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end10
  %14 = load i32, ptr %uplo, align 4, !tbaa !8
  %call23 = call i32 @FLA_Tridiag_UT(i32 noundef %14, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %15 = load i32, ptr %uplo, align 4, !tbaa !8
  %call24 = call i32 @FLA_Tridiag_UT_realify(i32 noundef %15, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %r)
  %16 = load i32, ptr %uplo, align 4, !tbaa !8
  %call25 = call i32 @FLA_Tridiag_UT_extract_real_diagonals(i32 noundef %16, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e)
  %17 = load i32, ptr %uplo, align 4, !tbaa !8
  %call26 = call i32 @FLA_Tridiag_UT_form_Q(i32 noundef %17, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call27 = call i32 @FLA_Apply_diag_matrix(i32 noundef 211, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 %r, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %18 = load i64, ptr %n_iter_max.addr, align 8, !tbaa !4
  %19 = load i64, ptr %b_alg.addr, align 8, !tbaa !4
  %call28 = call i32 @FLA_Tevd_v_opt_var1(i64 noundef %18, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e, ptr noundef byval(%struct.FLA_Obj_view) align 8 %G, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i64 noundef %19)
  store i32 %call28, ptr %r_val, align 4, !tbaa !8
  %call29 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d, ptr noundef byval(%struct.FLA_Obj_view) align 8 %l)
  %call30 = call i32 @FLA_Sort_evd(i32 noundef 800, ptr noundef byval(%struct.FLA_Obj_view) align 8 %l, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call31 = call i32 @FLA_Obj_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end22
  %call34 = call i32 @FLA_Inv_scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %scale, ptr noundef byval(%struct.FLA_Obj_view) align 8 %l)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end22
  %call36 = call i32 @FLA_Obj_free(ptr noundef %scale)
  %call37 = call i32 @FLA_Obj_free(ptr noundef %T)
  %call38 = call i32 @FLA_Obj_free(ptr noundef %r)
  %call39 = call i32 @FLA_Obj_free(ptr noundef %d)
  %call40 = call i32 @FLA_Obj_free(ptr noundef %e)
  %call41 = call i32 @FLA_Obj_free(ptr noundef %G)
  %20 = load i32, ptr %r_val, align 4, !tbaa !8
  store i32 %20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_G) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mn_A) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %G) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %r) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %scale) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_comp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_real) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplo) #3
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_datatype_proj_to_real(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_datatype_proj_to_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Tridiag_UT_create_T(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Obj_create(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @FLA_Hevd_compute_scaling(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Scalr(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Tridiag_UT(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Tridiag_UT_realify(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Tridiag_UT_extract_real_diagonals(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Tridiag_UT_form_Q(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Apply_diag_matrix(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Tevd_v_opt_var1(i64 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i64 noundef) #2

declare i32 @FLA_Sort_evd(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Inv_scal(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}

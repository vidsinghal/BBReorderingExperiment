; ModuleID = 'samples/434.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/1/axpy/front/flamec/FLA_Axpy_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_axpy_s = type { i32, i32, ptr, ptr }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@flash_axpy_cntl = external global ptr, align 8
@.str = private unnamed_addr constant [191 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/1/axpy/front/flamec/FLA_Axpy_internal.c\00", align 1
@flash_axpy_cntl_blas = external global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Axpy_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %retval = alloca i32, align 4
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !8
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call1 = call i32 @FLA_Axpy_internal_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %matrix_type = getelementptr inbounds %struct.fla_axpy_s, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %matrix_type, align 8, !tbaa !10
  %cmp5 = icmp eq i32 %2, 1001
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %call6 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp7 = icmp eq i32 %call6, 150
  br i1 %cmp7, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant = getelementptr inbounds %struct.fla_axpy_s, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %variant, align 4, !tbaa !12
  %cmp9 = icmp eq i32 %4, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true8
  %call11 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call12 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %5 = load ptr, ptr @flash_axpy_cntl, align 8, !tbaa !4
  %call13 = call i32 @FLA_Axpy_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call12, ptr noundef %5)
  store i32 %call13, ptr %r_val, align 4, !tbaa !8
  br label %if.end67

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true, %if.end4
  %6 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %matrix_type14 = getelementptr inbounds %struct.fla_axpy_s, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %matrix_type14, align 8, !tbaa !10
  %cmp15 = icmp eq i32 %7, 1001
  br i1 %cmp15, label %land.lhs.true16, label %if.else24

land.lhs.true16:                                  ; preds = %if.else
  %call17 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp18 = icmp eq i32 %call17, 151
  br i1 %cmp18, label %land.lhs.true19, label %if.else24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = call i32 @FLASH_Queue_get_enabled()
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %land.lhs.true19
  %call23 = call i32 @FLA_Check_error_code_helper(i32 noundef -56, ptr noundef @.str, i32 noundef 41)
  br label %if.end66

if.else24:                                        ; preds = %land.lhs.true19, %land.lhs.true16, %if.else
  %8 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %matrix_type25 = getelementptr inbounds %struct.fla_axpy_s, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %matrix_type25, align 8, !tbaa !10
  %cmp26 = icmp eq i32 %9, 1001
  br i1 %cmp26, label %land.lhs.true27, label %if.end34

land.lhs.true27:                                  ; preds = %if.else24
  %call28 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp29 = icmp eq i32 %call28, 151
  br i1 %cmp29, label %land.lhs.true30, label %if.end34

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %call31 = call i32 @FLASH_Queue_get_enabled()
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true30
  %10 = load ptr, ptr @flash_axpy_cntl_blas, align 8, !tbaa !4
  store ptr %10, ptr %cntl.addr, align 8, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true30, %land.lhs.true27, %if.else24
  %11 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant35 = getelementptr inbounds %struct.fla_axpy_s, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %variant35, align 4, !tbaa !12
  %cmp36 = icmp eq i32 %12, 0
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end34
  %13 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call38 = call i32 @FLA_Axpy_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %13)
  store i32 %call38, ptr %r_val, align 4, !tbaa !8
  br label %if.end65

if.else39:                                        ; preds = %if.end34
  %14 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant40 = getelementptr inbounds %struct.fla_axpy_s, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %variant40, align 4, !tbaa !12
  %cmp41 = icmp eq i32 %15, 121
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else39
  %16 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call43 = call i32 @FLA_Axpy_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %16)
  store i32 %call43, ptr %r_val, align 4, !tbaa !8
  br label %if.end64

if.else44:                                        ; preds = %if.else39
  %17 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant45 = getelementptr inbounds %struct.fla_axpy_s, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %variant45, align 4, !tbaa !12
  %cmp46 = icmp eq i32 %18, 122
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else44
  %19 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call48 = call i32 @FLA_Axpy_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %19)
  store i32 %call48, ptr %r_val, align 4, !tbaa !8
  br label %if.end63

if.else49:                                        ; preds = %if.else44
  %20 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant50 = getelementptr inbounds %struct.fla_axpy_s, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %variant50, align 4, !tbaa !12
  %cmp51 = icmp eq i32 %21, 123
  br i1 %cmp51, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.else49
  %22 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call53 = call i32 @FLA_Axpy_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %22)
  store i32 %call53, ptr %r_val, align 4, !tbaa !8
  br label %if.end62

if.else54:                                        ; preds = %if.else49
  %23 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant55 = getelementptr inbounds %struct.fla_axpy_s, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %variant55, align 4, !tbaa !12
  %cmp56 = icmp eq i32 %24, 124
  br i1 %cmp56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.else54
  %25 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call58 = call i32 @FLA_Axpy_blk_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %25)
  store i32 %call58, ptr %r_val, align 4, !tbaa !8
  br label %if.end61

if.else59:                                        ; preds = %if.else54
  %call60 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 80)
  store i32 %call60, ptr %r_val, align 4, !tbaa !8
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then52
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then47
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then42
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then37
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then22
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then10
  %26 = load i32, ptr %r_val, align 4, !tbaa !8
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_error_level() #2

declare i32 @FLA_Axpy_internal_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Obj_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLASH_Queue_get_enabled() #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Axpy_task(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Axpy_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Axpy_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Axpy_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Axpy_blk_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

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
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"fla_axpy_s", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16}
!12 = !{!11, !9, i64 4}

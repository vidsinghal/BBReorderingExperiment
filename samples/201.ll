; ModuleID = 'samples/201.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/1/copyt/front/flamec/FLA_Copyt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_copyt_s = type { i32, i32, ptr, ptr }

@flash_copyt_cntl = external global ptr, align 8
@.str = private unnamed_addr constant [193 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/1/copyt/front/flamec/FLA_Copyt_internal.c\00", align 1
@flash_copyt_cntl_blas = external global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Copyt_internal(i32 noundef %trans, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call1 = call i32 @FLA_Copyt_internal_check(i32 noundef %0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type = getelementptr inbounds %struct.fla_copyt_s, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %matrix_type, align 8, !tbaa !10
  %cmp2 = icmp eq i32 %3, 1001
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp4 = icmp eq i32 %call3, 150
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %variant = getelementptr inbounds %struct.fla_copyt_s, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %variant, align 4, !tbaa !12
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  %6 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %call8 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call9 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %7 = load ptr, ptr @flash_copyt_cntl, align 8, !tbaa !8
  %call10 = call i32 @FLA_Copyt_internal(i32 noundef %6, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call8, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call9, ptr noundef %7)
  store i32 %call10, ptr %r_val, align 4, !tbaa !4
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %8 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type11 = getelementptr inbounds %struct.fla_copyt_s, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %matrix_type11, align 8, !tbaa !10
  %cmp12 = icmp eq i32 %9, 1001
  br i1 %cmp12, label %land.lhs.true13, label %if.else20

land.lhs.true13:                                  ; preds = %if.else
  %call14 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp15 = icmp eq i32 %call14, 151
  br i1 %cmp15, label %land.lhs.true16, label %if.else20

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %call17 = call i32 @FLASH_Queue_get_enabled()
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then18, label %if.else20

if.then18:                                        ; preds = %land.lhs.true16
  %call19 = call i32 @FLA_Check_error_code_helper(i32 noundef -56, ptr noundef @.str, i32 noundef 38)
  br label %if.end50

if.else20:                                        ; preds = %land.lhs.true16, %land.lhs.true13, %if.else
  %10 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type21 = getelementptr inbounds %struct.fla_copyt_s, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %matrix_type21, align 8, !tbaa !10
  %cmp22 = icmp eq i32 %11, 1001
  br i1 %cmp22, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %if.else20
  %call24 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp25 = icmp eq i32 %call24, 151
  br i1 %cmp25, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %call27 = call i32 @FLASH_Queue_get_enabled()
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  %12 = load ptr, ptr @flash_copyt_cntl_blas, align 8, !tbaa !8
  store ptr %12, ptr %cntl.addr, align 8, !tbaa !8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true26, %land.lhs.true23, %if.else20
  %13 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp31 = icmp eq i32 %13, 400
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end30
  %14 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call33 = call i32 @FLA_Copyt_n(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %14)
  store i32 %call33, ptr %r_val, align 4, !tbaa !4
  br label %if.end49

if.else34:                                        ; preds = %if.end30
  %15 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp35 = icmp eq i32 %15, 401
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else34
  %16 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call37 = call i32 @FLA_Copyt_t(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %16)
  store i32 %call37, ptr %r_val, align 4, !tbaa !4
  br label %if.end48

if.else38:                                        ; preds = %if.else34
  %17 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp39 = icmp eq i32 %17, 403
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else38
  %18 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call41 = call i32 @FLA_Copyt_c(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %18)
  store i32 %call41, ptr %r_val, align 4, !tbaa !4
  br label %if.end47

if.else42:                                        ; preds = %if.else38
  %19 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp43 = icmp eq i32 %19, 402
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.else42
  %20 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call45 = call i32 @FLA_Copyt_h(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %20)
  store i32 %call45, ptr %r_val, align 4, !tbaa !4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.else42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then36
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then32
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then18
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then7
  %21 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_error_level() #2

declare i32 @FLA_Copyt_internal_check(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLASH_Queue_get_enabled() #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Copyt_n(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Copyt_t(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Copyt_c(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Copyt_h(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"fla_copyt_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16}
!12 = !{!11, !5, i64 4}

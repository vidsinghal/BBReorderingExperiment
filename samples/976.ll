; ModuleID = 'samples/976.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/util/app/caq2ut/front/flamec/FLA_Apply_CAQ2_UT_lhfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_apcaq2ut_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [207 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/util/app/caq2ut/front/flamec/FLA_Apply_CAQ2_UT_lhfc.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FLA_Apply_CAQ2_UT_lhfc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %E, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !8
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant = getelementptr inbounds %struct.fla_apcaq2ut_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %variant, align 4, !tbaa !10
  %cmp = icmp eq i32 %1, 121
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call = call i32 @FLA_Apply_CAQ2_UT_lhfc_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %E, ptr noundef %2)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  br label %if.end13

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant1 = getelementptr inbounds %struct.fla_apcaq2ut_s, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %variant1, align 4, !tbaa !10
  %cmp2 = icmp eq i32 %4, 122
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call4 = call i32 @FLA_Apply_CAQ2_UT_lhfc_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %E, ptr noundef %5)
  store i32 %call4, ptr %r_val, align 4, !tbaa !8
  br label %if.end12

if.else5:                                         ; preds = %if.else
  %6 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant6 = getelementptr inbounds %struct.fla_apcaq2ut_s, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %variant6, align 4, !tbaa !10
  %cmp7 = icmp eq i32 %7, 123
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %8 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call9 = call i32 @FLA_Apply_CAQ2_UT_lhfc_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %E, ptr noundef %8)
  store i32 %call9, ptr %r_val, align 4, !tbaa !8
  br label %if.end

if.else10:                                        ; preds = %if.else5
  %call11 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 34)
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then3
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %9 = load i32, ptr %r_val, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Apply_CAQ2_UT_lhfc_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Apply_CAQ2_UT_lhfc_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Apply_CAQ2_UT_lhfc_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

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
!10 = !{!11, !9, i64 4}
!11 = !{!"fla_apcaq2ut_s", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}

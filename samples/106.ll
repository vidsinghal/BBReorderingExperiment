; ModuleID = 'samples/106.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/util/app/qut/front/flamec/FLA_Apply_Q_UT_rhfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_apqut_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [197 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/util/app/qut/front/flamec/FLA_Apply_Q_UT_rhfc.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rhfc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store ptr %cntl, ptr %cntl.addr, align 8
  store i32 -1, ptr %r_val, align 4
  %0 = load ptr, ptr %cntl.addr, align 8
  %variant = getelementptr inbounds %struct.fla_apqut_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %variant, align 4
  %cmp = icmp eq i32 %1, 121
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cntl.addr, align 8
  %call = call i32 @FLA_Apply_Q_UT_rhfc_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %2)
  store i32 %call, ptr %r_val, align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %cntl.addr, align 8
  %variant1 = getelementptr inbounds %struct.fla_apqut_s, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %variant1, align 4
  %cmp2 = icmp eq i32 %4, 122
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %cntl.addr, align 8
  %call4 = call i32 @FLA_Apply_Q_UT_rhfc_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %5)
  store i32 %call4, ptr %r_val, align 4
  br label %if.end12

if.else5:                                         ; preds = %if.else
  %6 = load ptr, ptr %cntl.addr, align 8
  %variant6 = getelementptr inbounds %struct.fla_apqut_s, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %variant6, align 4
  %cmp7 = icmp eq i32 %7, 123
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %8 = load ptr, ptr %cntl.addr, align 8
  %call9 = call i32 @FLA_Apply_Q_UT_rhfc_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %8)
  store i32 %call9, ptr %r_val, align 4
  br label %if.end

if.else10:                                        ; preds = %if.else5
  %call11 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 33)
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then3
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %9 = load i32, ptr %r_val, align 4
  ret i32 %9
}

declare i32 @FLA_Apply_Q_UT_rhfc_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Apply_Q_UT_rhfc_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Apply_Q_UT_rhfc_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

; ModuleID = 'samples/196.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/1/axpyt/front/flamec/FLA_Axpyt_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_axpyt_s = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [182 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/1/axpyt/front/flamec/FLA_Axpyt_t.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Axpyt_t(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store ptr %cntl, ptr %cntl.addr, align 8
  store i32 -1, ptr %r_val, align 4
  %0 = load ptr, ptr %cntl.addr, align 8
  %variant = getelementptr inbounds %struct.fla_axpyt_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %variant, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cntl.addr, align 8
  %call = call i32 @FLA_Axpyt_t_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %2)
  store i32 %call, ptr %r_val, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %cntl.addr, align 8
  %variant1 = getelementptr inbounds %struct.fla_axpyt_s, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %variant1, align 4
  %cmp2 = icmp eq i32 %4, 121
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %cntl.addr, align 8
  %call4 = call i32 @FLA_Axpyt_t_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %5)
  store i32 %call4, ptr %r_val, align 4
  br label %if.end24

if.else5:                                         ; preds = %if.else
  %6 = load ptr, ptr %cntl.addr, align 8
  %variant6 = getelementptr inbounds %struct.fla_axpyt_s, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %variant6, align 4
  %cmp7 = icmp eq i32 %7, 122
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %8 = load ptr, ptr %cntl.addr, align 8
  %call9 = call i32 @FLA_Axpyt_t_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %8)
  store i32 %call9, ptr %r_val, align 4
  br label %if.end23

if.else10:                                        ; preds = %if.else5
  %9 = load ptr, ptr %cntl.addr, align 8
  %variant11 = getelementptr inbounds %struct.fla_axpyt_s, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %variant11, align 4
  %cmp12 = icmp eq i32 %10, 123
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %11 = load ptr, ptr %cntl.addr, align 8
  %call14 = call i32 @FLA_Axpyt_t_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %11)
  store i32 %call14, ptr %r_val, align 4
  br label %if.end22

if.else15:                                        ; preds = %if.else10
  %12 = load ptr, ptr %cntl.addr, align 8
  %variant16 = getelementptr inbounds %struct.fla_axpyt_s, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %variant16, align 4
  %cmp17 = icmp eq i32 %13, 124
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %14 = load ptr, ptr %cntl.addr, align 8
  %call19 = call i32 @FLA_Axpyt_t_blk_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %14)
  store i32 %call19, ptr %r_val, align 4
  br label %if.end

if.else20:                                        ; preds = %if.else15
  %call21 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 43)
  store i32 %call21, ptr %r_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then18
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then13
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then8
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then3
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %15 = load i32, ptr %r_val, align 4
  ret i32 %15
}

declare i32 @FLA_Axpyt_t_task(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Axpyt_t_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Axpyt_t_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Axpyt_t_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Axpyt_t_blk_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

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

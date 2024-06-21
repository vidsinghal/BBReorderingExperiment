; ModuleID = 'samples/147.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/3/trsm/front/flamec/FLA_Trsm_rlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_trsm_s = type { i32, i32, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [182 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/3/trsm/front/flamec/FLA_Trsm_rlc.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trsm_rlc(i32 noundef %diag, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %diag.addr = alloca i32, align 4
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store i32 %diag, ptr %diag.addr, align 4
  store ptr %cntl, ptr %cntl.addr, align 8
  store i32 -1, ptr %r_val, align 4
  %0 = load ptr, ptr %cntl.addr, align 8
  %variant = getelementptr inbounds %struct.fla_trsm_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %variant, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %diag.addr, align 4
  %3 = load ptr, ptr %cntl.addr, align 8
  %call = call i32 @FLA_Trsm_rlc_task(i32 noundef %2, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %3)
  store i32 %call, ptr %r_val, align 4
  br label %if.end49

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %cntl.addr, align 8
  %variant1 = getelementptr inbounds %struct.fla_trsm_s, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %variant1, align 4
  %cmp2 = icmp eq i32 %5, 121
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %6 = load i32, ptr %diag.addr, align 4
  %7 = load ptr, ptr %cntl.addr, align 8
  %call4 = call i32 @FLA_Trsm_rlc_blk_var1(i32 noundef %6, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %7)
  store i32 %call4, ptr %r_val, align 4
  br label %if.end48

if.else5:                                         ; preds = %if.else
  %8 = load ptr, ptr %cntl.addr, align 8
  %variant6 = getelementptr inbounds %struct.fla_trsm_s, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %variant6, align 4
  %cmp7 = icmp eq i32 %9, 122
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %10 = load i32, ptr %diag.addr, align 4
  %11 = load ptr, ptr %cntl.addr, align 8
  %call9 = call i32 @FLA_Trsm_rlc_blk_var2(i32 noundef %10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %11)
  store i32 %call9, ptr %r_val, align 4
  br label %if.end47

if.else10:                                        ; preds = %if.else5
  %12 = load ptr, ptr %cntl.addr, align 8
  %variant11 = getelementptr inbounds %struct.fla_trsm_s, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %variant11, align 4
  %cmp12 = icmp eq i32 %13, 123
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %14 = load i32, ptr %diag.addr, align 4
  %15 = load ptr, ptr %cntl.addr, align 8
  %call14 = call i32 @FLA_Trsm_rlc_blk_var3(i32 noundef %14, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %15)
  store i32 %call14, ptr %r_val, align 4
  br label %if.end46

if.else15:                                        ; preds = %if.else10
  %16 = load ptr, ptr %cntl.addr, align 8
  %variant16 = getelementptr inbounds %struct.fla_trsm_s, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %variant16, align 4
  %cmp17 = icmp eq i32 %17, 124
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %18 = load i32, ptr %diag.addr, align 4
  %19 = load ptr, ptr %cntl.addr, align 8
  %call19 = call i32 @FLA_Trsm_rlc_blk_var4(i32 noundef %18, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %19)
  store i32 %call19, ptr %r_val, align 4
  br label %if.end45

if.else20:                                        ; preds = %if.else15
  %20 = load ptr, ptr %cntl.addr, align 8
  %variant21 = getelementptr inbounds %struct.fla_trsm_s, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %variant21, align 4
  %cmp22 = icmp eq i32 %21, 41
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else20
  %22 = load i32, ptr %diag.addr, align 4
  %call24 = call i32 @FLA_Trsm_rlc_unb_var1(i32 noundef %22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i32 %call24, ptr %r_val, align 4
  br label %if.end44

if.else25:                                        ; preds = %if.else20
  %23 = load ptr, ptr %cntl.addr, align 8
  %variant26 = getelementptr inbounds %struct.fla_trsm_s, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %variant26, align 4
  %cmp27 = icmp eq i32 %24, 42
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else25
  %25 = load i32, ptr %diag.addr, align 4
  %call29 = call i32 @FLA_Trsm_rlc_unb_var2(i32 noundef %25, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i32 %call29, ptr %r_val, align 4
  br label %if.end43

if.else30:                                        ; preds = %if.else25
  %26 = load ptr, ptr %cntl.addr, align 8
  %variant31 = getelementptr inbounds %struct.fla_trsm_s, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %variant31, align 4
  %cmp32 = icmp eq i32 %27, 43
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else30
  %28 = load i32, ptr %diag.addr, align 4
  %call34 = call i32 @FLA_Trsm_rlc_unb_var3(i32 noundef %28, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i32 %call34, ptr %r_val, align 4
  br label %if.end42

if.else35:                                        ; preds = %if.else30
  %29 = load ptr, ptr %cntl.addr, align 8
  %variant36 = getelementptr inbounds %struct.fla_trsm_s, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %variant36, align 4
  %cmp37 = icmp eq i32 %30, 44
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  %31 = load i32, ptr %diag.addr, align 4
  %call39 = call i32 @FLA_Trsm_rlc_unb_var4(i32 noundef %31, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i32 %call39, ptr %r_val, align 4
  br label %if.end

if.else40:                                        ; preds = %if.else35
  %call41 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 61)
  store i32 %call41, ptr %r_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else40, %if.then38
  br label %if.end42

if.end42:                                         ; preds = %if.end, %if.then33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then28
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then18
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then13
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then8
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then3
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then
  %32 = load i32, ptr %r_val, align 4
  ret i32 %32
}

declare i32 @FLA_Trsm_rlc_task(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trsm_rlc_blk_var1(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trsm_rlc_blk_var2(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trsm_rlc_blk_var3(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trsm_rlc_blk_var4(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trsm_rlc_unb_var1(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trsm_rlc_unb_var2(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trsm_rlc_unb_var3(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trsm_rlc_unb_var4(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

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

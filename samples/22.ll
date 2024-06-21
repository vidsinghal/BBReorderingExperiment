; ModuleID = 'samples/22.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/inv/tri/front/flamec/FLA_Trinv_uu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_trinv_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [185 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/inv/tri/front/flamec/FLA_Trinv_uu.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trinv_uu(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store ptr %cntl, ptr %cntl.addr, align 8
  store i32 -1, ptr %r_val, align 4
  %0 = load ptr, ptr %cntl.addr, align 8
  %variant = getelementptr inbounds %struct.fla_trinv_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %variant, align 4
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @FLA_Trinv_uu_blk_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %r_val, align 4
  br label %if.end79

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %cntl.addr, align 8
  %variant1 = getelementptr inbounds %struct.fla_trinv_s, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %variant1, align 4
  %cmp2 = icmp eq i32 %3, 10
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %call4 = call i32 @FLA_Trinv_uu_unb_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call4, ptr %r_val, align 4
  br label %if.end78

if.else5:                                         ; preds = %if.else
  %4 = load ptr, ptr %cntl.addr, align 8
  %variant6 = getelementptr inbounds %struct.fla_trinv_s, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %variant6, align 4
  %cmp7 = icmp eq i32 %5, 41
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %call9 = call i32 @FLA_Trinv_uu_unb_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call9, ptr %r_val, align 4
  br label %if.end77

if.else10:                                        ; preds = %if.else5
  %6 = load ptr, ptr %cntl.addr, align 8
  %variant11 = getelementptr inbounds %struct.fla_trinv_s, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %variant11, align 4
  %cmp12 = icmp eq i32 %7, 42
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %call14 = call i32 @FLA_Trinv_uu_unb_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call14, ptr %r_val, align 4
  br label %if.end76

if.else15:                                        ; preds = %if.else10
  %8 = load ptr, ptr %cntl.addr, align 8
  %variant16 = getelementptr inbounds %struct.fla_trinv_s, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %variant16, align 4
  %cmp17 = icmp eq i32 %9, 43
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %call19 = call i32 @FLA_Trinv_uu_unb_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call19, ptr %r_val, align 4
  br label %if.end75

if.else20:                                        ; preds = %if.else15
  %10 = load ptr, ptr %cntl.addr, align 8
  %variant21 = getelementptr inbounds %struct.fla_trinv_s, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %variant21, align 4
  %cmp22 = icmp eq i32 %11, 44
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else20
  %call24 = call i32 @FLA_Trinv_uu_unb_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call24, ptr %r_val, align 4
  br label %if.end74

if.else25:                                        ; preds = %if.else20
  %12 = load ptr, ptr %cntl.addr, align 8
  %variant26 = getelementptr inbounds %struct.fla_trinv_s, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %variant26, align 4
  %cmp27 = icmp eq i32 %13, 81
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else25
  %call29 = call i32 @FLA_Trinv_uu_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call29, ptr %r_val, align 4
  br label %if.end73

if.else30:                                        ; preds = %if.else25
  %14 = load ptr, ptr %cntl.addr, align 8
  %variant31 = getelementptr inbounds %struct.fla_trinv_s, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %variant31, align 4
  %cmp32 = icmp eq i32 %15, 82
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else30
  %call34 = call i32 @FLA_Trinv_uu_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call34, ptr %r_val, align 4
  br label %if.end72

if.else35:                                        ; preds = %if.else30
  %16 = load ptr, ptr %cntl.addr, align 8
  %variant36 = getelementptr inbounds %struct.fla_trinv_s, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %variant36, align 4
  %cmp37 = icmp eq i32 %17, 83
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  %call39 = call i32 @FLA_Trinv_uu_opt_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call39, ptr %r_val, align 4
  br label %if.end71

if.else40:                                        ; preds = %if.else35
  %18 = load ptr, ptr %cntl.addr, align 8
  %variant41 = getelementptr inbounds %struct.fla_trinv_s, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %variant41, align 4
  %cmp42 = icmp eq i32 %19, 84
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else40
  %call44 = call i32 @FLA_Trinv_uu_opt_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call44, ptr %r_val, align 4
  br label %if.end70

if.else45:                                        ; preds = %if.else40
  %20 = load ptr, ptr %cntl.addr, align 8
  %variant46 = getelementptr inbounds %struct.fla_trinv_s, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %variant46, align 4
  %cmp47 = icmp eq i32 %21, 121
  br i1 %cmp47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.else45
  %22 = load ptr, ptr %cntl.addr, align 8
  %call49 = call i32 @FLA_Trinv_uu_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %22)
  store i32 %call49, ptr %r_val, align 4
  br label %if.end69

if.else50:                                        ; preds = %if.else45
  %23 = load ptr, ptr %cntl.addr, align 8
  %variant51 = getelementptr inbounds %struct.fla_trinv_s, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %variant51, align 4
  %cmp52 = icmp eq i32 %24, 122
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else50
  %25 = load ptr, ptr %cntl.addr, align 8
  %call54 = call i32 @FLA_Trinv_uu_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %25)
  store i32 %call54, ptr %r_val, align 4
  br label %if.end68

if.else55:                                        ; preds = %if.else50
  %26 = load ptr, ptr %cntl.addr, align 8
  %variant56 = getelementptr inbounds %struct.fla_trinv_s, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %variant56, align 4
  %cmp57 = icmp eq i32 %27, 123
  br i1 %cmp57, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.else55
  %28 = load ptr, ptr %cntl.addr, align 8
  %call59 = call i32 @FLA_Trinv_uu_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %28)
  store i32 %call59, ptr %r_val, align 4
  br label %if.end67

if.else60:                                        ; preds = %if.else55
  %29 = load ptr, ptr %cntl.addr, align 8
  %variant61 = getelementptr inbounds %struct.fla_trinv_s, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %variant61, align 4
  %cmp62 = icmp eq i32 %30, 124
  br i1 %cmp62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.else60
  %31 = load ptr, ptr %cntl.addr, align 8
  %call64 = call i32 @FLA_Trinv_uu_blk_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %31)
  store i32 %call64, ptr %r_val, align 4
  br label %if.end

if.else65:                                        ; preds = %if.else60
  %call66 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 87)
  br label %if.end

if.end:                                           ; preds = %if.else65, %if.then63
  br label %if.end67

if.end67:                                         ; preds = %if.end, %if.then58
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then53
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then48
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then43
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then38
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then33
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then28
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then23
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then18
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then13
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then8
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then3
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then
  %32 = load i32, ptr %r_val, align 4
  ret i32 %32
}

declare i32 @FLA_Trinv_uu_blk_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_unb_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_unb_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_unb_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_unb_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_unb_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_opt_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_opt_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trinv_uu_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trinv_uu_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trinv_uu_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trinv_uu_blk_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

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

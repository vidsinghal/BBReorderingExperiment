; ModuleID = 'samples/739.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/util/base/FLA_Conjugate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Conjugate(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %retval = alloca i32, align 4
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_A = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_A29 = alloca ptr, align 8
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @FLA_Conjugate_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_has_zero_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @FLA_Obj_is_real(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call9, ptr %datatype, align 4
  %call10 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call10 to i32
  store i32 %conv, ptr %m_A, align 4
  %call11 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %n_A, align 4
  %call13 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, ptr %rs_A, align 4
  %call15 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, ptr %cs_A, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 102, label %sw.bb
    i32 103, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end8
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype17 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype17, align 8
  %cmp18 = icmp eq i32 %2, 105
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base20, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 24
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base21, align 8
  %buffer22 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer22, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base23 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base23, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base25, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul26 = mul i64 %10, %12
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %add.ptr24, i64 %mul26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr27, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8
  %13 = load i32, ptr %m_A, align 4
  %14 = load i32, ptr %n_A, align 4
  %15 = load ptr, ptr %buff_A, align 8
  %16 = load i32, ptr %rs_A, align 4
  %17 = load i32, ptr %cs_A, align 4
  call void @bl1_cconjm(i32 noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end8
  %base30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %18 = load ptr, ptr %base30, align 8
  %datatype31 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %datatype31, align 8
  %cmp32 = icmp eq i32 %19, 105
  br i1 %cmp32, label %cond.true34, label %cond.false38

cond.true34:                                      ; preds = %sw.bb28
  %base35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %20 = load ptr, ptr %base35, align 8
  %buffer36 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 12
  %21 = load ptr, ptr %buffer36, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %21, i64 32
  br label %cond.end51

cond.false38:                                     ; preds = %sw.bb28
  %base39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %22 = load ptr, ptr %base39, align 8
  %buffer40 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %buffer40, align 8
  %offn41 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %24 = load i64, ptr %offn41, align 8
  %base42 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %25 = load ptr, ptr %base42, align 8
  %cs43 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 5
  %26 = load i64, ptr %cs43, align 8
  %mul44 = mul i64 %24, %26
  %add.ptr45 = getelementptr inbounds %struct.dcomplex, ptr %23, i64 %mul44
  %offm46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %27 = load i64, ptr %offm46, align 8
  %base47 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %28 = load ptr, ptr %base47, align 8
  %rs48 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 4
  %29 = load i64, ptr %rs48, align 8
  %mul49 = mul i64 %27, %29
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr45, i64 %mul49
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false38, %cond.true34
  %cond52 = phi ptr [ %add.ptr37, %cond.true34 ], [ %add.ptr50, %cond.false38 ]
  store ptr %cond52, ptr %buff_A29, align 8
  %30 = load i32, ptr %m_A, align 4
  %31 = load i32, ptr %n_A, align 4
  %32 = load ptr, ptr %buff_A29, align 8
  %33 = load i32, ptr %rs_A, align 4
  %34 = load i32, ptr %cs_A, align 4
  call void @bl1_zconjm(i32 noundef %30, i32 noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef %34)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %cond.end51, %cond.end
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then7, %if.then3
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

declare i32 @FLA_Check_error_level() #1

declare i32 @FLA_Conjugate_check(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_has_zero_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_is_real(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare void @bl1_cconjm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zconjm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

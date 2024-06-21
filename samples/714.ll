; ModuleID = 'samples/714.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @grib_op_eq(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp eq i64 %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_ne(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp ne i64 %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_lt(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_gt(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp sgt i64 %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_and(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %tobool1 = icmp ne i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  %conv = sext i32 %land.ext to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_or(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %tobool1 = icmp ne i64 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  %conv = sext i32 %lor.ext to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_ge(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp sge i64 %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_le(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp sle i64 %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_bit(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %sh_prom = trunc i64 %1 to i32
  %shl = shl i32 1, %sh_prom
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_bitoff(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %call = call i64 @grib_op_bit(i64 noundef %0, i64 noundef %1)
  %tobool = icmp ne i64 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_not(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_neg(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %sub = sub nsw i64 0, %0
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define double @grib_op_neg_d(double noundef %a) #0 {
entry:
  %a.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %fneg = fneg double %0
  ret double %fneg
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_pow(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %b.addr, align 8, !tbaa !4
  %1 = load i64, ptr %a.addr, align 8, !tbaa !4
  %call = call double @grib_power(i64 noundef %0, i64 noundef %1)
  %conv = fptosi double %call to i64
  ret i64 %conv
}

declare double @grib_power(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i64 @grib_op_add(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %add = add nsw i64 %0, %1
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_sub(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %sub = sub nsw i64 %0, %1
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_div(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %div = sdiv i64 %0, %1
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_mul(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %mul = mul nsw i64 %0, %1
  ret i64 %mul
}

; Function Attrs: nounwind uwtable
define i64 @grib_op_modulo(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %rem = srem i64 %0, %1
  ret i64 %rem
}

; Function Attrs: nounwind uwtable
define double @grib_op_mul_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %mul = fmul double %0, %1
  ret double %mul
}

; Function Attrs: nounwind uwtable
define double @grib_op_div_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %div = fdiv double %0, %1
  ret double %div
}

; Function Attrs: nounwind uwtable
define double @grib_op_add_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %add = fadd double %0, %1
  ret double %add
}

; Function Attrs: nounwind uwtable
define double @grib_op_sub_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %sub = fsub double %0, %1
  ret double %sub
}

; Function Attrs: nounwind uwtable
define double @grib_op_eq_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %cmp = fcmp oeq double %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sitofp i32 %conv to double
  ret double %conv1
}

; Function Attrs: nounwind uwtable
define double @grib_op_ne_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %cmp = fcmp une double %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sitofp i32 %conv to double
  ret double %conv1
}

; Function Attrs: nounwind uwtable
define double @grib_op_lt_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %cmp = fcmp olt double %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sitofp i32 %conv to double
  ret double %conv1
}

; Function Attrs: nounwind uwtable
define double @grib_op_gt_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %cmp = fcmp ogt double %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sitofp i32 %conv to double
  ret double %conv1
}

; Function Attrs: nounwind uwtable
define double @grib_op_ge_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %cmp = fcmp oge double %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sitofp i32 %conv to double
  ret double %conv1
}

; Function Attrs: nounwind uwtable
define double @grib_op_le_d(double noundef %a, double noundef %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !8
  store double %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load double, ptr %a.addr, align 8, !tbaa !8
  %1 = load double, ptr %b.addr, align 8, !tbaa !8
  %cmp = fcmp ole double %0, %1
  %conv = zext i1 %cmp to i32
  %conv1 = sitofp i32 %conv to double
  ret double %conv1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!"double", !6, i64 0}

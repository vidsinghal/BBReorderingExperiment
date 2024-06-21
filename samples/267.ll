; ModuleID = 'samples/267.bc'
source_filename = "dlasv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"EPS\00", align 1

; Function Attrs: nounwind uwtable
define i64 @hypre_dlasv2(ptr noundef %f, ptr noundef %g, ptr noundef %h__, ptr noundef %ssmin, ptr noundef %ssmax, ptr noundef %snr, ptr noundef %csr, ptr noundef %snl, ptr noundef %csl) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %h__.addr = alloca ptr, align 8
  %ssmin.addr = alloca ptr, align 8
  %ssmax.addr = alloca ptr, align 8
  %snr.addr = alloca ptr, align 8
  %csr.addr = alloca ptr, align 8
  %snl.addr = alloca ptr, align 8
  %csl.addr = alloca ptr, align 8
  %c_b3 = alloca double, align 8
  %c_b4 = alloca double, align 8
  %d__1 = alloca double, align 8
  %pmax = alloca i64, align 8
  %temp = alloca double, align 8
  %swap = alloca i64, align 8
  %a = alloca double, align 8
  %d__ = alloca double, align 8
  %l = alloca double, align 8
  %m = alloca double, align 8
  %r__ = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %tsign = alloca double, align 8
  %fa = alloca double, align 8
  %ga = alloca double, align 8
  %ha = alloca double, align 8
  %ft = alloca double, align 8
  %gt = alloca double, align 8
  %ht = alloca double, align 8
  %mm = alloca double, align 8
  %gasmal = alloca i64, align 8
  %tt = alloca double, align 8
  %clt = alloca double, align 8
  %crt = alloca double, align 8
  %slt = alloca double, align 8
  %srt = alloca double, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %h__, ptr %h__.addr, align 8, !tbaa !4
  store ptr %ssmin, ptr %ssmin.addr, align 8, !tbaa !4
  store ptr %ssmax, ptr %ssmax.addr, align 8, !tbaa !4
  store ptr %snr, ptr %snr.addr, align 8, !tbaa !4
  store ptr %csr, ptr %csr.addr, align 8, !tbaa !4
  store ptr %snl, ptr %snl.addr, align 8, !tbaa !4
  store ptr %csl, ptr %csl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_b3) #5
  store double 2.000000e+00, ptr %c_b3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_b4) #5
  store double 1.000000e+00, ptr %c_b4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmax) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r__) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsign) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fa) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ga) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ha) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ft) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gasmal) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %clt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %crt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %slt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %srt) #5
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load double, ptr %0, align 8, !tbaa !8
  store double %1, ptr %ft, align 8, !tbaa !8
  %2 = load double, ptr %ft, align 8, !tbaa !8
  %cmp = fcmp oge double %2, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load double, ptr %ft, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load double, ptr %ft, align 8, !tbaa !8
  %fneg = fneg double %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %3, %cond.true ], [ %fneg, %cond.false ]
  store double %cond, ptr %fa, align 8, !tbaa !8
  %5 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %6 = load double, ptr %5, align 8, !tbaa !8
  store double %6, ptr %ht, align 8, !tbaa !8
  %7 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %8 = load double, ptr %7, align 8, !tbaa !8
  %cmp1 = fcmp oge double %8, 0.000000e+00
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  %9 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %10 = load double, ptr %9, align 8, !tbaa !8
  br label %cond.end5

cond.false3:                                      ; preds = %cond.end
  %11 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %12 = load double, ptr %11, align 8, !tbaa !8
  %fneg4 = fneg double %12
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false3, %cond.true2
  %cond6 = phi double [ %10, %cond.true2 ], [ %fneg4, %cond.false3 ]
  store double %cond6, ptr %ha, align 8, !tbaa !8
  store i64 1, ptr %pmax, align 8, !tbaa !10
  %13 = load double, ptr %ha, align 8, !tbaa !8
  %14 = load double, ptr %fa, align 8, !tbaa !8
  %cmp7 = fcmp ogt double %13, %14
  %conv = zext i1 %cmp7 to i32
  %conv8 = sext i32 %conv to i64
  store i64 %conv8, ptr %swap, align 8, !tbaa !10
  %15 = load i64, ptr %swap, align 8, !tbaa !10
  %tobool = icmp ne i64 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end5
  store i64 3, ptr %pmax, align 8, !tbaa !10
  %16 = load double, ptr %ft, align 8, !tbaa !8
  store double %16, ptr %temp, align 8, !tbaa !8
  %17 = load double, ptr %ht, align 8, !tbaa !8
  store double %17, ptr %ft, align 8, !tbaa !8
  %18 = load double, ptr %temp, align 8, !tbaa !8
  store double %18, ptr %ht, align 8, !tbaa !8
  %19 = load double, ptr %fa, align 8, !tbaa !8
  store double %19, ptr %temp, align 8, !tbaa !8
  %20 = load double, ptr %ha, align 8, !tbaa !8
  store double %20, ptr %fa, align 8, !tbaa !8
  %21 = load double, ptr %temp, align 8, !tbaa !8
  store double %21, ptr %ha, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end5
  %22 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %23 = load double, ptr %22, align 8, !tbaa !8
  store double %23, ptr %gt, align 8, !tbaa !8
  %24 = load double, ptr %gt, align 8, !tbaa !8
  %cmp9 = fcmp oge double %24, 0.000000e+00
  br i1 %cmp9, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %if.end
  %25 = load double, ptr %gt, align 8, !tbaa !8
  br label %cond.end14

cond.false12:                                     ; preds = %if.end
  %26 = load double, ptr %gt, align 8, !tbaa !8
  %fneg13 = fneg double %26
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %cond.true11
  %cond15 = phi double [ %25, %cond.true11 ], [ %fneg13, %cond.false12 ]
  store double %cond15, ptr %ga, align 8, !tbaa !8
  %27 = load double, ptr %ga, align 8, !tbaa !8
  %cmp16 = fcmp oeq double %27, 0.000000e+00
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %cond.end14
  %28 = load double, ptr %ha, align 8, !tbaa !8
  %29 = load ptr, ptr %ssmin.addr, align 8, !tbaa !4
  store double %28, ptr %29, align 8, !tbaa !8
  %30 = load double, ptr %fa, align 8, !tbaa !8
  %31 = load ptr, ptr %ssmax.addr, align 8, !tbaa !4
  store double %30, ptr %31, align 8, !tbaa !8
  store double 1.000000e+00, ptr %clt, align 8, !tbaa !8
  store double 1.000000e+00, ptr %crt, align 8, !tbaa !8
  store double 0.000000e+00, ptr %slt, align 8, !tbaa !8
  store double 0.000000e+00, ptr %srt, align 8, !tbaa !8
  br label %if.end102

if.else:                                          ; preds = %cond.end14
  store i64 1, ptr %gasmal, align 8, !tbaa !10
  %32 = load double, ptr %ga, align 8, !tbaa !8
  %33 = load double, ptr %fa, align 8, !tbaa !8
  %cmp19 = fcmp ogt double %32, %33
  br i1 %cmp19, label %if.then21, label %if.end36

if.then21:                                        ; preds = %if.else
  store i64 2, ptr %pmax, align 8, !tbaa !10
  %34 = load double, ptr %fa, align 8, !tbaa !8
  %35 = load double, ptr %ga, align 8, !tbaa !8
  %div = fdiv double %34, %35
  %call = call double @hypre_dlamch(ptr noundef @.str)
  %cmp22 = fcmp olt double %div, %call
  br i1 %cmp22, label %if.then24, label %if.end35

if.then24:                                        ; preds = %if.then21
  store i64 0, ptr %gasmal, align 8, !tbaa !10
  %36 = load double, ptr %ga, align 8, !tbaa !8
  %37 = load ptr, ptr %ssmax.addr, align 8, !tbaa !4
  store double %36, ptr %37, align 8, !tbaa !8
  %38 = load double, ptr %ha, align 8, !tbaa !8
  %cmp25 = fcmp ogt double %38, 1.000000e+00
  br i1 %cmp25, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.then24
  %39 = load double, ptr %fa, align 8, !tbaa !8
  %40 = load double, ptr %ga, align 8, !tbaa !8
  %41 = load double, ptr %ha, align 8, !tbaa !8
  %div28 = fdiv double %40, %41
  %div29 = fdiv double %39, %div28
  %42 = load ptr, ptr %ssmin.addr, align 8, !tbaa !4
  store double %div29, ptr %42, align 8, !tbaa !8
  br label %if.end32

if.else30:                                        ; preds = %if.then24
  %43 = load double, ptr %fa, align 8, !tbaa !8
  %44 = load double, ptr %ga, align 8, !tbaa !8
  %div31 = fdiv double %43, %44
  %45 = load double, ptr %ha, align 8, !tbaa !8
  %mul = fmul double %div31, %45
  %46 = load ptr, ptr %ssmin.addr, align 8, !tbaa !4
  store double %mul, ptr %46, align 8, !tbaa !8
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then27
  store double 1.000000e+00, ptr %clt, align 8, !tbaa !8
  %47 = load double, ptr %ht, align 8, !tbaa !8
  %48 = load double, ptr %gt, align 8, !tbaa !8
  %div33 = fdiv double %47, %48
  store double %div33, ptr %slt, align 8, !tbaa !8
  store double 1.000000e+00, ptr %srt, align 8, !tbaa !8
  %49 = load double, ptr %ft, align 8, !tbaa !8
  %50 = load double, ptr %gt, align 8, !tbaa !8
  %div34 = fdiv double %49, %50
  store double %div34, ptr %crt, align 8, !tbaa !8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %if.then21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.else
  %51 = load i64, ptr %gasmal, align 8, !tbaa !10
  %tobool37 = icmp ne i64 %51, 0
  br i1 %tobool37, label %if.then38, label %if.end101

if.then38:                                        ; preds = %if.end36
  %52 = load double, ptr %fa, align 8, !tbaa !8
  %53 = load double, ptr %ha, align 8, !tbaa !8
  %sub = fsub double %52, %53
  store double %sub, ptr %d__, align 8, !tbaa !8
  %54 = load double, ptr %d__, align 8, !tbaa !8
  %55 = load double, ptr %fa, align 8, !tbaa !8
  %cmp39 = fcmp oeq double %54, %55
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.then38
  store double 1.000000e+00, ptr %l, align 8, !tbaa !8
  br label %if.end44

if.else42:                                        ; preds = %if.then38
  %56 = load double, ptr %d__, align 8, !tbaa !8
  %57 = load double, ptr %fa, align 8, !tbaa !8
  %div43 = fdiv double %56, %57
  store double %div43, ptr %l, align 8, !tbaa !8
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then41
  %58 = load double, ptr %gt, align 8, !tbaa !8
  %59 = load double, ptr %ft, align 8, !tbaa !8
  %div45 = fdiv double %58, %59
  store double %div45, ptr %m, align 8, !tbaa !8
  %60 = load double, ptr %l, align 8, !tbaa !8
  %sub46 = fsub double 2.000000e+00, %60
  store double %sub46, ptr %t, align 8, !tbaa !8
  %61 = load double, ptr %m, align 8, !tbaa !8
  %62 = load double, ptr %m, align 8, !tbaa !8
  %mul47 = fmul double %61, %62
  store double %mul47, ptr %mm, align 8, !tbaa !8
  %63 = load double, ptr %t, align 8, !tbaa !8
  %64 = load double, ptr %t, align 8, !tbaa !8
  %mul48 = fmul double %63, %64
  store double %mul48, ptr %tt, align 8, !tbaa !8
  %65 = load double, ptr %tt, align 8, !tbaa !8
  %66 = load double, ptr %mm, align 8, !tbaa !8
  %add = fadd double %65, %66
  %call49 = call double @sqrt(double noundef %add) #5
  store double %call49, ptr %s, align 8, !tbaa !8
  %67 = load double, ptr %l, align 8, !tbaa !8
  %cmp50 = fcmp oeq double %67, 0.000000e+00
  br i1 %cmp50, label %if.then52, label %if.else60

if.then52:                                        ; preds = %if.end44
  %68 = load double, ptr %m, align 8, !tbaa !8
  %cmp53 = fcmp oge double %68, 0.000000e+00
  br i1 %cmp53, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %if.then52
  %69 = load double, ptr %m, align 8, !tbaa !8
  br label %cond.end58

cond.false56:                                     ; preds = %if.then52
  %70 = load double, ptr %m, align 8, !tbaa !8
  %fneg57 = fneg double %70
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false56, %cond.true55
  %cond59 = phi double [ %69, %cond.true55 ], [ %fneg57, %cond.false56 ]
  store double %cond59, ptr %r__, align 8, !tbaa !8
  br label %if.end63

if.else60:                                        ; preds = %if.end44
  %71 = load double, ptr %l, align 8, !tbaa !8
  %72 = load double, ptr %l, align 8, !tbaa !8
  %73 = load double, ptr %mm, align 8, !tbaa !8
  %74 = call double @llvm.fmuladd.f64(double %71, double %72, double %73)
  %call62 = call double @sqrt(double noundef %74) #5
  store double %call62, ptr %r__, align 8, !tbaa !8
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %cond.end58
  %75 = load double, ptr %s, align 8, !tbaa !8
  %76 = load double, ptr %r__, align 8, !tbaa !8
  %add64 = fadd double %75, %76
  %mul65 = fmul double %add64, 5.000000e-01
  store double %mul65, ptr %a, align 8, !tbaa !8
  %77 = load double, ptr %ha, align 8, !tbaa !8
  %78 = load double, ptr %a, align 8, !tbaa !8
  %div66 = fdiv double %77, %78
  %79 = load ptr, ptr %ssmin.addr, align 8, !tbaa !4
  store double %div66, ptr %79, align 8, !tbaa !8
  %80 = load double, ptr %fa, align 8, !tbaa !8
  %81 = load double, ptr %a, align 8, !tbaa !8
  %mul67 = fmul double %80, %81
  %82 = load ptr, ptr %ssmax.addr, align 8, !tbaa !4
  store double %mul67, ptr %82, align 8, !tbaa !8
  %83 = load double, ptr %mm, align 8, !tbaa !8
  %cmp68 = fcmp oeq double %83, 0.000000e+00
  br i1 %cmp68, label %if.then70, label %if.else83

if.then70:                                        ; preds = %if.end63
  %84 = load double, ptr %l, align 8, !tbaa !8
  %cmp71 = fcmp oeq double %84, 0.000000e+00
  br i1 %cmp71, label %if.then73, label %if.else77

if.then73:                                        ; preds = %if.then70
  %call74 = call double @hypre_d_sign(ptr noundef %c_b3, ptr noundef %ft)
  %call75 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %gt)
  %mul76 = fmul double %call74, %call75
  store double %mul76, ptr %t, align 8, !tbaa !8
  br label %if.end82

if.else77:                                        ; preds = %if.then70
  %85 = load double, ptr %gt, align 8, !tbaa !8
  %call78 = call double @hypre_d_sign(ptr noundef %d__, ptr noundef %ft)
  %div79 = fdiv double %85, %call78
  %86 = load double, ptr %m, align 8, !tbaa !8
  %87 = load double, ptr %t, align 8, !tbaa !8
  %div80 = fdiv double %86, %87
  %add81 = fadd double %div79, %div80
  store double %add81, ptr %t, align 8, !tbaa !8
  br label %if.end82

if.end82:                                         ; preds = %if.else77, %if.then73
  br label %if.end91

if.else83:                                        ; preds = %if.end63
  %88 = load double, ptr %m, align 8, !tbaa !8
  %89 = load double, ptr %s, align 8, !tbaa !8
  %90 = load double, ptr %t, align 8, !tbaa !8
  %add84 = fadd double %89, %90
  %div85 = fdiv double %88, %add84
  %91 = load double, ptr %m, align 8, !tbaa !8
  %92 = load double, ptr %r__, align 8, !tbaa !8
  %93 = load double, ptr %l, align 8, !tbaa !8
  %add86 = fadd double %92, %93
  %div87 = fdiv double %91, %add86
  %add88 = fadd double %div85, %div87
  %94 = load double, ptr %a, align 8, !tbaa !8
  %add89 = fadd double %94, 1.000000e+00
  %mul90 = fmul double %add88, %add89
  store double %mul90, ptr %t, align 8, !tbaa !8
  br label %if.end91

if.end91:                                         ; preds = %if.else83, %if.end82
  %95 = load double, ptr %t, align 8, !tbaa !8
  %96 = load double, ptr %t, align 8, !tbaa !8
  %97 = call double @llvm.fmuladd.f64(double %95, double %96, double 4.000000e+00)
  %call93 = call double @sqrt(double noundef %97) #5
  store double %call93, ptr %l, align 8, !tbaa !8
  %98 = load double, ptr %l, align 8, !tbaa !8
  %div94 = fdiv double 2.000000e+00, %98
  store double %div94, ptr %crt, align 8, !tbaa !8
  %99 = load double, ptr %t, align 8, !tbaa !8
  %100 = load double, ptr %l, align 8, !tbaa !8
  %div95 = fdiv double %99, %100
  store double %div95, ptr %srt, align 8, !tbaa !8
  %101 = load double, ptr %crt, align 8, !tbaa !8
  %102 = load double, ptr %srt, align 8, !tbaa !8
  %103 = load double, ptr %m, align 8, !tbaa !8
  %104 = call double @llvm.fmuladd.f64(double %102, double %103, double %101)
  %105 = load double, ptr %a, align 8, !tbaa !8
  %div97 = fdiv double %104, %105
  store double %div97, ptr %clt, align 8, !tbaa !8
  %106 = load double, ptr %ht, align 8, !tbaa !8
  %107 = load double, ptr %ft, align 8, !tbaa !8
  %div98 = fdiv double %106, %107
  %108 = load double, ptr %srt, align 8, !tbaa !8
  %mul99 = fmul double %div98, %108
  %109 = load double, ptr %a, align 8, !tbaa !8
  %div100 = fdiv double %mul99, %109
  store double %div100, ptr %slt, align 8, !tbaa !8
  br label %if.end101

if.end101:                                        ; preds = %if.end91, %if.end36
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then18
  %110 = load i64, ptr %swap, align 8, !tbaa !10
  %tobool103 = icmp ne i64 %110, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.end102
  %111 = load double, ptr %srt, align 8, !tbaa !8
  %112 = load ptr, ptr %csl.addr, align 8, !tbaa !4
  store double %111, ptr %112, align 8, !tbaa !8
  %113 = load double, ptr %crt, align 8, !tbaa !8
  %114 = load ptr, ptr %snl.addr, align 8, !tbaa !4
  store double %113, ptr %114, align 8, !tbaa !8
  %115 = load double, ptr %slt, align 8, !tbaa !8
  %116 = load ptr, ptr %csr.addr, align 8, !tbaa !4
  store double %115, ptr %116, align 8, !tbaa !8
  %117 = load double, ptr %clt, align 8, !tbaa !8
  %118 = load ptr, ptr %snr.addr, align 8, !tbaa !4
  store double %117, ptr %118, align 8, !tbaa !8
  br label %if.end106

if.else105:                                       ; preds = %if.end102
  %119 = load double, ptr %clt, align 8, !tbaa !8
  %120 = load ptr, ptr %csl.addr, align 8, !tbaa !4
  store double %119, ptr %120, align 8, !tbaa !8
  %121 = load double, ptr %slt, align 8, !tbaa !8
  %122 = load ptr, ptr %snl.addr, align 8, !tbaa !4
  store double %121, ptr %122, align 8, !tbaa !8
  %123 = load double, ptr %crt, align 8, !tbaa !8
  %124 = load ptr, ptr %csr.addr, align 8, !tbaa !4
  store double %123, ptr %124, align 8, !tbaa !8
  %125 = load double, ptr %srt, align 8, !tbaa !8
  %126 = load ptr, ptr %snr.addr, align 8, !tbaa !4
  store double %125, ptr %126, align 8, !tbaa !8
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  %127 = load i64, ptr %pmax, align 8, !tbaa !10
  %cmp107 = icmp eq i64 %127, 1
  br i1 %cmp107, label %if.then109, label %if.end115

if.then109:                                       ; preds = %if.end106
  %128 = load ptr, ptr %csr.addr, align 8, !tbaa !4
  %call110 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %128)
  %129 = load ptr, ptr %csl.addr, align 8, !tbaa !4
  %call111 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %129)
  %mul112 = fmul double %call110, %call111
  %130 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call113 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %130)
  %mul114 = fmul double %mul112, %call113
  store double %mul114, ptr %tsign, align 8, !tbaa !8
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.end106
  %131 = load i64, ptr %pmax, align 8, !tbaa !10
  %cmp116 = icmp eq i64 %131, 2
  br i1 %cmp116, label %if.then118, label %if.end124

if.then118:                                       ; preds = %if.end115
  %132 = load ptr, ptr %snr.addr, align 8, !tbaa !4
  %call119 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %132)
  %133 = load ptr, ptr %csl.addr, align 8, !tbaa !4
  %call120 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %133)
  %mul121 = fmul double %call119, %call120
  %134 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %call122 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %134)
  %mul123 = fmul double %mul121, %call122
  store double %mul123, ptr %tsign, align 8, !tbaa !8
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %if.end115
  %135 = load i64, ptr %pmax, align 8, !tbaa !10
  %cmp125 = icmp eq i64 %135, 3
  br i1 %cmp125, label %if.then127, label %if.end133

if.then127:                                       ; preds = %if.end124
  %136 = load ptr, ptr %snr.addr, align 8, !tbaa !4
  %call128 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %136)
  %137 = load ptr, ptr %snl.addr, align 8, !tbaa !4
  %call129 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %137)
  %mul130 = fmul double %call128, %call129
  %138 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %call131 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %138)
  %mul132 = fmul double %mul130, %call131
  store double %mul132, ptr %tsign, align 8, !tbaa !8
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %if.end124
  %139 = load ptr, ptr %ssmax.addr, align 8, !tbaa !4
  %call134 = call double @hypre_d_sign(ptr noundef %139, ptr noundef %tsign)
  %140 = load ptr, ptr %ssmax.addr, align 8, !tbaa !4
  store double %call134, ptr %140, align 8, !tbaa !8
  %141 = load double, ptr %tsign, align 8, !tbaa !8
  %142 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call135 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %142)
  %mul136 = fmul double %141, %call135
  %143 = load ptr, ptr %h__.addr, align 8, !tbaa !4
  %call137 = call double @hypre_d_sign(ptr noundef %c_b4, ptr noundef %143)
  %mul138 = fmul double %mul136, %call137
  store double %mul138, ptr %d__1, align 8, !tbaa !8
  %144 = load ptr, ptr %ssmin.addr, align 8, !tbaa !4
  %call139 = call double @hypre_d_sign(ptr noundef %144, ptr noundef %d__1)
  %145 = load ptr, ptr %ssmin.addr, align 8, !tbaa !4
  store double %call139, ptr %145, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %srt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %slt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %crt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %clt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %gasmal) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %gt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ft) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ha) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ga) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fa) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsign) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_b4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_b3) #5
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare double @hypre_dlamch(ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare double @hypre_d_sign(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !6, i64 0}

; ModuleID = 'samples/467.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dlaed5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dlaed5_(ptr noundef %i__, ptr noundef %d__, ptr noundef %z__, ptr noundef %delta, ptr noundef %rho, ptr noundef %dlam) #0 {
entry:
  %i__.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %delta.addr = alloca ptr, align 8
  %rho.addr = alloca ptr, align 8
  %dlam.addr = alloca ptr, align 8
  %d__1 = alloca double, align 8
  %b = alloca double, align 8
  %c__ = alloca double, align 8
  %w = alloca double, align 8
  %del = alloca double, align 8
  %tau = alloca double, align 8
  %temp = alloca double, align 8
  store ptr %i__, ptr %i__.addr, align 8, !tbaa !4
  store ptr %d__, ptr %d__.addr, align 8, !tbaa !4
  store ptr %z__, ptr %z__.addr, align 8, !tbaa !4
  store ptr %delta, ptr %delta.addr, align 8, !tbaa !4
  store ptr %rho, ptr %rho.addr, align 8, !tbaa !4
  store ptr %dlam, ptr %dlam.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c__) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %del) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  %0 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %delta.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %z__.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %d__.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %3, i64 2
  %4 = load double, ptr %arrayidx, align 8, !tbaa !8
  %5 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds double, ptr %5, i64 1
  %6 = load double, ptr %arrayidx3, align 8, !tbaa !8
  %sub = fsub double %4, %6
  store double %sub, ptr %del, align 8, !tbaa !8
  %7 = load ptr, ptr %i__.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !10
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else92

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %rho.addr, align 8, !tbaa !4
  %10 = load double, ptr %9, align 8, !tbaa !8
  %mul = fmul double %10, 2.000000e+00
  %11 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds double, ptr %11, i64 2
  %12 = load double, ptr %arrayidx4, align 8, !tbaa !8
  %13 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds double, ptr %13, i64 2
  %14 = load double, ptr %arrayidx5, align 8, !tbaa !8
  %15 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds double, ptr %15, i64 1
  %16 = load double, ptr %arrayidx7, align 8, !tbaa !8
  %17 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds double, ptr %17, i64 1
  %18 = load double, ptr %arrayidx8, align 8, !tbaa !8
  %mul9 = fmul double %16, %18
  %neg = fneg double %mul9
  %19 = call double @llvm.fmuladd.f64(double %12, double %14, double %neg)
  %mul10 = fmul double %mul, %19
  %20 = load double, ptr %del, align 8, !tbaa !8
  %div = fdiv double %mul10, %20
  %add = fadd double %div, 1.000000e+00
  store double %add, ptr %w, align 8, !tbaa !8
  %21 = load double, ptr %w, align 8, !tbaa !8
  %cmp11 = fcmp ogt double %21, 0.000000e+00
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %22 = load double, ptr %del, align 8, !tbaa !8
  %23 = load ptr, ptr %rho.addr, align 8, !tbaa !4
  %24 = load double, ptr %23, align 8, !tbaa !8
  %25 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds double, ptr %25, i64 1
  %26 = load double, ptr %arrayidx13, align 8, !tbaa !8
  %27 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds double, ptr %27, i64 1
  %28 = load double, ptr %arrayidx14, align 8, !tbaa !8
  %29 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds double, ptr %29, i64 2
  %30 = load double, ptr %arrayidx16, align 8, !tbaa !8
  %31 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds double, ptr %31, i64 2
  %32 = load double, ptr %arrayidx17, align 8, !tbaa !8
  %mul18 = fmul double %30, %32
  %33 = call double @llvm.fmuladd.f64(double %26, double %28, double %mul18)
  %34 = call double @llvm.fmuladd.f64(double %24, double %33, double %22)
  store double %34, ptr %b, align 8, !tbaa !8
  %35 = load ptr, ptr %rho.addr, align 8, !tbaa !4
  %36 = load double, ptr %35, align 8, !tbaa !8
  %37 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds double, ptr %37, i64 1
  %38 = load double, ptr %arrayidx20, align 8, !tbaa !8
  %mul21 = fmul double %36, %38
  %39 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds double, ptr %39, i64 1
  %40 = load double, ptr %arrayidx22, align 8, !tbaa !8
  %mul23 = fmul double %mul21, %40
  %41 = load double, ptr %del, align 8, !tbaa !8
  %mul24 = fmul double %mul23, %41
  store double %mul24, ptr %c__, align 8, !tbaa !8
  %42 = load double, ptr %c__, align 8, !tbaa !8
  %mul25 = fmul double %42, 2.000000e+00
  %43 = load double, ptr %b, align 8, !tbaa !8
  %44 = load double, ptr %b, align 8, !tbaa !8
  %45 = load double, ptr %b, align 8, !tbaa !8
  %46 = load double, ptr %c__, align 8, !tbaa !8
  %mul27 = fmul double %46, 4.000000e+00
  %neg28 = fneg double %mul27
  %47 = call double @llvm.fmuladd.f64(double %44, double %45, double %neg28)
  store double %47, ptr %d__1, align 8, !tbaa !8
  %48 = load double, ptr %d__1, align 8, !tbaa !8
  %cmp29 = fcmp oge double %48, 0.000000e+00
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  %49 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  %50 = load double, ptr %d__1, align 8, !tbaa !8
  %fneg = fneg double %50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %49, %cond.true ], [ %fneg, %cond.false ]
  %call = call double @sqrt(double noundef %cond) #4
  %add30 = fadd double %43, %call
  %div31 = fdiv double %mul25, %add30
  store double %div31, ptr %tau, align 8, !tbaa !8
  %51 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds double, ptr %51, i64 1
  %52 = load double, ptr %arrayidx32, align 8, !tbaa !8
  %53 = load double, ptr %tau, align 8, !tbaa !8
  %add33 = fadd double %52, %53
  %54 = load ptr, ptr %dlam.addr, align 8, !tbaa !4
  store double %add33, ptr %54, align 8, !tbaa !8
  %55 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds double, ptr %55, i64 1
  %56 = load double, ptr %arrayidx34, align 8, !tbaa !8
  %fneg35 = fneg double %56
  %57 = load double, ptr %tau, align 8, !tbaa !8
  %div36 = fdiv double %fneg35, %57
  %58 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds double, ptr %58, i64 1
  store double %div36, ptr %arrayidx37, align 8, !tbaa !8
  %59 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx38 = getelementptr inbounds double, ptr %59, i64 2
  %60 = load double, ptr %arrayidx38, align 8, !tbaa !8
  %61 = load double, ptr %del, align 8, !tbaa !8
  %62 = load double, ptr %tau, align 8, !tbaa !8
  %sub39 = fsub double %61, %62
  %div40 = fdiv double %60, %sub39
  %63 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx41 = getelementptr inbounds double, ptr %63, i64 2
  store double %div40, ptr %arrayidx41, align 8, !tbaa !8
  br label %if.end80

if.else:                                          ; preds = %if.then
  %64 = load double, ptr %del, align 8, !tbaa !8
  %fneg42 = fneg double %64
  %65 = load ptr, ptr %rho.addr, align 8, !tbaa !4
  %66 = load double, ptr %65, align 8, !tbaa !8
  %67 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds double, ptr %67, i64 1
  %68 = load double, ptr %arrayidx43, align 8, !tbaa !8
  %69 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds double, ptr %69, i64 1
  %70 = load double, ptr %arrayidx44, align 8, !tbaa !8
  %71 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds double, ptr %71, i64 2
  %72 = load double, ptr %arrayidx46, align 8, !tbaa !8
  %73 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx47 = getelementptr inbounds double, ptr %73, i64 2
  %74 = load double, ptr %arrayidx47, align 8, !tbaa !8
  %mul48 = fmul double %72, %74
  %75 = call double @llvm.fmuladd.f64(double %68, double %70, double %mul48)
  %76 = call double @llvm.fmuladd.f64(double %66, double %75, double %fneg42)
  store double %76, ptr %b, align 8, !tbaa !8
  %77 = load ptr, ptr %rho.addr, align 8, !tbaa !4
  %78 = load double, ptr %77, align 8, !tbaa !8
  %79 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx50 = getelementptr inbounds double, ptr %79, i64 2
  %80 = load double, ptr %arrayidx50, align 8, !tbaa !8
  %mul51 = fmul double %78, %80
  %81 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx52 = getelementptr inbounds double, ptr %81, i64 2
  %82 = load double, ptr %arrayidx52, align 8, !tbaa !8
  %mul53 = fmul double %mul51, %82
  %83 = load double, ptr %del, align 8, !tbaa !8
  %mul54 = fmul double %mul53, %83
  store double %mul54, ptr %c__, align 8, !tbaa !8
  %84 = load double, ptr %b, align 8, !tbaa !8
  %cmp55 = fcmp ogt double %84, 0.000000e+00
  br i1 %cmp55, label %if.then56, label %if.else63

if.then56:                                        ; preds = %if.else
  %85 = load double, ptr %c__, align 8, !tbaa !8
  %mul57 = fmul double %85, -2.000000e+00
  %86 = load double, ptr %b, align 8, !tbaa !8
  %87 = load double, ptr %b, align 8, !tbaa !8
  %88 = load double, ptr %b, align 8, !tbaa !8
  %89 = load double, ptr %c__, align 8, !tbaa !8
  %mul59 = fmul double %89, 4.000000e+00
  %90 = call double @llvm.fmuladd.f64(double %87, double %88, double %mul59)
  %call60 = call double @sqrt(double noundef %90) #4
  %add61 = fadd double %86, %call60
  %div62 = fdiv double %mul57, %add61
  store double %div62, ptr %tau, align 8, !tbaa !8
  br label %if.end

if.else63:                                        ; preds = %if.else
  %91 = load double, ptr %b, align 8, !tbaa !8
  %92 = load double, ptr %b, align 8, !tbaa !8
  %93 = load double, ptr %b, align 8, !tbaa !8
  %94 = load double, ptr %c__, align 8, !tbaa !8
  %mul65 = fmul double %94, 4.000000e+00
  %95 = call double @llvm.fmuladd.f64(double %92, double %93, double %mul65)
  %call66 = call double @sqrt(double noundef %95) #4
  %sub67 = fsub double %91, %call66
  %div68 = fdiv double %sub67, 2.000000e+00
  store double %div68, ptr %tau, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else63, %if.then56
  %96 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx69 = getelementptr inbounds double, ptr %96, i64 2
  %97 = load double, ptr %arrayidx69, align 8, !tbaa !8
  %98 = load double, ptr %tau, align 8, !tbaa !8
  %add70 = fadd double %97, %98
  %99 = load ptr, ptr %dlam.addr, align 8, !tbaa !4
  store double %add70, ptr %99, align 8, !tbaa !8
  %100 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx71 = getelementptr inbounds double, ptr %100, i64 1
  %101 = load double, ptr %arrayidx71, align 8, !tbaa !8
  %fneg72 = fneg double %101
  %102 = load double, ptr %del, align 8, !tbaa !8
  %103 = load double, ptr %tau, align 8, !tbaa !8
  %add73 = fadd double %102, %103
  %div74 = fdiv double %fneg72, %add73
  %104 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds double, ptr %104, i64 1
  store double %div74, ptr %arrayidx75, align 8, !tbaa !8
  %105 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx76 = getelementptr inbounds double, ptr %105, i64 2
  %106 = load double, ptr %arrayidx76, align 8, !tbaa !8
  %fneg77 = fneg double %106
  %107 = load double, ptr %tau, align 8, !tbaa !8
  %div78 = fdiv double %fneg77, %107
  %108 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx79 = getelementptr inbounds double, ptr %108, i64 2
  store double %div78, ptr %arrayidx79, align 8, !tbaa !8
  br label %if.end80

if.end80:                                         ; preds = %if.end, %cond.end
  %109 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds double, ptr %109, i64 1
  %110 = load double, ptr %arrayidx81, align 8, !tbaa !8
  %111 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds double, ptr %111, i64 1
  %112 = load double, ptr %arrayidx82, align 8, !tbaa !8
  %113 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds double, ptr %113, i64 2
  %114 = load double, ptr %arrayidx84, align 8, !tbaa !8
  %115 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds double, ptr %115, i64 2
  %116 = load double, ptr %arrayidx85, align 8, !tbaa !8
  %mul86 = fmul double %114, %116
  %117 = call double @llvm.fmuladd.f64(double %110, double %112, double %mul86)
  %call87 = call double @sqrt(double noundef %117) #4
  store double %call87, ptr %temp, align 8, !tbaa !8
  %118 = load double, ptr %temp, align 8, !tbaa !8
  %119 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx88 = getelementptr inbounds double, ptr %119, i64 1
  %120 = load double, ptr %arrayidx88, align 8, !tbaa !8
  %div89 = fdiv double %120, %118
  store double %div89, ptr %arrayidx88, align 8, !tbaa !8
  %121 = load double, ptr %temp, align 8, !tbaa !8
  %122 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds double, ptr %122, i64 2
  %123 = load double, ptr %arrayidx90, align 8, !tbaa !8
  %div91 = fdiv double %123, %121
  store double %div91, ptr %arrayidx90, align 8, !tbaa !8
  br label %if.end144

if.else92:                                        ; preds = %entry
  %124 = load double, ptr %del, align 8, !tbaa !8
  %fneg93 = fneg double %124
  %125 = load ptr, ptr %rho.addr, align 8, !tbaa !4
  %126 = load double, ptr %125, align 8, !tbaa !8
  %127 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds double, ptr %127, i64 1
  %128 = load double, ptr %arrayidx94, align 8, !tbaa !8
  %129 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds double, ptr %129, i64 1
  %130 = load double, ptr %arrayidx95, align 8, !tbaa !8
  %131 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds double, ptr %131, i64 2
  %132 = load double, ptr %arrayidx97, align 8, !tbaa !8
  %133 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx98 = getelementptr inbounds double, ptr %133, i64 2
  %134 = load double, ptr %arrayidx98, align 8, !tbaa !8
  %mul99 = fmul double %132, %134
  %135 = call double @llvm.fmuladd.f64(double %128, double %130, double %mul99)
  %136 = call double @llvm.fmuladd.f64(double %126, double %135, double %fneg93)
  store double %136, ptr %b, align 8, !tbaa !8
  %137 = load ptr, ptr %rho.addr, align 8, !tbaa !4
  %138 = load double, ptr %137, align 8, !tbaa !8
  %139 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds double, ptr %139, i64 2
  %140 = load double, ptr %arrayidx101, align 8, !tbaa !8
  %mul102 = fmul double %138, %140
  %141 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx103 = getelementptr inbounds double, ptr %141, i64 2
  %142 = load double, ptr %arrayidx103, align 8, !tbaa !8
  %mul104 = fmul double %mul102, %142
  %143 = load double, ptr %del, align 8, !tbaa !8
  %mul105 = fmul double %mul104, %143
  store double %mul105, ptr %c__, align 8, !tbaa !8
  %144 = load double, ptr %b, align 8, !tbaa !8
  %cmp106 = fcmp ogt double %144, 0.000000e+00
  br i1 %cmp106, label %if.then107, label %if.else113

if.then107:                                       ; preds = %if.else92
  %145 = load double, ptr %b, align 8, !tbaa !8
  %146 = load double, ptr %b, align 8, !tbaa !8
  %147 = load double, ptr %b, align 8, !tbaa !8
  %148 = load double, ptr %c__, align 8, !tbaa !8
  %mul109 = fmul double %148, 4.000000e+00
  %149 = call double @llvm.fmuladd.f64(double %146, double %147, double %mul109)
  %call110 = call double @sqrt(double noundef %149) #4
  %add111 = fadd double %145, %call110
  %div112 = fdiv double %add111, 2.000000e+00
  store double %div112, ptr %tau, align 8, !tbaa !8
  br label %if.end121

if.else113:                                       ; preds = %if.else92
  %150 = load double, ptr %c__, align 8, !tbaa !8
  %mul114 = fmul double %150, 2.000000e+00
  %151 = load double, ptr %b, align 8, !tbaa !8
  %fneg115 = fneg double %151
  %152 = load double, ptr %b, align 8, !tbaa !8
  %153 = load double, ptr %b, align 8, !tbaa !8
  %154 = load double, ptr %c__, align 8, !tbaa !8
  %mul117 = fmul double %154, 4.000000e+00
  %155 = call double @llvm.fmuladd.f64(double %152, double %153, double %mul117)
  %call118 = call double @sqrt(double noundef %155) #4
  %add119 = fadd double %fneg115, %call118
  %div120 = fdiv double %mul114, %add119
  store double %div120, ptr %tau, align 8, !tbaa !8
  br label %if.end121

if.end121:                                        ; preds = %if.else113, %if.then107
  %156 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx122 = getelementptr inbounds double, ptr %156, i64 2
  %157 = load double, ptr %arrayidx122, align 8, !tbaa !8
  %158 = load double, ptr %tau, align 8, !tbaa !8
  %add123 = fadd double %157, %158
  %159 = load ptr, ptr %dlam.addr, align 8, !tbaa !4
  store double %add123, ptr %159, align 8, !tbaa !8
  %160 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx124 = getelementptr inbounds double, ptr %160, i64 1
  %161 = load double, ptr %arrayidx124, align 8, !tbaa !8
  %fneg125 = fneg double %161
  %162 = load double, ptr %del, align 8, !tbaa !8
  %163 = load double, ptr %tau, align 8, !tbaa !8
  %add126 = fadd double %162, %163
  %div127 = fdiv double %fneg125, %add126
  %164 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx128 = getelementptr inbounds double, ptr %164, i64 1
  store double %div127, ptr %arrayidx128, align 8, !tbaa !8
  %165 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %arrayidx129 = getelementptr inbounds double, ptr %165, i64 2
  %166 = load double, ptr %arrayidx129, align 8, !tbaa !8
  %fneg130 = fneg double %166
  %167 = load double, ptr %tau, align 8, !tbaa !8
  %div131 = fdiv double %fneg130, %167
  %168 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx132 = getelementptr inbounds double, ptr %168, i64 2
  store double %div131, ptr %arrayidx132, align 8, !tbaa !8
  %169 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx133 = getelementptr inbounds double, ptr %169, i64 1
  %170 = load double, ptr %arrayidx133, align 8, !tbaa !8
  %171 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx134 = getelementptr inbounds double, ptr %171, i64 1
  %172 = load double, ptr %arrayidx134, align 8, !tbaa !8
  %173 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx136 = getelementptr inbounds double, ptr %173, i64 2
  %174 = load double, ptr %arrayidx136, align 8, !tbaa !8
  %175 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx137 = getelementptr inbounds double, ptr %175, i64 2
  %176 = load double, ptr %arrayidx137, align 8, !tbaa !8
  %mul138 = fmul double %174, %176
  %177 = call double @llvm.fmuladd.f64(double %170, double %172, double %mul138)
  %call139 = call double @sqrt(double noundef %177) #4
  store double %call139, ptr %temp, align 8, !tbaa !8
  %178 = load double, ptr %temp, align 8, !tbaa !8
  %179 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx140 = getelementptr inbounds double, ptr %179, i64 1
  %180 = load double, ptr %arrayidx140, align 8, !tbaa !8
  %div141 = fdiv double %180, %178
  store double %div141, ptr %arrayidx140, align 8, !tbaa !8
  %181 = load double, ptr %temp, align 8, !tbaa !8
  %182 = load ptr, ptr %delta.addr, align 8, !tbaa !4
  %arrayidx142 = getelementptr inbounds double, ptr %182, i64 2
  %183 = load double, ptr %arrayidx142, align 8, !tbaa !8
  %div143 = fdiv double %183, %181
  store double %div143, ptr %arrayidx142, align 8, !tbaa !8
  br label %if.end144

if.end144:                                        ; preds = %if.end121, %if.end80
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %del) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #4 = { nounwind }

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
!11 = !{!"int", !6, i64 0}

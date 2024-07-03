; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define i32 @FLA_Tridiag_UT_l_step_opz_var2(i32 %m_A, i32 %cs_A, ptr %buff_T, ptr %m_A.addr, ptr %add.ptr, ptr %buff_2, ptr %buff_1, ptr %buff_0, ptr %buff_m1, ptr %first_elem, ptr %beta, ptr %inv_tau11, ptr %minus_inv_tau11, ptr %i, ptr %b_alg, ptr %buff_u, ptr %buff_z, ptr %call53, ptr %0, i32 %add73, ptr %alpha11, ptr %a21, i32 %1, i32 %mul70, ptr %call, ptr %u21, ptr %zeta11, ptr %z21, ptr %w21, ptr %m_behind, ptr %n_behind, i1 %cmp128, ptr %minus_upsilon11, ptr %imag141, double %2, i1 %cmp193) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cond.end217, %entry
  br i1 %cmp128, label %if.then, label %cond.false189

if.then:                                          ; preds = %for.cond
  store double 0.000000e+00, ptr %buff_T, align 8
  store volatile i32 0, ptr null, align 4
  store volatile i32 0, ptr null, align 4
  store volatile i32 0, ptr null, align 4
  br label %cond.false189

cond.false189:                                    ; preds = %if.then, %for.cond
  %cmp1931 = fcmp olt double 0.000000e+00, 0.000000e+00
  br i1 %cmp193, label %cond.true195, label %cond.end217

cond.true195:                                     ; preds = %cond.false189
  %3 = load double, ptr %buff_T, align 8
  %cmp197 = fcmp ugt double %3, 0.000000e+00
  br i1 %cmp197, label %cond.end217, label %cond.true199

cond.true199:                                     ; preds = %cond.true195
  br label %cond.end217

cond.end217:                                      ; preds = %cond.true199, %cond.true195, %cond.false189
  %cond21866 = phi double [ 0x7FF8000000000000, %cond.true199 ], [ 0.000000e+00, %cond.true195 ], [ 0.000000e+00, %cond.false189 ]
  store double 0.000000e+00, ptr %buff_T, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store double 0.000000e+00, ptr %buff_T, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %div221 = fmul double %2, 0.000000e+00
  %4 = call double @llvm.fmuladd.f64(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store double %cond21866, ptr %buff_T, align 8
  br label %for.cond
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

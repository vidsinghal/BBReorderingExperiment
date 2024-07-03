; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//40/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @FLA_Tridiag_UT_l_step_opz_var2(i32 %m_A, i32 %cs_A, ptr nocapture writeonly %buff_T, ptr nocapture readnone %m_A.addr, ptr nocapture readnone %add.ptr, ptr nocapture readnone %buff_2, ptr nocapture readnone %buff_1, ptr nocapture readnone %buff_0, ptr nocapture readnone %buff_m1, ptr nocapture readnone %first_elem, ptr nocapture readnone %beta, ptr nocapture readnone %inv_tau11, ptr nocapture readnone %minus_inv_tau11, ptr nocapture readnone %i, ptr nocapture readnone %b_alg, ptr nocapture readnone %buff_u, ptr nocapture readnone %buff_z, ptr nocapture readnone %call53, ptr nocapture readnone %0, i32 %add73, ptr nocapture readnone %alpha11, ptr nocapture readnone %a21, i32 %1, i32 %mul70, ptr nocapture readnone %call, ptr nocapture readnone %u21, ptr nocapture readnone %zeta11, ptr nocapture readnone %z21, ptr nocapture readnone %w21, ptr nocapture readnone %m_behind, ptr nocapture readnone %n_behind, i1 %cmp128, ptr nocapture readnone %minus_upsilon11, ptr nocapture readnone %imag141, double %2, i1 %cmp193) local_unnamed_addr #1 {
entry:
  %cmp193.fr = freeze i1 %cmp193
  br i1 %cmp128, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp193.fr, label %for.cond.us.us, label %for.cond.us

for.cond.us.us:                                   ; preds = %entry.split.us, %for.cond.us.us
  store volatile i32 0, ptr null, align 4294967296
  store volatile i32 0, ptr null, align 4294967296
  store volatile i32 0, ptr null, align 4294967296
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store double 0x7FF8000000000000, ptr %buff_T, align 8
  br label %for.cond.us.us

for.cond.us:                                      ; preds = %entry.split.us, %for.cond.us
  store volatile i32 0, ptr null, align 4294967296
  store volatile i32 0, ptr null, align 4294967296
  store volatile i32 0, ptr null, align 4294967296
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store double 0.000000e+00, ptr %buff_T, align 8
  br label %for.cond.us

entry.split:                                      ; preds = %entry
  br i1 %cmp193.fr, label %for.cond.us2, label %for.cond

for.cond.us2:                                     ; preds = %entry.split, %for.cond.us2
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.cond.us2

for.cond:                                         ; preds = %entry.split, %for.cond
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.cond
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nofree norecurse noreturn nounwind }

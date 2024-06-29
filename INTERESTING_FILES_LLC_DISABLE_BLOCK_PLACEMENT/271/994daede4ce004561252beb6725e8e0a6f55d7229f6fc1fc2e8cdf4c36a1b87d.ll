; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @ref_get_conventional_lattice(ptr %lattice) {
entry:
  call void @ptg_get_pointgroup()
  call void @llvm.memcpy.p0.p0.i64(ptr null, ptr %lattice, i64 24, i1 false)
  ret void
}

declare void @ptg_get_pointgroup()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

define void @set_tetra(ptr %lattice, double %0) {
entry:
  %call = call double @sqrt(double %0)
  %1 = load double, ptr %lattice, align 8
  %call4 = call double @sqrt(double %1)
  ret void
}

declare double @sqrt(double)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

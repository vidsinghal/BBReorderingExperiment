; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @test_BLAS_sdot(i32 %call, i32 %call28) {
entry:
  %call1 = load volatile i32, ptr null, align 4
  %conv27 = sitofp i32 %call to double
  %conv29 = sitofp i32 %call28 to double
  %call30 = call double @pow(double %conv27, double %conv29)
  %call33 = call double @power()
  unreachable
}

declare double @pow(double, double)

declare double @power()

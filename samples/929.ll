; ModuleID = 'samples/929.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/install/util/log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }
%struct.doublecomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define double @r_log(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load float, ptr %0, align 4
  %conv = fpext float %1 to double
  %call = call double @log(double noundef %conv) #2
  ret double %call
}

; Function Attrs: nounwind
declare double @log(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @d_log(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load double, ptr %0, align 8
  %call = call double @log(double noundef %1) #2
  ret double %call
}

; Function Attrs: noinline nounwind optnone uwtable
define void @c_log(ptr noundef %r, ptr noundef %z) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %ret_val = alloca { double, double }, align 8
  %coerce = alloca { double, double }, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %r1 = getelementptr inbounds %struct.complex, ptr %0, i32 0, i32 0
  %1 = load float, ptr %r1, align 4
  %2 = load ptr, ptr %z.addr, align 8
  %i = getelementptr inbounds %struct.complex, ptr %2, i32 0, i32 1
  %3 = load float, ptr %i, align 4
  %mul.rl = fmul float 0.000000e+00, %3
  %mul.il = fmul float 1.000000e+00, %3
  %add.r = fadd float %1, %mul.rl
  %conv = fpext float %add.r to double
  %conv2 = fpext float %mul.il to double
  %coerce.realp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 1
  store double %conv, ptr %coerce.realp, align 8
  store double %conv2, ptr %coerce.imagp, align 8
  %4 = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 0
  %5 = load double, ptr %4, align 8
  %6 = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 1
  %7 = load double, ptr %6, align 8
  %call = call { double, double } @clog(double noundef %5, double noundef %7) #2
  %8 = extractvalue { double, double } %call, 0
  %9 = extractvalue { double, double } %call, 1
  %ret_val.realp = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 0
  %ret_val.imagp = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 1
  store double %8, ptr %ret_val.realp, align 8
  store double %9, ptr %ret_val.imagp, align 8
  %ret_val.realp3 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 0
  %ret_val.real = load double, ptr %ret_val.realp3, align 8
  %ret_val.imagp4 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 1
  %ret_val.imag = load double, ptr %ret_val.imagp4, align 8
  %conv5 = fptrunc double %ret_val.real to float
  %10 = load ptr, ptr %r.addr, align 8
  %r6 = getelementptr inbounds %struct.complex, ptr %10, i32 0, i32 0
  store float %conv5, ptr %r6, align 4
  %ret_val.realp7 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 0
  %ret_val.real8 = load double, ptr %ret_val.realp7, align 8
  %ret_val.imagp9 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 1
  %ret_val.imag10 = load double, ptr %ret_val.imagp9, align 8
  %conv11 = fptrunc double %ret_val.imag10 to float
  %11 = load ptr, ptr %r.addr, align 8
  %i12 = getelementptr inbounds %struct.complex, ptr %11, i32 0, i32 1
  store float %conv11, ptr %i12, align 4
  ret void
}

; Function Attrs: nounwind
declare { double, double } @clog(double noundef, double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @z_log(ptr noundef %r, ptr noundef %z) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %ret_val = alloca { double, double }, align 8
  %coerce = alloca { double, double }, align 8
  store ptr %r, ptr %r.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %r1 = getelementptr inbounds %struct.doublecomplex, ptr %0, i32 0, i32 0
  %1 = load double, ptr %r1, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %i = getelementptr inbounds %struct.doublecomplex, ptr %2, i32 0, i32 1
  %3 = load double, ptr %i, align 8
  %mul.rl = fmul double 0.000000e+00, %3
  %mul.il = fmul double 1.000000e+00, %3
  %add.r = fadd double %1, %mul.rl
  %coerce.realp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 1
  store double %add.r, ptr %coerce.realp, align 8
  store double %mul.il, ptr %coerce.imagp, align 8
  %4 = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 0
  %5 = load double, ptr %4, align 8
  %6 = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 1
  %7 = load double, ptr %6, align 8
  %call = call { double, double } @clog(double noundef %5, double noundef %7) #2
  %8 = extractvalue { double, double } %call, 0
  %9 = extractvalue { double, double } %call, 1
  %ret_val.realp = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 0
  %ret_val.imagp = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 1
  store double %8, ptr %ret_val.realp, align 8
  store double %9, ptr %ret_val.imagp, align 8
  %ret_val.realp2 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 0
  %ret_val.real = load double, ptr %ret_val.realp2, align 8
  %ret_val.imagp3 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 1
  %ret_val.imag = load double, ptr %ret_val.imagp3, align 8
  %10 = load ptr, ptr %r.addr, align 8
  %r4 = getelementptr inbounds %struct.doublecomplex, ptr %10, i32 0, i32 0
  store double %ret_val.real, ptr %r4, align 8
  %ret_val.realp5 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 0
  %ret_val.real6 = load double, ptr %ret_val.realp5, align 8
  %ret_val.imagp7 = getelementptr inbounds { double, double }, ptr %ret_val, i32 0, i32 1
  %ret_val.imag8 = load double, ptr %ret_val.imagp7, align 8
  %11 = load ptr, ptr %r.addr, align 8
  %i9 = getelementptr inbounds %struct.doublecomplex, ptr %11, i32 0, i32 1
  store double %ret_val.imag8, ptr %i9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

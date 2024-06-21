; ModuleID = 'samples/125.bc'
source_filename = "../scipy/special/cephes/i1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = internal global [29 x double] [double 0x3C499F2A0C3C4014, double 0xBC7857D0C38A0576, double 0x3CA663E3E593BFAC, double 0xBCD3EAAA7E0D1573, double 0x3D011D7F0615290C, double 0xBD2C628E1C8F0B3B, double 0x3D56AF784779D955, double 0xBD8173835FB70366, double 0x3DA9CEE2B21D3154, double 0xBDD2510397EB07DE, double 0x3DF8EA34B43FDF6C, double 0xBE20361B28EA67E6, double 0x3E44258E02395010, double 0xBE67DD3E24B8C3E8, double 0x3E8AE344B347D108, double 0xBEACC0798363992A, double 0x3ECD1C4ED511AFC5, double 0xBEEBD5F9B8DEBBCF, double 0x3F0911B542C70D0B, double 0xBF2533CAD3D694FE, double 0x3F40C95DB6C6DF7D, double 0xBF58CC620B3CD4A4, double 0x3F71065349D3A1B4, double 0xBF85A29F7913A26A, double 0x3F9951E3E7BB2349, double 0xBFAB1BBC537C9EBC, double 0x3FBA46DAD536F53C, double 0xBFC694D10469192E, double 0x3FD02A63724A7FFA], align 16
@B = internal global [25 x double] [double 0x3C61556DB352E8E6, double 0x3C545B8AEA87B950, double 0xBC8ACEA3B2532277, double 0xBC82806C9C773320, double 0x3CB55915FCEB588A, double 0x3CB7D68E5F04A2D1, double 0xBCE0EFCD8BC4D22A, double 0xBCF12DB5138AFBC7, double 0x3D0776E1762D31E8, double 0x3D280D3C26B3281E, double 0xBD17A9482E6D22A0, double 0xBD5CBC458E73E255, double 0xBD6953E1076AB493, double 0x3D81E7D3F6439FA3, double 0x3DAF101F653C457B, double 0x3DC1E1A1F1587865, double 0xBDB4DCF9D4504C0C, double 0xBE0334CA5423DD80, double 0xBE30790B9AD53528, double 0xBE5C415394BB46C1, double 0xBE90DBFD2E9E5443, double 0xBED048DF49CA0373, double 0xBF1CFD7F804AA9A6, double 0xBF83FDA053FCDB4C, double 0x3FE8EA18B55B1514], align 16

; Function Attrs: nounwind uwtable
define double @cephes_i1(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  %0 = load double, ptr %x.addr, align 8, !tbaa !4
  %1 = call double @llvm.fabs.f64(double %0)
  store double %1, ptr %z, align 8, !tbaa !4
  %2 = load double, ptr %z, align 8, !tbaa !4
  %cmp = fcmp ole double %2, 8.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load double, ptr %z, align 8, !tbaa !4
  %div = fdiv double %3, 2.000000e+00
  %sub = fsub double %div, 2.000000e+00
  store double %sub, ptr %y, align 8, !tbaa !4
  %4 = load double, ptr %y, align 8, !tbaa !4
  %call = call double @cephes_chbevl(double noundef %4, ptr noundef @A, i32 noundef 29)
  %5 = load double, ptr %z, align 8, !tbaa !4
  %mul = fmul double %call, %5
  %6 = load double, ptr %z, align 8, !tbaa !4
  %call1 = call double @exp(double noundef %6) #5
  %mul2 = fmul double %mul, %call1
  store double %mul2, ptr %z, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load double, ptr %z, align 8, !tbaa !4
  %call3 = call double @exp(double noundef %7) #5
  %8 = load double, ptr %z, align 8, !tbaa !4
  %div4 = fdiv double 3.200000e+01, %8
  %sub5 = fsub double %div4, 2.000000e+00
  %call6 = call double @cephes_chbevl(double noundef %sub5, ptr noundef @B, i32 noundef 25)
  %mul7 = fmul double %call3, %call6
  %9 = load double, ptr %z, align 8, !tbaa !4
  %call8 = call double @sqrt(double noundef %9) #5
  %div9 = fdiv double %mul7, %call8
  store double %div9, ptr %z, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp10 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %11 = load double, ptr %z, align 8, !tbaa !4
  %fneg = fneg double %11
  store double %fneg, ptr %z, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %12 = load double, ptr %z, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  ret double %12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare double @cephes_chbevl(double noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare double @exp(double noundef) #4

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define double @cephes_i1e(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  %0 = load double, ptr %x.addr, align 8, !tbaa !4
  %1 = call double @llvm.fabs.f64(double %0)
  store double %1, ptr %z, align 8, !tbaa !4
  %2 = load double, ptr %z, align 8, !tbaa !4
  %cmp = fcmp ole double %2, 8.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load double, ptr %z, align 8, !tbaa !4
  %div = fdiv double %3, 2.000000e+00
  %sub = fsub double %div, 2.000000e+00
  store double %sub, ptr %y, align 8, !tbaa !4
  %4 = load double, ptr %y, align 8, !tbaa !4
  %call = call double @cephes_chbevl(double noundef %4, ptr noundef @A, i32 noundef 29)
  %5 = load double, ptr %z, align 8, !tbaa !4
  %mul = fmul double %call, %5
  store double %mul, ptr %z, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load double, ptr %z, align 8, !tbaa !4
  %div1 = fdiv double 3.200000e+01, %6
  %sub2 = fsub double %div1, 2.000000e+00
  %call3 = call double @cephes_chbevl(double noundef %sub2, ptr noundef @B, i32 noundef 25)
  %7 = load double, ptr %z, align 8, !tbaa !4
  %call4 = call double @sqrt(double noundef %7) #5
  %div5 = fdiv double %call3, %call4
  store double %div5, ptr %z, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp6 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %9 = load double, ptr %z, align 8, !tbaa !4
  %fneg = fneg double %9
  store double %fneg, ptr %z, align 8, !tbaa !4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %10 = load double, ptr %z, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  ret double %10
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}

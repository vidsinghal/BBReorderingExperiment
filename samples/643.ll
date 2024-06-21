; ModuleID = 'samples/643.bc'
source_filename = "../scipy/special/cephes/shichi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHEP = external global double, align 8
@S1 = internal global [22 x double] [double 0x3C753373BD4A01B0, double 0xBC9B8A3D2418B05E, double 0x3CAD724D82487FE6, double 0x3CD3CC1A2C157515, double 0xBD0D91B5BAAABDA0, double 0x3D30B80CBE40D1AE, double 0xBD238BA2E110BF82, double 0xBD78A3BB25413725, double 0x3DA4DEA572B09394, double 0xBDB1C48733B017F7, double 0xBDE8734ACE488AAC, double 0x3E17456502073862, double 0xBE11BD4BD68BFFFC, double 0xBE6326712F23DF61, double 0x3E836FF0511CAC08, double 0x3EAA3D7C3DCFFEA3, double 0xBED6A5565F3224B1, double 0xBF0061BE352ED961, double 0x3F17559B473BF3BD, double 0x3F6097F587DB567F, double 0x3F9E5126D464B51B, double 0x3FF1E548AC8CA8B4], align 16
@C1 = internal global [23 x double] [double 0xBC62BBC5A4784463, double 0x3C79160474D6A49C, double 0x3C8E209323FCC2C4, double 0xBCD1179FA09D4527, double 0x3CF81E6DB8580025, double 0xBD0B3FBFF5910772, double 0xBD30E9B09DFE0FCB, double 0x3D693436C5B0CD0C, double 0xBD89D0F1AB0AE164, double 0xBD78B13A2561A10C, double 0x3DD8166DDD3ABBED, double 0xBDFE3E304FD78B61, double 0xBDE9D662156743D3, double 0x3E4C3AFCFFD94B98, double 0xBE698769E86CA8CD, double 0xBE8DC421B2049EA4, double 0x3EC053C4264D421F, double 0x3ED22EBBEA34E2FA, double 0xBF10145ED8010CD7, double 0xBF3484B3E2FDC93C, double 0x3F404A8541AA68EF, double 0x3F9B11B60417FC8D, double 0x3FF1D4D5974CE17B], align 16
@S2 = internal global [23 x double] [double 0xBC68487F83852B4C, double 0x3C7E420AA1F5237F, double 0x3C996CAD2812EE75, double 0xBCB8637B457B39AF, double 0xBCCDED01C086EDF9, double 0x3CF1B791969F9513, double 0x3D06EA62AE46CD11, double 0xBD27B518B74A650F, double 0xBD46A216216E0713, double 0x3D578DB0463A9F2E, double 0x3D87FA6A0A690DD5, double 0x3D7D5C47D2CD9397, double 0xBDC333A71FE6B5D8, double 0xBDE5CB8F9E19A2DA, double 0xBDE8A42FAF5AE7B9, double 0x3E1E48F2B2C4D544, double 0x3E5226D13B1D8488, double 0x3E80D46DAF17084C, double 0x3EB38009C8713EFC, double 0x3EF0E2D67F39B36E, double 0x3F36ECD81F7D73D7, double 0x3F8A4FF366D5B790, double 0x3FF09625E3259D96], align 16
@C2 = internal global [24 x double] [double 0x3C629B2D11193916, double 0xBC77FD43F6E47B70, double 0xBC913D485BC56B55, double 0x3CB35993BAE932D2, double 0x3CC04BDC19588227, double 0xBCEBFD0F32C73000, double 0xBCF3F1676B8B0482, double 0x3D23AED6CBBCDD23, double 0x3D32AC596B701D61, double 0xBD5A2B9951F16A52, double 0xBD765DAB935BCDB5, double 0x3D882D18F5E44D6F, double 0x3DB9B45FB882095E, double 0x3DBDD83E8E3429AF, double 0xBDF1A228799BBFFC, double 0xBE1BA9CB8351BCF7, double 0xBE344BAA7B57CA05, double 0xBE29C729AA38FCE9, double 0x3E74EBE8F1ECA681, double 0x3EB1F1282478C545, double 0x3EF0B9A166FCCFAE, double 0x3F36E930AD5DA0BF, double 0x3F8A4FCF7639DE19, double 0x3FF09625962F25D7], align 16

; Function Attrs: nounwind uwtable
define i32 @cephes_shichi(double noundef %x, ptr noundef %si, ptr noundef %ci) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %si.addr = alloca ptr, align 8
  %ci.addr = alloca ptr, align 8
  %k = alloca double, align 8
  %z = alloca double, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %sign = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store double %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %si, ptr %si.addr, align 8, !tbaa !8
  store ptr %ci, ptr %ci.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr %sign) #5
  %0 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 -1, ptr %sign, align 2, !tbaa !10
  %1 = load double, ptr %x.addr, align 8, !tbaa !4
  %fneg = fneg double %1
  store double %fneg, ptr %x.addr, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 0, ptr %sign, align 2, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %si.addr, align 8, !tbaa !8
  store double 0.000000e+00, ptr %3, align 8, !tbaa !4
  %4 = load ptr, ptr %ci.addr, align 8, !tbaa !8
  store double 0xFFF0000000000000, ptr %4, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp4 = fcmp oge double %5, 8.000000e+00
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %chb

if.end6:                                          ; preds = %if.end3
  %6 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp7 = fcmp oge double %6, 8.800000e+01
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  br label %asymp

if.end9:                                          ; preds = %if.end6
  %7 = load double, ptr %x.addr, align 8, !tbaa !4
  %8 = load double, ptr %x.addr, align 8, !tbaa !4
  %mul = fmul double %7, %8
  store double %mul, ptr %z, align 8, !tbaa !4
  store double 1.000000e+00, ptr %a, align 8, !tbaa !4
  store double 1.000000e+00, ptr %s, align 8, !tbaa !4
  store double 0.000000e+00, ptr %c, align 8, !tbaa !4
  store double 2.000000e+00, ptr %k, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end9
  %9 = load double, ptr %z, align 8, !tbaa !4
  %10 = load double, ptr %k, align 8, !tbaa !4
  %div = fdiv double %9, %10
  %11 = load double, ptr %a, align 8, !tbaa !4
  %mul10 = fmul double %11, %div
  store double %mul10, ptr %a, align 8, !tbaa !4
  %12 = load double, ptr %a, align 8, !tbaa !4
  %13 = load double, ptr %k, align 8, !tbaa !4
  %div11 = fdiv double %12, %13
  %14 = load double, ptr %c, align 8, !tbaa !4
  %add = fadd double %14, %div11
  store double %add, ptr %c, align 8, !tbaa !4
  %15 = load double, ptr %k, align 8, !tbaa !4
  %add12 = fadd double %15, 1.000000e+00
  store double %add12, ptr %k, align 8, !tbaa !4
  %16 = load double, ptr %k, align 8, !tbaa !4
  %17 = load double, ptr %a, align 8, !tbaa !4
  %div13 = fdiv double %17, %16
  store double %div13, ptr %a, align 8, !tbaa !4
  %18 = load double, ptr %a, align 8, !tbaa !4
  %19 = load double, ptr %k, align 8, !tbaa !4
  %div14 = fdiv double %18, %19
  %20 = load double, ptr %s, align 8, !tbaa !4
  %add15 = fadd double %20, %div14
  store double %add15, ptr %s, align 8, !tbaa !4
  %21 = load double, ptr %k, align 8, !tbaa !4
  %add16 = fadd double %21, 1.000000e+00
  store double %add16, ptr %k, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %22 = load double, ptr %a, align 8, !tbaa !4
  %23 = load double, ptr %s, align 8, !tbaa !4
  %div17 = fdiv double %22, %23
  %24 = call double @llvm.fabs.f64(double %div17)
  %25 = load double, ptr @MACHEP, align 8, !tbaa !4
  %cmp18 = fcmp ogt double %24, %25
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load double, ptr %x.addr, align 8, !tbaa !4
  %27 = load double, ptr %s, align 8, !tbaa !4
  %mul19 = fmul double %27, %26
  store double %mul19, ptr %s, align 8, !tbaa !4
  br label %done

chb:                                              ; preds = %if.then5
  %28 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp20 = fcmp olt double %28, 1.800000e+01
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %chb
  %29 = load double, ptr %x.addr, align 8, !tbaa !4
  %div22 = fdiv double 5.760000e+02, %29
  %sub = fsub double %div22, 5.200000e+01
  %div23 = fdiv double %sub, 1.000000e+01
  store double %div23, ptr %a, align 8, !tbaa !4
  %30 = load double, ptr %x.addr, align 8, !tbaa !4
  %call = call double @exp(double noundef %30) #5
  %31 = load double, ptr %x.addr, align 8, !tbaa !4
  %div24 = fdiv double %call, %31
  store double %div24, ptr %k, align 8, !tbaa !4
  %32 = load double, ptr %k, align 8, !tbaa !4
  %33 = load double, ptr %a, align 8, !tbaa !4
  %call25 = call double @cephes_chbevl(double noundef %33, ptr noundef @S1, i32 noundef 22)
  %mul26 = fmul double %32, %call25
  store double %mul26, ptr %s, align 8, !tbaa !4
  %34 = load double, ptr %k, align 8, !tbaa !4
  %35 = load double, ptr %a, align 8, !tbaa !4
  %call27 = call double @cephes_chbevl(double noundef %35, ptr noundef @C1, i32 noundef 23)
  %mul28 = fmul double %34, %call27
  store double %mul28, ptr %c, align 8, !tbaa !4
  br label %done

if.end29:                                         ; preds = %chb
  %36 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp30 = fcmp ole double %36, 8.800000e+01
  br i1 %cmp30, label %if.then31, label %if.end41

if.then31:                                        ; preds = %if.end29
  %37 = load double, ptr %x.addr, align 8, !tbaa !4
  %div32 = fdiv double 6.336000e+03, %37
  %sub33 = fsub double %div32, 2.120000e+02
  %div34 = fdiv double %sub33, 7.000000e+01
  store double %div34, ptr %a, align 8, !tbaa !4
  %38 = load double, ptr %x.addr, align 8, !tbaa !4
  %call35 = call double @exp(double noundef %38) #5
  %39 = load double, ptr %x.addr, align 8, !tbaa !4
  %div36 = fdiv double %call35, %39
  store double %div36, ptr %k, align 8, !tbaa !4
  %40 = load double, ptr %k, align 8, !tbaa !4
  %41 = load double, ptr %a, align 8, !tbaa !4
  %call37 = call double @cephes_chbevl(double noundef %41, ptr noundef @S2, i32 noundef 23)
  %mul38 = fmul double %40, %call37
  store double %mul38, ptr %s, align 8, !tbaa !4
  %42 = load double, ptr %k, align 8, !tbaa !4
  %43 = load double, ptr %a, align 8, !tbaa !4
  %call39 = call double @cephes_chbevl(double noundef %43, ptr noundef @C2, i32 noundef 24)
  %mul40 = fmul double %42, %call39
  store double %mul40, ptr %c, align 8, !tbaa !4
  br label %done

if.end41:                                         ; preds = %if.end29
  br label %asymp

asymp:                                            ; preds = %if.end41, %if.then8
  %44 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp42 = fcmp ogt double %44, 1.000000e+03
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %asymp
  %45 = load ptr, ptr %si.addr, align 8, !tbaa !8
  store double 0x7FF0000000000000, ptr %45, align 8, !tbaa !4
  %46 = load ptr, ptr %ci.addr, align 8, !tbaa !8
  store double 0x7FF0000000000000, ptr %46, align 8, !tbaa !4
  br label %if.end65

if.else44:                                        ; preds = %asymp
  %47 = load double, ptr %x.addr, align 8, !tbaa !4
  %48 = load double, ptr %x.addr, align 8, !tbaa !4
  %mul45 = fmul double %47, %48
  %div46 = fdiv double 4.000000e+00, %mul45
  %call47 = call double @hyp3f0(double noundef 5.000000e-01, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef %div46)
  store double %call47, ptr %a, align 8, !tbaa !4
  %49 = load double, ptr %x.addr, align 8, !tbaa !4
  %50 = load double, ptr %x.addr, align 8, !tbaa !4
  %mul48 = fmul double %49, %50
  %div49 = fdiv double 4.000000e+00, %mul48
  %call50 = call double @hyp3f0(double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.500000e+00, double noundef %div49)
  store double %call50, ptr %b, align 8, !tbaa !4
  %51 = load double, ptr %x.addr, align 8, !tbaa !4
  %call51 = call double @cosh(double noundef %51) #5
  %52 = load double, ptr %x.addr, align 8, !tbaa !4
  %div52 = fdiv double %call51, %52
  %53 = load double, ptr %a, align 8, !tbaa !4
  %54 = load double, ptr %x.addr, align 8, !tbaa !4
  %call54 = call double @sinh(double noundef %54) #5
  %55 = load double, ptr %x.addr, align 8, !tbaa !4
  %56 = load double, ptr %x.addr, align 8, !tbaa !4
  %mul55 = fmul double %55, %56
  %div56 = fdiv double %call54, %mul55
  %57 = load double, ptr %b, align 8, !tbaa !4
  %mul57 = fmul double %div56, %57
  %58 = call double @llvm.fmuladd.f64(double %div52, double %53, double %mul57)
  %59 = load ptr, ptr %si.addr, align 8, !tbaa !8
  store double %58, ptr %59, align 8, !tbaa !4
  %60 = load double, ptr %x.addr, align 8, !tbaa !4
  %call58 = call double @sinh(double noundef %60) #5
  %61 = load double, ptr %x.addr, align 8, !tbaa !4
  %div59 = fdiv double %call58, %61
  %62 = load double, ptr %a, align 8, !tbaa !4
  %63 = load double, ptr %x.addr, align 8, !tbaa !4
  %call61 = call double @cosh(double noundef %63) #5
  %64 = load double, ptr %x.addr, align 8, !tbaa !4
  %65 = load double, ptr %x.addr, align 8, !tbaa !4
  %mul62 = fmul double %64, %65
  %div63 = fdiv double %call61, %mul62
  %66 = load double, ptr %b, align 8, !tbaa !4
  %mul64 = fmul double %div63, %66
  %67 = call double @llvm.fmuladd.f64(double %div59, double %62, double %mul64)
  %68 = load ptr, ptr %ci.addr, align 8, !tbaa !8
  store double %67, ptr %68, align 8, !tbaa !4
  br label %if.end65

if.end65:                                         ; preds = %if.else44, %if.then43
  %69 = load i16, ptr %sign, align 2, !tbaa !10
  %tobool = icmp ne i16 %69, 0
  br i1 %tobool, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end65
  %70 = load ptr, ptr %si.addr, align 8, !tbaa !8
  %71 = load double, ptr %70, align 8, !tbaa !4
  %fneg67 = fneg double %71
  %72 = load ptr, ptr %si.addr, align 8, !tbaa !8
  store double %fneg67, ptr %72, align 8, !tbaa !4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end65
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

done:                                             ; preds = %if.then31, %if.then21, %do.end
  %73 = load i16, ptr %sign, align 2, !tbaa !10
  %tobool69 = icmp ne i16 %73, 0
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %done
  %74 = load double, ptr %s, align 8, !tbaa !4
  %fneg71 = fneg double %74
  store double %fneg71, ptr %s, align 8, !tbaa !4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %done
  %75 = load double, ptr %s, align 8, !tbaa !4
  %76 = load ptr, ptr %si.addr, align 8, !tbaa !8
  store double %75, ptr %76, align 8, !tbaa !4
  %77 = load double, ptr %x.addr, align 8, !tbaa !4
  %call73 = call double @log(double noundef %77) #5
  %add74 = fadd double 0x3FE2788CFC6FB619, %call73
  %78 = load double, ptr %c, align 8, !tbaa !4
  %add75 = fadd double %add74, %78
  %79 = load ptr, ptr %ci.addr, align 8, !tbaa !8
  store double %add75, ptr %79, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end68, %if.then2
  call void @llvm.lifetime.end.p0(i64 2, ptr %sign) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #5
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare double @exp(double noundef) #3

declare double @cephes_chbevl(double noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal double @hyp3f0(double noundef %a1, double noundef %a2, double noundef %a3, double noundef %z) #0 {
entry:
  %retval = alloca double, align 8
  %a1.addr = alloca double, align 8
  %a2.addr = alloca double, align 8
  %a3.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  %n = alloca i32, align 4
  %maxiter = alloca i32, align 4
  %err = alloca double, align 8
  %sum = alloca double, align 8
  %term = alloca double, align 8
  %m = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store double %a1, ptr %a1.addr, align 8, !tbaa !4
  store double %a2, ptr %a2.addr, align 8, !tbaa !4
  store double %a3, ptr %a3.addr, align 8, !tbaa !4
  store double %z, ptr %z.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxiter) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %term) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #5
  %0 = load double, ptr %z.addr, align 8, !tbaa !4
  %call = call double @pow(double noundef %0, double noundef 0xBFD5555555555555) #5
  store double %call, ptr %m, align 8, !tbaa !4
  %1 = load double, ptr %m, align 8, !tbaa !4
  %cmp = fcmp olt double %1, 5.000000e+01
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, ptr %m, align 8, !tbaa !4
  %conv = fptosi double %2 to i32
  store i32 %conv, ptr %maxiter, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 50, ptr %maxiter, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store double 1.000000e+00, ptr %term, align 8, !tbaa !4
  %3 = load double, ptr %term, align 8, !tbaa !4
  store double %3, ptr %sum, align 8, !tbaa !4
  store i32 0, ptr %n, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %n, align 4, !tbaa !12
  %5 = load i32, ptr %maxiter, align 4, !tbaa !12
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double, ptr %a1.addr, align 8, !tbaa !4
  %7 = load i32, ptr %n, align 4, !tbaa !12
  %conv3 = sitofp i32 %7 to double
  %add = fadd double %6, %conv3
  %8 = load double, ptr %a2.addr, align 8, !tbaa !4
  %9 = load i32, ptr %n, align 4, !tbaa !12
  %conv4 = sitofp i32 %9 to double
  %add5 = fadd double %8, %conv4
  %mul = fmul double %add, %add5
  %10 = load double, ptr %a3.addr, align 8, !tbaa !4
  %11 = load i32, ptr %n, align 4, !tbaa !12
  %conv6 = sitofp i32 %11 to double
  %add7 = fadd double %10, %conv6
  %mul8 = fmul double %mul, %add7
  %12 = load double, ptr %z.addr, align 8, !tbaa !4
  %mul9 = fmul double %mul8, %12
  %13 = load i32, ptr %n, align 4, !tbaa !12
  %add10 = add nsw i32 %13, 1
  %conv11 = sitofp i32 %add10 to double
  %div = fdiv double %mul9, %conv11
  %14 = load double, ptr %term, align 8, !tbaa !4
  %mul12 = fmul double %14, %div
  store double %mul12, ptr %term, align 8, !tbaa !4
  %15 = load double, ptr %term, align 8, !tbaa !4
  %16 = load double, ptr %sum, align 8, !tbaa !4
  %add13 = fadd double %16, %15
  store double %add13, ptr %sum, align 8, !tbaa !4
  %17 = load double, ptr %term, align 8, !tbaa !4
  %18 = call double @llvm.fabs.f64(double %17)
  %19 = load double, ptr %sum, align 8, !tbaa !4
  %20 = call double @llvm.fabs.f64(double %19)
  %mul14 = fmul double 1.000000e-13, %20
  %cmp15 = fcmp olt double %18, %mul14
  br i1 %cmp15, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %21 = load double, ptr %term, align 8, !tbaa !4
  %cmp17 = fcmp oeq double %21, 0.000000e+00
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end20:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %22 = load i32, ptr %n, align 4, !tbaa !12
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %n, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %if.then19, %for.cond
  %23 = load double, ptr %term, align 8, !tbaa !4
  %24 = call double @llvm.fabs.f64(double %23)
  store double %24, ptr %err, align 8, !tbaa !4
  %25 = load double, ptr %err, align 8, !tbaa !4
  %26 = load double, ptr %sum, align 8, !tbaa !4
  %27 = call double @llvm.fabs.f64(double %26)
  %mul21 = fmul double 1.000000e-13, %27
  %cmp22 = fcmp ogt double %25, %mul21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  store double 0x7FF8000000000000, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.end
  %28 = load double, ptr %sum, align 8, !tbaa !4
  store double %28, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %term) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxiter) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  %29 = load double, ptr %retval, align 8
  ret double %29
}

; Function Attrs: nounwind
declare double @cosh(double noundef) #3

; Function Attrs: nounwind
declare double @sinh(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
declare double @log(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}

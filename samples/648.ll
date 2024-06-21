; ModuleID = 'samples/648.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/libproj4/vtklibproj4/src/dmstor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm = internal constant [3 x double] [double 0x3F91DF46A2529D3A, double 0x3F33104B57CF96A3, double 0x3ED455A5B2FF8F9D], align 16
@sym = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [9 x i8] c"NnEeSsWw\00", align 1

; Function Attrs: nounwind uwtable
define double @vtk_dmstor(ptr noundef %is, ptr noundef %rs) #0 {
entry:
  %is.addr = alloca ptr, align 8
  %rs.addr = alloca ptr, align 8
  store ptr %is, ptr %is.addr, align 8, !tbaa !4
  store ptr %rs, ptr %rs.addr, align 8, !tbaa !4
  %call = call ptr @vtk_pj_get_default_ctx()
  %0 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %rs.addr, align 8, !tbaa !4
  %call1 = call double @vtk_dmstor_ctx(ptr noundef %call, ptr noundef %0, ptr noundef %1)
  ret double %call1
}

; Function Attrs: nounwind uwtable
define double @vtk_dmstor_ctx(ptr noundef %ctx, ptr noundef %is, ptr noundef %rs) #0 {
entry:
  %retval = alloca double, align 8
  %ctx.addr = alloca ptr, align 8
  %is.addr = alloca ptr, align 8
  %rs.addr = alloca ptr, align 8
  %sign = alloca i32, align 4
  %n = alloca i32, align 4
  %nl = alloca i32, align 4
  %p = alloca ptr, align 8
  %s = alloca ptr, align 8
  %work = alloca [64 x i8], align 16
  %v = alloca double, align 8
  %tv = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %is, ptr %is.addr, align 8, !tbaa !4
  store ptr %rs, ptr %rs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nl) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr %work) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #7
  %0 = load ptr, ptr %rs.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %rs.addr, align 8, !tbaa !4
  store ptr %1, ptr %2, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %call = call ptr @__ctype_b_loc() #8
  %3 = load ptr, ptr %call, align 8, !tbaa !4
  %4 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %5 = load i8, ptr %4, align 1, !tbaa !8
  %conv = sext i8 %5 to i32
  store i32 %conv, ptr %sign, align 4, !tbaa !9
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !11
  %conv1 = zext i16 %6 to i32
  %and = and i32 %conv1, 8192
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %is.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  store i32 64, ptr %n, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [64 x i8], ptr %work, i64 0, i64 0
  store ptr %arraydecay, ptr %s, align 8, !tbaa !4
  %8 = load ptr, ptr %is.addr, align 8, !tbaa !4
  store ptr %8, ptr %p, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.end
  %call3 = call ptr @__ctype_b_loc() #8
  %9 = load ptr, ptr %call3, align 8, !tbaa !4
  %10 = load ptr, ptr %p, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !8
  %conv4 = sext i8 %11 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %9, i64 %idxprom5
  %12 = load i16, ptr %arrayidx6, align 2, !tbaa !11
  %conv7 = zext i16 %12 to i32
  %and8 = and i32 %conv7, 32768
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, ptr %n, align 4, !tbaa !9
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %n, align 4, !tbaa !9
  %tobool10 = icmp ne i32 %dec, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %tobool10, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr11, ptr %p, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !8
  %17 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr12 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr12, ptr %s, align 8, !tbaa !4
  store i8 %16, ptr %17, align 1, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %s, align 8, !tbaa !4
  store i8 0, ptr %18, align 1, !tbaa !8
  %arraydecay13 = getelementptr inbounds [64 x i8], ptr %work, i64 0, i64 0
  store ptr %arraydecay13, ptr %s, align 8, !tbaa !4
  %19 = load i8, ptr %arraydecay13, align 1, !tbaa !8
  %conv14 = sext i8 %19 to i32
  store i32 %conv14, ptr %sign, align 4, !tbaa !9
  %20 = load i32, ptr %sign, align 4, !tbaa !9
  %cmp = icmp eq i32 %20, 43
  br i1 %cmp, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %21 = load i32, ptr %sign, align 4, !tbaa !9
  %cmp16 = icmp eq i32 %21, 45
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %lor.lhs.false, %for.end
  %22 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr19, ptr %s, align 8, !tbaa !4
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  store i32 43, ptr %sign, align 4, !tbaa !9
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  store double 0.000000e+00, ptr %v, align 8, !tbaa !16
  store i32 0, ptr %nl, align 4, !tbaa !9
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %if.end20
  %23 = load i32, ptr %nl, align 4, !tbaa !9
  %cmp22 = icmp slt i32 %23, 3
  br i1 %cmp22, label %for.body24, label %for.end60

for.body24:                                       ; preds = %for.cond21
  %call25 = call ptr @__ctype_b_loc() #8
  %24 = load ptr, ptr %call25, align 8, !tbaa !4
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  %26 = load i8, ptr %25, align 1, !tbaa !8
  %conv26 = sext i8 %26 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %24, i64 %idxprom27
  %27 = load i16, ptr %arrayidx28, align 2, !tbaa !11
  %conv29 = zext i16 %27 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.end37, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %for.body24
  %28 = load ptr, ptr %s, align 8, !tbaa !4
  %29 = load i8, ptr %28, align 1, !tbaa !8
  %conv33 = sext i8 %29 to i32
  %cmp34 = icmp eq i32 %conv33, 46
  br i1 %cmp34, label %if.end37, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false32
  br label %for.end60

if.end37:                                         ; preds = %lor.lhs.false32, %for.body24
  %30 = load ptr, ptr %s, align 8, !tbaa !4
  %call38 = call double @proj_strtod(ptr noundef %30, ptr noundef %s)
  store double %call38, ptr %tv, align 8, !tbaa !16
  %cmp39 = fcmp oeq double %call38, 0x7FF0000000000000
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  %31 = load double, ptr %tv, align 8, !tbaa !16
  store double %31, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %32 = load ptr, ptr %s, align 8, !tbaa !4
  %33 = load i8, ptr %32, align 1, !tbaa !8
  %conv43 = sext i8 %33 to i32
  switch i32 %conv43, label %sw.default [
    i32 68, label %sw.bb
    i32 100, label %sw.bb
    i32 39, label %sw.bb44
    i32 34, label %sw.bb45
    i32 114, label %sw.bb46
    i32 82, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end42, %if.end42
  store i32 0, ptr %n, align 4, !tbaa !9
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end42
  store i32 1, ptr %n, align 4, !tbaa !9
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end42
  store i32 2, ptr %n, align 4, !tbaa !9
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end42, %if.end42
  %34 = load i32, ptr %nl, align 4, !tbaa !9
  %tobool47 = icmp ne i32 %34, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %sw.bb46
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @vtk_pj_ctx_set_errno(ptr noundef %35, i32 noundef -16)
  store double 0x7FF0000000000000, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %sw.bb46
  %36 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr50 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr50, ptr %s, align 8, !tbaa !4
  %37 = load double, ptr %tv, align 8, !tbaa !16
  store double %37, ptr %v, align 8, !tbaa !16
  br label %skip

sw.default:                                       ; preds = %if.end42
  %38 = load double, ptr %tv, align 8, !tbaa !16
  %39 = load i32, ptr %nl, align 4, !tbaa !9
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [3 x double], ptr @vm, i64 0, i64 %idxprom51
  %40 = load double, ptr %arrayidx52, align 8, !tbaa !16
  %41 = load double, ptr %v, align 8, !tbaa !16
  %42 = call double @llvm.fmuladd.f64(double %38, double %40, double %41)
  store double %42, ptr %v, align 8, !tbaa !16
  br label %skip

skip:                                             ; preds = %sw.default, %if.end49
  store i32 4, ptr %n, align 4, !tbaa !9
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb45, %sw.bb44, %sw.bb
  %43 = load i32, ptr %n, align 4, !tbaa !9
  %44 = load i32, ptr %nl, align 4, !tbaa !9
  %cmp53 = icmp slt i32 %43, %44
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %sw.epilog
  %45 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @vtk_pj_ctx_set_errno(ptr noundef %45, i32 noundef -16)
  store double 0x7FF0000000000000, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %sw.epilog
  %46 = load double, ptr %tv, align 8, !tbaa !16
  %47 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom57 = sext i32 %47 to i64
  %arrayidx58 = getelementptr inbounds [3 x double], ptr @vm, i64 0, i64 %idxprom57
  %48 = load double, ptr %arrayidx58, align 8, !tbaa !16
  %49 = load double, ptr %v, align 8, !tbaa !16
  %50 = call double @llvm.fmuladd.f64(double %46, double %48, double %49)
  store double %50, ptr %v, align 8, !tbaa !16
  %51 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr59 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr59, ptr %s, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end56, %skip
  %52 = load i32, ptr %n, align 4, !tbaa !9
  %add = add nsw i32 %52, 1
  store i32 %add, ptr %nl, align 4, !tbaa !9
  br label %for.cond21, !llvm.loop !18

for.end60:                                        ; preds = %if.then36, %for.cond21
  %53 = load ptr, ptr %s, align 8, !tbaa !4
  %54 = load i8, ptr %53, align 1, !tbaa !8
  %conv61 = sext i8 %54 to i32
  %tobool62 = icmp ne i32 %conv61, 0
  br i1 %tobool62, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %for.end60
  %55 = load ptr, ptr @sym, align 8, !tbaa !4
  %56 = load ptr, ptr %s, align 8, !tbaa !4
  %57 = load i8, ptr %56, align 1, !tbaa !8
  %conv63 = sext i8 %57 to i32
  %call64 = call ptr @strchr(ptr noundef %55, i32 noundef %conv63) #9
  store ptr %call64, ptr %p, align 8, !tbaa !4
  %tobool65 = icmp ne ptr %call64, null
  br i1 %tobool65, label %if.then66, label %if.end70

if.then66:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %p, align 8, !tbaa !4
  %59 = load ptr, ptr @sym, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %58 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp67 = icmp sge i64 %sub.ptr.sub, 4
  %60 = zext i1 %cmp67 to i64
  %cond = select i1 %cmp67, i32 45, i32 43
  store i32 %cond, ptr %sign, align 4, !tbaa !9
  %61 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr69 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr69, ptr %s, align 8, !tbaa !4
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %land.lhs.true, %for.end60
  %62 = load i32, ptr %sign, align 4, !tbaa !9
  %cmp71 = icmp eq i32 %62, 45
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  %63 = load double, ptr %v, align 8, !tbaa !16
  %fneg = fneg double %63
  store double %fneg, ptr %v, align 8, !tbaa !16
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end70
  %64 = load ptr, ptr %rs.addr, align 8, !tbaa !4
  %tobool75 = icmp ne ptr %64, null
  br i1 %tobool75, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end74
  %65 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %s, align 8, !tbaa !4
  %arraydecay77 = getelementptr inbounds [64 x i8], ptr %work, i64 0, i64 0
  %sub.ptr.lhs.cast78 = ptrtoint ptr %66 to i64
  %sub.ptr.rhs.cast79 = ptrtoint ptr %arraydecay77 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %add.ptr = getelementptr inbounds i8, ptr %65, i64 %sub.ptr.sub80
  %67 = load ptr, ptr %rs.addr, align 8, !tbaa !4
  store ptr %add.ptr, ptr %67, align 8, !tbaa !4
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end74
  %68 = load double, ptr %v, align 8, !tbaa !16
  store double %68, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.then55, %if.then48, %if.then41
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %work) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #7
  %69 = load double, ptr %retval, align 8
  ret double %69
}

declare ptr @vtk_pj_get_default_ctx() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define internal double @proj_strtod(ptr noundef %nptr, ptr noundef %endptr) #0 {
entry:
  %retval = alloca double, align 8
  %nptr.addr = alloca ptr, align 8
  %endptr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %cp = alloca ptr, align 8
  %result = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nptr, ptr %nptr.addr, align 8, !tbaa !4
  store ptr %endptr, ptr %endptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #7
  %0 = load ptr, ptr %nptr.addr, align 8, !tbaa !4
  store ptr %0, ptr %cp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #7
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %cp, align 8, !tbaa !4
  %2 = load i8, ptr %1, align 1, !tbaa !8
  store i8 %2, ptr %c, align 1, !tbaa !8
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8, ptr %c, align 1, !tbaa !8
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 100
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8, ptr %c, align 1, !tbaa !8
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 68
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load ptr, ptr %cp, align 8, !tbaa !4
  store i8 0, ptr %5, align 1, !tbaa !8
  %6 = load ptr, ptr %nptr.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %endptr.addr, align 8, !tbaa !4
  %call = call double @strtod(ptr noundef %6, ptr noundef %7) #7
  store double %call, ptr %result, align 8, !tbaa !16
  %8 = load i8, ptr %c, align 1, !tbaa !8
  %9 = load ptr, ptr %cp, align 8, !tbaa !4
  store i8 %8, ptr %9, align 1, !tbaa !8
  %10 = load double, ptr %result, align 8, !tbaa !16
  store double %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %nptr.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %endptr.addr, align 8, !tbaa !4
  %call8 = call double @vtk_pj_strtod(ptr noundef %12, ptr noundef %13)
  store double %call8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #7
  %14 = load double, ptr %retval, align 8
  ret double %14
}

declare void @vtk_pj_ctx_set_errno(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #6

declare double @vtk_pj_strtod(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(read) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}

; ModuleID = 'samples/982.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dlacn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c__1 = internal global i32 1, align 4
@c_b11 = internal global double 1.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dlacn2_(ptr noundef %n, ptr noundef %v, ptr noundef %x, ptr noundef %isgn, ptr noundef %est, ptr noundef %kase, ptr noundef %isave) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %isgn.addr = alloca ptr, align 8
  %est.addr = alloca ptr, align 8
  %kase.addr = alloca ptr, align 8
  %isave.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %temp = alloca double, align 8
  %jlast = alloca i32, align 4
  %altsgn = alloca double, align 8
  %estold = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %isgn, ptr %isgn.addr, align 8
  store ptr %est, ptr %est.addr, align 8
  store ptr %kase, ptr %kase.addr, align 8
  store ptr %isave, ptr %isave.addr, align 8
  %0 = load ptr, ptr %isave.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %isave.addr, align 8
  %1 = load ptr, ptr %isgn.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %isgn.addr, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %x.addr, align 8
  %3 = load ptr, ptr %v.addr, align 8
  %incdec.ptr3 = getelementptr inbounds double, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %v.addr, align 8
  %4 = load ptr, ptr %kase.addr, align 8
  %5 = load i32, ptr %4, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %n.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i__, align 4
  %9 = load i32, ptr %i__1, align 4
  %cmp4 = icmp sle i32 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %n.addr, align 8
  %11 = load i32, ptr %10, align 4
  %conv = sitofp i32 %11 to double
  %div = fdiv double 1.000000e+00, %conv
  %12 = load ptr, ptr %x.addr, align 8
  %13 = load i32, ptr %i__, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds double, ptr %12, i64 %idxprom
  store double %div, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %kase.addr, align 8
  store i32 1, ptr %15, align 4
  %16 = load ptr, ptr %isave.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %16, i64 1
  store i32 1, ptr %arrayidx5, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %isave.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %17, i64 1
  %18 = load i32, ptr %arrayidx6, align 4
  switch i32 %18, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb8
    i32 4, label %sw.bb9
    i32 5, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  br label %L20

sw.bb7:                                           ; preds = %if.end
  br label %L40

sw.bb8:                                           ; preds = %if.end
  br label %L70

sw.bb9:                                           ; preds = %if.end
  br label %L110

sw.bb10:                                          ; preds = %if.end
  br label %L140

sw.epilog:                                        ; preds = %if.end
  br label %L20

L20:                                              ; preds = %sw.epilog, %sw.bb
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp11 = icmp eq i32 %20, 1
  br i1 %cmp11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %L20
  %21 = load ptr, ptr %x.addr, align 8
  %arrayidx14 = getelementptr inbounds double, ptr %21, i64 1
  %22 = load double, ptr %arrayidx14, align 8
  %23 = load ptr, ptr %v.addr, align 8
  %arrayidx15 = getelementptr inbounds double, ptr %23, i64 1
  store double %22, ptr %arrayidx15, align 8
  %24 = load ptr, ptr %v.addr, align 8
  %arrayidx16 = getelementptr inbounds double, ptr %24, i64 1
  %25 = load double, ptr %arrayidx16, align 8
  %cmp17 = fcmp oge double %25, 0.000000e+00
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  %26 = load ptr, ptr %v.addr, align 8
  %arrayidx19 = getelementptr inbounds double, ptr %26, i64 1
  %27 = load double, ptr %arrayidx19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  %28 = load ptr, ptr %v.addr, align 8
  %arrayidx20 = getelementptr inbounds double, ptr %28, i64 1
  %29 = load double, ptr %arrayidx20, align 8
  %fneg = fneg double %29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %27, %cond.true ], [ %fneg, %cond.false ]
  %30 = load ptr, ptr %est.addr, align 8
  store double %cond, ptr %30, align 8
  br label %L150

if.end21:                                         ; preds = %L20
  %31 = load ptr, ptr %n.addr, align 8
  %32 = load ptr, ptr %x.addr, align 8
  %arrayidx22 = getelementptr inbounds double, ptr %32, i64 1
  %call = call double @dasum_(ptr noundef %31, ptr noundef %arrayidx22, ptr noundef @c__1)
  %33 = load ptr, ptr %est.addr, align 8
  store double %call, ptr %33, align 8
  %34 = load ptr, ptr %n.addr, align 8
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc37, %if.end21
  %36 = load i32, ptr %i__, align 4
  %37 = load i32, ptr %i__1, align 4
  %cmp24 = icmp sle i32 %36, %37
  br i1 %cmp24, label %for.body26, label %for.end39

for.body26:                                       ; preds = %for.cond23
  %38 = load ptr, ptr %x.addr, align 8
  %39 = load i32, ptr %i__, align 4
  %idxprom27 = sext i32 %39 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %38, i64 %idxprom27
  %call29 = call double @d_sign(ptr noundef @c_b11, ptr noundef %arrayidx28)
  %40 = load ptr, ptr %x.addr, align 8
  %41 = load i32, ptr %i__, align 4
  %idxprom30 = sext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %40, i64 %idxprom30
  store double %call29, ptr %arrayidx31, align 8
  %42 = load ptr, ptr %x.addr, align 8
  %43 = load i32, ptr %i__, align 4
  %idxprom32 = sext i32 %43 to i64
  %arrayidx33 = getelementptr inbounds double, ptr %42, i64 %idxprom32
  %call34 = call i32 @i_dnnt(ptr noundef %arrayidx33)
  %44 = load ptr, ptr %isgn.addr, align 8
  %45 = load i32, ptr %i__, align 4
  %idxprom35 = sext i32 %45 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %44, i64 %idxprom35
  store i32 %call34, ptr %arrayidx36, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body26
  %46 = load i32, ptr %i__, align 4
  %inc38 = add nsw i32 %46, 1
  store i32 %inc38, ptr %i__, align 4
  br label %for.cond23, !llvm.loop !7

for.end39:                                        ; preds = %for.cond23
  %47 = load ptr, ptr %kase.addr, align 8
  store i32 2, ptr %47, align 4
  %48 = load ptr, ptr %isave.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, ptr %48, i64 1
  store i32 2, ptr %arrayidx40, align 4
  store i32 0, ptr %retval, align 4
  br label %return

L40:                                              ; preds = %sw.bb7
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load ptr, ptr %x.addr, align 8
  %arrayidx41 = getelementptr inbounds double, ptr %50, i64 1
  %call42 = call i32 @idamax_(ptr noundef %49, ptr noundef %arrayidx41, ptr noundef @c__1)
  %51 = load ptr, ptr %isave.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, ptr %51, i64 2
  store i32 %call42, ptr %arrayidx43, align 4
  %52 = load ptr, ptr %isave.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %52, i64 3
  store i32 2, ptr %arrayidx44, align 4
  br label %L50

L50:                                              ; preds = %if.then123, %L40
  %53 = load ptr, ptr %n.addr, align 8
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc51, %L50
  %55 = load i32, ptr %i__, align 4
  %56 = load i32, ptr %i__1, align 4
  %cmp46 = icmp sle i32 %55, %56
  br i1 %cmp46, label %for.body48, label %for.end53

for.body48:                                       ; preds = %for.cond45
  %57 = load ptr, ptr %x.addr, align 8
  %58 = load i32, ptr %i__, align 4
  %idxprom49 = sext i32 %58 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %57, i64 %idxprom49
  store double 0.000000e+00, ptr %arrayidx50, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.body48
  %59 = load i32, ptr %i__, align 4
  %inc52 = add nsw i32 %59, 1
  store i32 %inc52, ptr %i__, align 4
  br label %for.cond45, !llvm.loop !8

for.end53:                                        ; preds = %for.cond45
  %60 = load ptr, ptr %x.addr, align 8
  %61 = load ptr, ptr %isave.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, ptr %61, i64 2
  %62 = load i32, ptr %arrayidx54, align 4
  %idxprom55 = sext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds double, ptr %60, i64 %idxprom55
  store double 1.000000e+00, ptr %arrayidx56, align 8
  %63 = load ptr, ptr %kase.addr, align 8
  store i32 1, ptr %63, align 4
  %64 = load ptr, ptr %isave.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, ptr %64, i64 1
  store i32 3, ptr %arrayidx57, align 4
  store i32 0, ptr %retval, align 4
  br label %return

L70:                                              ; preds = %sw.bb8
  %65 = load ptr, ptr %n.addr, align 8
  %66 = load ptr, ptr %x.addr, align 8
  %arrayidx58 = getelementptr inbounds double, ptr %66, i64 1
  %67 = load ptr, ptr %v.addr, align 8
  %arrayidx59 = getelementptr inbounds double, ptr %67, i64 1
  %call60 = call i32 @dcopy_(ptr noundef %65, ptr noundef %arrayidx58, ptr noundef @c__1, ptr noundef %arrayidx59, ptr noundef @c__1)
  %68 = load ptr, ptr %est.addr, align 8
  %69 = load double, ptr %68, align 8
  store double %69, ptr %estold, align 8
  %70 = load ptr, ptr %n.addr, align 8
  %71 = load ptr, ptr %v.addr, align 8
  %arrayidx61 = getelementptr inbounds double, ptr %71, i64 1
  %call62 = call double @dasum_(ptr noundef %70, ptr noundef %arrayidx61, ptr noundef @c__1)
  %72 = load ptr, ptr %est.addr, align 8
  store double %call62, ptr %72, align 8
  %73 = load ptr, ptr %n.addr, align 8
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %L70
  %75 = load i32, ptr %i__, align 4
  %76 = load i32, ptr %i__1, align 4
  %cmp64 = icmp sle i32 %75, %76
  br i1 %cmp64, label %for.body66, label %for.end79

for.body66:                                       ; preds = %for.cond63
  %77 = load ptr, ptr %x.addr, align 8
  %78 = load i32, ptr %i__, align 4
  %idxprom67 = sext i32 %78 to i64
  %arrayidx68 = getelementptr inbounds double, ptr %77, i64 %idxprom67
  %call69 = call double @d_sign(ptr noundef @c_b11, ptr noundef %arrayidx68)
  store double %call69, ptr %d__1, align 8
  %call70 = call i32 @i_dnnt(ptr noundef %d__1)
  %79 = load ptr, ptr %isgn.addr, align 8
  %80 = load i32, ptr %i__, align 4
  %idxprom71 = sext i32 %80 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %79, i64 %idxprom71
  %81 = load i32, ptr %arrayidx72, align 4
  %cmp73 = icmp ne i32 %call70, %81
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %for.body66
  br label %L90

if.end76:                                         ; preds = %for.body66
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %82 = load i32, ptr %i__, align 4
  %inc78 = add nsw i32 %82, 1
  store i32 %inc78, ptr %i__, align 4
  br label %for.cond63, !llvm.loop !9

for.end79:                                        ; preds = %for.cond63
  br label %L120

L90:                                              ; preds = %if.then75
  %83 = load ptr, ptr %est.addr, align 8
  %84 = load double, ptr %83, align 8
  %85 = load double, ptr %estold, align 8
  %cmp80 = fcmp ole double %84, %85
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %L90
  br label %L120

if.end83:                                         ; preds = %L90
  %86 = load ptr, ptr %n.addr, align 8
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc98, %if.end83
  %88 = load i32, ptr %i__, align 4
  %89 = load i32, ptr %i__1, align 4
  %cmp85 = icmp sle i32 %88, %89
  br i1 %cmp85, label %for.body87, label %for.end100

for.body87:                                       ; preds = %for.cond84
  %90 = load ptr, ptr %x.addr, align 8
  %91 = load i32, ptr %i__, align 4
  %idxprom88 = sext i32 %91 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %90, i64 %idxprom88
  %call90 = call double @d_sign(ptr noundef @c_b11, ptr noundef %arrayidx89)
  %92 = load ptr, ptr %x.addr, align 8
  %93 = load i32, ptr %i__, align 4
  %idxprom91 = sext i32 %93 to i64
  %arrayidx92 = getelementptr inbounds double, ptr %92, i64 %idxprom91
  store double %call90, ptr %arrayidx92, align 8
  %94 = load ptr, ptr %x.addr, align 8
  %95 = load i32, ptr %i__, align 4
  %idxprom93 = sext i32 %95 to i64
  %arrayidx94 = getelementptr inbounds double, ptr %94, i64 %idxprom93
  %call95 = call i32 @i_dnnt(ptr noundef %arrayidx94)
  %96 = load ptr, ptr %isgn.addr, align 8
  %97 = load i32, ptr %i__, align 4
  %idxprom96 = sext i32 %97 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %96, i64 %idxprom96
  store i32 %call95, ptr %arrayidx97, align 4
  br label %for.inc98

for.inc98:                                        ; preds = %for.body87
  %98 = load i32, ptr %i__, align 4
  %inc99 = add nsw i32 %98, 1
  store i32 %inc99, ptr %i__, align 4
  br label %for.cond84, !llvm.loop !10

for.end100:                                       ; preds = %for.cond84
  %99 = load ptr, ptr %kase.addr, align 8
  store i32 2, ptr %99, align 4
  %100 = load ptr, ptr %isave.addr, align 8
  %arrayidx101 = getelementptr inbounds i32, ptr %100, i64 1
  store i32 4, ptr %arrayidx101, align 4
  store i32 0, ptr %retval, align 4
  br label %return

L110:                                             ; preds = %sw.bb9
  %101 = load ptr, ptr %isave.addr, align 8
  %arrayidx102 = getelementptr inbounds i32, ptr %101, i64 2
  %102 = load i32, ptr %arrayidx102, align 4
  store i32 %102, ptr %jlast, align 4
  %103 = load ptr, ptr %n.addr, align 8
  %104 = load ptr, ptr %x.addr, align 8
  %arrayidx103 = getelementptr inbounds double, ptr %104, i64 1
  %call104 = call i32 @idamax_(ptr noundef %103, ptr noundef %arrayidx103, ptr noundef @c__1)
  %105 = load ptr, ptr %isave.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %105, i64 2
  store i32 %call104, ptr %arrayidx105, align 4
  %106 = load ptr, ptr %x.addr, align 8
  %107 = load i32, ptr %jlast, align 4
  %idxprom106 = sext i32 %107 to i64
  %arrayidx107 = getelementptr inbounds double, ptr %106, i64 %idxprom106
  %108 = load double, ptr %arrayidx107, align 8
  %109 = load ptr, ptr %x.addr, align 8
  %110 = load ptr, ptr %isave.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %110, i64 2
  %111 = load i32, ptr %arrayidx108, align 4
  %idxprom109 = sext i32 %111 to i64
  %arrayidx110 = getelementptr inbounds double, ptr %109, i64 %idxprom109
  %112 = load double, ptr %arrayidx110, align 8
  store double %112, ptr %d__1, align 8
  %113 = load double, ptr %d__1, align 8
  %cmp111 = fcmp oge double %113, 0.000000e+00
  br i1 %cmp111, label %cond.true113, label %cond.false114

cond.true113:                                     ; preds = %L110
  %114 = load double, ptr %d__1, align 8
  br label %cond.end116

cond.false114:                                    ; preds = %L110
  %115 = load double, ptr %d__1, align 8
  %fneg115 = fneg double %115
  br label %cond.end116

cond.end116:                                      ; preds = %cond.false114, %cond.true113
  %cond117 = phi double [ %114, %cond.true113 ], [ %fneg115, %cond.false114 ]
  %cmp118 = fcmp une double %108, %cond117
  br i1 %cmp118, label %land.lhs.true, label %if.end126

land.lhs.true:                                    ; preds = %cond.end116
  %116 = load ptr, ptr %isave.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %116, i64 3
  %117 = load i32, ptr %arrayidx120, align 4
  %cmp121 = icmp slt i32 %117, 5
  br i1 %cmp121, label %if.then123, label %if.end126

if.then123:                                       ; preds = %land.lhs.true
  %118 = load ptr, ptr %isave.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %118, i64 3
  %119 = load i32, ptr %arrayidx124, align 4
  %inc125 = add nsw i32 %119, 1
  store i32 %inc125, ptr %arrayidx124, align 4
  br label %L50

if.end126:                                        ; preds = %land.lhs.true, %cond.end116
  br label %L120

L120:                                             ; preds = %if.end126, %if.then82, %for.end79
  store double 1.000000e+00, ptr %altsgn, align 8
  %120 = load ptr, ptr %n.addr, align 8
  %121 = load i32, ptr %120, align 4
  store i32 %121, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc138, %L120
  %122 = load i32, ptr %i__, align 4
  %123 = load i32, ptr %i__1, align 4
  %cmp128 = icmp sle i32 %122, %123
  br i1 %cmp128, label %for.body130, label %for.end140

for.body130:                                      ; preds = %for.cond127
  %124 = load double, ptr %altsgn, align 8
  %125 = load i32, ptr %i__, align 4
  %sub = sub nsw i32 %125, 1
  %conv131 = sitofp i32 %sub to double
  %126 = load ptr, ptr %n.addr, align 8
  %127 = load i32, ptr %126, align 4
  %sub132 = sub nsw i32 %127, 1
  %conv133 = sitofp i32 %sub132 to double
  %div134 = fdiv double %conv131, %conv133
  %add = fadd double %div134, 1.000000e+00
  %mul = fmul double %124, %add
  %128 = load ptr, ptr %x.addr, align 8
  %129 = load i32, ptr %i__, align 4
  %idxprom135 = sext i32 %129 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %128, i64 %idxprom135
  store double %mul, ptr %arrayidx136, align 8
  %130 = load double, ptr %altsgn, align 8
  %fneg137 = fneg double %130
  store double %fneg137, ptr %altsgn, align 8
  br label %for.inc138

for.inc138:                                       ; preds = %for.body130
  %131 = load i32, ptr %i__, align 4
  %inc139 = add nsw i32 %131, 1
  store i32 %inc139, ptr %i__, align 4
  br label %for.cond127, !llvm.loop !11

for.end140:                                       ; preds = %for.cond127
  %132 = load ptr, ptr %kase.addr, align 8
  store i32 1, ptr %132, align 4
  %133 = load ptr, ptr %isave.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, ptr %133, i64 1
  store i32 5, ptr %arrayidx141, align 4
  store i32 0, ptr %retval, align 4
  br label %return

L140:                                             ; preds = %sw.bb10
  %134 = load ptr, ptr %n.addr, align 8
  %135 = load ptr, ptr %x.addr, align 8
  %arrayidx142 = getelementptr inbounds double, ptr %135, i64 1
  %call143 = call double @dasum_(ptr noundef %134, ptr noundef %arrayidx142, ptr noundef @c__1)
  %136 = load ptr, ptr %n.addr, align 8
  %137 = load i32, ptr %136, align 4
  %mul144 = mul nsw i32 %137, 3
  %conv145 = sitofp i32 %mul144 to double
  %div146 = fdiv double %call143, %conv145
  %mul147 = fmul double %div146, 2.000000e+00
  store double %mul147, ptr %temp, align 8
  %138 = load double, ptr %temp, align 8
  %139 = load ptr, ptr %est.addr, align 8
  %140 = load double, ptr %139, align 8
  %cmp148 = fcmp ogt double %138, %140
  br i1 %cmp148, label %if.then150, label %if.end154

if.then150:                                       ; preds = %L140
  %141 = load ptr, ptr %n.addr, align 8
  %142 = load ptr, ptr %x.addr, align 8
  %arrayidx151 = getelementptr inbounds double, ptr %142, i64 1
  %143 = load ptr, ptr %v.addr, align 8
  %arrayidx152 = getelementptr inbounds double, ptr %143, i64 1
  %call153 = call i32 @dcopy_(ptr noundef %141, ptr noundef %arrayidx151, ptr noundef @c__1, ptr noundef %arrayidx152, ptr noundef @c__1)
  %144 = load double, ptr %temp, align 8
  %145 = load ptr, ptr %est.addr, align 8
  store double %144, ptr %145, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %L140
  br label %L150

L150:                                             ; preds = %if.end154, %cond.end
  %146 = load ptr, ptr %kase.addr, align 8
  store i32 0, ptr %146, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %L150, %for.end140, %for.end100, %for.end53, %for.end39, %for.end
  %147 = load i32, ptr %retval, align 4
  ret i32 %147
}

declare double @dasum_(ptr noundef, ptr noundef, ptr noundef) #1

declare double @d_sign(ptr noundef, ptr noundef) #1

declare i32 @i_dnnt(ptr noundef) #1

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
